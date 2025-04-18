#!/bin/bash
##############################################################
##  In here you add whatever action should happen after the container ha been created
##  such as exposing the application.
##############################################################
#Load the functions into the shell
source /workspaces/$RepositoryName/.devcontainer/util/functions.sh

#TODO: BeforeGoLive comment this so the Mkdocs are not exposed in the container.
# we want to monitor all interactions of the users in the live github pages.
exposeMkdocs

# Wait for astroshop to be available
waitForAllPods astroshop

#TODO: Expose the App you deployed in here 
exposeAstroshop

printInfoSection "Your dev.container finished starting."