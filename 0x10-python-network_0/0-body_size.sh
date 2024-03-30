#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: $0 <URL>"
    exit 1
fi

URL=$1

response=$(curl -sI $URL | grep -i 'content-length' | awk '{print $2}' | tr -d '\r\n')

if [ -z "$response" ]; then
    echo "Error"
    exit 1
fi

echo "Size : $response"
