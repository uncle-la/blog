---
title: "How I Built a $119 Standing Desk"
date: 2020-08-09T15:41:53+08:00
draft: false
---

Recently, I have been thinking about getting a `Standing Desk` as part of `Work From Home (WFH)` setup (Just an excuse to buy one lol). The first step was using an [Active sitting chair](/posts/active-sitting-chair/) to reduce slouching while seated.

A quick Google for `Standing desk` gives us an idea of the cost, ranging between $300 to $1000 that translates into an [add-on](https://www.amazon.sg/Quick-Stand-Desktop-Spring-Height/dp/B07SCY7LDY), a [hand crank height adjustment](https://www.ikea.com/sg/en/p/skarsta-desk-sit-stand-white-s39324819/) or [fully motorized table](https://theomnidesk.com/products/omnidesk-pro-wildwood).

### So how did I built one for $119?

---

I came across a post in our local Hardware community FB group:

![frame-hackware-post](/img/119-standing-desk/frame-hackware-post.png#c)

I quickly put on my engineering hat and ran through the checklist (virtual) on whether it is going to be worth the effort.

```
✅ Full desk frame is available
✅ Motor is working
✅ Touch controller is working
❓ New motor controller "works", somewhat
❓ Requires a table top
```

After a comprehensive evaluation, it seems like a relatively feasible hack to get this working instead of adding waste to the dumpster. A table top can be easily purchased and mounted to the frame and the new motor controller _might_ work with some debugging.

Touched based with Tim and arranged to pick up the frame all the way in the East. He kindly walked through the various parts available and helped to move this 20+kg beast down to the car.

![frame-transport](/img/119-standing-desk/frame-transport.jpeg)

Settled for a quick lunch (cos hand itchy already) and put together the entire frame to test and figure out what is likely the issue.

![frame-initial-setup](/img/119-standing-desk/frame-initial-setup.jpeg)

The new controller kept giving an `ERR2` prompt on the display and was not able to move the frame up/down. It seems like this version is meant for a frame with dual-motor and obviously having only 1 motor connected is not gonna work... At this point, what do we do next? Open up the faulty controller and see what's wrong!

After years of hacking on things, I cultivated a habit to always take photos of the item in its original state before butchering it. This allows us to "rewind the tape" and see what the original configuration was instead of doing the "I think i can remember" stunt.

![controller-overview](/img/119-standing-desk/controller-overview.jpeg)

It looks like there is something broken with the `Power Supply Unit (PSU)` and the next step is to measure the DC voltage. 

#### NOTE: Poking around a live circuit connected to AC supply possesses high risk. Do not attempt repairs unless you know what you are doing.

Another mandatory photo of how the wires line-up so that I can assemble everything back without a risk of wrong wiring.

![controller-wiring-closeup](/img/119-standing-desk/controller-wiring-closeup.jpeg)

It is very clear at this point that the `32Vdc` is not available from the PSU, which explains why the motor controller did not power up. Checking for the basic, fundamental stuff in Engineering is a systematic way of troubleshooting but we often overlook the obvious.

![controller-no-power](/img/119-standing-desk/controller-no-power.jpeg)

Well... What next? PSU is broken so swap a PSU then! Basically transplant the working PSU from the dual-motor controller to the single-motor controller board that we need.

{{< youtube JLBP2iVOYes >}}


---
After getting the motorized frame working, it was already Sunday evening and the project had to be "shelf-ed" till the next weekend.

Bought a 120cm x 80cm white stained oak veneer BEKANT table top from IKEA that is used for their own brand of [BEKANT Desk](https://www.ikea.com/sg/en/p/bekant-desk-sit-stand-white-stained-oak-veneer-white-s29325777/)

Price tag? **$119** 😊

The first step for any OCD person is to perfectly centre-align the frame against the table top.

![top-alignment](/img/119-standing-desk/top-alignment.jpeg)

Having a set square helps!

![top-markings](/img/119-standing-desk/top-markings.jpeg)

With my father's help, the table top was secured to the frame in no time..

![top-screw-frame](/img/119-standing-desk/top-screw-frame.jpeg)

BUT... when you get too excited, something is often missed out. There is the cable tray sitting separated from the frame. Doh.

![top-missed-tray](/img/119-standing-desk/top-missed-tray.jpeg)

Another experiment that I did was to mount the display/control unit flushed against the edge of the table so that no one would bump into it while walking.

![desk-display](/img/119-standing-desk/desk-display.jpeg)

Say HI! to my $119 standing desk!

![desk-complete](/img/119-standing-desk/desk-complete.jpeg)