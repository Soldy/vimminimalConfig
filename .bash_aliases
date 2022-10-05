
# simple webhand
# useage w3 thehackernews.com h2

w3(){ 
     curl -sL  "https://$1" \
     -A "Mozilla/5.0 (Windows NT 6.4; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36 Edge/12.0" | \
     hxnormalize -x | hxremove 'script' | \
     hxnormalize -x | hxselect "$2" | \
     w3m -dump -cols 2000 -T 'text/html'
}

debugOn(){
    export CFLAGS=" -g3 -Ofast -mfpmath=sse -mhard-float -march=westmere -mtune=westmere -Ofast -mfxsr -mmmx -msse -msse2 -mssse3 -msse4.1 -msse4.2 -maes -mpopcnt"
    export CFLAG=$CFLAGS
    export CCFLAG=$CFLAGS
    export CCFLAGS=$CFLAGS
    export CXXFLAG=$CFLAGS
    export CXXFLAGS=$CFLAGS
}
