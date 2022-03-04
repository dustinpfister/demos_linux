mkdir -p ./frames-noise
ffmpeg -i ./frames/frame-%04d.png -vf noise=alls=20:allf=t+u ./frames-noise/frame-%04d.png