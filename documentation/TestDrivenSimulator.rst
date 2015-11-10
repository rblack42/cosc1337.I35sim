Test Driven Simulation
######################

..  include::   /references.inc

..  tut::
    :path: ../src

We will build this simulation project usinf :term:`Test Driven Development`
using Phil Nash's catch.hpp_ system.

We have discussed thebasic approach use din this system, so you need to review
that lecture to make sure you know the basics.

Where to Start
**************

..  checkpoint:: S1

We will be building a simulation class and a number of supporting classes as
well. The main application we will write is very simple. It will create one
simulation object and activate that object by calling a ``run`` method. We will
provide a way to configure this simulation object, but as a start, all we need
is a very small main.cpp to get started. Should we test this? Not really, since
the point of out testing is to test the classes we build. At this point, we do
not need to test the entire aplicaiton we will build.

Our basic starting program is a small variation on the classic "Hello, World":

..  literalinclude::    ../src/main.cpp
    :linenos:

Our First Real Test
*******************

The first test we will build simple confirms that the etst program works. We will need a simple file to set up out testing system. That one liiks like this:

test_main.cpp

..  literalinclude::    ../tests/test_main.cpp

You will never need to touch this file. 

Here is a sanity check test, that we will use to make sure the test system works:

test_sanity.cpp

..  literalinclude::    ../tests/test_sanity.cpp

Using the ``Makefile`` include din this project, we can make sure everything works by doing this:

..  code-block:: text

    $ make
    $ make run
    $ make test


