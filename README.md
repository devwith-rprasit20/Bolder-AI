# Rockfall Detection System for Open Pit Mines

An AI-powered rockfall detection and monitoring system designed specifically for open pit mines. This web-based dashboard provides real-time risk assessment, probability-based forecasts, and comprehensive alert mechanisms to enhance mine safety.

## 🚀 Features

### Core Functionality
- **Real-time Risk Maps**: Interactive visualization of mine areas with color-coded risk levels
- **Probability-based Forecasts**: AI-powered predictions for rockfall risk over time
- **Alert Management System**: SMS, email, and push notifications with suggested action plans
- **Vulnerable Zones Monitoring**: Comprehensive analysis of high-risk areas
- **Responsive Design**: Mobile-friendly interface for field operations

### Dashboard Components
- **Main Dashboard**: Overview of system status, key metrics, and recent alerts
- **Risk Map**: Interactive map with sensor locations, alerts, and vulnerable zones
- **Forecasts**: Weather and risk probability predictions with trend analysis
- **Alerts**: Real-time alert management with notification settings
- **Vulnerable Zones**: Detailed zone analysis with sensor data and recommendations

## 🛠️ Technology Stack

- **Frontend**: React.js 18.2.0
- **Styling**: Tailwind CSS 3.3.6
- **Maps**: Leaflet with React-Leaflet
- **Charts**: Recharts for data visualization
- **Icons**: Lucide React
- **Build Tool**: Create React App

## 📦 Installation

### Prerequisites
- Node.js (v14 or higher)
- npm or yarn

### Setup Instructions

1. **Clone the repository**
   ```bash
   git clone <repository-url>
   cd rockfall-detection-system
   ```

2. **Install dependencies**
   ```bash
   npm install
   ```

3. **Start the development server**
   ```bash
   npm start
   ```

4. **Open your browser**
   Navigate to `http://localhost:3000`

### Production Build
```bash
npm run build
```

## 🏗️ Project Structure

```
src/
├── components/
│   ├── Sidebar.js          # Navigation sidebar
│   ├── Header.js           # Top header with status indicators
│   ├── Dashboard.js        # Main dashboard overview
│   ├── RiskMap.js          # Interactive risk map
│   ├── Forecasts.js        # Probability forecasts
│   ├── Alerts.js           # Alert management
│   └── VulnerableZones.js  # Zone monitoring
├── utils/
│   └── mockData.js         # Mock data generation
├── App.js                  # Main application component
├── index.js               # Application entry point
└── index.css              # Global styles and Tailwind imports
```

## 🔧 Configuration

### Environment Variables
Create a `.env` file in the root directory:

```env
REACT_APP_API_URL=http://localhost:8000/api
REACT_APP_MAP_CENTER_LAT=-33.9249
REACT_APP_MAP_CENTER_LNG=18.4241
REACT_APP_UPDATE_INTERVAL=5000
```

### Customization
- **Map Center**: Update coordinates in `src/components/RiskMap.js`
- **Update Frequency**: Modify interval in `src/App.js`
- **Color Scheme**: Customize colors in `tailwind.config.js`
- **Mock Data**: Adjust data generation in `src/utils/mockData.js`

## 📱 Mobile Responsiveness

The application is fully responsive and optimized for:
- **Desktop**: Full-featured dashboard with sidebar navigation
- **Tablet**: Collapsible sidebar with touch-friendly controls
- **Mobile**: Stacked layout with bottom navigation

### Mobile Features
- Touch-optimized map interactions
- Swipe gestures for navigation
- Responsive charts and data tables
- Mobile-friendly alert notifications

## 🔌 API Integration

### Mock Data System
The application currently uses mock data for demonstration purposes. To integrate with real APIs:

1. **Replace Mock Data**: Update `src/utils/mockData.js` with actual API calls
2. **Add API Service**: Create API service layer for data fetching
3. **Implement WebSocket**: Add real-time data updates
4. **Add Authentication**: Implement user authentication system

