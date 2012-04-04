# README

I added a simple model called Post that has state_machine behaviour. The only gem (other than
the standard Rails ones) I've added is the state_machine one, and I've ensured that it's the
latest release.

I've also added a Test::Unit class with three tests that show the behaviour
in question: -

1. The first test shows that the initial state is not being set

2. The second test shows that Brent's hack works (as expected)

3. The third test shows that the publish events works as expected

Give me a shout if there's anything else you need :)
