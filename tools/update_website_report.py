import re

content = open('docs/index.html', encoding='utf-8').read()

# ── 1. Add CSS for new sections ──────────────────────────────────────────────
old_css = '    #tryit-section .spinner { display: inline-block; width: 16px; height: 16px; border: 2px solid #4a4a6a; border-top-color: #60ff60; border-radius: 50%; animation: tryit-spin 0.8s linear infinite; }\n    @keyframes tryit-spin { to { transform: rotate(360deg); } }\n  </style>'

new_css = '''    #tryit-section .spinner { display: inline-block; width: 16px; height: 16px; border: 2px solid #4a4a6a; border-top-color: #60ff60; border-radius: 50%; animation: tryit-spin 0.8s linear infinite; }
    @keyframes tryit-spin { to { transform: rotate(360deg); } }
    #tryit-section .report-actions { display: flex; gap: 10px; justify-content: center; flex-wrap: wrap; margin-bottom: 24px; }
    #tryit-section .report-actions .btn { padding: 10px 20px; font-size: 0.85rem; }
    #tryit-section .partner-grid { display: grid; grid-template-columns: 1fr 1fr; gap: 16px; margin-bottom: 20px; }
    @media (max-width: 600px) { #tryit-section .partner-grid { grid-template-columns: 1fr; } }
    #tryit-section .partner-card { background: #0d0d1a; border: 1px solid #2a2a5a; border-radius: 10px; padding: 16px; }
    #tryit-section .partner-card.person-a { border-top: 3px solid #4040cc; }
    #tryit-section .partner-card.person-b { border-top: 3px solid #cc4080; }
    #tryit-section .partner-card h4 { font-size: 0.9rem; font-weight: 700; margin-bottom: 10px; }
    #tryit-section .partner-card.person-a h4 { color: #8080ff; }
    #tryit-section .partner-card.person-b h4 { color: #ff80b0; }
    #tryit-section .partner-card p { color: #c0c0e0; font-size: 0.82rem; line-height: 1.7; }
    #tryit-section .verdict-section { background: #0d0d1a; border: 1px solid #3a2a1a; border-radius: 10px; padding: 16px; margin-bottom: 20px; }
    #tryit-section .verdict-section h3 { color: #ffcc60; font-size: 0.95rem; margin-bottom: 8px; }
    #tryit-section .verdict-section p { color: #d0c0a0; font-size: 0.85rem; line-height: 1.7; }
    #tryit-section .conclusion-section { background: #0d1a0d; border: 1px solid #1a3a1a; border-radius: 10px; padding: 16px; margin-bottom: 20px; }
    #tryit-section .conclusion-section h3 { color: #60ff80; font-size: 0.95rem; margin-bottom: 8px; }
    #tryit-section .conclusion-section p { color: #a0d0a0; font-size: 0.85rem; line-height: 1.7; }
    #tryit-section .pdf-accordion { background: #0d0d1a; border: 1px solid #2a2a5a; border-radius: 10px; margin-bottom: 20px; overflow: hidden; }
    #tryit-section .pdf-accordion-header { padding: 14px 16px; cursor: pointer; display: flex; justify-content: space-between; align-items: center; color: #a0a0ff; font-size: 0.9rem; font-weight: 600; user-select: none; }
    #tryit-section .pdf-accordion-header:hover { background: rgba(96,96,255,0.05); }
    #tryit-section .pdf-accordion-body { display: none; padding: 16px; border-top: 1px solid #2a2a5a; }
    #tryit-section .pdf-accordion-body.open { display: block; }
    #tryit-section .pdf-preview { background: white; color: #111; border-radius: 8px; padding: 20px; font-family: Georgia, serif; font-size: 0.8rem; line-height: 1.6; max-height: 400px; overflow-y: auto; }
    #tryit-section .pdf-preview h2 { font-size: 1rem; color: #222; border-bottom: 1px solid #ccc; padding-bottom: 6px; margin-bottom: 10px; }
    #tryit-section .pdf-preview h3 { font-size: 0.85rem; color: #333; margin: 10px 0 4px; }
    #tryit-section .pdf-preview p { margin-bottom: 8px; }
  </style>'''

content = content.replace(old_css, new_css)
assert 'partner-grid' in content, 'CSS not inserted'

