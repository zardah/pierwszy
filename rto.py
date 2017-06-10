#!/usr/bin/env python3.6
# coding: utf-8


import paramiko
# from subprocess import STDOUT
import pprint
"""supplies = ["jajko", "serek"]
for i in range(len(supplies)):
    print(' ' + str(i) + ' na liscie: ' + supplies[i])
"""

# output = []

# dodanie = []
dyskz = []

hostname = "wis.tklx.pl"
username = "tomboy"
port = 20162
# password=""

# try:
client = paramiko.SSHClient()

# client.load_system_host_keys()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())

client.connect(hostname=hostname,
               port=port,
               username=username,
               password="kluczq2rfyt7")

stdin, stdout, stderr = client.exec_command('ls /mnt/rtorrent')
output = stdout

# wynik = pprint.pformat(output.read().decode('utf-8'))
dyskz.append(output.read().decode('utf-8'))

#print(pprint.pformat(dyskz))
print(pprint.pformat(dyskz))
for i in range(0, 1):
    print(dyskz[i])

# print(dyskz[1])



# dodanie.append(wynik)
# print('\n',  pprint.pformat(dodanie))


# finally:
client.close()




