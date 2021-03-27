#
# Opens man pages in Preview.app.
#

function manp
    if test (count $argv) -gt 0
        for page in "$argv"
            man -t "$page" | open -f -a Preview
        end
    else
        echo 'What manual page do you want?' >&2
    end
end
