//  "id": "user1",
//  "username": "UserOne",
//  "profileImageUrl":
//  "https://img.freepik.com/fotos-premium/ein-sexy-heisses-model-im-bikini-fuer-frauen-foto-ai-generated_980993-1026.jpg"

// create a dummy user by id for user1 with the following additional fields

// bio
// amount of posts
// amount of followers
// amount of following
// posts (list of post with id, imageUrl/content_text, like_count, comment_count, created_at, view_count)

const dummyUserById = {
  "id": "a48b59b2-fa1d-4c68-8816-85f748d81315",
  "imageUrl":
      "https://img.freepik.com/fotos-premium/ein-sexy-heisses-model-im-bikini-fuer-frauen-foto-ai-generated_980993-1026.jpg",
  "name": "UserOne",
  "bio":
      "I am a cool person, follow me for more cool stuff. My sizes are legit and all my posts fit in me? Whatever lets get drunk and have fun. I am a cool person, follow me for more cool stuff. My sizes are legit and all my posts fit in me? Whatever lets get drunk",
  "amountOfPosts": 3,
  "amountOfFollowers": 100,
  "isFollowing": true,
  "posts": [
    {
      "runtimeType": "image",
      "id": "post1",
      "caption": "An interesting view",
      "description": "An image post with a beautiful view.",
      "creator": {
        "id": "user1",
        "name": "UserOne",
        "imageUrl":
            "https://img.freepik.com/fotos-premium/ein-sexy-heisses-model-im-bikini-fuer-frauen-foto-ai-generated_980993-1026.jpg"
      },
      "comments": [],
      "createdAt": "2021-10-14T10:00:00Z",
      "imageUrls": [
        "https://s3.r29static.com/bin/entry/334/0,0,2000,2400/720x864,85/1805017/image.webp"
      ],
      "likeCount": 10,
      "amountComments": 5,
      "viewCount": 100
    },
    {
      "runtimeType": "text",
      "id": "post2",
      "caption": "A thoughtful post",
      "content":
          "It has survived not only five centuries, but also the leap into electronic typesetting. At vero eos et accusam. It has survived not only five centuries.",
      "creator": {
        "id": "user1",
        "name": "UserOne",
        "imageUrl":
            "https://img.freepik.com/fotos-premium/ein-sexy-heisses-model-im-bikini-fuer-frauen-foto-ai-generated_980993-1026.jpg"
      },
      "comments": [],
      "createdAt": "2021-10-14T10:00:00Z",
      "likeCount": 20,
      "amountComments": 10,
      "viewCount": 200
    },
    {
      "runtimeType": "text",
      "id": "post3",
      "caption": "Long post",
      "content":
          "It has survived not only five centuries, but also the leap into electronic typesetting. At vero eos et accusam. It has survived not only five centuries., It has survived not only five centuries, but also the leap into electronic typesetting. At vero eos et accusam. It has survived not only five centuries. It has survived not only five centuries, but also the leap into electronic typesetting. At vero eos et accusam. It has survived not only five centuries., It has survived not only five centuries, but also the leap into electronic typesetting. At vero eos et accusam. It has survived not only five centuries. It has survived not only five centuries, but also the leap into electronic typesetting. At vero eos et accusam. It has survived not only five centuries.",
      "creator": {
        "id": "user1",
        "name": "UserOne",
        "imageUrl":
            "https://img.freepik.com/fotos-premium/ein-sexy-heisses-model-im-bikini-fuer-frauen-foto-ai-generated_980993-1026.jpg"
      },
      "comments": [],
      "createdAt": "2021-10-14T10:00:00Z",
      "likeCount": 20,
      "amountComments": 10,
      "viewCount": 200
    },
    {
      "runtimeType": "image",
      "id": "post4",
      "caption": "Another image post",
      "description": "Image post with a unique perspective.",
      "creator": {
        "id": "user1",
        "name": "UserOne",
        "imageUrl":
            "https://img.freepik.com/fotos-premium/ein-sexy-heisses-model-im-bikini-fuer-frauen-foto-ai-generated_980993-1026.jpg"
      },
      "comments": [],
      "createdAt": "2021-10-14T10:00:00Z",
      "imageUrls": [
        "https://img.kwcdn.com/product/Fancyalgo/VirtualModelMatting/ede39edcdcb02d00b098f31e5a249aca.jpg?imageMogr2/auto-orient%7CimageView2/2/w/800/q/70/format/webp"
      ],
      "likeCount": 30,
      "amountComments": 15,
      "viewCount": 300
    }
  ]
};
