#!/usr/bin/python3
""" magic file interpretation"""
import math


class MagicClass:
    """" a class for the bytecode interpreted"""
    def __init__(self, radius=0):
        """ magic class with the radius as a parameter"""
        self.__radius = 0
        if type(radius) is not int and type(radius) is not float:
            raise TypeError("radius must be a number")
        self.__radius = radius

    def area(self):
        """ the area of the circle"""
        return (self.__radius ** 2 * math.pi)

    def circumference(self):
        """ the circum... of a cirlcle"""
        return (2 * math.pi * self.__radius)
