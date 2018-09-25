# Run Gitea as a Dokku app

1. Install dokku plugins:
   - [dokku-psql-single-container](https://github.com/Flink/dokku-psql-single-container)
   - [dokku-require](https://github.com/crisward/dokku-require/)
2. Clone/fork this repo
3. Create `gitea` app
4. Set variables from .env file (additional variables are available [here](https://docs.gitea.io/en-us/install-with-docker#environments-variables))
5. Push to dokku

In summary:

```bash
dokku plugin:install https://github.com/Flink/dokku-psql-single-container
dokku plugin:install https://github.com/crisward/dokku-require/
dokku apps:create gitlab
dokku config:set gitlab RUN_MODE=prod

git push dokku master
```
