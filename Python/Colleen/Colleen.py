#!/usr/bin/python3
VALUE="#!/usr/bin/python3{nl}VALUE={quo}{val}{quo}{nl}# This program will display itself when run{nl}def hello():{nl}    print(VALUE.format(nl=chr(10),quo=chr(34),val=VALUE)){nl}if __name__ == {quo}__main__{quo}:{nl}    # Function to display itself{nl}    hello()"
# This program will display itself when run
def hello():
    print(VALUE.format(nl=chr(10),quo=chr(34),val=VALUE))
if __name__ == "__main__":
    # Function to display itself
    hello()
