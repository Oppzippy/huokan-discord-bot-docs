# Huokan Advertiser Tools Bank Deposit

This module will provide the user with a (not human readable) string containing details of the transaction upon depositing money into a guild bank.

## Parsing
The addon's output is a compressed (deflate) and base 64 encoded JSON object. So, to parse the string, perform the following sequence of actions:

1. Base 64 decode
2. Decompress using Deflate
3. Parse JSON

The output will follow this schema. Note that it is intended to be human readable and is not valid json or typescript.
```
{
	bankGuild: {
		name: string
		realm: string
	}
	latestDeposit: {
		player: {
			name: string
			realm: string
		}
		copper: integer
		timestamp: ISO 8601 timestamp
	}
	previousDeposits: [
		{
			player: {
				name: string
				realm: string
			}
			copper: integer
		}
	]
}
```

The meaning of the data is as follows:
- bankGuild: The guild that the gold was deposited into.
- latestDeposit: The deposit made by the player which triggered the addon.
- previousDeposits: Deposits from the guild bank's money log ordered newest to oldest.

Here is an example:
```json
{
	"bankGuild": {
		"name": "Oppy Bank",
		"realm": "Thrall"
	},
	"latestDeposit": {
		"player": {
			"name": "Oppzippy",
			"realm": "Thrall"
		},
		"copper": 10000,
		"timestamp": "2020-11-30T05:47:04Z"
	},
	"previousDeposits": [
		{
			"copper": 10000,
			"player": {
				"name": "Oppzippy",
				"realm": "Thrall"
			}
		},
		{
			"copper": 10000,
			"player": {
				"name": "Oppzippy",
				"realm": "Thrall"
			}
		}
	]
}
```
