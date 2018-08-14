####-Odoo 11 environment install-####
# This script prepares the environment for Odoo 11 installation.
# It has been tested on Ubuntu 16.04 ( Xenial Xerus ).
# "Licence" - "ISC"
# "maintainer"="sgeorge.ml@gmail.com"

# Update Software
apt update
apt full-upgrade -y

# Install dependencies

apt install -y python3-pip
pip3 install Babel decorator docutils ebaysdk feedparser gevent greenlet \
  html2text Jinja2 lxml Mako MarkupSafe mock num2words ofxparse passlib \
  Pillow psutil psycogreen psycopg2 pydot pyparsing PyPDF2 pyserial \
  python-dateutil python-openid pytz pyusb PyYAML qrcode reportlab \
  requests six suds-jurko vatnumber vobject Werkzeug XlsxWriter xlwt xlrd \
  wget nano

apt install -y npm
ln -s /usr/bin/nodejs /usr/bin/node
npm install -g less less-plugin-clean-css

echo "deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main" > /etc/apt/sources.list.d/pgdg.list

wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
apt update
apt install -y postgresql-client-9.6
