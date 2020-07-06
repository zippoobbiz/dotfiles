`Vault` sample commands

# Namespaces

- `vault namespace list`                 -- show namespace list
- `vault namespace create ns1`           -- create namespace
- `vault namespace delete ns1`           -- delete namespace
- `vault namespace lookup ns1`           -- lookup namespace

# Auth Method

- `vault auth list`                     -- show auth list

## Userpass

- `vault auth enable userpass`
- `vault write auth/userpass/users/mitchellh password=foo policies=admins`
- `vault login -method=userpass username=mitchellh password=foo`

## Approle

- `vault auth enable approle`           -- enable auth method (e.g. approle)
- `vault list auth/approle/role`        -- list existing approle, do check the namespace
- `vault read auth/approle/role/<role-name>/role-id` -- read role id
- `vault write -f auth/approle/role/<role-name>/secret-id`  -- get secret id

# Secret Engines (KV)

- `vault secrets enable -version=2 kv`                                  -- enable secrets engine (kv2)
- `vault kv put secret/my-secret my-value=my-value1`                    -- put KV
- `vault kv get -version=1 secret/my-secret`                            -- get KV
- `vault kv delete secret/my-secret`                                    -- delete KV
- `vault kv destroy -versions=1 secret/my-secret`                       -- destroy KV

# Identity 

- `vault list identity/entity/name`                                     -- list all identity


# Policy

- `vault policy list`                                                   -- list policies
- `vault policy read my-policy`                                         -- read policy
- `vault policy write my-policy /tmp/policy.hcl`                        -- write policy
- `vault policy delete my_policy`                                       -- delete policy
- `vault write sys/policy/<policy-name> policy=@policy.hcl`             -- update policy

# Audit

- `vault audit list -detailed`                                          -- list all audit
- `vault audit enable file file_path=/vault/vault-audit.log log_raw=true`            -- enable audit
- `vault audit disable file/`
- `vault read -format=json sys/replication/status`                      -- check dr information

# General

- `v kv list -output-curl-string /kv`                                   -- dry run


# Help
- `vault path-help x`


# Special operations
- `vault list /auth/token/accessors`
- `vault token lookup -accessor <token-accessor>`

# check replication status
- `vault read -format=json sys/replication/status`
- `vault write -f sys/replication/performance/primary/enable`

