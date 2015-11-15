#include "catch.hpp"
#include "List.h"

TEST_CASE( "a New list object should report a size of zero" ) {
    List mylist;
    REQUIRE( mylist.getSize() == 0 );
}

