# OpenapiClient::ChangesResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **changes** | [**Array&lt;Change&gt;**](Change.md) | Array of the changes. |  |
| **shows** | [**Hash&lt;String, Show&gt;**](Show.md) | Map of the shows by their ids. |  |
| **has_more** | **Boolean** | Whether there are more changes available. |  |
| **next_cursor** | **String** | Cursor value to pass to get the next set of changes. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ChangesResult.new(
  changes: null,
  shows: null,
  has_more: null,
  next_cursor: null
)
```

