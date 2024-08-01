<!-- Start SDK Example Usage [usage] -->
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
<!-- End SDK Example Usage [usage] -->