# Week 6 Homework
## Quiz
The quiz will posted in Canvas

## Code

1. extend your test_gem
    1. define your own exception class to handle a missing config file
    1. when the gem's binary is run
        1. if the parameter '--init' is passed:
            1. call TestGem::init_config
            1. write a default config file to current directory
            1. config file should be YAML
            1. the config file values should be
                1. default_file_name = 'default_file.txt'
                1. supported_types = ['txt', 'pdf']
        1. if no parameter is passed:
            1. call TestGem::configure and pass a hash of configuration values
            1. read in the config file from current directory
            1. raise the exception you defined if config file is missing
            1. values from file should be used to set @default_file_name and @supported_types
    1. rebuild the gem after updating the version
    1. push it to RubyGems.org

### Instructions

        # update the course repository
        cd ruby_core/RubyCoreLanguage2013
        git pull origin master

        # create a local repository that is a copy of final_project/test_gem
        # complete the homework
        # create a github repository for week6 and push your code
        # submit the assignment by providing the url to the github repository

## Reading

### Required

* The Ruby Programming Language
    * 5.6 Exceptions and Exception Handling
    