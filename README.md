
## Intro

This take home project is a part of the Rescale Engineering application process. **The purpose of this project is provide a space of shared knowledge that can serve as a kickoff for deeper discussions.** A candidates proficiency and team fit are evaluated in the follow on discussion and code pairing, rather than the specifics of the code submitted in this project. We recommend spending more time getting clarity on how you think about the solution rather than trying to write "perfect code".

This take home project designed to take between 2-3 hours.

## Instructions

Below is the problem statement that can be shared with candidates. You can share by one of these options:

1. fork or download the repository
2. set the git remote to a new repo under your **own Github** profile (e.g. @stephaniecodes/rescale_lite)
3. check that you have Ruby 3.1.2 installed
	- if not, feel free to change the version in the `.ruby-version` file to any 3.x version
4. set up and run the app
	- run `bundle install`
	- run `./bin/dev`
	- as long as you can get the app running it's fine, don't worry about unrelated errors/issues
5. read the problem statement below
6. write code and push as many commits against that repo as you like
	- don't worry about super clean commits


### What NOT to worry about

Don't worry about making code production-ready. That means you can skip:

- perfecting the look-and-feel or styles
- accessibility
- caching
- existing bugs
- poor security practices

While these things are very important, it's not what we want to chat about during our follow on review. If you find yourself feeling eager to fix something, just take a note of what you *would* do instead. 

Have questions before you get started? Reach out to the hiring manager.

## Problem Statement

In this take home project, we will be adding a feature and making a new view component.

### Task 1 - Add support for questions and answers on ingredients

Here is a brief user story that describes the desired functionality:
> A coman `User` should be able to ask a question about a specific `Ingredient` in a `Recipe`. A brand `User` should be able to provide an answer to that question. Comans can answer more than one question. 

Here is what the view should look like from the Brand's perspective:

<img width="1420" alt="brand-view" src="https://github.com/rescale-supply/rescale_lite/assets/176393/240e77bb-eb98-4e09-ba19-3f07ab063385">

Here is what the view should look like from the Coman's perspective:

<img width="1426" alt="coman-view" src="https://github.com/rescale-supply/rescale_lite/assets/176393/4f9802d4-0a30-4bda-bcc0-97d5793b305d">

**IMPORTANT:** 
- a sample for the view code is located in `/app/views/recipes/_q_and_a_template.html.erb`
- the SQLite DB should already have some data in it

### Task 2 - Create a ViewComponent for the question/answer feature above

The question/answer feature above should use a ViewComponent to render the various states of a question/answer combo. The view component piece is highlighted in pink below:

<img width="1026" alt="view_component" src="https://github.com/rescale-supply/rescale_lite/assets/176393/a42ddd0f-f72a-4948-8b2d-d77e598ee0d2">

## Submission

Push up all of your commits to your repo and add [@kaliara](https://github.com/kaliara) as a collaborator or email a link to the hiring manager.

### Receiving payment

We will pay for up to 3 hours of work at a rate of $100 per hour. We can pay via Paypal, Venmo, ACH, or credit card. Send your payment details to the hiring manager.
