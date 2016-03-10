FROM linuxserver/baseimage

ENV PATH="$PATH:/opt/qt56/bin"

# specify apt packages to install
ENV APTLIST="qt56-meta-full"
ENV BUILD_APTLIST=""

# install packages
RUN add-apt-repository -y ppa:beineri/opt-qt56-alpha-trusty && \
apt-get update -q && \
apt-get install \
$APTLIST $BUILD_APTLIST -qy && \

# cleanup 
cd / && \
apt-get purge --remove $BUILD_APTLIST -y && \
apt-get autoremove -y && \
apt-get install $APTLIST -qy && \
apt-get clean -y && \
rm -rf /var/lib/apt/lists/* /var/tmp/* /tmp/* 
