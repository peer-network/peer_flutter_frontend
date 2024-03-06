const List<Map<String, dynamic>> dummyChat = [
  {
    "chatSessionId": "session_1",
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
        "content": "Wollte dir nur sagen dass ich Aids habe :(",
        "timestamp": "2024-02-26T23:57:00Z"
      }
      // More messages as needed
    ]
  }
];
