ffmpeg -i birds.mp4 -i watermark.png -filter_complex "overlay=x=(main_w-overlay_w)/2:y=(main_h-overlay_h)/2" birds2.mp4

