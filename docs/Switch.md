# PluralKitAPI::Switch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **timestamp** | **Time** | The timestamp the switch was logged. | [optional][readonly] |
| **members** | **Array&lt;String&gt;** | A list of the IDs of the members in this switch. The order is significant. It is valid for the switch to have no members at all.  | [optional] |

## Example

```ruby
require 'pluralkit-api'

instance = PluralKitAPI::Switch.new(
  timestamp: null,
  members: null
)
```

