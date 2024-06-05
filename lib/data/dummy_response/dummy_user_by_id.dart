// import 'package:peer_app/data/dummy_response/dummy_feeds.dart';
import 'package:peer_app/data/dummy_response/dummy_post_comments.dart';
// import 'package:peer_app/data/new_dummy_response/new_dummy_feed_data.dart';

final dummyUserById = {
  "data": [
    {
      "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
      "name": "Jane Doe",
      "imageUrl":
          "https://storage.googleapis.com/wnr-ai/uploads/chat/ai/avatar/c3de9b8b4ea5836aaff8e88b362d5ce4/v512_c3de9b8b4ea5836aaff8e88b362d5ce4.png",
      "email": "JaneDoe@email.com",
      "amount_follower": 350,
      "is_private": true,
      "bio": "Just another explorer of life.",
      "amount_followed": 300,
      "amount_posts": 85,
      "created_at": "2021-10-30T14:20:10.000Z",
      "updatedAt": "2024-05-01T10:00:00.000Z",
      "posts": [
        // ...dummyFeedData,
        //     {
        //       "runtimeType": "image",
        //       "aspectRatio": "Landscape",
        //       "id": "4",
        //       "active": true,
        //       "caption": "Post 4",
        //       "content":
        //           "https://i.guim.co.uk/img/media/2ca456112697f2b069935a554b806b535bda68ef/0_202_5175_3103/master/5175.jpg?width=1200&quality=85&auto=format&fit=max&s=81e61df3d7e8d3148cb9762a74d51bb7",
        //       "description": "Image 4",
        //       "creator": {
        //         "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
        //         "name": "Jane Doe",
        //         "imageUrl": "https://example.com/jane-doe-photo.jpg"
        //       },
        //       "catId": "1",
        //       "comments": [],
        //       "amountClicks": 0,
        //       "amountComments": 0,
        //       "imageUrls": [
        //         "https://i0.wp.com/silent-water.de/wp-content/uploads/2022/09/Wreck2-6UsBuplg.jpg?w=1235&ssl=1"
        //       ],
        //       "postType": "image",
        //       "createdAt": "2024-04-29T11:00:00.000Z",
        //       "likeCount": 0,
        //       "viewCount": 0
        //     },
        //     {
        //       "runtimeType": "image",
        //       "aspectRatio": "Square",
        //       "id": "5",
        //       "active": true,
        //       "caption": "Post 5",
        //       "content":
        //           "https://img.freepik.com/fotos-kostenlos/sonnige-tropische-landschaft_23-2150466874.jpg?size=626&ext=jpg",
        //       "description": "Image 5",
        //       "creator": {
        //         "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
        //         "name": "Jane Doe",
        //         "imageUrl": "https://example.com/jane-doe-photo.jpg"
        //       },
        //       "catId": "1",
        //       "comments": [],
        //       "amountClicks": 0,
        //       "amountComments": 0,
        //       "imageUrls": [
        //         "https://img.freepik.com/fotos-kostenlos/sonnige-tropische-landschaft_23-2150466874.jpg?size=626&ext=jpg"
        //       ],
        //       "postType": "image",
        //       "createdAt": "2024-04-29T11:00:00.000Z",
        //       "likeCount": 0,
        //       "viewCount": 0
        //     },
        //     {
        //       "runtimeType": "text",
        //       "id": "6",
        //       "active": true,
        //       "caption": "Mediocre life is still life",
        //       "content":
        //           "Mediocricy is a state of mind, not a state of being. I am a mediocre person, follow me for more mediocre stuff. My channels are @mediocrechannels and all my posts are mediocre? Whatever lets get drunk and have fun.",
        //       "description": null,
        //       "creator": {
        //         "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
        //         "name": "Jane Doe",
        //         "imageUrl": "https://example.com/jane-doe-photo.jpg"
        //       },
        //       "catId": "1",
        //       "comments": [],
        //       "amountClicks": 0,
        //       "amountComments": 0,
        //       "imageUrls": [],
        //       "postType": "text",
        //       "createdAt": "2024-04-29T11:00:00.000Z",
        //       "likeCount": 0,
        //       "viewCount": 0
        //     },
        //     {
        //       "runtimeType": "text",
        //       "id": "7",
        //       "active": true,
        //       "caption": "Thoughts on Traveling",
        //       "content":
        //           "Traveling opens your mind to new cultures, experiences, and perspectives. It allows you to step out of your comfort zone and see the world from a different angle. Whether you travel for adventure, relaxation, or learning, each journey adds to your personal growth.",
        //       "description": null,
        //       "creator": {
        //         "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
        //         "name": "Jane Doe",
        //         "imageUrl": "https://example.com/jane-doe-photo.jpg"
        //       },
        //       "catId": "1",
        //       "comments": [],
        //       "amountClicks": 0,
        //       "amountComments": 0,
        //       "imageUrls": [],
        //       "postType": "text",
        //       "createdAt": "2024-04-29T11:00:00.000Z",
        //       "likeCount": 0,
        //       "viewCount": 0
        //     }
      ]
    },
    {
      "id": "a48b59b2-fa1d-4c68-8816-85f748d81315",
      "name": "Alex Smith",
      "imageUrl":
          "https://whyy.org/wp-content/uploads/2022/08/2022-08-15-e-lee-alex-smith-philadelphia-black-gay-comic-book-768x530.jpeg",
      "email": "AlexSmith@email.com",
      "amount_follower": 500,
      "is_private": false,
      "bio": "Life is about making an impact, not an income.",
      "amount_followed": 430,
      "amount_posts": 120,
      "created_at": "2022-05-20T19:34:20.000Z",
      "updatedAt": "2024-04-29T18:15:00.000Z",
      "posts": [
        // ...dummyFeedData,
        //     {
        //       "runtimeType": "image",
        //       "aspectRatio": "Portrait",
        //       "id": "1",
        //       "active": true,
        //       "caption": "Post 1",
        //       "content":
        //           "https://images.csmonitor.com/csm/2012/11/1129-Greenland-ice-sheet.jpg?alias=standard_900x600",
        //       "description": "Image 1",
        //       "creator": {
        //         "id": "a48b59b2-fa1d-4c68-8816-85f748d81315",
        //         "name": "Alex Smith",
        //         "imageUrl":
        //             "https://whyy.org/wp-content/uploads/2022/08/2022-08-15-e-lee-alex-smith-philadelphia-black-gay-comic-book-768x530.jpeg"
        //       },
        //       "catId": "2",
        //       "comments": comment_alex_post_1,
        //       "amountClicks": 0,
        //       "amountComments": 0,
        //       "imageUrls": [
        //         "https://images.csmonitor.com/csm/2012/11/1129-Greenland-ice-sheet.jpg?alias=standard_900x600"
        //       ],
        //       "postType": "image",
        //       "createdAt": "2024-04-29T11:00:00.000Z",
        //       "likeCount": 0,
        //       "viewCount": 0
        //     },
        //     {
        //       "runtimeType": "image",
        //       "aspectRatio": "Landscape",
        //       "id": "2",
        //       "active": true,
        //       "caption": "Post 2",
        //       "content":
        //           "https://images.squarespace-cdn.com/content/v1/60f0902f72b8bf543ab817ff/1685958995490-416PQ3AYPE04CXO0OOJ4/Eugene-Theron_ISO100_Landscape-Photography_Filters.jpg",
        //       "description": "Image 2",
        //       "creator": {
        //         "id": "a48b59b2-fa1d-4c68-8816-85f748d81315",
        //         "name": "Alex Smith",
        //         "imageUrl":
        //             "https://whyy.org/wp-content/uploads/2022/08/2022-08-15-e-lee-alex-smith-philadelphia-black-gay-comic-book-768x530.jpeg"
        //       },
        //       "catId": "2",
        //       "comments": [],
        //       "amountClicks": 0,
        //       "amountComments": 0,
        //       "imageUrls": [
        //         "https://images.squarespace-cdn.com/content/v1/60f0902f72b8bf543ab817ff/1685958995490-416PQ3AYPE04CXO0OOJ4/Eugene-Theron_ISO100_Landscape-Photography_Filters.jpg"
        //       ],
        //       "postType": "image",
        //       "createdAt": "2024-04-29T11:00:00.000Z",
        //       "likeCount": 0,
        //       "viewCount": 0
        //     },
        //     {
        //       "runtimeType": "image",
        //       "aspectRatio": "Square",
        //       "id": "3",
        //       "active": true,
        //       "caption": "Post 3",
        //       "content":
        //           "https://www.originaltravel.co.uk/travel-blog/showphoto/3521/0",
        //       "description": "Image 3",
        //       "creator": {
        //         "id": "a48b59b2-fa1d-4c68-8816-85f748d81315",
        //         "name": "Alex Smith",
        //         "imageUrl":
        //             "https://whyy.org/wp-content/uploads/2022/08/2022-08-15-e-lee-alex-smith-philadelphia-black-gay-comic-book-768x530.jpeg"
        //       },
        //       "catId": "2",
        //       "comments": [],
        //       "amountClicks": 0,
        //       "amountComments": 0,
        //       "imageUrls": [
        //         "https://www.originaltravel.co.uk/travel-blog/showphoto/3521/0"
        //       ],
        //       "postType": "image",
        //       "createdAt": "2024-04-29T11:00:00.000Z",
        //       "likeCount": 0,
        //       "viewCount": 0
        //     },
        //     {
        //       "runtimeType": "text",
        //       "id": "4",
        //       "active": true,
        //       "caption": "Reflections on Solitude",
        //       "content":
        //           "Solitude can be a powerful teacher. It helps you discover inner peace and clarity. It can also help you connect with your inner self.",
        //       "description": null,
        //       "creator": {
        //         "id": "a48b59b2-fa1d-4c68-8816-85f748d81315",
        //         "name": "Alex Smith",
        //         "imageUrl":
        //             "https://whyy.org/wp-content/uploads/2022/08/2022-08-15-e-lee-alex-smith-philadelphia-black-gay-comic-book-768x530.jpeg"
        //       },
        //       "catId": "2",
        //       "comments": comment_alex_post_1,
        //       "amountClicks": 0,
        //       "amountComments": 0,
        //       "imageUrls": [],
        //       "postType": "text",
        //       "createdAt": "2024-04-29T11:00:00.000Z",
        //       "likeCount": 0,
        //       "viewCount": 0
        //     },
        //     {
        //       "runtimeType": "text",
        //       "id": "8",
        //       "active": true,
        //       "caption": "The Joy of Reading",
        //       "content":
        //           "Reading opens up new worlds and perspectives. It allows you to explore different cultures and ideas from the comfort of your home. Whether it's fiction or non-fiction, every book has the potential to teach you something new and exciting.",
        //       "description": null,
        //       "creator": {
        //         "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
        //         "name": "Jane Doe",
        //         "imageUrl": "https://example.com/jane-doe-photo.jpg"
        //       },
        //       "catId": "1",
        //       "comments": [],
        //       "amountClicks": 0,
        //       "amountComments": 0,
        //       "imageUrls": [],
        //       "postType": "text",
        //       "createdAt": "2024-04-30T09:00:00.000Z",
        //       "likeCount": 0,
        //       "viewCount": 0
        //     },
        //     {
        //       "runtimeType": "text",
        //       "id": "9",
        //       "active": true,
        //       "caption": "A Day in the Life",
        //       "content":
        //           "A typical day in my life involves waking up early, going for a run, and spending the day working on various projects. In the evening, I enjoy cooking a nice meal and relaxing with a good book or a movie. Every day brings its own unique challenges and joys.",
        //       "description": null,
        //       "creator": {
        //         "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
        //         "name": "Jane Doe",
        //         "imageUrl": "https://example.com/jane-doe-photo.jpg"
        //       },
        //       "catId": "1",
        //       "comments": [],
        //       "amountClicks": 0,
        //       "amountComments": 0,
        //       "imageUrls": [],
        //       "postType": "text",
        //       "createdAt": "2024-04-30T10:00:00.000Z",
        //       "likeCount": 0,
        //       "viewCount": 0
        //     },
        //     {
        //       "runtimeType": "image",
        //       "aspectRatio": "Portrait",
        //       "id": "10",
        //       "active": true,
        //       "caption": "Beautiful Landscape",
        //       "content":
        //           "https://img.freepik.com/fotos-kostenlos/sonnige-tropische-landschaft_23-2150466874.jpg?size=626&ext=jpg",
        //       "description": "A beautiful landscape of a Greenland ice sheet.",
        //       "creator": {
        //         "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
        //         "name": "Jane Doe",
        //         "imageUrl": "https://example.com/jane-doe-photo.jpg"
        //       },
        //       "catId": "1",
        //       "comments": [],
        //       "amountClicks": 0,
        //       "amountComments": 0,
        //       "imageUrls": [
        //         "https://img.freepik.com/fotos-kostenlos/sonnige-tropische-landschaft_23-2150466874.jpg?size=626&ext=jpg"
        //       ],
        //       "postType": "image",
        //       "createdAt": "2024-04-30T11:00:00.000Z",
        //       "likeCount": 0,
        //       "viewCount": 0
        //     },
        //     {
        //       "runtimeType": "image",
        //       "aspectRatio": "Landscape",
        //       "id": "11",
        //       "active": true,
        //       "caption": "Silent Water",
        //       "content":
        //           "https://i0.wp.com/silent-water.de/wp-content/uploads/2022/09/Wreck2-6UsBuplg.jpg?w=1235&ssl=1",
        //       "description": "A serene underwater wreck.",
        //       "creator": {
        //         "id": "b58c10e3-fe2c-43e0-958f-2f2ea20f08f2",
        //         "name": "Jane Doe",
        //         "imageUrl": "https://example.com/jane-doe-photo.jpg"
        //       },
        //       "catId": "1",
        //       "comments": [],
        //       "amountClicks": 0,
        //       "amountComments": 0,
        //       "imageUrls": [
        //         "https://i0.wp.com/silent-water.de/wp-content/uploads/2022/09/Wreck2-6UsBuplg.jpg?w=1235&ssl=1"
        //       ],
        //       "postType": "image",
        //       "createdAt": "2024-04-30T12:00:00.000Z",
        //       "likeCount": 0,
        //       "viewCount": 0
        //     }
      ]
    }
  ]
};
