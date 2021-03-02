## SYNTHESIZIO

An app to quickly make, edit, and save synthesizer settings.

## Technologies and Features
Project created with:
* Ruby: 2.6.1
* Rails: 6.0.3

Current synth features:
* Two oscillators with variable frequencies and waveforms
* Two types of distortion filters with distortion gain setting and on/off toggle (0 distortion gain is DIFFERENT than no distortion)
* Clickable keyboard to play with your sound, maintains the interval between your oscillator frequencies ascending/descending from the first oscillator

Planned synth features:
* More distortion types (potentially allowed the user to make their own filter curve)
* Variable reverb
* More effects (flange, tremolo, etc)

Current site features:
* Can sign up as a new user or log in as existing
    * Authorization is currently fake, when signing up the database will correctly encrypt/salt your password, but when logging in it only checks your username
* Can create new synthesizer settings and save them to your account
* Can open saved settings to play with and edit them
* Can click on the labels for aspects of the synth to see descriptions of each one
* Can delete synth settings from your account

Planned site features:
* Can browse, play with, and save to your account other users' synths
* Add computer keyboard and/or MIDI keyboard control to the in-browser synth keyboard

## Setup

To run this project, after following the steps below go to the [frontend setup](https://github.com/bstizzle/synthesizio-frontend)

```
$ cd ../synthesizio-backend
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails db:seed
$ rails s
```