# ── 2. Update the report panel HTML ──────────────────────────────────────────
old_panel = '''    <!-- REPORT PANEL -->
    <div class="panel report" id="reportPanel">
      <div class="report-header">
        <h2>🧠 AIRTA Analysis Report</h2>
      </div>
      <div class="exec-summary" id="execSummary"></div>
      <h3 style="color:#a0a0c0; font-size:0.95rem; margin-bottom:12px;">Metric Scores</h3>
      <div class="metrics-grid" id="metricsGrid"></div>
      <div class="evidence-section" id="evidenceSection"></div>
      <div style="text-align:center; margin-top:24px;">
        <button class="btn btn-secondary" onclick="resetDemo()">🔄 Run Another Analysis</button>
      </div>
    </div>'''

new_panel = '''    <!-- REPORT PANEL -->
    <div class="panel report" id="reportPanel">
      <div class="report-header">
        <h2>🧠 AIRTA Analysis Report</h2>
      </div>
      <!-- Action buttons -->
      <div class="report-actions">
        <button class="btn btn-secondary" onclick="printReport()">🖨️ Print</button>
        <button class="btn btn-secondary" onclick="saveReport()">💾 Save as PDF</button>
        <button class="btn btn-secondary" onclick="shareReport()">🔗 Share</button>
        <button class="btn btn-secondary" onclick="resetDemo()">🔄 New Analysis</button>
      </div>
      <!-- PDF Preview accordion -->
      <div class="pdf-accordion" id="pdfAccordion">
        <div class="pdf-accordion-header" onclick="togglePdfPreview()">
          <span>📄 PDF Preview</span>
          <span id="pdfChevron">▼</span>
        </div>
        <div class="pdf-accordion-body" id="pdfAccordionBody">
          <div class="pdf-preview" id="pdfPreview"></div>
        </div>
      </div>
      <!-- Executive summary -->
      <div class="exec-summary" id="execSummary"></div>
      <!-- Metric scores -->
      <h3 style="color:#a0a0c0; font-size:0.95rem; margin-bottom:12px;">Metric Scores</h3>
      <div class="metrics-grid" id="metricsGrid"></div>
      <!-- Evidence -->
      <div class="evidence-section" id="evidenceSection"></div>
      <!-- Per-person breakdown -->
      <div id="partnerSection" style="display:none; margin-top:20px;">
        <h3 style="color:#a0a0c0; font-size:0.95rem; margin-bottom:12px;">Individual Analysis</h3>
        <div class="partner-grid">
          <div class="partner-card person-a">
            <h4 id="personAName">Person A</h4>
            <p id="personAAnalysis"></p>
          </div>
          <div class="partner-card person-b">
            <h4 id="personBName">Person B</h4>
            <p id="personBAnalysis"></p>
          </div>
        </div>
      </div>
      <!-- Forensic verdict -->
      <div class="verdict-section" id="verdictSection" style="display:none;">
        <h3>⚖️ Forensic Verdict</h3>
        <p id="verdictText"></p>
      </div>
      <!-- Primary problem conclusion -->
      <div class="conclusion-section" id="conclusionSection" style="display:none;">
        <h3>🎯 Primary Problem Conclusion</h3>
        <p id="conclusionText"></p>
      </div>
    </div>'''

content = re.sub(
    r'<!-- REPORT PANEL -->.*?(?=\n  </div>\n\n  <h2>Legal)',
    new_panel,
    content,
    count=1,
    flags=re.DOTALL
)
assert 'partnerSection' in content, 'Panel not updated'

# ── 3. Update the AI prompt to request all 9 fields ─────────────────────────
old_prompt = '''Return ONLY valid JSON with this exact structure:
{
  "executiveSummary": "A comprehensive, brutally honest clinical overview (minimum 150 words). Be direct, uncensored, and specific about what you found.",
  "metricScores": { "MetricName": 0.85, ... },
  "evidenceExamples": [
    { "speaker": "who said it", "behavior": "which metric", "quote": "exact text from transcript", "context": "why this demonstrates the metric" }
  ]
}`;'''

