Map<String, dynamic> dummyChatMessagesByChatId1 = {
  "messages": [
    {
      "messageId": "1",
      "senderId": "1",
      "recipientId": "2",
      "content": "Hello",
      "timestamp": "2022-01-01T12:00:00",
    },
    {
      "messageId": "2",
      "senderId": "2",
      "recipientId": "1",
      "content": "Hi",
      "timestamp": "2022-01-01T12:01:00",
    },
    {
      "messageId": "3",
      "senderId": "1",
      "recipientId": "2",
      "content": "How are you?",
      "timestamp": "2022-01-01T12:02:00",
    },
    {
      "messageId": "4",
      "senderId": "2",
      "recipientId": "1",
      "content": "I'm fine, thank you",
      "timestamp": "2022-01-01T12:03:00",
    },
    {
      "messageId": "5",
      "senderId": "1",
      "recipientId": "2",
      "content": "What are you doing?",
      "timestamp": "2022-01-01T12:04:00",
    },
    {
      "messageId": "6",
      "senderId": "2",
      "recipientId": "1",
      "content": "I'm working",
      "timestamp": "2022-01-01T12:05:00",
    },
    {
      "messageId": "7",
      "senderId": "1",
      "recipientId": "2",
      "content": "I'm bored",
      "timestamp": "2022-01-01T12:06:00",
    },
    {
      "messageId": "8",
      "senderId": "2",
      "recipientId": "1",
      "content": "I'm sorry to hear that",
      "timestamp": "2022-01-01T12:07:00",
    },
    {
      "messageId": "9",
      "senderId": "1",
      "recipientId": "2",
      "content": "I'm going to sleep",
      "timestamp": "2022-01-01T12:08:00",
    },
  ]
};

Map<String, dynamic> dummyChatMessagesByChatId2 = {
  "messages": [
    {
      "messageId": "1",
      "senderId": "2",
      "recipientId": "1",
      "content": "你好",
      "timestamp": "2012-05-01T02:00:00",
    },
    {
      "messageId": "2",
      "senderId": "1",
      "recipientId": "2",
      "content": "你好",
      "timestamp": "2012-05-01T02:01:00",
    },
    {
      "messageId": "3",
      "senderId": "2",
      "recipientId": "1",
      "content": "你好吗？",
      "timestamp": "2012-05-01T02:02:00",
    },
    {
      "messageId": "4",
      "senderId": "1",
      "recipientId": "2",
      "content": "我很好，谢谢",
      "timestamp": "2012-05-01T02:03:00",
    },
    {
      "messageId": "5",
      "senderId": "2",
      "recipientId": "1",
      "content": "你在做什么？",
      "timestamp": "2012-05-01T02:04:00",
    },
    {
      "messageId": "6",
      "senderId": "1",
      "recipientId": "2",
      "content": "我在工作",
      "timestamp": "2012-05-01T02:05:00",
    },
    {
      "messageId": "7",
      "senderId": "2",
      "recipientId": "1",
      "content": "我很无聊",
      "timestamp": "2012-05-01T02:06:00",
    },
    {
      "messageId": "8",
      "senderId": "1",
      "recipientId": "2",
      "content": "听到这个我很抱歉",
      "timestamp": "2012-05-01T02:07:00",
    },
    {
      "messageId": "9",
      "senderId": "2",
      "recipientId": "1",
      "content": "我要睡觉",
      "timestamp": "2012-05-01T02:08:00",
    },
  ]
};

Map<String, dynamic> dummyChatMessagesByChatId3 = {
  "messages": [
    {
      "messageId": "1",
      "senderId": "5",
      "recipientId": "1",
      "content": "Hello",
      "timestamp": "2015-07-03T12:00:00",
    },
    {
      "messageId": "2",
      "senderId": "1",
      "recipientId": "5",
      "content": "Hi",
      "timestamp": "2015-07-03T12:01:00",
    },
    {
      "messageId": "3",
      "senderId": "5",
      "recipientId": "1",
      "content": "How are you?",
      "timestamp": "2015-07-03T12:02:00",
    },
    {
      "messageId": "4",
      "senderId": "1",
      "recipientId": "5",
      "content": "I'm fine, thank you",
      "timestamp": "2015-07-03T12:03:00",
    },
    {
      "messageId": "5",
      "senderId": "5",
      "recipientId": "1",
      "content": "What are you doing?",
      "timestamp": "2015-07-03T12:04:00",
    },
    {
      "messageId": "6",
      "senderId": "1",
      "recipientId": "5",
      "content": "I'm working",
      "timestamp": "2015-07-03T12:05:00",
    },
    {
      "messageId": "7",
      "senderId": "5",
      "recipientId": "1",
      "content": "I'm bored",
      "timestamp": "2015-07-03T12:06:00",
    },
    {
      "messageId": "8",
      "senderId": "1",
      "recipientId": "5",
      "content": "I'm sorry to hear that",
      "timestamp": "2015-07-03T12:07:00",
    },
    {
      "messageId": "9",
      "senderId": "5",
      "recipientId": "1",
      "content": "I'm going to sleep",
      "timestamp": "2015-07-03T12:08:00",
    },
  ]
};

Map<String, dynamic> dummy_get_chat_by_chatId(String chatId) {
  if (chatId == "1") {
    return dummyChatMessagesByChatId1;
  } else if (chatId == "2") {
    return dummyChatMessagesByChatId2;
  } else if (chatId == "3") {
    return dummyChatMessagesByChatId3;
  }
  return {};
}
