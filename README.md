# Redmine Tidy

*Close Redmine tickets that have not been recently updated.*

This is a script that uses the Redmine API to close issues that have not been updated for a specified number of weeks.

USE AT YOUR OWN RISK!  Make sure you understand what is going on and the fact that this could change the status of every single ticket in your system if you give it the wrong arguments.  The '-n/--dry-run' argument is certainly one you should use a lot!

## Example use

    ./redmine_tidy.py --url http://issues.mycompany.com --key MY_REDMINE_API_KEY --weeks 52

Run the script with --help to see the full syntax.

## Installation & Configuration

Redmine Tidy is a single script (redmine_tidy.py) but makes use of a couple of other python packages.
You can get them with:

    pip install -r requirements.txt

It should work under Python 2.7 or later.

Instead of putting arguments on the command line, you can put them in a JSON config file, or you can do a combination of both.

See the output of './redmine_tidy.py --help' for more information.

