# iTerm2 tips & tricks

## Preferences

To be able to track the iTerm2 preference changes with this dotfiles repository, I configured iTerm2 to save the preferences to a custom folder: `~/.iterm2_profile`. This setting is accessible in iTerm2's preferences > General > Preferences.

## Shell integration features

It can be useful to run the iTerm2 integration script to enjoy all its features. In the main iTerm2 menu, launch `Install Shell Integration`.

### Long-running commands

- When on a local session, you can use [iTerm2 shell integration](https://iterm2.com/documentation-shell-integration.html) feature called "Alert on next mark"

- When on a remote session, I use a little trick inspired by [this SuperUser answer](https://superuser.com/a/1165272): whenever I want to be notified at the end of a long-running command, I append ` ; echo -e '\a'` at the end of the command. To do this as seamlessly as possible, I attached this action to a custom iTerm2 shortcut: `opt+a`.
