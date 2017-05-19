##Yatzy

Yatzy is a game involving five die where each player rolls the dice, aiming to score the highest possible score across a series of different hands. The first part of this exercise involves a scoring component that can accept the value of each die for a given roll and returns a potential score for whichever hand you aim to score against. If the roll does not match an available hand the scoring component should return a zero for that hand (for example, you are attempting to score a Yatzy hand but end up with a distribution of `3, 3, 5, 5, 1`)

###Objective

Refactor the scoring component for the game of Yatzy. You can choose between the ruby or elixir implementation.

Some goals to stay close to:

- Plan to spend no more than 2-3 hours of time
- Keep changes to the public api to a minimum; there is a theoretical game engine that should have a simple and consistent calling pattern to the scoring component
- Use git to capture the intentions behind your changes

Keep in mind that the provided implementation is partial - you are not expected to solve for the hands that aren't already implemented and covered by the test suite.
