# Bannerify SDK


## Overview

### Available Operations

* [post_v1_templates_create_image](#post_v1_templates_create_image)
* [get_v1_templates_signedurl](#get_v1_templates_signedurl)
* [get_v1_info](#get_v1_info) - Get project info

## post_v1_templates_create_image

### Example Usage

```ruby
require 'openapibaaas'


s = ::OpenApiSDK::Bannerify.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer_auth: "BANNERIFY_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::PostV1TemplatesCreateImageRequestBody.new(
  api_key: "key_xxxxxxxxx",
  template_id: "tpl_xxxxxxxxx",
  modifications: [
    ::OpenApiSDK::Shared::Modification.new(
      name: "Text 1",
      color: "#FF0000",
      src: "https://example.com/image.jpg",
      text: "Hello World",
      barcode: "1234567890",
      qrcode: "Some text",
      visible: true,
      star: 5.0,
    ),
  ],
)
    
res = s.post_v1_templates_create_image(req)

if ! res.bytes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                           | Type                                                                                                                                | Required                                                                                                                            | Description                                                                                                                         |
| ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                                           | [::OpenApiSDK::Operations::PostV1TemplatesCreateImageRequestBody](../../models/operations/postv1templatescreateimagerequestbody.md) | :heavy_check_mark:                                                                                                                  | The request object to use for the request.                                                                                          |


### Response

**[T.nilable(::OpenApiSDK::Operations::PostV1TemplatesCreateImageResponse)](../../models/operations/postv1templatescreateimageresponse.md)**


## get_v1_templates_signedurl

### Example Usage

```ruby
require 'openapibaaas'


s = ::OpenApiSDK::Bannerify.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer_auth: "BANNERIFY_API_KEY",
  )
)


req = ::OpenApiSDK::Operations::GetV1TemplatesSignedurlRequest.new(
  nocache: "true",
  template_id: "tpl_xxxxxxxxx",
  api_key_md5: "<value>",
  sign: "<value>",
)
    
res = s.get_v1_templates_signedurl(req)

if ! res.body.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                             | Type                                                                                                                  | Required                                                                                                              | Description                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------- |
| `request`                                                                                                             | [::OpenApiSDK::Operations::GetV1TemplatesSignedurlRequest](../../models/operations/getv1templatessignedurlrequest.md) | :heavy_check_mark:                                                                                                    | The request object to use for the request.                                                                            |


### Response

**[T.nilable(::OpenApiSDK::Operations::GetV1TemplatesSignedurlResponse)](../../models/operations/getv1templatessignedurlresponse.md)**


## get_v1_info

Get project info

### Example Usage

```ruby
require 'openapibaaas'


s = ::OpenApiSDK::Bannerify.new
s.config_security(
  ::OpenApiSDK::Shared::Security.new(
    bearer_auth: "BANNERIFY_API_KEY",
  )
)

    
res = s.get_v1_info(api_key="key_xxxxxxxxx")

if ! res.object.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        | Example            |
| ------------------ | ------------------ | ------------------ | ------------------ | ------------------ |
| `api_key`          | *::String*         | :heavy_check_mark: | N/A                | key_xxxxxxxxx      |


### Response

**[T.nilable(::OpenApiSDK::Operations::GetV1InfoResponse)](../../models/operations/getv1inforesponse.md)**

