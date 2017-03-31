class: inverse, hljs-monokai

# ServiceWorker -  What is it

- Better offline handling
- Caching
- Background loading and sync
- Push notifications
- Alternative to [AppCache](https://www.html5rocks.com/en/tutorials/appcache/beginner/)
- Similiar to
[Webworkers](https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API/Using_web_workers)

---
class: inverse

# ServiceWorker - Requirements

- Currently only supported in Firefox, Chrome and Opera - https://jakearchibald.github.io/isserviceworkerready/
- Needs https, except localhost

## Good to know

- It's a JavaScript Worker, so it's running in a background thread and it can't access the DOM
directly. But it can send messages to the UI and receive messages from them.
- It's terminated when not to use, and restarted when it's needed next
- ServiceWorkers are using Promises and the Fetch API.

---
class: inverse

# The Lifecycle of a ServiceWorker

<img src="https://mdn.mozillademos.org/files/12636/sw-lifecycle.png" alt="Lifecycle" height="525px">


---
class: inverse

# Hijack each request

<img src="https://mdn.mozillademos.org/files/12634/sw-fetch.png" alt="Hijack">

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

