class: inverse, hljs-monokai

# ServiceWorker -  Introduction

- Alternative to [AppCache](https://www.html5rocks.com/en/tutorials/appcache/beginner/)
- Similiar to
[Webworkers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Using_web_workers)
- Better offline handling
- Caching for faster response on slow networks
- Background loading and sync
- Push notifications (https://w3c.github.io/push-api/)

---
class: inverse

# ServiceWorker - Requirements

- Currently only supported in Firefox, Chrome and Opera - https://jakearchibald.github.io/isserviceworkerready/
- Needs https (except localhost)

## Good to know

- It's terminated when not to use, and restarted when it's needed next
- ServiceWorkers are using Promises and the Fetch API.

## Global objects:

- self - The instance of the ServiceWorker
- cache - The object for caching requests by key
- importScript - A function to import external scripts (sw-toolboox)

---
class: inverse

# The Lifecycle of a ServiceWorker

- Register the ServiceWorker.js in your **index.html** (returns a registration object)
- Install - prefetch static files
- Activate - remove old versions of your cache
- Fetch - Hijack each request between your the browser and any server

<img src="https://mdn.mozillademos.org/files/12634/sw-fetch.png" alt="Hijack" height="300px">

- Sync - Trigger the sync event from the the UI and load it int the background

---
class: inverse

# ServiceWorker - How to use it

- [The offline cookbook by Jake Archibald](https://jakearchibald.com/2014/offline-cookbook/#on-install-as-a-dependency)
- [The ServiceWorker cookbook](https://serviceworke.rs/)
- [ServiceWorker guides on
MDN](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API/Using_Service_Workers)

## ServiceWorker - Additional helpers

- [sw-toolbox](https://github.com/GoogleChrome/sw-toolbox)
- [sw-helpers](https://github.com/GoogleChrome/sw-helpers/tree/master/packages/sw-precaching)

---
class: inverse

# How to start a background sync

Trigger the sync event from the frontend

```javascript
navigator.serviceWorker.ready.then(function(reg) {
  return reg.sync.register('myFirstSync');
});
```

Listen in your service-worker.js for the sync event

```javascript
self.addEventListener('sync', function(event) {
  if (event.tag == 'myFirstSync') {
    event.waitUntil(doSomeStuff());
  }
});
```

Or do a periodic sync

```javascript
navigator.serviceWorker.ready.then(function(registration) {
  registration.periodicSync.register({
    tag: 'get-latest-news',         // default: ''
    minPeriod: 12 * 60 * 60 * 1000, // default: 0
    powerState: 'avoid-draining',   // default: 'auto'
    networkState: 'avoid-cellular'  // default: 'online'
  });
});
```

---
class: inverse

# More code

- [ServiceWorker Demos](https://github.com/w3c-webmob/ServiceWorkersDemos)
- [Offline Wikipedia by Jake Archibald](https://github.com/jakearchibald/offline-wikipedia)
- [Speed up ServiceWorker with Navigation Preloads](https://developers.google.com/web/updates/2017/02/navigation-preload)
- [Introducing Background Sync](https://developers.google.com/web/updates/2015/12/background-sync)
- [Push notifications with
ServiceWorkers](https://developers.google.com/web/fundamentals/getting-started/codelabs/push-notifications/)
- [Background synchronization
explained](https://github.com/WICG/BackgroundSync/blob/master/explainer.md)
- [push-api-demo](https://github.com/chrisdavidmills/push-api-demo)

