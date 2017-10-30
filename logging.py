import sys
import time

while True:
    sys.stderr.write('This is an error line\n')
    sys.stdout.write('This is a debug message, all good\n')
    time.sleep(1)