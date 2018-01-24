### What's inside

#### i3 configuration

`i3/.i3/config`

##### Specifics:

configuration suitable for both `i3` and `i3-gaps`

- Modifier key set to Win key
- Changed default applications(browser, terminal)
- Dmenu replaced with j4-dmenu-desktop
- Four named workspaces
- i3bar with i3blocks embedded
- parcellite and compton as startup applications
- background image script
- volume and brightness controls via pulseaudio and xbacklight
- no window titles, scrollbars

`i3/.i3blocks.conf`

i3blocks statusbar configuration. Assumes that you have installed fontawesome 4.xx version. Includes symbols for
backlight (xbacklight), temperature(lm_sensors), volume (pulse or alsa), memory, disk usage, cpu load, wlan signal level,
battery level, current datetime, layout switch indicator.

`i3/wallpaper.sh`

optionally set background image, needs `feh` installed.

#### kitty configuration

`kitty/kitty.conf*`

There are multiple variations, differing by colorscheme.

##### Specifics:

- solarized colorscheme (in light and dark variations)
- smyck colorscheme (in default and low contrast variations)
- no window titles, scrollbars

#### tmux configuration

`tmux/.tmux.conf*`

##### Specifics:

- two variations, the second is slightly lower contrast
- prefix set to C-s
- hot configuration reloading keybinding
- convenient bindings for selecting and resizing panes
- plays nice with neovim
- base index for windows and panes set to 1
- vi keys in copy mode
- copying to system clipboard(xclip)

#### vim configuration

`vimrc/.vimrc*`

##### Specifics:

Made only to use in console, not tested with gvim or similar gui-wrappers.

- multiple variations to use with dark or light terminal backgrounds
- Vundle for plugin management
- besides Vundle, only 6 plugins
- ruby, elixir and slim-template highlighting
- ctrlpvim (meant to use alongside with ag)
- vim-airline as a more informative replacement for default statusline
- vim-fugitive for viewing current git branch
- line length limited by 120 symbols
- absolute line numbers
- search highlights are not persistent
- autoindent
- show matching brackets
- newlines indicated with special symbol
- trailing spaces indicated with special symbol

#### tmuxinator configurations

`tmuxinator/*.yml`

##### Specifics:

Rails-specific configurations.

- Launches two windows with rails server console in window 1 (background), and 3-paned window 0, that is visible by
default. The layout is main-horizontal, with editor window on top, server console in bottom left, and utility console
on the bottom right.

![img](https://github.com/Shkrt/dotfiles/raw/master/scrot.png)

#### psql configurations

`.psqlrc`

##### Specifics:

- query editor set to nvim
- null values displayed with special symbol `¤`
- interactive rollbacks
- custom prompt
