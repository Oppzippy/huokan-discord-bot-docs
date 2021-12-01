# PostBoostRequestsRequest
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requesterId** | **String** | Discord user id of the request of the boost request. | [default to null]
**backendChannelId** | **String** | Discord channel id to post the boost request signup message in. If exactly one preferred advertiser is set, the message will go to the preferred advertiser&#39;s DMs instead. If the preferred advertiser is then removed, the boost request will be reposted in this channel. | [default to null]
**message** | **String** | What is being requested | [default to null]
**price** | **String** | Price of the boost request in copper. This is a 64 bit integer represented as a string. | [optional] [default to null]
**advertiserCut** | **String** | Advertiser&#39;s cut for the boost request in copper. This is a 64 bit integer represented as a string. | [optional] [default to null]
**advertiserRoleCuts** | **Map** | Keys are role ids, values are cuts. If an advertiser has more than one listed role, the role with the highest cut will be used. If the advertiser has none of the provided roles, the cut will fall back to advertiserCut if that was provided. | [optional] [default to null]
**discount** | **String** | Discount coming out of the advertiser&#39;s cut on the boost request in copper. This is a 64 bit integer represented as a string. | [optional] [default to null]
**preferredAdvertiserIds** | **List** | If provided, only advertisers listed here will be eligible to accept the boost request. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

