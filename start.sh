#!/bin/bash

cd "$(dirname "$0")"
source env/bin/activate
uvicorn src.main:app --uds=/tmp/uvicorn.sock
