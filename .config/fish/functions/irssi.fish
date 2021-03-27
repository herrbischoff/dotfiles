#
# When running in tmux, irssi is very particular about its environment.
#

function irssi
	env TERM=screen-256color irssi $argv
end
