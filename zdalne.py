#!/usr/bin/env python3.6
# coding: utf-8

# import sys
import paramiko
# import os
# import time
# import configparser
# import threading

"""supplies = ["jajko", "serek"]
for i in range(len(supplies)):
    print(' ' + str(i) + ' na liscie: ' + supplies[i])
"""



hostname = "druk.tklx.pl"
username = "tomboy"
port = 12988

client = paramiko.SSHClient()
client.load_system_host_keys()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())

client.connect(hostname=hostname,
               port=port,
               username=username)

stdin, stout, stderr = client.exec_command('ls /etc')
print(stout.read())


client.close()


