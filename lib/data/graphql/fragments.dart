class Fragments {
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

  static const String userFragment = """
      id
      name
  """;

  static const String chatFragment = """
      id
      image
  """;

  static const chatPartipantsFragment = """
      id
      user_id {
        ${Fragments.userFragment}
      }
      chat_id {
        ${Fragments.chatFragment}
      }
  """;

  static const String chatMessagesFragment = """
      id
      content
      chat_id {
        ${Fragments.chatFragment}
      }
      sender_id
  """;
}
