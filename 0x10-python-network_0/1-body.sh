#!/bin/bash
# send GET request to the URL and print the response body
curl -sfL "$1" -X GET
