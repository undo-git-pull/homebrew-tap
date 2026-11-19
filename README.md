# undo-git-pull/homebrew-tap

Homebrew formulas for tools published by undo-git-pull.

```sh
brew install undo-git-pull/tap/<formula>
```

| Formula | Description |
|---|---|
| [raylauncher](https://github.com/undo-git-pull/raylauncher) | Keyboard launcher for macOS: apps, commands, system actions, and a calculator |
| [rcp](https://github.com/undo-git-pull/rcp) | Two-pane TUI file copier (local and SSH), for macOS and Linux |

## Updating a formula

Formulas are updated by hand after each release. Each project has a script that writes its
formula into this checkout. Run it from a clone of that project's repository:

```sh
scripts/update-formula.sh v<version> ../homebrew-tap
```

Then review the diff here, commit, and push.
