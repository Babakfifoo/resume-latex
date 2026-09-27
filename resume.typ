// Rezume-style resume, rewritten in Typst
// Original: LaTeX template by Nanu Panchamurthy, based on sb2nov/resume

#let accent = rgb("#50B948")
#let rule-color = rgb("#000000")

#set page(paper: "a4", margin: 1cm)
#set text(font: "Source Sans Pro", size: 10.5pt, fill: black)
#set par(justify: false, leading: 0.55em)

#let section(title) = {
  v(10pt)
  block[
    #text(size: 13pt, weight: "bold", fill: accent)[#title]
    #v(-8pt)
    #line(length: 100%, stroke: 0.4pt + rule-color)
  ]
  v(2pt)
}

#let em-text(body) = text(weight: "bold", fill: accent)[#body]

#let quad-heading(a, b, c, d) = {
  grid(
    columns: (1fr, auto),
    text(weight: "bold")[#a], text()[#b]
  )
  grid(
    columns: (1fr, auto),
    text(style: "italic", size: 9.5pt)[#c], text(style: "italic", size: 9.5pt)[#d]
  )
}

#let quad-heading-child(a, b) = {
  grid(
    columns: (1fr, auto),
    text(weight: "bold", size: 9.5pt)[#a], text(size: 9.5pt)[#b]
  )
}

#let bullets(items) = {
  list(..items, marker: [•], indent: 0.15in, spacing: 4pt)
}

#let divider() = {
  v(2pt)
  line(length: 50%, stroke: 0.4pt + rule-color)
  v(4pt)
}

// ---------------- HEADER ----------------

#text(size: 24pt, weight: "bold")[Babäk Firoozi Fooladi]
#v(4pt)
Location: Espoo, Uusimaa, Finland \
#link("https://www.linkedin.com/in/babak-firoozi-fooladi/")[#underline[LinkedIn]] $|$ #link("https://github.com/Babakfifoo")[#underline[GitHub]] $|$ #link("https://stackoverflow.com/users/5116559/babak-fi-foo")[#underline[StackOverFlow]] \
Email: #link("mailto:b.firoozi.f@gmail.com")[#underline[b.firoozi.f\@gmail.com]]

// ---------------- SUMMARY ----------------

#section[Data Analyst | Real Estate Economist]

#text(size: 9.5pt)[
Data-driven Analyst and PhD candidate in Real Estate Economics at Aalto University, with hands-on experience building BI dashboards, spatial data pipelines, and reporting systems for clients, research teams, and public sector partners. Comfortable moving between the engineering side of data work (Python, SQL, PostgreSQL, ETL pipelines) and the stakeholder side, translating business questions into clear metrics and visualizations. Known for turning messy or scattered data into consistent, reliable reporting that people actually use.
]

// ---------------- SKILLS ----------------

#section[Core Competencies & Technical Skills]

#bullets((
  [*Position related skills:* Reporting, academic and business communication, data analysis, data visualisation, presentation, collaboration],
  [*Data Analytics & BI:* Power BI, Dashboard Development, Data Visualization, Quantitative Research, Business Intelligence, Technical Documentation],
  [*Programming & Core Languages:* Python, R, SQL, Julia, STATA, Git],
  [*Data Engineering & Databases:* PostgreSQL, PostGIS, DuckDB, Pandas, Polars, GeoParquet, SQLite, MongoDB, REST APIs, Web Scraping, ETL/ELT Pipelines, Azure Functions, GCP, Azure],
  [*Spatial Data & GIS Analytics:* GeoPandas, Shapely, ArcGIS / ArcGIS Online, ESRI CityEngine, Spatial Econometrics, Cartography, Network Analysis],
  [*Data Science & ML:* Machine Learning, Econometric Modeling, Time-Series Forecasting (VAR, Co-integration, Univariate/Multivariate), OLS / IV-OLS, Panel Data, Survival Analysis, RAG, Agentic AI, LLMs/NLP],
))

// ---------------- EXPERIENCE ----------------

#section[Professional Experience]

