function zfsls
	zfs list -o name,used,avail,refer,mountpoint,compression,compressratio,dedup $argv
end
