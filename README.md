# OurSMS - Flutter

Flutter API Integration

This package provides simple lightweight methods in which you can use to send meesages to a phone number.

For more info, visit [OurSMS](https://oursms.app/) service

## Usage

You can simply use it like so:

```dart
final OursmsClient client = OursmsClient(key: API_KEY, userId: USER_ID);

// OSM (One Single Message)
final SentMessage sentMessage = await client.sendOneMessage(
    PHONE_NUMBER,
    MESSAGE,
);

// OTP (One Time Password)
final SentMessage sentMessage = await client.sendOtpMessage(
    PHONE_NUMBER,
    OTP_NUMBER,
);

// Get a message status
final MessageStatus messageStatus = await client.getMessageStatus(MESSAGE_ID);
```

## Medium articles by the author

You can always read the articles I write on my [Medium](https://devmuaz.medium.com/) account which I write pretty great Flutter content out there.

## Contributions & Support

Issues and pull requests are always welcome 😄

If you find this package useful for you and liked it, give it a like ❤️ and star the repo ⭐️ it would mean a lot!

## License

**MIT**
