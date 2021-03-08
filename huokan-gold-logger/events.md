# Huokan Gold Logger Events

**Money is stored as copper.**

## Structure
All events will have the following fields at a minimum.
```ts
{
	character: {
		name: string;
		realm: string;
	};
	prevMoney: number;
	newMoney: number;
	timestamp: timestamp; // ISO 8601
}
```

## Events

- [AUCTION_HOUSE_BID](#AUCTION_HOUSE_BID)
- [AUCTION_HOUSE_COMMODITY_BUY](#AUCTION_HOUSE_COMMODITY_BUY)
- [AUCTION_HOUSE_DEPOSIT](#AUCTION_HOUSE_DEPOSIT)
- [AUCTION_HOUSE_SELL](#AUCTION_HOUSE_SELL)
- [BMAH_BID](#BMAH_BID)
- [FLIGHT_PATH](#FLIGHT_PATH)
- [GUILD_BANK_DEPOSIT](#GUILD_BANK_DEPOSIT)
- [GUILD_BANK_WITHDRAW](#GUILD_BANK_WITHDRAW)
- [LFG_COMPLETION_REWARD](#LFG_COMPLETION_REWARD)
- [LOOT](#LOOT)
- [MAIL_IN](#MAIL_IN)
- [MAIL_OUT](#MAIL_OUT)
- [QUEST_REWARD](#QUEST_REWARD)
- [REPAIR](#REPAIR)
- [TRADE](#TRADE)
- [UNKNOWN](#UNKNOWN)
- [VENDOR_BUY](#VENDOR_BUY)
- [VENDOR_BUYBACK](#VENDOR_BUYBACK)
- [VENDOR_SELL](#VENDOR_SELL)

### AUCTION_HOUSE_BID
Occurs when bidding or buying an item on the auction house that isn't a commodity.
```ts
{
	item: itemLink;
}
```
### AUCTION_HOUSE_COMMODITY_BUY
Occurs when buying a commodity on the auction house.
```ts
{
	itemName: string;
	itemId: number;
	quantity: number;
}
```

### AUCTION_HOUSE_DEPOSIT
Occurs when paying the deposit for posting an item on the auction house.

### AUCTION_HOUSE_SELL
Occurs when receiving gold from the auction hosue in the mail.
```ts
{
	sender: string;
	itemName: string;
	buyerName: string | undefined; // Unreliable so don't expect it to be there
}
```

### BMAH_BID
Occurs when bidding on an item on the black market auction house.

### FLIGHT_PATH
Occurs when paying a fee to use a flight path.

### GUILD_BANK_DEPOSIT
Occurs when depositing gold into the guild bank.
```ts
{
	guild: {
		name: string;
		realm: string;
	};
}
```

### GUILD_BANK_WITHDRAW
Occurs when withdrawing gold from the guild bank.
```ts
{
	guild: {
		name: string;
		realm: string;
	};
}
```

### LFG_COMPLETION_REWARD
Occurs when receiving gold for completing a dungeon through LFD.

### LOOT
Occurs when looting gold.

### MAIL_IN
Occurs when looting gold in the mail.
```ts
{
	sender: string;
}
```

### MAIL_OUT
Occurs when sending mail. This includes the postage fee, so it will be a minimum of 30c even for mail with no gold attached.
```ts
{
	recipient: string;
}
```

### QUEST_REWARD
Occurs when receiving gold as a quest reward.
```ts
{
	questId: number;
}
```

### REPAIR
Occurs when spending gold to repair equipment.

### TRADE
Occurs when trading gold with another player.
```ts
{
	tradeTarget: {
		name: string;
		realm: string;
	};
}
```

### UNKNOWN
Occurs when gold is received from an unknown source.

### VENDOR_BUY
Occurs when buying an item from a vendor.
```ts
{
	item: itemLink;
	quantity: number;
}
```

### VENDOR_BUYBACK
Occurs when buying back a sold item from a vendor.
```ts
{
	item: itemLink;
	quantity: number;
}
```

### VENDOR_SELL
Occurs when selling an item to a vendor.
```ts
{
	item: itemLink;
	quantity: number;
}
```
