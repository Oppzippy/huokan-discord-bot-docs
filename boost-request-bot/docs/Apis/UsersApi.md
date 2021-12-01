# UsersApi

All URIs are relative to *https://boostrequestbot.oppzippy.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserStealCredits**](UsersApi.md#getUserStealCredits) | **GET** /users/{userId}/stealCredits | 
[**updateUserStealCredits**](UsersApi.md#updateUserStealCredits) | **PATCH** /users/{userId}/stealCredits | 


<a name="getUserStealCredits"></a>
# **getUserStealCredits**
> UserStealCredits getUserStealCredits(userId)



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User&#39;s discord id | [default to null]

### Return type

[**UserStealCredits**](../Models/UserStealCredits.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

<a name="updateUserStealCredits"></a>
# **updateUserStealCredits**
> UserStealCredits updateUserStealCredits(userId, PatchStealCreditsRequest)



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User&#39;s discord id | [default to null]
 **PatchStealCreditsRequest** | [**PatchStealCreditsRequest**](../Models/PatchStealCreditsRequest.md)|  |

### Return type

[**UserStealCredits**](../Models/UserStealCredits.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

