text=`xsel`
echo "$text" >> /home/masterli/synthesis/text.txt 
pico2wave -l=en-US -w /home/masterli/synthesis/text.wav "$text" && aplay /home/masterli/synthesis/text.wav
