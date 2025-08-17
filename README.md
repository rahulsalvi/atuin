# Atuin stack

## Usage

```sh
# set these variables first
#   TS_API_CLIENT_ID
#   TS_API_CLIENT_SECRET
#   INFISICAL_TOKEN
./pre-deploy.sh
docker compose up -d
```

## Development

```sh
# install pre-commit hooks
pre-commit install
# use dev environment
export INFISICAL_ENV=dev
# build container
docker build .
# view complete compose file
docker compose config | bat --language yaml
# deploy application (see Usage section)
./pre-deploy.sh
docker compose up -d
```

## Licenses

- [LICENSE](LICENSE)
- [Atuin](https://github.com/atuinsh/atuin/blob/main/LICENSE)
