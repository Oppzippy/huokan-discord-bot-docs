# BoostRequest


## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **str** |  | 
**requester_id** | **str** | Discord user id of the request of the boost request. | 
**is_advertiser_selected** | **bool** |  | 
**backend_channel_id** | **str** | Discord channel id that the boost request signup message was posted in. | 
**backend_message_id** | **str** | Discord message id of the boost request signup message. | 
**message** | **str** | What is being requested | 
**created_at** | **datetime** |  | 
**price** | **str** | Price of the boost request in copper. This is a 64 bit integer represented as a string. | [optional] 
**advertiser_cut** | **str** | Advertiser&#39;s cut for the boost request in copper. This is a 64 bit integer represented as a string. | [optional] 
**preferred_advertiser_ids** | **[str]** | If preferredAdvertiserIds is defined, only advertisers listed here will be eligible to accept the boost request. | [optional] 
**advertiser_selected_at** | **datetime** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


