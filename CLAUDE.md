# dotfiles

Personal macOS config, symlinked into place with GNU Stow. Repo lives at `~/dotfiles`
(the README says `~/.dotfiles` — that's stale; tmux-sessionizer and save_vscode_extensions
hard-code `~/dotfiles`).

## Layout = stow packages

Each top-level dir is a stow package; its contents mirror `$HOME`. `./sync` runs
`stow --no-folding <pkg>` for each, so **files** are symlinked individually (directories are
real dirs in `$HOME`). Run `./sync` from the repo root — stow's default target is the parent
dir (`~`).

| Package          | Lands at                                           | Contents |
|------------------|----------------------------------------------------|----------|
| `zsh/`           | `~/.zshrc`                                         | aliases, prompt, PATH; sources `~/.zlocal` last |
| `tmux/`          | `~/.tmux.conf`                                     | |
| `bin/bin/`       | `~/bin/*`                                          | scripts on PATH (tmux-sessionizer, tmux-init, cht.sh, duck, ...) |
| `config/.config/`| `~/.config/*`                                      | nvim (lazy.nvim, `lua/plugins/*.lua`), ghostty, aerospace, skhd, yabai |
| `root/`          | `~/.cht-*`                                         | cht.sh language/command lists |
| `vscode_config/` | `~/Library/Application Support/Code/User/`         | settings.json, keybindings.json (stowed with `-t`) |
| `vscode_extensions/` | not stowed                                     | list written by `./save_vscode_extensions` |

## Adding / changing things

- Edit files here, never the symlink targets' copies — they *are* these files.
- New config file: put it at the mirrored path inside the right package, then `./sync`
  (or `stow --no-folding <pkg>`). If a real file already exists at the target, stow
  refuses; move it into the repo first, then stow.
- New package: create the dir and add a `stow --no-folding <pkg>` line to `sync`.
- New script: `bin/bin/<name>`, `chmod +x`, then `stow --no-folding bin`.
- Machine-specific / work / secret stuff goes in `~/.zlocal` (untracked, sourced at the end
  of `.zshrc`). Work tooling setup lives there — don't duplicate it in `.zshrc`.
- **This repo is public on GitHub.** Never commit credentials, tokens, employer names,
  internal hostnames/tools, or anything work-specific.
- `~/.claude` is intentionally *not* managed here — don't add it as a stow package.

## Untracked / generated — don't commit

- `~/.config/nvim/lazy-lock.json` is a real file outside the repo (not tracked).
- `*.bak*` files are backups from earlier edits.
- `pbcopy` in the repo root is a stray file (aerospace default config dumped by a
  mis-redirect), not a script.

## Legacy

- `alias config='git --git-dir=$HOME/.cfg ...'` in `.zshrc` and `~/.cfg` are from an old
  bare-repo setup that predates this stow repo.
- yabai/skhd configs are kept but AeroSpace is the active window manager.

## Verification

No tests. After edits: `zsh -n zsh/.zshrc` for syntax, `bash -n` for shell scripts,
`stow -n -v --no-folding <pkg>` to dry-run symlinking, and `nvim --headless +qa` to catch
Lua errors in the nvim config.

## Commits

Short, imperative-ish, lowercase is fine (`add claude and ls helpers`). Nvim changes have
historically used an `nvim: ` prefix.
