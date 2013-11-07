fancy_directories = %w(/opt/apache/hadoop-0.20.2-cdh3u5/logs/
/var/cetasdata
/var/cetasdata/zookeeper
/var/cetasdata/hdfs
/var/cetasdata/hdfs/tmp
/var/cetasdata/hdfs/tmp/dfs
/var/cetasdata/hdfs/tmp/dfs/namesecondary)

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
