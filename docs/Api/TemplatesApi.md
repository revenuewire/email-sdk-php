# Swagger\Client\TemplatesApi

All URIs are relative to *https://localhost/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addNewContent**](TemplatesApi.md#addNewContent) | **POST** /templates/{id}/contents | 
[**addTemplate**](TemplatesApi.md#addTemplate) | **POST** /templates | 
[**deleteContent**](TemplatesApi.md#deleteContent) | **DELETE** /templates/{id}/contents/{contentId} | 
[**deleteTemplate**](TemplatesApi.md#deleteTemplate) | **DELETE** /templates/{id} | 
[**getContent**](TemplatesApi.md#getContent) | **GET** /templates/{id}/contents/{contentId} | 
[**getTemplate**](TemplatesApi.md#getTemplate) | **GET** /templates/{id} | 
[**getTemplates**](TemplatesApi.md#getTemplates) | **GET** /templates | 
[**updateContent**](TemplatesApi.md#updateContent) | **PUT** /templates/{id}/contents/{contentId} | Update Template Content
[**updateTemplate**](TemplatesApi.md#updateTemplate) | **PUT** /templates/{id} | 


# **addNewContent**
> \Swagger\Client\Model\TemplateContent addNewContent($id, $lang, $subject, $body, $text)



Add new template content (new language)

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: APIKeyHeader
Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Authorization-JWT', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Authorization-JWT', 'Bearer');

$api_instance = new Swagger\Client\Api\TemplatesApi();
$id = "id_example"; // string | Template Id
$lang = "lang_example"; // string | 
$subject = "subject_example"; // string | 
$body = "body_example"; // string | HTML formatted message body
$text = "text_example"; // string | Text formatted message boday

try {
    $result = $api_instance->addNewContent($id, $lang, $subject, $body, $text);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->addNewContent: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Template Id |
 **lang** | **string**|  |
 **subject** | **string**|  |
 **body** | **string**| HTML formatted message body |
 **text** | **string**| Text formatted message boday | [optional]

### Return type

[**\Swagger\Client\Model\TemplateContent**](../Model/TemplateContent.md)

### Authorization

[APIKeyHeader](../../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **addTemplate**
> \Swagger\Client\Model\Template addTemplate($template)



Create a new template

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: APIKeyHeader
Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Authorization-JWT', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Authorization-JWT', 'Bearer');

$api_instance = new Swagger\Client\Api\TemplatesApi();
$template = new \Swagger\Client\Model\NewTemplate(); // \Swagger\Client\Model\NewTemplate | 

try {
    $result = $api_instance->addTemplate($template);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->addTemplate: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template** | [**\Swagger\Client\Model\NewTemplate**](../Model/\Swagger\Client\Model\NewTemplate.md)|  |

### Return type

[**\Swagger\Client\Model\Template**](../Model/Template.md)

### Authorization

[APIKeyHeader](../../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteContent**
> \Swagger\Client\Model\Response deleteContent($id, $content_id)



### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: APIKeyHeader
Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Authorization-JWT', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Authorization-JWT', 'Bearer');

$api_instance = new Swagger\Client\Api\TemplatesApi();
$id = "id_example"; // string | Template Id
$content_id = "content_id_example"; // string | Content Id

try {
    $result = $api_instance->deleteContent($id, $content_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->deleteContent: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Template Id |
 **content_id** | **string**| Content Id |

### Return type

[**\Swagger\Client\Model\Response**](../Model/Response.md)

### Authorization

[APIKeyHeader](../../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteTemplate**
> \Swagger\Client\Model\Template deleteTemplate($id)



Delete a template

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: APIKeyHeader
Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Authorization-JWT', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Authorization-JWT', 'Bearer');

$api_instance = new Swagger\Client\Api\TemplatesApi();
$id = "id_example"; // string | Template Id

try {
    $result = $api_instance->deleteTemplate($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->deleteTemplate: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Template Id |

### Return type

[**\Swagger\Client\Model\Template**](../Model/Template.md)

### Authorization

[APIKeyHeader](../../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getContent**
> \Swagger\Client\Model\TemplateContent getContent($id, $content_id)



### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: APIKeyHeader
Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Authorization-JWT', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Authorization-JWT', 'Bearer');

$api_instance = new Swagger\Client\Api\TemplatesApi();
$id = "id_example"; // string | Template Id
$content_id = "content_id_example"; // string | Content Id

try {
    $result = $api_instance->getContent($id, $content_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->getContent: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Template Id |
 **content_id** | **string**| Content Id |

### Return type

[**\Swagger\Client\Model\TemplateContent**](../Model/TemplateContent.md)

### Authorization

[APIKeyHeader](../../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getTemplate**
> \Swagger\Client\Model\Template getTemplate($id)



Get a template

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: APIKeyHeader
Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Authorization-JWT', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Authorization-JWT', 'Bearer');

$api_instance = new Swagger\Client\Api\TemplatesApi();
$id = "id_example"; // string | Template Id

try {
    $result = $api_instance->getTemplate($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->getTemplate: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Template Id |

### Return type

[**\Swagger\Client\Model\Template**](../Model/Template.md)

### Authorization

[APIKeyHeader](../../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getTemplates**
> \Swagger\Client\Model\Template[] getTemplates()



Get all templates

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: APIKeyHeader
Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Authorization-JWT', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Authorization-JWT', 'Bearer');

$api_instance = new Swagger\Client\Api\TemplatesApi();

try {
    $result = $api_instance->getTemplates();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->getTemplates: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\Swagger\Client\Model\Template[]**](../Model/Template.md)

### Authorization

[APIKeyHeader](../../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateContent**
> \Swagger\Client\Model\TemplateContent updateContent($id, $content_id, $subject, $body, $text)

Update Template Content

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: APIKeyHeader
Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Authorization-JWT', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Authorization-JWT', 'Bearer');

$api_instance = new Swagger\Client\Api\TemplatesApi();
$id = "id_example"; // string | Template Id
$content_id = "content_id_example"; // string | Template Content Id
$subject = "subject_example"; // string | 
$body = "body_example"; // string | 
$text = "text_example"; // string | 

try {
    $result = $api_instance->updateContent($id, $content_id, $subject, $body, $text);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->updateContent: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Template Id |
 **content_id** | **string**| Template Content Id |
 **subject** | **string**|  |
 **body** | **string**|  |
 **text** | **string**|  | [optional]

### Return type

[**\Swagger\Client\Model\TemplateContent**](../Model/TemplateContent.md)

### Authorization

[APIKeyHeader](../../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateTemplate**
> \Swagger\Client\Model\Template updateTemplate($id, $name, $default_language)



Update a template

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: APIKeyHeader
Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Authorization-JWT', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Authorization-JWT', 'Bearer');

$api_instance = new Swagger\Client\Api\TemplatesApi();
$id = "id_example"; // string | Template Id
$name = "name_example"; // string | Template Name
$default_language = "default_language_example"; // string | Default Language

try {
    $result = $api_instance->updateTemplate($id, $name, $default_language);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling TemplatesApi->updateTemplate: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Template Id |
 **name** | **string**| Template Name |
 **default_language** | **string**| Default Language |

### Return type

[**\Swagger\Client\Model\Template**](../Model/Template.md)

### Authorization

[APIKeyHeader](../../README.md#APIKeyHeader)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

