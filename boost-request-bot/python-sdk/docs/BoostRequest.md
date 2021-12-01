# BoostRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**requester_id** | **str** | Discord user id of the request of the boost request. | 
**backend_channel_id** | **str** | Discord channel id to post the boost request signup message in. If exactly one preferred advertiser is set, the message will go to the preferred advertiser&#39;s DMs instead. If the preferred advertiser is then removed, the boost request will be reposted in this channel. | 
**is_advertiser_selected** | **bool** |  | 
**message** | **str** | What is being requested | 
**created_at** | **datetime** |  | 
**backend_messages** | [**[BoostRequestBackendSignupMessage]**](BoostRequestBackendSignupMessage.md) |  | [optional] 
**price** | **str** | Price of the boost request in copper. This is a 64 bit integer represented as a string. | [optional] 
**discount** | **str** | Discount in copper on the boost. | [optional] 
**advertiser_cut** | **str** | Advertiser&#39;s cut for the boost request in copper. This is a 64 bit integer represented as a string. | [optional] 
**advertiser_role_cuts** | **{str: (str,)}** | Keys are role ids, values are cuts. If an advertiser has more than one listed role, the role with the highest cut will be used. If the advertiser has none of the provided roles, the cut will fall back to advertiserCut if that was provided. | [optional] 
**preferred_advertiser_ids** | **[str]** | If preferredAdvertiserIds is defined, only advertisers listed here will be eligible to accept the boost request. | [optional] 
**advertiser_selected_at** | **datetime** |  | [optional] 
**any string name** | **bool, date, datetime, dict, float, int, list, str, none_type** | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


