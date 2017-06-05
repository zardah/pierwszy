#!/usr/bin/env python3.6
# coding: utf-8

import subprocess
# from fabric.api import *  (nie widzi fabric)



label2=["dodatek"]


chec = input("Czy chcesz zsynchronizować dane? Wpisz 'tak/nie' ")

while True:
    if chec == "nie":
        print("Dane nie zostana wyswietone")
        break
    elif chec == "tak":
        print("Widoczne Labely\n")
        label = subprocess.Popen("/sbin/blkid -o udev", stdout=subprocess.PIPE, shell=True)  # | grep -ie LABEL.[^ENC] | sed 's/.*\=//;s/.*\=//p'", shell=True)
        (output, err) = label.communicate()
        label_out = label.wait()
        print(output)
        print(label_out)
        break
    else:
        print("Wpisales cos innego, niz tak/nie. Wpisz ponownie.")
        chec = input("Wpisz teraz: ")

