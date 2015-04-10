## My Colors

* Background: #C0DCC0 RGB: 192, 200, 192
* Foreground: #101485 RGB: 16,20,133
* Normal: #000080

## Node tools
When installing a new node (and esp. before using vim), install

* n for multiple version handling
* jshint
* esformatter
* jsonlint

## Setting up a new Mac
Before installing anything, go to the system preference and

* Set the firewall on (security & Privacy > Firewall)
* Double tap to drag drop: Accessibility > Mouse & Trackpad >Trackpad options > enable dragging with Drag Lock
* Allow install from somewhere else than mac app store !!
* Security & Privacy > General > Allow apps downloaded from ...

Then install basic dev env

* Install MacVim from https://code.google.com/p/macvim/
* Install Git git-scm.com/download
* Copy .ssh configuration from safe place
* clone and adapt the dev-config repo https://github.com/godfroidt/dev-config.git
* then install node, n, etc

We will also need

* Xcode
* and within Xcode, go to preferences and add CLI tools

Install some must-have software

* Google Chrome or Firefox
* Dropbox (for O Reilly docs mainly) and make sure it's folder goes in Documents
* SourceTree from Altlassian
* check the apps bought from mac app store ... (kindle, evernote, statsbar, reeder, XCode, daisy disk)
* sonos
* iterm2

And copy all needed data

### Tricks
Showing hidden files:

    defaults write com.apple.Finder AppleShowAllFiles YES

## Installing Titanium

Assuming git & xcode ARE installed.  If Xcode is there, check that the command line tools are present. Type make at the command line and if not there, open Xcode, go to Preferences, in Download tab, click the install button next to the "command line tools" option.

Basically follow the doc only. But in short

* type "java" at the command line to trigger install of Oracle JDK
* install node.js (and choose the prefix that is good for you)
* install the CLI, do titanium sdk install and titanium setup (in that order)
* if you really want it, install studio
*	npm tools to add: jsonlint, jshint
