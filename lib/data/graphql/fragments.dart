class Fragments {
  static const String userFragment = """
      created_at
      email
      id
      password
      updated_at
      username
      verification_token
      verified
  
  """;

  static const String postFragment = """
      active
      catId
      categorie
      content
      created_at
      eigenschaft
      gelesen
      id
      image
      partner
      rahmen
      sprache
      title
      updated_at
      userId
      user {
        ${Fragments.userFragment}
      }
    
  """;
}
