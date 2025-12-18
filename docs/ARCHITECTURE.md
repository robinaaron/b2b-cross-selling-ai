## Datenfluss
1. **Trigger:** manueller Start
2. **Input:** Produktdaten via SQL Node
3. **AI-Verarbeitung:** OpenAI GPT-Analyse für Cross-Selling-Empfehlungen
4. **Datenaufbereitung:** n8n Code/Edit Fields Node für Schema-Mapping
5. **Speicherung:** Ergebnisse in `ai_analyses` Tabelle

[Trigger] → [Datenvorverarbeitung] → [AI-Analyse] → [Code Node] → [Edit Fields] → [Datenbank]

## Technischer Stack
- **Workflow Engine:** n8n (Node-basierte Automation)
- **AI-Modell:** OpenAI GPT-4/ChatGPT
- **Datenbank:** MySQL 8.0+ mit JSON-Support
- **Validierung:** JavaScript Code Nodes + MySQL Constraints

## Kern-Komponenten

### Datenbank-Integration
**Node:** MySQL  
**Verbindung:** `b2b.mysql` Credentials  
**Tabelle:** `ai_analyses`  
**Modus:** Auto-Map Input to Columns  
**Constraints:**
- FOREIGN KEY: `product_id` → `products.product_id`
- NOT NULL: `product_id`, `product_name`, `product_price`, `recommendations`
- DEFAULT: `analysis_type = 'cross_selling'`

### Tabelle: `products`
```sql
-- Referenztabelle für alle analysierbaren Produkte
-- Enthält: product_id (VARCHAR 50, PRIMARY KEY)
-- Weitere Felder: name, category, price, specifications (genaue Struktur unbekannt)
