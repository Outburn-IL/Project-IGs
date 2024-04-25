import os
import docx
import re

def extract_headers_and_text(docx_path):
    doc = docx.Document(docx_path)
    headers = []
    text_by_header = {}

    for para in doc.paragraphs:
        if para.style.name.startswith('Heading'):
            header = para.text.strip()
            headers.append(header)
            text_by_header[header] = []

        elif headers:
            text_by_header[headers[-1]].append(para.text)

            # Preserve line carriage
            if para.style.name.endswith('-List Continue'):
                text_by_header[headers[-1]][-1] += '\n'

    return text_by_header

def create_markdown_files(text_by_header):
    output_dir = 'output_markdown_files'
    os.makedirs(output_dir, exist_ok=True)

    for i, (header, text_lines) in enumerate(text_by_header.items()):
        if i >= len(text_by_header) - 4:
            markdown_filename = f"ValueSet-{header}-info.md"
        else:
            markdown_filename = f"StructureDefinition-{header}-info.md"

        with open(os.path.join(output_dir, markdown_filename), 'w', encoding='utf-8') as f:
            f.write("<div dir=\"rtl\" markdown=\"1\">\n\n")
            f.write(f"### {header}\n\n")
            for line in text_lines:
                # Preserve links in the original format
                line_with_links = re.sub(r'(\[.*?\])\((.*?)\)', r'\1\2', line)
                f.write(f"{line_with_links}\n")
            f.write("</div>\n")

if __name__ == "__main__":
    input_docx_path = "c:\\Project-IGs\\T17\\t17.docx"
    text_by_header = extract_headers_and_text(input_docx_path)
    create_markdown_files(text_by_header)
    print("Markdown files created successfully!")