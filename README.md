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

| Purpose          | Color Name      | Hex Value | Preview | OKLCH | Contrast (background) |
| ---------------- | --------------- | --------- | ------- | ----- | --------------------- |
| background       | Basalt          | `#202020` | ![#202020](https://placehold.co/10x10/202020/202020.png) | - | - |
| background (alt) | Jet             | `#343434` | ![#343434](https://placehold.co/10x10/343434/343434.png) | - | - |
| background (hi)  | Silver          | `#71706e` | ![#71706e](https://placehold.co/10x10/71706e/71706e.png) | - | - |
| foreground       | Ivory           | `#faebd7` | ![#faebd7](https://placehold.co/10x10/faebd7/faebd7.png) | - | - |
| foreground (dim) | Almond (dim)    | `#e8d8c1` | ![#e8d8c1](https://placehold.co/10x10/e8d8c1/e8d8c1.png) | - | - |
| blue (base)      | Pond            | `#4e98c5` | ![#4e98c5](https://placehold.co/10x10/4e98c5/4e98c5.png) | 65/0.1/237.69 | 5.08 |
| blue (light)     | Lake            | `#5fb3db` | ![#5fb3db](https://placehold.co/10x10/5fb3db/5fb3db.png) | 73/0.1/230.94 | 6.87 |
| red (base)       | Coral           | `#c57673` | ![#c57673](https://placehold.co/10x10/c57673/c57673.png) | 65/0.1/22.51  | 4.77 |
| red (light)      | Terracotta      | `#df907f` | ![#df907f](https://placehold.co/10x10/df907f/df907f.png) | 73/0.1/32.77  | 6.47 |
| green (base)     | Bamboo          | `#50a27c` | ![#50a27c](https://placehold.co/10x10/50a27c/50a27c.png) | 65/0.1/161.7  | 5.22 |
| green (light)    | Shamrock        | `#74ba8b` | ![#74ba8b](https://placehold.co/10x10/74ba8b/74ba8b.png) | 73/0.1/153.91 | 7.01 |
| yellow (base)    | Sand            | `#a78c41` | ![#a78c41](https://placehold.co/10x10/a78c41/a78c41.png) | 65/0.1/89.59  | 4.96 |
| yellow (light)   | Triandra Grass  | `#c4a35a` | ![#c4a35a](https://placehold.co/10x10/c4a35a/c4a35a.png) | 73/0.1/85.55  | 6.7  |
| magenta (base)   | Lavender        | `#a27ebd` | ![#a27ebd](https://placehold.co/10x10/a27ebd/a27ebd.png) | 65/0.1/309.94 | 4.8  |
| magenta (light)  | Bright Lavender | `#b997d9` | ![#b997d9](https://placehold.co/10x10/b997d9/b997d9.png) | 73/0.1/307.6  | 6.51 |
| cyan (base)      | Sea Green       | `#31a39a` | ![#31a39a](https://placehold.co/10x10/31a39a/31a39a.png) | 65/0.1/187.33 | 5.24 |
| cyan (light)     | Verdigris       | `#4ebcb7` | ![#4ebcb7](https://placehold.co/10x10/4ebcb7/4ebcb7.png) | 73/0.1/191.06 | 7.06 |
| orange (base)    | Clay            | `#bf7e52` | ![#bf7e52](https://placehold.co/10x10/bf7e52/bf7e52.png) | 65/0.1/54.12  | 4.85 |
| orange (light)   | Fallen Leaves   | `#d09c5f` | ![#d09c5f](https://placehold.co/10x10/d09c5f/d09c5f.png) | 73/0.1/69.6   | 6.6  |
| -                | Sakura          | `#c57675` | ![#c57675](https://placehold.co/10x10/c57675/c57675.png) | 65/0.1/20.92  | 4.77 |
| -                | Lotus           | `#c1758b` | ![#c1758b](https://placehold.co/10x10/c1758b/c1758b.png) | 65/0.1/1.51   | 4.74 |
| -                | Sunset          | `#c47865` | ![#c47865](https://placehold.co/10x10/c47865/c47865.png) | 65/0.1/34.83  | 4.77 |
| -                | Sunray          | `#919549` | ![#919549](https://placehold.co/10x10/919549/919549.png) | 65/0.1/111.56 | 5.06 |
| -                | Old Wood        | `#c17b59` | ![#c17b59](https://placehold.co/10x10/c17b59/c17b59.png) | 65/0.1/46.38  | 4.79 |
| -                | Red Wood        | `#c07c56` | ![#c07c56](https://placehold.co/10x10/c07c56/c07c56.png) | 65/0.1/49.51  | 4.8  |
| -                | Cherry          | `#c57579` | ![#c57579](https://placehold.co/10x10/c57579/c57579.png) | 65/0.1/17.0.1 | 4.75 |
| -                | Jade            | `#54a279` | ![#54a279](https://placehold.co/10x10/54a279/54a279.png) | 65/0.1/158.93 | 5.23 |

## Light

* Chroma = 0.1
* Lightness = 50 (60 for light)

| Purpose          | Color Name      | Hex Value | Preview | OKLCH | Contrast (background) |
| ---------------- | --------------- | --------- | ------- | ----- | --------------------- |
| background       | Ivory           | `#faebd7` | ![#faebd7](https://placehold.co/10x10/faebd7/faebd7.png) | - | - |
| background (alt) | Almond (dim)    | `#e8d8c1` | ![#e8d8c1](https://placehold.co/10x10/e8d8c1/e8d8c1.png) | - | - |
| background (hi)  | Almond          | `#efdecd` | ![#efdecd](https://placehold.co/10x10/efdecd/efdecd.png) | - | - |
| foreground       | Basalt          | `#202020` | ![#202020](https://placehold.co/10x10/202020/202020.png) | - | - |
| foreground (dim) | Slate           | `#353839` | ![#353839](https://placehold.co/10x10/353839/353839.png) | - | - |
| blue (base)      | Pond            | `#1a6b95` | ![#1a6b95](https://placehold.co/10x10/1a6b95/1a6b95.png) | 50/0.1/237.14 | 5 |
| blue (light)     | Lake            | `#348bb1` | ![#348bb1](https://placehold.co/10x10/348bb1/348bb1.png) | 60/0.1/230.66 | 3.27 |
| red (base)       | Coral           | `#944a48` | ![#944a48](https://placehold.co/10x10/944a48/944a48.png) | 50/0.1/22.9   | 5.38 |
| red (light)      | Terracotta      | `#b46959` | ![#b46959](https://placehold.co/10x10/b46959/b46959.png) | 60/0.1/32.93  | 3.51 |
| green (base)     | Bamboo          | `#1b7451` | ![#1b7451](https://placehold.co/10x10/1b7451/1b7451.png) | 50/0.1/161.9  | 4.89 |
| green (light)    | Shamrock        | `#4c9165` | ![#4c9165](https://placehold.co/10x10/4c9165/4c9165.png) | 60/0.1/154.23 | 3.23 |
| yellow (base)    | Sand            | `#7a6006` | ![#7a6006](https://placehold.co/10x10/7a6006/7a6006.png) | 50/0.1/89.71  | 5.11 |
| yellow (light)   | Triandra Grass  | `#9b7b31` | ![#9b7b31](https://placehold.co/10x10/9b7b31/9b7b31.png) | 60/0.1/85.28  | 3.4 |
| magenta (base)   | Lavender        | `#75528e` | ![#75528e](https://placehold.co/10x10/75528e/75528e.png) | 50/0.1/310.02 | 5.34 |
| magenta (light)  | Bright Lavender | `#9070af` | ![#9070af](https://placehold.co/10x10/9070af/9070af.png) | 60/0.1/60.07  | 3.5 |
| cyan (base)      | Sea Green       | `#00726f` | ![#00726f](https://placehold.co/10x10/00726f/00726f.png) | 50/0.1/0.08   | 4.93 |
| cyan (light)     | Verdigris       | `#13938f` | ![#13938f](https://placehold.co/10x10/13938f/13938f.png) | 60/0.1/191.34 | 3.2 |
| orange (base)    | Clay            | `#8e5225` | ![#8e5225](https://placehold.co/10x10/8e5225/8e5225.png) | 50/0.1/54.71  | 5.29 |
| orange (light)   | Fallen Leaves   | `#a67537` | ![#a67537](https://placehold.co/10x10/a67537/a67537.png) | 60/0.1/70.19  | 3.43 |
| -                | Sakura          | `#944a4a` | ![#944a4a](https://placehold.co/10x10/944a4a/944a4a.png) | 50/0.1/21.27  | 5.37 |
| -                | Lotus           | `#90495f` | ![#90495f](https://placehold.co/10x10/90495f/90495f.png) | 50/0.1/1.58   | 5.42 |
| -                | Sunset          | `#934c3b` | ![#934c3b](https://placehold.co/10x10/934c3b/934c3b.png) | 50/0.1/34.55  | 5.37 |
| -                | Sunray          | `#656817` | ![#656817](https://placehold.co/10x10/656817/656817.png) | 50/0.1/111.67 | 5.05 |
| -                | Old Wood        | `#914f2e` | ![#914f2e](https://placehold.co/10x10/914f2e/914f2e.png) | 50/0.1/46.07  | 5.33 |
| -                | Red Wood        | `#90502a` | ![#90502a](https://placehold.co/10x10/90502a/90502a.png) | 50/0.1/49.53  | 5.32 |
| -                | Cherry          | `#94494e` | ![#94494e](https://placehold.co/10x10/94494e/94494e.png) | 50/0.1/17.25  | 5.39 |
| -                | Jade            | `#22744e` | ![#22744e](https://placehold.co/10x10/22744e/22744e.png) | 50/0.1/159.02 | 4.87 |


# Design

My attempt was to create a colorscheme by following color theory (to the extent I understand it).

After some research, I settled on OKLCH, which defines "perceived" lightness and chroma (roughly saturation). Keeping lightness and chroma consistent across accent colors *should* result in a harmonous over appearance.

Additionally, care was taken to keep contrast above the WCAG recommendation of 4.5:1.

