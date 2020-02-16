# Weechat installation

This repository includes some weechat configuration. In order to have the same weechat instance running, first initialise the weechat secure system by running this `/secure passphrase YOUR_PASSWORD` in the weechat buffer.

Then, you will need to set the following secure options to be able to connect to the ZNC bouncer:

```sh
/secure set BNC_freenode_username
/secure set BNC_freenode_password
/secure set BNC_freenode_addresses
```
