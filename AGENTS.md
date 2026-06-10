# AGENTS.md

## What This Repo Is

A personal dotfiles repository managed by [chezmoi](https://www.chezmoi.io/). It uses a non-default source root (`home/`) declared in `.chezmoiroot`. Files are applied to the real home directory via `chezmoi apply`.

## Key Conventions

- **chezmoi source root**: `.chezmoiroot` points to `home/`. All tracked dotfiles live under `home/`, not the repo root.
- **Privacy attributes**: The `private_` prefix in filenames (e.g., `private_fish/`, `private_fish_variables`) marks files so chezmoi handles them with restrictive permissions. Preserve the prefix when renaming or moving files.
- **Tooling philosophy**: All heavy tools are invoked via `uvx` (Python-based tool runner) rather than being installed globally. Helix language servers use `uvx` for Python (ruff, basedpyright) and standard binaries for Go (gopls, golangci-lint-langserver).

## Editing Flow

- **Make changes** in the source tree under `home/dot_config/...`.
- **Apply** to the live system with `chezmoi apply` (or `chezmoi apply --dry-run` first).
- **Do not edit** live dotfiles directly and expect them to sync back; this is a one-way source-to-home flow.

## Important File Paths

| Live path | Source path | Notes |
|---|---|---|
| `~/.config/fish/config.fish` | `home/dot_config/private_fish/config.fish` | Uses `starship` prompt |
| `~/.config/fish/conf.d/` | `home/dot_config/private_fish/conf.d/` | `00-env.fish` sets `EDITOR/VISUAL/KUBE_EDITOR` to `hx` |
| `~/.config/fish/fish_plugins` | `home/dot_config/private_fish/fish_plugins` | Fisher plugins: `fisher`, `autopair.fish` |
| `~/.config/helix/config.toml` | `home/dot_config/helix/config.toml` | Theme: `catppuccin_mocha` |
| `~/.config/helix/languages.toml` | `home/dot_config/helix/languages.toml` | Heavy use of `uvx` for Python tooling; Go uses `golangci-lint-langserver` |
| `~/.config/starship.toml` | `home/dot_config/starship.toml` | Palette: `catppuccin_mocha` |
| `~/.config/ghostty/config` | `home/dot_config/ghostty/config` | Theme: `TokyoNight Moon` |

## Shell Abbrs (Fish)

- `chz` → `chezmoi`
- `pn` → `pnpm`, `px` → `pnpm dlx`
- `ap` → `uvx ansible-playbook`, `av` → `uvx ansible-vault`, `ag` → `uvx ansible-galaxy`
- `k` → `kubectl`, `tf` → `opentofu`
- `ll` → `eza -l --header`, `lt` → `eza -l --header --tree`, `cat` → `bat`

## Cheatsheet

| Task | Command |
|---|---|
| Apply changes | `chezmoi apply` |
| Check what would change | `chezmoi apply --dry-run` |
| Edit a target file via chezmoi | `chezmoi edit <target>` |
| See managed files | `chezmoi managed` |
| Initialize on a new machine | `chezmoi init <git-url>` then `chezmoi apply` |
