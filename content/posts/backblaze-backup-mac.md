---
title: "Backblaze Backup Mac"
date: 2020-03-09T22:51:00+08:00
draft: false
---

How often do we think about backing up our data? Our laptop seems to run fine and mobile phones rarely die on us. However, the moment it crashes, we start to panic and wished that:

1. We did a backup
2. We did a backup
3. We did a backup
4. The backup is working

My trusty ol' MacBook Pro has served me well since late 2013 and I get complacent when it comes to making sure that all my data are regularly backed up. What can go wrong, right? The laptop is functioning well and using a Solid State Drive (SSD)...

Realizing how much a risk I was taking, I decided to buy insurance. After looking around, it seems like [Backblaze](https://www.backblaze.com/) suited my needs in terms of `Price` and `Security`.

![blackblaze-phassphrase](/img/backblaze-backup/backblaze-passphrase.png)

On their [website](https://www.backblaze.com/backup-encryption.html), there is an option available for the customer to add a passphrase, which you can think of as a `secret code` that will further secure your data. Without the `passphrase` there is no way for someone who steals the data from Backblaze's server to be able to see your content.

This is really an plus point on top of other security measures such as encrypting your data at rest, transferring them securely between your machine and cloud etc. 

It is always a fine line between security and usabiity so this simple use of a passphrase kind of balance them well. 

![blackblaze-pricing](/img/backblaze-backup/backblaze-pricing.png)

I opted for the yearly option which gives me a savings of USD$12, enough for me to enjoy more Toastbox!

![blackblaze-download-app](/img/backblaze-backup/backblaze-download-app.png)

Once payment is made, you will be presented with a link to download the Backblaze app. I found the process to be very user friendly as the app will login and get started immediately after installation completes. 

![blackblaze-2fa](/img/backblaze-backup/backblaze-2fa.png)

I strongly recommend setting up `Two-Factor Authentication` under [Account Settings](https://secure.backblaze.com/account_settings.htm) to keep your account well secured and protected against weak passwords. The last thing you want happening is your data being download through the Backblaze web portal. 

One pro tip though! If you have `passphrase` enabled, an attacker is still unable to access/download your files. So set it!

![blackblaze-app-passphrase](/img/backblaze-backup/backblaze-app-passphrase.png)

In the app, under `Settings --> Security`, you will be able to add a `passphrase` of maximum 50 characters. The more the merry so I would recommend creating a strong one that you can remember or a 50 characters one if you have a password manager to store it securely (not on paper please).

![blackblaze-backup-progress](/img/backblaze-backup/backblaze-backup-progress.png)

One thing really confused about the app is the backup progress. It always show `143,545MB` for my Macbook which is very very little. My data is using at least 50GB of storage so that made me very concerned.

After letting the backup run overnight, it seems like the web portal reported the correct amount of data backup while the app seems to be forever confused. 


I hope that this article showed you how easy it is to backup your laptop data regularly!

If you are keen to use Backblaze, this referral link https://secure.backblaze.com/r/001gqj which gives you one free month of subscription!


~ KennyD