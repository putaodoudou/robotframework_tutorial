*** Settings ***
Library  OperatingSystem


*** Variables ***

# Give names for report and log file
# robot -d results --reporttitle "My Cool Report" --logtitle "My Cool Log" tests

# Define all test cases with a certain tag to be critical -> all others are automatically non-critical (default: all TCs are critical)
# robot -d results --critical foo tests

# Give timestamp to report files (are not overwritten anymore)
# robot -d results --timestampoutputs tests

# randomize test suites
# robot -d results --randomize suites tests
# randomize tests
# robot -d results --randomize tests tests

# change loglevel
# Set Debug Level (in test case) or
# robot -d results --loglevel DEBUG tests


*** Test Cases ***
Feature 1 Test 1
    [Tags]  foo
    log  This is test 1 of feature 1

Feature 1 Test 2
    [Tags]  bar
    log  This is test 2 of feature 1
    # directory should exist  c:\\fake\\