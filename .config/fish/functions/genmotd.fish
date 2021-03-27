function genmotd
    echo
    echo "Welcome to..."
    toilet -d ~/.figlet -w 200 -f 'chunky' (hostname -s)
    if test (which dig)
        set IP (dig +short myip.opendns.com @resolver1.opendns.com)
    else if iest (which drill)
        set IP (drill myip.opendns.com @resolver1.opendns.com | grep IN | grep -v ';;' | awk '{print $5}')
    end
    echo IP: $IP
    echo Hostname: (hostname)
end
