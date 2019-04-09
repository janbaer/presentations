---
title: Chrome DevTools
subtitle: A powerful toolbox inside the browser
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
- But each new release contains also a more or less new features for the DevTools

# Advertising for new features

![What's new console](images/chrome-devtools-whatsnew.png){width=10cm}

# Video for each version with the new features

- [What's new in Chrome DevTools 73](https://www.youtube.com/watch?v=uddZX9ZK6wY)
- [What's new in Chrome DevTools 72](https://www.youtube.com/watch?v=XVJxlEdB230)
- [What's new in Chrome DevTools 71](https://www.youtube.com/watch?v=fJxFZO8OEEs)
- [What's new in Chrome DevTools 70](https://www.youtube.com/watch?v=LJq8vg8ktdQ)

# Very good online documentation

- [What's new in Chrome DevTools 74](https://developers.google.com/web/updates/2019/03/devtools)
- [What's new in Chrome DevTools 73](https://developers.google.com/web/updates/2019/01/devtools)
- [What's new in Chrome DevTools 72](https://developers.google.com/web/updates/2018/11/devtools)
- [What's new in Chrome DevTools 71](https://developers.google.com/web/updates/2018/10/devtools)
- [What's new in Chrome DevTools 70](https://developers.google.com/web/updates/2018/08/devtools)

# {.standout}

What's happend since version 70

---

# Best of version 70

- [Live Expressions in the console](https://developers.google.com/web/updates/2018/08/devtools#watch)

. . .

- [Autocomplete Conditional Breakpoints](https://developers.google.com/web/updates/2018/08/devtools#ndb)

---

- [Debug Node.js apps with ndb](https://developers.google.com/web/updates/2018/08/devtools#ndb)

![](images/ndb.png){width=10cm}

# Best of version 71

- [Store DOM nodes as global variables](https://developers.google.com/web/updates/2018/10/devtools#store)

. . .

- [Run **monitorEvents** in the Console to watch an element's events fire](https://developers.google.com/web/updates/2018/10/devtools#bonus)

```{.javascript}
monitorEvents(selector, [...events])
```

# Best of version 72

- [Visual performance metrics](https://developers.google.com/web/updates/2018/11/devtools#metric)

![](images/metrics.png){width=10cm}

---

- [Copy JS path](https://developers.google.com/web/updates/2018/11/devtools#copy)

![](images/copyjs.png){width=10cm}

```{.javascript}
document.querySelector('#demo1')
  .shadowRoot.querySelector('p:nth-child(2)')
```

# Best of version 73

- [Logpoints](https://developers.google.com/web/updates/2019/01/devtools#logpoints)

![](images/logpoint-expression.png){width=10cm}

---

![](images/logpoint-result.png){width=10cm}

---

- [Tooltips in Inspect Mode](https://developers.google.com/web/updates/2019/01/devtools#inspect)

![](images/inspect.png){width=8cm}

---

- [Override custom geolocation](https://developers.google.com/web/updates/2019/01/devtools#geolocation)

. . .

- [Code folding](https://developers.google.com/web/updates/2019/01/devtools#folding)

---

\section{More Tips and Tricks}

---

- Force state - makes states (hover, focus, active) permanent

---


- [Argument hints](https://developers.google.com/web/updates/2018/05/devtools#hints)

![](images/arghints.png){width=10cm}

---

- [Copy as fetch](https://developers.google.com/web/updates/2018/04/devtools#fetch)
![](images/fetch.png){width=10cm}

---

- [Pretty-printing in the Preview and Response tabs](https://developers.google.com/web/updates/2018/02/devtools#pretty-printing)
![](images/preview-prettyprint.png){width=10cm}

---

- View interactive media queries

![](images/media-queries.png){width=10cm}

---

- Record the code-coverage for your JavaScript and CSS

![](images/coverage.png){width=10cm}

---

- [Special Keywords for filtering network requests](https://developers.google.com/web/tools/chrome-devtools/network/reference#filter)

---

\section{Thank you!}
