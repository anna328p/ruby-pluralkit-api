# PluralKitAPI::FullSwitch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **Time** | The timestamp the switch was logged. | [optional] |
| **members** | [**Array&lt;Member&gt;**](Member.md) | A list of the members in this switch. The order is significant. It is valid for the switch to have no members at all.  | [optional] |

## Example

```ruby
require 'pluralkit-api'

instance = PluralKitAPI::FullSwitch.new(
  timestamp: null,
  members: null
)
```

