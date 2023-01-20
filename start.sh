#!/bin/bash

cd "$(dirname "$0")"
source env/bin/activate
uvicorn src.main:app --host=0.0.0.0 --workers=4
