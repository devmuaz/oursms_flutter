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

You can always read the article I write on my [Medium](https://devmuaz.medium.com/) account which I write pretty great Flutter content out there.

## Contributions & Support

Issues and pull requests are always welcome 😄

If you found this package useful for you and liked it, star the repo ⭐️ it would mean a lot!

## License

```
MIT License

Copyright (c) 2014 - 2021 devmuaz

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```
