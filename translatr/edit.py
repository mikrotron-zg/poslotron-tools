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
'''Edit and transfer tools, if executed from command line, tests translation
   transfer
'''
# ---------------------------------------------------------------------------
# Imports
# ---------------------------------------------------------------------------
import os
import logging
import xml.etree.ElementTree as ET
from utils import *
from googletrans import Translator
from datetime import datetime

# Runs only if edit.py is called from command line, used for testing transfers
def main():
    logging.basicConfig(filename='editr.log', filemode='w', level=logging.DEBUG)
    transfer('test/test_old.xml', 'test/test_new.xml', 'hr')

# Searches for properties with no translations for given locale and suggests translations
def edit(file, locale):
    changed = False
    quit = False
    start_time = datetime.now()
    translator = Translator()
    file_header = get_xml_header(file)
    tree = ET.parse(file)
    root = tree.getroot()
    
    print('Edit or replace auto translation and confirm with <ENTER>, type \q to quit\n')
    
    for xml_property in root:
        if quit: break
        if no_locale_in_property(xml_property, locale):
            for value in xml_property:
                if 'en' in value.attrib[LANG_ATTRIBUTE]:
                    print('Property: ' + str(xml_property.get('key')))
                    print('Default locale: ' + value.text)
                    try:
                        result = translator.translate(value.text, src = 'en', dest = locale)
                        auto_translated = result.text
                    except BaseException as err:
                        auto_translated = ''
                        print_log('Error for: ' + value.text)
                    res = rlinput('Auto translation: ', auto_translated)
                    if '\q' in res:
                        quit = True
                        break
                    index = find_index(locale, xml_property)
                    if index > 0:
                        new_value = ET.Element('value', {LANG_ATTRIBUTE : locale})
                        new_value.text = res
                        new_value.tail = xml_property[index - 1].tail # needed to preserve formatting
                        xml_property.insert(index, new_value)
                        changed = True
                    print('New translation: ' + res)
                    print('---------------------------------------')
    if changed:
        save_xmltree(tree, file, file_header)
        print_log('Total edit time: ' + str(datetime.now() - start_time))

# Returns True if property doesn't contain translation for given locale
def no_locale_in_property(xml_property, locale):
    for value in xml_property:
        if locale in value.attrib[LANG_ATTRIBUTE]:
            return False
    return True

# Saves complete XML tree to file and prepends header
def save_xmltree(tree, file, file_header):
    print_log('Saving changes to ' + file)
    tree.write(file, encoding='UTF-8')
    prepend_multiple_lines(file, file_header)

# Transfers translations 
def transfer(input_file, output_file, locale):
    output_file_header = get_xml_header(output_file)
    output_file_comments = get_xml_comments(output_file)
    input_tree = ET.parse(input_file)
    input_root = input_tree.getroot()
    output_tree = ET.parse(output_file)
    output_root = output_tree.getroot()
    
    for input_property in input_root:
        output_property = find_property(str(input_property.get('key')), output_root)
        if output_property != None:
            for value in input_property:
                if locale in value.attrib[LANG_ATTRIBUTE]:
                    index = find_index(locale, output_property)
                    if index >= 0:
                        output_property.insert(index, value)
    output_tree.write(output_file, encoding='UTF-8')
    prepend_multiple_lines(output_file, output_file_header)

# Searches for property with given key, returns None if not found 
def find_property(key, root):
    for xml_property in root:
        if key == str(xml_property.get('key')): return xml_property
    print_log ('Key ' + key + ' not found')
    return None

# Needed to keep translations ordered alphabetically by locale
def find_index(locale, xml_property):
    index = 0
    for value in xml_property:
        output_locale = value.attrib[LANG_ATTRIBUTE]
        if locale in output_locale: 
            return -1
        if locale > output_locale: 
            index += 1
        else:
            return index # Index found
    return index # Index not found, locale goes to last place

# Needed to keep the file header license comment
def prepend_multiple_lines(file_name, list_of_lines):
    dummy_file = file_name + '.bak'
    with open(file_name, 'r') as read_obj, open(dummy_file, 'w') as write_obj:
        for line in list_of_lines:
            write_obj.write(line)
        for line in read_obj:
            write_obj.write(line)
    os.remove(file_name)
    os.rename(dummy_file, file_name)

# Reads the file header license comment
def get_xml_header(file_name):
    result = []
    with open(file_name, 'r') as read_obj:
        for line in read_obj:
            if '<resource' in line: return result
            result.append(line)

# Body comments are not preserved, so we log them
def get_xml_comments(file_name):
    result = []
    current_property = ''
    with open(file_name, 'r') as read_obj:
        for line in read_obj:
            if '<property' in line:
                current_property = line
            if '<!--' in line:
                if line.rstrip() != '<!--':
                    result.append(line)
                    print_log('Current property: ' + current_property.split('\"')[1])
                    print_log('Comment:          ' + line)
    print_log("Comments in output file:" + str(len(result)))
    return result

# Runs transfer test if edit.py is run from command line
if __name__ == '__main__':
    main()
