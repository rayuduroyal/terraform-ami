locals {
  SSH_user         = jsondecode(data.aws_secretsmanager_secret_version.secrets-version.secret_string)["SSH_USER"]
  SSH_pass         = jsondecode(data.aws_secretsmanager_secret_version.secrets-version.secret_string)["SSH_PASS"]
  NEXUS_USER         = jsondecode(data.aws_secretsmanager_secret_version.secrets-version.secret_string)["NEXUS_USER"]
  NEXUS_PASS         = jsondecode(data.aws_secretsmanager_secret_version.secrets-version.secret_string)["NEXUS_PASS"]
}
