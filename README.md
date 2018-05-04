# Watchman
This is a simple shell script for macOS to protect your MacBook from theft before you leave it from your sight.

## How does it work?
Watchman protects your MacBook by detecting AC power connection.

When your MacBook lost AC power connection, the Watchman will let you know that you have defined.

If you want to get a message, The message will be sent by LINE Notify, So you have to have LINE account and create [LINE Notify](https://notify-bot.line.me/en/) and generate the token and then define the token in Watchman again.

If you define notification sound, please don't forget to unplug earphones from your MacBook for getting notification sound.

## Installation
It is quick and easy to install via command line (Terminal).
```
curl -ssl https://raw.githubusercontent.com/thanabuts/watchman/master/install.sh | bash
```

## Usage
To **start** protecting
```
$ watchman
```

>To **stop** protecting: `control`+`c`

To **define** the necessary variables : `-d` or `--define` [( more detail.. )](https://github.com/thanabuts/watchman#definition-variables)
```
$ watchman -d
OR
$ watchman --define
```

To **display** the help message : `-h` or `--help`
```
$ watchman -h
OR
$ watchman --help
```

## Definition Variables
After you run this command
```
$ watchman -d
OR
$ watchman --define
```
You will see the questions for define the necessary variables on Watchman then you can answer it.

Leave the answer blank if you don't want to change it or enter "-" to answer none.

**Description the questions**
```
Enter stolen message [Your value]:
```
###### Enter the message when you MacBook has been stolen (Require)
---
```
Enter returned message [Your value]:
```
###### Enter the message when you MacBook has been returned (Require)
---
```
Enter alert message [Your value]:
```
###### Enter the message that will speak instead of notification sound when your MacBook has been stolen (Option)
---
```
Enter macOS TTS voice [Your value]:
```
###### If you define the message in previous question [alert message] you must answer it (Option)
---
```
Enter notification sound file path [Your value]:
```
###### The sound file path (Option)
###### [ Default = `/usr/local/bin/watchman.aiff` ]
---
```
Enter you LINE access token [Your value]:
```
###### [LINE Notify](https://notify-bot.line.me/en/) token for send notification message (Option)

## Uninstallation
To **uninstall** :  `-u` or `--uninstall`
```
$ watchman -u
OR
$ watchman --uninstal
```

## License
Copyright (c) 2018 WORAPAT KETENG

Licensed under the [MIT License](https://github.com/thanabuts/watchman/blob/master/LICENSE.md)
