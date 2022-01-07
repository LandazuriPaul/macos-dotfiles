# Development tools

Some development tools to complete the installation process.

## Common tools

1. Install the Xcode Command Line tools:
   ```sh
   xcode-select --install
   ```

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

## DevOps tools

1. Install [kubectx](https://github.com/ahmetb/kubectx):

   ```sh
   brew install kubectx
   ```

2. Install [Google Cloud SDK](https://cloud.google.com/sdk/):

   ```sh
   brew cask install google-cloud-sdk
   ```

   If you want to add the `gcloud` completion, you will need to download [Cloud SDK package](https://cloud.google.com/sdk/docs/quickstart-macos) and place it in `$HOME/scripts` (according to the current `.zshrc` configuration).

3. Install [Terraform](https://www.terraform.io/):

   ```sh
   brew install terraform
   ```

4. Install [Watch](https://formulae.brew.sh/formula/watch): Command line tool to run periodically a program and has its output upadted.
   ```sh
   brew install watch
   ```
