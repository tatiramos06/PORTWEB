$b64 = Get-Content "c:\Users\win\Documents\TATIANA\POTFOLIO\b64.txt" -Raw
$b64 = $b64.Trim()

$html = @"
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="Portfólio Profissional de Tatiana Ramos - Analista de Projetos Pleno na Superlógica Tecnologias | IA Generativa | Python | Automação de Processos | Migração de Dados." />
  <meta name="keywords" content="Tatiana Ramos, Superlógica Tecnologias, Analista de Projetos, Automação, Migração de Dados, IA Generativa, Python, Cursor AI, FastAPI, Nexus Apps, Transformação Digital" />
  <meta name="author" content="Tatiana Ramos" />

  <!-- Open Graph / Social Media -->
  <meta property="og:type" content="website" />
  <meta property="og:title" content="Tatiana Ramos | Projetos, Dados & Automação" />
  <meta property="og:description" content="Analista de Projetos Pleno | IA Generativa | Python | Automação de Processos | Desenvolvimento de Apps | Migração de Dados | Transformação Digital." />
  <meta property="og:url" content="https://tatiramos06.github.io/PORTWEB/" />
  
  <title>Tatiana Ramos | Projetos, Dados & Automação</title>

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Plus+Jakarta+Sans:wght@500;600;700;800&display=swap" rel="stylesheet">

  <style>
    :root {
      --bg-dark: #070b14;
      --bg-card: rgba(16, 24, 40, 0.85);
      --bg-card-hover: rgba(24, 36, 60, 0.98);
      --bg-nav: rgba(7, 11, 20, 0.94);
      
      --primary: #3892ff;
      --primary-glow: rgba(56, 146, 255, 0.38);
      --electric: #00f0ff;
      --electric-glow: rgba(0, 240, 255, 0.28);
      --whatsapp-green: #25d366;
      --whatsapp-hover: #1ebd56;
      
      --text-main: #f8fafc;
      --text-muted: #94a3b8;
      --text-dim: #64748b;
      
      --border: rgba(255, 255, 255, 0.12);
      --border-active: rgba(56, 146, 255, 0.45);
      --radius-sm: 8px;
      --radius-md: 16px;
      --radius-lg: 24px;
      --radius-full: 9999px;
      
      --shadow-sm: 0 4px 14px rgba(0, 0, 0, 0.35);
      --shadow-lg: 0 20px 50px rgba(0, 0, 0, 0.65);
      --shadow-glow: 0 0 35px rgba(56, 146, 255, 0.25);
      --transition: all 0.35s cubic-bezier(0.16, 1, 0.3, 1);
      --font-family: 'Plus Jakarta Sans', 'Inter', -apple-system, sans-serif;
    }

    *, *::before, *::after {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    html {
      scroll-behavior: smooth;
      font-size: 16px;
      color-scheme: dark;
    }

    body {
      font-family: var(--font-family);
      background-color: var(--bg-dark);
      color: var(--text-main);
      line-height: 1.65;
      overflow-x: hidden;
      position: relative;
    }

    ::-webkit-scrollbar {
      width: 10px;
    }
    ::-webkit-scrollbar-track {
      background: var(--bg-dark);
    }
    ::-webkit-scrollbar-thumb {
      background: #1e293b;
      border-radius: 5px;
    }
    ::-webkit-scrollbar-thumb:hover {
      background: var(--primary);
    }

    a {
      color: inherit;
      text-decoration: none;
      transition: var(--transition);
    }

    .container {
      width: min(1180px, 92%);
      margin: 0 auto;
    }

    .gradient-text {
      background: linear-gradient(135deg, #ffffff 0%, var(--primary) 50%, var(--electric) 100%);
      -webkit-background-clip: text;
      background-clip: text;
      color: transparent;
    }

    .eyebrow {
      display: inline-flex;
      align-items: center;
      gap: 8px;
      font-size: 0.82rem;
      font-weight: 700;
      text-transform: uppercase;
      letter-spacing: 0.14em;
      color: var(--primary);
      margin-bottom: 14px;
      background: rgba(56, 146, 255, 0.12);
      border: 1px solid rgba(56, 146, 255, 0.3);
      padding: 6px 18px;
      border-radius: var(--radius-full);
    }

    .section-head {
      margin-bottom: 45px;
    }

    .section-head.center {
      text-align: center;
    }

    .section-head h2 {
      font-size: clamp(2.1rem, 3.8vw, 2.8rem);
      font-weight: 800;
      letter-spacing: -0.02em;
      margin-bottom: 14px;
      line-height: 1.15;
    }

    .section-head p {
      color: var(--text-muted);
      font-size: 1.1rem;
      max-width: 700px;
    }

    .section-head.center p {
      margin: 0 auto;
    }

    section {
      padding: 95px 0;
      position: relative;
    }

    .glass-panel {
      background: var(--bg-card);
      backdrop-filter: blur(16px);
      -webkit-backdrop-filter: blur(16px);
      border: 1px solid var(--border);
      border-radius: var(--radius-lg);
      box-shadow: var(--shadow-sm);
      transition: var(--transition);
    }

    .glass-panel:hover {
      border-color: var(--border-active);
      box-shadow: var(--shadow-glow);
    }

    .btn {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      gap: 10px;
      padding: 13px 26px;
      border-radius: var(--radius-full);
      font-weight: 700;
      font-size: 0.95rem;
      transition: var(--transition);
      border: 1px solid var(--border);
      background: rgba(255, 255, 255, 0.04);
      color: var(--text-main);
    }

    .btn:hover {
      transform: translateY(-2px);
      border-color: var(--primary);
      background: rgba(56, 146, 255, 0.15);
      color: #ffffff;
    }

    .btn-primary {
      background: linear-gradient(135deg, var(--primary) 0%, #2563eb 100%);
      color: #ffffff;
      border: none;
      box-shadow: 0 6px 25px var(--primary-glow);
    }

    .btn-primary:hover {
      background: linear-gradient(135deg, #4f9cfd 0%, #1d4ed8 100%);
      box-shadow: 0 8px 30px rgba(56, 146, 255, 0.5);
      transform: translateY(-3px);
    }

    .btn-whatsapp {
      background: var(--whatsapp-green);
      color: #ffffff;
      border: none;
      box-shadow: 0 6px 25px rgba(37, 211, 102, 0.35);
    }

    .btn-whatsapp:hover {
      background: var(--whatsapp-hover);
      box-shadow: 0 8px 30px rgba(37, 211, 102, 0.5);
      transform: translateY(-3px);
      color: #ffffff;
    }

    .btn-sm {
      padding: 9px 18px;
      font-size: 0.85rem;
    }

    /* Navigation Header */
    header {
      position: sticky;
      top: 0;
      z-index: 100;
      background: var(--bg-nav);
      backdrop-filter: blur(20px);
      -webkit-backdrop-filter: blur(20px);
      border-bottom: 1px solid var(--border);
    }

    .navbar {
      height: 80px;
      display: flex;
      align-items: center;
      justify-content: space-between;
    }

    .brand {
      display: flex;
      align-items: center;
      gap: 12px;
      font-weight: 800;
      font-size: 1.25rem;
    }

    .brand-avatar-img {
      width: 44px;
      height: 44px;
      border-radius: 12px;
      object-fit: cover;
      border: 2px solid var(--primary);
      box-shadow: 0 0 15px var(--primary-glow);
    }

    .nav-links {
      display: flex;
      align-items: center;
      gap: 28px;
      list-style: none;
    }

    .nav-links a {
      font-size: 0.94rem;
      font-weight: 700;
      color: var(--text-main);
      position: relative;
      padding: 6px 0;
    }

    .nav-links a:hover, .nav-links a.active {
      color: var(--electric);
    }

    .nav-links a::after {
      content: '';
      position: absolute;
      bottom: 0;
      left: 0;
      width: 0%;
      height: 2px;
      background: linear-gradient(90deg, var(--primary), var(--electric));
      transition: var(--transition);
      border-radius: 2px;
    }

    .nav-links a:hover::after, .nav-links a.active::after {
      width: 100%;
    }

    /* Hero Section */
    .hero-wrapper {
      position: relative;
      background: 
        linear-gradient(180deg, rgba(7, 11, 20, 0.6) 0%, rgba(7, 11, 20, 0.95) 100%),
        radial-gradient(circle at 50% 20%, rgba(56, 146, 255, 0.18), transparent 60%);
      padding: 90px 0 110px;
      text-align: center;
    }

    .hero-content {
      max-width: 880px;
      margin: 0 auto;
    }

    .company-pill {
      display: inline-flex;
      align-items: center;
      gap: 10px;
      padding: 8px 22px;
      background: rgba(56, 146, 255, 0.12);
      border: 1px solid rgba(56, 146, 255, 0.35);
      border-radius: var(--radius-full);
      font-size: 0.9rem;
      font-weight: 700;
      color: var(--primary);
      margin-bottom: 24px;
    }

    .hero-content h1 {
      font-size: clamp(2.5rem, 5vw, 4.2rem);
      font-weight: 800;
      line-height: 1.1;
      margin-bottom: 24px;
      letter-spacing: -0.03em;
    }

    .hero-subtitle {
      font-size: clamp(1.1rem, 2vw, 1.3rem);
      color: var(--text-muted);
      margin-bottom: 36px;
      line-height: 1.65;
    }

    .hero-actions {
      display: flex;
      gap: 16px;
      justify-content: center;
      flex-wrap: wrap;
      align-items: center;
    }

    .wave-divider {
      position: absolute;
      bottom: 0;
      left: 0;
      width: 100%;
      overflow: hidden;
      line-height: 0;
    }

    .wave-divider svg {
      position: relative;
      display: block;
      width: calc(100% + 1.3px);
      height: 60px;
    }

    .wave-divider .shape-fill {
      fill: var(--bg-dark);
    }

    /* Quem Sou Section */
    .quem-sou-grid {
      display: grid;
      grid-template-columns: 0.85fr 1.15fr;
      gap: 60px;
      align-items: center;
    }

    .portrait-card-container {
      position: relative;
      max-width: 440px;
      margin: 0 auto;
    }

    .portrait-card {
      width: 100%;
      border-radius: var(--radius-lg);
      background: linear-gradient(145deg, #1e293b, #0f172a);
      border: 1px solid var(--border);
      padding: 16px;
      box-shadow: var(--shadow-lg);
      position: relative;
    }

    .portrait-image-holder {
      width: 100%;
      height: 460px;
      border-radius: var(--radius-md);
      overflow: hidden;
      position: relative;
    }

    .portrait-image-holder img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      object-position: center 20%;
    }

    .brand-badge-overlay {
      position: absolute;
      bottom: -20px;
      right: -20px;
      background: linear-gradient(135deg, #1e293b, #091224);
      border: 1px solid var(--border-active);
      padding: 16px 22px;
      border-radius: var(--radius-md);
      box-shadow: var(--shadow-lg);
      display: flex;
      align-items: center;
      gap: 14px;
      z-index: 10;
    }

    .brand-badge-img {
      width: 44px;
      height: 44px;
      border-radius: 10px;
      object-fit: cover;
      border: 2px solid var(--primary);
    }

    .brand-badge-text h4 {
      font-size: 0.95rem;
      font-weight: 800;
      color: #ffffff;
    }

    .brand-badge-text p {
      font-size: 0.78rem;
      color: var(--primary);
      font-weight: 600;
    }

    .quem-sou-content h2 {
      font-size: 2.5rem;
      font-weight: 800;
      margin-bottom: 20px;
      letter-spacing: -0.02em;
    }

    .quem-sou-text {
      color: var(--text-muted);
      font-size: 1.05rem;
      line-height: 1.8;
      margin-bottom: 24px;
    }

    .bullets-list {
      display: flex;
      flex-direction: column;
      gap: 16px;
    }

    .bullet-item {
      display: flex;
      align-items: flex-start;
      gap: 14px;
      font-size: 0.95rem;
      color: var(--text-main);
    }

    .bullet-icon {
      width: 26px;
      height: 26px;
      border-radius: 50%;
      background: rgba(56, 146, 255, 0.15);
      border: 1px solid var(--primary);
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--primary);
      font-weight: 800;
      font-size: 0.8rem;
      flex-shrink: 0;
      margin-top: 2px;
    }

    /* Experience Timeline */
    .timeline-container {
      max-width: 980px;
      margin: 0 auto;
    }

    .timeline-card {
      padding: 36px;
      margin-bottom: 32px;
      position: relative;
      border-left: 5px solid var(--primary);
      transition: var(--transition);
      background: rgba(16, 24, 40, 0.88);
    }

    .timeline-card:hover {
      border-left-color: var(--electric);
      transform: translateX(6px);
      box-shadow: var(--shadow-glow);
    }

    .timeline-header {
      display: flex;
      justify-content: space-between;
      align-items: flex-start;
      gap: 16px;
      flex-wrap: wrap;
      margin-bottom: 16px;
    }

    .company-name {
      font-size: 0.85rem;
      font-weight: 800;
      text-transform: uppercase;
      letter-spacing: 0.12em;
      color: var(--electric);
    }

    .role-title {
      font-size: 1.4rem;
      font-weight: 800;
      color: #ffffff;
      margin-top: 2px;
    }

    .date-badge {
      font-size: 0.84rem;
      font-weight: 700;
      color: var(--primary);
      background: rgba(56, 146, 255, 0.12);
      border: 1px solid rgba(56, 146, 255, 0.3);
      padding: 6px 16px;
      border-radius: var(--radius-full);
    }

    .timeline-bullets {
      list-style: none;
      display: flex;
      flex-direction: column;
      gap: 12px;
      margin-top: 18px;
    }

    .timeline-bullets li {
      position: relative;
      padding-left: 24px;
      color: var(--text-muted);
      font-size: 0.98rem;
      line-height: 1.7;
    }

    .timeline-bullets li::before {
      content: '✓';
      position: absolute;
      left: 0;
      color: var(--primary);
      font-weight: 800;
      font-size: 0.9rem;
    }

    /* Competencies Grid */
    .competencies-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(320px, 1fr));
      gap: 24px;
    }

    .competency-card {
      padding: 32px;
      display: flex;
      flex-direction: column;
      gap: 16px;
    }

    .competency-icon {
      width: 52px;
      height: 52px;
      border-radius: var(--radius-md);
      background: rgba(56, 146, 255, 0.1);
      border: 1px solid rgba(56, 146, 255, 0.2);
      display: flex;
      align-items: center;
      justify-content: center;
      color: var(--primary);
      font-size: 1.5rem;
      transition: var(--transition);
    }

    .competency-card:hover .competency-icon {
      background: var(--primary);
      color: #050811;
      box-shadow: 0 0 25px var(--primary-glow);
    }

    .competency-card h3 {
      font-size: 1.3rem;
      font-weight: 800;
    }

    .competency-card p {
      color: var(--text-muted);
      font-size: 0.96rem;
      line-height: 1.65;
    }

    /* Projects Grid */
    .projects-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(360px, 1fr));
      gap: 28px;
    }

    .project-card {
      padding: 32px;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
    }

    .project-card.featured {
      grid-column: 1 / -1;
      display: grid;
      grid-template-columns: 1.2fr 0.8fr;
      gap: 32px;
      align-items: center;
      border-color: rgba(56, 146, 255, 0.4);
      background: linear-gradient(145deg, rgba(16, 24, 40, 0.9), rgba(24, 36, 60, 0.95));
      box-shadow: 0 0 40px rgba(56, 146, 255, 0.15);
    }

    .project-category-badge {
      display: inline-block;
      font-size: 0.75rem;
      font-weight: 800;
      text-transform: uppercase;
      letter-spacing: 0.1em;
      color: var(--electric);
      margin-bottom: 12px;
    }

    .project-card h3 {
      font-size: 1.5rem;
      font-weight: 800;
      margin-bottom: 12px;
    }

    .project-card p {
      color: var(--text-muted);
      font-size: 0.98rem;
      margin-bottom: 20px;
      line-height: 1.65;
    }

    .project-tech-stack {
      display: flex;
      flex-wrap: wrap;
      gap: 8px;
      margin-bottom: 24px;
    }

    .tag {
      font-size: 0.78rem;
      font-weight: 600;
      padding: 5px 12px;
      border-radius: var(--radius-full);
      background: rgba(255, 255, 255, 0.04);
      border: 1px solid var(--border);
      color: var(--text-muted);
    }

    .project-footer {
      display: flex;
      align-items: center;
      gap: 12px;
      flex-wrap: wrap;
      margin-top: auto;
      padding-top: 16px;
      border-top: 1px solid var(--border);
    }

    /* Academic Grid */
    .edu-grid {
      display: grid;
      grid-template-columns: 1fr 1fr;
      gap: 30px;
    }

    .edu-card {
      padding: 32px;
    }

    .edu-card h3 {
      font-size: 1.3rem;
      font-weight: 800;
      margin-bottom: 20px;
      display: flex;
      align-items: center;
      gap: 10px;
      color: var(--primary);
    }

    .edu-item {
      padding-bottom: 16px;
      margin-bottom: 16px;
      border-bottom: 1px solid var(--border);
    }

    .edu-item:last-child {
      border-bottom: none;
      margin-bottom: 0;
      padding-bottom: 0;
    }

    .edu-title {
      font-weight: 700;
      font-size: 1.02rem;
      color: #ffffff;
    }

    .edu-institution {
      font-size: 0.9rem;
      color: var(--text-muted);
    }

    .edu-year {
      font-size: 0.8rem;
      color: var(--electric);
      font-weight: 600;
    }

    /* Contact Cards */
    .contact-details-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
      gap: 24px;
      margin-bottom: 45px;
    }

    .contact-box {
      padding: 32px;
      text-align: center;
      display: flex;
      flex-direction: column;
      align-items: center;
      gap: 12px;
    }

    .contact-box-icon {
      width: 52px;
      height: 52px;
      border-radius: 14px;
      background: rgba(56, 146, 255, 0.12);
      border: 1px solid rgba(56, 146, 255, 0.28);
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 1.6rem;
      color: var(--primary);
    }

    .contact-box h4 {
      font-size: 1.15rem;
      font-weight: 800;
    }

    .contact-box p {
      font-size: 0.95rem;
      color: var(--text-muted);
    }

    .floating-whatsapp {
      position: fixed;
      bottom: 28px;
      right: 28px;
      width: 60px;
      height: 60px;
      border-radius: 50%;
      background-color: var(--whatsapp-green);
      color: #ffffff;
      display: flex;
      align-items: center;
      justify-content: center;
      box-shadow: 0 10px 25px rgba(37, 211, 102, 0.4);
      z-index: 999;
      transition: var(--transition);
      border: 2px solid rgba(255, 255, 255, 0.2);
    }

    .floating-whatsapp:hover {
      transform: scale(1.1);
      background-color: var(--whatsapp-hover);
      box-shadow: 0 14px 35px rgba(37, 211, 102, 0.6);
    }

    .floating-whatsapp svg {
      width: 32px;
      height: 32px;
      fill: currentColor;
    }

    footer {
      padding: 45px 0 65px;
      border-top: 1px solid var(--border);
      color: var(--text-dim);
      font-size: 0.88rem;
      text-align: center;
    }

    @media (max-width: 992px) {
      .quem-sou-grid, .project-card.featured, .edu-grid {
        grid-template-columns: 1fr;
        gap: 45px;
      }
      .brand-badge-overlay {
        right: 0;
      }
    }
  </style>

  <link rel="icon" type="image/svg+xml" href="data:image/svg+xml,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 100 100'><rect width='100' height='100' rx='25' fill='%23070b14'/><text x='50' y='68' font-family='sans-serif' font-weight='900' font-size='50' fill='%233892ff' text-anchor='middle'>TR</text></svg>" />
