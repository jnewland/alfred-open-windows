# Alfred Open Windows

A simple extension to switch between open windows of an application with Alfred. Great for switching between several full-screen windows of the same application.

![skitched-20140501-104246](https://cloud.githubusercontent.com/assets/47/2855041/030a6c68-d158-11e3-9a5b-35215c32a8a3.jpg)

## Installation

    wget https://github.com/jnewland/alfred-open-windows/archive/v0.0.1.zip
    unzip v0.0.1.zip
    cd alfred-open-windows
    make

## Setup

### Granting Alfred Accessibility Access

In order for Alfred to list the open windows for an application for your text snippets, it must be granted Accessibility access in your Mac's Security & Privacy preferences, under Accessibility.

Click the plus icon, and then add Alfred 3. When you're done, it should look like this:

![image](https://user-images.githubusercontent.com/47/35474485-67bedf2c-0354-11e8-8897-3b9dbe8d6da0.png)

### Configuring a Keyboard shortcut

Double click the 'Hotkey' icon in the Alfred workflow to set a keyboard shortcut:

![skitched-20140501-103948](https://cloud.githubusercontent.com/assets/47/2855013/98b374e0-d157-11e3-8e97-365ea2c3de9a.jpg)

## Usage

 Press the keyboard shortcut you entered above, and then type in a search phrase matching one of your open windows. Pressing enter will switch to this window.

## Debugging

    sudo tail -f /var/log/system.log | grep alfred-open-windows
