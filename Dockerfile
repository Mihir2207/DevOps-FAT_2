FROM ubuntu:latest

# Create directory
RUN mkdir fat2

# Set working directory correctly
WORKDIR /fat2

# Create files
RUN touch sample1.txt sample2.txt

# List files
RUN ls

# Add text to file
RUN echo "hello this is Mihir and this is my Dockerfile for DevOps FAT2" > sample1.txt

# Read file
RUN cat sample1.txt

# Copy file contents
RUN cp sample1.txt sample2.txt

# Remove file
RUN rm sample2.txt

# Show date
RUN date

# Final list of files
RUN ls

CMD ["whoami"]
