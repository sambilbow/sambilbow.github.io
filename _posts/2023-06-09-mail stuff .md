---
layout: post
title: "🥱 linux and email"
date: 2023-06-09 00:00:00-0000
description: "getting oauth2 and ews working on linux"
tags: open-source linux software
related_posts: false
img: /assets/img/evolution.jpg
---

- I really don't like webmail! 
- It frustrate, confuses, and distracts me! 
- I like dedicated mail clients!

Since something got deprecated somewhere, and someone doesn't want to do X because of Y, theres only one specific way to set up institutional email on Linux, no more IMAP, no more POP; and this method is via Exchange Web Services. Theres a more informational and less ranty account [here](https://douglasrumbaugh.com/post/microsoft-email-on-linux/).

- On GNOME: `yay -S evolution evolution-ews`
- On KDE: `yay -S kmail kmailtransport kmail-account-wizard mbox-importer akonadi-import-wizard`

## Evolution (GNOME Project email client)
- Add an account with type `EWS`
- Include 'Username' in `username@domain.ac.uk` format
- Set 'Host URL' to `https://outlook.office365.com/ews/exchange.asmx`
- Don't click 'Fetch URL'
- Do not collect $200, and do not pass GO
- Set 'Authentication' to OAuth2
- Override settings
- Check 'Use protocol version 2.0'
- Click 'OK'

<div class="row">
    <div class="col-sm mt-1 mt-md-0">
        {% include figure.html path="assets/img/ews.png" title="Screenshot showing Evolution EWS account settings" class="img-fluid rounded z-depth-1" %}
    </div>
</div>

## KMail (KDE Plasma email client)
- I gave up on KDE
- It's really ugly
- Cluttered base UI