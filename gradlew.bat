@rem
@rem Copyright 2015 the original author or authors.
@rem
@echo off
setlocal enabledelayedexpansion

set DEFAULT_JVM_OPTS="-Xmx64m" "-Xms64m"
set JAVA_EXE=java.exe

%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% neq 0 (
    echo.
    echo ERROR: JAVA_HOME is not set or java is not in PATH.
    echo        Please install JDK 17 from https://adoptium.net/
    exit /b 1
)

set CLASSPATH=%APP_HOME%\gradle\wrapper\gradle-wrapper.jar

%JAVA_EXE% %DEFAULT_JVM_OPTS% ^
  -classpath "%CLASSPATH%" ^
  org.gradle.wrapper.GradleWrapperMain ^
  %*

:end
endlocal
