# Comment Convert — static site served by nginx:alpine
# Designed for Coolify on cc.builddaily.app

FROM nginx:alpine

# Replace the default server block with ours (Pretty URLs + security headers)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Only copy the static assets that should be public — no Dockerfile, no .git, no README
COPY index.html privacy.html terms.html logo.svg /usr/share/nginx/html/

EXPOSE 80

# nginx's default CMD already runs the daemon in the foreground
