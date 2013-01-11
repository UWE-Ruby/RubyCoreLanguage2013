# Week 1 Homework
## Quiz
The quiz will be posted in a few days, in Canvas

## Code
1. Create a repository from week1 homework folder [here](https://github.com/UWE-Ruby/RubyCoreLanguage2013/tree/master/week1/homework)
1. Fix the failing spec
1. Fix the false positive spec
1. Implement all other pending specs. You add `do..end` to the pending specs, as well as the supporting code to implement them

Example:

        mkdir ruby_class
        cd ruby_class

        # get class repository and name the folder main_repo
        git clone git://github.com/UWE-Ruby/RubyCoreLanguage2013.git main_repo

        # create week1 folder, NOT inside class repository
        mkdir week1homework
        cd week1homework

        # initialize the directory as a git repository
        git init
        git add .
        git commit -m ‘added homework assignment’

        # go to your github account and create a repository for wee1homework
        git remote add origin <yourgithuburlhere>
        git push origin master

        # if that fails do this first
        git pull origin master

        # install required gems
        bundle

        # run one spec file
        rspec --color --format documentation spec/00_rspec_spec.rb

        # run all spec files, with abbreviated parameters
        rspec -c -f d spec

        # default path includes spec folder
        rspec -c -f d

        # 'progress' format is the default when 'documentation' format is not specified
        rspec -c

        # or just
        rspec


## Reading
Lots of reading this week. Don't get too bogged down in Git complexity or low level Ruby implementation details, just make
sure you are picking up the basics and stretching yourself a bit.

### Required
Three items this week. Ruby, RSpec and Git.

* The Ruby Programming Language
    * You can read the relevant sections of chapter 1, 2, and 3,
    * Or... These sections:
        * 1.1 to 1.3
        * 2.1 to 2.3
        * 3.1
        * 3.2.1 to 3.2.5
        * 3.6 & 3.7
        * 3.8.1 to 3.8.4
        * 3.7.5
        * 3.8.6
        * 3.8.7.5
* [RSpec](http://blog.teamtreehouse.com/an-introduction-to-rspec)
* [Git](http://git-scm.com/book) (Sections 1.3, and 2.1 to 2.5)

### Suggested
#### Video
* RSpec
    * Code School: [Testing with RSpec](http://rspec.codeschool.com/levels/1)

### Lightning Talk ideas
* Your homework solution
* RSpec Matchers
* Discovery with IRB