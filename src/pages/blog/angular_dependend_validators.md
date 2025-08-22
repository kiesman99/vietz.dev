---
layout: ../../layouts/MarkdownPostLayout.astro
title: Angular dependent Validators
description: Sometimes Validators need to be dependend on each other. In this article we will look into a method to write a dependent Validator in Angular
tags:
  - angular
  - validator
  - reactive_forms
  - template_driven_forms
---

## Scenario

You have a search form with two input fields "ID" and "Name". You want to accept the following combinations:

| Name | Id  | Valid |
| ---- | --- | ----- |
| ✅   | ✅  | ✅    |
| ✅   | 🚫  | ✅    |
| 🚫   | ✅  | ✅    |
| 🚫   | 🚫  | 🚫    |

Now you need to have a validation that is errornous for ID and Name when nothing is filled in but is valid when either one or both are filled. Normally validators in angular check only the value of the field the validator is bound to. In the following code snippet I will show a Validator that looks via the parent group into a given sibling control.

