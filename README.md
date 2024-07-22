![License](https://img.shields.io/github/license/tobi-wan-kenobi/zengarden)

ZenGarden is a color scheme for neovim that tries to be
calm and relaxing, while still retaining some important properties
from color theory (contrast, uniform lightness, uniform chromma).

This colorscheme is created with [lush](https://github.com/rktjmp/lush.nvim),
and therefore depends on it.

# Screenshots

![ZenGarden Dark](images/zengarden_dark.png)
![ZenGarden Light](images/zengarden_light.png)

# Installation

## Packer

```
  use { "tobi-wan-kenobi/zengarden",
    requires = "rktjmp/lush.nvim",
    config = function()
      vim.cmd [[ colorscheme zengarden ]]
    end
  }
```

## Configuration

Optionally, you can call `setup()` on the module to set parameters:

```
  use { "tobi-wan-kenobi/zengarden",
    requires = "rktjmp/lush.nvim",
    config = function()
        require("zengarden").setup({
            variant = "yellow"
        })
      vim.cmd [[ colorscheme zengarden ]]
    end
  }
```

Currently, you can set the following parameters:

* `variant`: sets highlight colors for float, menu, etc. to one of: `yellow` (the default),
    `cyan`, `orange`, `magenta`, `green`
* `italics`: whether italics should be used (default) or not, boolean value

# Palette

## Dark

* Chroma = 0.1
* Lightness = 65 (73 for light)

| Purpose          | Color Name      | Hex Value | Preview |
| ---------------- | --------------- | --------- | ------- |
| background       | Basalt          | `#202020` | ![#202020](https://placehold.co/10x10/202020/202020.png) |
| background (alt) | Jet             | `#343434` | ![#343434](https://placehold.co/10x10/343434/343434.png) |
| background (hi)  | Silver          | `#71706e` | ![#71706e](https://placehold.co/10x10/71706e/71706e.png) |
| foreground       | Ivory           | `#faebd7` | ![#faebd7](https://placehold.co/10x10/faebd7/faebd7.png) |
| foreground (dim) | Almond (dim)    | `#e8d8c1` | ![#e8d8c1](https://placehold.co/10x10/e8d8c1/e8d8c1.png) |
| blue (base)      | Pond            | `#4e98c5` | ![#4e98c5](https://placehold.co/10x10/4e98c5/4e98c5.png) |
| blue (light)     | Lake            | `#5fb3db` | ![#5fb3db](https://placehold.co/10x10/5fb3db/5fb3db.png) |
| red (base)       | Coral           | `#c57673` | ![#c57673](https://placehold.co/10x10/c57673/c57673.png) |
| red (light)      | Terracotta      | `#df907f` | ![#df907f](https://placehold.co/10x10/df907f/df907f.png) |
| green (base)     | Bamboo          | `#50a27c` | ![#50a27c](https://placehold.co/10x10/50a27c/50a27c.png) |
| green (light)    | Shamrock        | `#74ba8b` | ![#74ba8b](https://placehold.co/10x10/74ba8b/74ba8b.png) |
| yellow (base)    | Sand            | `#a78c41` | ![#a78c41](https://placehold.co/10x10/a78c41/a78c41.png) |
| yellow (light)   | Triandra Grass  | `#c4a35a` | ![#c4a35a](https://placehold.co/10x10/c4a35a/c4a35a.png) |
| magenta (base)   | Lavender        | `#a27ebd` | ![#a27ebd](https://placehold.co/10x10/a27ebd/a27ebd.png) |
| magenta (light)  | Bright Lavender | `#b997d9` | ![#b997d9](https://placehold.co/10x10/b997d9/b997d9.png) |
| cyan (base)      | Sea Green       | `#39a391` | ![#39a391](https://placehold.co/10x10/39a391/39a391.png) |
| cyan (light)     | Verdigris       | `#4ebcb7` | ![#4ebcb7](https://placehold.co/10x10/4ebcb7/4ebcb7.png) |
| orange (base)    | Clay            | `#bf7e52` | ![#bf7e52](https://placehold.co/10x10/bf7e52/bf7e52.png) |
| orange (light)   | Fallen Leaves   | `#d09c5f` | ![#d09c5f](https://placehold.co/10x10/d09c5f/d09c5f.png) |
| -                | Sakura          | `#c57675` | ![#c57675](https://placehold.co/10x10/c57675/c57675.png) |
| -                | Lotus           | `#c1758b` | ![#c1758b](https://placehold.co/10x10/c1758b/c1758b.png) |
| -                | Sunset          | `#c47865` | ![#c47865](https://placehold.co/10x10/c47865/c47865.png) |
| -                | Sunray          | `#919549` | ![#919549](https://placehold.co/10x10/919549/919549.png) |
| -                | Old Wood        | `#c17b59` | ![#c17b59](https://placehold.co/10x10/c17b59/c17b59.png) |
| -                | Red Wood        | `#c07c56` | ![#c07c56](https://placehold.co/10x10/c07c56/c07c56.png) |
| -                | Cherry          | `#d96488` | ![#d96488](https://placehold.co/10x10/d96488/d96488.png) |
| -                | Jade            | `#54a279` | ![#54a279](https://placehold.co/10x10/54a279/54a279.png) |

## Light

* Chroma = 0.1
* Lightness = 50 (60 for light)

| Purpose          | Color Name      | Hex Value | Preview |
| ---------------- | --------------- | --------- | ------- |
| background       | Ivory           | `#faebd7` | ![#faebd7](https://placehold.co/10x10/faebd7/faebd7.png) |
| background (alt) | Almond (dim)    | `#e8d8c1` | ![#e8d8c1](https://placehold.co/10x10/e8d8c1/e8d8c1.png) |
| background (hi)  | Almond          | `#efdecd` | ![#efdecd](https://placehold.co/10x10/efdecd/efdecd.png) |
| foreground       | Basalt          | `#202020` | ![#202020](https://placehold.co/10x10/202020/202020.png) |
| foreground (dim) | Slate           | `#353839` | ![#353839](https://placehold.co/10x10/353839/353839.png) |
| blue (base)      | Pond            | `#1a6b95` | ![#1a6b95](https://placehold.co/10x10/1a6b95/1a6b95.png) |
| blue (light)     | Lake            | `#348bb1` | ![#348bb1](https://placehold.co/10x10/348bb1/348bb1.png) |
| red (base)       | Coral           | `#944a48` | ![#944a48](https://placehold.co/10x10/944a48/944a48.png) |
| red (light)      | Terracotta      | `#b46959` | ![#b46959](https://placehold.co/10x10/b46959/b46959.png) |
| green (base)     | Bamboo          | `#1b7451` | ![#1b7451](https://placehold.co/10x10/1b7451/1b7451.png) |
| green (light)    | Shamrock        | `#4c9165` | ![#4c9165](https://placehold.co/10x10/4c9165/4c9165.png) |
| yellow (base)    | Sand            | `#7a6006` | ![#7a6006](https://placehold.co/10x10/7a6006/7a6006.png) |
| yellow (light)   | Triandra Grass  | `#9b7b31` | ![#9b7b31](https://placehold.co/10x10/9b7b31/9b7b31.png) |
| magenta (base)   | Lavender        | `#75528e` | ![#75528e](https://placehold.co/10x10/75528e/75528e.png) |
| magenta (light)  | Bright Lavender | `#9070af` | ![#9070af](https://placehold.co/10x10/9070af/9070af.png) |
| cyan (base)      | Sea Green       | `#00726f` | ![#00726f](https://placehold.co/10x10/00726f/00726f.png) |
| cyan (light)     | Verdigris       | `#13938f` | ![#13938f](https://placehold.co/10x10/13938f/13938f.png) |
| orange (base)    | Clay            | `#8e5225` | ![#8e5225](https://placehold.co/10x10/8e5225/8e5225.png) |
| orange (light)   | Fallen Leaves   | `#a67537` | ![#a67537](https://placehold.co/10x10/a67537/a67537.png) |
| -                | Sakura          | `#944a4a` | ![#944a4a](https://placehold.co/10x10/944a4a/944a4a.png) |
| -                | Lotus           | `#90495f` | ![#90495f](https://placehold.co/10x10/90495f/90495f.png) |
| -                | Sunset          | `#934c3b` | ![#934c3b](https://placehold.co/10x10/934c3b/934c3b.png) |
| -                | Sunray          | `#656817` | ![#656817](https://placehold.co/10x10/656817/656817.png) |
| -                | Old Wood        | `#914f2e` | ![#914f2e](https://placehold.co/10x10/914f2e/914f2e.png) |
| -                | Red Wood        | `#90502a` | ![#90502a](https://placehold.co/10x10/90502a/90502a.png) |
| -                | Cherry          | `#c65378` | ![#c65378](https://placehold.co/10x10/c65378/c65378.png) |
| -                | Jade            | `#22744e` | ![#22744e](https://placehold.co/10x10/22744e/22744e.png) |


# Design

My attempt was to create a colorscheme by following color theory (to the extent I understand it).

After some research, I settled on OKLCH, which defines "perceived" lightness and chroma (roughly saturation). Keeping lightness and chroma consistent across accent colors *should* result in a harmonous over appearance.

Additionally, care was taken to keep contrast above the WCAG recommendation of 4.5:1 (except for the light colors of the light color theme, where contrast is a bit lower than that).

