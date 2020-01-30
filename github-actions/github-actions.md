---
title: GitHub Actions
subtitle: Running workflows from you GitHub repositories
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

# About workflows

Workflows are custom automated processes that you can set up in your repository to build, test, package, release, or deploy any project on GitHub. With workflows you can automate your software development life cycle with a wide range of tools and services. 

# Howto create it

- You can create more than one workflow in a repository. You must store workflows in the .github/workflows directory in the root of your repository.

- You need to configure workflows using YAML syntax, and save them as workflow files in your repository. Once you've successfully created a YAML workflow file and triggered the workflow, you will see the build logs, tests results, artifacts, and statuses for each step of your workflow.

[Workflow syntax for GitHub Actions](https://help.github.com/en/actions/automating-your-workflow-with-github-actions/workflow-syntax-for-github-actions)

# Workflow example

```yaml
name: Greet Everyone
# This workflow is triggered on pushes to the repository.
on: [push]

jobs:
  build:
    # Job name is Greeting
    name: Greeting
    # This job runs on Linux
    runs-on: ubuntu-latest
    steps:
      # This step uses GitHub's hello-world-javascript-action: https://github.com/actions/hello-world-javascript-action
      - name: Hello world
        uses: actions/hello-world-javascript-action@v1
        with:
          who-to-greet: 'Mona the Octocat'
        id: hello
      # This step prints an output (time) from the previous step's action.
      - name: Echo the greeting's time
        run: echo 'The time was ${{ steps.hello.outputs.time }}.'
```

# Howto trigger workflows

You can configure a workflow to start once:

- An event on GitHub occurs, such as when someone pushes a commit to a repository or when an issue or pull request is created.
- A scheduled event begins.
- An external event occurs. (Webhooks)

# Howto use GitHub events

```yaml
# Trigger on push
on: push
```

```yaml
# Trigger the workflow on push or pull request
on: [push, pull_request]
```

# Howto schedule it

```yaml
on:
  schedule:
    - cron:  '0 * * * *'
```

# Define virtual environments

- Windows Server 2019
- Ubuntu 18.04
- macOS Catalina 10.15

```yaml
runs-on: ubuntu-latest
```

# Define your build environment

```yaml
strategy:
  matrix:
    node-version: [12.x]
```

# Define one or more jobs with steps

- [Example](https://github.com/janbaer/mdwiki/blob/master/.github/workflows/deploy.yml)

# Use shell commands

You can use all commands that you can use in a Linux shell

# Use predefined actions

[GitHub Marketplace](https://github.com/marketplace?type=actions)

# Use secrects for sensitive configuration data

\includegraphics[height=150pt]{./images/github-secrets.png}

# {.standout}
Thank you...

