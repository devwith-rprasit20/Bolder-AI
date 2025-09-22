@echo off
echo 🚀 Installing Rockfall Detection System...

REM Check if Node.js is installed
node --version >nul 2>&1
if %errorlevel% neq 0 (
    echo ❌ Node.js is not installed. Please install Node.js (v14 or higher) first.
    echo    Visit: https://nodejs.org/
    pause
    exit /b 1
)

echo ✅ Node.js detected
node --version

REM Install dependencies
echo 📦 Installing dependencies...
call npm install

if %errorlevel% neq 0 (
    echo ❌ Failed to install dependencies
    pause
    exit /b 1
)

echo ✅ Dependencies installed successfully

REM Create environment file
echo ⚙️ Creating environment configuration...
(
echo REACT_APP_API_URL=http://localhost:8000/api
echo REACT_APP_MAP_CENTER_LAT=-33.9249
echo REACT_APP_MAP_CENTER_LNG=18.4241
echo REACT_APP_UPDATE_INTERVAL=5000
) > .env

echo ✅ Environment configuration created

REM Build the application
echo 🔨 Building the application...
call npm run build

if %errorlevel% neq 0 (
    echo ❌ Failed to build application
    pause
    exit /b 1
)

echo ✅ Application built successfully

echo.
echo 🎉 Installation completed successfully!
echo.
echo To start the development server:
echo   npm start
echo.
echo To build for production:
echo   npm run build
echo.
echo The application will be available at:
echo   http://localhost:3000
echo.
echo For more information, see README.md
pause
