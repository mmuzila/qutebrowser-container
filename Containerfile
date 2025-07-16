LABEL org.opencontainers.image.source=https://github.com/mmuzila/qutebrowser-container
FROM fedora:latest
RUN dnf install -y qutebrowser
ENV DISPLAY=:0
RUN groupadd -g 1234 nonroot
RUN useradd -g nonroot -u 1234 nonroot
USER nonroot
ENTRYPOINT ["qutebrowser"]
