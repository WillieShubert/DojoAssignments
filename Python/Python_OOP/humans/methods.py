# import the library
import urllib
# NOTE: there's a urllib version for each version of Python:
# Use urllib2 if you're using Python 2
# Use urllib3 for Python 3

# Finally, use it...
urllib.urlopen(...)


#file name: arithmetic.py
def add(x, y):
    return x + y
def multiply(x, y):
    return x * y
def subtract(x, y):
     return x - y

#create your own modules
# Note: just make sure that the module and the
# file importing the module are in the same folder/directory.
import arithmetic
print arithmetic.add(5, 8)
print arithmetic.subtract(10, 5)
print arithmetic.multiply(12, 6)

# look for which functions are implemented in each module, by using the dir function:
>>> import urllib
>>> dir(urllib)
['ContentTooShortError', 'FancyURLopener', 'MAXFTPCACHE', 'URLopener', '__all__', '__builtins__', '__doc__', '__file__', '__name__', '__package__', '__version__', '_ftperrors', '_get_proxies', '_get_proxy_settings', '_have_ssl', '_hexdig', '_hextochr', '_hostprog', '_is_unicode', '_localhost', '_noheaders', '_nportprog', '_passwdprog', ...
>>> help(urllib) # will return a list of information on the given module

# A package is a collection of modules in directories that give a package hierarchy.
from my_package.subdirectory import my_functions
# MUST contain a special file called  __init__.py.

import my_modules.test_module
from my_modules import test_module

__init__.py:
__all__ = ["test_module"]
# The  __init__.py file can also decide which modules
# this package will export as an API, while keeping other modules internal,
 # by overriding the __all__ variable, like so:
