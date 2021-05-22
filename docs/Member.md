# PluralKitAPI::Member

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A unique identifier for a system or a member, as a randomly generated string of five lowercase letters.  These IDs are guaranteed to be globally unique for the given model type (a system can have the same ID as a member, but two systems or two members can never share an ID).  The IDs can on rare occasions change - eg. if a profane word is generated and later regenerated, or as a potential future Patreon perk. However, it&#39;s still reasonable to assume that the IDs are constant, and that tey won&#39;t change without the user&#39;s knowledge, so it&#39;s safe to store in things like settings menus and config files.  | [optional][readonly] |
| **name** | **String** | The user-provided name of the member. | [optional] |
| **display_name** | **String** | The member&#39;s \&quot;display name\&quot;, which will override the member&#39;s normal name when proxying. | [optional] |
| **description** | **String** | The user-provided description of the member.  May contain rich text in Markdown, including standard Markdown-formatted links, or Discord-formatted emoji/user/channel references.  If this member is private, and the request is not authorized with the member&#39;s system token, this field will always be returned as &#x60;null&#x60;.  | [optional] |
| **color** | **String** | The member&#39;s \&quot;color\&quot;, displayed on member cards, as a 6-character hexadecimal color code (no leading #).  If this member is private, and the request is not authorized with the member&#39;s system token, this field will always be returned as &#x60;null&#x60;.  | [optional] |
| **birthday** | **Date** | The user-provided birthdate of the member.  \&quot;Year-less\&quot; birthdays are supported. In this case, the year should be set to &#x60;0004&#x60;, and that specific year should be special-cased and hidden from the user. Previous versions used the year &#x60;0001&#x60; for the same purpose, and this value may still be both read and written with the API and should be treated the same as &#x60;0004&#x60;.  The year &#x60;0004&#x60; was chosen because it is a leap year in the Gregorian calendar, and thus the date &#x60;0004-02-29&#x60; can be properly represented.  If this member is private, and the request is not authorized with the member&#39;s system token, this field will always be returned as &#x60;null&#x60;.  | [optional] |
| **pronouns** | **String** | The user-provided pronouns of the member.  There is no specific schema, just a freeform text field.  If this member is private, and the request is not authorized with the member&#39;s system token, this field will always be returned as &#x60;null&#x60;.  | [optional] |
| **avatar_url** | **String** | A link to the avatar/icon of the member.  If used for proxying, the image must be at most 1000 pixels in width *and* height, and at most 1 MiB in size. This restriction is on Discord&#39;s end and is not verified through the API (it&#39;s simply stored as a string).  | [optional] |
| **privacy** | [**PrivacySetting**](PrivacySetting.md) |  | [optional] |
| **visibility** | [**PrivacySetting**](PrivacySetting.md) |  | [optional] |
| **name_privacy** | [**PrivacySetting**](PrivacySetting.md) |  | [optional] |
| **description_privacy** | [**PrivacySetting**](PrivacySetting.md) |  | [optional] |
| **avatar_privacy** | [**PrivacySetting**](PrivacySetting.md) |  | [optional] |
| **pronouns_privacy** | [**PrivacySetting**](PrivacySetting.md) |  | [optional] |
| **birthday_privacy** | [**PrivacySetting**](PrivacySetting.md) |  | [optional] |
| **metadata_privacy** | [**PrivacySetting**](PrivacySetting.md) |  | [optional] |
| **proxy_tags** | [**Array&lt;ProxyTag&gt;**](ProxyTag.md) | An unordered list of the member&#39;s proxy tag pairs.  It is valid for a member to have any number of proxy tags, including none at all.  | [optional] |
| **prefix** | **String** | Previous versions of the API only supported a single proxy tag pair per member. This field will contain the prefix of the first proxy tag registered, or &#x60;null&#x60; if missing. Setting it will write to the first proxy tag&#39;s prefix, creating it if not present.  This field is deprecated and will be removed in API v2.  | [optional] |
| **suffix** | **String** | Previous versions of the API only supported a single proxy tag pair per member. This field will contain the suffix of the first proxy tag registered, or &#x60;null&#x60; if missing. Setting it will write to the first proxy tag&#39;s suffix, creating it if not present.  This field is deprecated and will be removed in API v2.  | [optional] |
| **keep_proxy** | **Boolean** | Whether or not to include the used proxy tags in proxied messages.  | [optional][default to false] |
| **created** | **Time** | The creation timestamp of the member. May be returned as &#x60;null&#x60; depending on the value of &#x60;metadata_privacy&#x60; and the request authorization. | [optional][readonly] |

## Example

```ruby
require 'pluralkit-api'

instance = PluralKitAPI::Member.new(
  id: abcde,
  name: Myriad Kit,
  display_name: Myriad &#39;Big Boss&#39; Kit,
  description: Myriad is very cool and rad, and they love snuggling.,
  color: FF0000,
  birthday: Wed Jul 11 00:00:00 UTC 2018,
  pronouns: they/them or xe/xem,
  avatar_url: https://i.imgur.com/Abcdefg.png,
  privacy: null,
  visibility: null,
  name_privacy: null,
  description_privacy: null,
  avatar_privacy: null,
  pronouns_privacy: null,
  birthday_privacy: null,
  metadata_privacy: null,
  proxy_tags: null,
  prefix: {{,
  suffix: }},
  keep_proxy: null,
  created: null
)
```

