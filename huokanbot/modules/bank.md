# Bank Module

This module will track all deposits to guild banks owned by the community. It is to be paired with the Huokan Advertiser Tools addon, which will export a string containing information about the deposit. See the [Huokan Advertiser Tools Bank Deposit docs](/huokan-advertiser-tools/bank-deposit.md) for more information on this.

## Setup

In order for a bank deposit to be added to the system, the bank guild must first be registered. The `!addbankguild` command will register a bank guild with the bot. An optional `-d` flag can be provided to remove a bank guild. Note that the name and realm are both case sensitive.

Example:
```
!addbankguild "Huokan Bank-Thrall"
```

In order to delete that bank guild, we would use:
```
!addbankguild -d "Huokan Bank-Thrall"
```

To list the registered bank guilds, the command `!bankguilds` can be used. The bot will reply with a list of bank guilds by realm.

## Adding Bank Deposits

**This section refers to a command that is currently disabled.**

The `!addbankdeposit` command should be used every time someone deposits money into a guild bank. Huokan Advertiser Tools will provide them with a string upon depositing. That string should be passed as the first argument to the command.

Example:
```
!addbankdeposit zZSxCsIwEIZfRW5OIUlbCxlFcHTppDhEDRhM2pC2Qi19d6/gIOIiB9Zsae770jt+MsBRV9dNZ90Z1ACV9gYUbEPoFys8AAbRaOfxW3mJ2jkYGYRobrbumrUJdWPbBtR+gFMdgomgBMeFNU730/ZVebeo/WAc2b/gKQ1f5nM3T/h3au80PKPh8w5ezpo6Ii4kcfZEvCDyovh9cA8MnG5N0z6fwAn7RsDek9dajzbtAxZJLnkiRJLykucqKxTPdnjn4w==
```

The bot will then DM the user their transaction id. This may then be passed off to other bots or services that use the bank api.
