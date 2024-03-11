const List<Map<String, dynamic>> dummyChat = [
  {
    "chatSessionId": "session_1",
    "currentUserId":
        "user_123", // Later needs to be provided in a global app state by provider
    "participants": {"userId": "user_123", "contactId": "1"},
    "messages": [
      {
        "messageId": "msg_1001",
        "senderId": "user_123",
        "recipientId": "1",
        "content": "Hallo! Was geht?",
        "timestamp": "2024-02-26T23:55:00Z"
      },
      {
        "messageId": "msg_1002",
        "senderId": "1",
        "recipientId": "user_123",
        "content": "Nicht viel, du?",
        "timestamp": "2024-02-26T23:56:00Z"
      },
      {
        "messageId": "msg_1003",
        "senderId": "user_123",
        "recipientId": "1",
        "content":
            "Wollte dir nur sagen dass ich Aids habe :(\n nicht mehr lange zu leben habe",
        "timestamp": "2024-02-26T23:57:00Z"
      },
      {
        "messageId": "msg_1004",
        "senderId": "1",
        "recipientId": "user_123",
        "content": "Oh, das ist schade",
        "timestamp": "2024-02-26T23:58:00Z"
      },
      {
        "messageId": "msg_1005",
        "senderId": "user_123",
        "recipientId": "1",
        "content": "Ja, ich weiß",
        "timestamp": "2024-02-26T23:59:00Z"
      },
      {
        "messageId": "msg_1006",
        "senderId": "1",
        "recipientId": "user_123",
        "content": "Kann ich dir helfen?",
        "timestamp": "2024-02-27T00:00:00Z"
      },
      {
        "messageId": "msg_1007",
        "senderId": "user_123",
        "recipientId": "1",
        "content": "Nein, ich wollte es dir nur sagen",
        "timestamp": "2024-02-27T00:01:00Z"
      },
      {
        "messageId": "msg_1008",
        "senderId": "1",
        "recipientId": "user_123",
        "content": "Ok, danke",
        "timestamp": "2024-02-27T00:02:00Z"
      },
      {
        "messageId": "msg_1009",
        "senderId": "user_123",
        "recipientId": "1",
        "content": "Tschüss",
        "timestamp": "2024-02-27T00:03:00Z"
      },
      {
        "messageId": "msg_1010",
        "senderId": "1",
        "recipientId": "user_123",
        "content": "Tschüss",
        "timestamp": "2024-02-27T00:04:00Z"
      },
      {
        "messageId": "msg_1011",
        "senderId": "user_123",
        "recipientId": "1",
        "content": "Bin wieder da",
        "timestamp": "2024-03-09T00:05:00Z"
      },
      {
        "messageId": "msg_1012",
        "senderId": "1",
        "recipientId": "user_123",
        "content": "Sitze gerade auf dem Klo",
        "timestamp": "2024-03-11T00:06:00Z"
      }
    ]
  }
];
