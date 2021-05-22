# PluralKitAPI::Message

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **Time** | The time the message was proxied. | [optional][readonly] |
| **id** | **String** |  | [optional] |
| **original** | **String** |  | [optional] |
| **sender** | **String** |  | [optional] |
| **channel** | **String** |  | [optional] |
| **system** | [**System**](System.md) |  | [optional] |
| **member** | [**Member**](Member.md) |  | [optional] |

## Example

```ruby
require 'pluralkit-api'

instance = PluralKitAPI::Message.new(
  timestamp: null,
  id: null,
  original: null,
  sender: null,
  channel: null,
  system: null,
  member: null
)
```

