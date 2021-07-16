#!/bin/bash
# Decrypt files 
gpg -d node-red.tar.gz.gpg >node-red.tar.gz
gpg -d deconz.tar.gz.gpg >deconz.tar.gz
# Unarchive and uncompresss files
tar xvzf node-red.tar.gz
tar xvzf deconz.tar.gz
