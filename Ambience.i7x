Version 1 of Ambience by Reason Optional begins here.

"Adds ambient scent and sound to a room or region"

Chapter - Ambience

A thing has a text called scent. Definition: a thing (called the fragrant) is scented if the scent of the fragrant is not "".

A room has a text called scent. Definition: a room (called the fragrant) is scented if the scent of the fragrant is not "".

A region has a text called scent. Definition: a region (called the fragrant) is scented if the scent of the fragrant is not "".

Report the player smelling (this is the new report smelling rule):
	if a scented thing (called the fragrant) can be touched by the player:
		repeat with duster running through the list of scented things which can be touched by the player:
			say "[run paragraph on][the scent of the duster] ";
		say "[paragraph break]";
	otherwise if the location is scented:
		say "[the scent of the noun][paragraph break]";
	otherwise if the location is in a scented region (called the fragrant):
		say "[the scent of the fragrant][paragraph break]";
	otherwise:
		say "[We] [smell] nothing unexpected.[paragraph break]".

The new report smelling rule is listed instead of the report smelling rule in the report smelling rulebook.


A thing has some text called sound. Definition: a thing (called the sonorant) is noisy if the sound of the sonorant is not "".

A room has some text called sound. Definition: a room (called the sonorant) is noisy if the sound of the sonorant is not "".

A region has some text called sound. Definition: a region (called the sonorant) is noisy if the sound of the sonorant is not "".

Report the player listening (this is the new report listening rule):
	if a noisy thing (called the sonorant) can be touched by the player:
		repeat with rattler running through the list of noisy things which can be touched by the player:
			say "[run paragraph on][the sound of the rattler] ";
		say "[paragraph break]";
	otherwise if the noun is noisy:
		say "[the sound of the noun][paragraph break]";
	otherwise if the location is in a noisy region (called the sonorant):
		say "[the sound of the sonorant][paragraph break]";
	otherwise:
		say "[We] [hear] nothing unexpected.[paragraph break]".

The new report listening rule is listed instead of the report listening rule in the report listening to rulebook.


Ambience ends here.

---- DOCUMENTATION ----

This extension allows one to add two new properties to a room or region.

The first one is "scent". Stating that a room's / region's scent is "foo" will reply with "foo" to the command "smell".

A room's scent takes precedence to a region's scent.

The second one is "sound". Stating that a room's / region's sound is "bar" will reply with "bar" to the command "listen".

A room's sound takes precedence to a region's sound.

Example: ** Ambient noises and scents.

	*: "Ambience Test" by Reason Optional

	Include Ambience by Reason Optional.


	Foo is a room. The description is "Foo is both scented and noisy.".

	The scent of Foo is "Smells of foo.".

	The sound of Foo is "Sounds like foo.".


	Bar is north of Foo. The description is "Bar is only noisy.".

	The sound of Bar is "Sounds like bar.".


	Baz is north of Bar. The description is "Baz is only scented.".

	The scent of Baz is "Smells of baz.".


	Qux is north of Baz. The description is "Qux should smell / sound like the region.".


	Xyz is north of Qux. The description is "Xyz should not smell of anything, nor should it sound like anything.".


	Eggs is north of Xyz. The description is "Eggs contains a noisy clock."

	A clock is in Eggs. The description is "The clock is a noisy thing.".

	The sound of the clock is "The clock goes tick-tock.".


	Spam is north of Eggs. The description is "Spam contains a smelly thing."

	Some cheese is in Spam. The description is "The cheese is a fragrant thing."

	The scent of the cheese is "The cheese reeks.".


	Ham is north of Spam. The description is "Ham contains both a noisy thing and a fragrant thing.".

	A bell is in Ham. The description is "The bell is a noisy thing."

	The sound of the bell is "The bell goes ding!".

	A flower is in Ham. The description is "The flower is a fragrant thing.".

	The scent of the flower is "Mmmmm flowers.".


	Snake is north of Ham. The description is "Snake contains a noisy, fragrant thing."

	An aerosol can is in Snake. The description is "The aerosol can is both fragrant and noisy.".

	The sound of the aerosol can is "The aerosol can goes fsssst.".

	The scent of the aerosol can is "The aerosol can emits a chemical odor.".


	Charm is north of Snake. The description is "Charm contains several noisy things.".

	A widget is in Charm. The description is "A widget that makes sounds.".

	The sound of the widget is "The widget goes Bang!".

	A doodad is in Charm. The description is "A doodad that makes sounds."

	The sound of the doodad is "The doodad goes Pop!".


	Strange is north of Charm. The description is "Strange contains several scented things.".

	A thingie is in Strange. The description is "A thingie that smells.".

	The scent of the thingie is "The thingie smells like stuff.".

	A gizmo is in Strange. The description is "A gizmo that smells like things."

	The scent of the gizmo is "The gizmo smells like SCIENCE!".


	The Metasyntactic is a region. Foo, Bar, Baz and Qux are in the Metasyntactic.

	The sound of the Metasyntactic is "A general noise.".

	The scent of the Metasyntactic is "A general smell.".


	Test ambient with "listen / smell".

	Test go with "test ambient / n".

	Test me with "test go / test go / test go / test go / test go / test go / test go / test go / test go / test go / test ambient".

