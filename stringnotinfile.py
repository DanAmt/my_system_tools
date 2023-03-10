#!/usr/bin/env python3

# returns the filename if string not found

import sys

# Get command line arguments
if len(sys.argv) < 3:
    print("Usage: python3 sys.argv[0] <search_string> <file_name>")
    exit(1)

search_string = sys.argv[1]
file_name = sys.argv[2]

# Check if the file exists
try:
    with open(file_name, 'r') as file:
        # Loop through each line in the file
        for line in file:
            # Check if the string is present in the line
            if search_string in line:
                # print("String found in file")
                # print filename
                exit(0)

    # If the loop completes without finding the string, it's not in the file
    # print("String not found in file")
    print (file_name)

except FileNotFoundError:
    print("File not found")
    exit(1)
