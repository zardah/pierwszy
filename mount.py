#!/usr/bin/env python3.6
# coding: utf-8

import subprocess
# from fabric.api import *  (nie widzi fabric)


label=[]
label2=["dodatek"]


chec = input("Czy chcesz zsynchronizować dane? Wpisz 'tak/nie' ")

while True:
    if chec == "nie":
        print("Dane nie zostana wyswietone")
        break
    elif chec == "tak":
        print("Widoczne Labely\n")
        label.append(subprocess.run("/sbin/blkid -o udev", shell=True))  # | grep -ie LABEL.[^ENC] | sed 's/.*\=//;s/.*\=//p'", shell=True)
        #print(label)
        break
    else:
        print("Wpisales cos innego, niz tak/nie. Wpisz ponownie.")
        chec = input("Wpisz teraz: ")







