#!/bin/sh

echo '/* WARNING this file is autogenerated for a number of ports by */'
echo '/* gen_ohboyver.[bat|sh] */'
echo '/* ' `date` ' */'
echo '/* ' `hg log -rtip | head -1` ' */'
echo '#define OHBOY_VER "'`date +%Y%m%d`'"'
