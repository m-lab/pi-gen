#!/usr/bin/python

import random
import time
import os

def main():
    os.system('docker pull mlab-test-runner:latest')
    sleeptime = random.expovariate(1.0/86400.0)
    time.sleep(sleeptime)
    os.system('reboot')
