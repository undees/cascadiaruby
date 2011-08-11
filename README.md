# Cascadia Ruby Conf

This repository contains the code examples I presented in my talk, "Playfulness at Work: A Real Serious Message(tm) with Ruby as the Medium" at Cascadia Ruby Conf 2011.  [Video][video] and [slides][slides] are available (or just scroll down).

Here's what's in the various subdirectories:

1. Dealing With Custy Data Formats and Protocols in a Lighthearted Way

   Sometimes, you need to pick apart a data file that got thrown together in an _ad hoc_ way.  You can roll your own parser each time this happens, but it's more fun to dive into grammars and express that data format in clean Ruby code.  This example uses the Parslet library to make sense of a loosely-formatted data file.

2. Scripting Other People's Software (Whether They Know It or Not)

   If you need to automate an application that doesn't support any standard data formats and doesn't have an API, you might be able to get away with smashing away at the user interface.  This example shows how to convert a PNG to a black-and-white BMP in the most contrived way possible: by automating hundreds of mouse clicks in a GUI.

3. Sharing Your Code With Co-workers Without Annoying Them Too Much

   In this section, we show two ways to build a version of Zach Holman's [Boom][boom] command-line utility.  The first is to type `ocra boom.rb` from this subdirectory; the other is to type `jruby -S warble executable jar`.

4. Deploying Your Software to Honest-to-goodness Paying Customers

   The next step after building standalone Ruby programs is building installers.  This section was a quick exploration of the following question: what would it take to transform the [Rails Installer][rails] into a custom installer for a command-line app?

## Video

<video id="html5-player" controls poster="http://confreaks.net/system/videos/images/616/preview/vlcsnap-2011-08-03-10h50m32s192.png?1312393878">
  <source src="http://confreaks.net/system/assets/datas/1798/original/616-cascadiaruby2011-playfulness-at-work-a-real-serious-messagetm-with-ruby-as-the-medium-small.mp4" />
</video>

## Slides

<object id="__sse8822158" width="425" height="355">
  <param name="movie" value="http://static.slidesharecdn.com/swf/ssplayer2.swf?doc=playfulnessatwork-110810180811-phpapp02&rel=0&stripped_title=playfulness-at-work&userName=undees" />
  <param name="allowFullScreen" value="true"/> <param name="allowScriptAccess" value="always"/>
  <embed name="__sse8822158" src="http://static.slidesharecdn.com/swf/ssplayer2.swf?doc=playfulnessatwork-110810180811-phpapp02&rel=0&stripped_title=playfulness-at-work&userName=undees" type="application/x-shockwave-flash" allowscriptaccess="always" allowfullscreen="true" width="425" height="355"></embed>
</object>

[boom]:   http://zachholman.com/boom
[rails]:  http://railsinstaller.org
[video]:  http://confreaks.net/videos/616-cascadiaruby2011-playfulness-at-work-a-real-serious-messagetm-with-ruby-as-the-medium
[slides]: http://www.slideshare.net/undees/playfulness-at-work