new_prompt = '''Return ONLY valid JSON with this exact structure (no markdown, no code fences):
{
  "executiveSummary": "Comprehensive clinical overview (minimum 200 words) of the communication dynamic.",
  "metricScores": { "MetricName": 0.85 },
  "evidenceExamples": [{ "speaker": "who said it", "behavior": "which metric", "quote": "exact text", "context": "why this demonstrates the metric" }],
  "forensicVerdict": "Detailed neutral synthesis (minimum 150 words) of the overall dynamic.",
  "senderName": "Name or Sender",
  "receiverName": "Name or Receiver",
  "partnerOneAnalysis": "Thorough analysis (minimum 150 words) of the sender's communication patterns.",
  "partnerTwoAnalysis": "Thorough analysis (minimum 150 words) of the receiver's communication patterns.",
  "primaryProblemConclusion": "Final conclusion (minimum 100 words) identifying primary problem contributor or shared responsibility."
}`;'''

content = content.replace(old_prompt, new_prompt)
assert 'forensicVerdict' in content, 'Prompt not updated'

# ── 4. Update displayReport() to render all sections ────────────────────────
old_display = '''function displayReport(report, selectedMetrics) {
  inputPanel.style.display = 'none';
  reportPanel.classList.add('visible');

  // Executive summary
  const execDiv = document.getElementById('execSummary');
  execDiv.innerHTML = `<h3>Executive Summary</h3><p>${report.executiveSummary}</p>`;

  // Metric scores
  const grid = document.getElementById('metricsGrid');
  grid.innerHTML = '';
  const scores = report.metricScores || {};
  const sortedMetrics = Object.entries(scores).sort((a, b) => b[1] - a[1]);

  for (const [name, score] of sortedMetrics) {
    const pct = Math.round(score * 100);
    const color = score > 0.7 ? '#ff4040' : score > 0.4 ? '#c0c040' : '#40cc40';
    grid.innerHTML += `
      <div class="metric-bar">
        <div class="name">${name}</div>
        <div class="bar-bg"><div class="bar-fill" style="width:${pct}%; background:${color};"></div></div>
        <div class="score" style="color:${color}">${pct}%</div>
      </div>`;
  }

  // Evidence
  const evidenceDiv = document.getElementById('evidenceSection');
  const examples = report.evidenceExamples || [];
  if (examples.length > 0) {
    let html = '<h3>Evidence Examples</h3>';
    for (const ex of examples.slice(0, 15)) {
      html += `
        <div class="evidence-item">
          <div class="behavior">${ex.behavior || 'N/A'}</div>
          <div class="quote">"${ex.quote || ''}"</div>
          <div class="context">${ex.context || ''}</div>
          <div class="speaker">— ${ex.speaker || 'Unknown'}</div>
        </div>`;
    }
    evidenceDiv.innerHTML = html;
  }
}'''

