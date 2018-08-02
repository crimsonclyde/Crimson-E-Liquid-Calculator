#!/bin/bash
CrimsonClydes E-Liquid Calculator
Author: CrimsonClyde
Date: August 2018


# **************************************************************
#            *** Variables ***
# **************************************************************

# User variables
# If you don't sit behind a proxy comment out all 4 line with an #
#puser='USERNAME'                         # Proxy Username
#ppass='PASSWORD'                         # Proxy Password
#proxy='my.proxy.tld'                     # Proxy Name
#port='8080'                              # Proxy Port


# **************************************************************
#            *** Madness starts here ***
# **************************************************************
# Program Variables
progname='Clydes E-Liquid Calculator - Installer'
elc='elc.sh'



# **************************************************************
#            *** Include Functions ***
# **************************************************************
. global.func
. installer.func


# **************************************************************
#            *** The order of the function ***
# **************************************************************

clear_screen               # First we want a fresh clear screen
print_logo                 # Print the logo
ins_br                     # Blank lines
inst_info                  # Display Install Information
ins_br                     # Blank lines

macos_version_chk         # Check macOS version
disk_space_chk            # Check disk space <90%
set_shell_proxy           # Sets system proxy for installation and brew
confirm_hb_inst           # Confirm Homebrew installation & install it
install_newt              # Installing newt/whiptail
exec_rights               # Give main program execute rights
call_elc                  # End and start ELC
