# Project 3 - Trivia

Submitted by: Natalie Chan

Trivia is a game which player asked questions in random catagories and subject. The goal is typically to answer as many questions correctly as possible to earn points and achieve the highest score.

Time spent: 7 hours spent in total

## Required Features

The following **required** functionality is completed:

- ✅ User can view the current question and 4 different answers
- ✅ User can view the next question after tapping an answer
- ✅ User can answer at least 3 different questions


The following **optional** features are implemented:

- ❌ User can use the vertical orientation of the app on any device
- ✅ User can track the question they are on and how many questions are left
- ✅ User can see how many questions they got correct after answering all questions
- ✅ User should be able to restart the game after they've finished answering all questions

The following **additional** features are implemented:

- [ ] List anything else that you can get done to improve the app functionality!

## Video Walkthrough

<div>
    <a href="https://www.loom.com/share/b0189e51146e48c490ddf766c7924f52">
      <p>Loom Message - 25 June 2025 - Watch Video</p>
    </a>
    <a href="https://www.loom.com/share/b0189e51146e48c490ddf766c7924f52">
      <img style="max-width:300px;" src="https://cdn.loom.com/sessions/thumbnails/b0189e51146e48c490ddf766c7924f52-d32ec845b928a593-full-play.gif">
    </a>
  </div>

## Notes

In this project, I encountered a few main challenges. The first was connecting @IBAction and @IBOutlet to the button/label properly and explicitly. I tried dragging them to the TriviaViewController.swift file and then making the connection in the Attributes Inspector under Outlet Collections. The second challenge involved adding shadows and a corner radius to the question label container. Currently, I have only succeeded in adding rounded corners; the corners appear rounded but without the desired shadow effect. The third challenge was that when I started the project, it lacked the amount of information and detail present in my previous project. I had to create the view controller file and connect it to the Main.storyboard correctly. Additionally, I researched the logic flow for tracking players' questions and assigning an index to each button to keep track of the correct answer.

## License

    Copyright 2025 Shimin Chan

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
