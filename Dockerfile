# langfuse-server/Dockerfile
 
# Use the base image from the docker-compose file
FROM langfuse/langfuse:latest

RUN npm install npm@10.8.3
# Expose port
EXPOSE 3000
 
# Set environment variables
ENV TELEMETRY_ENABLED=${TELEMETRY_ENABLED:-true}
ENV LANGFUSE_ENABLE_EXPERIMENTAL_FEATURES=${LANGFUSE_ENABLE_EXPERIMENTAL_FEATURES:-false}
ENV AUTH_AZURE_ALLOW_ACCOUNT_LINKING=true
 
# Define build arguments
ARG AUTH_AZURE_AD_CLIENT_ID_ARG
ARG AUTH_AZURE_AD_CLIENT_SECRET_ARG
ARG AUTH_AZURE_AD_TENANT_ID_ARG
ARG DATABASE_URL_ARG
ARG NEXTAUTH_SECRET_ARG
ARG NEXTAUTH_URL_ARG
ARG SALT_ARG
 
