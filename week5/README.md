# Week 5 Homework
## Quiz
The quiz will posted in Canvas

## Code

1. build test_gem
1. write spec for TestGem::MyFile.first and TestGem::MyFile.last
    1. those are class methods
    1. they should both take one parameter
    1. MyFile::first should return the first line of a file
    1. MyFile::last should return the last line of a file
1. implement MyFile::first and MyFile::last
1. make bin/test_gem use the TestGem::MyFile class to do something
1. rebuild the gem (after incrementing the version)
1. push it to RubyGems.org (optional)

### Instructions

        # update the course repository
        cd ruby_core/RubyCoreLanguage2013
        git pull origin master

        # create a local repository that is a copy of week5/homework
        # complete the homework
        # create a github repository for week5 and push your code
        # submit the assignment by providing the url to the github repository

## Reading

### Required

* The Ruby Programming Language
    * 5.2, 5.5 - Loops, Altering Control Flow
    * 7.5, 7.7 - Modules, Singleton Methods
    * 9.7.1 Opening Streams (e.g. files)