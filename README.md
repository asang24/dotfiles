## dotfiles

### Userful Tools

#### refer to [modern-unix](https://github.com/ibraheemdev/modern-unix)

- [Vimium](https://github.com/philc/vimium) -- Chrome & Arc extension for Vim

```bash
    # config Custom key
    unmap /
    map <c-/> enterFindMode
    # Custom search engines
    bd: http://www.baidu.com/s?wd=%s+-csdn Baidu
    g: https://www.google.com/search?q=%s Google
    gh: https://github.com/search?q=%s GitHub
```

- [bat](https://github.com/sharkdp/bat) -- like cat but with syntax highlighting and Git integration.

```bash
    # Install
    brew install bat
    # config
    bat --generate-config-file
    # add blew to config file
    # Set the theme
    --theme="gruvbox-dark"
    --style="numbers,changes,header,snip,rule"
```

- [delta](https://github.com/dandavison/delta) -- A viewer for git and diff output.

```bash
    # Install
    brew install git-delta
    # config
    # add this to ~/.gitconfig
    [core]
        pager = delta
    [interactive]
        diffFilter = delta --color-only
    [delta]
        syntax-theme = gruvbox-dark
        side-by-side = true
```

- [cheat.sh](https://github.com/chubin/cheat.sh) -- A CLI tool for generating cheatsheets.

```bash
    # Install
    mkdir -p $HOME/Documents/Code/Tools/Cheat
    curl https://cht.sh/:cht.sh > "$HOME/Documents/Code/Tools/Cheat/cht.sh"
    chmod +x "$HOME/Documents/Code/Tools/Cheat/cht.sh"
    # config /.zshrc
    export CHEAT_DIR=$HOME/Documents/Code/Tools/Cheat/
    export PATH=$PATH:$CHEAT_DIR/bin
    # use like
    cht.sh go chan
```

- [joshuto](https://github.com/kamiyaa/joshuto) -- a terminal-based file manager by rust

```bash
    # install
    brew install joshuto
    # config  copy these files(joshuto/config/*) to ~/.config/joshuto/
        joshuto.toml: basic/general configuration   -- custom myself
        keymap.toml: keymapping configurations      -- custom myself
        mimetype.toml: mimetype configurations
        theme.toml: theming configurations
        icons.toml: icons customization            -- changed sh icons to 
        # make sure it's marked as executable by chmod +x preview_file.sh
        preview_file.sh: preview file
    # updated config refer to my github

```

- [ranger](https://github.com/ranger/ranger) -- slow and often crashes; use joshuto instead

```bash
    # Install
    brew install ranger
    # config
    ranger --copy-config=all
        # commands.py             # 与以下命令一起启动的命令 :
        # commands_full.py        # 全套命令
        # rc.conf                 # 配置和绑定
        # rifle.conf              # 文件关联（用于打开文件的程序）
        # scope.sh                # 负责各种文件预览
    # vim rc.conf
    set preview_images true     # 预览图片
    set preview_images_method iterm2 # 预览图片
    set line_numbers  absolute     # 显示行号
    set show_hidden true    # 显示隐藏文件
    set draw_borders both   # 绘制边框
    # set devicons
    git clone https://github.com/alexanderjeurissen/ranger_devicons ~/.config/ranger/plugins/ranger_devicons
    # add default_linemode devicons to rc.conf
    default_linemode devicons
    # set ranger editor to nvim
    vim rifle.conf
    #set ${VISUAL:-$EDITOR} to ${VISUAL:-nvim}
```

- [lazygit](https://github.com/jesseduffield/lazygit) -- Simple terminal UI for git commands
  [Keybindings_zh](https://github.com/jesseduffield/lazygit/blob/master/docs/keybindings/Keybindings_zh-CN.md)

```bash
    # Install
    brew install lazygit
    # use default config

```
