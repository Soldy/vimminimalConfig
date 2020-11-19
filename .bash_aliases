
# simple webhand
# useage w3 thehackernews.com h2

w3(){ 
     curl -sL  "https://$1" \
     -A "Mozilla/5.0 (Windows NT 6.4; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/36.0.1985.143 Safari/537.36 Edge/12.0" | \
     hxnormalize -x | hxremove 'script' | \
     hxnormalize -x | hxselect "$2" | \
     w3m -dump -cols 2000 -T 'text/html'
}

