function __termcolours
    set herrbischoff_tcolors (echo $TERM | grep -oE '2|4|8|16|32|64|128|256')
    for i in (seq 0 (math $herrbischoff_tcolors-1))
        printf "\x1b[38;5;%smcolour%s\n" $i $i
    end
    set -e herrbischoff_tcolors
end

function termcol
    __termcolours
end
