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

// const dummyUserById2 = {
//   "data": {
//     "peer2_users": [
//       {
//         "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
//         "name": "Jane Doe",
//         "image_url": "https://example.com/jane-doe-photo.jpg",
//         "email": "JaneDoe@email.com",
//         "amount_follower": 350,
//         "is_private": true,
//         "bio": "Just another explorer of life.",
//         "amount_followed": 300,
//         "amount_posts": 85,
//         "created_at": "2021-10-30T14:20:10.000Z",
//         "updated_at": "2024-05-01T10:00:00.000Z",
//         "posts": [
//           {
//             "id": "1",
//             "post_type": "image",
//             "content": "https://example.com/image1.jpg",
//             "created_at": "2024-04-29T11:00:00.000Z"
//           },
//           {
//             "id": "2",
//             "post_type": "text",
//             "content": "Adventure begins where plans end.",
//             "created_at": "2024-05-01T10:15:00.000Z"
//           }
//         ]
//       },
//       {
//         "id": "a48b59b2-fa1d-4c68-8816-85f748d81315",
//         "name": "Alex Smith",
//         "image_url":
//             "https://whyy.org/wp-content/uploads/2022/08/2022-08-15-e-lee-alex-smith-philadelphia-black-gay-comic-book-768x530.jpeg",
//         "email": "AlexSmith@email.com",
//         "amount_follower": 500,
//         "is_private": false,
//         "bio": "Life is about making an impact, not an income.",
//         "amount_followed": 430,
//         "amount_posts": 120,
//         "created_at": "2022-05-20T19:34:20.000Z",
//         "updated_at": "2024-04-29T18:15:00.000Z",
//         "posts": [
//           {
//             "id": "1",
//             "post_type": "image",
//             "content":
//                 "https://image.civitai.com/xG1nkqKTMzGDvpLrqFT7WA/45e2efd7-6e6c-464a-8ac5-54e4fcaef800/width=450/tmp2tfh58ws.jpeg",
//             "created_at": "2024-05-01T12:00:00.000Z"
//           },
//           {
//             "id": "2",
//             "post_type": "text",
//             "content": "Lorem ipsum dolor sit amet.",
//             "created_at": "2024-05-01T12:15:00.000Z"
//           },
//           {
//             "id": "3",
//             "post_type": "image",
//             "content":
//                 "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/742cea05-5544-4b03-a826-4445631f9304/dfxhzfm-d8e8984d-d34b-41ab-ba8d-34ffa9896960.png/v1/fill/w_1600,h_2400,q_80,strp/widowmaker__overwatch_2__by_dantegonist_dfxhzfm-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MjQwMCIsInBhdGgiOiJcL2ZcLzc0MmNlYTA1LTU1NDQtNGIwMy1hODI2LTQ0NDU2MzFmOTMwNFwvZGZ4aHpmbS1kOGU4OTg0ZC1kMzRiLTQxYWItYmE4ZC0zNGZmYTk4OTY5NjAucG5nIiwid2lkdGgiOiI8PTE2MDAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.8RkSzdpXxKUB3XSSJYEVEjZCHEV-aM4Z0-IvTkN0cQQ",
//             "created_at": "2024-05-01T12:00:00.000Z"
//           }
//         ]
//       },
//     ]
//   }
// };

