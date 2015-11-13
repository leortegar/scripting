#!/bin/bash
#oldest --examine the oldest parts of a directory
HOWMANY=$1
shift
ls -lt $* | tail +2 | tail $HOWMANY
