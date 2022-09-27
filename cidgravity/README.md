# CIDgravity

This directory contains locales for https://app.cidgravity.com project.

## Testing locally

-   Clone this repo
-   Run verdaccio `cd ../build && ./verdaccio.sh start`
-   Run `npm set registry http://localhost:4873`
-   Run `npm login` and ... login
-   Make your changes in this repo
-   Run `npm run republish-locally`
-   In CIDgravity main repo, run `npm run install-latest-locales`
-   Repeat the last 3 steps as much as you want

You can automate the 3 steps with a script `./update-locales.sh` (file purposingly in .gitignore):

```sh
#!/bin/sh
cd ~/cidgravity/cidgravity-localization/cidgravity
npm run republish-locally
cd ~/cidgravity/CIDgravity/frontend
npm run install-latest-locales
```

And then configure your IDE or operating system to run this script everytime you change the `./locales` files in this repo.

For example you can install [inotify-tools](https://github.com/inotify-tools/inotify-tools/wiki#getting-inotify-tools) and then create a systemd service as folows:

`sudo vi /lib/systemd/system/reload-cidgravity-locales.service`:

```
[Unit]
Description = Reload cidgravity locales by running inotifywait in background

[Service]
User=ubuntu
Group=ubuntu
ExecStart=/bin/sh /home/nicolas/cidgravity/cidgravity-localization/build/reload-cidgravity-locales.sh
RestartSec=10

[Install]
WantedBy=multi-user.target
```

and finally `sudo systemctl start reload-cidgravity-locales.service`
