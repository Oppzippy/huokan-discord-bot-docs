# PostBoostRequestsRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requesterId** | [**String**](string.md) | Discord user id of the request of the boost request. | [default to null]
**backendChannelId** | [**String**](string.md) | Discord channel id to post the boost request signup message in. | [default to null]
**message** | [**String**](string.md) | What is being requested | [default to null]
**price** | [**String**](string.md) | Price of the boost request in copper. This is a 64 bit integer represented as a string. | [optional] [default to null]
**advertiserCut** | [**String**](string.md) | Advertiser&#39;s cut for the boost request in copper. This is a 64 bit integer represented as a string. | [optional] [default to null]
**preferredAdvertiserIds** | [**List**](string.md) | If provided, only advertisers listed here will be eligible to accept the boost request. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)
