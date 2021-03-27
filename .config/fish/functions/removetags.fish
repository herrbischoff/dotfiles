#
# Batch remove macOS tags
# Needs `tags` command.
#

function removetags
    if test (count $argv) -gt 0
        for f in $argv
            tag --remove \* $f
        end
    else
        echo 'Please specify files.' >&2
    end
end
