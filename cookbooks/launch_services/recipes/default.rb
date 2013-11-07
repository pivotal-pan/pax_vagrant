execute "start all services" do
  user 'root'
  command '/opt/cetas/bin/start_services.sh'
end
