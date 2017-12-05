= Old Timey

Old Timey is a time-logging system which is based around the time.clock format.

It logs task start and end times into ~/.timelog.

== TODO

  # Tab completion?
  # Better error handling, usage output

== Installation

Installing the tool is done through the use of the provided makefile:

----
sudo make install
----

=== Uninstallation

Sometimes, things just don't work out. To remove the tool, you can use the 
uninstall target of the provided Makefile:

----
sudo make uninstall
----

You can optionally throw your timelog file away too.

WARNING: This irrevocably removes your timelog history.

----
rm ~/.timelog
----

== Usage

To start tracking time on a project:

----
timey in development:testing:sk-754
----

If you're already in a task, this will warn you and _not_ switch tasks. If you
need to handle an interrupt, use `timey int`.

You can clock-out of a task at any time:

----
timey out
----

This results in a new set of lines in the timelog:

----
i 2016-07-21 09:00:00 development:testing:sk-754
o 2016-07-21 09:20:00
----

If you are not currently in a task, no action will be taken and you will be
notified of the issue.

=== Listing all tasks

To list all tasks that have been used in the past, use the "tasks" command:

----
timey tasks catch-up
----

Note that the tasks command requires a pattern to match. To display all tasks
ever, use "." as the pattern:

----
timey tasks .
----

=== Handling interruptions

Interruptions are a fact of life. Old Timey is written with this in mind.

To note that you've had an interruption, use the following command:

----
$> timey int
Interruption category [interruption]?
----

The prompt waits until filled in. Fill it in when the interruption has been 
handled. It then logs the length of the interruption appropriately in the 
timelog.

Note that the default is just "interruption" You're adivsed to categorise
coarsely with this, for example:

----
Interruption type [interruption]: interruption:phone-call
Back on project development:review:sk-123
----

This results in a new addition to the time log:

----
i 2016-07-21 09:00:00 development:testing:sk-754
o 2016-07-21 09:20:00
i 2016-07-21 09:20:00 development:review:sk-123
o 2016-07-21 10:30:00
i 2016-07-21 10:30:00 interruption:phone-call
o 2016-07-21 10:35:00
i 2016-07-21 10:35:00 development:review:sk-123
----

=== Time spent reports

==== Daily

To get a report of today's tasks and the time spent on them, use:

----
$> timey hours
               13:4m  infrastructure:copy-database:warwick
               16:2m  logs
--------------------
               30:0m
----

This will aggregate across tasks with comon colon-separated prefixes.

==== Weekly

A report of the last week's task can be produced:

----
$> timey weekly-hours
               1:26h  development
               30:6m    review:sk-1198
               54:5m    spec:sk-1199
               6:21h  infrastructure
               36:4m    capacity-planning:testing
               13:4m    copy-database:warwick
               22:5m    discussion:pentest-scope
                3:1m    nginx:sforge4
               35:3m    pen-test:integration
                4:1m    quarantine:mmu
               4:25h    sforge4
               2:20h      install
               42:1m      jetty
               1:22h      postgresql
               1:48h  logs
               43:0m  security:risk-assessment:mmu-staging-users
               20:5m  support:help-5071
--------------------
              10:38h
----

=== Monitoring progress


Monitoring your time usage can be useful to make sure you're not spending too
much time on a single task.

You can use Old Timey's monitoring function for this:

----
timey monitor
----

This prints a summary of your time usage this day every 5 minutes.
