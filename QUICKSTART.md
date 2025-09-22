# Quick Start Guide - Rockfall Detection System

## 🚀 Get Started in 5 Minutes

### Step 1: Install Node.js
1. Go to https://nodejs.org/
2. Download and install the LTS version
3. Verify installation: Open command prompt and run `node --version`

### Step 2: Install the Application
**Windows:**
- Double-click `install.bat`

**Mac/Linux:**
- Open terminal in project folder
- Run: `chmod +x install.sh && ./install.sh`

### Step 3: Start the Application
```bash
npm start
```

### Step 4: Open Your Browser
Go to: http://localhost:3000

## 🎯 What You'll See

### Main Dashboard
- **Real-time metrics**: Active sensors, alerts, risk levels
- **Interactive charts**: Risk trends and distributions
- **Recent alerts**: Latest safety notifications

### Risk Map
- **Interactive map**: Click markers for details
- **Color-coded zones**: Red (high risk), Yellow (medium), Green (low)
- **Layer controls**: Toggle sensors, alerts, and zones

### Forecasts
- **Risk predictions**: 6-hour to 7-day forecasts
- **Weather integration**: Temperature, humidity, precipitation
- **AI recommendations**: Suggested actions based on predictions

### Alerts
- **Real-time notifications**: SMS, email, push alerts
- **Action plans**: Suggested responses for each alert
- **Filtering**: Search and filter by severity/status

### Vulnerable Zones
- **Zone analysis**: Detailed risk assessment for each area
- **Sensor data**: Associated sensor readings
- **Recommendations**: AI-suggested safety measures

## 📱 Mobile Features

- **Responsive design**: Works on phones and tablets
- **Touch-friendly**: Swipe and tap interactions
- **Bottom navigation**: Easy thumb navigation
- **Optimized charts**: Mobile-optimized data visualization

## 🔧 Quick Customization

### Change Map Location
1. Edit `.env` file
2. Update coordinates:
   ```
   REACT_APP_MAP_CENTER_LAT=YOUR_LATITUDE
   REACT_APP_MAP_CENTER_LNG=YOUR_LONGITUDE
   ```
3. Restart: `npm start`

### Adjust Update Speed
1. Edit `.env` file
2. Change interval (milliseconds):
   ```
   REACT_APP_UPDATE_INTERVAL=3000
   ```
3. Restart: `npm start`

## 🆘 Need Help?

### Common Issues
- **App won't start**: Make sure Node.js is installed
- **Map not loading**: Check internet connection
- **Slow performance**: Close other browser tabs

### Get Support
- 📖 Full documentation: README.md
- 🔧 Setup guide: SETUP.md
- 🐛 Report issues: GitHub Issues

## 🎉 You're Ready!

The Rockfall Detection System is now running with:
- ✅ Real-time data simulation
- ✅ Interactive risk mapping
- ✅ AI-powered forecasts
- ✅ Alert management
- ✅ Mobile responsiveness

**Next Steps:**
1. Explore each dashboard section
2. Try the mobile view (resize browser)
3. Check out the alert system
4. Customize for your mine location

---

**⚠️ Remember**: This is a demonstration system. For production use, ensure proper testing and compliance with safety standards.

