# Translatr
Python script(s) for fast translation of the [Apache OFBiz](https://ofbiz.apache.org/) (UI) labels using [Google Translate API](https://cloud.google.com/translate/). Also, it can transfer translations from one version of OFBiz to another. Please be sure to read this file before trying to use the tool (especially the _Known issues_ section).

## Dependencies
There is only one dependecy that needs to be installed, the [Google Translate API for Python](https://pypi.org/project/googletrans/), but to make it work it's important to use the exact version:
```
$ pip install googletrans==3.1.0a0
```
## Usage

Start using by reading the integrated help:
```
$ python3 translatr.py -h
```
If you make _translatr.py_ executable by running `sudo chmod +x translatr.py`, you can run it directly:
```
$ ./translatr.py -h
usage: translatr.py [-h] [-a] [-b] [-d] [-f FIND] [-i] [-l LOCALE] [-p PATH] [-s SOURCEPATH] [-t] FileName

Simple tool to analize, convert and translate Apache OfBiz UI label files

positional arguments:
  FileName              name of the UI label file to be processed, (e.g. CommonUiLabels.xml) or file containing list of files to process (e.g. file.list)

optional arguments:
  -h, --help            show this help message and exit
  -a, --analyze         analyze UI label file for given locale
  -b, --batch           batch analyze UI label file list given in FileName
  -d, --detail          show detailed analytics
  -f FIND, --find FIND  find label text for UI label file list given in FileName, not case sensitive
  -i, --insert          scans xml file for missing translations in selected locale and prompts you to insert them (using Google Translate API for suggestions)
  -l LOCALE, --locale LOCALE
                        locale ID you are interested in, defaults to 'hr' (croatian)
  -p PATH, --path PATH  search path, defaults is ../../ofbiz
  -s SOURCEPATH, --sourcepath SOURCEPATH
                        must be defined for transfer to work, has no impact otherwise
  -t, --transfer        transfers all translations for given source path and file list or a single file
```

### Defaults:
Default values listed above can be changed in _utils.py_ file. Default path works out of the box if both _ofbiz_ and _poslotron-tools_ repos are in the same parent directory (e.g. _projects_). Windows users might need to change the path syntax to get it to work.

### Files list
There is a file named _file.list_ which contains list of all OFBiz (UI) label XML files. The list contains only file names, and _translatr_ searches for them under the given (or default) _(source)path_. This way it should be imunne to the internal path changes in different versions of OFBiz.

### Examples:
Analyze single file for _fr_ locale:
```
$ ./translatr.py -l fr -a OrderUiLabels.xml
Locale is set to: fr
OrderUiLabels.xml will be analized
File name: OrderUiLabels.xml                  Translated: 980/989     99.09%
```
Do the same, but list the translated expressions (this listing is truncated, because it's very long):
```
$ ./translatr.py -l fr -a -d OrderUiLabels.xml
Locale is set to: fr
OrderUiLabels.xml will be analized
Property: BirtOrderReportsWarning
Locale (fr): Quatre tableau créés par Birt (Ventes des 3 derniers mois, Ventes, Ventes par codes promotionels, Demandes par produit) nécessitent d'alimenter la base de données d'Inform. décis. (notez aussi la nécessaire màj du fichier bi.properties après septembre 2026). Ensuite seules les commandes nouvellement approuvées seront prises en compte.
---------------------------------------
Property: DeleteOrderItemShipGroup
Locale (fr): Supprimer le groupe d'expédition
---------------------------------------
Property: FormFieldTitle_addNote
Locale (fr): Ajouter une note
---------------------------------------
Property: FormFieldTitle_amountTotal
Locale (fr): Montant total
---------------------------------------
...
```
Find file(s) containing the given expression in a given locale (please note that you have to pass the _file.list_ file name):
```
$ ./translatr.py -f "Ajouter une note" -l fr file.list 
Locale is set to: fr
Searching for: Ajouter une note
DefaultMessages.xml not found!
conditional.xml not found!
Fle name: ../../ofbiz/applications/order/config/OrderUiLabels.xml
Property: FormFieldTitle_addNote
Locale (fr): Ajouter une note
---------------------------------------
Fle name: ../../ofbiz/applications/order/config/OrderUiLabels.xml
Property: OrderAddNote
Locale (fr): Ajouter une note
---------------------------------------
Fle name: ../../ofbiz/applications/workeffort/config/WorkEffortUiLabels.xml
Property: PageTitleAddWorkEffortNotes
Locale (fr): Ajouter une note à la tâche
---------------------------------------
```
Analyze all label files for given locale (again truncated, and agin, you must pass _file.list_):
```
$ ./translatr.py -b -l it file.list
Locale is set to: it
Batch analyzing files from file.list
File name: AccountingEntityLabels.xml         Translated: 343/356     96.35%
File name: AccountingErrorUiLabels.xml        Translated: 85/95       89.47%
File name: AccountingUiLabels.xml             Translated: 1244/1604   77.56%
File name: CommonExtUiLabels.xml              Translated: 7/7         100.00%
...
```
Use Google Translate API to suggest translations (changes are saved on exit, see _Known issues_ to see what that means):
```
$ ./translatr.py -i -l it AccountingErrorUiLabels.xml
Locale is set to: it
Edit or replace auto translation and confirm with <ENTER>, type \q to quit

Property: AccountingCheckAccountCannotBeUpdated
Default locale: ERROR: Could not update Check Account.
Auto translation: ERRORE: impossibile aggiornare l'account di controllo.
```
Transfer all existing translations for given locale from source version (e.g. release13.07) to new OFBiz version:
```
$ ./translatr.py -t -l it -s ../../ofbiz13.07 file.list
```
### Testing:
Test directory contains UI label XML's you can use for test purposes. Before you start, be sure to use the included script (_reset_test_data.sh_) to get the fresh version of _test_new.xml_ file. The _test_old.xml_ file and _original_data_ subdirectory should not be changed by tests.
You can run simple transfer test by running the _edit.py_ file directly:
```
$ ./edit.py
Current property: CommonNoStatesProvinces
Comment:              <!-- OFBIZ-5246 please use ": _NA_" at end, with a space between the colon and _NA_. getDependentDropdownValues relies on it  -->

Current property: CommonProductRating
Comment:              <property key="CommonProductRating"><!--  Used to demark the section where ProductRating setting are made. -->

Current property: CommonRate
Comment:              <property key="CommonRate"> <!--  Rate as a tariff or day rate -->

Current property: CommonRates
Comment:              <property key="CommonRates"> <!--  Rate as a tariff or day rate -->

Current property: CommonTo
Comment:                  <!-- put a trailing white space because there are too much use of ${uiLabelMap.CommonTo}: and it seems that we can't prevent this to arise again. I keep Vers instead of A (à) because Vers imply a direction not à -->

Current property: FormFieldTitle_hasTable
Comment:                  <!--value xml:lang="de">Hat Tabelle</value-->

Current property: FormFieldTitle_hasTable
Comment:                  <!--value xml:lang="ro">Are Tabelul</value-->

Comments in output file:7
Key AP not found
Key AR not found
Key None not found
Key None not found
Key fy not found
Key gr not found
```
It lists properties with comments (remember, comments are not transfered, except for header license block comment) and also any key not found in the source file (_test_old.xml_). All of this is recorded in the log file too.

### Logging
If anything goes wrong and you want to investigate, log files are your best friend. There are two log files generated by this tool:
* _editr.log_ is created when running transfer test by running the _edit.py_ file directly (see the example above).
* _translatr.log_ is generated when running the main _translatr.py_ file. Every entry is timestamped and it is very detailed, so if anything goes wrong it should be recorded here. On the other hand, this will accumulate over time, so the file can grow to be quite large (10+ MB is a common thing!): Log files are not tracked by Git, so you should back it up before deleting.

## Known issues
* comments are ignored by [ElementTree](https://docs.python.org/3/library/xml.etree.elementtree.html) on import, only header license comment is preserved, all body comments will be lost
* no exception handling, only the call to Google translate API is covered by general exception handler, so don't do too much work in one go ;-)
* no undo/revert tool, it's expected to be used on files under source control (e.g. Git), with tools to do the job