# BoostRequestsApi

All URIs are relative to *https://boostrequestbot.oppzippy.com/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createBoostRequest**](BoostRequestsApi.md#createBoostRequest) | **POST** /boostRequests | 
[**getBoostRequest**](BoostRequestsApi.md#getBoostRequest) | **GET** /boostRequests/{boostRequestId} | 


<a name="createBoostRequest"></a>
# **createBoostRequest**
> BoostRequest createBoostRequest(PostBoostRequestsRequest)



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **PostBoostRequestsRequest** | [**PostBoostRequestsRequest**](../Models/PostBoostRequestsRequest.md)|  | [optional]

### Return type

[**BoostRequest**](../Models/BoostRequest.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

<a name="getBoostRequest"></a>
# **getBoostRequest**
> BoostRequest getBoostRequest(boostRequestId)



### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **boostRequestId** | **UUID**| Boost request UUID | [default to null]

### Return type

[**BoostRequest**](../Models/BoostRequest.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

