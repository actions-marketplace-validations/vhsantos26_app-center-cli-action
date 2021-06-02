# App Center CLI Action

Enable the user to run any App Center CLI command.

## :rocket: Usage

A workflow example to run the App Center CLI command doing a Code Push deployment:

```yaml
name: App Center CLI Example

on: pull_request

jobs:
  build: 
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2

      - run: yarn install 

      - run: yarn run unit-tests

  app_center_deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2

      - uses: vhsantos26/app-center-cli-action@v1
        with:
          user_token: ${{ secrets.APP_CENTER_TOKEN }}
          command: appcenter codepush release-react -a Example/app-ios -d Staging
```

## :gear: Inputs

| Name       | Description               | Default | Required |
| ---------- | ------------------------- | :-----: | :------: |
| user_token | The user App Center token |         |   True   |
| command    | The App Center command    |         |   True   |

## :thought_balloon: Support

If you find our work useful, but for some reason there is something missing, please raise a pull request to us review it!