// -------------------------
// Resume in Typst
// Author : Matty
// Based on: https://github.com/jakegut/resume (which was based on https://github.com/sb2nov/resume)
// License : MIT
// ------------------

#set page(
  paper: "us-letter",
  margin: (left: 0.5in, right: 0.5in, top: 0.5in, bottom: 0.5in),
)

#set text(
  font: "New Computer Modern",
  size: 10pt,
)

#set par(justify: false, leading: 0.52em)

// -------------------- CUSTOM FUNCTIONS --------------------

#let resume-item(body) = {
  set text(size: 9.5pt)
  set par(leading: 0.5em)
  body
}

#let resume-entry(
  title: "",
  location: "",
  subtitle: "",
  date: "",
  ..body
) = {
  pad(
    bottom: -8pt,
    {
      grid(
        columns: (1fr, auto),
        align(left)[*#title*],
        align(right)[#date],
      )
      grid(
        columns: (1fr, auto),
        align(left)[_#subtitle#text(size: 9.5pt)[]_],
        align(right)[_#text(size: 9.5pt)[#location]_],
      )
    }
  )
}

#let resume-project-entry(
  title: "",
  date: "",
) = {
  pad(
    bottom: -8pt,
    grid(
      columns: (1fr, auto),
      align(left)[#text(size: 9.5pt)[#title]],
      align(right)[#text(size: 9.5pt)[#date]],
    )
  )
}

// Section formatting with line
#let section-heading(body) = {
  set text(size: 11pt, weight: "regular")
  upper(smallcaps(body))
  v(-8pt)
  line(length: 100%, stroke: 0.5pt + black)
  v(-5pt)
}

// -------------------- START OF DOCUMENT --------------------

// -------------------- HEADING --------------------
#align(center)[
  #text(size: 24pt, weight: "bold")[Adhitya Thirumala]
  #v(8pt)
  #text(size: 9.5pt)[
    #box[#image("https://simpleicons.org/icons/github.svg", height: 9pt) #link("https://github.com/adhi-thirumala")[adhi-thirumala]]
    #h(8pt)
    #box[#image("https://simpleicons.org/icons/linkedin.svg", height: 9pt) #link("https://www.linkedin.com/in/adhitya-thirumala")[adhitya-thirumala]]
    #h(8pt)
    #box[#image("https://simpleicons.org/icons/gmail.svg", height: 9pt) #link("mailto:me@adhithirumala.com")[me\@adhithirumala.com]]
    #h(8pt)
    #box[#image("https://simpleicons.org/icons/googlechrome.svg", height: 9pt) #link("https://www.adhithirumala.com")[adhithirumala.com]]
    #h(8pt)
    #box[#image("https://simpleicons.org/icons/orcid.svg", height: 9pt) #link("https://orcid.org/0009-0003-6634-7066")[0009-0003-6634-7066]]
  ]
]

#v(-3pt)

// -------------------- EDUCATION --------------------
#section-heading[Education]

#resume-entry(
  title: "University of Illinois Urbana-Champaign",
  date: "Expected Graduation: May 2027",
  subtitle: "Major: Computer Science + Linguistics | Minor: Mathematics",
  location: "GPA: 3.82/4.0",
)

#v(-7.5pt)

// -------------------- EXPERIENCE --------------------
#section-heading[Experience]

#resume-project-entry(
  title: [*Digital Main* | #text(size: 9pt)[_Machine Learning Intern_]],
  date: "May 2025 | August 2025",
)
- Built an asynchronous agentic retrieval-augmented-generation (RAG) system in Python, orchestrating query decomposition and research across web and internal client data (Slack messages, emails, etc.) using LangGraph
- Utilized FastAPI to create customer-facing production API to stream research process to web client using Server Sent Events (SSE)
- Implemented automated agentic source validation, while integrating images and generating charts or tables into final artifact

#v(-5pt)

#resume-project-entry(
  title: [*University of Illinois Siebel School of Computer Science* | #text(size: 9pt)[_Course Assistant_]],
  date: "January 2026 | Present",
)
- Selected to be an undergraduate course assistant for CS 225: Data Structures and Algorithms in C++
- Assisted students in understanding and learning data structures (graphs, trees, linked lists) through office hours, online forums, and lab sections

#v(-5pt)

#resume-project-entry(
  title: [*Association for Computing Machinery at Illinois* | #text(size: 9pt)[_Treasurer_]],
  date: "March 2025 | Present",
)
- Managed over *\$350k* of organizational funds for largest CS student organization at Illinois with *1000+* total members
- Migrated accounting and credit card platforms from BILL.com to Ramp to obtain credit limit increase of *2300%* and to streamline reimbursements, onboarding, and reporting workflows
- Served as liaison between organization and Siebel School of Computer Science staff to coordinate usage of department-provisioned funds for ACM events such as biannual open house *(500+ attendees)* and various social events

#v(-5pt)

#resume-project-entry(
  title: [*Freelance* | #text(size: 9pt)[_Private Policy Debate Coach_]],
  date: "August 2024 | Present",
)
- Mentored *9* students from under-resourced institutions nationwide, identified through extensive high school competitive debate networking, providing coaching and research skills

#v(-7.5pt)

// -------------------- PUBLICATIONS --------------------
#section-heading[Selected Publications]

#resume-project-entry(
  title: [*Clickbait Classification and Spoiling Using Natural Language Processing #link("https://doi.org/10.48550/arXiv.2306.14907")[#text(fill: blue)[(arXiv)]]*],
  date: "Oct 2022 | May 2023",
)
- Trained transformers-based models on shared task dataset for clickbait detection
- Performed comparative analysis between fine-tuned SLM BERT-based models and Large Language Models on clickbait spoiling task
- Utilized Weights and Biases hyperparameter tuning to achieve *~80%* accuracy on shared task
- Results accepted by _The 17th International Workshop on Semantic Evaluation_: Toronto, Canada 2023

#v(-5pt)

#resume-project-entry(
  title: [*Extractive Question Answering(QA) on Queries in Hindi and Tamil #link("https://doi.org/10.48550/arXiv.2210.06356")[#text(fill: blue)[(arXiv)]]*],
  date: "Oct 2021 | May 2022",
)
- Trained NLP models to perform extractive QA improving performance by *20%* over baseline due to modified RoBERTa tokenizer
- Utilized crosslingual dataset provided by competing in online competition hosted by Google
- Received 26th Annual Carnegie Science Award given to *12* top scientists, entrepreneurs, innovators and educators across the city of Pittsburgh for submitted research

#v(-7.5pt)

// -------------------- PROJECTS --------------------
#section-heading[Projects]

// matched.lol
// mcp pokemon

#resume-project-entry(
  title: [*#link("https://github.com/adhi-thirumala/oxeye")[#text(fill: blue)[Oxeye]]* | #text(size: 9pt)[_Developer_]],
  date: "November 2025 | Current",
)
- Built a real-time Minecraft-Discord player status bridge using async Rust (Axum, Tokio frameworks) and Java Fabric mod enabling Discord communities to monitor online players
- Engineered high-performance async architecture with lock-free concurrent caching and heap-free player-name storage, eliminating muxtex contention and heap allocation on high-throughput player events and decreasing disk read/write
- Designed hybrid persistence layer combining SQLite for durability with in-memory caching for sub-millisecond queries across multiple tenants with multiple linked servers
- Containerized and deployed to VPS on Oracle Cloud using Docker Compose to run in production

#v(-5pt)

/*
#resume-project-entry(
  title: [*matched.lol* | #text(size: 9pt)[_Fullstack Developer_]],
  date: "September 2024 | December 2024",
)
- Developed a Java Spring Boot REST API with PostgreSQL database for a platform to pair League of Legends players, implementing Discord OAuth2 authentication and preference-based matching algorithms
- Created landing page with Next.js and Tailwind CSS to aggregate information of *40+* interested users
*/

#v(-7.5pt)

// -------------------- AWARDS --------------------
#section-heading[Awards and Competitions]

#resume-project-entry(
  title: [*SIGPwny FallCTF: 6th Place (Advanced Track)* in cybersecurity competition across *100+* teams from UIUC],
  date: "September 2025",
)

