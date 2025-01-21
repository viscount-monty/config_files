# Config File Repository
## Objectives
- [ ] Bash script to install/update config files
- [x] Bash
- [x] Tmux
- [ ] WezTerm
    - [x] Windows
    - [ ] Linux

## Config Files
### Bash
- File
    `.bashrc`
- Setup commands
    - Backup current `.bashrc`
        ```sh
        mv ~/.bashrc ~/.bash.bak
    - Download file
        ```sh
        wget -P ~ https://raw.githubusercontent.com/viscount-monty/config_files/refs/heads/main/.bashrc
    - Source new file
        ```sh
        . ~/.bashrc

### Tmux
- File
    `.tmux.conf`
- Setup commands
    - Download file
        ```sh
        wget -P ~ https://raw.githubusercontent.com/viscount-monty/config_files/refs/heads/main/.tmux.conf
    - Source new file
        ```sh
        . ~/.tmux.conf

### WezTerm
#### Windows
- File
    `wezterm_windows/.wezterm.lua`
- Setup commands
    - Download file
        ```sh
        curl -o %userprofile%\.wezterm.lua https://raw.githubusercontent.com/viscount-monty/config_files/refs/heads/main/wezterm_windows/.wezterm.lua
