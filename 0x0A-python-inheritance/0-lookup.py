0-lookup.py

#!/usr/bin/python3
"""
    This module returns the list of available attributes
    and methods of an object
"""


def lookup(obj):
    """This functions looks out for all attributes and methods of an object"""
    return dir(obj)
-----------------------------------------------
1-main.py

#!/usr/bin/python3
MyList = __import__('1-my_list').MyList

my_list = MyList()
my_list.append(1)
my_list.append(4)
my_list.append(2)
my_list.append(3)
my_list.append(5)
print(my_list)
my_list.print_sorted()
print(my_list)
