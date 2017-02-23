FROM zeit/linux-desktop-base:latest

# install firefox
RUN apk --no-cache add firefox-esr wbar feh xclock

# configure fluxbox
ADD fluxbox/menu /usr/share/fluxbox/menu
ADD fluxbox/keys /usr/share/fluxbox/keys
ADD fluxbox/init /usr/share/fluxbox/init
ADD fluxbox/startup /usr/share/fluxbox/startup
ADD fluxbox/apps /usr/share/fluxbox/apps
ADD init-env.sh /init-env.sh

RUN cp -r /usr/share/fluxbox /home/alpine/.fluxbox
RUN chown alpine:alpine /home/alpine/.fluxbox

RUN chmod a+x /home/alpine/.fluxbox/startup
RUN chmod a+x /init-env.sh

# configure x apps
ADD bg.png /bg.png
ADD .wbar /home/alpine/.wbar
RUN chown alpine:alpine /home/alpine/.wbar
