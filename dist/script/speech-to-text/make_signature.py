#! /usr/bin/python
# $1 secret string
# $2 filepath

import hmac
import hashlib
import sys

args = sys.argv

f=open(args[2])
try:
    body = f.read()
finally:
    f.close()

hashd = hmac.new(args[1], body, hashlib.sha1)
signature = hashd.digest().encode("base64").rstrip('\n')
print signature

sys.exit(0)

