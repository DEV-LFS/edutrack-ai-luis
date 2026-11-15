// Meu primeiro comentário via VS Code
// Get the user record belonging to the authentication token
query "auth/me" verb=GET {
  api_group = "Authentication"
  auth = "user"

  input {
  }

  stack {
    // Get the user record based on the auth ID
    db.get user {
      field_name = "id"
      field_value = $auth.id
      output = ["id", "created_at", "name", "email", "account_id", "role"]
    } as $user
  }

  response = $user
  tags = ["xano:quick-start"]
  guid = "R_7_R-8SS4-WfM3GS4ieMO0_vls"
}