#v(-7.5pt)

// -------------------- SKILLS --------------------
#section-heading[Skills]

#pad(left: 0.15in)[
  #set text(size: 9.5pt)
  *Languages:* C++, Rust, C, Python, Java, HTML, Bash, LaTeX, SQL, Go, Lua, JavaScript, Typescript, CSS, Verilog, MIPS Assembly \
  *Tools:* Linux, Git, Vim, Huggingface, Maven, Gradle, SQLite, Docker, Docker Compose, PostgreSQL, Vercel, AWS, Oracle Cloud, Google Cloud Platform, Cloudflare (Domain Management), Github Actions CI/CD, Ghidra \
  *Libraries:* pandas, NumPy, Matplotlib, Tensorflow, pyTorch, Sci-Kit Learn, Swing (Java), Spring (Java), Next.JS, React.js, Flask, LangChain, LangGraph, FastAPI, Axum, Tokio
]

#v(-7.5pt)

// -------------------- COURSEWORK --------------------
#section-heading[Relevant Coursework]

#pad(left: 0.15in)[
  #set text(size: 9.5pt)
  *Computer Science:* Algorithms and Models of Computation, Data Structures in C++, Computer Architecture, Computational Linguistics \
  *Mathematics and Statistics:* Honors Abstract Linear Algebra, Statistics and Probability I, Introduction to Higher Level Math, Multivariable Calculus, Discrete Structures
]

