# Optional non-CLI applications

Here is an unsorted list of useful application to install on a brand new macOS:

### Browsers

- [Brave](https://brave.com/fr/): An Open Source fast and privacy-first web browser.

- [Google Chrome](https://www.google.com/intl/fr/chrome/): A web browser to use for development purposes only!

- [Choosy](https://www.choosyosx.com/): « Opens every link in the right browser. »

### Editors

- [Sublime Text](https://www.sublimetext.com/): A lightweight and efficient editor.

- [Visual Studio Code](https://code.visualstudio.com/): A complete and modular open source editor. Once installed, follow the instructions in the [VSCODE.md](./VSCODE.md) file.

### Development tools

- [Sourcetree](https://www.sourcetreeapp.com/): The user-friendly git-GUI from Atlassian.

- [TablePlus](https://tableplus.com/): friendly GUI for relational databases

### Utilities

- [f.lux](https://justgetflux.com/): Adapt your screen to your light environment.

- [Bartender](https://www.macbartender.com/): Help organise the mac menu bar icons.

- [ShiftIt](https://github.com/fikovnik/ShiftIt): « Managing window size and position in OSX. »

- [Flycut](https://apps.apple.com/us/app/flycut-clipboard-manager/id442160987?mt=12): A macOS clipboard manager.

- [AppCleaner](https://freemacsoft.net/appcleaner/): A small app to properly remove apps.

- [FinderPath](https://bahoom.com/finderpath/): Finder extension for the path and much more

- [Gapplin](https://apps.apple.com/app/coteditor/id768053424?ign-mpt=uo%3D8): Opens SVG files to export them into any image extension file

- [Convertos](https://apps.apple.com/us/app/convertos-unit-converter-widget/id933651245?ls=1&mt=12): Unit converter in the Notification Center

- [Gitify](https://www.gitify.io/): A menubar application to be notified on GitHub notifications.
  ```sh
  brew cask install gitify
  ```

### Useful scripts to run on macOS

Once your installation is complete, there are still some useful scripts that you might want to run to have your OS utterly ready.

- Change the default directory for your screenshots:
  ```sh
  mkdir -p ~/Pictures/Screenshots/ # Create the screenshot directory
  defaults write com.apple.screencapture location ~/Pictures/Screenshots # Define your new directory as the screenshot destination
  ```
