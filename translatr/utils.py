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
'''Common utilities and constants
'''
# ---------------------------------------------------------------------------
# Imports
# ---------------------------------------------------------------------------
import logging
import os
import readline
# ---------------------------------------------------------------------------
# Constants
# ---------------------------------------------------------------------------
LANG_ATTRIBUTE = '{http://www.w3.org/XML/1998/namespace}lang'
DEFAULT_LOCALE = 'hr'
DEFAULT_PATH = '../../ofbiz'

# Handles printing INFO messages both to command line and log file
def print_log(message):
    print(message)
    logging.info(message)

# Seaches for file (including subdirectories) with given name and start path
# Returns None if file not found
def findfile(name, path):
    if path == '':
        return name
    for dirpath, dirname, filename in os.walk(path):
        if name in filename:
            return os.path.join(dirpath, name)

# Allows editable input suggestions
def rlinput(prompt, prefill=''):
   readline.set_startup_hook(lambda: readline.insert_text(prefill))
   try:
      return input(prompt)
   finally:
      readline.set_startup_hook()
