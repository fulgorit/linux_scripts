import sys
reload(sys)
sys.setdefaultencoding("utf-8")

from langdetect import detect
import commands
import re

text=commands.getstatusoutput('xsel')
#txt =re.sub(\'"\,"",text[1])
txt_uni=unicode(text[1])
txt2 = re.sub(' "\t\n', '_', txt_uni) # This_should_be_connected
txt2 = re.sub("'", '_', txt2)
#txt2 = re.sub(r"\W", "_", txt2)
txt = re.sub('_', ' ', txt2)

ret=detect(unicode(txt))
#print ret
ret2=commands.getoutput('echo "['+ret+']:'+txt+'" >> /home/masterli/synthesis/text.txt')

if(ret=="fr"):
	ret=commands.getoutput("pico2wave -l=fr-FR -w /home/masterli/synthesis/text.wav '"+txt+"' && aplay /home/masterli/synthesis/text.wav")
else:
	ret=commands.getoutput("pico2wave -l=en-GB -w /home/masterli/synthesis/text.wav '"+txt+"' && aplay /home/masterli/synthesis/text.wav")

#pico2wave -l=en-US -w /home/masterli/synthesis/text.wav "$text" && aplay /home/masterli/synthesis/text.wav

#-l=fr-FR
