This sample Xcode project shows how to wire an iOS application without
explicit use of the singleton pattern, [which I find mostly harmful][1].
The resulting code exhibits less coupling, lends easier to testing and
copes better with changes (which follows from the loose coupling). It
has been tested in many iOS apps.

[1]: http://zmotula.tumblr.com/post/1390385240/why-singletons-suck
