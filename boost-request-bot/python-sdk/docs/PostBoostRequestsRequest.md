# PostBoostRequestsRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requester_id** | **str** | Discord user id of the request of the boost request. | 
**backend_channel_id** | **str** | Discord channel id to post the boost request signup message in. If exactly one preferred claimer is set, the message will go to the preferred claimer&#39;s DMs instead. If the preferred claimer is then removed, the boost request will be reposted in this channel. | 
**message** | **str** | What is being requested | 
**price** | **str** | Price of the boost request in copper. This is a 64 bit integer represented as a string. | [optional] 
**preferred_claimer_ids** | **[str]** | If provided, only claimers listed here will be eligible to accept the boost request. | [optional] 
**additional_embed_fields** | [**[EmbedField]**](EmbedField.md) | Extra message embed fields to be added onto the end of the boost request. | [optional] 
**any string name** | **bool, date, datetime, dict, float, int, list, str, none_type** | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


