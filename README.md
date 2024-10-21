# neovim-config
Easiest Neovim configurations on Windows: init.vim using [vim-plug](https://github.com/junegunn/vim-plug).

*NOTE: These are my personal choices; you don't have to like everything.*

**Steps to follow:**
1. Download [Neovim](https://neovim.io/)
2. Install [vim-plug](https://github.com/junegunn/vim-plug) *(Required step)*
3. Create a folder ```nvim``` inside ```%appdata%/Local/``` *(Windows)*
4. Create a folder ```nvim``` inside ```~/.config/``` *(Linux)*
5. Paste the [init.vim](https://github.com/nchhillar2004/nvim-config/blob/main/init.vim) file inside the ```nvim``` folder
6. Open the folder in terminal and enter ```nvim init.vim```
7. Run ```:PlugInstall```
8. Then run ```:CocInstall coc-python coc-tsserver coc-java coc-go coc-clangd coc-html coc-css coc-json``` *([Node.js](https://nodejs.org) is required for this step)*
9. Restart Neovim and enjoy :)

## Screenshots
#### rose-pine theme, coc suggestions, NERDTree, Terminal
![image](https://github.com/user-attachments/assets/23e16426-7586-479e-ba1b-5abab12d7c94)
#### Split screen, kanagawa-wave theme
![Screenshot 2024-09-20 185319](https://github.com/user-attachments/assets/b8e8c7b0-70ed-4d5b-a4e5-eeab0c809f0c)
#### Find files
![image](https://github.com/user-attachments/assets/8523e299-2657-4f96-bd8b-ef6c4f6b17e1)

## Commands
1. Open terminal: ```Space + t```
2. Open NERDTree: ```Space + n```
3. Refresh NERDTree: ```Space + r```
4. Search File: ```Space + ff```
5. Save file: ```Ctrl + s```
6. Open previous window: ```Space + b```
7. Split window: ```Space + s```
8. Format code: ```Space + f```
9. Move current line up/ down: ```Alt + j/ k```
10. Changing ColorScheme:
   1. change bg to black: ```Space + 1```
   2. rose-pine: ```Space + 2``` *(Default)*
   3. kanagawa-wave: ```Space + 3```
   4. gruvbox-material: ```Space + 4```
   5. default nvim: ```Space + 5```

## Troubleshooting
1. If icons are not visible, install Nerd font. I recommend: [oh-my-posh](https://ohmyposh.dev/)
2. For code suggestions, ensure [Node.js](https://nodejs.org) is installed. It's required for the coc plugin to work.

