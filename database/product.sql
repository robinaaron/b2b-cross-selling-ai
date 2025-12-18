CREATE DATABASE b2b_cross_selling 
CHARACTER SET utf8mb4 
COLLATE utf8mb4_unicode_ci;

SHOW DATABASES;
USE b2b_cross_selling;
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_id VARCHAR(50) UNIQUE NOT NULL,
    name VARCHAR(200) NOT NULL,
    category VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(12,2) NOT NULL,
    attributes JSON NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

SHOW TABLES;

INSERT INTO products (product_id, name, category, description, price, attributes) 
VALUES (
    'IC-8500-PRO',
    'Industrie-PC PRO Serie 8500', 
    'Industriecomputer',
    'Robuster Industrie-PC für Produktionsumgebungen, IP65, -20°C bis 60°C Betriebstemperatur',
    4299.00,
    '{"processor": "Intel Xeon", "ram": "64GB ECC", "storage": "2TB NVMe SSD", "protectionClass": "IP65", "interfaces": "4x LAN, 8x USB, 2x COM"}'
);

SELECT * FROM products;

INSERT INTO products (product_id, name, category, description, price, attributes) 
VALUES (
    'HMI-TOUCH-15',
    'HMI Touch Panel 15 Zoll',
    'Bedienpanels',
    '15-Zoll industrielles Touch Panel mit Multi-Touch, für Maschinensteuerung und Visualisierung',
    1899.00,
    '{"displaySize": "15 Zoll", "resolution": "1920x1080", "touchType": "Projektive Kapazitiv", "protectionClass": "IP66", "mounting": "Panel-Montage"}'
);

INSERT INTO products (product_id, name, category, description, price, attributes) 
VALUES 
(
    'PLC-3000-CONTROL',
    'PLC Steuerung 3000 Series',
    'Steuerungstechnik',
    'Programmierbare Logiksteuerung mit 512 I/Os, Echtzeit-Ethernet, Safety-integriert',
    3250.00,
    '{"cpuType": "Dual-Core 1.8GHz", "memory": "2MB Programmspeicher", "ioCount": "512", "protocols": "Profinet, EtherNet/IP, Modbus TCP", "safety": "SIL3"}'
),
(
    'SENS-TEMP-MULTI',
    'Multifunktions-Temperatursensor',
    'Sensoren',
    'Industrieller Temperatursensor mit 4 Messstellen, Pt100, -200°C bis +850°C',
    450.00,
    '{"measurementType": "Temperatur", "sensorType": "Pt100 4-Draht", "range": "-200°C bis +850°C", "accuracy": "±0.1°C", "output": "4-20mA, Modbus RTU"}'
),
(
    'SW-MES-BASIC',
    'MES Software Basic Package',
    'Industriesoftware',
    'Manufacturing Execution System für Produktionsdatenerfassung und -auswertung',
    12500.00,
    '{"licenseType": "Jahreslizenz", "users": "10 Concurrent", "modules": "Datenbank, OEE, Reporting", "interfaces": "OPC UA, REST API, SQL"}'
);

SELECT 
    id,
    product_id,
    name,
    category,
    price,
    created_at
FROM products
ORDER BY id;

USE b2b_cross_selling;
SELECT COUNT(*) as product_count FROM products;