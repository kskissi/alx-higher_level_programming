#!/usr/bin/python3
""" Define a square class"""


class Square:
    """ rep... of a square class"""

    def __init__(self, size=0):
        """ instantation with size for our obect
        initialization
        """
        if not isinstance(size, int):
            raise TypeError("size must be an integer")
        elif size < 0:
            raise ValueError("size must be >= 0")
        self.__size = size
