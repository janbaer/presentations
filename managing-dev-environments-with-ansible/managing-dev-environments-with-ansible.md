---
title: Managing dev environments with Ansible
subtitle: How to keep your dev environment with Ansible and Dotfiles maintenable
author: Jan Baer, LeadDeveloper, CHECK24
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

# {.standout}

Questions?
sli.do code #41521

# What is Configuration as Code

- Configuration as code is the formal migration of config between environments, backed by a version control system.
- Reproducible and repeatable configuration steps
- Use commits as documentation why you made any change
- Transferable to other systems
- Reduces the effort to setup a new machine for a developer

# Why managing your dev environment with Ansible

- Support for many different operating systems
- Support for many different Linux distributions
- Providing all kind of modules for installing hard- and software

# What about dotfiles

- User-specific application configuration is traditionally stored in so called dotfiles (files whose filename starts with a dot).
- Under Windows aka Poshfiles (Powershellfiles)
- It is common practice to track dotfiles with a version control system
- It's for configuration files that will be changed more often
- Just syncing it with one command

# {.standout}

[Demo](https://youtu.be/FuGSO6nDG40)

# {.standout}

Now let's look into the code

# Other interesting projects

- [Automated ArchLinux](https://github.com/id101010/ansible-archlinux)
- [Archsible](https://github.com/DasFranck/Archsible)
- [LearnLinuxTV](https://github.com/LearnLinuxTV/personal_ansible_desktop_configs)
- [NixOS](https://github.com/dejanr/nixos)
- [Some inspirations for dotfiles](https://wiki.archlinux.org/index.php/Dotfiles#User_repositories)

# {.standout}

Questions?

---

\section{Thank you!}

