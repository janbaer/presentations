---
title: Git - Bringing commits together
subtitle: Afterwards...
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
  - \usepackage[export]{adjustbox}
  - \setbeamercolor{frametitle}{bg=MidnightBlue}
  - '\makeatletter'
  - '\beamer@ignorenonframefalse'
  - '\makeatother'

---

# Question

- Who of you is taking care of what's 

# How to bring it together

- Staging the changes you forgot
- Reading the commit hash of the other commit
- Creating the new commit with adding `--fixup <hash of other commit>`
- Rebasing it interactively with `git rebase -i HEAD~3`
