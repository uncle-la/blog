---
title: "Mysterious DJI Spark issue"
date: 2020-02-10T12:57:47+08:00
draft: false
---


Few week ago, my brother-in-law passed me a DJI Spark to play. The unit has not been used for 2 over years so the natural thing to do is to charge all the batteries up before exploring further.

I left the drone batteries charging while heading out for an errand but a quick test at night indicated they are not charged.. (scratches head and go to bed)

### The mysterious red light

This is the time to RTFM.... Red light on the battery charging hub basically indicated either a battery or hub issue.. hmm.. ok at least I have a clue that something is having an error but what next?

![dji-spark-microusb-charge](/img/dji-spark-battery-issue/dji-spark-microusb-charge.jpg)

Ok.. Maybe attempting to charge the battery while it is attached to the drone would work.

EH?! 1st green light, 2nd green light, loop. Doesn't look right.. Never mind let's leave it to charge for a couple of hours while I go out for lunch gathering. 

Mehhhh :S. Still not working?! Something must be really weird. _start thinking out of the box_

Engineer mind speaking: 

> Maybe the battery was overly-discharged and the hub is refusing to charge it.. How about we power up the drone using the DC power supply, wire up the battery data communications pins and see what the drone says?

![dji-spark-jumper](/img/dji-spark-battery-issue/dji-spark-jumper.jpg)

HOORAY! Drone boots up but battery is not charging hmmm....

![dji-spark-jumper-closeup](/img/dji-spark-battery-issue/dji-spark-jumper-closeup.jpg)

Yes.. I did a lot of please don't try this at home stuff but.. that's what I do all the time hacking my equipment, lol.

So the DJI Go mobile app is complaining that battery is not found. ┬┬ノ( º _ ºノ)

Fine.. There are 2 batteries right? Time to sacrifice one to figure out what's the heck is going on. _googles battery teardown_

![battery-opened](/img/dji-spark-battery-issue/battery-opened.jpg)

Ripping the casing apart with the trusty ol' iFixit kit. DJI kind of made it water tight and the only way to open is to break some plastic at the edge.

![battery-charger-rubberband](/img/dji-spark-battery-issue/battery-charger-rubberband.jpg)

Speaking of hacks... Rubberband works super well to temporarily hold charging cables

![battery-charger-level](/img/dji-spark-battery-issue/battery-charger-level.jpg)

The charger is saying that batteries are _actually_ charged and now I am getting very suspicious on what is really the issue. Inserting the charged battery into the drone still did not power it on. Super perplexed.

![arduino-smb-log](/img/dji-spark-battery-issue/arduino-smb-log.png)

I even connected the battery data communication port to an Arduino to read data using the SMB protocol but it is not all that useful/cryptic with the use of wrong register values probably.

After hacking for 6 hours straight without a conclusion, going to bed was the only sensible thing to do.

Searching online the next morning, I found [this article](https://www.theregister.co.uk/2017/08/22/dji_spark_brick_threat_1_sep_firmware_update/) that in particular states:

```
If the firmware of either the aircraft or the battery is not updated by September 1, Spark will not be able to take off.
```

This pretty much suggested that no amount of effort is going to get these "intelligent" batteries working (again).


### Afterthoughts

1. Somehow the dots are not aligning in my mind and articles online seems to suggest that the 1st generation of intelligent battery exhibited this issue.

1. The battery PCB board has a BQ9003 Battery Management System (BMS) IC chip that no longer have a datasheet available. One thing I know for sure is that the manufacturer is TI.

1. With the mandatory firmware upgrade enforced by DJI, my guess is that some parameters in the BMS were incorrectly set and eventually render the battery useless. More like the BMS will report some issue/flag that disallows usage or charging.

1. Know something about this hardware weirdness? Drop me a text!
