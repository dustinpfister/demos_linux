mkdir -p ./frames-scale
ffmpeg -i ./frames/frame-%04d.png -vf scale=320:240 ./frames-scale/frame-%04d.png