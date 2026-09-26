# Custom nginx configuration example
# Place .conf files here to auto-load in nginx

# Example: Custom upstream for load balancing
# upstream myapp {
#     server 10.0.0.1:8080;
#     server 10.0.0.2:8080;
# }

# Example: Rate limiting
# limit_req_zone $binary_remote_addr zone=api_limit:10m rate=10r/s;