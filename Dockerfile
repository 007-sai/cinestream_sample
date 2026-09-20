# ============================================================
#  CineStream Dockerfile — Beginner Friendly
# ============================================================

# STEP 1: Start with the official Nginx image (Debian-based).
# Nginx is a web server that will serve your HTML file.
FROM nginx:1.27

# STEP 2: Copy our custom Nginx config into the container.
# This tells Nginx how to serve our app.
COPY nginx.conf /etc/nginx/conf.d/default.conf

# STEP 3: Copy our HTML app into the folder Nginx serves.
COPY index.html /usr/share/nginx/html/index.html

# STEP 4: Tell Docker the container uses port 80 (standard web port).
EXPOSE 80

# STEP 5: When the container starts, run Nginx in the foreground.
CMD ["nginx", "-g", "daemon off;"]
