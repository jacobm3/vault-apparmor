auto_auth {
        method "approle" {
                config = {
                    role_id_file_path = "/etc/vault.d/.role-id"
                    secret_id_file_path = "/etc/vault.d/.secret-id"
                    remove_secret_id_file_after_reading = false
                }
        }

        sink "file" {
                config = {
                        path = "/var/lib/vault-agent/token-sink"
                }
        }
}
