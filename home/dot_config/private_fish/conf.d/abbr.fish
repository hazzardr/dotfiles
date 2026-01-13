# common
abbr ll eza -l --header
abbr lt eza -l --header --tree
abbr cat bat
# tools
abbr chz chezmoi

# pnpm
abbr pn pnpm
abbr px pnpm dlx

# ansible 
abbr ap "uvx ansible-playbook"
abbr av "uvx ansible-vault"
abbr ag "uvx ansible-galaxy"

# k8s
abbr k kubectl
abbr kx kubectx
abbr kns kubens
if type -q kubectl
    abbr kgp "kubectl get pods"
end

# terraform
abbr tf opentofu
