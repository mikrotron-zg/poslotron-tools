#!/usr/bin/env python3
# -*- coding: utf-8 -*
#----------------------------------------------------------------------------
# Created By  : Tomislav Preksavec
# Created Date: 2022-03-25
# version ='1.0'
# This file is part of poslotron-tools project 
# (https://github.com/mikrotron-zg/poslotron-tools).
# Developed for Translatr tool by Mikrotron d.o.o. (http://mikrotron.hr)
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version. See the LICENSE file at the 
# top-level directory of this distribution for details 
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.
# ---------------------------------------------------------------------------
'''Simple tool that handles translations stored in Apache OfBiz label XMLs
   Run
   
        $ ./translatr.py -h 
    
   to see all options
   
   Known issues:
    * comments are ignored by ElementTree on import, only header license
      comment is preserved, all body comments will be lost
    * no exception handling, only the call to Google translate API is covered
      by general exception handler, so don't do too much work in one go ;-)
    * no undo/revert tool, it's expected to be used on files under source
      control (e.g. Git), with tools to do the job
'''
# ---------------------------------------------------------------------------
# Imports
# ---------------------------------------------------------------------------
import argparse
import logging
import os
import xml.etree.ElementTree as ET
from edit import transfer, edit
from utils import *

# Entry point, reads and parses command line arguments, then calls appropriate function
def args_parse():
    logging.basicConfig(filename='transltr.log', level=logging.DEBUG, format='%(asctime)s %(message)s', datefmt='%Y-%m-%d %H:%M:%S')
    
    parser = argparse.ArgumentParser(description='Simple tool to analize, convert and translate Apache OfBiz UI label files')
    parser.add_argument('FileName', type = str, help = 'name of the UI label file to be processed, (e.g. CommonUiLabels.xml) \
                                                        or file containing list of files to process (e.g. file.list)')
    parser.add_argument('-a', '--analyze', help = 'analyze UI label file for given locale', action = 'store_true')
    parser.add_argument('-b', '--batch', help = 'batch analyze UI label file list given in FileName', action = 'store_true')
    parser.add_argument('-d', '--detail', help = 'show detailed analytics', action = 'store_true')
    parser.add_argument('-f', '--find', type = str, help = 'find label text for UI label file list given in FileName, \
                                                            not case sensitive', default = None)
    parser.add_argument('-i', '--insert', help = 'scans xml file for missing translations in selected locale and prompts you to insert them (using \
                                                    Google Translate API for suggestions)', action = 'store_true')
    parser.add_argument('-l', '--locale', type = str, help = 'locale ID you are interested in , defaults to hr (croatian)', default = DEFAULT_LOCALE)
    parser.add_argument('-p', '--path', type = str, help = 'search path, defaults is ../../ofbiz', default = DEFAULT_PATH)
    parser.add_argument('-s', '--sourcepath', type = str, help = 'must be defined for transfer to work, has no impact otherwise', default = None)
    parser.add_argument('-t', '--transfer', help = 'transfers all translations for given source path and file list or a single file', action = 'store_true')
    
    args = parser.parse_args()
    print_log('Locale is set to: ' + args.locale)
    
    if args.insert:
        insert(args.path, args.FileName, args.locale)
    
    if args.transfer:
        if args.sourcepath == None:
            print('Source serach path must be defined for transfer option to work (example: ./translatr.py -t -s ../../ofbiz_old file.list)')
            exit()
        if '.xml' in args.FileName:
            transfer_one(args.FileName, args.path, args.sourcepath, args.locale)
        else:
            batch_transfer(args.FileName, args.path, args.sourcepath, args.locale)
    
    if args.batch:
        print_log('Batch analyzing files from ' + args.FileName)
        batch_analyze(args.path, args.FileName, args.locale, args.detail, None)
        exit()
    
    if args.analyze:
        print_log(args.FileName + ' will be analized')
        analyze(args.path, args.FileName, args.locale, args.detail, None)
        exit()
    
    if args.find != None:
        print_log('Searching for: ' + args.find)
        batch_analyze(args.path, args.FileName, args.locale, False, args.find.lower())

# Starts translation insert mode for given file
def insert(search_path, filename, locale):
    file = findfile(filename, search_path)
    if file == None:
        print_log('File not found for: ' + file_name)
        return
    edit(file, locale)

# Transfers translations in batch mode for list of files provided in 'FileName' file
def batch_transfer(file_name, output_path, input_path, locale):
    with open(file_name, 'r') as list_file:
        for file in list_file:
            transfer_one(os.path.basename(file.rstrip()), output_path, input_path, locale)

# Tranfer translations for one file
def transfer_one(file_name, output_path, input_path, locale):
    input_file = findfile(file_name, input_path)
    if input_file == None:
        print_log('Input file not found for: ' + file_name)
        return
    output_file = findfile(file_name, output_path)
    if output_file == None:
        print_log('Output file not found for: ' + file_name)
        return
    transfer(input_file, output_file, locale)

# Analyze translations for list of files provided in 'FileName' file
def batch_analyze(search_path, list_file_name, locale, details = False, find = None):
    with open(list_file_name, 'r') as list_file:
        for file in list_file:
            analyze(search_path, os.path.basename(file.rstrip()), locale, details, find)

# Analyze translations for one file
def analyze(search_path, filename, locale, details, find):
    input_file_name = findfile(filename, search_path)
    if input_file_name == None:
        print_log(filename + ' not found!')
        return
        
    tree = ET.parse(input_file_name)
    root = tree.getroot()
    count = 0
    count_hr = 0
    
    for property in root:
        count += 1
        for value in property:
            if locale in value.attrib[LANG_ATTRIBUTE]:
                if details:
                    print_details(property.get('key'), locale, value.text)
                if find != None:
                    if value.text.lower().find(find) >= 0:
                        print_log('Fle name: ' + input_file_name)
                        print_details(property.get('key'), locale, value.text)
                count_hr += 1
                
    if details: print('')
    if find == None:
        count_ratio = str(count_hr) + '/' + str(count)
        print_log('File name: ' + filename + ' '*(35 - len(filename)) +'Translated: ' + count_ratio + \
    	            ' '*(12 - len(count_ratio)) + '{:.2f}'.format((count_hr/count)*100) + '%')

# Prints results of analytics both to command line and translatr.log file
def print_details(key, locale, text):
    print_log('Property: ' + key)
    print_log('Locale (' + locale + '): ' + text)
    print('---------------------------------------')

# Main start
if __name__ == '__main__':
    args_parse()
