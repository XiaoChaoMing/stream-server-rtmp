FROM alfg/nginx-rtmp:latest

# Copy custom nginx config
COPY nginx.conf /etc/nginx/nginx.conf

RUN mkdir -p /tmp/hls && chmod -R 777 /tmp/hls

# Test nginx configuration
RUN nginx -t

# Expose RTMP and HLS ports only
EXPOSE 1935 8080


CMD ["nginx"]
