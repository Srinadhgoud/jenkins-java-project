# Use the official Node.js image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Create a simple Node.js app
RUN echo "const http = require('http');" >> app.js && \
    echo "const PORT = 3000;" >> app.js && \
    echo "const server = http.createServer((req, res) => {" >> app.js && \
    echo "  res.writeHead(200, { 'Content-Type': 'text/plain' });" >> app.js && \
    echo "  res.end('Hello, World!\\n');" >> app.js && \
    echo "});" >> app.js && \
    echo "server.listen(PORT, () => {" >> app.js && \
    echo "  console.log('Server running on port ' + PORT);" >> app.js && \
    echo "});" >> app.js

# Expose the application port
EXPOSE 3000

# Command to run the application
CMD ["node", "app.js"]
