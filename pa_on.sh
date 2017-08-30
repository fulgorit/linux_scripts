pactl load-module module-tunnel-sink "server=192.168.1.55 sink=alsa_output.0.analog-stereo sink_name=osmc"
pactl load-module module-combine-sink sink_name=combined slaves=alsa_output.pci-0000_00_1b.0.analog-stereo,osmc

