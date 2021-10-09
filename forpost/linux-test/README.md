# linux-test

The Linux test command is a bash shell built in command that can be used to compare values and check file types. The command works by setting the value of a special parameter that can be accessed by way of the $? special parameter. The $/ special parameter is the exit status code of the last command that was run, so the basic idea is conduct some kind of test and if all is well exit with status 0, else exit with some other status.

With this subject I went a little overboard writing a number of other source code examples that are examples of a simple program that does something similar to that of the test command.