// AP Classes: AP Computer Science Principles(5), AP Computer Science A(5), AP World History(5), AP US History(5), AP Calculus AB(5), AP Calculus BC(5), AP Chemistry, AP Physics C: Electricity and Magnetism(5), AP English Language and Composition(4), AP Statistics, AP Physics C: Mechanics (4), AP US Government and Politics (5), AP English Literature and Composition
// Academic Awards: AP Scholar with Distinction (2023), National Merit Qualifying Test Finalist (2023)

/*
#section-heading[Activities]

#pad(left: 0.15in)[
  #set text(size: 9.5pt)
  *Clubs:* Association for Computing Machinery at Illinois, GNU/Linux User Group
]
*/

/*
#section-heading[Miscellaneous]

#pad(left: 0.15in)[
  #set text(size: 9.5pt)
  *High School Clubs:* Speech and Debate (President), Science Fair (President)

  *High School Awards:* 2x State Championship Policy Debate, NMSQT Finalist, Broadcom MASTERS Top 300, Premier Distinction NSDA Honor Society, Presidential Volunteer Service Bronze Award, Presidential Volunteer Service Gold Award
]

#section-heading[High School Awards]

#resume-project-entry(
  title: [*Kumon* | #text(size: 9pt)[_Assistant for Center Operation - Fox Chapel Center_]],
  date: "2021 - 2024",
)
- Successfully improved the self-initiated learning abilities of over 200 students (Pre K-9) in English & math (arithmetic-calculus)
- Graded students' daily work and tutored students through concepts.

#resume-project-entry(
  title: [*Pennsylvania Junior Academy of Science Regional and State First Place*],
  date: "2021 - 2023",
)

#resume-project-entry(
  title: [*Broadcom MASTERS Top 300 Selection*],
  date: "2020",
)

#resume-project-entry(
  title: [*PA State Champion Policy Debate*],
  date: "2023, 2024",
)

#resume-project-entry(
  title: [*Outstanding Distinction in NSDA Honor Society (Top 0.4% USA, #1 PA Policy Debate)*],
  date: "2023",
)

#resume-project-entry(
  title: [*Presidential Volunteer Service Bronze Award*],
  date: "2022",
)

#resume-project-entry(
  title: [*Presidential Volunteer Service Gold Award*],
  date: "2021",
)

#resume-project-entry(
  title: [*National Merit Qualifying Test Finalist*],
  date: "2024",
)
*/

// -------------------- Volunteer --------------------

