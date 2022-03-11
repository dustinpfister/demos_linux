#!/bin/bash
echo -e 'foo;\nbar;\n' | tr -d '\n' | xargs -I stdin echo '(' stdin ')'
