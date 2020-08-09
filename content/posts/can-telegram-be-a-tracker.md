---
title: "Can Telegram Be a Tracker?"
date: 2020-06-24T19:36:11+08:00
draft: false
---

I have always wanted to build something, just for the fun of it, but more importantly, learn a new thing or two along the way. One idea is a platform that makes it easy for me to record my daily activities (essentially data, the new gold!) and visualize them. People often ask me about, why reinvent the wheel when there are already existing solutions? Personally, I feel "robbed" by learning opportunities and gaining of new knowledge, when the commercial need to deliver in the shortest time possible, gets us into a mindset where we become `off the shelf solution seekers`. Through dumbdumb exploratory projects like this, it allows me to learn, try and simply enjoy the process of satisfying my curiosity!

Recently, I have been building some [Telegram bots](https://telegram.org/) and this new skill set got me thinking! With my obsession of using Telegram as a User Interface (UI), I wondered if Telegram is going be a suitable platform to record my runs/walks/movement?

Last night, I quickly programmed the bot, aptly named `Fit Uncle`, to give me an idea of how often the GPS coordinates gets updated. If the coordinates data gets updated every few minutes, it will clearly not be feasible to record an activity like running.


Rapid idea validation #1:

> Build something quick and measure the key parameter that determines whether to move forward

![FitUncle-first-test](/img/fit-uncle/FitUncle-first-test.jpeg#c)

I got the bot up and running, messed around with the live location and the data suggests a refresh rate of ~30 seconds. Not too bad, I thought. The coordinates also updated fine with my phone locked and displayed turned off, which suggests that updates can happen in the background even without the app being active.

Next question I had in mind, maybe the GPS coordinate will update more frequently when I am on the move?


Rapid idea validation #2:

> Go out for a quick walk and capture data on coordinates refresh frequency

![FitUncle-notifications](/img/fit-uncle/FitUncle-sharing-live-location.jpeg#c)

Sent the bot my live location and it started logging the GPS coordinates.

![FitUncle-data-log](/img/fit-uncle/FitUncle-data-log.jpeg#c)

You will notice that the refresh timings vary for each update.

![FitUncle-notifications](/img/fit-uncle/FitUncle-notifications.jpeg#c)

Notification of a GPS coordinate update shows up whenever it get refreshed. 

Not sure if this blows your mind but I am essentially using the bot under test to send me the data that I want to see, using the very same bot. :D

On the server side, I logged data coming in as well to make it easy (effortless) to analyze + record what it's needed. We can see that the GPS coordinates refresh frequency varies from 15 to 79 seconds, instead of something more frequent or constant.

```
"0:00:00, 1.320231, 103.750285"
"0:01:47, 1.320173, 103.750285"
"0:00:31, 1.320011, 103.750303"
"0:00:31, 1.319759, 103.750155"
"0:01:06, 1.319621, 103.749013"
"0:00:31, 1.318957, 103.749081"
"0:00:55, 1.318138, 103.749369"
"0:00:15, 1.318145, 103.749342"
"0:00:21, 1.318292, 103.749508"
"0:00:21, 1.318465, 103.749622"
"0:00:23, 1.318703, 103.749709"
"0:00:21, 1.318757, 103.749722"
"0:01:19, 1.319406, 103.750126"
"0:00:39, 1.319787, 103.750334"
"0:00:22, 1.319784, 103.750348"
"0:01:03, 1.320241, 103.750359"
"0:00:14, 1.320241, 103.750359"
```

Although this quick experiment gave me the conclusion that Telegram is not suitable (at least for running) to be used as a platform for tracking movement related activities, I had other deeper realizations!

### Learnings

1. The ability to perform rapid idea validation where a hypothesis can be tested is powerful.
1. Building a Minimum Viable Product (MVP) probably means implementing it in a simplest way possible, minimizing the act of over engineering.
1. When a hypothesis can be quickly validated, it helps to drive new questions that wouldn't have come to mind, when things are more abstract in the "thinking" phase

Stay safe, 

Till the next experiment