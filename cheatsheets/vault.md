`Vault` sample commands

# Namespaces

- `vault namespace list`                 -- show namespace list
- `vault namespace create ns1`           -- create namespace
- `vault namespace delete ns1`           -- delete namespace
- `vault namespace lookup ns1`           -- lookup namespace

# Auth Method

- `vault auth list`                     -- show auth list
- `vault auth enable approle`           -- enable auth method (e.g. approle)

# Secret Engines (KV)

- `vault secrets enable -version=2 kv`                                  -- enable secrets engine (kv2)
- `vault kv put secret/my-secret my-value=my-value1`                    -- put KV
- `vault kv get -version=1 secret/my-secret`                            -- get KV
- `vault kv delete secret/my-secret`                                    -- delete KV
- `vault kv destroy -versions=1 secret/my-secret`                       -- destroy KV

# Policy

- `vault policy list`                                                   -- list policies
- `vault policy read my-policy`                                         -- read policy

# Audit

- `vault audit list -detailed`                                          -- list all audit
- `vault audit enable file file_path=/vault/vault-audit.log`            -- enable audit
- `vault read -format=json sys/replication/status`                      -- check dr information

# General

- `v kv list -output-curl-string /kv`                                   -- dry run