#!/usr/bin/python3

import os

first = os.system("whoami")
print(first) 

second = os.system("ip a")
print(second) 

third = os.system("lshw -short")
print(third) 

