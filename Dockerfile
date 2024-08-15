# Use the official Node.js image
FROM node:14

# Set the working directory
WORKDIR /usr/src/app

# Create a simple Node.js app
RUN echo "const http = require('http');\
const PORT = 3000;\
const server = http.createServer((req, res) => {\
  res.writeHead(200, { 'Content-Type': 'text/plain' });\
  res.end('Hello, World!\\n');\
});\
server.listen(PORT, () => {\
  console.log('Server running on port ' + PORT);\
});" > app.js

# Expose the application port
EXPOSE 3000

# Command to run the application
CMD ["node", "app.js"]
