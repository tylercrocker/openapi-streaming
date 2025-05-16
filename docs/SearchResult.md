# OpenapiClient::SearchResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **shows** | [**Array&lt;Show&gt;**](Show.md) | Array of shows. |  |
| **has_more** | **Boolean** | Whether there are more shows available. |  |
| **next_cursor** | **String** | Cursor value to pass to get the next set of shows. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SearchResult.new(
  shows: null,
  has_more: null,
  next_cursor: null
)
```

