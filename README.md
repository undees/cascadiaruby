# Cascadia Ruby Conf

This repository contains the code examples I presented in my talk, "Playfulness at Work: A Real Serious Message(tm) with Ruby as the Medium" at Cascadia Ruby Conf 2011.

[Video][video] | [Slides][slides]

Here's what's in the various subdirectories:

1. <p>Dealing With Custy Data Formats and Protocols in a Lighthearted Way</p><p>Sometimes, you need to pick apart a data file that got thrown together in an _ad hoc_ way.  You can roll your own parser each time this happens, but it's more fun to dive into grammars and express that data format in clean Ruby code.  This example uses the Parslet library to make sense of a loosely-formatted data file.</p>
2. <p>Scripting Other People's Software (Whether They Know It or Not)</p><p>If you need to automate an application that doesn't support any standard data formats and doesn't have an API, you might be able to get away with smashing away at the user interface.  This example shows how to convert a PNG to a black-and-white BMP in the most contrived way possible: by automating hundreds of mouse clicks in a GUI.</p>
3. <p>Sharing Your Code With Co-workers Without Annoying Them Too Much</p><p>In this section, we show two ways to build a version of Zach Holman's [Boom][boom] command-line utility.  The first is to type `ocra boom.rb` from this subdirectory; the other is to type `jruby -S warble executable jar`.</p>
4. <p>Deploying Your Software to Honest-to-goodness Paying Customers</p><p>The next step after building standalone Ruby programs is building installers.  This section was a quick exploration of the following question: what would it take to transform the [Rails Installer][rails] into a custom installer for a command-line app?</p>

[boom]:   http://zachholman.com/boom
[rails]:  http://railsinstaller.org
[video]:  http://confreaks.net/videos/616-cascadiaruby2011-playfulness-at-work-a-real-serious-messagetm-with-ruby-as-the-medium
[slides]: http://www.slideshare.net/undees/playfulness-at-work
