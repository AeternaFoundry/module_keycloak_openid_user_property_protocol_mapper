resource "keycloak_openid_user_property_protocol_mapper" "openid_user_property_protocol_mappers" {
  for_each = var.openid_user_property_protocol_mappers

  claim_name          = each.value.claim_name
  name                = each.value.name
  realm_id            = each.value.realm_id
  user_property       = each.value.user_property
  add_to_access_token = each.value.add_to_access_token
  add_to_id_token     = each.value.add_to_id_token
  add_to_userinfo     = each.value.add_to_userinfo
  claim_value_type    = each.value.claim_value_type
  client_id           = each.value.client_id
  client_scope_id     = each.value.client_scope_id
}

