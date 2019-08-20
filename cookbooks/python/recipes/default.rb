#
# Cookbook:: python
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

apt_update 'update_sources' do
  action :update
end

package 'python'
package 'python-pip'

# execute 'pip-install' do
#   command 'pip install --upgrade pip'
#   command 'pip install -r /home/ubuntu/UberApp/requirements.txt'
# end

package 'libncurses5-dev'



# UberApp Requirments.txt          #UberApp Requirments-test.txt
# Flask==0.10.1                   # pytest==2.5.2
# Jinja2==2.7.3                   # pytest-cov==1.6
# MarkupSafe==0.23                # betamax==0.4.0
# Werkzeug==0.9.6                 # flake8==2.1.0
# gnureadline==6.3.3              # pep8==1.5.6
# itsdangerous==0.24              # pyflakes==0.8.1
# rauth==0.7.0                    # coveralls==0.4.2
# requests==2.3.0
# wsgiref==0.1.2
# gunicorn==18.0
# Flask-SSLify==0.1.4

# pip install install-requires
# pip install -r requirements.txt

execute 'Flask plugin install' do
  command 'pip install flask==0.10.1'      #Flask Plugin
end

execute 'Jinja2 plugin install' do
  command 'pip install Jinja2==2.7.3'      #Jinja2 Plugin
end

execute 'markupsafe plugin installs' do
  command 'pip install markupsafe==0.23'    #Markupsafe Plugin
end

execute 'werkzeug plugin install' do
  command 'pip install werkzeug==0.9.6'     # Werkzeug Plugin
end

execute 'gnureadline plugin install' do
  command 'pip install gnureadline==6.3.3' # gnureadline Plugin
end

execute 'itsdangerous plugin install' do
  command 'pip install itsdangerous==0.24'  # itsdangerous Plugin
end

execute 'rauth plugin install' do
  command 'pip install rauth==0.7.0'        #rauth plugin
end

execute 'requests plugin install' do
  command 'pip install requests==2.3.0'     #requests plugin
end

execute 'wsgiref plugin install' do
  command 'pip install wsgiref==0.1.2'      #wsgiref plugin
end

execute 'gunicorn plugin install' do
  command 'pip install gunicorn==18.0'      #gunicorn plugin
end

execute 'Flask-SSLify plugin install' do
  command 'pip install Flask-SSLify==0.1.4'     #Flask-SSLify plugin
end

execute 'pytest plugin install' do
  command 'pip install pytest==2.5.2'           #Pytest Plugin
end

execute 'pytest coverage plugin install' do
  command 'pip install pytest-cov==1.6'         #Pytest coverage Plugin
end

execute 'betamax plugin install' do
  command 'pip install betamax==0.4.0'          #betamax plugin
end

execute 'flake8 plugin install' do
  command 'pip install flake8==2.1.0'       #flake8 plugin
end

execute 'pep8 plugin install' do
  command 'pip install pep8==1.5.6'         #pep8 plugin
end

execute 'pyflakes plugin installs' do
  command 'pip install pyflakes==0.8.1'       #pyflakes plugin
end

execute 'coveralls plugin install' do
  command 'pip install coveralls==0.4.2'      #coveral plugin
end
