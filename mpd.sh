#if [ ! -f "/home/masterli/.mpd/pid" ]; then
#    echo "Pid file exists!"
#    mpd --no-daemon --stderr >> ~/mpd.log
#    exit 1
#fi

#pulseaudio --kill
#pulseaudio --start

mpd --kill
mpd --no-daemon &


