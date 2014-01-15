FROM thomaswelton/ubuntu-node

MAINTAINER Thomas Welton

ADD . /var/www

# Add our supervisor config
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

# Expose ports
EXPOSE 22 80
CMD ["/usr/bin/supervisord"]

