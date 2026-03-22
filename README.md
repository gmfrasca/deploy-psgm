# Deploy Pointstreak-Groupme

Ansible Playbook for deploying Pointstreak-Groupme Chatbots to a server

## Prerequisites

- Install [uv](https://docs.astral.sh/uv/)

See [Installation Documentation](https://docs.astral.sh/uv/getting-started/installation/)

## Add inventory
Add the server you wish to manage to your inventory.  This can be done via:
- Global ansible inventory (usually /etc/ansible/hosts)
- Repository inventory file (INI-formatted file in repo root called `inventory.ini`)
- Comand-line argument to `ansible-playbook` via `-i <server ip>,`

See [Ansible Documentation](https://docs.ansible.com/projects/ansible/latest/getting_started/get_started_inventory.html) for more Details

## Running the Playbook

To run the playbook, simply execute:

```sh
uv run ansible-playbook deploy-psgm.yaml --ask-vault-pass
```

### Deploying a specific environment

To install a specific environment (dev/stage/prod), add the `env_name` extra parameter:

```sh
uv run ansible-playbook deploy-psgm.yaml -e env_name [dev|stage|prod] --ask-vault-pass
```

`dev` env is deployed by default, to prevent accidentally writing to prod unless explicitly stated.

### Encrypted Configuration files

The specific configuration files used by the repo owner have been encrypted to protect sensitive urls and data.  Users will need to add/overwrite (and encrypt) the following files:

- ./files/config/<env_name>/bots.local.yaml
- ./files/config/<env_name>/responses.local.yaml
- ./files/config/<env_name>/timed.local.yaml
- ./files/util/update_all_rlp.sh

