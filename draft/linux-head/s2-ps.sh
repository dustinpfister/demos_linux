#!/bin/bash
ps -e -o pcpu,pid,comm | sort -rg | head -n 10