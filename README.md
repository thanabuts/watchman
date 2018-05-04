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

To **stop** protecting: `control`+`c`

To **define** the necessary variables : `-d` or `--define` [(More detail..)](https://github.com/thanabuts/watchman#definition-variables)
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
