if status is-interactive
    # Commands to run in interactive sessions can go here
end
[ -f /usr/share/autojump/autojump.fish ]; and source /usr/share/autojump/autojump.fish
set fish_greeting
function fish_user_key_bindings
    # Execute this once per mode that emacs bindings should be used in
    fish_default_key_bindings -M insert

    # Then execute the vi-bindings so they take precedence when there's a conflict.
    # Without --no-erase fish_vi_key_bindings will default to
    # resetting all bindings.
    # The argument specifies the initial mode (insert, "default" or visual).
    fish_vi_key_bindings --no-erase insert
end

