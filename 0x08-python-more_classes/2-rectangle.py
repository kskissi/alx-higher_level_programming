#!/usr/bin/python3
""" the rectanle class module"""


class Rectangle:
    """ the rectangle class """
    def __init__(self, width=0, height=0):
        """ instantation of the class"""
        self.width = width
        self.height = height

    @property
    def width(self):
        """ the getter for the width"""
        return self.__width

    @width.setter
    def width(self, value):
        """ the setter for the width """
        if type(value) is not int:
            raise TypeError("width must be an integer")
        if value < 0:
            raise ValueError("width must be >= 0")
        self.__width = value

    @property
    def height(self):
        """ the getter for height"""
        return self.__height

    @height.setter
    def height(self, value):
        """ the setter for height"""
        if not isinstance(value, int):
            raise TypeError("height must be an integer")
        if value < 0:
            raise ValueError("height must be >= 0")
        self.__height = value

    def area(self):
        """pub inst... method to cal.. the area"""
        return self.__height * self.__width

    def perimeter(self):
        """ pub inst method to cal... the per.. of a rectang;le"""
        if self.__height == 0 or self.__width == int(0):
            return (0)
        return ((self.__width * 2) + (self.__height * 2))
