# BoostRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | [**UUID**](UUID.md) |  | [default to null]
**requesterId** | [**String**](string.md) | Discord user id of the request of the boost request. | [default to null]
**isAdvertiserSelected** | [**Boolean**](boolean.md) |  | [default to null]
**backendChannelId** | [**String**](string.md) | Discord channel id that the boost request signup message was posted in. | [default to null]
**backendMessageId** | [**String**](string.md) | Discord message id of the boost request signup message. | [default to null]
**message** | [**String**](string.md) | What is being requested | [default to null]
**price** | [**String**](string.md) | Price of the boost request in copper. This is a 64 bit integer represented as a string. | [optional] [default to null]
**advertiserCut** | [**String**](string.md) | Advertiser&#39;s cut for the boost request in copper. This is a 64 bit integer represented as a string. | [optional] [default to null]
**preferredAdvertiserIds** | [**List**](string.md) | If preferredAdvertiserIds is defined, only advertisers listed here will be eligible to accept the boost request. | [optional] [default to null]
**createdAt** | [**Date**](DateTime.md) |  | [default to null]
**advertiserSelectedAt** | [**Date**](DateTime.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

