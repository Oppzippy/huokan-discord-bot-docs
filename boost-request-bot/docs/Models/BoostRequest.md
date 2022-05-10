# BoostRequest
## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
| **id** | **UUID** |  | [default to null] |
| **requesterId** | **String** | Discord user id of the request of the boost request. | [default to null] |
| **backendChannelId** | **String** | Discord channel id to post the boost request signup message in. If exactly one preferred claimer is set, the message will go to the preferred claimer&#39;s DMs instead. If the preferred claimer is then removed, the boost request will be reposted in this channel. | [default to null] |
| **isClaimerSelected** | **Boolean** |  | [default to null] |
| **message** | **String** | What is being requested | [default to null] |
| **price** | **String** | Price of the boost request in copper. This is a 64 bit integer represented as a string. | [optional] [default to null] |
| **preferredClaimerIds** | **List** | If preferredClaimerIds is defined, only claimers listed here will be eligible to accept the boost request. | [optional] [default to null] |
| **additionalEmbedFields** | [**List**](EmbedField.md) | Extra message embed fields to be added onto the end of the boost request. | [optional] [default to null] |
| **createdAt** | **Date** |  | [default to null] |
| **claimerSelectedAt** | **Date** |  | [optional] [default to null] |
| **nameVisibility** | **String** | Control when names will be displayed or hidden. Defaults to dms only. SHOW is not implemented and will behave the same as dms only. Acceptable values include SHOW_IN_DMS_ONLY and HIDE. | [default to null] |
| **dontPickClaimer** | **Boolean** | Instead of picking a claimer, a list of signups will be sent to the webhook. See webhook documentation for more info. | [optional] [default to null] |

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

