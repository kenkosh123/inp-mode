# inp-mode

Emacs major mode for ABAQUS inp file.

<!-- ================================================================================ -->
<!-- ================================================================================ -->
## Features
* Syntax highlighting
* Comment/Uncomment function (Start with `**`)

<!-- ================================================================================ -->
<!-- ================================================================================ -->
## Screenshot

![](./doc/screenshot.png)

<!-- ================================================================================ -->
<!-- ================================================================================ -->
## Installation

1. Clone this repo:

```sh
git clone https://github.com/ryunosuke-yamashita/inp-mode.git
```

2. Add following lines to your `~/.emacs`:

```elisp
(add-to-list 'load-path "/path/to/inp-mode")  ;; Modify PATH!
(require 'inp-mode)
(add-to-list 'auto-mode-alist '("\\.inp\\'" . inp-mode))
```

<!-- ================================================================================ -->
<!-- ================================================================================ -->
## Syntax highlighting

```inp
**COMMENT
*KEYWORD, OPTION1, OPTION2=VALUE2, ...
DATA1, DATA2, DATA3, ...
```

| Line           | Face                     |
|----------------|--------------------------|
| `**COMMENT...` | `font-lock-comment-face` |
| `*KEYWORD...`  | `font-lock-keyword-face` |
| `DATA1, ...`   | `all faces`              |

