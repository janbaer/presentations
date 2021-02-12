# Presentations

This repository contains the content for my presentations

You can browse the presentations online at
[presentations.janbaer.de](https://presentations.janbaer.de)

The presentations will be created with using Latex and Pandoc.
There's a Makefile with all necessary build targets for creating, viewing but also presenting

## Commands

To create a new presentation just create a new folder and a Markdown file with the same name as the folder.

You can use the following commands:

- `make TARGET={foldername}` - To build the presentation
- `make view TARGET={foldername}` - To view the presenation with a pdf-viewer
- `make present TARGET={foldername}` - To start the presentation in a presentation mode with using **pdfpc**

## Presentation mode - keys

- C - opens a cloned view for presentation
- P - opens the presenter view to show notes on the primary view

[https://github.com/gnab/remark/wiki/Markdown]

