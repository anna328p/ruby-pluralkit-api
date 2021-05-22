# PluralKitAPI::System

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A unique identifier for a system or a member, as a randomly generated string of five lowercase letters.  These IDs are guaranteed to be globally unique for the given model type (a system can have the same ID as a member, but two systems or two members can never share an ID).  The IDs can on rare occasions change - eg. if a profane word is generated and later regenerated, or as a potential future Patreon perk. However, it&#39;s still reasonable to assume that the IDs are constant, and that tey won&#39;t change without the user&#39;s knowledge, so it&#39;s safe to store in things like settings menus and config files.  | [optional][readonly] |
| **name** | **String** | The user-provided name of the system. | [optional] |
| **description** | **String** | The user-provided system description.  May contain rich text in Markdown, including standard Markdown-formatted links, or Discord-formatted emoji/user/channel references.  | [optional] |
| **tag** | **String** | The system tag, which is appended to the names (or display names, if set) of members when proxying through the bot.  A space will automatically be inserted between the name and the tag, so no need to include one at the start.  The character limit here is 78, as Discord&#39;s name length limit for webhooks is 80 characters. A 78-character system tag is thus the longest tag that can still accomodate a single-letter member name and the separating space.  | [optional] |
| **avatar_url** | **String** | A link to the avatar/icon of the system.  If used for proxying, the image must be at most 1000 pixels in width *and* height, and at most 1 MiB in size. This restriction is on Discord&#39;s end and is not verified through the API (it&#39;s simply stored as a string).  | [optional] |
| **tz** | **String** | The system&#39;s registered time zone as an Olson time zone ID.  This is used in the bot to convert various time stamps in commands on behalf of this system.  | [optional][default to &#39;UTC&#39;] |
| **created** | **Time** | The creation timestamp of the system. | [optional][readonly] |
| **description_privacy** | [**PrivacySetting**](PrivacySetting.md) |  | [optional] |
| **member_list_privacy** | [**PrivacySetting**](PrivacySetting.md) |  | [optional] |
| **front_privacy** | [**PrivacySetting**](PrivacySetting.md) |  | [optional] |
| **front_history_privacy** | [**PrivacySetting**](PrivacySetting.md) |  | [optional] |

## Example

```ruby
require 'pluralkit-api'

instance = PluralKitAPI::System.new(
  id: abcde,
  name: Boxes of Foxes,
  description: This system is very cool.

It has cool people.,
  tag: | BoF,
  avatar_url: https://i.imgur.com/Abcdefg.png,
  tz: America/New_York,
  created: null,
  description_privacy: null,
  member_list_privacy: null,
  front_privacy: null,
  front_history_privacy: null
)
```

