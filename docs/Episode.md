# OpenapiClient::Episode

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **item_type** | **String** | Type of the item. Always episode. |  |
| **title** | **String** | Title of the episode. |  |
| **overview** | **String** | A brief overview of the plot of the episode. | [optional] |
| **air_year** | **Integer** | The year that the episode aired. |  |
| **streaming_options** | **Hash&lt;String, Array&lt;StreamingOption&gt;&gt;** | Map of the streaming options by the country code. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Episode.new(
  item_type: null,
  title: null,
  overview: null,
  air_year: null,
  streaming_options: null
)
```

