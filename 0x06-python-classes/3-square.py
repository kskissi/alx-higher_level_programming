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

    def area(self):
        """ method that  returns the current square area"""
        return (self.__size * self.__size)
