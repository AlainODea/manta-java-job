import sbtassembly.Plugin.AssemblyKeys._

name := "manta-java-job"

version := "1.0"

organization := "com.alainodea"

scalaVersion := "2.10.2"

assemblySettings

assembleArtifact in packageScala := false

mainClass in assembly := Some("com.alainodea.NeedleFinder")

scalacOptions ++= Seq("-unchecked", "-deprecation", "-g:vars", "-explaintypes", "-optimise", "-encoding", "UTF8")

javacOptions ++= Seq("-source", "1.6", "-target", "1.6")