const dummyUserById2 = {
  "data": {
    "peer2_users": [
      {
        "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
        "name": "Jane Doe",
        "image_url": "https://example.com/jane-doe-photo.jpg",
        "email": "JaneDoe@email.com",
        "amount_follower": 350,
        "is_private": true,
        "bio": "Just another explorer of life.",
        "amount_followed": 300,
        "amount_posts": 85,
        "created_at": "2021-10-30T14:20:10.000Z",
        "updated_at": "2024-05-01T10:00:00.000Z",
        "posts": [
          {
            "id": "1",
            "active": true,
            "title": "Post 1",
            "content":
                "https://images.squarespace-cdn.com/content/v1/60f0902f72b8bf543ab817ff/1685958995490-416PQ3AYPE04CXO0OOJ4/Eugene-Theron_ISO100_Landscape-Photography_Filters.jpg",
            "image_description": "Image 1",
            "user": {
              "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
              "name": "Jane Doe",
              "image_url": "https://example.com/jane-doe-photo.jpg",
              // "email": "JaneDoe@email.com",
              // "amount_follower": 350,
              // "is_private": true,
              // "bio": "Just another explorer of life.",
              // "amount_followed": 300,
              // "amount_posts": 85,
              // "created_at": "2021-10-30T14:20:10.000Z",
              // "updated_at": "2024-05-01T10:00:00.000Z"
            },
            "catId": "1",
            "comments": [],
            "amountClicks": 0,
            "amountComments": 0,
            "imageUrls": [
              "https://images.squarespace-cdn.com/content/v1/60f0902f72b8bf543ab817ff/1685958995490-416PQ3AYPE04CXO0OOJ4/Eugene-Theron_ISO100_Landscape-Photography_Filters.jpg"
            ],
            "postType": "image",
            "createdAt": "2024-04-29T11:00:00.000Z",
            "likeCount": 0,
            "viewCount": 0
          },
          {
            "id": "1",
            "active": true,
            "title": "Post 2",
            "content":
                "https://images.csmonitor.com/csm/2012/11/1129-Greenland-ice-sheet.jpg?alias=standard_900x600",
            "image_description": "Image 1",
            "user": {
              "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
              "name": "Jane Doe",
              "image_url": "https://example.com/jane-doe-photo.jpg",
              "email": "JaneDoe@email.com",
              "amount_follower": 350,
              "is_private": true,
              "bio": "Just another explorer of life.",
              "amount_followed": 300,
              "amount_posts": 85,
              "created_at": "2021-10-30T14:20:10.000Z",
              "updated_at": "2024-05-01T10:00:00.000Z"
            },
            "catId": "1",
            "comments": [],
            "amountClicks": 0,
            "amountComments": 0,
            "imageUrls": [
              "https://images.csmonitor.com/csm/2012/11/1129-Greenland-ice-sheet.jpg?alias=standard_900x600"
            ],
            "postType": "image",
            "createdAt": "2024-04-29T11:00:00.000Z",
            "likeCount": 0,
            "viewCount": 0
          },
          {
            "id": "1",
            "active": true,
            "title": "Post 2",
            "content":
                "https://images.csmonitor.com/csm/2012/11/1129-Greenland-ice-sheet.jpg?alias=standard_900x600",
            "image_description": "Image 1",
            "user": {
              "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
              "name": "Jane Doe",
              "image_url": "https://example.com/jane-doe-photo.jpg",
              "email": "JaneDoe@email.com",
              "amount_follower": 350,
              "is_private": true,
              "bio": "Just another explorer of life.",
              "amount_followed": 300,
              "amount_posts": 85,
              "created_at": "2021-10-30T14:20:10.000Z",
              "updated_at": "2024-05-01T10:00:00.000Z"
            },
            "catId": "1",
            "comments": [],
            "amountClicks": 0,
            "amountComments": 0,
            "imageUrls": [
              "https://images.csmonitor.com/csm/2012/11/1129-Greenland-ice-sheet.jpg?alias=standard_900x600"
            ],
            "postType": "image",
            "createdAt": "2024-04-29T11:00:00.000Z",
            "likeCount": 0,
            "viewCount": 0
          }
        ]
      },
      {
        "id": "a48b59b2-fa1d-4c68-8816-85f748d81315",
        "name": "Alex Smith",
        "image_url":
            "https://whyy.org/wp-content/uploads/2022/08/2022-08-15-e-lee-alex-smith-philadelphia-black-gay-comic-book-768x530.jpeg",
        "email": "AlexSmith@email.com",
        "amount_follower": 500,
        "is_private": false,
        "bio": "Life is about making an impact, not an income.",
        "amount_followed": 430,
        "amount_posts": 120,
        "created_at": "2022-05-20T19:34:20.000Z",
        "updated_at": "2024-04-29T18:15:00.000Z",
        "posts": [
          {
            "id": "1",
            "active": true,
            "title": "Post 1",
            "content":
                "https://images.csmonitor.com/csm/2012/11/1129-Greenland-ice-sheet.jpg?alias=standard_900x600",
            "image_description": "Image 1",
            "user": {
              "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
              "name": "Jane Doe",
              "image_url": "https://example.com/jane-doe-photo.jpg",
              "email": "JaneDoe@email.com",
              "amount_follower": 350,
              "is_private": true,
              "bio": "Just another explorer of life.",
              "amount_followed": 300,
              "amount_posts": 85,
              "created_at": "2021-10-30T14:20:10.000Z",
              "updated_at": "2024-05-01T10:00:00.000Z"
            },
            "catId": "1",
            "comments": [],
            "amountClicks": 0,
            "amountComments": 0,
            "imageUrls": [
              "https://images.csmonitor.com/csm/2012/11/1129-Greenland-ice-sheet.jpg?alias=standard_900x600"
            ],
            "postType": "image",
            "createdAt": "2024-04-29T11:00:00.000Z",
            "likeCount": 0,
            "viewCount": 0
          },
          {
            "id": "1",
            "active": true,
            "title": "Post 2",
            "content":
                "https://images.squarespace-cdn.com/content/v1/60f0902f72b8bf543ab817ff/1685958995490-416PQ3AYPE04CXO0OOJ4/Eugene-Theron_ISO100_Landscape-Photography_Filters.jpg",
            "image_description": "Image 1",
            "user": {
              "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
              "name": "Jane Doe",
              "image_url": "https://example.com/jane-doe-photo.jpg",
              "email": "JaneDoe@email.com",
              "amount_follower": 350,
              "is_private": true,
              "bio": "Just another explorer of life.",
              "amount_followed": 300,
              "amount_posts": 85,
              "created_at": "2021-10-30T14:20:10.000Z",
              "updated_at": "2024-05-01T10:00:00.000Z"
            },
            "catId": "1",
            "comments": [],
            "amountClicks": 0,
            "amountComments": 0,
            "imageUrls": [
              "https://images.squarespace-cdn.com/content/v1/60f0902f72b8bf543ab817ff/1685958995490-416PQ3AYPE04CXO0OOJ4/Eugene-Theron_ISO100_Landscape-Photography_Filters.jpg"
            ],
            "postType": "image",
            "createdAt": "2024-04-29T11:00:00.000Z",
            "likeCount": 0,
            "viewCount": 0
          },
          {
            "id": "1",
            "active": true,
            "title": "Post 2",
            "content":
                "https://www.originaltravel.co.uk/travel-blog/showphoto/3521/0",
            "image_description": "Image 1",
            "user": {
              "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
              "name": "Jane Doe",
              "image_url": "https://example.com/jane-doe-photo.jpg",
              "email": "JaneDoe@email.com",
              "amount_follower": 350,
              "is_private": true,
              "bio": "Just another explorer of life.",
              "amount_followed": 300,
              "amount_posts": 85,
              "created_at": "2021-10-30T14:20:10.000Z",
              "updated_at": "2024-05-01T10:00:00.000Z"
            },
            "catId": "1",
            "comments": [],
            "amountClicks": 0,
            "amountComments": 0,
            "imageUrls": [
              "https://www.originaltravel.co.uk/travel-blog/showphoto/3521/0"
            ],
            "postType": "image",
            "createdAt": "2024-04-29T11:00:00.000Z",
            "likeCount": 0,
            "viewCount": 0
          },
          {
            "id": "1",
            "active": true,
            "title": "Post 3",
            "content":
                "https://i0.wp.com/silent-water.de/wp-content/uploads/2022/09/Wreck2-6UsBuplg.jpg?w=1235&ssl=1",
            "image_description": "Image 1",
            "user": {
              "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
              "name": "Jane Doe",
              "image_url": "https://example.com/jane-doe-photo.jpg",
              "email": "JaneDoe@email.com",
              "amount_follower": 350,
              "is_private": true,
              "bio": "Just another explorer of life.",
              "amount_followed": 300,
              "amount_posts": 85,
              "created_at": "2021-10-30T14:20:10.000Z",
              "updated_at": "2024-05-01T10:00:00.000Z"
            },
            "catId": "1",
            "comments": [],
            "amountClicks": 0,
            "amountComments": 0,
            "imageUrls": [
              "https://i0.wp.com/silent-water.de/wp-content/uploads/2022/09/Wreck2-6UsBuplg.jpg?w=1235&ssl=1"
            ],
            "postType": "image",
            "createdAt": "2024-04-29T11:00:00.000Z",
            "likeCount": 0,
            "viewCount": 0
          },
          {
            "id": "1",
            "active": true,
            "title": "Post 3",
            "content":
                "https://img.freepik.com/fotos-kostenlos/sonnige-tropische-landschaft_23-2150466874.jpg?size=626&ext=jpg",
            "image_description": "Image 1",
            "user": {
              "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
              "name": "Jane Doe",
              "image_url": "https://example.com/jane-doe-photo.jpg",
              "email": "JaneDoe@email.com",
              "amount_follower": 350,
              "is_private": true,
              "bio": "Just another explorer of life.",
              "amount_followed": 300,
              "amount_posts": 85,
              "created_at": "2021-10-30T14:20:10.000Z",
              "updated_at": "2024-05-01T10:00:00.000Z"
            },
            "catId": "1",
            "comments": [],
            "amountClicks": 0,
            "amountComments": 0,
            "imageUrls": [
              "https://img.freepik.com/fotos-kostenlos/sonnige-tropische-landschaft_23-2150466874.jpg?size=626&ext=jpg"
            ],
            "postType": "image",
            "createdAt": "2024-04-29T11:00:00.000Z",
            "likeCount": 0,
            "viewCount": 0
          },
          {
            "id": "1",
            "active": true,
            "title": "Mediocre life is still life",
            "content":
                "Mediocricy is a state of mind, not a state of being. I am a mediocre person, follow me for more mediocre stuff. My channels are @mediocrechannels and all my posts are mediocre? Whatever lets get drunk and have fun.",
            "image_description": null,
            "user": {
              "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
              "name": "Jane Doe",
              "image_url": "https://example.com/jane-doe-photo.jpg",
              "email": "JaneDoe@email.com",
              "amount_follower": 350,
              "is_private": true,
              "bio": "Just another explorer of life.",
              "amount_followed": 300,
              "amount_posts": 85,
              "created_at": "2021-10-30T14:20:10.000Z",
              "updated_at": "2024-05-01T10:00:00.000Z"
            },
            "catId": "1",
            "comments": [],
            "amountClicks": 0,
            "amountComments": 0,
            "imageUrls": [],
            "postType": "text",
            "createdAt": "2024-04-29T11:00:00.000Z",
            "likeCount": 0,
            "viewCount": 0
          },
          {
            "id": "1",
            "active": true,
            "title": "Thoughts on Trampeling",
            "content": "Trampeling opens you up to embrace the pain.",
            "image_description": null,
            "user": {
              "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
              "name": "Jane Doe",
              "image_url": "https://example.com/jane-doe-photo.jpg",
              "email": "JaneDoe@email.com",
              "amount_follower": 350,
              "is_private": true,
              "bio": "Just another explorer of life.",
              "amount_followed": 300,
              "amount_posts": 85,
              "created_at": "2021-10-30T14:20:10.000Z",
              "updated_at": "2024-05-01T10:00:00.000Z"
            },
            "catId": "1",
            "comments": [],
            "amountClicks": 0,
            "amountComments": 0,
            "imageUrls": [],
            "postType": "text",
            "createdAt": "2024-04-29T11:00:00.000Z",
            "likeCount": 0,
            "viewCount": 0
          },
          {
            "id": "2",
            "active": true,
            "title": "Reflections on Solitude",
            "content":
                "Solitude can be a powerful teacher. It helps you discover inner peace and clarity. It can also help you connect with your inner self.",
            "image_description": null,
            "user": {
              "id": "a79b21d5-6c3a-48a6-a39e-45e8b24b1348",
              "name": "John Smith",
              "image_url": "https://example.com/john-smith-photo.jpg",
              "email": "JohnSmith@email.com",
              "amount_follower": 500,
              "is_private": false,
              "bio": "Lover of quiet moments.",
              "amount_followed": 150,
              "amount_posts": 120,
              "created_at": "2022-01-15T09:30:00.000Z",
              "updated_at": "2024-05-01T11:00:00.000Z"
            },
            "catId": "2",
            "comments": [],
            "amountClicks": 0,
            "amountComments": 0,
            "imageUrls": [],
            "postType": "text",
            "createdAt": "2024-04-30T12:00:00.000Z",
            "likeCount": 0,
            "viewCount": 0
          }
        ]
      },
    ]
  }
};
