# common
abbr ll eza -l --header
abbr lt eza -l --header --tree
abbr cat bat
abbr less bat
abbr grep rg
# tools
abbr chz chezmoi
abbr lz lazygit
abbr gitme git commit -am
abbr tailscale "/Applications/Tailscale.app/Contents/MacOS/Tailscale"
abbr ts "/Applications/Tailscale.app/Contents/MacOS/Tailscale"

# pnpm
abbr pn pnpm
abbr px pnpm dlx

# ansible
abbr ap "uvx ansible-playbook"
abbr av "uvx --from ansible-core ansible-vault"
abbr ag "uvx ansible-galaxy"

# k8s
abbr k kubectl
abbr kx kubectx
abbr kns kubens
if type -q kubectl
    abbr kgp "kubectl get pods"
end

# terraform
abbr tf tofu
