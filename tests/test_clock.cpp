// Test Driven Clock
//  Created by Roie Black on 10/9/2014

#include "catch.hpp"

#include "Clock.h"              // we want to test the Clock class
Clock timex;                    // create a new Clock object
Clock *watch_ptr = &timex;      // create a variable with the address of the object

TEST_CASE( "Test Clock exists", "[clock]") {
    CHECK( watch_ptr != NULL );        // this check will allow tests to continue if it fails
}

TEST_CASE( "Test default constructor" ) {
    REQUIRE( timex.getTime() == 0.0 );
    timex.tick();
    REQUIRE( timex.getTime() == 0.0 );
}

TEST_CASE( "Test step size set" ) {
    timex.setTickSize( 1.0 );
    REQUIRE( timex.getTime() == 0.0 );
    timex.tick();
    REQUIRE ( timex.getTime() == 1.0 );
}

