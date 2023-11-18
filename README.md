# My configuration files

## Supported OS
- Debian 11 (Bullseye)
- Debian 12 (Bookworm)
- Debian on WSL

## Config description

### Directory structure

```
$ tree
.
├── config
│   ├── okularrc
│   └── starship.toml
├── home
├── local
│   └── bin
│       └── frm
├── other
│   └── windows-terminal
│       └── settings.json
└── README.md
```

### config/okularrc
- Okular configuration file
- Target location: `~/.config/okularrc`

### config/starship.toml
- [Starship](https://starship.rs/) prompt theme configuration file
- Target location: `~/.config/starship.toml`

### dotfiles in home/
- Config files for: bash, conda, git
- Target location: `~/`

### local/bin/
- Simple scripts for personal use
- Target location: `~/.local/bin/`

### other/windows-terminal/settings.json
- Windows Terminal configuration file
- This is used primarily for WSL
- Target location: `<SYSTEM_DISK>:\Users\<USER>\AppData\Local\Packages\<MICROSOFT_TERMINAL_DIRECTORY>\LocalState\settings.json`

### other/vscode/default.code-profile
- VSCode profile
- To use simply import a profile in VSCode