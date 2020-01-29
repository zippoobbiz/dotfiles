# Vault sample commands

## Namespaces

### show namespace list

vault namespace list

### create namespace

vault namespace create ns1

### delete namespace

vault namespace delete ns1

### lookup namespace

vault namespace lookup ns1

## Secret Engines

### show auth list

vault auth list

### enable auth method (e.g. approle)

vault auth enable approle

### enable secrets engine (kv2)

vault secrets enable -version=2 kv

## Policy

### list policies

vault policy list

### read policy

vault policy read my-policy

## Audit

### list all audit

vault audit list -detailed

### enable audit

vault audit enable file file_path=/vault/vault-audit.log

### check dr information

vault read -format=json sys/replication/status