#quad-heading("DATA ANALYTICS & ENGINEERING", "Jan 2025 -- Present", "Self-Employed | Consultant", "Project-Based -- Espoo, Finland")
#bullets((
  [Deliver end-to-end data engineering, spatial analytics, and business intelligence solutions tailored to client objectives and scalable growth.],
  [*Backend Architecture & Spatial Engineering (Apex-Heat):* Architected automated Python scripts using GeoPandas, Shapely, GeoParquet, and PostGIS to acquire, clean, geometry-correct, and model national spatial building datasets across Finland.],
  [*API & Data Pipeline Automation:* Designed and implemented API-driven data pipelines for automated spatial operations, evaluating data models for EU-wide scaling using domain expertise in real estate economics and zoning laws.],
  [*Pipeline Optimization & Tech Debt Reduction (Apex-Heat):* Spearheaded core codebase migration from Pandas to Polars, refactoring design patterns and introducing comprehensive test coverage to achieve an *86% performance improvement* on targeted calculations and a *60% overall application speedup*.],
))

#v(6pt)
#quad-heading("Ph.D. Candidate", "Sep 2020 -- June 2026", "Aalto University", "Full-time -- Espoo, Finland")
#bullets((
  [Conduct quantitative research at the intersection of urban economics and real estate, applying econometrics and machine learning to housing market dynamics and spatial development.],
  [Architected and managed team data infrastructure, deploying a partitioned Data Lake and DuckDB-based querying workflows with full technical documentation for non-technical researchers.],
  [Engineered automated web scraping pipelines using Azure Functions and REST/ArcGIS endpoints to harvest, geocode, and store real-world property transaction data (MML, Ryhti, SYKE, KVKL).],
  [Modeled complex urban dynamics using time-series analysis, hedonic regressions, and time-to-event statistical modeling.],
  [Applied NLP and RAG architectures to process PDF/HTML land-use planning documents for structured feature extraction.],
))

#v(4pt)
#quad-heading-child("Research Assistant", "Jun 2019 -- Sep 2019")
#text(size: 9pt)[Aalto University -- Full-time -- Espoo, Finland]
#bullets((
  [Collaborated with *MIT CityLab* on Agent-Based Modeling (ABM) to simulate urban mobility and parking pressure dynamics across campus infrastructure using the GAMA Platform.],
))

#divider()

#quad-heading("Data Analytics Engineer", "Sep 2020 -- Dec 2024", "Qissa kaupunkisuunnitteluanalytiikka Oy -- Startup", "Part-time -- Espoo, Finland")
#bullets((
  [Designed and maintained end-to-end spatial data pipelines ingesting REST API data, performing geocoding and automated storage for urban planning analytics.],
  [Developed a spatial analytics dashboard with a custom network analysis backend, integrating HSL, HERE, and HSY APIs for real-time transportation routing and network evaluation.],
  [Processed multi-national census datasets (US, Finland, Sweden, Denmark) to calculate commuting pattern carbon emissions.],
))

#divider()

#quad-heading("Planning Assistant", "Nov 2018 -- Jun 2021", "WSP Finland Oy", "Part-time -- Helsinki, Finland")
#bullets((
  [Performed spatial data analysis and pedestrian network modeling to forecast route choices and post-development pedestrian traffic for municipal clients.],
  [Built interactive 3D city models using ESRI CityEngine and configured ArcGIS Online platforms for maritime spatial planning projects.],
  [Produced BI reports, spatial maps, and visualizations to communicate quantitative findings to multidisciplinary teams and executive stakeholders.],
))

#divider()

#quad-heading("GIS Operator", "Aug 2015 -- May 2016", "University of Tehran", "Part-time -- Tehran, Iran")
#bullets((
  [Collected, processed, and prepared *GIS datasets* to support urban designers in implementing and evaluating new urban design directives for Tehran.],
))

#divider()

#quad-heading("Advisor & Assistant", "Aug 2011 -- Aug 2018", "Airsa Dorsa Co. Ltd. -- Family Business", "Full-time -- Karaj, Iran")
#bullets((
  [Managed financial planning, cost metrics, and operational workflows, leveraging accounting datasets to generate business intelligence reporting for executive decision-making.],
  [Double booking accounting, cost calculation, document management, and financial reporting for manufacturing operations.],
))

