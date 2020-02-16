# General installation list

In order to have an operational system to develop, here is an sorted list of installation recommendations:

1. Install [Homebrew](https://brew.sh/), the macOS package manager:

   ```sh
   /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
   ```

2. Install the [git](https://git-scm.com/), the most common distributed version control system:

   ```sh
   brew install git
   ```

3. Generate a new SSH key:

   ```sh
   ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
   ```

   And register it in your GitHub account, in your [SSH settings](https://github.com/settings/keys).

4. Install [zsh](https://www.zsh.org/) and set it as your default shell:

   ```sh
   brew install zsh # install ZSH
   chsh -s /bin/zsh # set it as your default shell
   ```

5. Install [Oh My ZSH!](https://ohmyz.sh/):

   ```sh
   sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

6. Install [iTerm2](https://iterm2.com/), following [this link](https://iterm2.com/downloads/stable/latest). Once iTerm2 is successfully installed, redirect its settings to the `~.iterm2_profile` folder. You can find this feature in the _General_ pane of the iTerm2 preferences, under the _Preferences_ tab.

   Tick the two checkboxes:
   `Load preferences from a custom folder or URL`: Point here the `.iterm2_profile` filder.

   `Save changes to folder when iTerm2 quits`: So your preferences will stay in saved within the repository.

   Also, it can be useful to run the iTerm2 integration script to enjoy all its features. In the main iTerm2 menu, launch `Install Shell Integration`.

7. Install the [powerlevel10k](https://github.com/romkatv/powerlevel10k) theme for zsh:

   ```sh
   git clone --depth=1 https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k
   ```

   To have it nicely integrated, you should download the MesloLGS font, that you can find [here](https://github.com/romkatv/powerlevel10k#manual-font-installation).

8. Install some extra zsh plugins, `zsh-autosuggestions` and `zsh-syntax-highlighting`:

   ```sh
   git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
   ```

9. Install [Docker](https://www.docker.com/) following this [link](https://download.docker.com/mac/stable/Docker.dmg).

10. Install the [Kubernetes](https://kubernetes.io/) CLI tool, `kubectl`:

    ```sh
    brew install kubernetes-cli
    ```

11. Install [WeeChat](https://weechat.org/): an extensible IRC chat client in the terminal:
    ```sh
    brew install weechat
    ```
    Once installed, please follow the instructions in the [WEECHAT.md](./WEECHAT.md) file.

---

### Optional non-CLI applications

Here is an unsorted list of useful application to install on a brand new macOS:

- [Brave](https://brave.com/fr/): An Open Source fast and privacy-first web browser.

- [Google Chrome](https://www.google.com/intl/fr/chrome/): A web browser to use for development purposes only!

- [Sublime Text](https://www.sublimetext.com/): A lightweight and efficient editor.

- [Visual Studio Code](https://code.visualstudio.com/): A complete and modular open source editor. Once installed, follow the instructions in the [VSCODE.md](./VSCODE.md) file.

- [Sourcetree](https://www.sourcetreeapp.com/): The user-friendly git-GUI from Atlassian.

- [f.lux](https://justgetflux.com/): Adapt your screen to your light environment.

- [Bartender](https://www.macbartender.com/): Help organise the mac menu bar icons.

- [Choosy](https://www.choosyosx.com/): « Opens every link in the right browser. »

- [ShiftIt](https://github.com/fikovnik/ShiftIt): « Managing window size and position in OSX. »

- [Flycut](https://apps.apple.com/us/app/flycut-clipboard-manager/id442160987?mt=12): A macOS clipboard manager.

- [AppCleaner](https://freemacsoft.net/appcleaner/): A small app to properly remove apps.
