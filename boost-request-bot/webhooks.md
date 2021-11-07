# Bosot Request Bot Webhooks

A webhook can be set using [!boostrequest setwebhook](/boost-request-bot/discord/boost-request.md?id=webhooks). Every time one of the following events occurs, a POST request will be made to the webhook url. The request body will look like:
```json
{
	"event": "advertiserSelected",
	"payload": {}
}
```
The payload schema will vary depending on the event.

If the request fails or the server responds with a status code outside the range of 200-299, the request will be repeated approximately once every hour until it succeeds for the next seven days. If the webhook url is changed with !boostrequest setwebook, all failed requests will be transferred over to the new url.

## Events
**advertiserSelected**  
Fires when an advertiser is selected for a boost request through any means.  
Payload: [BoostRequest](/boost-request-bot/docs/Models/BoostRequest.md)
