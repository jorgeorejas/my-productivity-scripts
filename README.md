# My Productivity Scripts

Shell scripts for a fast, opinionated dev environment in [Ghostty](https://ghostty.org).

## Scripts

### `dev-layout.sh`

Opens a 3-pane split layout in the current directory:

```
┌─────────────┬─────────────┐
│             │   lazygit   │
│  claude     ├─────────────┤
│             │    yazi     │
└─────────────┴─────────────┘
```

- **Left** — Claude Code (`claude --dangerously-skip-permissions`)
- **Top right** — `lazygit`
- **Bottom right** — `yazi` file explorer

**Usage**

```bash
devenv            # uses current directory
devenv ~/dev/foo  # uses specified directory
```

### `devend.sh`

Tears down the session by closing all 3 split panes.

```bash
devend
```

## Setup

1. Clone the repo:

```bash
git clone https://github.com/jorgeorejas/my-productivity-scripts ~/scripts
```

2. Add aliases to `~/.zshrc`:

```bash
alias devenv="~/scripts/dev-layout.sh"
alias devend="~/scripts/devend.sh"
```

3. Make scripts executable:

```bash
chmod +x ~/scripts/*.sh
```

4. Reload your shell:

```bash
source ~/.zshrc
```

## Requirements

- [Ghostty](https://ghostty.org) terminal
- [Claude Code](https://claude.ai/code)
- [lazygit](https://github.com/jesseduffield/lazygit)
- [yazi](https://github.com/sxyazi/yazi)
