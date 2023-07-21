# My config of Neovim

Here is my config of neovim.

## Usage

Just clone this repository into directory `~/.config/nvim/` and start neovim. [lazy.nvim](https://github.com/folke/lazy.nvim) will auto install itself and other plugins at startup.

```
git clone <url of this repo> ~/.config/nvim
```

By default, this config will only include a few plugins, which suit for mataining other than editing frequently.

A custom config (`custom.lua`) file placed aside with `init.lua` is optional, it's content like below.

```
return {
    full_feature = true,                    # enable all configured plugins
    proxy_url = "http://localhost:8888",    # setup proxy for some plugins (like treesitter)
}
```
