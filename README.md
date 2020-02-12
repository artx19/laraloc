# Laraloc

Laraloc are bash scripts for fast setting up local laradock environment of your project.

## Usage

First, clone this repository in same level of your laravel application folder: 
```
git clone git@github.com:artx19/laraloc.git
cd laraloc
```

> WARNING! Your application folder must be named `app`

Now ready to laravel installation:
```bash
`./install.sh`
```

After installation just set up laradock:

```bash
./up.sh
```

Done! Local laradock environment is started, check http://localhost.

## optional

For fast connect to workspace container use:
```bash
./ws.sh
```

For reset your database and apply migrations with seeding use:
```bash
./fresh.sh
```
> WARNING! fresh.sh will remove all data in your local database
