# boostrequestbotapi.UsersApi

All URIs are relative to *https://boostrequestbot.oppzippy.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**users_user_id_steal_credits_get**](UsersApi.md#users_user_id_steal_credits_get) | **GET** /users/{userId}/stealCredits | 
[**users_user_id_steal_credits_patch**](UsersApi.md#users_user_id_steal_credits_patch) | **PATCH** /users/{userId}/stealCredits | 


# **users_user_id_steal_credits_get**
> UserStealCredits users_user_id_steal_credits_get(user_id)



### Example

* Api Key Authentication (ApiKeyAuth):

```python
import time
import boostrequestbotapi
from boostrequestbotapi.api import users_api
from boostrequestbotapi.model.error_response import ErrorResponse
from boostrequestbotapi.model.user_steal_credits import UserStealCredits
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
    api_instance = users_api.UsersApi(api_client)
    user_id = "userId_example" # str | 

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.users_user_id_steal_credits_get(user_id)
        pprint(api_response)
    except boostrequestbotapi.ApiException as e:
        print("Exception when calling UsersApi->users_user_id_steal_credits_get: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |

### Return type

[**UserStealCredits**](UserStealCredits.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | Number of boost request steal credits available to the user in a JSON object. |  -  |
**401** | API key is invalid. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **users_user_id_steal_credits_patch**
> GenericResponse users_user_id_steal_credits_patch(user_id)



### Example

* Api Key Authentication (ApiKeyAuth):

```python
import time
import boostrequestbotapi
from boostrequestbotapi.api import users_api
from boostrequestbotapi.model.generic_response import GenericResponse
from boostrequestbotapi.model.patch_steal_credits_request import PatchStealCreditsRequest
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
    api_instance = users_api.UsersApi(api_client)
    user_id = "userId_example" # str | 
    patch_steal_credits_request = PatchStealCreditsRequest(
        credits=1,
        operation="+",
    ) # PatchStealCreditsRequest |  (optional)

    # example passing only required values which don't have defaults set
    try:
        api_response = api_instance.users_user_id_steal_credits_patch(user_id)
        pprint(api_response)
    except boostrequestbotapi.ApiException as e:
        print("Exception when calling UsersApi->users_user_id_steal_credits_patch: %s\n" % e)

    # example passing only required values which don't have defaults set
    # and optional values
    try:
        api_response = api_instance.users_user_id_steal_credits_patch(user_id, patch_steal_credits_request=patch_steal_credits_request)
        pprint(api_response)
    except boostrequestbotapi.ApiException as e:
        print("Exception when calling UsersApi->users_user_id_steal_credits_patch: %s\n" % e)
```


### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **str**|  |
 **patch_steal_credits_request** | [**PatchStealCreditsRequest**](PatchStealCreditsRequest.md)|  | [optional]

### Return type

[**GenericResponse**](GenericResponse.md)

### Authorization

[ApiKeyAuth](../README.md#ApiKeyAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json


### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
**200** | The action has been exectuted successfully. |  -  |
**400** | The request schema is invalid. |  -  |
**401** | API key is invalid. |  -  |
**500** | Internal server error. |  -  |

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

