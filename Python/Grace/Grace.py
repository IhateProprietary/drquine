#!/usr/bin/python3
import os
VALUE="#!/usr/bin/python3{nl}import os{nl}VALUE={quo}{val}{quo}{nl}def main(): out=os.open({quo}Grace_kid.py{quo}, os.O_WRONLY | os.O_TRUNC | os.O_CREAT, 0o744); os.write(out, VALUE.format(nl=chr(10),quo=chr(34),val=VALUE).encode('UTF-8')){nl}if __name__ == {quo}__main__{quo}:{nl}    try:main(){nl}    except:pass{nl}"
def main(): out=os.open("Grace_kid.py", os.O_WRONLY | os.O_TRUNC | os.O_CREAT, 0o744); os.write(out, VALUE.format(nl=chr(10),quo=chr(34),val=VALUE).encode('UTF-8'))
if __name__ == "__main__":
    try:main()
    except:pass
