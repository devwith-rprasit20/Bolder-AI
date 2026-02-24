# Setup Guide - Rockfall Detection System



Before installing the Rockfall Detection System, ensure you have the following installed:

### Required Software
1. **Node.js** (v14 or higher)
   - Download from: https://nodejs.org/
   - Choose the LTS (Long Term Support) version
   - This will also install npm (Node Package Manager)

2. **Git** (optional, for version control)
   - Download from: https://git-scm.com/

## Installation Methods

### Method 1: Automated Installation (Recommended)

#### Windows
1. Double-click `install.bat`
2. Follow the on-screen instructions
3. The script will automatically install dependencies and build the application

#### Linux/macOS
1. Open terminal in the project directory
2. Run: `chmod +x install.sh && ./install.sh`
3. Follow the on-screen instructions

### Method 2: Manual Installation

1. **Open Command Prompt/Terminal**
   - Windows: Press `Win + R`, type `cmd`, press Enter
   - macOS: Press `Cmd + Space`, type `Terminal`, press Enter
   - Linux: Press `Ctrl + Alt + T`

2. **Navigate to Project Directory**
   ```bash
   cd C:\rockfall
   ```

3. **Install Dependencies**
   ```bash
   npm install
   ```

4. **Create Environment File**
   Create a `.env` file in the root directory with:
   ```
   REACT_APP_API_URL=http://localhost:8000/api
   REACT_APP_MAP_CENTER_LAT=-33.9249
   REACT_APP_MAP_CENTER_LNG=18.4241
   REACT_APP_UPDATE_INTERVAL=5000
   ```

5. **Start Development Server**
   ```bash
   npm start
   ```

6. **Open Browser**
   Navigate to: http://localhost:3000

## Running the Application

### Development Mode
```bash
npm start
```
- Runs the app in development mode
- Automatically opens browser at http://localhost:3000
- Hot reloading enabled for development

### Production Build
```bash
npm run build
```
- Creates optimized production build
- Files are generated in `build/` directory
- Ready for deployment to web server

### Testing
```bash
npm test
```
- Launches test runner in interactive watch mode
- Runs all test suites

## Troubleshooting

### Common Issues

#### 1. "npm is not recognized"
- **Solution**: Install Node.js from https://nodejs.org/
- Ensure Node.js is added to system PATH

#### 2. "Port 3000 is already in use"
- **Solution**: Kill the process using port 3000
- Windows: `netstat -ano | findstr :3000` then `taskkill /PID <PID> /F`
- macOS/Linux: `lsof -ti:3000 | xargs kill -9`

#### 3. "Module not found" errors
- **Solution**: Delete `node_modules` folder and `package-lock.json`
- Run `npm install` again

#### 4. Map not loading
- **Solution**: Check internet connection
- Ensure firewall allows access to map tiles

### Performance Issues

#### Slow Loading
- Close unnecessary browser tabs
- Check available RAM (minimum 4GB recommended)
- Disable browser extensions temporarily

#### High CPU Usage
- Reduce update interval in `.env` file
- Close other applications
- Check for background processes

## Configuration

### Environment Variables

| Variable | Description | Default Value |
|----------|-------------|---------------|
| `REACT_APP_API_URL` | Backend API URL | `http://localhost:8000/api` |
| `REACT_APP_MAP_CENTER_LAT` | Map center latitude | `-33.9249` |
| `REACT_APP_MAP_CENTER_LNG` | Map center longitude | `18.4241` |
| `REACT_APP_UPDATE_INTERVAL` | Data update interval (ms) | `5000` |

### Customization

#### Changing Map Location
1. Open `.env` file
2. Update `REACT_APP_MAP_CENTER_LAT` and `REACT_APP_MAP_CENTER_LNG`
3. Restart the application

#### Modifying Update Frequency
1. Open `.env` file
2. Change `REACT_APP_UPDATE_INTERVAL` value
3. Restart the application

#### Styling Customization
1. Edit `tailwind.config.js` for color schemes
2. Modify `src/index.css` for global styles
3. Update component files for specific styling

## Deployment

### Static Hosting (Netlify, Vercel, GitHub Pages)

1. **Build the application**
   ```bash
   npm run build
   ```

2. **Deploy the `build` folder**
   - Upload contents of `build/` directory to your hosting service
   - Configure redirects for single-page application

### Web Server (Apache, Nginx)

1. **Build the application**
   ```bash
   npm run build
   ```

2. **Configure web server**
   - Point document root to `build/` directory
   - Set up URL rewriting for React Router

### Docker Deployment

1. **Create Dockerfile**
   ```dockerfile
   FROM node:16-alpine as build
   WORKDIR /app
   COPY package*.json ./
   RUN npm install
   COPY . .
   RUN npm run build

   FROM nginx:alpine
   COPY --from=build /app/build /usr/share/nginx/html
   EXPOSE 80
   CMD ["nginx", "-g", "daemon off;"]
   ```

2. **Build and run**
   ```bash
   docker build -t rockfall-app .
   docker run -p 80:80 rockfall-app
   ```

## System Requirements

### Minimum Requirements
- **OS**: Windows 10, macOS 10.14, or Linux (Ubuntu 18.04+)
- **RAM**: 4GB
- **Storage**: 2GB free space
- **Browser**: Chrome 80+, Firefox 75+, Safari 13+, Edge 80+

### Recommended Requirements
- **OS**: Windows 11, macOS 12+, or Linux (Ubuntu 20.04+)
- **RAM**: 8GB or more
- **Storage**: 5GB free space
- **Browser**: Latest version of Chrome, Firefox, or Safari

## Support

### Getting Help
1. Check this setup guide first
2. Review the main README.md file
3. Check GitHub Issues for known problems
4. Contact support team

### Reporting Issues
When reporting issues, please include:
- Operating system and version
- Node.js version (`node --version`)
- npm version (`npm --version`)
- Browser and version
- Error messages (if any)
- Steps to reproduce the issue

### Contact Information
- **Email**: support@rockfall-ai.com
- **GitHub**: [Project Repository](https://github.com/your-repo)
- **Documentation**: [Full Documentation](https://docs.rockfall-ai.com)

---

**Note**: This is a demonstration system. For production use in actual mining operations, ensure proper testing, validation, and compliance with industry safety standards.


