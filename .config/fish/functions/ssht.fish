#
# Directly connect to remote tmux session
#

function ssht
    if test (count $argv) -gt 0
        ssh $argv[1] -t "sh -c 'tmux a || tmux'";
    else
        echo "usage: ssht <hostname>";
    end
end
