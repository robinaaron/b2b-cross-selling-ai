# Modul: AI-Augmented Product Delivery

## Projekt
Automatisches Cross-Selling-System für Industrie-Produkte.

### Datenverarbeitung
- **Eingabe:** MySQL Datenbanktabelle `products`
- **Auslöser:** manueller Workflow-Start
- **Verarbeitung:** n8n-Workflow mit Datenvalidierung und Regelprüfung

### Analyse-Prozess
1. **Produkteingabe:** Lesen von Produktdaten aus der Datenbank
2. **Katalogabgleich:** Vergleich mit definiertem Produktportfolio
3. **Regelprüfung:** Anwendung von Geschäftslogik (±50% Preis, Kategorie)
4. **Empfehlungserstellung:** Generierung kompatibler Produktvorschläge
5. **Datenspeicherung:** Schreiben der Ergebnisse in `ai_analyses` Tabelle


### n8n Workflow
- **MySQL Connection:** `b2b.mysql` (vorkonfigurierte Verbindung)
- **Datenverarbeitung:** Edit Fields Node für Datenvalidierung
- **Datenbank-Output:** Automatisiertes Schreiben in MySQL
