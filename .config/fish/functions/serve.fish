# Serve folder via HTTP

function serve
    set -l pyver (python -V)
    switch $pyver
        case 'Python 2*'
            python -m SimpleHTTPServer
        case 'Python 3*'
            python -m http.server
    end
end

