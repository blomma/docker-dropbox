# Dropbox client in Docker

## Quick start

```shell-session
$ mkdir /dropbox/Dropbox /dropbox/.dropbox
$ docker-compose up -d
```

### Upgrade

```shell-session
$ docker-compose pull
$ docker-compose up -d
```

### Directories

-   `~/Dropbox` : Dropbox synchronized directory.
-   `~/.dropbox` : Stores meta files which use dropbox client.

### First link to your Dropbox account

On the first start, you have to link your Dropbox account.

After starting dropbox service, please check journal logs.

```shell-session
$ sudo docker logs -f dropbox
```

You will see following messages.

```
This computer isn't linked to any Dropbox account...
Please visit https://www.dropbox.com/cli_link_nonce?nonce=XXXXXXXXXXXXXXXXXXXXXXXXXXX to link this device.
```

Visit the URL and link to your account.
When your computer linked successfully, you will see following message.

```
This computer is now linked to Dropbox. Welcome XXXXXX
```

### How to show dropbox client status

You can use dropbox cli command (dropbox.py) as follows.

```shell-session
$ docker exec -it <container name> /dropbox.py <command>
```

For example you can show dropbox client status as follows.

```shell-session
$ docker exec -it <container name> /dropbox.py status
```

For more details, please use help command.

```shell-session
$ docker exec -it <container name> /dropbox.py help
```
