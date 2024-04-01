#!/bin/bash
#send a POST request with the file contents
curl -s -H "content-type:application/json"  -d @"$2" -X POST "$1"
