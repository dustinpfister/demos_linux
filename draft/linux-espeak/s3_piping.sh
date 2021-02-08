#!/bin/bash

today=$(date +"%A")

echo $today | espeak -p 20 -s 60
