#!/usr/bin/python3
""" LockedClass class module"""


class LockedClass:
    """ a class with no class attribute that prevents
    user from creating new instance except
    if the attribute name is first_name
    """
    __slots__ = ["first_name"]
