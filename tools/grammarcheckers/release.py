#!/usr/bin/env python3

from sys import stdin

commenting = False
for line in stdin:
  line = line.strip()

  if line.startswith("ADD:x"):
    commenting = True
  elif line.startswith("COPY"):
    commenting = False

  if commenting:
    print("# " + line)
  else:
    print(line)


