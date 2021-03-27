function rmdln --description 'Remove all dead symlinks'
    find -L $argv[1] -name . -o -type d -prune -o -type l -exec rm '{}' +
end
