# sample-spring-gcp-pubsub-subscriber

This is a simple project for reading from a pub sub subscription.

Required to use this code is a GCP account that has pub sub enabled as well as 
a service account that has access to pub/sub subscriptions. 

## Building and Running
You will want to update application.properties to include location of your gcp service account key as a json file and add your 
google project id there as well. 

Then build and package the application using 
```
mvn compile package -Dmaven.test.skip
```

Once built, you can run 
```
java -jar target/demo-0.0.1-SNAPSHOT.jar
```
You can specify your project id on the as an environment variable as well:

```
GOOGLE_CLOUD_PROJECT=someProject-id java -jar target/demo-0.0.1-SNAPSHOT.jar
```
