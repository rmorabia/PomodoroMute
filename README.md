![GitHub top language](https://img.shields.io/github/languages/top/rmorabia/rashee.svg?style=for-the-badge) ![GitHub repo size](https://img.shields.io/github/repo-size/rmorabia/rashee.svg?style=for-the-badge) ![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/rmorabia/rashee.svg?style=for-the-badge) ![GitHub](https://img.shields.io/github/license/rmorabia/rashee.svg?style=for-the-badge)

# PomodoroMute

Simple MacOS app that allows you to create 25-minute timers to mute and unmute your audio.

<img width="396" alt="Screenshot 2024-09-09 at 12 41 36 PM" src="https://github.com/user-attachments/assets/7625ee93-e424-4169-82a9-244e9a102855">

This is dead simple, I didn't even put in the effort to customize the window size because I'm not actually sure how to do that in Swift, so it's big and ugly.

The current featureset includes:
  - 25-minute timer that can be started, stopped, and paused
  - Mute when the timer is done
  - Unmute when the timer is not done

It does not pause your audio. It just mutes it until you press start again.

This is heavily inspired by [Julien Lacroix's Pomodoro Timer | Pure Focus app](https://apps.apple.com/us/app/pomodoro-timer-pure-focus/id6446814612?mt=12), but it didn't work with all of the audio systems I wanted (radio, YouTube Music), so I very quickly spun up my own.

## Usage

Download the release from [here](https://github.com/rmorabia/PomodoroMute/releases).

This will not open on double-click because I am not paying Apple $99 to distribute a tiny little desktop application. The app will say it's unsafe. It's not! You can read the entire source code here! Tell Apple it's okay to use my silly little Swift code, and the app will open. You will probably want to resize it.

## Installation

First, clone the repository locally using:

```sh
git clone https://github.com/rmorabia/PomodoroMute.git
```

Then, navigate to the repository using:

```sh
cd PomodoroMute
```

Lastly, open in Xcode. There are no dependencies.

## Contributing

Issues are welcome! Suggest a new feature, report a bug, or just yell at me. I'm open to it all.

Pull Requests are also welcome.

Please note, in order to contribute to this codebase, you must follow the code of conduct.

I am happy to expand upon this if people want it or like it or use it. I just made the bare minimum version for myself in 30 minutes.

## License

[MIT](https://choosealicense.com/licenses/mit/)
