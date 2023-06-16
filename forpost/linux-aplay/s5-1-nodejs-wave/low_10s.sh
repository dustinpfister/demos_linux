#!/bin/bash
echo "making adata file, this migth take a while"
node wave 8000 10 800 0.5 binary > adata
echo "playing adata with aplay..."
aplay adata -f U8 -r 8000