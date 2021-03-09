#!/bin/bash

ps -e -o pid,%cpu,comm | sort -k 2 -rg | head -n 10