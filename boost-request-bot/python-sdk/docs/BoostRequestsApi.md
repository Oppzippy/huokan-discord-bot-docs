# boostrequestbotapi.BoostRequestsApi

All URIs are relative to *https://boostrequestbot.oppzippy.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_boost_request**](BoostRequestsApi.md#create_boost_request) | **POST** /boostRequests | 
[**get_boost_request**](BoostRequestsApi.md#get_boost_request) | **GET** /boostRequests/{boostRequestId} | 


# **create_boost_request**
> BoostRequest create_boost_request()



### Example

* Api Key Authentication (ApiKeyAuth):
```python
import time
import boostrequestbotapi
from boostrequestbotapi.api import boost_requests_api
from boostrequestbotapi.model.post_boost_requests_request import PostBoostRequestsRequest
from boostrequestbotapi.model.error_response import ErrorResponse
from boostrequestbotapi.model.boost_request import BoostRequest
from pprint import pprint
# Defining the host is optional and defaults to https://boostrequestbot.oppzippy.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = boostrequestbotapi.Configuration(
    host = "https://boostrequestbot.oppzippy.com/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with boostrequestbotapi.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = boost_requests_api.BoostRequestsApi(api_client)
    post_boost_requests_request = PostBoostRequestsRequest(
        requester_id="requester_id_example",
        backend_channel_id="backend_channel_id_example",
        message="message_example",
        price="price_example",
        advertiser_cut="advertiser_cut_example",
        preferred_advertiser_ids=[
            "preferred_advertiser_ids_example",
        ],
    ) # PostBoostRequestsRequest |  (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.create_boost_request(post_boost_requests_request=post_boost_requests_request)
        pprint(api_response)
    except boostrequestbotapi.ApiException as e:
        print("Exception when calling BoostRequestsApi->create_boost_request: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **post_boost_requests_request** | [**PostBoostRequestsRequest**](PostBoostRequestsRequest.md)|  | [optional]

### Return type

[**BoostRequest**](BoostRequest.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The boost request was successfully created. |  -  |
**400** | The request schema is invalid. |  -  |
**401** | API key is invalid. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **get_boost_request**
> get_boost_request(boost_request_id)



### Example

* Api Key Authentication (ApiKeyAuth):
```python
import time
import boostrequestbotapi
from boostrequestbotapi.api import boost_requests_api
from boostrequestbotapi.model.error_response import ErrorResponse
from pprint import pprint
# Defining the host is optional and defaults to https://boostrequestbot.oppzippy.com/v1
# See configuration.py for a list of all supported configuration parameters.
configuration = boostrequestbotapi.Configuration(
    host = "https://boostrequestbot.oppzippy.com/v1"
)

# The client must configure the authentication and authorization parameters
# in accordance with the API server security policy.
# Examples for each auth method are provided below, use the example that
# satisfies your auth use case.

# Configure API key authorization: ApiKeyAuth
configuration.api_key['ApiKeyAuth'] = 'YOUR_API_KEY'

# Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
# configuration.api_key_prefix['ApiKeyAuth'] = 'Bearer'

# Enter a context with an instance of the API client
with boostrequestbotapi.ApiClient(configuration) as api_client:
    # Create an instance of the API class
    api_instance = boost_requests_api.BoostRequestsApi(api_client)
    boost_request_id = "boostRequestId_example" # str | Boost request UUID

    # example passing only required values which don't have defaults set
    try:
        api_instance.get_boost_request(boost_request_id)
    except boostrequestbotapi.ApiException as e:
        print("Exception when calling BoostRequestsApi->get_boost_request: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **boost_request_id** | **str**| Boost request UUID |

### Return type

void (empty response body)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**400** | The request schema is invalid. |  -  |
**401** | API key is invalid. |  -  |
**404** | The requested resource could not be found. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
