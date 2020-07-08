---
title: "DJI Spark Battery Monitor"
date: 2020-05-20T10:58:58+08:00
draft: true
---

While hacking on the [bricked batteries](https://www.uncle.la/posts/dji-spark-battery-issue/), I realized that useful information could be read over `SMBus`. The thing in particular that I was concerned about `Cycle Time`, which tell us how many times a battery have been charged. With some more tinkering, I managed to pull out the information using an [Arduino Nano](https://www.arduino.cc/) and display it on a serial monitor.


Then I started thinking, could there be a easier way? Maybe someone has made a casing for the battery? Browse browse.... ah ha!

----
This [OEM DJI Spark battery charger](https://www.aliexpress.com/item/4000145647897.html?spm=a2g0s.12269583.0.0.68035b5bSLhQJf) by `RCGEEK` came in a simple a nice packaging and was properly housed in a casing with user manual (in english)!

For a thing that cost `US $9.13` (including delivery), I must say that the build is decent and works functions as expected.

The charger output exactly `13.10V` based on my Fluke multimeter measurement and that is 

One thing peculiar though, is the label of `USB 12V/1.5A`. Where is the 12 Volts coming from for a normal USB port? It turns out that a typical 5V mobile charger is not going to do the job! 

Wow that is a real bummer. You will need a charger that provides a 12V output to use it. Thankfully my [Hyperjuice](https://www.kickstarter.com/projects/hypershop/hyperjuice-worlds-first-and-smallest-100w-gan-charger) is capable of that, as well as the ever handy Xiaomi power bank.

