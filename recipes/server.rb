package 'httpd' do
 action :install
end

file 'var/www/html/index.html' do
 content "Welcome to the homepage, the stats for this web server are: <br>
 HOSTNAME: #{node['hostname']} <br>
 IPADDRESS: #{node['ipaddress']} <br>
 CPU: #{node['cpu']['0']['mhz']} <br>
 MEMORY: #{node['memory']['total']}
 "
 action :create
end


service 'httpd' do
 action [:enable, :start]
end
