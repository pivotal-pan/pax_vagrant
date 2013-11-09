execute "create the magical talismanic file" do
  user 'root'
  creates '/opt/cetas/.cfg_DONOT_REMOVE'
  command 'touch /opt/cetas/.cfg_DONOT_REMOVE'
end

execute "start the services" do
  user 'root'
  command "/opt/cetas/bin/start_services.sh"
end

execute "stop the firewall" do
  user 'root'
  command '/etc/init.d/iptables stop'
end
