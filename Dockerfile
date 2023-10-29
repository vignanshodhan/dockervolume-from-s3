# Use a base image with AWS CLI and any other tools you need
FROM amazonlinux:2

# Install AWS CLI
RUN yum install -y aws-cli

# Set environment variables if needed
ENV AWS_ACCESS_KEY_ID= #add your key 
 ENV AWS_SECRET_ACCESS_KEY=#add your key 
 ENV AWS_DEFAULT_REGION=ap-south-1
# Create a directory for your script
WORKDIR /usr/src/app

# Copy your script into the container
COPY copy_s3_to_volume.sh .

# Set execute permissions on the script
RUN chmod +x copy_s3_to_volume.sh

# Define a volume where you want to store your files
VOLUME /data



# Run your script when the container starts
CMD ["./copy_s3_to_volume.sh"]
