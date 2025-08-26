---
title: "Landing Prediction App"
date: 2023-04-30T18:30:00-05:00
---
This app is designed to solve a particular problem I have discovered in my amateur rocketry setup: The code I use to decode telemetry from my rocket data only runs on a laptop, as its writtin in MATLAB. While I'm out in the desert I want to be carrying as little weight as possible, a 200g phone is much easier than a multiple kg laptop. 

This code also benefits from sensors in the phone, namely positioning and altitude. Altitude from the users phone can be used for crudely predicting the rocket's landing position. Once the rocket's landing coordinates have been estimated, they can be plugged into google maps to make navigating to them easier (which the light weight of the device makes easier as well).


I developed this app in pure Java to read out data from a USB connected arduino. The USB connected arduino has an attached radio reciever that listens to FSK transmissions on or about 432MHz. I have previously tested the range to at least 800 meters which I was limited to by geographic conditions (the road ended).

[Source code for the app](https://github.com/parchedpacha/LandingPredictApp)
![Landing Predict](/articles/images/LandingPredict.jpg)