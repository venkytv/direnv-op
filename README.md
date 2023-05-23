# direnv-op
[direnv](https://direnv.net/) library to load secrets from 1Password

## Dependencies
* Version 2 of [direnv](https://direnv.net/)
* Version 2 of the [1Password CLI](https://1password.com/downloads/command-line/).

## Installation

Copy `oprc` to your direnv lib directory.

```bash
mkdir -p ~/.config/direnv/lib
cp oprc ~/.config/direnv/lib
```

## Usage

For any directory where you need 1Password secrets to be injected using
`direnv`, add the following to your `.envrc` file:

```bash
use oprc
```

Create a `.oprc` file in the same directory with the list of 1Password items
you need injected:

```bash
cat >.oprc <<EOT
export A_SECRET="op://Vault/Item/credential"
export ANOTHER_SECRET="op://Vault/Another Item/credential"
EOT

You can use `op item get "Item Name" --format json` to get the reference for a
secret.

See Also:
* [1Password secret reference syntax](https://developer.1password.com/docs/cli/secrets-reference-syntax/)
* [1Password CLI command to list secrets](https://developer.1password.com/docs/cli/reference/management-commands/item#item-list)
* [1Password CLI command to get details about an item](https://developer.1password.com/docs/cli/reference/management-commands/item#item-get)
