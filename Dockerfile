# Use the official JMeter image as the base
FROM justb4/jmeter:5.5

# Copy JMeter plugins from the root directory of the repository to the appropriate directory in the container
COPY jmeter-plugins-cmd-2.2.jar /opt/apache-jmeter-5.5/lib/ext/
COPY jmeter-plugins-manager-1.10.jar /opt/apache-jmeter-5.5/lib/ext/
COPY jmeter-plugins-filterresults-2.2.jar /opt/apache-jmeter-5.5/lib/ext/
COPY jmeter-plugins-synthesis-2.2.jar /opt/apache-jmeter-5.5/lib/ext/
COPY cmdrunner-2.0.jar /opt/apache-jmeter-5.5/lib/ext/
COPY loggingutils-1.0.jar /opt/apache-jmeter-5.5/lib/ext/
COPY commons-logging-1.1.3.jar /opt/apache-jmeter-5.5/lib/ext/
COPY jmeter-plugins-cmn-jmeter-0.6.jar /opt/apache-jmeter-5.5/lib/ext/
COPY jmeter-plugins-cmd-2.2.jar /opt/apache-jmeter-5.5/lib/
COPY loggingutils-1.0.jar /opt/apache-jmeter-5.5/lib/
COPY commons-logging-1.1.3.jar /opt/apache-jmeter-5.5/lib/

#copy Jmeterplugin to bin
COPY JMeterPluginsCMD.sh /opt/apache-jmeter-5.5/bin/


# Set the working directory
WORKDIR /opt/apache-jmeter-5.5

# Default command
CMD ["jmeter", "--version"]

#verify installation
RUN jmeter -v
