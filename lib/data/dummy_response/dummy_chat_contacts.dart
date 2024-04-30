const Map<String, dynamic> dummyChatContacts = {
  "chat_contacts": [
    {
      "id": "1",
      "last_chat_message": {
        "message_id": "msg_1001",
        "sender_id": "user_123",
        "recipient_id": "1",
        "content":
            "Hallo! Was geht?\nWollte dir nur \nsagen dass ich Aids habe :(",
        "timestamp": "2024-02-26T23:55:00Z"
      },
      "notification_count": 5,
      "contact": {
        "id": "1",
        "username": "Pamela Jones",
        "profile_image_url":
            "https://as2.ftcdn.net/v2/jpg/05/78/61/63/1000_F_578616383_rjew0ajZan1XZ9uqaRGgw7AMLHVihzy3.jpg"
      }
    },
    {
      "id": "2",
      "last_chat_message": {
        "message_id": "msg_1002",
        "sender_id": "user_124",
        "recipient_id": "2",
        "content": "Hey,\nshow boobs pls",
        "timestamp": "2024-02-06T23:56:00Z"
      },
      "notification_count": 17,
      "contact": {
        "id": "2",
        "username": "Lord Faggot",
        "profile_image_url":
            "https://images.paramount.tech/uri/mgid:arc:imageassetref:shared.southpark.us.en:871078f4-35f8-4ffd-9b26-156124e12e7d?quality=0.7&gen=ntrn&legacyStatusCode=true&format=jpg&width=1200&height=630&crop=true"
      }
    },
    {
      "id": "3",
      "last_chat_message": {
        "message_id": "msg_1003",
        "sender_id": "user_125",
        "recipient_id": "3",
        "content": "Ich bin ein Berliner",
        "timestamp": "1945-01-02T12:34:00Z"
      },
      "notification_count": 0,
      "contact": {
        "id": "3",
        "username": "Florian Schneider",
        "profile_image_url":
            "https://images-ng.pixai.art/images/orig/eda76502-b4b2-402e-a2f9-e32bd61a0de6"
      }
    },
    {
      "id": "4",
      "last_chat_message": {
        "message_id": "msg_1004",
        "sender_id": "user_126",
        "recipient_id": "4",
        "content": "it's a me, Mario!",
        "timestamp": "1985-09-13T12:34:00Z"
      },
      "notification_count": 120,
      "contact": {
        "id": "4",
        "username": "Mario",
        "profile_image_url":
            "https://external-preview.redd.it/g2LTo4JLv6KCT5oeoVPm-FcWVLmSi76i6aWK-S5vRAU.jpg?auto=webp&s=a0021b9985bc5822370ecdf61f22ad1b8d3b7882"
      }
    },
    {
      "id": "5",
      "last_chat_message": {
        "message_id": "msg_1005",
        "sender_id": "user_127",
        "recipient_id": "5",
        "content": "We write diversity with a capital D",
        "timestamp": "1985-09-13T12:34:00Z"
      },
      "notification_count": 69,
      "contact": {
        "id": "5",
        "username": "Astolfo",
        "profile_image_url":
            "https://cdn.myminifactory.com/assets/object-assets/5a87156690514/images/resize-i6jnn7b.jpg"
      }
    },
    {
      "id": "6",
      "last_chat_message": {
        "message_id": "msg_1006",
        "sender_id": "user_128",
        "recipient_id": "6",
        "content": "Tomorrow's strategy meeting is postponed",
        "timestamp": "1986-10-14T15:45:00Z"
      },
      "notification_count": 34,
      "contact": {
        "id": "6",
        "username": "Galahad",
        "profile_image_url":
            "https://upload.wikimedia.org/wikipedia/commons/5/52/Sir_Galahad_%28Watts%29.jpg"
      }
    },
    {
      "id": "7",
      "last_chat_message": {
        "message_id": "msg_1007",
        "sender_id": "user_129",
        "recipient_id": "7",
        "content": "Can you send the latest project file?",
        "timestamp": "1987-11-15T09:20:00Z"
      },
      "notification_count": 12,
      "contact": {
        "id": "7",
        "username": "Lancelot",
        "profile_image_url":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cd/Lancelot.png/220px-Lancelot.png"
      }
    },
    {
      "id": "8",
      "last_chat_message": {
        "message_id": "msg_1008",
        "sender_id": "user_130",
        "recipient_id": "8",
        "content": "Happy Birthday! 🎉",
        "timestamp": "1988-12-16T18:30:00Z"
      },
      "notification_count": 5,
      "contact": {
        "id": "8",
        "username": "Mordred",
        "profile_image_url":
            "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/4584d309-f29f-4623-9e70-e4f735dc02f1/dfy2t0y-24f01e72-4f30-4031-81ad-19945db5d3a4.png/v1/fill/w_1280,h_1707,q_80,strp/mordred_at_the_battle_of_kamran_by_canpon1992x_dfy2t0y-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTcwNyIsInBhdGgiOiJcL2ZcLzQ1ODRkMzA5LWYyOWYtNDYyMy05ZTcwLWU0ZjczNWRjMDJmMVwvZGZ5MnQweS0yNGYwMWU3Mi00ZjMwLTQwMzEtODFhZC0xOTk0NWRiNWQzYTQucG5nIiwid2lkdGgiOiI8PTEyODAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.ekoyq8FBFhcPL2ZYOtGo_fn4rX-vFJEpbMVhVmgtyi8"
      }
    },
    {
      "id": "9",
      "last_chat_message": {
        "message_id": "msg_1009",
        "sender_id": "user_131",
        "recipient_id": "9",
        "content": "Let's catch up this weekend?",
        "timestamp": "1989-01-17T20:00:00Z"
      },
      "notification_count": 22,
      "contact": {
        "id": "9",
        "username": "Guinevere",
        "profile_image_url":
            "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4c/Queen_Guinevere_by_James_Archer.jpg/220px-Queen_Guinevere_by_James_Archer.jpg"
      }
    },
    {
      "id": "10",
      "last_chat_message": {
        "message_id": "msg_1010",
        "sender_id": "user_132",
        "recipient_id": "10",
        "content": "I've finished the draft of the report.",
        "timestamp": "1990-02-18T23:15:00Z"
      },
      "notification_count": 48,
      "contact": {
        "id": "10",
        "username": "Merlin",
        "profile_image_url":
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBamlE2HhBrnMZm4Fa0cOpGrvVYGHSSyU6bTqHmlpujw&s"
      }
    }
  ]
};