### Example API Integration
```javascript
// src/services/api.js
const API_BASE_URL = process.env.REACT_APP_API_URL;

export const fetchSensorData = async () => {
  const response = await fetch(`${API_BASE_URL}/sensors`);
  return response.json();
};

export const fetchAlerts = async () => {
  const response = await fetch(`${API_BASE_URL}/alerts`);
  return response.json();
};
```

## 🚨 Alert System

<img width="1530" height="905" alt="image" src="https://github.com/user-attachments/assets/c9d2335d-c648-450e-9bb0-4e6cf6e168db" />

### Notification Types
- **SMS**: Critical alerts sent via SMS
- **Email**: Detailed alerts with attachments
- **Push**: Real-time browser notifications
- **In-app**: Dashboard alert management

### Alert Severity Levels
- **Critical**: Immediate action required
- **High**: Urgent attention needed
- **Medium**: Monitor closely
- **Low**: Routine monitoring

### Action Plans
Each alert includes suggested actions based on:
- Alert type and severity
- Current weather conditions
- Historical data patterns
- Safety protocols

## 📊 Data Visualization

### Charts and Graphs
- **Risk Trend Charts**: Time-series analysis of risk levels
- **Distribution Charts**: Risk level and zone type distribution
- **Weather Integration**: Temperature, humidity, and precipitation data
- **Sensor Status**: Real-time sensor health monitoring

### Interactive Features
- **Map Markers**: Clickable sensor and alert markers
- **Zone Overlays**: Risk area visualization with transparency
- **Tooltips**: Detailed information on hover
- **Filters**: Multi-criteria data filtering

## 🔒 Security Considerations

### Data Protection
- Secure API endpoints
- Encrypted data transmission
- User authentication and authorization
- Audit logging for compliance

### Best Practices
- Input validation and sanitization
- CORS configuration
- Rate limiting for API calls
- Regular security updates

## 🧪 Testing

### Running Tests
```bash
npm test
```


### Test Coverage
- Component unit tests
- Integration tests
- E2E testing with Cypress
- Performance testing

## 📈 Performance Optimization

### Optimization Techniques
- Code splitting and lazy loading
- Image optimization
- Bundle size optimization
- Caching strategies
- CDN integration

### Monitoring
- Real-time performance metrics
- Error tracking and logging
- User analytics
- System health monitoring

## 🤝 Contributing

### Development Guidelines
1. Follow React best practices
2. Use TypeScript for type safety
3. Write comprehensive tests
4. Document all functions and components
5. Follow the existing code style

### Pull Request Process
1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🆘 Support

### Documentation
- [API Documentation](docs/api.md)
- [User Guide](docs/user-guide.md)
- [Developer Guide](docs/developer-guide.md)

### Contact
- **Email**: support@rockfall-ai.com
- **Issues**: [GitHub Issues](https://github.com/your-repo/issues)
- **Discussions**: [GitHub Discussions](https://github.com/your-repo/discussions)

## 🔮 Future Enhancements

### Planned Features
- **Machine Learning Integration**: Advanced AI models for risk prediction
- **IoT Device Support**: Direct sensor integration
- **Mobile App**: Native mobile application
- **Advanced Analytics**: Predictive analytics and reporting
- **Multi-language Support**: Internationalization
- **Cloud Deployment**: Scalable cloud infrastructure

- <img width="1532" height="997" alt="Screenshot 2025-09-22 214103" src="https://github.com/user-attachments/assets/06ef0381-74b6-4082-8b89-d8d92062330b" />

<img width="1542" height="1061" alt="Screenshot 2025-09-22 213859" src="https://github.com/user-attachments/assets/b3074c43-da96-4e26-afb5-fb77252f2dcf" />



### Roadmap
- **Q1 2024**: Mobile app development
- **Q2 2024**: ML model integration
- **Q3 2024**: Cloud deployment
- **Q4 2024**: Advanced analytics

## 🙏 Acknowledgments

- OpenStreetMap for map data
- React community for excellent documentation
- Tailwind CSS for the design system
- All contributors and testers

---

**⚠️ Disclaimer**: This is a demonstration system. For production use in actual mining operations, ensure proper testing, validation, and compliance with industry safety standards.



