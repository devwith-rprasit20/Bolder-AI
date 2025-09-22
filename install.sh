#!/bin/bash

# Rockfall Detection System - Installation Script
echo "🚀 Installing Rockfall Detection System..."

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js (v14 or higher) first."
    echo "   Visit: https://nodejs.org/"
    exit 1
fi

# Check Node.js version
NODE_VERSION=$(node -v | cut -d'v' -f2 | cut -d'.' -f1)
if [ "$NODE_VERSION" -lt 14 ]; then
    echo "❌ Node.js version 14 or higher is required. Current version: $(node -v)"
    exit 1
fi

echo "✅ Node.js $(node -v) detected"

# Install dependencies
echo "📦 Installing dependencies..."
npm install

if [ $? -eq 0 ]; then
    echo "✅ Dependencies installed successfully"
else
    echo "❌ Failed to install dependencies"
    exit 1
fi

# Create environment file
echo "⚙️ Creating environment configuration..."
cat > .env << EOL
REACT_APP_API_URL=http://localhost:8000/api
REACT_APP_MAP_CENTER_LAT=-33.9249
REACT_APP_MAP_CENTER_LNG=18.4241
REACT_APP_UPDATE_INTERVAL=5000
EOL

echo "✅ Environment configuration created"

# Build the application
echo "🔨 Building the application..."
npm run build

if [ $? -eq 0 ]; then
    echo "✅ Application built successfully"
else
    echo "❌ Failed to build application"
    exit 1
fi

echo ""
echo "🎉 Installation completed successfully!"
echo ""
echo "To start the development server:"
echo "  npm start"
echo ""
echo "To build for production:"
echo "  npm run build"
echo ""
echo "The application will be available at:"
echo "  http://localhost:3000"
echo ""
echo "For more information, see README.md"

