#!/usr/bin/python3
magic_string = __import__('100-magic_string').magic_string

for i in range(10):
    print(magic_string())
--------------------------------------------------------------
101-locked_class.py

#!/usr/bin/python3
"""This defines a locked class"""


class LockedClass:
    """
    Only allows instatiation of an attribute called first_name
    """
