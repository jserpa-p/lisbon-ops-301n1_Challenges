#!/usr/bin/python3

import os

os.system("pwd")


filepath= input("Choose file path: ")

def show_dirs_files(path_chosen):
    for (root, dirs, files) in os.walk(path_chosen):
        
        print(root)
        
        print(dirs)
    
        print(files)

show_dirs_files(filepath)