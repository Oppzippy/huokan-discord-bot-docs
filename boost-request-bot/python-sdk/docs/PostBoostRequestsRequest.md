# PostBoostRequestsRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**requester_id** | **str** | Discord user id of the request of the boost request. | 
**backend_channel_id** | **str** | Discord channel id to post the boost request signup message in. | 
**message** | **str** | What is being requested | 
**price** | **str** | Price of the boost request in copper. This is a 64 bit integer represented as a string. | [optional] 
**advertiser_cut** | **str** | Advertiser&#39;s cut for the boost request in copper. This is a 64 bit integer represented as a string. | [optional] 
**advertiser_role_cuts** | **{str: (str,)}** | Keys are role ids, values are cuts. If an advertiser has more than one listed role, the role with the highest cut will be used. If the advertiser has none of the provided roles, the cut will fall back to advertiserCut if that was provided. | [optional] 
**discount** | **str** | Discount coming out of the advertiser&#39;s cut on the boost request in copper. This is a 64 bit integer represented as a string. | [optional] 
**preferred_advertiser_ids** | **[str]** | If provided, only advertisers listed here will be eligible to accept the boost request. | [optional] 
**any string name** | **bool, date, datetime, dict, float, int, list, str, none_type** | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


