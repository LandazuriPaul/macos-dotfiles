# Development tools

Some development tools to complete the installation process.

## Node.js

1. Install [nvm](https://github.com/nvm-sh/nvm), the Node.js version manager:

   ```sh
   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
   ```

   Once the installation is complete, you can install the latest node version. This way you will be able to check that the next install - yarn - has been successfully installed:

   ```sh
   nvm install node
   ```

2. Install [Yarn](https://classic.yarnpkg.com/), an efficient Node.js package manager. In order to avoid installing a global Node.js version at the same time, avoid installing Yarn via Homebrew. You would rather want to install it directly via the install script:

   ```sh
   curl -o- -L https://yarnpkg.com/install.sh | bash
   ```