</head>
<body>

  <!-- Navigation Header -->
  <header>
    <div class="container navbar">
      <a href="#" class="brand" aria-label="Ir para o topo">
        <img src="$b64" alt="Tatiana Ramos" class="brand-avatar-img" />
        <span>Tatiana <span style="color: var(--primary);">Ramos</span></span>
      </a>

      <ul class="nav-links">
        <li><a href="#quem-sou">Quem Sou</a></li>
        <li><a href="#experiencia" class="active">Experiência</a></li>
        <li><a href="#competencias">Competências</a></li>
        <li><a href="#projetos">Projetos</a></li>
        <li><a href="#formacao">Formação</a></li>
        <li><a href="#aura">AURA</a></li>
        <li><a href="#contato">Contato</a></li>
      </ul>

      <div class="nav-cta">
        <a href="https://wa.me/5511917914570?text=Olá%20Tatiana,%20vi%20seu%20portfólio%20e%20gostaria%20de%20conversar!" target="_blank" rel="noopener noreferrer" class="btn btn-sm btn-whatsapp">
          WhatsApp
        </a>
      </div>
    </div>
  </header>

  <main>

    <!-- HERO SECTION -->
    <div class="hero-wrapper">
      <div class="container hero-content">
        <div class="company-pill">
          <span>🏢</span>
          Analista de Projetos Pleno @ Superlógica Tecnologias
        </div>

        <h1>
          Transformo desafios operacionais em 
          <span class="gradient-text">soluções digitais.</span>
        </h1>

        <p class="hero-subtitle">
          Projetos, Migração de Dados, Automação de Processos, IA Generativa (Cursor AI), Python, FastAPI e Desenvolvimento de Aplicações.
        </p>

        <div class="hero-actions">
          <a href="https://wa.me/5511917914570?text=Olá%20Tatiana,%20vi%20seu%20portfólio%20e%20gostaria%20de%20conversar!" target="_blank" rel="noopener noreferrer" class="btn btn-whatsapp">
            Falar no WhatsApp
          </a>
          <a href="#experiencia" class="btn btn-primary">
            Ver Experiência Profissional &rarr;
          </a>
        </div>
      </div>

      <div class="wave-divider">
        <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
          <path d="M321.39,56.44c58-10.79,114.16-30.13,172-41.86,82.39-16.72,168.19-17.73,250.45-.39C823.78,31,906.67,72,985.66,92.83c70.05,18.48,146.53,26.09,214.34,3V0H0V27.35A600.21,600.21,0,0,0,321.39,56.44Z" class="shape-fill"></path>
        </svg>
      </div>
    </div>

    <!-- QUEM SOU SECTION -->
    <section id="quem-sou">
      <div class="container">
        <div class="quem-sou-grid">
          
          <div class="portrait-card-container">
            <div class="portrait-card">
              <div class="portrait-image-holder">
                <img src="$b64" alt="Tatiana Ramos - Analista de Projetos Pleno" />
              </div>

              <div class="brand-badge-overlay">
                <img src="$b64" alt="Tatiana Ramos" class="brand-badge-img" />
                <div class="brand-badge-text">
                  <h4>Tatiana Ramos</h4>
                  <p>Transformação Digital &amp; IA</p>
                </div>
              </div>
            </div>
          </div>

          <div class="quem-sou-content">
            <div class="eyebrow">Resumo Profissional</div>
            <h2>Quem Sou</h2>
            <p class="quem-sou-text">
              Atuo como <strong>Analista de Projetos Pleno na Superlógica Tecnologias</strong>, com sólida experiência no planejamento, execução e acompanhamento de projetos. Meu foco é a entrega de resultados alinhados aos objetivos estratégicos, dentro dos prazos e padrões de alta qualidade.
            </p>

            <div class="bullets-list">
              <div class="bullet-item">
                <div class="bullet-icon">✓</div>
                <div>
                  <strong>Automação &amp; IA Generativa:</strong> Utilização de Inteligência Artificial Generativa, engenharia de prompts e ferramentas como <strong>Cursor AI</strong> para aceleração do desenvolvimento de soluções e automação de atividades.
                </div>
              </div>

              <div class="bullet-item">
                <div class="bullet-icon">✓</div>
                <div>
                  <strong>Migração &amp; Engenharia de Dados:</strong> Planejamento, análise, transformação e validação de grandes volumes de dados entre ambientes para garantir consistência e integridade das informações.
                </div>
              </div>

              <div class="bullet-item">
                <div class="bullet-icon">✓</div>
                <div>
                  <strong>Implantação de Software &amp; Nexus Apps:</strong> Implantação e homologação de novos Nexus Apps, suporte técnico, criação de documentações e alinhamento transparente com stakeholders.
                </div>
              </div>

              <div class="bullet-item">
                <div class="bullet-icon">✓</div>
                <div>
                  <strong>Atuação Multidisciplinar:</strong> Trabalho integrado junto às equipes de Produto, Desenvolvimento, Implantação e Customer Success para entrega de soluções escaláveis.
                </div>
              </div>
            </div>
          </div>

        </div>
      </div>
    </section>

    <!-- EXPERIENCIA PROFISSIONAL COMPLETA DO LINKEDIN -->
    <section id="experiencia">
      <div class="container">
        <div class="section-head center">
          <div class="eyebrow">Trajetória Profissional</div>
          <h2>Experiência Profissional</h2>
          <p>Histórico completo de atuação profissional extraído do currículo oficial do LinkedIn.</p>
        </div>

        <div class="timeline-container">

          <!-- 01. Superlogica Pleno -->
          <div class="glass-panel timeline-card">
            <div class="timeline-header">
              <div>
                <span class="company-name">Superlógica Tecnologias (4 anos e 9 meses no grupo)</span>
                <h3 class="role-title">Analista de Projetos Pleno</h3>
              </div>
              <span class="date-badge">Setembro de 2025 - Presente</span>
            </div>

            <p style="color: var(--text-main); font-size: 1.02rem; margin-bottom: 14px; font-weight: 600;">
              Condução de projetos estratégicos de transformação digital, desenvolvimento de soluções e automação de processos com foco em otimização operacional e evolução contínua.
            </p>

            <ul class="timeline-bullets">
              <li><strong>Nexus Apps:</strong> Implantação, teste e homologação de novos Nexus Apps para expansão das capacidades da plataforma.</li>
              <li><strong>IA Generativa &amp; Cursor AI:</strong> Engenharia de prompts e construção de fluxos automatizados com Inteligência Artificial Generativa para acelerar o desenvolvimento de soluções.</li>
              <li><strong>Desenvolvimento em Python &amp; APIs:</strong> Criação de scripts e aplicações em <strong>Python</strong> e <strong>FastAPI</strong> voltadas para automação, processamento de dados e integrações.</li>
              <li><strong>Migração de Dados (ETL):</strong> Planejamento, execução, análise, transformação e validação de migração de grandes volumes de dados garantindo 100% de consistência e integridade.</li>
              <li><strong>Gestão de Projetos:</strong> Condução simultânea de múltiplos projetos utilizando metodologias ágeis (Scrum/Kanban) e tradicionais, garantindo prazos e entregas de alta qualidade.</li>
              <li><strong>Alinhamento Multidisciplinar:</strong> Trabalho integrado em conjunto com as equipes de Produto, Desenvolvimento, Implantação e Customer Success.</li>
            </ul>
          </div>

          <!-- 02. Superlogica Implantacao Pleno -->
          <div class="glass-panel timeline-card">
            <div class="timeline-header">
              <div>
                <span class="company-name">Superlógica Tecnologias</span>
                <h3 class="role-title">Analista de Implantação Pleno</h3>
              </div>
              <span class="date-badge">Janeiro de 2022 - Agosto de 2025 (3 anos e 8 meses)</span>
            </div>

            <p style="color: var(--text-main); font-size: 0.98rem; margin-bottom: 12px;">
              Liderança e acompanhamento de projetos de implantação de software ERP e treinamento operacional de clientes.
            </p>

            <ul class="timeline-bullets">
              <li>Ponto de contato técnico e estratégico com clientes durante todo o ciclo de onboarding e implantação do sistema.</li>
              <li>Realização de treinamentos operacionais presenciais e remotos sobre as rotinas do software.</li>
              <li>Validação de integrações entre sistemas, mapeamento de bugs e atuação direta com a equipe de desenvolvimento para correções.</li>
              <li>Elaboração e atualização de documentações técnicas, cronogramas e suporte especializado a usuários finais.</li>
            </ul>
          </div>

          <!-- 03. Ahreas -->
          <div class="glass-panel timeline-card">
            <div class="timeline-header">
              <div>
                <span class="company-name">Ahreas</span>
                <h3 class="role-title">Analista de Implantação</h3>
              </div>
              <span class="date-badge">Janeiro de 2022 - Agosto de 2024 (2 anos e 8 meses)</span>
            </div>

            <p style="color: var(--text-main); font-size: 0.98rem; margin-bottom: 12px;">
              Atuação no acompanhamento de implantações do ERP Ahreas para gestão financeira e operacional.
            </p>

            <ul class="timeline-bullets">
              <li>Acompanhamento completo de projetos de implantação do ERP Ahreas.</li>
              <li>Treinamento prático de usuários sobre as rotinas e funcionalidades do sistema.</li>
              <li>Validação de integrações de dados e identificação contínua de oportunidades de melhoria do software.</li>
            </ul>
          </div>

          <!-- 04. Sindica Profissional -->
          <div class="glass-panel timeline-card">
            <div class="timeline-header">
              <div>
                <span class="company-name">Gestão Operacional &amp; Condominial</span>
                <h3 class="role-title">Síndica Profissional &amp; Gestora Operacional</h3>
              </div>
              <span class="date-badge">Janeiro de 2015 - Agosto de 2022 (7 anos e 8 meses)</span>
            </div>

            <p style="color: var(--text-main); font-size: 0.98rem; margin-bottom: 12px;">
              Gestão executiva, financeira e de pessoas aplicada à administração de empreendimentos.
            </p>

            <ul class="timeline-bullets">
              <li>Gestão participativa com prestação de contas transparente, clara e objetiva para conselhos e condôminos.</li>
              <li>Desenvolvimento e aplicação de estratégias de redução de custos operacionais e otimização orçamentária.</li>
              <li>Controle de protocolos de segurança, liderança de equipes multidisciplinares e gestão de fornecedores.</li>
              <li>Criação e execução de programas de capacitação e retenção de colaboradores.</li>
            </ul>
          </div>

          <!-- 05. Administradora Sell -->
          <div class="glass-panel timeline-card">
            <div class="timeline-header">
              <div>
                <span class="company-name">Administradora Sell</span>
                <h3 class="role-title">Gerente de Condomínio</h3>
              </div>
              <span class="date-badge">Maio de 2018 - Julho de 2020 (2 anos e 3 meses)</span>
            </div>

            <p style="color: var(--text-muted); font-size: 0.95rem; line-height: 1.65;">
              Gestão de carteira de clientes, acompanhamento de rotinas financeiras e operacionais, liderança de assembleias e mediação de processos administrativos.
            </p>
          </div>

          <!-- 06. Condominio Clima do Bosque &amp; Rachkorsky -->
          <div class="glass-panel timeline-card">
            <div class="timeline-header">
              <div>
                <span class="company-name">Condomínio Clima do Bosque / Rachkorsky</span>
                <h3 class="role-title">Gerente Predial &amp; Assistente de Sindicância</h3>
              </div>
              <span class="date-badge">2017 - 2018</span>
            </div>

            <p style="color: var(--text-muted); font-size: 0.95rem; line-height: 1.65;">
              Acompanhamento de rotinas prediais, coordenação de equipes de manutenção, controle de contratos de terceiros e suporte direto à comissão de sindicância.
            </p>
          </div>

        </div>
      </div>
    </section>

    <!-- COMPETENCIAS -->
    <section id="competencias">
      <div class="container">
        <div class="section-head center">
          <div class="eyebrow">Soluções</div>
          `<h2>O Que Eu Construo</h2>`
          <p>Competências técnicas aplicadas na aceleração de projetos e automação inteligente.</p>
        </div>

        <div class="competencies-grid">
          <div class="glass-panel competency-card">
            <div class="competency-icon">📋</div>
            <h3>Gestão de Projetos</h3>
            <p>Condução de projetos ágeis e tradicionais, alinhamento com stakeholders, kickoffs, status report e homologação de softwares.</p>
          </div>

          <div class="glass-panel competency-card">
            <div class="competency-icon">🗄️</div>
            <h3>Migração de Dados</h3>
            <p>Análise, transformação, validação e sanitização de grandes volumes de dados para garantir integridade na migração de sistemas.</p>
          </div>

          <div class="glass-panel competency-card">
            <div class="competency-icon">⚡</div>
            <h3>Automação com Python</h3>
            <p>Desenvolvimento de scripts e aplicações em Python para automatizar tarefas repetitivas, extração e processamento de dados.</p>
          </div>

          <div class="glass-panel competency-card">
            <div class="competency-icon">🤖</div>
            <h3>IA Generativa &amp; Cursor AI</h3>
            <p>Engenharia de prompts e fluxos com IA Generativa (Cursor AI) para acelerar a entrega de aplicações e inteligência operacional.</p>
          </div>

          <div class="glass-panel competency-card">
            <div class="competency-icon">🚀</div>
            <h3>FastAPI &amp; Integrações</h3>
            <p>Construção de conectores, endpoints REST e validação de integrações entre plataformas e Nexus Apps.</p>
          </div>

          <div class="glass-panel competency-card">
            <div class="competency-icon">💻</div>
            <h3>Desenvolvimento de Apps</h3>
            <p>Criação de ferramentas web e plugins voltados para aumento de produtividade e melhoria contínua de processos.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- PROJETOS -->
    <section id="projetos">
      <div class="container">
        <div class="section-head center">
          <div class="eyebrow">Cases</div>
          <h2>Projetos em Destaque</h2>
          <p>Cases de automação, migração de dados e ferramentas desenvolvidas.</p>
        </div>

        <div class="projects-grid">

          <div class="glass-panel project-card featured">
            <div>
              <span class="project-category-badge">Automação &amp; SaaS • Projeto Autoral</span>
              <h3>AURA Automation</h3>
              <p>
                Plataforma autoral SaaS criada para transformar processos operacionais em soluções digitais escaláveis. O projeto engloba automação de processos, integração de fluxos, engine em Python/FastAPI, plugins modulares e Inteligência Artificial.
              </p>

              <div class="project-tech-stack">
                <span class="tag">Python</span>
                <span class="tag">FastAPI</span>
                <span class="tag">PostgreSQL</span>
                <span class="tag">Redis</span>
                <span class="tag">Engine de Automação</span>
                <span class="tag">IA Generativa</span>
              </div>

              <div class="project-footer">
                <a href="https://aura-automation.onrender.com/" target="_blank" rel="noopener noreferrer" class="btn btn-primary btn-sm">
                  Conhecer o AURA &rarr;
                </a>
                <a href="https://github.com/tatiramos06" target="_blank" rel="noopener noreferrer" class="btn btn-sm">
                  GitHub
                </a>
              </div>
            </div>

            <div style="background: rgba(56, 146, 255, 0.05); border: 1px solid rgba(56, 146, 255, 0.2); border-radius: var(--radius-md); padding: 28px; text-align: center;">
              <div style="font-size: 3rem; margin-bottom: 12px;">⚡</div>
              <h4 style="font-weight: 800; font-size: 1.2rem; color: var(--electric); margin-bottom: 8px;">AURA Platform</h4>
              <p style="font-size: 0.88rem; color: var(--text-muted);">Transformando tarefas repetitivas em produtos digitais escaláveis.</p>
            </div>
          </div>

          <div class="glass-panel project-card">
            <div>
              <span class="project-category-badge">Dados e Processos</span>
              <h3>Migração de Dados entre Sistemas</h3>
              <p>Soluções para importação, transformação, validação e migração de grandes volumes de dados entre ambientes mantendo consistência e integridade.</p>
              
              <div class="project-tech-stack">
                <span class="tag">ETL</span>
                <span class="tag">Python</span>
                <span class="tag">Validação</span>
                <span class="tag">Sanitização de Dados</span>
              </div>
            </div>

            <div class="project-footer">
              <a href="https://github.com/tatiramos06" target="_blank" rel="noopener noreferrer" class="btn btn-sm">
                Ver no GitHub &rarr;
              </a>
            </div>
          </div>

          <div class="glass-panel project-card">
            <div>
              <span class="project-category-badge">Desenvolvimento</span>
              <h3>Homologação &amp; Automação de Apps</h3>
              <p>Implantação, teste e desenvolvimento de ferramentas para otimização operacional, extensão de plataformas e ganho de produtividade.</p>

              <div class="project-tech-stack">
                <span class="tag">Python</span>
                <span class="tag">Cursor AI</span>
                <span class="tag">Nexus Apps</span>
                <span class="tag">APIs</span>
              </div>
            </div>

            <div class="project-footer">
              <a href="https://github.com/tatiramos06" target="_blank" rel="noopener noreferrer" class="btn btn-sm">
                Ver no GitHub &rarr;
              </a>
            </div>
          </div>

        </div>
      </div>
    </section>

    <!-- FORMACAO ACADEMICA & CERTIFICACOES -->
    <section id="formacao">
      <div class="container">
        <div class="section-head center">
          <div class="eyebrow">Qualificação</div>
          <h2>Formação &amp; Certificações</h2>
          <p>Base acadêmica em Tecnologia da Informação e capacitações técnicas continuadas.</p>
        </div>

        <div class="edu-grid">
          <div class="glass-panel edu-card">
            <h3>🎓 Formação Acadêmica</h3>

            <div class="edu-item">
              <div class="edu-title">Tecnologia da Informação</div>
              <div class="edu-institution">Universidade São Judas Tadeu</div>
              <div class="edu-year">2024 - 2026 (Em andamento)</div>
            </div>

            <div class="edu-item">
              <div class="edu-title">Mercado Imobiliário &amp; Gestão de Negócios</div>
              <div class="edu-institution">Centro Universitário Senac</div>
              <div class="edu-year">2020</div>
            </div>

            <div class="edu-item">
              <div class="edu-title">Análise de Prestação de Contas &amp; Gestão</div>
              <div class="edu-institution">Universidade Secovi</div>
              <div class="edu-year">2018</div>
            </div>
          </div>

          <div class="glass-panel edu-card">
            <h3>📜 Certificações &amp; Cursos</h3>

            <div class="edu-item">
              <div class="edu-title">Certificação Java SE 7 Programmer I</div>
              <div class="edu-institution">Oracle / Java Certification</div>
            </div>

            <div class="edu-item">
              <div class="edu-title">Capacitação em Projetos SAP</div>
              <div class="edu-institution">SAP - Record of Achievement</div>
            </div>

            <div class="edu-item">
              <div class="edu-title">Início de Projetos: Gestão de Sucesso</div>
              <div class="edu-institution">Gestão e Governança de Projetos</div>
            </div>

            <div class="edu-item">
              <div class="edu-title">TRN — Segurança da Informação</div>
              <div class="edu-institution">Segurança &amp; Conformidade de Dados</div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- AURA AUTOMATION -->
    <section id="aura">
      <div class="container">
        <div class="glass-panel" style="padding: 60px; background: linear-gradient(135deg, rgba(16, 24, 40, 0.95), rgba(30, 48, 88, 0.8)); border-color: rgba(56, 146, 255, 0.4);">
          <div style="max-width: 720px;">
            <div class="eyebrow">Projeto Autoral</div>
            <h2 style="font-size: 2.3rem; font-weight: 800; margin: 12px 0 16px;">
              Meu projeto autoral: <span class="gradient-text">AURA Automation</span>
            </h2>
            <p style="color: var(--text-muted); font-size: 1.08rem; line-height: 1.7; margin-bottom: 28px;">
              O AURA nasceu da visão de transformar automação em uma plataforma de soluções acessíveis, modulares e escaláveis. É um ecossistema construído para transformar processos operacionais em soluções de alto impacto.
            </p>
            <a href="https://aura-automation.onrender.com/" target="_blank" rel="noopener noreferrer" class="btn btn-primary">
              Conhecer o AURA &rarr;
            </a>
          </div>
        </div>
      </div>
    </section>

    <!-- CONTATO -->
    <section id="contato">
      <div class="container">
        <div class="section-head center">
          <div class="eyebrow">Conexão Direta</div>
          <h2>Contato &amp; Redes</h2>
          <p>Fale comigo diretamente através dos canais profissionais abaixo:</p>
        </div>

        <div class="contact-details-grid">
          <div class="glass-panel contact-box">
            <div class="contact-box-icon">💬</div>
            <h4>WhatsApp / Celular</h4>
            <p>(11) 91791-4570</p>
            <a href="https://wa.me/5511917914570?text=Olá%20Tatiana,%20vi%20seu%20portfólio%20e%20gostaria%20de%20conversar!" target="_blank" rel="noopener noreferrer" class="btn btn-whatsapp btn-sm" style="margin-top: 8px;">
              Abrir WhatsApp
            </a>
          </div>

          <div class="glass-panel contact-box">
            <div class="contact-box-icon">✉️</div>
            <h4>E-mail</h4>
            <p>tatiana.ramos.prs@gmail.com</p>
            <a href="mailto:tatiana.ramos.prs@gmail.com" class="btn btn-primary btn-sm" style="margin-top: 8px;">
              Enviar E-mail
            </a>
          </div>

          <div class="glass-panel contact-box">
            <div class="contact-box-icon">💼</div>
            <h4>LinkedIn</h4>
            <p>Perfil Profissional Oficial</p>
            <a href="https://www.linkedin.com/in/tatiana-ramos-581b90100" target="_blank" rel="noopener noreferrer" class="btn btn-sm" style="margin-top: 8px;">
              Ver LinkedIn &rarr;
            </a>
          </div>

          <div class="glass-panel contact-box">
            <div class="contact-box-icon">🐙</div>
            <h4>GitHub</h4>
            <p>@tatiramos06</p>
            <a href="https://github.com/tatiramos06" target="_blank" rel="noopener noreferrer" class="btn btn-sm" style="margin-top: 8px;">
              Ver Repositórios &rarr;
            </a>
          </div>
        </div>
      </div>
    </section>

  </main>

  <!-- FLOATING WHATSAPP BUTTON -->
  <a href="https://wa.me/5511917914570?text=Olá%20Tatiana,%20vi%20seu%20portfólio%20e%20gostaria%20de%20conversar!" target="_blank" rel="noopener noreferrer" class="floating-whatsapp" aria-label="Falar no WhatsApp">
    <svg viewBox="0 0 24 24"><path d="M.057 24l1.687-6.163c-1.041-1.804-1.588-3.849-1.587-5.946.003-6.556 5.338-11.891 11.893-11.891 3.181.001 6.167 1.24 8.413 3.488 2.245 2.248 3.481 5.236 3.48 8.414-.003 6.557-5.338 11.892-11.893 11.892-1.99-.001-3.951-.5-5.688-1.448l-6.305 1.654zm6.597-3.807c1.676.995 3.276 1.591 5.392 1.592 5.448 0 9.886-4.434 9.889-9.885.002-5.462-4.415-9.89-9.881-9.892-5.452 0-9.887 4.434-9.889 9.884-.001 2.225.651 3.891 1.746 5.634l-.999 3.648 3.742-.981z"/></svg>
  </a>

  <footer>
    <div class="container">
      <p>&copy; 2026 Tatiana Ramos • Analista de Projetos Pleno na Superlógica Tecnologias | IA Generativa | Python | Automação | Migração de Dados</p>
    </div>
  </footer>

</body>
</html>
"@

# Encode to Base64 so UTF-8 bytes are locked in 100% precision!
$utf8Bytes = [System.Text.Encoding]::UTF8.GetBytes($html)
$base64Str = [System.Convert]::ToBase64String($utf8Bytes)
$base64Bytes = [System.Convert]::FromBase64String($base64Str)
[System.IO.File]::WriteAllBytes("c:\Users\win\Documents\TATIANA\POTFOLIO\index.html", $base64Bytes)
Write-Host "Generated Base64-locked UTF-8 index.html!"
