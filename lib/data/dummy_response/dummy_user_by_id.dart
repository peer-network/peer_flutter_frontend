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
  "id": "user1",
  "username": "UserOne",
  "profile_image_url":
      "https://img.freepik.com/fotos-premium/ein-sexy-heisses-model-im-bikini-fuer-frauen-foto-ai-generated_980993-1026.jpg",
  // write 10 lines of bio
  "bio":
      "I am a cool person, follow me for more cool stuff. My sizes are legit and all my posts fit in me? Whatever lets get drunk and have fun. I am a cool person, follow me for more cool stuff. My sizes are legit and all my posts fit in me? Whatever lets get drunk",

  "posts": [
    {
      "id": "post1",
      "creator_id": "user1",
      "image_urls": [
        "https://s3.r29static.com/bin/entry/334/0,0,2000,2400/720x864,85/1805017/image.webp"
      ],
      "like_count": 10,
      "comment_count": 5,
      "created_at": "2021-10-14T10:00:00Z",
      "view_count": 100,
    },
    {
      "id": "post2",
      "creator_id": "user1",
      "content_text":
          "It has survived not only five centuries, but also the leap into electronic typesetting. At vero eos et accusam. It has survived not only five centuries.",
      "like_count": 20,
      "comment_count": 10,
      "created_at": "2021-10-14T10:00:00Z",
      "view_count": 200,
    },
    {
      "id": "post2",
      "creator_id": "user1",
      "content_text": "This is a post with different text",
      "like_count": 20,
      "comment_count": 10,
      "created_at": "2021-10-14T10:00:00Z",
      "view_count": 200,
    },
    {
      "id": "post2",
      "creator_id": "user1",
      "content_text":
          "It has survived not only five centuries, but also the leap into electronic typesetting. At vero eos et accusam. It has survived not only five centuries.,It has survived not only five centuries, but also the leap into electronic typesetting. At vero eos et accusam. It has survived not only five centuries. It has survived not only five centuries, but also the leap into electronic typesetting. At vero eos et accusam. It has survived not only five centuries.,It has survived not only five centuries, but also the leap into electronic typesetting. At vero eos et accusam. It has survived not only five centuries. It has survived not only five centuries, but also the leap into electronic typesetting. At vero eos et accusam. It has survived not only five centuries.,It has survived not only five centuries, but also the leap into electronic typesetting. At vero eos et accusam. It has survived not only five centuries.",
      "like_count": 20,
      "comment_count": 10,
      "created_at": "2021-10-14T10:00:00Z",
      "view_count": 200,
    },
    {
      "id": "post3",
      "creator_id": "user1",
      "image_urls": [
        "https://img.kwcdn.com/product/Fancyalgo/VirtualModelMatting/ede39edcdcb02d00b098f31e5a249aca.jpg?imageMogr2/auto-orient%7CimageView2/2/w/800/q/70/format/webp"
      ],
      "like_count": 30,
      "comment_count": 15,
      "created_at": "2021-10-14T10:00:00Z",
      "view_count": 300,
    },
    {
      "id": "post3",
      "creator_id": "user1",
      "image_urls": [
        "https://media.wired.com/photos/6543fb9e1a1d3c78e7e7cd50/1:1/w_1380,h_1380,c_limit/Lelo-No-Pain-All-Gain-Bundle-Gear.jpg"
      ],
      "like_count": 30,
      "comment_count": 15,
      "created_at": "2021-10-14T10:00:00Z",
      "view_count": 300,
    },
    {
      "id": "post3",
      "creator_id": "user1",
      "image_urls": [
        "https://as2.ftcdn.net/v2/jpg/04/19/30/97/1000_F_419309754_SrxVJjD5v5OwYiZ5UIqwMbWiCtl05oZO.jpg"
      ],
      "like_count": 30,
      "comment_count": 15,
      "created_at": "2021-10-14T10:00:00Z",
      "view_count": 300,
    },
    {
      "id": "post3",
      "creator_id": "user1",
      "image_urls": [
        "https://stylecaster.com/wp-content/uploads/2020/04/how-to-clean-sex-toys.jpg?w=600&h=337&crop=1"
      ],
      "like_count": 30,
      "comment_count": 15,
      "created_at": "2021-10-14T10:00:00Z",
      "view_count": 300,
    },
    {
      "id": "post3",
      "creator_id": "user1",
      "image_urls": ["https://d.newsweek.com/en/full/2266426/sex-toys.jpg"],
      "like_count": 30,
      "comment_count": 15,
      "created_at": "2021-10-14T10:00:00Z",
      "view_count": 300,
    },
  ],
  "amount_of_posts": 3,
  "amount_of_followers": 100,
  "amount_of_following": 200,
  "is_following": true
};

const dummyUserById2 = [];
