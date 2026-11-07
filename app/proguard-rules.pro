# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.kts.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile
# --- Lite build keep rules (R8 minify enabled) ---
-keep class net.sf.sevenzipjbinding.** { *; }
-keep class rikka.shizuku.** { *; }
-dontwarn net.sf.sevenzipjbinding.**
-dontwarn org.glavo.kala.**
-dontwarn org.tukaani.**
-keep class com.google.gson.** { *; }
-keepattributes Signature, *Annotation*
