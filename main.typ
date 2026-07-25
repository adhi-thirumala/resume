#import "@preview/simple-technical-resume:0.1.1": *
#import "@preview/orchid:0.1.0": generate-link as orcid-link

// Put your personal information here
#let name = "Adhitya Thirumala"
#let email = "me@adhithirumala.com"
#let github = "adhi-thirumala"
#let linkedin = "adhitya-thirumala"
#let personal-site = "adhithirumala.com"
#let phone = "ORCID: 0009-0003-6634-7066"

#show: resume.with(
  top-margin: 0.2in,
  font: "Libertinus Serif",
  personal-info-font-size: 8pt,
  author-position: center,
  personal-info-position: center,
  author-name: name,
  email: email,
  website: personal-site,
  linkedin-user-id: linkedin,
  github-username: github,

  phone: phone,
)
#set text(size: 11pt)
#set par(leading: 0.5em)


// -------------------- EDUCATION --------------------
#custom-title("Education")[
  #education-heading(
    "University of Ilinois Urbana-Champaign - Siebel School of Computer Science",
    "GPA: `",
    "Major: Computer Science + Linguistics",
    "Minor: Mathematics",
    datetime(year: 2024, month: 8, day: 1),
    datetime(year: 2028, month: 5, day: 1),
  )[]
]

// -------------------- EXPERIENCE --------------------
#custom-title("Experience")[

  #work-heading(
    "Cloudflare",
    "Software Engineering Intern",
    "Austin. TX",
    datetime(year: 2026, month: 5, day: 1),
    datetime(year: 2026, month: 8, day: 1),
  )[]
  
  #work-heading(
    "Course Assistant",
    "University of Illinois Siebel School of Computer Science",
    "Urbana, IL",
    datetime(year: 2026, month: 1, day: 1),
    "Present",
  )[
    - Assisted students in understanding and learning data structures in C++ (graphs, trees, linked lists) through office hours and online forum 
    - Assisted students in learning systems programming concepts in C (Synchronization, Concurrency, Virtual Memory, Networking, Filesystems, Scheduling)
    - Developed exam programming questions, test cases, solutions on PrairieLearn platform
  ]
  #work-heading(
    "Digital Main",
    "Machine Learning Intern",
    "Sunnyvale, CA",
    datetime(year: 2025, month: 5, day: 1),
    datetime(year: 2025, month: 8, day: 1),
  )[
    - Built an asynchronous agentic retrieval-augmented-generation (RAG) system in Python, orchestrating query decomposition and research across web and internal client data (Slack messages, emails, etc.) using LangGraph
    - Utilized FastAPI to create customer-facing production API to stream research process to web client using Server Sent Events (SSE)
  ]


  /*
  #work-heading(
    "Freelance",
    "Private Policy Debate Coach",
    "Remote",
    datetime(year: 2024, month: 8, day: 1),
    "Present",
  )[
    - Mentored *9* students from under-resourced institutions nationwide, identified through extensive high school competitive debate networking, providing coaching and research skills
  ]
  */
]

#custom-title("Leadership")[
  #work-heading(
    "Association for Computing Machinery at Illinois",
    "Treasurer",
    "Urbana, IL",
    datetime(year: 2025, month: 3, day: 1),
    datetime(year: 2026, month: 3, day: 1),
  )[
    - Managed over *\$350k* of organizational funds for largest CS student organization at Illinois with *1000+* total members
    - Migrated accounting and credit card platforms from BILL.com to Ramp and Quickbooks to obtain credit limit increase of *2800%* and to streamline reimbursements, onboarding, and reporting workflows
  ]
]

// -------------------- SELECTED PUBLICATIONS --------------------
// -------------------- PROJECTS --------------------
#custom-title("Research and Projects")[
  #project-heading(
    [C Compiler *#link("https://github.com/adhi-thirumala/writing-a-c-compiler-sandler-rs")[#text(fill: blue)[(Github)]]*],
  )[
    - Implemented C compiler (C17 Standard) in Rust with a 6-stage pipeline (lexer → parser → semantic analysis → IR → assembly generation → x86-64 code emission) targeting Linux and macOS
    - Verified compiler against comprehensive test case suite of *400+* programs to test functionality
  ]
  #project-heading(
    [Oxeye *#link("https://github.com/adhi-thirumala/oxeye")[#text(fill: blue)[(Github)]]*],
  )[
    - Built a *real-time* Minecraft-Discord player status bridge using async Rust (Axum, Tokio frameworks) and Java Fabric mod enabling Discord communities to monitor online players
    - Engineered *high-performance* async architecture with *lock-free* concurrent caching and *heap-free* player-name storage, eliminating mutex contention and heap allocation on high-throughput player events and decreasing disk read/write
    - Containerized and deployed to VPS on Oracle Cloud Infrastructure using Docker Compose to run in production
  ]

  #project-heading(
    [*Clickbait Classification and Spoiling Using Natural Language Processing #link("https://doi.org/10.48550/arXiv.2306.14907")[#text(fill: blue)[(arXiv)]]*],
  )[
    - Performed analysis between fine-tuned SLM BERT-based models and LLMs on clickbait spoiling shared task to achieve *80+%* accuracy
    - Results accepted by _The 17th International Workshop on Semantic Evaluation_: Toronto, Canada 2023
  ]
  #project-heading(
    [*Extractive Question Answering(QA) on Queries in Hindi and Tamil #link("https://doi.org/10.48550/arXiv.2210.06356")[#text(fill: blue)[(arXiv)]]*],
  )[
    - Trained NLP models in Google competition to perform extractive QA increasing accuracy by *20%* over baseline
    - Received 26th Annual Carnegie Science Award given to *12* top scientists, entrepreneurs, innovators and educators across the city of Pittsburgh
  ]
]



// -------------------- AWARDS AND COMPETITIONS --------------------
#custom-title("Awards and Competitions")[
  #project-heading(
    [*UIUC ACM SIGPwny FallCTF: 6th Place (Advanced Track)* in cybersecurity competition across *100+* teams from UIUC],
  )[]
]

// -------------------- SKILLS --------------------
#custom-title("Skills")[
  #skills()[
    *Languages:* Rust, C++, C, Python, Java, HTML, Bash, LaTeX, Typst, SQL, Go, Lua, JavaScript, Typescript, CSS, Verilog, MIPS Assembly \
    *Tools:* Linux, Git, Vim, Huggingface, Maven, Gradle, SQLite, Docker, Docker Compose, Kubernetes, PostgreSQL, Vercel, AWS, Oracle Cloud, Google Cloud Platform, Cloudflare (Networking, Developer Platform), Github Actions CI/CD, Ghidra, Cargo, Bun, Prometheus, Grafana  \
    *Libraries:* Axum, Tokio, pandas, NumPy, Matplotlib, Tensorflow, pyTorch, Sci-Kit Learn, Swing (Java), Spring (Java), Next.JS, React.JS, Flask, LangChain, LangGraph, FastAPI
  ]
]

// -------------------- RELEVANT COURSEWORK --------------------
#custom-title("Relevant Coursework")[
  #skills()[
    *Computer Science:* Distributed Systems, Compiler Construction, Programming Languages and Compilers, Machine Learning Compilers (Graduate), System Programming, Computer Systems Organization, Data Management in the Cloud, Algorithms and Models of Computation, Data Structures in C++, Computer Architecture, Computational Linguistics \
    *Mathematics and Statistics:* Honors Abstract Linear Algebra, Statistics and Probability, Introduction to Higher Level Math, Multivariable Calculus, Discrete Structures
  ]
]
