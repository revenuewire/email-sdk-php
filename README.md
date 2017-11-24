# SwaggerClient-php
An email service

This PHP package is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Build package: io.swagger.codegen.languages.PhpClientCodegen

## Requirements

PHP 5.4.0 and later

## Installation & Usage
### Composer

To install the bindings via [Composer](http://getcomposer.org/), add the following to `composer.json`:

```
{
  "repositories": [
    {
      "type": "git",
      "url": "https://github.com/revenuewire/email-sdk-php.git"
    }
  ],
  "require": {
    "revenuewire/email-sdk-php": "*@dev"
  }
}
```

Then run `composer install`

### Manual Installation

Download the files and include `autoload.php`:

```php
    require_once('/path/to/SwaggerClient-php/autoload.php');
```

## Tests

To run the unit tests:

```
composer install
./vendor/bin/phpunit
```

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');

// Configure API key authorization: APIKeyHeader
Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');
// Configure API key authorization: JWTHeader
Swagger\Client\Configuration::getDefaultConfiguration()->setApiKey('X-Authorization-JWT', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// Swagger\Client\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-Authorization-JWT', 'Bearer');

$api_instance = new Swagger\Client\Api\EmailsApi();

try {
    $result = $api_instance->getEmailTypes();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling EmailsApi->getEmailTypes: ', $e->getMessage(), PHP_EOL;
}

?>
```

## Documentation for API Endpoints

All URIs are relative to *https://localhost/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*EmailsApi* | [**getEmailTypes**](docs/Api/EmailsApi.md#getemailtypes) | **GET** /types | Get a list of email types and variables
*EmailsApi* | [**sendEmail**](docs/Api/EmailsApi.md#sendemail) | **POST** /emails | Sending an email directly.
*HelloApi* | [**hello**](docs/Api/HelloApi.md#hello) | **GET** /hello | Just say hello
*ResourcesApi* | [**addResource**](docs/Api/ResourcesApi.md#addresource) | **POST** /resources | 
*ResourcesApi* | [**deleteResource**](docs/Api/ResourcesApi.md#deleteresource) | **DELETE** /resources/{id} | 
*ResourcesApi* | [**getResource**](docs/Api/ResourcesApi.md#getresource) | **GET** /resources/{id} | 
*ResourcesApi* | [**getResources**](docs/Api/ResourcesApi.md#getresources) | **GET** /resources | 
*ResourcesApi* | [**resourcesUploadPost**](docs/Api/ResourcesApi.md#resourcesuploadpost) | **POST** /resources/upload | 
*ResourcesApi* | [**updateResource**](docs/Api/ResourcesApi.md#updateresource) | **PUT** /resources/{id} | 
*TemplatesApi* | [**addNewContent**](docs/Api/TemplatesApi.md#addnewcontent) | **POST** /templates/{id}/contents | 
*TemplatesApi* | [**addTemplate**](docs/Api/TemplatesApi.md#addtemplate) | **POST** /templates | 
*TemplatesApi* | [**deleteContent**](docs/Api/TemplatesApi.md#deletecontent) | **DELETE** /templates/{id}/contents/{contentId} | 
*TemplatesApi* | [**deleteTemplate**](docs/Api/TemplatesApi.md#deletetemplate) | **DELETE** /templates/{id} | 
*TemplatesApi* | [**getContent**](docs/Api/TemplatesApi.md#getcontent) | **GET** /templates/{id}/contents/{contentId} | 
*TemplatesApi* | [**getContents**](docs/Api/TemplatesApi.md#getcontents) | **GET** /templates/{id}/contents | 
*TemplatesApi* | [**getTemplate**](docs/Api/TemplatesApi.md#gettemplate) | **GET** /templates/{id} | 
*TemplatesApi* | [**getTemplates**](docs/Api/TemplatesApi.md#gettemplates) | **GET** /templates | 
*TemplatesApi* | [**previewTemplate**](docs/Api/TemplatesApi.md#previewtemplate) | **POST** /templates/{id}/preview | Get preview of the content
*TemplatesApi* | [**updateContent**](docs/Api/TemplatesApi.md#updatecontent) | **PUT** /templates/{id}/contents/{contentId} | Update Template Content
*TemplatesApi* | [**updateTemplate**](docs/Api/TemplatesApi.md#updatetemplate) | **PUT** /templates/{id} | 


## Documentation For Models

 - [EmailType](docs/Model/EmailType.md)
 - [EmailTypeTemplate](docs/Model/EmailTypeTemplate.md)
 - [EmailTypeTemplateTo](docs/Model/EmailTypeTemplateTo.md)
 - [EmailTypeVariable](docs/Model/EmailTypeVariable.md)
 - [Error](docs/Model/Error.md)
 - [InlineResponse200](docs/Model/InlineResponse200.md)
 - [Mailer](docs/Model/Mailer.md)
 - [Message](docs/Model/Message.md)
 - [NewResource](docs/Model/NewResource.md)
 - [NewTemplate](docs/Model/NewTemplate.md)
 - [NewTemplateContent](docs/Model/NewTemplateContent.md)
 - [PreviewContent](docs/Model/PreviewContent.md)
 - [PreviewResult](docs/Model/PreviewResult.md)
 - [PreviewResultHtml](docs/Model/PreviewResultHtml.md)
 - [Resource](docs/Model/Resource.md)
 - [Response](docs/Model/Response.md)
 - [Template](docs/Model/Template.md)
 - [TemplateContent](docs/Model/TemplateContent.md)
 - [TemplateContents](docs/Model/TemplateContents.md)
 - [UpdateResource](docs/Model/UpdateResource.md)
 - [UpdateTemplate](docs/Model/UpdateTemplate.md)
 - [UpdateTemplateContent](docs/Model/UpdateTemplateContent.md)


## Documentation For Authorization


## APIKeyHeader

- **Type**: API key
- **API key parameter name**: X-API-KEY
- **Location**: HTTP header

## JWTHeader

- **Type**: API key
- **API key parameter name**: X-Authorization-JWT
- **Location**: HTTP header


## Author