new_display = '''// Store report globally for PDF/share
let currentReport = null;
let currentMetrics = null;

function displayReport(report, selectedMetrics) {
  currentReport = report;
  currentMetrics = selectedMetrics;

  inputPanel.style.display = 'none';
  reportPanel.classList.add('visible');

  // Executive summary
  document.getElementById('execSummary').innerHTML =
    `<h3>Executive Summary</h3><p>${report.executiveSummary || ''}</p>`;

  // Metric scores
  const grid = document.getElementById('metricsGrid');
  grid.innerHTML = '';
  const scores = report.metricScores || {};
  const sortedMetrics = Object.entries(scores).sort((a, b) => b[1] - a[1]);
  for (const [name, score] of sortedMetrics) {
    const pct = Math.round(score * 100);
    const color = score > 0.7 ? '#ff4040' : score > 0.4 ? '#c0c040' : '#40cc40';
    grid.innerHTML += `
      <div class="metric-bar">
        <div class="name">${name}</div>
        <div class="bar-bg"><div class="bar-fill" style="width:${pct}%; background:${color};"></div></div>
        <div class="score" style="color:${color}">${pct}%</div>
      </div>`;
  }

  // Evidence examples
  const evidenceDiv = document.getElementById('evidenceSection');
  const examples = report.evidenceExamples || [];
  if (examples.length > 0) {
    let html = '<h3>Evidence Examples</h3>';
    for (const ex of examples.slice(0, 15)) {
      html += `
        <div class="evidence-item">
          <div class="behavior">${ex.behavior || 'N/A'}</div>
          <div class="quote">"${ex.quote || ''}"</div>
          <div class="context">${ex.context || ''}</div>
          <div class="speaker">— ${ex.speaker || 'Unknown'}</div>
        </div>`;
    }
    evidenceDiv.innerHTML = html;
  }

  // Per-person breakdown
  if (report.partnerOneAnalysis || report.partnerTwoAnalysis) {
    document.getElementById('personAName').textContent =
      report.senderName || 'Person A';
    document.getElementById('personBName').textContent =
      report.receiverName || 'Person B';
    document.getElementById('personAAnalysis').textContent =
      report.partnerOneAnalysis || '';
    document.getElementById('personBAnalysis').textContent =
      report.partnerTwoAnalysis || '';
    document.getElementById('partnerSection').style.display = 'block';
  }

  // Forensic verdict
  if (report.forensicVerdict) {
    document.getElementById('verdictText').textContent = report.forensicVerdict;
    document.getElementById('verdictSection').style.display = 'block';
  }

  // Primary problem conclusion
  if (report.primaryProblemConclusion) {
    document.getElementById('conclusionText').textContent = report.primaryProblemConclusion;
    document.getElementById('conclusionSection').style.display = 'block';
  }

  // Build PDF preview
  buildPdfPreview(report);
}

function buildPdfPreview(report) {
  const scores = report.metricScores || {};
  const sortedMetrics = Object.entries(scores).sort((a, b) => b[1] - a[1]);
  let metricsHtml = sortedMetrics.map(([name, score]) =>
    `<p><b>${name}:</b> ${Math.round(score * 100)}%</p>`).join('');

  document.getElementById('pdfPreview').innerHTML = `
    <h2>AIRTA Analysis Report</h2>
    <h3>Executive Summary</h3>
    <p>${report.executiveSummary || ''}</p>
    <h3>Metric Scores</h3>
    ${metricsHtml}
    ${report.partnerOneAnalysis ? `<h3>${report.senderName || 'Person A'} Analysis</h3><p>${report.partnerOneAnalysis}</p>` : ''}
    ${report.partnerTwoAnalysis ? `<h3>${report.receiverName || 'Person B'} Analysis</h3><p>${report.partnerTwoAnalysis}</p>` : ''}
    ${report.forensicVerdict ? `<h3>Forensic Verdict</h3><p>${report.forensicVerdict}</p>` : ''}
    ${report.primaryProblemConclusion ? `<h3>Primary Problem Conclusion</h3><p>${report.primaryProblemConclusion}</p>` : ''}
  `;
}

function togglePdfPreview() {
  const body = document.getElementById('pdfAccordionBody');
  const chevron = document.getElementById('pdfChevron');
  const isOpen = body.classList.toggle('open');
  chevron.textContent = isOpen ? '▲' : '▼';
}

function printReport() {
  const preview = document.getElementById('pdfPreview').innerHTML;
  const w = window.open('', '_blank');
  w.document.write(`<html><head><title>AIRTA Report</title><style>body{font-family:Georgia,serif;padding:30px;max-width:800px;margin:0 auto;}h2{font-size:1.2rem;border-bottom:1px solid #ccc;padding-bottom:6px;}h3{font-size:0.95rem;margin-top:16px;}p{font-size:0.85rem;line-height:1.7;}</style></head><body>${preview}</body></html>`);
  w.document.close();
  w.print();
}

function saveReport() {
  // Use print-to-PDF via browser dialog
  printReport();
}

function shareReport() {
  if (navigator.share && currentReport) {
    navigator.share({
      title: 'AIRTA Analysis Report',
      text: currentReport.executiveSummary
        ? currentReport.executiveSummary.substring(0, 200) + '...'
        : 'Check out my AIRTA relationship analysis.',
      url: window.location.href,
    }).catch(() => {});
  } else {
    navigator.clipboard.writeText(window.location.href)
      .then(() => alert('Link copied to clipboard!'))
      .catch(() => alert('Share: ' + window.location.href));
  }
}'''

content = content.replace(old_display, new_display)
assert 'currentReport' in content, 'displayReport not updated'

open('docs/index.html', 'w', encoding='utf-8').write(content)
print('All updates applied successfully')
