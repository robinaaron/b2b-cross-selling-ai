# System Architecture

## Datenfluss
1. **Produktdaten** aus MySQL Datenbank lesen
2. **AI-Analyse** mit OpenAI API
3. **Empfehlungen** generieren
4. **Ergebnisse** zurück in Datenbank schreiben

## Komponenten
- **n8n Workflows**: Automatisierungspipelines
- **MySQL**: Produktdaten und Ergebnisse
- **OpenAI GPT**: Produktanalyse und Empfehlungen

## Workflow-Schritte
1. Read from Database
2. AI Analysis
3. Format Results  
4. Write to Database
5. Quality Check
