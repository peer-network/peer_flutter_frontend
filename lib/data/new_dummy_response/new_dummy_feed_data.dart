List<Map<String, dynamic>> dummyFeedData = [
  {
    "runtimeType": "text",
    "id": "1",
    "caption": "Welcome to my blog!",
    "content":
        "This is my first post on this platform. Excited to share my thoughts!",
    "creator": {
      "id": "user001",
      "name": "John Doe",
      "email": "john@example.com",
      "verified": true,
      "createdAt": "2022-01-01T12:00:00Z",
      "updatedAt": "2022-01-01T12:00:00Z",
      "verificationToken": "abc123",
      "bio": "Just a regular guy sharing his life.",
      "amountOfPosts": 10,
      "amountOfFollowers": 150,
      "isFollowing": false
    },
    "createdAt": "2022-01-02T15:00:00Z",
    "updatedAt": "2022-01-02T15:00:00Z",
    "isLiked": false,
    "isViewed": true,
    "isReported": false,
    "isDisliked": false,
    "isSaved": false,
    "comments": [
      {
        "id": "100",
        "content": "Great first post, John! Looking forward to more.",
        "postId": 1,
        "userId": 2,
        "creator": {
          "id": "user002",
          "name": "Jane Smith",
          "email": "jane@example.com",
          "verified": false,
          "createdAt": "2021-12-31T09:00:00Z",
          "updatedAt": "2021-12-31T09:00:00Z",
          "verificationToken": "xyz789",
          "bio": "Enthusiastic reader and commenter.",
          "amountOfPosts": 5,
          "amountOfFollowers": 200,
          "isFollowing": true
        },
        "createdAt": "2022-01-02T16:00:00Z",
        "likeCount": 15
      }
    ],
    "amountComments": 1,
    "likeCount": 10,
    "viewCount": 100
  },
  {
    "runtimeType": "image",
    "id": "post002",
    "caption": "Beautiful Sunset",
    "description": "Caught this stunning sunset last evening!",
    "creator": {
      "id": "user002",
      "name": "Jane Smith",
      "email": "jane@example.com",
      "verified": false,
      "createdAt": "2022-02-02T12:00:00Z",
      "updatedAt": "2022-02-02T12:00:00Z",
      "verificationToken": "def456",
      "bio": "Love capturing moments.",
      "amountOfPosts": 5,
      "amountOfFollowers": 200,
      "isFollowing": true
    },
    "createdAt": "2022-02-03T16:00:00Z",
    "updatedAt": "2022-02-03T16:00:00Z",
    "isLiked": false,
    "isViewed": true,
    "isReported": false,
    "isDisliked": false,
    "isSaved": false,
    "comments": [],
    "imageUrls": ["https://example.com/path/to/image.jpg"],
    "amountComments": 0,
    "likeCount": 50,
    "viewCount": 500
  },
  {
    "runtimeType": "video",
    "id": "post003",
    "videoUrl": "https://example.com/path/to/video.mp4",
    "caption": "Quick Tutorial",
    "description": "Here's a quick tutorial on how to start your own blog.",
    "creator": {
      "id": "user003",
      "name": "Alice Cooper",
      "email": "alice@example.com",
      "verified": true,
      "createdAt": "2022-03-03T12:00:00Z",
      "updatedAt": "2022-03-03T12:00:00Z",
      "verificationToken": "ghi789",
      "bio": "Blogger and content creator.",
      "amountOfPosts": 8,
      "amountOfFollowers": 300,
      "isFollowing": false
    },
    "createdAt": "2022-03-04T17:00:00Z",
    "updatedAt": "2022-03-04T17:00:00Z",
    "isLiked": false,
    "isViewed": true,
    "isReported": false,
    "isDisliked": false,
    "isSaved": false,
    "comments": [],
    "amountComments": 3,
    "likeCount": 75,
    "viewCount": 600
  },
  {
    "runtimeType": "text",
    "id": "4",
    "caption": "My Second Post",
    "content": "Back with another post. Loving this platform!",
    "creator": {
      "id": "user001",
      "name": "John Doe",
      "email": "john@example.com",
      "verified": true,
      "createdAt": "2022-01-01T12:00:00Z",
      "updatedAt": "2022-01-01T12:00:00Z",
      "verificationToken": "abc123",
      "bio": "Just a regular guy sharing his life.",
      "amountOfPosts": 10,
      "amountOfFollowers": 150,
      "isFollowing": false
    },
    "createdAt": "2022-01-03T15:00:00Z",
    "updatedAt": "2022-01-03T15:00:00Z",
    "isLiked": false,
    "isViewed": true,
    "isReported": false,
    "isDisliked": false,
    "isSaved": false,
    "comments": [
      {
        "id": "101",
        "content": "Another great post!",
        "postId": 4,
        "userId": 2,
        "creator": {
          "id": "user002",
          "name": "Jane Smith",
          "email": "jane@example.com",
          "verified": false,
          "createdAt": "2021-12-31T09:00:00Z",
          "updatedAt": "2021-12-31T09:00:00Z",
          "verificationToken": "xyz789",
          "bio": "Enthusiastic reader and commenter.",
          "amountOfPosts": 5,
          "amountOfFollowers": 200,
          "isFollowing": true
        },
        "createdAt": "2022-01-03T16:00:00Z",
        "likeCount": 20
      }
    ],
    "amountComments": 1,
    "likeCount": 15,
    "viewCount": 120
  },
  {
    "runtimeType": "image",
    "id": "post005",
    "caption": "Mountain Hike",
    "description": "Reached the summit after a long hike!",
    "creator": {
      "id": "user002",
      "name": "Jane Smith",
      "email": "jane@example.com",
      "verified": false,
      "createdAt": "2022-02-02T12:00:00Z",
      "updatedAt": "2022-02-02T12:00:00Z",
      "verificationToken": "def456",
      "bio": "Love capturing moments.",
      "amountOfPosts": 5,
      "amountOfFollowers": 200,
      "isFollowing": true
    },
    "createdAt": "2022-02-05T16:00:00Z",
    "updatedAt": "2022-02-05T16:00:00Z",
    "isLiked": false,
    "isViewed": true,
    "isReported": false,
    "isDisliked": false,
    "isSaved": false,
    "comments": [],
    "imageUrls": ["https://example.com/path/to/mountain.jpg"],
    "amountComments": 0,
    "likeCount": 40,
    "viewCount": 300
  }
];
