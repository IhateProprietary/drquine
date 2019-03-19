#!/usr/bin/python3
import os
I=5
Z=None
VALUE="#!/usr/bin/python3{nl}import os{nl}I={lol}{nl}Z=None{nl}VALUE={quo}{val}{quo}{nl}if __name__ == {quo}__main__{quo}:{nl}{tab}if I > 0:{nl}{tab}{tab}try:Z=int(__file__[-4:-3]){nl}{tab}{tab}except:pass{nl}{tab}{tab}if Z!=None:I-=1{nl}{tab}{tab}S={quo}Sully_%d.py{quo}%(I){nl}{tab}{tab}try:out=os.open(S,os.O_TRUNC|os.O_WRONLY|os.O_CREAT,0o744);os.write(out,VALUE.format(nl=chr(10),val=VALUE,tab='    ',quo=chr(34),lol=I).encode('UTF-8'));os.system('./'+S+' 2>&-'){nl}{tab}{tab}except:pass{nl}"
if __name__ == "__main__":
    if I > 0:
        try:Z=int(__file__[-4:-3])
        except:pass
        if Z!=None:I-=1
        S="Sully_%d.py"%(I)
        try:out=os.open(S,os.O_TRUNC|os.O_WRONLY|os.O_CREAT,0o744);os.write(out,VALUE.format(nl=chr(10),val=VALUE,tab='    ',quo=chr(34),lol=I).encode('UTF-8'));os.system('./'+S+' 2>&-')
        except:pass
