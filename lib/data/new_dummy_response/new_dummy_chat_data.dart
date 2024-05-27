List<Map<String, dynamic>> dummyChatMessagesData = [
  {
    "id": "chat123",
    "image": "https://example.com/path/to/image.jpg",
    "name": "Friends Group",
    "amountUnseenMessages": 5,
    "messages": [
      {
        "id": "msg001",
        "content": "Hello, how are you?",
        "senderId": "user123",
        "chatId": "chat123",
        "createdAt": "2024-05-07T14:30:00Z",
        "isSender": false
      },
      {
        "id": "msg002",
        "content": "Hey! Doing well, thanks! And you?",
        "senderId": "user456",
        "chatId": "chat123",
        "createdAt": "2024-05-07T14:35:00Z",
        "isSender": true
      },
      {
        "id": "msg003",
        "content": "I'm good too, thanks for asking!",
        "senderId": "user123",
        "chatId": "chat123",
        "createdAt": "2024-05-07T14:40:00Z",
        "isSender": false
      }
    ]
  },
  {
    "id": "chat456",
    "image": null,
    "name": "Work Team",
    "amountUnseenMessages": 2,
    "messages": [
      {
        "id": "msg004",
        "content": "Meeting at 3 PM today.",
        "senderId": "user789",
        "chatId": "chat456",
        "createdAt": "2024-05-07T09:00:00Z",
        "isSender": false
      },
      {
        "id": "msg005",
        "content": "Confirmed, see you all there!",
        "senderId": "user456",
        "chatId": "chat456",
        "createdAt": "2024-05-07T09:10:00Z",
        "isSender": true
      }
    ]
  },
  {
    "id": "chat789",
    "image": "https://example.com/path/to/another/image.jpg",
    "name": "Family",
    "amountUnseenMessages": 3,
    "messages": [
      {
        "id": "msg006",
        "content": "Don't forget dinner at grandma's this Sunday.",
        "senderId": "user012",
        "chatId": "chat789",
        "createdAt": "2024-05-07T16:00:00Z",
        "isSender": true
      },
      {
        "id": "msg007",
        "content": "Will there be pie?",
        "senderId": "user234",
        "chatId": "chat789",
        "createdAt": "2024-05-07T16:05:00Z",
        "isSender": false
      }
    ]
  }
];
