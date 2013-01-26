# Week 3 Homework
## Quiz
The quiz will posted in Canvas

## Code

Look through these three files for TODO comments. Read every comment in the files, they should contain all the instructions you need.

1. homework/Rakefile
1. homework/spec/blocks\_spec.rb
1. homework/spec/week3\_spec.rb


### Instructions

        # update the course repository
        cd ruby_core/RubyCoreLanguage2013
        git pull origin master

        # go to your github account and create a repository called week3homework
        # NOTE: Best to not check this: "Initialize this repository with a README"
        #       If you did, just run 'git pull origin master' before you run try to push your repository

        # create week3homework directory and initialize it as a git repository
        cd ..
        mkdir week3homework
        cd week3homework
        git init

        # configure your local repository to know about your remote github repository
        git remote add origin <yourgithuburlhere>
        git pull origin master

        # copy the this week's homework to the current directory (ruby_core/vweek3homework
        cp -R ../RubyCoreLanguage2013/week3/homework/* .
        # ruby_core/week3homework directory should now contain lib and spec directories, and other files

        # add copied files to the index
        git add .

        # commit the index to the repository
        git commit -m ‘added homework assignment’

        # push the starting point up to github before making changes (suggested, not required)
        git push origin master

        # install required gems
        bundle

        # edit the .rspec file if you like
        # then just run rspec
        rspec

        # ensure the correct gems are being used
        bundle exec rspec

        # regenerate the guardfile (not required)
        guard init

        # run guard -- it will run rspec
        bundle exec guard


## Reading

### Required

* The Ruby Programming Language
    * 4 Expressions and Operators
    * 6.1 - 6.4 Methods
    * 5.4 Blocks
* Rake
    * [Using Rake to automate tasks](http://www.stuartellis.eu/articles/rake/)

### Suggested
* Ruby for Newbies Screencast: [Iterators and Blocks](http://net.tutsplus.com/tutorials/ruby/ruby-for-newbies-iterators-and-blocks/)

### Additional
* [Programmer Competency Matrix](http://www.indiangeek.net/wp-content/uploads/Programmer%20competency%20matrix.htm)
* Screencast: [The Enumerable Module or How I Fell in Love with Ruby](http://www.slideshare.net/harisamin/the-enumerable-module-or-how-i-fell-in-love-with-ruby)

