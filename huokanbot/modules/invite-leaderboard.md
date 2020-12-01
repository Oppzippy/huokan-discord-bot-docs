# Invite Leaderboard Module
[Brackets] will indicate optional arguments in commands on this page.

## Requirements
The bot requires some permissions for this module to function.
- Manage Server (view invite link usage)
- Create Invite (the bot creates invite links for recruiters)
- Send Messages
- Embed Links (leaderboards)
- Manage Messages (the bot deletes your command after posting a leaderboard)

## Setup
`!invitechannel [#channel]`
Only usable by server admins. Sets the channel that invite links created with `!invitelink` will point to.
If the channel is not specified, the channel the command was posted in will be used.

## Usage

`!invitelink`
Available to everyone. Creates an invite link to the server's invite channel (or the current channel if not specified) that will be tracked by the bot.

`!inviteleaderboard [--size 1-50] [--dynamic] [--startDate datetime] [--endDate datetime] [--cycle days]`
Available anyone with Manage Server permission plus Moderators.
- `--size`: Number of recruiters to show on the leaderboard.
- `--dynamic`: If this flag is present, the bot will automatically update this leaderboard every time the numbers change. Only one dynamic leaderboard can exist at a time per discord channel. This decision was made to ensure old dynamic leaderboards don't get lost in channels and continuously update despite being irrelevant.
- `--startDate`: Invites will only count if they occurred after this date/time. This behaves differently with the `--cycle` option. Example: `--startDate "2020-09-21 10:00 EDT"`
- `--endDate`: Invites will only count if they occurred before this date/time. Example: `--endDate "2020-10-01 10:00 EDT"`
- `--cycle`: Number of days per cycle. After the cycle ends, the leaderboard resets. Example: startDate is set to 2020-09-01 00:00 UTC and cycle is set to 7. On the 8th, 15th, etc., the leaderboard will reset.
