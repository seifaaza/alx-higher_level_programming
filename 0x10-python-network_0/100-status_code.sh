#!/bin/bash
#send a request and print only the response status code
curl -s -o /dev/null -I --w "%{http_code}" "$1"
