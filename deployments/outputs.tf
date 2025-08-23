output "key_data" {
  value = azapi_resource_action.ssh_public_key_gen.output.publicKey
}

resource "local_file" "priv_key" {
  content  = azapi_resource_action.ssh_public_key_gen.output.privateKey
  filename = "timberlight_key.pem"
}
