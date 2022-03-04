mkdir -p ./frames-crop
ffmpeg -i ./frames/frame-%04d.png -vf crop=320:240:160:120 ./frames-crop/frame-%04d.png