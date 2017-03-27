class: inverse, hljs-monokai

# ServiceWorker -  What is it

- Better offline handling
- Caching
- Background loading and sync
- Push notifications
- Alternative to [AppCache](https://www.html5rocks.com/en/tutorials/appcache/beginner/)

---
class: inverse

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

# ServiceWorker - How to use it

- [The offline cookbook by Jake Archibald](https://jakearchibald.com/2014/offline-cookbook/#on-install-as-a-dependency)
- [The ServiceWorker cookbook](https://serviceworke.rs/)
- [ServiceWorker guides on
MDN](https://developer.mozilla.org/en-US/docs/Web/API/Service_Worker_API/Using_Service_Workers)

## ServiceWorker - Additional helpers

- [sw-toolbox](https://github.com/GoogleChrome/sw-toolbox)
- [sw-helpers](https://github.com/GoogleChrome/sw-helpers/tree/master/packages/sw-precaching)

## More code

- [ServiceWorker Demos](https://github.com/w3c-webmob/ServiceWorkersDemos)
- [Offline Wikipedia by Jake Archibald](https://github.com/jakearchibald/offline-wikipedia)
- [Speed up ServiceWorker with Navigation Preloads](https://developers.google.com/web/updates/2017/02/navigation-preload)

