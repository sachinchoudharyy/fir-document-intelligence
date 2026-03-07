# FIR Document Intelligence System

An AI-powered system that extracts structured information from Indian FIR (First Information Report) PDFs using OCR and LLM-based semantic extraction.

The system processes FIR documents and converts unstructured text into structured data such as FIR metadata, incident details, vehicles involved, and legal sections. The extracted information can be exported as an Excel report.

---

## Features

- OCR-based extraction for scanned FIR documents
- Hindi + English text recognition
- LLM-powered semantic information extraction
- Structured FIR metadata extraction
- Vehicle number detection
- Legal section extraction
- Incident detail extraction
- Narrative summary generation
- Excel report generation
- Web UI for uploading FIR PDFs

---

## System Architecture


PDF Upload
↓
OCR Processing (Tesseract)
↓
Text Cleaning
↓
LLM Extraction (Groq)
↓
Validation Pass
↓
Reader Extraction (PDF text)
↓
Regex Vehicle Detection
↓
Structured JSON Output
↓
Excel Report


---

## Project Structure


.
├── main.py
├── streamlit_app.py
├── requirements.txt
├── runtime.txt
├── README.md
│
├── src
│ ├── core
│ │ └── groq_client.py
│ │
│ ├── intelligence
│ │ ├── pass1_extractor.py
│ │ ├── pass2_validator.py
│ │ ├── reader_extractor.py
│ │ ├── reader_merger.py
│ │ ├── regex_extractor.py
│ │ └── schema.py
│ │
│ ├── ocr
│ │ ├── ocr_pipeline.py
│ │ ├── pdf_reader.py
│ │ └── text_cleaner.py
│ │
│ └── utils
│ └── excel_exporter.py


---

## Installation (Local Setup)

### 1. Clone the repository


git clone https://github.com/yourusername/fir-document-intelligence.git

cd fir-document-intelligence


---

### 2. Create virtual environment


python -m venv venv


Activate environment

**Windows**


venv\Scripts\activate


**Linux / Mac**


source venv/bin/activate


---

### 3. Install dependencies


pip install -r requirements.txt


---

### 4. Install System Dependencies

This project requires OCR and PDF processing tools.

#### Install Tesseract OCR

Windows download:

https://github.com/UB-Mannheim/tesseract/wiki

After installation add to PATH.

---

#### Install Poppler

Download:

https://github.com/oschwartz10612/poppler-windows/releases

Add `poppler/bin` to system PATH.

---

### 5. Configure Environment Variables

Create a `.env` file in the project root.


GROQ_API_KEY=your_groq_api_key


---

### 6. Run the Application


streamlit run streamlit_app.py


The application will start at:


http://localhost:8501


---

## Usage

1. Open the web interface
2. Upload a FIR PDF document
3. Click **Submit**
4. The system will process the document
5. Extracted FIR details will be displayed
6. Download the Excel report

---

## Example Extracted Data

The system extracts:

- FIR number
- FIR date and time
- District and police station
- Incident date and time
- Incident location
- Death / injury counts
- Vehicles involved
- Driver details
- Legal acts and sections
- Narrative summary

---

## Technologies Used

- Python
- Streamlit
- Tesseract OCR
- OpenCV
- Groq LLM API
- Pandas
- PyMuPDF
- Regex-based extraction

---

## Deployment

The application can be deployed on cloud platforms such as:

- Render
- Railway
- AWS
- GCP

Environment variables must be configured on the hosting platform.

---

## Security Notes

- API keys are not stored in the repository.
- Use environment variables to manage secrets.

---
