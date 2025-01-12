const inventoryDataMock = '''{
	"data": [{
			"inventoryId": [18, 78, 75, 4, 144, 0],
			"itemModel": {
				"itemID": 1,
				"itemName": "Mature Cheddar Cheese 400G",
				"productDescription": {
					"details": "Mature Cheddar cheese.100% British milk.\\n Hand selected cheese for a strong and full flavour",
					"size": 400,
					"unitSize": "G"
				},
				"allergyInformation": "Contains milk"
			},
			"exp": "2023-04-25",
			"mfg": "2023-04-09",
			"price": 6.02,
			"priceUnit": "GBP"
		},
		{
			"inventoryId": [78, 4, 76, 4, 144, 0],
			"itemModel": {
				"itemID": 0,
				"itemName": "Extra Mature Cheddar Cheese 400G",
				"productDescription": {
					"details": "Extra mature Cheddar cheese.100% British milk.\\n Hand selected cheese for a strong and full flavour",
					"size": 400,
					"unitSize": "G"
				},
				"allergyInformation": "Contains milk"
			},
			"exp": "2023-04-20",
			"mfg": "2023-04-10",
			"price": 5.02,
			"priceUnit": "GBP"
		},
      {
    "inventoryId": [253, 71, 75, 4, 144, 0],
    "itemModel": {
      "itemID": 3,
      "itemName": "Philadelphia Original Soft Cheese 280G",
      "productDescription": {
        "details": "Full fat soft cheese.\\nFresh and creamy taste\\nMade with Simply Good Ingredients Milk, Cream, Pinch of Salt\\nMade with pasteurised milk\\nNo Preservatives\\nSuitable for Vegetarians,",
        "size": 280,
        "unitSize": "G"
      },
      "allergyInformation": "Contains milk"
    },
    "exp": "2023-04-30",
    "mfg": "2023-04-11",
    "price": 3.02,
    "priceUnit": "GBP"
  }
	]
}''';

// ,
//   {
//     "inventoryId": [78, 4, 76, 4, 144, 0],
//     "itemModel": {
//       "itemID": 0,
//       "itemName": "Extra Mature Cheddar Cheese 400G",
//       "productDescription": {
//         "details":
//             "Extra mature Cheddar cheese.100% British milk.\\n Hand selected cheese for a strong and full flavour",
//         "size": 400,
//         "unitsize": "G"
//       },
//       "allergyInformation": "Contains milk",
//     },
//     "exp": "20/04/2023",
//     "mfg": "10/04/2023",
//     "price": "5.02",
//     "priceUnit": "GBP"
//   },
//   {
//     "inventoryId": [29, 222, 75, 4, 144, 0],
//     "itemModel": {
//       "itemID": 1,
//       "itemName": "Mature Cheddar Cheese 400G",
//       "productDescription": {
//         "details":
//             "Mature Cheddar cheese.100% British milk.\\n Hand selected cheese for a strong and full flavour",
//         "size": 400,
//         "unitsize": "G"
//       },
//       "allergyInformation": "Contains milk"
//     },
//     "exp": "22/04/2023",
//     "mfg": "8/04/2023",
//     "price": "4.02",
//     "priceUnit": "GBP"
//   },
  // {
  //   "inventoryId": [253, 71, 75, 4, 144, 0],
  //   "itemModel": {
  //     "itemID": 3,
  //     "itemName": "Philadelphia Original Soft Cheese 280G",
  //     "productDescription": {
  //       "details": """Full fat soft cheese.
  //         \\nFresh and creamy taste
  //         \\nMade with Simply Good Ingredients Milk, Cream, Pinch of Salt
  //         \\nMade with pasteurised milk
  //         \\nNo Preservatives
  //         \\nSuitable for Vegetarians,""",
  //       "size": 280,
  //       "unitsize": "G"
  //     },
  //     "allergyInformation": "Contains milk"
  //   },
  //   "exp": "30/04/2023",
  //   "mfg": "11/04/2023",
  //   "price": "3.02",
  //   "priceUnit": "GBP"
  // }

const itemDataMock = [
  {
    "itemID": 0,
    "itemName": "Extra Mature Cheddar Cheese 400G",
    "productDescription": {
      "details":
          "Extra mature Cheddar cheese.100% British milk.\n Hand selected cheese for a strong and full flavour",
      "size": 400,
      "unitsize": "G"
    },
    "allergyInformation": "Contains milk",
  },
  {
    "itemID": 1,
    "itemName": "Mature Cheddar Cheese 400G",
    "productDescription": {
      "details":
          "Mature Cheddar cheese.100% British milk.\n Hand selected cheese for a strong and full flavour",
      "size": 400,
      "unitsize": "G"
    },
    "allergyInformation": "Contains milk"
  },
  {
    "itemID": 2,
    "itemName": "Red Leicester Cheese 200G",
    "productDescription": {
      "details":
          "Red Leicester cheese.100% British milk.\n Hand selected cheese for a smooth, nutty taste,",
      "size": 220,
      "unitsize": "G"
    },
    "allergyInformation": "Contains milk"
  },
  {
    "itemID": 3,
    "itemName": "Philadelphia Original Soft Cheese 280G",
    "productDescription": {
      "details": """Full fat soft cheese.
          \nFresh and creamy taste
          \nMade with Simply Good Ingredients Milk, Cream, Pinch of Salt
          \nMade with pasteurised milk
          \nNo Preservatives
          \nSuitable for Vegetarians,""",
      "size": 280,
      "unitsize": "G"
    },
    "allergyInformation": "Contains milk"
  },
];
