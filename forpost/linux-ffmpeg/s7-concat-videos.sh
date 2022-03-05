
ffmpeg -framerate 30 -i ./frames/frame-%04d.png -pix_fmt yuv420p video1.mp4
ffmpeg -i ./video1.mp4 -fps 15 -pix_fmt yuv420p video2.mp4

# ls video[0-9]*.mp4 | awk '{ printf "file \x27%s\x27\n", $0 }' > videos.txt
# ls ffmpeg -f concat -i videos.txt -c copy video.mp4