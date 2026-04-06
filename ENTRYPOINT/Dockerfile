FROM almalinux:9

# You MUST install iputils to get the 'ping' command
RUN dnf install iputils -y

# Keep your ENTRYPOINT and CMD exactly as they were
ENTRYPOINT ["ping"]
CMD ["google.com"]
