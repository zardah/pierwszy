#!/usr/bin/env python3.6
# coding: utf-8

# import sys
import paramiko
# import os
# import time
# import configparser
# import threading
from subprocess import STDOUT
import pprint
"""supplies = ["jajko", "serek"]
for i in range(len(supplies)):
    print(' ' + str(i) + ' na liscie: ' + supplies[i])
"""

output = []

hostname = "druk.tklx.pl"
username = "tomboy"
port = 12988
# password=""

# try:
client = paramiko.SSHClient()

# client.load_system_host_keys()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())

client.connect(hostname=hostname,
               port=port,
               username=username,
               password="kluczq2rfyt7")

stdin, stdout, stderr = client.exec_command('cat /etc/passwd')

# output = stderr
# print(output.read())
# pprint.pformat(output.read())

# output = stdout
output.append(stdout)


# print(output.read())
# pprint.pformat(output.read())
# finally:
client.close()

output
