# Documentation for Boost Request Bot

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://boostrequestbot.oppzippy.com/v3*

| Class | Method | HTTP request | Description |
|------------ | ------------- | ------------- | -------------|
| *BoostRequestsApi* | [**createBoostRequest**](Apis/BoostRequestsApi.md#createboostrequest) | **POST** /boostRequests |  |
*BoostRequestsApi* | [**getBoostRequest**](Apis/BoostRequestsApi.md#getboostrequest) | **GET** /boostRequests/{boostRequestId} |  |
| *UsersApi* | [**getUserStealCredits**](Apis/UsersApi.md#getuserstealcredits) | **GET** /users/{userId}/stealCredits |  |
*UsersApi* | [**updateUserStealCredits**](Apis/UsersApi.md#updateuserstealcredits) | **PATCH** /users/{userId}/stealCredits |  |


<a name="documentation-for-models"></a>
## Documentation for Models

 - [BoostRequest](./Models/BoostRequest.md)
 - [BoostRequestPartial](./Models/BoostRequestPartial.md)
 - [BoostRequestSignupCollection](./Models/BoostRequestSignupCollection.md)
 - [BoostRequestSignupCollection_signups](./Models/BoostRequestSignupCollection_signups.md)
 - [DetailedErrorResponse](./Models/DetailedErrorResponse.md)
 - [EmbedField](./Models/EmbedField.md)
 - [ErrorResponse](./Models/ErrorResponse.md)
 - [GenericResponse](./Models/GenericResponse.md)
 - [PatchStealCreditsRequest](./Models/PatchStealCreditsRequest.md)
 - [UserStealCredits](./Models/UserStealCredits.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="ApiKeyAuth"></a>
### ApiKeyAuth

- **Type**: API key
- **API key parameter name**: X-API-Key
- **Location**: HTTP header

