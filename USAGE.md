# USAGE.md

## Prerequisites (manual)

These two must be installed first — everything else is automated:

```bash
# 1. Install Homebrew (if not already present)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# 2. Install chezmoi
brew install chezmoi
```

## Bootstrap

```bash
# 3. Initialize chezmoi from your dotfiles repo
chezmoi init https://github.com/<your-username>/dotfiles

# 4. Apply dotfiles
#    - run_once script installs all brew packages (fish, starship, helix, mise, …)
#    - then places all config files in ~/.config/
chezmoi apply --dry-run   # preview first
chezmoi apply             # apply for real

# 5. Install fish plugins (fisher is self-bootstrapped)
fish -c "fisher update"

# 6. Install mise-managed runtimes (node, pnpm)
fish -c "mise install"

# 7. Make fish your default shell
echo (which fish) | sudo tee -a /etc/shells
chsh -s (which fish)
```

## Verify

```bash
exec fish

starship --version
hx --version
mise --version
fzf --version
```

## One-liner

```bash
# After brew and chezmoi are installed:
chezmoi init https://github.com/<your-username>/dotfiles && \
  chezmoi apply && \
  fish -c "fisher update && mise install"
```

## What gets installed automatically

`chezmoi apply` runs `run_once_brew-bundle.sh`, which installs:

| Category | Packages |
|---|---|
| Shell | fish, starship, fzf |
| Editor | helix |
| Version mgr | mise |
| CLI tools | eza, bat, ripgrep, lazygit, prettier |
| Go | go, gopls, golangci-lint, goimports |
| Python | uv (ruff + basedpyright via uvx) |
| K8s | kubectl, kubectx, kubens |
| Infra | opentofu |
| Terminal | ghostty |
| VPN | tailscale |

`mise install` then handles: node, pnpm.
