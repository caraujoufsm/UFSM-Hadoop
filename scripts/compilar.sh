#!/bin/bash

hadoop com.sun.tools.javac.Main Ozone.java
jar cf Ozone.jar Ozone*.class
rm *.class
