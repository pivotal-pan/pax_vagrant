fancy_directories = ["/opt/apache/hadoop-0.20.2-cdh3u5/logs/", "/var/cetasdata", "/var/cetasdata/zookeeper"]

fancy_directories.each do |dir|
  directory dir do
    owner "root"
    group "root"
    mode 0777
    action :create
  end
end

execute "format hdfs" do
  user 'root'
  creates '/var/cetasdata/hdfs/name'
  command 'export JAVA_HOME=/opt/oracle/java && /opt/apache/hadoop/bin/hadoop namenode -format'
end
