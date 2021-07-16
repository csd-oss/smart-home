# Smart home stack

Dockerfile with:

- Deckoz
- Nodered

```shell
git clone git@github.com:csd-oss/smart-home.git

docker-compose up
```

Shell script which will autobackup data to git.

## Backups

This backup is provided as a temporary development solution. Cos both Node-Red and Deconz configurations are important for normal smart home work. As soon as your system is fully seted up you should swith to different backup method. File limit in Github is 100mb.

### Set up

To set up backups install GPG and generate a key. You can use this <https://towardsdatascience.com/encrypting-your-file-made-easy-with-gpg-4b9c147e854> as a guide if needed. But if you are not running headles just install GPG via <https://gnupg.org/download/> and use graphical interface of GPG Keychain.

### Automatic backups

### Restoring from back up

```shell
sh restore.sh
```
