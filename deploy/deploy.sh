#!bin/sh
wget --user=admin --password=admin http://192.168.0.103:8081/repository/Mavenproject/newproject/com/billno/0.0.1-SNAPSHOT/billno-0.0.1-20221120.120055-6.war -P /home/ubuntu/deploy/
#sh /home/ubuntu/apache-tomcat-9.0.69/bin/shutdown.sh
#sh /home/ubuntu/apache-tomcat-9.0.69/bin/catalina.sh stop 5 -force
cd /home/ubuntu/deploy/
ls -lrt
chmod 777 billno-*.war
mv billno-*.war billno.war
chmod a+w billno.war
cp -r billno.war /home/ubuntu/apache-tomcat-9.0.69/webapps/
ls -lrt /home/ubuntu/apache-tomcat-9.0.69/webapps/
ps -ef | grep tomcat
sleep 5
#JENKINS_NODE_COOKIE=dontKillMe sh /home/ubuntu/apache-tomcat-9.0.69/bin/catalina.sh start
#nohup sh /home/ubuntu/apache-tomcat-9.0.69/bin/catalina.sh start &
#nohup sh /home/ubuntu/apache-tomcat-9.0.69/bin/catalina.sh start &
ps -ef | grep tomcat
