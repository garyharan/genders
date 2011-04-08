# Gender Guesser #

This is a Ruby implementation of the very simple [Gender Guesser by Dr. Neal Krawetz](http://www.hackerfactor.com/GenderGuesser.php).

It is limited in efficacy and quite useful if you're getting anonymous mail from an admirer. Agreeing to meet before analysis of the emails could be disastrous.

## Installation ##

    sudo gem install genders

## Usage ##

    require 'genders'
    analysis = Genders::Formal.analyze("This is a test")
    puts analysis.gender
    puts analysis.percentage # how much of the text was in the gender's class
