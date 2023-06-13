function runc
    if ! string match -r .c $argv
        echo "thats not a c file >:("
        return 1
    end
    set name $(string split / $argv | string match -e -r .c)
    gcc $argv -o /tmp/$name.out
    $name
end
