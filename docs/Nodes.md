Workflow Nodes
1. Execute a SQL query (Start-Node)
Typ: MySQL Database Node
Zweck: Extrahiert Produktdaten aus Datenbank
Output: Produktdatensätze für Analyse

2. Markup console (Debug/Logging Node)
Typ: Code Node
Zweck: Dateninspektion
Funktion: Zeigt Rohdaten vor AI-Verarbeitung

3. Messages & Response Test (AI Processing)
Typ: OpenAI/ChatGPT Node
Zweck: Generiert erste AI-Analyse
Input: Produktdaten von SQL Query
Output: Unstrukturierte AI-Antwort

4. Review & Improvement
Typ: OpenAI Node
Zweck: Verbessert und strukturiert AI-Antwort
Funktion: Qualitätskontrolle der Analyse

6. Task-Specific Response Test (Specialized AI)
Typ: OpenAI Node
Zweck: Aufgaben-spezifische Verfeinerung

7. Dev-Tasks Generator
Typ: OpenAI Node
Zweck: Generiert konkrete technische Entwickler-Tasks Im GIVEN-WHEN-THEN Format
Output: Potenziell JavaScript-Code für weitere Verarbeitung

8. Playwright-MCP Response Test (Testing/Validation)
Typ: OpenAI Node mit Testing-Fokus
Zweck: Generiere Playwright TypeScript Test-Code für die kritischsten Test-Specs.

9. Code in JavaScript (Data Transformation)
Typ: Code Node
Zweck: Transformiert AI-Output in strukturiertes Format

10. Execute a SQL query
Typ: MySQL Database Node
Zweck: Extrahiert Produktdaten aus Datenbank
SQL Query: SELECT product_id, product_name, price, category FROM products WHERE ...
Output: Produktdatensätze für AI-Analyse
Funktion: Liefert Rohdatenbasis für alle weiteren Schritte

11. MySQL Insert Operation
Verbindung: b2b.mysql Credentials
Tabelle: ai_analyses
Funktion: Speichert strukturierte Analyse in Datenbank
Mapping: Auto-Map
