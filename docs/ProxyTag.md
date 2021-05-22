# PluralKitAPI::ProxyTag

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prefix** | **String** | The proxy tag prefix. This is the string that goes *before* the inner text.  An empty prefix is represented as &#x60;null&#x60; and an empty string will be converted as such.  | [optional] |
| **suffix** | **String** | The proxy tag suffix. This is the string that goes *after* the inner text.  An empty suffix is represented as &#x60;null&#x60; and an empty string will be converted as such.  | [optional] |

## Example

```ruby
require 'pluralkit-api'

instance = PluralKitAPI::ProxyTag.new(
  prefix: {{,
  suffix: }}
)
```

