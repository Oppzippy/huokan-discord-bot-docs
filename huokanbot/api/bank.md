# Bank Deposit API

## GET /v1/bank/deposit

Params:
- id: Filter by specific deposit id.
- after: Filter all deposits after (inclusive) the specified ISO 8601 date. **NOT YET IMPLEMENTED**
- before: Filter all deposits before (exclusive) the specified ISO 8601 date. **NOT YET IMPLEMENTED**
- validity: Filter all deposits by validity. **NOT YET IMPLEMENTED**

Returns data following this schema:
```ts
{
	bankDeposits: {
		id: string;
		bankGuild: {
			name: string;
			realm: string;
		}
		player: {
			name: string;
			realm: string;
		}
		copper: number; // Amount of copper deposited
		depositTimestamp: Date; // Represented as ISO 8601
		validity: "valid" | "invalid" | "unknown";
		screenshotUrl?: string; // Optional screenshot of the deposit log
	}[];
}
```

Example usage:

`GET /v1/bank/deposit?id=asdf`

Returns

```json
{
    "bankDeposits": [
        {
            "id": "asdf",
            "bankGuild": {
                "name": "Example Guild",
                "realm": "example"
            },
            "player": {
                "name": "Oppybank",
                "realm": "example"
            },
            "copper": 10000,
            "depositTimestamp": "2020-11-09T01:00:00Z",
            "validity": "unknown"
        }
    ]
}
```

## POST /v1/bank/deposit

The body should contain a string from Huokan Advertiser Tools' bank deposit module.

Example usage:

`POST /v1/bank/deposit`

Body
```json
{
	"depositString": "zZSxCsIwEIZfRW5OIUlbCxlFcHTppDhEDRhM2pC2Qi19d6/gIOIiB9Zsae770jt+MsBRV9dNZ90Z1ACV9gYUbEPoFys8AAbRaOfxW3mJ2jkYGYRobrbumrUJdWPbBtR+gFMdgomgBMeFNU730/ZVebeo/WAc2b/gKQ1f5nM3T/h3au80PKPh8w5ezpo6Ii4kcfZEvCDyovh9cA8MnG5N0z6fwAn7RsDek9dajzbtAxZJLnkiRJLykucqKxTPdnjn4w=="
}
```

The response will be identical to `/v1/bank/deposit/{id}`.

## GET /v1/bank/deposit/{id}

This endpoint may be used over `GET /v1/bank/deposit?id={id}` for convenience when id is the only filter being used. The response will be the first element of `GET /v1/bank/deposit`'s bankDeposits array or status code 404 if the bank deposit does not exist.

