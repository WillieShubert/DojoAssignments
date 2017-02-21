if re.search(r"a.*a"):
 print("That string had at least two 'a's in it!")
else:
 print("No more than one 'a' found!")


# . 	Matches any character except a new line.
# \w  	Matches any letter or digit.
# * 	The pattern can appear any number of times, including none.
# + 	The pattern before it can appear 1 or more times.

import re
def get_matching_words(regex):
 words = ["aimlessness", "assassin", "baby", "beekeeper", "belladonna", "cannonball", "crybaby", "denver", "embraceable", "facetious", "flashbulb", "gaslight", "hobgoblin", "iconoclast", "issue", "kebab", "kilo", "laundered", "mattress", "millennia", "natural", "obsessive", "paranoia", "queen", "rabble", "reabsorb", "sacrilegious", "schoolroom", "tabby", "tabloid", "unbearable", "union", "videotape"]
 matches = []
 for word in words:
 	if re.search(regex,word):
 		matches.append(word)
 return matches
