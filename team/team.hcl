# Provides user access at the team level.

# Read shared KV secrets
path "secret/shared/*" {
  capabilities = ["read"]
}

# Read non-prod secrets
path "secret/dev/*" {
  capabilities = ["read"]
}

path "secret/test/*" {
  capabilities = ["read"]
}

path "secret/qa/*" {
  capabilities = ["read"]
}

# if SOX is enabled, disable access to these secrets.
path "secret/stage/*" {
  capabilities = ["read"]
}

# Manage KV secrets engine
path "secret/*"
{
  capabilities = ["create", "update", "delete", "list"]
}

# Read secret engines
path "sys/mounts/*"
{
  capabilities = ["read", "list"]
}

# List existing secret engines.
path "sys/mounts"
{
  capabilities = ["read"]
}