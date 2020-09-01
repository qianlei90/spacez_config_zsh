# zsh 相关的配置

## 一、依赖

- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
- [fzf](https://github.com/junegunn/fzf)
- [pyenv](https://github.com/pyenv/pyenv)
- [g](https://github.com/stefanmaric/g)

## 二、使用

```bash
$ cp zshrc.default ~/.zshrc
```

## 三、配置

| 环境变量                           | 说明                 | 默认值                  |
|------------------------------------|----------------------|-------------------------|
| `SPACEZ_CONFIG_ZSH_ROOT_DIR`       | 本项目所在的路径     | **没有默认值**          |
| `SPACEZ_CONFIG_ZSH_OH_MY_ZSH_DIR`  | `oh-my-zsh`的路径    | `~/.oh-my-zsh`          |
| `SPACEZ_CONFIG_ZSH_FZF_DIR`        | `fzf`的路径          | `~/.fzf`                |
| `SPACEZ_CONFIG_ZSH_PYENV_DIR`      | `pyenv`的路径        | `~/.pyenv`              |
| `SPACEZ_CONFIG_ZSH_G_DIR`          | `g`的路径            | `~/.g`                  |
| `SPACEZ_CONFIG_ZSH_PROXY`          | 代理地址，可以不配置 | `http://127.0.0.1:8118` |

将环境变量写入`~/.zshrc`中
