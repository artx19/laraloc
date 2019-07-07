# laraloc

Laraloc is bash scripts for fast set up local laradock environment for your project.

## usage

First clone this repository into your laravel application folder: 
```
git clone git@github.com:artx19/laraloc.git local
```

After cloning finished change `COMPOSE_PROJECT_NAME` variable in `env-laradock` file to your project name,
also you can change another variables if need.
```bash
nano local/env-laradock 
```

Now ready to laravel installation:
```bash
`./local/install.sh`
```

After installation just set up laradock:

```bash
./local/up.sh
```

Done! Local laradock environment is started, check http://localhost.

## optional

For fast connect to workspace container use:
```bash
./local/ws.sh
```

For reset your database and apply migrations with seeding use:
```bash
./local/fresh.sh
```
> WARNING! fresh.sh will remove all data in your local database