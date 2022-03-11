#!/bin/bash
echo -e 'foo;\nbar;\n' > mess.txt;
cat mess.txt | tr -d '\n';
rm mess.txt;

