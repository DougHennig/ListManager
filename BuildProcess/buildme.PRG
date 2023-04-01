* Nuke any instance of ListManager.

removeproperty(_vfp, 'oListManager')

* Set the version number in the ListManager class and README.md.

set step on 
lcVersion = pcVersion + '.' + padl(date() - date(2000,1,1), 5, '0')
use source\listmanager.vcx
locate for objname == 'listmanager'
lcCurrVersion = strextract(properties, 'cversion = ', chr(13))
replace properties with strtran(properties, lcCurrVersion, lcVersion)
use

lcContent = filetostr('README.md')
lcCurrVersion = strextract(lcContent, 'Latest release: ', chr(10))
lcContent = strtran(lcContent, lcCurrVersion, pcVersionDate + ', version ' + lcVersion)
strtofile(lcContent, 'README.md')

return
