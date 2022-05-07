# boostrequestbotapi.BoostRequestsApi

All URIs are relative to *https://boostrequestbot.oppzippy.com/v3*

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
from boostrequestbotapi.model.boost_request_partial import BoostRequestPartial
from boostrequestbotapi.model.error_response import ErrorResponse
from boostrequestbotapi.model.boost_request import BoostRequest
from pprint import pprint
# Defining the host is optional and defaults to https://boostrequestbot.oppzippy.com/v3
# See configuration.py for a list of all supported configuration parameters.
configuration = boostrequestbotapi.Configuration(
    host = "https://boostrequestbot.oppzippy.com/v3"
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
    boost_request_partial = BoostRequestPartial(
        requester_id="requester_id_example",
        backend_channel_id="backend_channel_id_example",
        message="message_example",
        price="price_example",
        preferred_claimer_ids=[
            "preferred_claimer_ids_example",
        ],
        additional_embed_fields=[
            EmbedField(
                name="name_example",
                value="value_example",
                inline=True,
            ),
        ],
        name_visibility="SHOW",
    ) # BoostRequestPartial |  (optional)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.create_boost_request(boost_request_partial=boost_request_partial)
        pprint(api_response)
    except boostrequestbotapi.ApiException as e:
        print("Exception when calling BoostRequestsApi->create_boost_request: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **boost_request_partial** | [**BoostRequestPartial**](BoostRequestPartial.md)|  | [optional]

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
> BoostRequest get_boost_request(boost_request_id)



### Example

* Api Key Authentication (ApiKeyAuth):

```python
import time
import boostrequestbotapi
from boostrequestbotapi.api import boost_requests_api
from boostrequestbotapi.model.error_response import ErrorResponse
from boostrequestbotapi.model.boost_request import BoostRequest
from pprint import pprint
# Defining the host is optional and defaults to https://boostrequestbot.oppzippy.com/v3
# See configuration.py for a list of all supported configuration parameters.
configuration = boostrequestbotapi.Configuration(
    host = "https://boostrequestbot.oppzippy.com/v3"
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
        api_response = api_instance.get_boost_request(boost_request_id)
        pprint(api_response)
    except boostrequestbotapi.ApiException as e:
        print("Exception when calling BoostRequestsApi->get_boost_request: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **boost_request_id** | **str**| Boost request UUID |

### Return type

[**BoostRequest**](BoostRequest.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details

| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The boost request exists. |  -  |
**400** | The request schema is invalid. |  -  |
**401** | API key is invalid. |  -  |
**404** | The requested resource could not be found. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

