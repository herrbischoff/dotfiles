function __encodeBase64
	echo $argv[1](cat $argv[2]|base64) | pbcopy
end

function b64
	switch (echo $argv[1] | sed -E 's/.*\.//')
	case svg
		__encodeBase64 'data:image/svg+xml;base64,' $argv[1]
		echo String copied to clipboard!
	case png
		__encodeBase64 'data:image/png;base64,' $argv[1]
		echo String copied to clipboard!
	case jpg
		__encodeBase64 'data:image/jpeg;base64,' $argv[1]
		echo String copied to clipboard!
	case jpeg
		__encodeBase64 'data:image/jpeg;base64,' $argv[1]
		echo String copied to clipboard!
	case ttf
		__encodeBase64 'data:font/ttf;charset-utf-8;base64,' $argv[1]
		echo String copied to clipboard!
	case '*'
		echo Missing or wrong extension!
	end
end

