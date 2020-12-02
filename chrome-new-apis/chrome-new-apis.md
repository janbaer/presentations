---
title: Chrome New APIs
subtitle: Things you can do right now with Chrome
author: Jan Baer
institute: 
lang: de
date: \today

theme: metropolis
colortheme: metropolis
linkcolor: blue
themeoptions:
  - sectionpage=progressbar
  - subsectionpage=progressbar
  - numbering=fraction
  - block=fill
  - background=light
  - progressbar=foot
header-includes:
  - \setbeamercolor{frametitle}{bg=MidnightBlue}
  - '\makeatletter'
  - '\beamer@ignorenonframefalse'
  - '\makeatother'

---

# Chrome Releases

- Every two months a new Chrome version will be released with a lot features for viewing websites.
- Two interesting pages for observing what's new and also what will come soon
  - [Google WebDevelopers](https://developers.google.com/web/updates/2020)
  - [chromestatus.com](https://www.chromestatus.com/features)
- If you don't have time to read, watch the [Youtube Channel](https://www.youtube.com/c/GoogleChromeDevelopers/videos)
- If you want to be a Beta tester, use [Origin Trials](https://developers.chrome.com/origintrials/#/trials/active) - [See also](https://github.com/GoogleChrome/OriginTrials/blob/gh-pages/developer-guide.md)

---

- **Attention** The most features are limited to Chrome, so check if the feature can widely used!
  - [Firefox Platform Status](https://platform-status.mozilla.org/)
  - [ Microsoft Edge Platform Status](https://developer.microsoft.com/en-us/microsoft-edge/status/)
  - [Webkit (Safari) Feature Status](https://webkit.org/status/)

---

# CookieStore Api (87)

The Cookie Store API exposes HTTP cookies to service workers and offers an asynchronous alternative to document.cookie.

- Read and Write cookies async
- Register for cookie change events (logout on another page) [Example](https://wicg.github.io/cookie-store/explainer.html#get-change-events-in-documents)

- [CookieStore on chromstatus.com](https://www.chromestatus.com/features/5658847691669504)
- [W3C Draft](https://wicg.github.io/cookie-store/#CookieStore-getAll)
- [Introducing: The Async Cookie Store API](https://medium.com/nmc-techblog/introducing-the-async-cookie-store-api-89cbecf401f)

---

# FileSystemAccess Api (86 - started in Chrome 78)

This API enables developers to build powerful apps that interact with other (non-Web) apps on the user’s device via the device’s file system. After a user grants a web app access, this API allows the app to read or save changes directly to files and folders selected by the user. Beyond reading and writing files, this API provides the ability to open a directory and enumerate its contents, as well as store file and directory handles in IndexedDB to later regain access to the same content.

- [FileSystemAccess on chromestatus.com](https://www.chromestatus.com/features/6284708426022912)
- [Article on web.dev](https://web.dev/file-system-access/)
- [See it in action](https://googlechromelabs.github.io/text-editor/)

---

# StreamingRequests with fetch (87)

- Send large binary files like audio, video or pDF as streams 
- Lets you start a fetch before the request body is ready
- Now, you can start sending content, even while you're still generating it
- Requires HTTP2 by default

- [Streams API on chromestatus.com](https://www.chromestatus.com/features/5298733486964736)
- [See Jake Archibalds article about it](https://web.dev/fetch-upload-streaming/)

# Cross-Screen Window Placement (Origin Trial)

Adds new screen information APIs and makes incremental improvements to existing window placement APIs, allowing web applications to offer compelling multi-screen experiences.

- [Multiscreen API on chromestatus.com](https://www.chromestatus.com/features/5252960583942144)
- [Article on web.dev](https://web.dev/multi-screen-window-placement/)
- Request origin trial token or `#enable-experimental-web-platform-features`

# Screen Wake Lock API

The Screen Wake Lock API provides a way to prevent devices from dimming or locking the screen when an application needs to keep running.

- [Article on web.dev](https://web.dev/wake-lock/)
- [W3C Draft](https://w3c.github.io/screen-wake-lock/)

# Bonus

- [Browser-level image lazy-loading for the web since Chrome 77](https://web.dev/browser-level-image-lazy-loading/)
- [Demo with Cats](https://mathiasbynens.be/demo/img-loading-lazy)

# {.standout}

Questions?

---

\section{Thank you!}
