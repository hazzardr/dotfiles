if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_cursor default block
set fish_greeting ""

starship init fish | source

# mise
mise activate fish | source
