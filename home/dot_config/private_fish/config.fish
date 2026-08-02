if status is-interactive
    # Commands to run in interactive sessions can go here
end

set fish_cursor default block
set fish_greeting ""

~/.local/bin/mise activate fish | source

starship init fish | source

# mise
mise activate fish | source
# pnpm
set -gx PNPM_HOME "/home/brian/.local/share/pnpm"
if not string match -q -- "$PNPM_HOME/bin" $PATH
  set -gx PATH "$PNPM_HOME/bin" $PATH
end
# pnpm end
