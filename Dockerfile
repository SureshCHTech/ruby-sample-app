# Use an official Ruby runtime as the base image
FROM ruby:3.0

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy Gemfile and Gemfile.lock to the working directory
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the app runs on
EXPOSE 4567

# Command to run the application
CMD ["ruby", "app.rb"]
