#!/usr/bin/env sh

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Add default JVM options here. You may also use JAVA_OPTS and GRADLE_OPTS.
# DEFAULT_JVM_OPTS=""

APP_HOME=$(dirname "$0")
APP_NAME=$(basename "$0")
APP_BASE_NAME=$(basename "$0" .sh)

# Add default Gradle options here. You may also use GRADLE_OPTS.
# DEFAULT_GRADLE_OPTS=""

# Set up the classpath for the application
GRADLE_CLASSPATH=$APP_HOME/gradle/wrapper/gradle-wrapper.jar

if [ ! -f "$GRADLE_CLASSPATH" ] ; then
    echo "ERROR: Missing Gradle wrapper JAR file ($GRADLE_CLASSPATH)" >&2
    exit 1
fi

exec "$JAVA_HOME/bin/java" $DEFAULT_JVM_OPTS $JAVA_OPTS -classpath "$GRADLE_CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@" $DEFAULT_GRADLE_OPTS $GRADLE_OPTS