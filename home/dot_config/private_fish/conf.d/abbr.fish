# common
abbr ll eza -l --header
abbr lt eza -l --header --tree
alias lz="lazygit"

# pnpm
alias pn="pnpm"
alias px="pnpm dlx"

# ansible 
alias ap='uvx ansible-playbook'
alias av="uvx ansible-vault"
alias ag="uvx ansible-galaxy"

# k8s
abbr k kubectl
abbr kx kubectx
abbr kns kubens
if type -q kubectl
    abbr kgp "kubectl get pods"
end

# terraform
abbr tf opentofu
