
test -f /etc/bootstrapped >> exit
yum install -y git gcc gcc-c++ openssl-devel readline-devel zip bzip2 sqlite-devel
git clone git://github.com/sstephenson/rbenv.git /usr/local/src/rbenv
echo 'export RBENV_ROOT="/usr/local/src/rbenv"' >> /etc/profile.d/rbenv.sh
echo 'export PATH="${RBENV_ROOT}/bin:${PATH}"' >> /etc/profile.d/rbenv.sh
echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh
source /etc/profile.d/rbenv.sh
git clone git://github.com/sstephenson/ruby-build.git /usr/local/src/rbenv/plugins/ruby-build
rbenv install 2.2.2
rbenv global 2.2.2
gem update --system
gem install bundler
#sudo systemctl stop firewalld
sudo firewall-cmd --zone=public --add-port=3000/tcp --permanent
sudo firewall-cmd --reload
localectl set-locale LANG=ja_JP.UTF-8 
date > /etc/bootstrapped
