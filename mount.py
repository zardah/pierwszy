#!/usr/bin/env python3
# coding: utf-8

import subprocess
# from fabric.api import *  (nie widzi fabric)


chec = input("Czy chcesz zsynchronizować dane? Wpisz 'tak/nie' ")

while True:
    if chec == "nie":
        print("Dane nie zostana wyswietone")
        break
    elif chec == "tak":
        print("Dane zostana zsynchronizowane")
        subprocess.call('/sbin/blkid -o udev')
        break
    else:
        print("Wpisales cos innego, niz tak/nie. Wpisz ponownie.")
        chec = input("Wpisz teraz: ")