/*
#section-heading[Volunteer Activities]

#resume-project-entry(
  title: [*Mini Golf Fundraiser* | #text(size: 9pt)[_Founder, Leader of Fundraising Activities_]],
  date: "2021 - Present",
)

2021: Organized a Mini Golf fundraiser for Indian CoVID relief. Raised $2500, which was donated to EKAM ® Foundation for purchase of oxygen, and infant warmers given to primary health centers in South India.

2022: Organized a Mini Golf fundraiser for Bethlehem Haven, a local women's shelter, whose mission is to provide a continuum of care for homeless women that leads toward self-sufficiency. Raised $2000, towards the purchase of an Automated External Defibrillator which can be used to help those experiencing sudden cardiac arrest.

2023: Organized a Mini Golf fundraiser, with Moonyoung Hwang, for Bethlehem Haven. Raised $2000 for the renovation of their main residence, funds will be used for furnishing a room for homeless women to stay during their path to self-sufficiency.

#section-heading[Extracurricular Activities]

#resume-project-entry(
  title: [*Forensics and Model UN Club* | #text(size: 9pt)[_'22-'23: Director of Debate, '23-'24: President_]],
  date: "2020 - Present",
)

Intensively researched and debated on the national circuit without support from school-led program. Coached and taught novice students who qualified for state championships. Conducted after school practice sessions to improve performance in tournaments. Judged local novice tournaments. Created club-branded merchandise. Spearheaded fundraising efforts for competition travel.

#resume-project-entry(
  title: [*Science Fair Club* | #text(size: 9pt)[_'22-'24: President_]],
  date: "2017 - Present",
)

Promoted science fair opportunities throughout the high school, increased state participation in PJAS by 20%. Mentored younger students and taught presentation skills. Volunteered at an elementary school science fair to teach science concepts through basic demonstrations and to judge projects.

#resume-project-entry(
  title: [*Audubon Naturalist in Training (A.N.T.)* | #text(size: 9pt)[_Training Camp Counselor, Audubon Society of Western PA_]],
  date: "2021 - Present",
)

Counselor for youth nature camp, led nature walks, crafts & games to teach children from ages 5-12 about local flora and fauna. Volunteered at nature shop, assisted as cashier and in daily operations. Collected bird presence data throughout the nature preserve by both visual and aural identification, visual data was submitted to Project Feederwatch.
*/

/*
#section-heading[Summer Debate Workshop]

#resume-project-entry(
  title: [*University of Michigan Debate Institute Seven Week Program*],
  date: "2023",
)

Seven week summer workshop for Top Senior National Debaters. Significantly improved research skills, strategic vision & speaking ability through intensive lectures, classes & practice debates on the topic: _The United States federal government should substantially increase fiscal redistribution in the United States by adopting a federal jobs guarantee, expanding Social Security, and/or providing a basic income._

#resume-project-entry(
  title: [*University of Michigan Debate Institute Classic Plus Program*],
  date: "2022",
)

Four week summer workshop. Significantly improved research skills, strategic vision & speaking ability through intensive lectures, classes & practice debates on the topic: _The United States federal government should substantially increase its security cooperation with the North Atlantic Treaty Organization in one or more of the following areas: artificial intelligence, biotechnology, cybersecurity._
*/

/*
#section-heading[Debate Awards]

#resume-project-entry(
  title: [*#91 out of 1350 teams NDCA Baker Leaderboard*],
  date: "2023",
)

#resume-project-entry(
  title: [*National Catholic Forensics League Grand Nationals Octafinalist*],
  date: "2023",
)

#resume-project-entry(
  title: [*National Catholic Forensics League Grand Nationals Double-Octafinalist (Top 32)*],
  date: "2022",
)

#resume-project-entry(
  title: [*PA State Champion Policy Debate*],
  date: "2023, 2024",
)

#resume-project-entry(
  title: [*PA State Quarterfinalist Policy Debate*],
  date: "2022",
)
*/

/*
#section-heading[Volunteer Awards]

#resume-project-entry(
  title: [*Presidential Volunteer Service Bronze Award*],
  date: "2022",
)

#resume-project-entry(
  title: [*Presidential Volunteer Service Gold Award*],
  date: "2021",
)
*/
