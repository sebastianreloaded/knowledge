py2app is working with 2 patchesi (or maybe use fork?: https://github.com/metachris/py2app):  

https://bitbucket.org/ronaldoussoren/py2app/issues/137/py2app-problems-using-enthought-python  
/Users/bastihome/Projects/hyhelpenv/lib/python2.7/site-packages/macholib/MachOGraph.py  
I changed line 49 in macOGraph from loader=loader.filename to loader_path=loader.filename)  

https://www.metachris.com/2015/11/create-standalone-mac-os-x-applications-with-python-and-py2app/  
http://stackoverflow.com/questions/25394320/py2app-modulegraph-missing-scan-code/29449144#29449144  
lib/python2.7/site-packages/py2app/recipes/virtualenv.py  
rename load_module to _load_module  



python on windows  
https://www.python.org/downloads/release/python-2711/  
do not install to a folder with spaces, best is c:\Python27  

- add to path
- restart windows
- pip install virtualenv
- virtualenv .venv
- .venv\Scripts\activate.bat
- pip install -r requirements.txt
- pyinstaller -w -F gui.py
- (maybe use --win-private-assemblies)
