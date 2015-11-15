Test Driven Simulation
######################

..  include::   /references.inc

We will build this simulation project using :term:`Test Driven Development`
using Phil Nash's catch.hpp_ system.

We have discussed the basic approach used in this system, so you need to review
that lecture to make sure you know the basics.

Where to Start
**************

We will be building a simulation class and a number of supporting classes as
well. The main application we will write is very simple. It will create one
simulation object and activate that object by calling a ``run`` method. We will
provide a way to configure this simulation object, but as a start, all we need
is a very small ``main.cpp`` to get started. Should we test this? Not really, since
the point of out testing is to test the classes we build. At this point, we do
not need to test the entire application we will build.

Our basic starting program is a small variation on the classic "Hello, World":

..  literalinclude::    ../src/main.cpp
    :linenos:
    :caption: main.cpp

Our First Real Test
*******************

The first test we will build simple confirms that the test program works. We
will need a simple file to set up out testing system. That one looks like this:

..  literalinclude::    ../tests/test_main.cpp
    :linenos:
    :caption: test_main.cpp (1)

You will never need to touch this file. 

Here is a sanity check test, that we will use to make sure the test system
works:

test_sanity.cpp

..  literalinclude::    ../tests/test_sanity.cpp
    :linenos:
    :caption: tests/test_sanity.cpp (2)

Using the ``Makefile`` included in this project, we can make sure everything
works by doing this:

..  code-block:: text

    $ make
    $ make run
    $ make test

Creating the Clock Class
************************

We will need a clock to manage the passing of time in our simulation. Here is a
test for the class we will build:

..  literalinclude:: ../tests/test_clock.cpp
    :linenos:
    :caption: tests/test_clock.cpp (3)

This test simply verifies that we can create an object from this new class. It
will fail since we have not even written the class yet.

Default Constructor
===================

We will add a default constructor that sets up an initialized clock object. For
this exercise, the initial values will simply be set to something rational:

..  literalinclude::    ../tests/test_clock.cpp
    :linenos:
    :caption: tests/test_clock.cpp (4)
    :lines: 14-18

And here is the new code we need in our clock class implementation file:

..  literalinclude::    ../lib/Clock.cpp
    :linenos:
    :caption:   lib/Clock.cpp (5)
    :lines: 1-10

At this point we have a basic class set up, but the clock is not useful yet.

Setting the Tick Step
=====================

The biggest problem is that we have no way to change the time step. Since we
initialize the class with a value of zero for the ``tick_size`` attribute, we
definitely need to change that. 

..  literalinclude::    ../include/Clock.h
    :linenos:
    :caption: include/Clock.h (6)

Adding a Reset
==============

Let's add one more method that lest us reset the timer. Although we probably
will not use the actual time very often, it might prove useful for output
functions:

..  literalinclude::    ../tests/test_clock.cpp
    :linenos:
    :caption: tests/test-clock.cpp (7)

And the implementation we need is here:

..  literalinclude::    ../lib/Clock.cpp
    :linenos:
    :caption: lib/Clock.cpp (8)

..  vim:filetype=rst spell:

