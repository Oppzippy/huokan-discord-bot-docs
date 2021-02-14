# Recruitment API

## GET /v1/recruitment/inviteLink/{inviteLink}

{inviteLink} should just be the 8 letter code and not the full url.

Returns
```ts
{
	inviteLink: string; // Just the invite code, not the full link
	ownerDiscordId: string;
	createdAt: string; // ISO 8601
	updatedAt: string; // ISO 8601, currently unused and may be removed in the future
}
```

## GET /v1/recruitment/user/{id}/acceptedInvites

Returns all invite links that the user accepted ordered by date (oldest to newest). Only the oldest counts on leaderboards.

{id} is the user's discord id.

Returns
```ts
{
	inviteLink: string;
	timestamp: string; // ISO 8601
}[]
```

## GET /v1/recruitment/user/{id}/recruiter

Returns the first recruiter to invite a particular a user.

Returns
```ts
{
	inviteLink: string;
	inviter: string; // discord user id
	timestamp: string; // ISO 8601
}
```
