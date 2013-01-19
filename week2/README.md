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
    * 3.3 Arrays
    * 3.4 Hashes
    * 3.5 Ranges
    * 5.3 Iterators
        * Don't worry too much about yield. We'll spend more time on that soon.
        * Just: 5.3.1 and 5.3.2
    * 9.5 Collections
        * Just: 9.5.1, 9.5.2, 9.5.3
        * Don't worry about 9.5.1.2 for now.
* RSpec
    * [(My) RSpec best practices and tips](http://eggsonbread.com/2010/03/28/my-rspec-best-practices-and-tips/)
* RubyGems
    * [How Do I Create And Publish My First Ruby Gem?](http://rubylearning.com/blog/how-do-i-create-and-publish-my-first-ruby-gem/)

### Suggested
* Guard
    * [Hire a Guard for your project](http://www.intridea.com/blog/2011/8/25/hire-a-guard-for-your-project)
* Enumerables
    * The Bastards Book of Ruby : [Enumerables](http://ruby.bastardsbook.com/chapters/enumerables/)

### Additional Reading
* [Semantic Versioning](http://semver.org/)
    * Your final project needs to follow this.
* [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide/blob/master/README.md)
    * A very good reference for generally accepted Ruby code style
* [Make your own gem](http://guides.rubygems.org/make-your-own-gem/)
    * Refers to Test::Unit instead of RSpec, but don't let that bother you!
* [Better Specs](http://betterspecs.org/)

### Lightning Talk ideas
* Your homework solution
* RSpec Matchers
* Discovery with IRB

