function ranger_func
    ranger $argv
    set quit_cd_wd_file "$HOME/.ranger_quit_cd_wd"
    if test -s "$quit_cd_wd_file"
        cd "$(cat $quit_cd_wd_file)"
        true >"$quit_cd_wd_file"
    end
end

alias rn ranger_func
