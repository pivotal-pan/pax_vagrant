fancy_directories = ["/opt/apache/hadoop-0.20.2-cdh3u5/logs/", "/var/cetasdata"]

fancy_directories.each do |dir|
  directory dir do
    owner "root"
    group "root"
    mode 0777
    action :create
  end
end
