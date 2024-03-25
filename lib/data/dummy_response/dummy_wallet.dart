import 'package:peer_app/data/dummy_response/dummy_user_by_id.dart';

const dummyWallet = {
  "wallet": {
    "user": dummyUserById,
    "totalCredits": 8970,
    "creditsCollectedToday": 924,
    "percentageOfTotalTokens": 0.03
  },
  "creditsSource": {
    "comments": 2890,
    "views": 1797,
    "shares": 857,
    "likes": 69
  },
  "accountDevelopment": {
    "values": [0.0214, 0.0230, 0.0188, 0.0195, 0.0225],
    "timestamps": [
      "2023-02-25T00:00:00Z",
      "2023-03-01T00:00:00Z",
      "2023-03-05T00:00:00Z",
      "2023-03-10T00:00:00Z",
      "2023-03-15T00:00:00Z"
    ]
  },
  "currencyExchange": {
    "creditValue": 0.0215194798,
    "totalCreditsInSystem": 381805
  }
};
