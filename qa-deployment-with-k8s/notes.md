# Intro

- Erste Praesentation im November 2020 intern (auf English), danach bei Linux Stammtisch (auf Deutsch)
- 2 Major changes seit dem und Anpassungen der Präsentation
- Präsentation beschreibt meinen Lösungsweg, basierend auf meinem Wissensstand über K8s der sich im letzten Jahr natuerlich weiterentwickelt hat.
- Viele der von mir erabeiteten Lösungen lassen sich sicher anders und vielleicht auch besser erreichen.

# What we had before
- Wir verwenden a config npm package
- qa1-3 als environment variable gesetzt und pro env eigene configuration fuer urls. Urls statisch definiert. Ich sage spaeter, warum das wichtig ist
- 68*3=204 - 74*6=444

# How UI was looking
- Screenshot aus Cockpit

# How about using Kubernetes
- In 2019 und auch davor viel ueber K8s gehoert und gelesen, aber nie ausprobiert
- Januar 2020 fuer einen 2 Tages Workshop zu K8s angemeldet
- Dabei viel gelernt und auch erste Ideen gesammelt
- Aber ohne praktische Verwendung ist das gelernte schnell weg
- Wer von Euch schon Kubernetes verwendet, weiss das, was ich auf der naechsten Folie erzaehle, sicher schon

# How services and apps are communicating with each other
- Press 5 Highlighter to show where veru-123456 will be injected

# How to authorize
- Useraccounts fuer Zugriff uber Kubectl, service-accounts fuer Zugriff ueber Api (und pro Namespace intern)
- Es gibt vorgefertigte Rollen

# Dynamic creation of urls
- Eigens bu-config package fuer Ersetzung der Platzhalter beim initialen laden der config

# Rewriting of Urls
- NSQ hoert intern auf andere endpunkte als im Ingresscontroller definiert (remove eventbus)



