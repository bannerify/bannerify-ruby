# openapibaaas

<div align="left">
    <a href="https://www.speakeasy.com/?utm_source=<no value>&utm_campaign=ruby"><img src="https://custom-icon-badges.demolab.com/badge/-Built%20By%20Speakeasy-212015?style=for-the-badge&logoColor=FBE331&logo=speakeasy&labelColor=545454" /></a>
    <a href="https://opensource.org/licenses/MIT">
        <img src="https://img.shields.io/badge/License-MIT-blue.svg" style="width: 100px; height: 28px;" />
    </a>
</div>


## 🏗 **Welcome to your new SDK!** 🏗

It has been generated successfully based on your OpenAPI spec. However, it is not yet ready for production use. Here are some next steps:
- [ ] 🛠 Make your SDK feel handcrafted by [customizing it](https://www.speakeasy.com/docs/customize-sdks)
- [ ] ♻️ Refine your SDK quickly by iterating locally with the [Speakeasy CLI](https://github.com/speakeasy-api/speakeasy)
- [ ] 🎁 Publish your SDK to package managers by [configuring automatic publishing](https://www.speakeasy.com/docs/advanced-setup/publish-sdks)
- [ ] ✨ When ready to productionize, delete this section from the README

<!-- Start SDK Installation [installation] -->
## SDK Installation

```bash
gem install specific_install
gem specific_install  
```
<!-- End SDK Installation [installation] -->

<!-- Start SDK Example Usage [usage] -->
## SDK Example Usage

### Example

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

<!-- Start Available Resources and Operations [operations] -->
## Available Resources and Operations

### [Bannerify SDK](docs/sdks/bannerify/README.md)

* [post_v1_templates_create_image](docs/sdks/bannerify/README.md#post_v1_templates_create_image)
* [get_v1_templates_signedurl](docs/sdks/bannerify/README.md#get_v1_templates_signedurl)
* [get_v1_info](docs/sdks/bannerify/README.md#get_v1_info) - Get project info
<!-- End Available Resources and Operations [operations] -->

<!-- Start Server Selection [server] -->
## Server Selection

## Server Selection

### Select Server by Index

You can override the default server globally by passing a server index to the `server_idx: int` optional parameter when initializing the SDK client instance. The selected server will then be used as the default on the operations that use it. This table lists the indexes associated with the available servers:

| # | Server | Variables |
| - | ------ | --------- |
| 0 | `https://api.bannerify.co` | None |




### Override Server URL Per-Client

The default server can also be overridden globally by passing a URL to the `server_url: str` optional parameter when initializing the SDK client instance. For example:
<!-- End Server Selection [server] -->

<!-- Placeholder for Future Speakeasy SDK Sections -->

# Development

## Maturity

This SDK is in beta, and there may be breaking changes between versions without a major version update. Therefore, we recommend pinning usage
to a specific package version. This way, you can install the same version each time without breaking changes unless you are intentionally
looking for the latest version.

## Contributions

While we value open-source contributions to this SDK, this library is generated programmatically. Any manual changes added to internal files will be overwritten on the next generation. 
We look forward to hearing your feedback. Feel free to open a PR or an issue with a proof of concept and we'll do our best to include it in a future release. 

### SDK Created by [Speakeasy](https://www.speakeasy.com/?utm_source=<no value>&utm_campaign=ruby)
