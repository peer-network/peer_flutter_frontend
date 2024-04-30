const List<Map<String, dynamic>> dummyChat = [
  {
    "chatSessionId": "session_1",
    "currentUserId":
        "user_123", // Later needs to be provided in a global app state by provider
    "participants": {"userId": "user_123", "contactId": "1"},
    "messages": [
      {
        "message_id": "msg_1001",
        "sender_id": "user_123",
        "recipient_id": "1",
        "content": "Hallo! Was geht?",
        "timestamp": "2024-02-26T23:55:00Z"
      },
      {
        "message_id": "msg_1002",
        "sender_id": "1",
        "recipient_id": "user_123",
        "content": "Nicht viel, du?",
        "timestamp": "2024-02-26T23:56:00Z"
      },
      {
        "message_id": "msg_1003",
        "sender_id": "user_123",
        "recipient_id": "1",
        "content":
            "Wollte dir nur sagen dass ich Aids habe :(\n nicht mehr lange zu leben habe",
        "timestamp": "2024-02-26T23:57:00Z"
      },
      {
        "message_id": "msg_1004",
        "sender_id": "1",
        "recipient_id": "user_123",
        "content": "Oh, das ist schade",
        "timestamp": "2024-02-26T23:58:00Z"
      },
      {
        "message_id": "msg_1005",
        "sender_id": "user_123",
        "recipient_id": "1",
        "content": "Ja, ich weiß",
        "timestamp": "2024-02-26T23:59:00Z"
      },
      {
        "message_id": "msg_1006",
        "sender_id": "1",
        "recipient_id": "user_123",
        "content": "Kann ich dir helfen?",
        "timestamp": "2024-02-27T00:00:00Z"
      },
      {
        "message_id": "msg_1007",
        "sender_id": "user_123",
        "recipient_id": "1",
        "content": "Nein, ich wollte es dir nur sagen",
        "timestamp": "2024-02-27T00:01:00Z"
      },
      {
        "message_id": "msg_1008",
        "sender_id": "1",
        "recipient_id": "user_123",
        "content": "Ok, danke",
        "timestamp": "2024-02-27T00:02:00Z"
      },
      {
        "message_id": "msg_1009",
        "sender_id": "user_123",
        "recipient_id": "1",
        "content": "Tschüss",
        "timestamp": "2024-02-27T00:03:00Z"
      },
      {
        "message_id": "msg_1010",
        "sender_id": "1",
        "recipient_id": "user_123",
        "content": "Tschüss",
        "timestamp": "2024-02-27T00:04:00Z"
      },
      {
        "message_id": "msg_1011",
        "sender_id": "user_123",
        "recipient_id": "1",
        "content": "Bin wieder da",
        "timestamp": "2024-03-09T00:05:00Z"
      },
      {
        "message_id": "msg_1012",
        "sender_id": "1",
        "recipient_id": "user_123",
        "content": "Oh, du lebst noch",
        "timestamp": "2024-03-11T00:06:00Z"
      },
      {
        "message_id": "msg_1013",
        "sender_id": "user_123",
        "recipient_id": "1",
        "content": "Ja, ich habe mich geirrt",
        "timestamp": "2024-03-11T00:07:00Z"
      },
      {
        "message_id": "msg_1014",
        "sender_id": "1",
        "recipient_id": "user_123",
        "content": "Warum hast du das gesagt?",
        "timestamp": "2024-03-11T00:08:00Z"
      }
    ]
  }
];
