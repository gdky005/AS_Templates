// Top-level build file where you can add configuration options common to all sub-projects/modules.

buildscript {
	apply from: 'versions.gradle'

    <#if includeKotlinSupport!false>ext.kotlin_version = '${kotlinVersion}'</#if>
    repositories {
        addRepos(repositories)
    }
    dependencies {
    	//classpath deps.android_gradle_plugin
        
        classpath 'com.android.tools.build:gradle:${gradlePluginVersion}'
        <#if includeKotlinSupport!false>classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"</#if>

        // NOTE: Do not place your application dependencies here; they belong
        // in the individual module build.gradle files

        // classpath deps.android_maven_gradle_plugin //lib publish
    }
}

allprojects {
    repositories {
        addRepos(repositories)
    }
}

task clean(type: Delete) {
    delete rootProject.buildDir
}
