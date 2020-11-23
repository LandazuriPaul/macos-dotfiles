# General installation list

In order to have an operational system to develop, here is an sorted list of installation recommendations:

1. Generate a new SSH key:

   ```sh
   ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
   ```

   And register it in your GitHub account, in your [SSH settings](https://github.com/settings/keys).

2. Install [Homebrew](https://brew.sh/), the macOS package manager:

   ```sh
   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
   ```

3. Install the GPG CLI tool to be able to check package integrity:

   ```sh
   brew install gpg
   ```

4. Install the [git](https://git-scm.com/), the most common distributed version control system:

   ```sh
   brew install git
   ```

5. Install [zsh](https://www.zsh.org/) and set it as your default shell:

   ```sh
   brew install zsh # install ZSH
   chsh -s /bin/zsh # set it as your default shell
   ```

6. Install [Oh My ZSH!](https://ohmyz.sh/):

   ```sh
   sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

7. Install [iTerm2](https://iterm2.com/), following [this link](https://iterm2.com/downloads/stable/latest). Once iTerm2 is successfully installed, redirect its settings to the `~.iterm2_profile` folder. You can find this feature in the _General_ pane of the iTerm2 preferences, under the _Preferences_ tab.

   Tick the two checkboxes:
   `Load preferences from a custom folder or URL`: Point here the `.iterm2_profile` filder.

   `Save changes to folder when iTerm2 quits`: So your preferences will stay in saved within the repository.

   Also, it can be useful to run the iTerm2 integration script to enjoy all its features. In the main iTerm2 menu, launch `Install Shell Integration`.

8. Install the [powerlevel10k](https://github.com/romkatv/powerlevel10k) theme for zsh:

   ```sh
   git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
   ```

   To have it nicely integrated, you should download the MesloLGS font, that you can find [here](https://github.com/romkatv/powerlevel10k#manual-font-installation).

9. Install some extra zsh plugins, `zsh-autosuggestions` and `zsh-syntax-highlighting`:

   ```sh
   git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
   ```

10. Install [tmux](https://github.com/tmux/tmux) and [its package manager](https://github.com/tmux-plugins/tpm):

    ```sh
    brew install tmux
    mkdir -p $HOME/.tmux/plugins
    git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm
    ```

11. Install [Docker](https://www.docker.com/) following this [link](https://download.docker.com/mac/stable/Docker.dmg).

12. Install the [Kubernetes](https://kubernetes.io/) CLI tool, `kubectl`:

    ```sh
    brew install kubernetes-cli
    ```

13. Install [WeeChat](https://weechat.org/): an extensible IRC chat client in the terminal:
    ```sh
    brew install weechat
    ```
    Once installed, please follow the instructions in the [WEECHAT.md](./WEECHAT.md) file.

---

## Extra steps

Once you have all of these tools installed, you can complete your installation with the following next steps:

- [DEVELOPMENT](./DEVELOPMENT.md): For development tools.
- [OPTIONAL](./OPTIONAL.md): For other optional and non-CLI applications.
