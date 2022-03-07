
ffmpeg -y -framerate 30 -i ./frames/frame-%04d.png -pix_fmt yuv420p video1.mp4

# fps filter for setting lower fps, but with same length
# ffmpeg -i ./video1.mp4 -vf fps=fps=10 video2.mp4

# setpts filter can be used to increase length
ffmpeg -y -i ./video1.mp4 -vf setpts=2.5*PTS video2.mp4

# concat videos
ls video[0-9]*.mp4 | awk '{ printf "file \x27%s\x27\n", $0 }' > videos.txt
cat ./videos.txt
ffmpeg -f concat -i videos.txt -c copy video-concat.mp4

# ls video[0-9]*.mp4 | awk '{ printf "file \x27%s\x27\n", $0 }' > videos.txt; ffmpeg -f concat -i videos.txt -c copy video-concat.mp4