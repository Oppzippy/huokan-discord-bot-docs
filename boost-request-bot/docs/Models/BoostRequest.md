# BoostRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **UUID** |  | [default to null]
**requesterId** | **String** | Discord user id of the request of the boost request. | [default to null]
**isAdvertiserSelected** | **Boolean** |  | [default to null]
**backendChannelId** | **String** | Discord channel id that the boost request signup message was posted in. | [default to null]
**backendMessageId** | **String** | Discord message id of the boost request signup message. | [default to null]
**message** | **String** | What is being requested | [default to null]
**price** | **String** | Price of the boost request in copper. This is a 64 bit integer represented as a string. | [optional] [default to null]
**discount** | **String** | Discount in copper on the boost. | [optional] [default to null]
**advertiserCut** | **String** | Advertiser&#39;s cut for the boost request in copper. This is a 64 bit integer represented as a string. | [optional] [default to null]
**preferredAdvertiserIds** | **List** | If preferredAdvertiserIds is defined, only advertisers listed here will be eligible to accept the boost request. | [optional] [default to null]
**createdAt** | **Date** |  | [default to null]
**advertiserSelectedAt** | **Date** |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

