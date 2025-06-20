@REM
@REM Copyright 2012-2019 the original author or authors.
@REM
@REM Licensed under the Apache License, Version 2.0 (the "License");
@REM you may not use this file except in compliance with the License.
@REM You may obtain a copy of the License at
@REM
@REM      http://www.apache.org/licenses/LICENSE-2.0
@REM
@REM Unless required by applicable law or agreed to in writing, software
@REM distributed under the License is distributed on an "AS IS" BASIS,
@REM WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@REM See the License for the specific language governing permissions and
@REM limitations under the License.
@REM

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  Gradle start up script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

@rem Add default JVM options here. You may also use JAVA_OPTS and GRADLE_OPTS.
set DEFAULT_JVM_OPTS=

@rem Set to the folder of the Gradle start script.
set APP_HOME=%~dp0

@rem Add default Gradle options here. You may also use GRADLE_OPTS.
set DEFAULT_GRADLE_OPTS=

@rem Detect location of Java.
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
for %%i in (%PATH%) do (
  if exist "%%i\%JAVA_EXE%" (
    set JAVA_HOME=%%i
    goto findJavaFromPath
  )
)
echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.
goto end

:findJavaFromJavaHome
set JAVA_EXE=%JAVA_HOME%\bin\java.exe
if not exist "%JAVA_EXE%" (
  echo.
  echo ERROR: JAVA_HOME is set to an invalid directory.
  echo JAVA_HOME = "%JAVA_HOME%"
  echo Please set the JAVA_HOME variable in your environment to match the
  echo location of your Java installation.
  goto end
)

:findJavaFromPath
set JAVACMD="%JAVA_EXE%"

set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar

if not exist "%CLASSPATH%" (
  echo.
  echo ERROR: Missing Gradle wrapper JAR file (%CLASSPATH%)
  echo Please ensure that the gradle-wrapper.jar file is in the distribution directory.
  goto end
)

"%JAVACMD%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% -classpath "%CLASSPATH%" org.gradle.wrapper.GradleWrapperMain "%*" %DEFAULT_GRADLE_OPTS% %GRADLE_OPTS%

:end
if "%OS%"=="Windows_NT" endlocal