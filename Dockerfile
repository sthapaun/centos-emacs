FROM centos
MAINTAINER Sthapaun Patinthu <contact@sthapaun.com>


# Install emacs
RUN yum update; yum install emacs; yum install wget; yum install zip; yum install unzip; cd ~/; mkdir Desktop; cd Desktop; wget https://storage.googleapis.com/sc-tmp/emacs.tar.gz; tar -zxvf emacs.tar.gz; cd emacs; cp emacs ~/.emacs; cp -r emacs.d ~/.emacs.d; rm ~/Desktop/emacs.tar.gz; rm -r ~/Desktop/emacs;

CMD ["/bin/bash"]