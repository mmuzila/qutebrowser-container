LABEL org.opencontainers.image.source=https://github.com/mmuzila/qutebrowser-container
FROM fedora:latest
RUN dnf install -y qutebrowser
RUN dnf install -y alsa-plugins-pulseaudio
ENV DISPLAY=:0
RUN groupadd -g 1234 nonroot
RUN useradd -g nonroot -u 1234 nonroot
USER nonroot
ENV PULSE_SERVER="unix:/home/nonroot/pulse-socket"
ENTRYPOINT ["qutebrowser"]
