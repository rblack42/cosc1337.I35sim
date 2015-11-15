Creating a Linked List Class
############################

If we are going to follow the :term:`TDD` philosophy, we must start this adventure by
writing a test that will fail. Since we have not written any code for out class
yet, this should be simple. We could just create a test that simply builds a
list object. However, running this test is not going to be very interesting,
even when we do write the class. At the very least, we can ask the list to
report its size if we add a method for this:

..  literalinclude::    ../tests/test_list.cpp
    :linenos:
    :caption: tests/test_list.cpp (1)

To make this test pass, we need to create the basic class header file, and the
first method in the class. Note that we will also need a default constructor to
initialize the ``size`` attribute we define for the class.

..  literalinclude::    ../include/List.h
    :linenos:
    :caption: include/List.h (2)

And here is the start on our class implementation file:

..  literalinclude::    ../lib/List.cpp
    :linenos:
    :caption: lib/List.cpp (3)


