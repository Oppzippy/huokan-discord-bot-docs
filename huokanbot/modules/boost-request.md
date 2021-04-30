# Boost Request Module
\<> will indicate required arguments and [] will indicate optional arguments in commands on this page.

## Requirements
The bot requires some permissions for this module to function.
- Send Messages
- Embed Links
- Add Reactions
- Manage Messages

## Usage
### Request Logging
**!boostrequest setlogchannel \<#channel>**  
All boost requests will be logged to this channel upon creation along with the requester's discord tag and a @mention.

**!boostrequest removelogchannel**  
Stops logging.

### Channels
**!boostrequest channels**  
Lists all boost request channels on the server.

**!boostrequest addchannel \<#frontend-channel> \<#backend-channel>**  
Adds a boost request channel. The frontend channel must be unique. If the frontend and backend channel are the same, reactions (👍, ⏭) will be applied directly to the request message and the requester will not recieve a DM. This is intended for boost requests created via webhooks.

**!boostrequest removechannel \<#frontend-channel>**  
Removes a boost request channel. This doesn't delete the discord channels; it just unregisters them for receiving boost requests.

**!boostrequest removechannels**  
Removes **ALL** boost request channels from the server. This doesn't delete the discord channels; it just unregisters them for receiving boost requests.

### Privileges

**!boostrequest privileges**  
Lists all advertiser privileges.

**!boostrequest setprivileges \<@role> \<weight> \<delayInSeconds>**  
Assigns privileges to an advertiser role.  
\<weight>: When randomly choosing an advertiser, the weight will be applied to advertisers of this role. This can be any positive number greater than 0.  
\<delayInSeconds>: Time the role must wait after the creation of a boost request in order to be able to claim it. All advertisers with roles that must wait the same amount of time are grouped together, and whichever group has the lowest delay will be chosen from. This must be a positive integer.

**!boostrequest removeprivileges \<@role>**  
Removes privileges to use the boost request bot from a role.

### Discounts

**!boostrequest rolediscounts**  
Lists all role discounts.

**!boostrequest setrolediscount \<@role> \<discount%>**  
Sets a discount for all boost requests from a role. Example: !boostrequest addrolediscount @Booster 10%

**!boostrequest removerolediscount \<@role>**  
Removes the discount for a role.

### Steal Credits

**!boostrequest credits [@user...]**  
Checks your boost request steal credits. If arguments are provided, each user's boost request steal credits will be checked instead.

**!boostrequest addcredits \<@user> \<credits>**  
Add boost request steal credits to a user.

**!boostrequest setcredits \<@role> \<credits>**  
Sets a user's boost request steal credits.
