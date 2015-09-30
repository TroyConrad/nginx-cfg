mkdir -p /opt
rm -rf /opt/nginx-cfg
cp -r * /opt/nginx-cfg
ln -fs /opt/nginx-cfg/nginx-cfg.pl /usr/local/bin/nginx-cfg
chmod ugo+rx /usr/local/bin/nginx-cfg
apt-get install libtemplate-perl -y

