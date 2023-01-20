
REM ---------------------------
REM Build alcinoe-appsflyer.jar
REM ---------------------------

echo [36mBuild alcinoe-appsflyer[0m
type nul > %TMPDependenciesFile%
SET ClassPath="%SDKApiLevelPath%\android.jar"
Call :UPDATE_ClASSPATH "https://repo1.maven.org/maven2" "com.appsflyer" "af-android-sdk" "4.8.17"
SET SourceFiles=%ALBaseDir%\Sources\java\com\alcinoe\appsflyer\*.java
Call :BUILD_JAR "com.alcinoe" "alcinoe-appsflyer" "1.0.0"

