# Week 2 Homework
## Quiz
The quiz will be posted in a few days, in Canvas

## Code
The spec for a Contacts class has been written. (homework/spec/contacts_spec.rb)

Your job is to:

1. Write the missing code to make the specs pass
1. Use the rspec, bundler and guard tricks you learned in class

### Instructions

        # update the course repository
        cd ruby_core/RubyCoreLanguage2013
        git pull origin master

        # go to your github account and create a repository called week2homework

        # create week2homework directory and initialize it as a git repository
        cd ..
        mkdir week2homework
        cd week2homework
        git init

        # configure your local repository to know about your remote github repository
        git remote add origin <yourgithuburlhere>
        git pull origin master

        # copy the this week's homework to the current directory (ruby_core/week2homework)
        cp -R ../RubyCoreLanguage2013/week2/homework/* .
        # ruby_core/week2homework directory should now contain lib and spec directories, and other files

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
    * These sections:
        * 3.3 Arrays
        * 3.4 Hashes
        * 3.5 Ranges
        * 5.3 Iterators and Enumerable Objects
            * Don't worry too much about yield. We'll spend more time on that soon.
            * Just: 5.3.1, 5.3.2, 5.3.4
