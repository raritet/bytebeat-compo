# Bytebeat compilation

## What is it?

This is meant to be a compilation of found bytebeat tunes. They should be "good" and not just some annoying noise, though there is really no way to enforce such a subjective requirement.

## Why?

The ultimate purpose of this compilation, for me at least, is to use the formulae to train a text-level neural network to create its own bytebeat tunes. However, it could simply be a nice place to keep the world's known bytebeat tunes.

## Deets

Partly because of my ultimate purpose noted above, I have limited myself to basic, single-variable, C bytebeat tunes (formulae) that don't require any includes. At the moment, I'm using a shell script that reads a bytebeat formula in its command line arguments. Therefore certain characters like `"` and `!` cause problems. So I have been avoiding those. But I really should work on the script instead.

Perhaps we can organize this library into the different styles, like clean C, Forth-style, Javascript, and so on.

I have not decided on a good way to store and organize the formulae. Should they be one formula per file? Should I give them an extension like `.bytebeat`? How do we attribute the creator? Maybe they can be sort of like literate programming snippets? Or should the metadata just be in a bit of YAML or TOML front matter? (I think I like the front matter idea, because it's probably easy to parse and can also hold information for future use like bitrate, language, along with whatever other attributions we want.)