// ---------------- EDUCATION ----------------

#section[Education]

#quad-heading("Aalto University", "Espoo, Finland", "Doctor of Philosophy in Technology, Real Estate Economics", "Sep 2020 - Present")
#v(6pt)
#quad-heading("Aalto University", "Espoo, Finland", "MSc. (Tech.) Urban Studies and Planning in Real Estate Economic", "Sep 2018 - Jul 2020")
#text(size: 9.5pt)[GPA: 4.1/5, Graduated with honours]
#v(6pt)
#quad-heading("University of Tehran", "Tehran, Iran", "BA. Town Planning", "Sep 2011 - Jun 2015")
#text(size: 9.5pt)[GPA: 16.67/20, Academic excellence]

// ---------------- LANGUAGES ----------------

#section[Languages]

#bullets((
  [Persian (Native)],
  [English (Fluent (C2))],
  [Finnish (Intermediate (A2-B1))],
))

// ---------------- PUBLICATIONS ----------------

#section[Publications:]

#bullets((
  [Effects of zoning on property values and impact assessment of changes in land use policy measures: #link("https://urn.fi/URN:ISBN:978-952-383-083-7")[#underline[Source]]],
))

// ---------------- CERTIFICATES ----------------

#section[Certificates:]

#bullets((
  [Oxford Machine Learning Summer School, OxML 2023],
  [Urban Economic Association, UEA 2020 Lectures on Urban Economics],
))

// ---------------- COMMUNITY & LEADERSHIP ----------------

#section[Community & Leadership]

#bullets((
  [#em-text[Speaker]: Spatial data analysis, spatial data engineering. DataTribe collective meetup, 2023],
  [#em-text[Contributor]: Helsinki Data Week volunteer (2024 & 2025)],
  [#em-text[Speaker]: "What is Survival Analysis?". PyData Helsiniki, 12th August 2026, Visma HQ, Helsinki, Finland],
  [#em-text[Speaker]: "The Effect of Land Development Policies on Implementation of Housing Plans". 28th Annual European Real Estate Society conference, 22nd-25th June, Milan, Italy.],
  [#em-text[Speaker]: "The Impact of Public Land Development on Implementation of Housing Plans". AREUEA International Conference, 19th-22nd July, Cambridge, UK.],
  [#em-text[Speaker]: "Time limit: is it an effective way to encourage housing construction?". RYTS Science Slam, 25th of January, Helsinki, Finland],
  [#em-text[Speaker]: "Balancing financial constraints and public objectives: Assessing the impact of public land ownership on housing development duration". World Planning School Congress, 17th-21st July, Espoo, Finland],
  [DataTribe collective moderator],
  [#em-text[Guest Lecturer]: Science and Breakfast Staff Meeting, Introduction to Zotero, how to migrate from Mendeley. _October 2023_.],
  [#em-text[Guest Lecturer]: Guest lecturer in Spatial Planning and Traffic engineering (SPT) program, Aalto university. Data analysis and Visualization using PPGIS. _March 2023_.],
  [#em-text[Guest Lecturer]: Guest lecturer in Urban Studies and Planning (USP) program, Aalto university. How to use GIS in Urban studies and planning. _January 2023_.],
  [#em-text[Guest Lecturer]: Tutor in Urban Studio Challenge 1 (USP) course, Data analysis, GIS, planning and data visualization assistant. _September 2022_.],
  [#em-text[Guest Lecturer]: Guest lecturer in Sustainable Built Environment (SBE) course, Aalto university. GIS, Spatial Thinking and their use cases in sustainability and urban resilience. _November 2021_.],
  [#em-text[Guest Lecturer]: Guest lecturer in Sustainable Built Environment (SBE) course, Aalto university. GIS and its use cases in sustainability and urban resilience. _December 2020_.],
  [#em-text[Guest Lecturer]: Guest lecturer in Digital urban course at Aalto university. Teaching about data analysis and its uses in built environment, types of data and available information. _March 2020_.],
))
