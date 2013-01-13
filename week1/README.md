# Week 1 Homework
## Quiz
The quiz will be posted in a few days, in Canvas

## Code
1. Create a repository from week1 homework folder [here](https://github.com/UWE-Ruby/RubyCoreLanguage2013/tree/master/week1/homework)
1. Fix the failing spec
1. Fix the false positive spec
1. Implement all other pending specs. You add `do..end` to the pending specs, as well as the supporting code to implement them

### Instructions

        # create a place for course files
        mkdir ruby_core

        # clone course repository into a subdirectory
        cd ruby_core
        git clone https://github.com/UWE-Ruby/RubyCoreLanguage2013.git

        # create week1homework folder
        mkdir week1homework

        # the 'ruby_core' folder now contains two sub-folders
        #    RubyCoreLanguage2013 - the repository for entire course
        #    week1homework - the repository you will make for week 1

        # go to your github account and create a repository called week1homework
        # https://help.github.com/articles/creating-a-new-repository

        # initialize your local week1homework directory as a git repository
        cd week1homework
        git init

        # configure your local repository to know about your remote github repository
        # https://help.github.com/articles/adding-a-remote
        # https://help.github.com/articles/which-remote-url-should-i-use
        git remote add origin <yourgithuburlhere>

        # might not be needed, but safe to do
        git pull origin master

        # copy the this week's homework to the current directory (ruby_core/week1homework)
        cp -R ../RubyCoreLanguage2013/week1/homework/* .
        # ruby_core/week1homework directory should now contain Gemfile file and spec folder

        # add copied files to the index
        git add .

        # commit the index to the repository
        git commit -m ‘added homework assignment’

        # push the starting point up to github before making changes (suggested, not required)
        git push origin master

        # time to get started!

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

        # see Git Workflow discussion for details on next steps:
        # 1) make changes
        # 2) add files to index
        # 3) commit changes
        # 4) push changes to github
        # 5) repeat!



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