`Vault` sample commands

# Auth Method

- `vault auth list`                     -- show auth list

## Userpass

- `vault auth enable userpass`              -- enable userpass
- `vault list auth/userpass`                -- list userpass
- `vault write auth/userpass/users/mitchellh password=foo policies=admins`  -- admin create account for users
- `vault login -method=userpass username=mitchellh password=foo`    -- login

## Approle

- `vault auth enable approle`                               -- enable auth method (e.g. approle)
- `vault list auth/approle/role`                            -- list existing approle
- `vault write auth/approle/role/my-role \`           
    `   secret_id_ttl=10m \`
    `   token_num_uses=10 \`
    `   token_ttl=20m \`
    `   token_max_ttl=30m \`
    `   secret_id_num_uses=40`                                  -- write role id
- `vault read auth/approle/role/<role-name>/role-id`        -- read role id
- `vault write -f auth/approle/role/<role-name>/secret-id`  -- get secret id
- `vault write auth/approle/login role_id=<role_id> secret_id=<secret_id>`  -- login

# Secret Engines 

## KV Engine

- `vault secrets enable -version=2 kv`                                  -- enable secrets engine (kv2)
- `vault kv put <secret-root-path>/<secret-path> <key>=<value>`         -- put KV
- `vault kv get -version=1 <secret-root-path>/<secret-path>`            -- get KV
- `vault kv delete <secret-root-path>/<secret-path>`                    -- delete KV
- `vault kv destroy -versions=1 <secret-root-path>/<secret-path>`       -- destroy KV

## Identity

- `vault list identity/entity/name`                                     -- list all identity

# Policy

- `vault policy list`                                                   -- list policies
- `vault policy read <policy-name>`                                     -- read policy
- `vault policy write <policy-name> /path/to/your/policy.hcl`           -- write policy
- `vault policy delete <policy-name>`                                   -- delete policy
- `vault write sys/policy/<policy-name> policy=@policy.hcl`             -- update policy

# Audit

- `vault audit list -detailed`                                              -- list all audit
- `vault audit enable file file_path=/vault/vault-audit.log log_raw=true`   -- enable audit
- `vault audit disable file/`                                               -- disable audit
- `vault read -format=json sys/replication/status`                          -- check dr information

# Enterprise

## Namespaces

- `vault namespace list`                 -- show namespace list
- `vault namespace create ns1`           -- create namespace
- `vault namespace delete ns1`           -- delete namespace
- `vault namespace lookup ns1`           -- lookup namespace


# Debugging

## dry run

- `v kv list -output-curl-string /kv`                                   -- dry run

## check replication status

- `vault read -format=json sys/replication/status`
- `vault write -f sys/replication/performance/primary/enable`

## check log

- `cat  audit.2020-07-12.log | grep "QUANTA_" | jq '.auth."metadata"' | sort | uniq -c` 
- `cat  audit.2020-07-12.log | grep "QUANTA_" | jq -s 'group_by(.auth.metadata) | map({"metadata": .[0].auth.metadata,"access": (group_by(.request.path) | map({"key":.[0].request.path,"value":length}) | from_entries)})'`        -- generate usage report grouped by user

- `cat  audit.2020-07-12.log | grep "QUANTA_" | jq -s 'group_by(.request.remote_address) | map({"remote_address": .[0].request.remote_address,"access": (group_by(.request.path) | map({"key":.[0].request.path,"value":length}) | from_entries)})'`        -- generate usage report group by IP
