# RubyCoreLanguage2013
Ruby - The Core Language, Bellevue 2013

## Class Tools
* [Canvas LMS](https://canvas.instructure.com/)
* [Github UWE-Ruby class repository](https://github.com/UWE-Ruby/RubyCoreLanguage2013)
* [uweruby.HipChat.com](https://uweruby.hipchat.com/)

## Code Standards
* Informed by [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide/blob/master/README.md)
* Class requirements
    * Spacing
        * 2 spaces per indent - no tabs
        * spaces in methods only if required to separate ideas
        * one space between methods
    * Case
        * snake\_case variables
        * CamelCase classes
        * SCREAMING\_SNAKE\_CASE for constants
    * Methods
        * named what it returns not what it does (names, not get_names)
        * predicate methods end in a question mark (empty?)
        * dangerous methods end in an exclamation mark, where non-dangerous version exists (uniq and uniq!)
        * rarely more than 5 or 10 LOC
    * omit parenthesis, usually
    * prefer {...} over do...end for single line blocks
    * avoid perl style special variables ($0, $`, etc)