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
  font: "Google Sans Mono",
  personal-info-font-size: 8.5pt,
  author-position: center,
  personal-info-position: center,
  author-name: name,
  email: email,
  website: personal-site,
  linkedin-user-id: linkedin,
  github-username: github,

  phone: phone,
)

#set text(size: 9pt)
#set par(leading: 0.5em)


// -------------------- EDUCATION --------------------
#custom-title("Education")[
  #education-heading(
    "University of Illinois Urbana-Champaign - Siebel School of Computer Science",
    "",
    "Major: Computer Science + Linguistics",
    "Minor: Mathematics | GPA: 3.82/4.0",
    datetime(year: 2024, month: 8, day: 1),
    datetime(year: 2027, month: 5, day: 1),
  )[]
]

// -------------------- EXPERIENCE --------------------
#custom-title("Experience")[
  #work-heading(
    "Machine Learning Intern",
    "Digital Main",
    "",
    datetime(year: 2025, month: 5, day: 1),
    datetime(year: 2025, month: 8, day: 1),
  )[
    - Built an asynchronous agentic retrieval-augmented-generation (RAG) system in Python, orchestrating query decomposition and research across web and internal client data (Slack messages, emails, etc.) using LangGraph
    - Utilized FastAPI to create customer-facing production API to stream research process to web client using Server Sent Events (SSE)
    - Implemented automated agentic source validation, while integrating images and generating charts or tables into final artifact
  ]

  /*
  #work-heading(
    "Course Assistant",
    "University of Illinois Siebel School of Computer Science",
    "",
    datetime(year: 2026, month: 1, day: 1),
    "Present",
  )[
    - Selected to be an undergraduate course assistant for CS 225: Data Structures and Algorithms in C++
    - Assisted students in understanding and learning data structures (graphs, trees, linked lists) through office hours, online forums, and lab sections
  ]
  */

  #work-heading(
    "Treasurer",
    "Association for Computing Machinery at Illinois",
    "",
    datetime(year: 2025, month: 3, day: 1),
    "Present",
  )[
    - Managed over *\$350k* of organizational funds for largest CS student organization at Illinois with *1000+* total members
    - Migrated accounting and credit card platforms from BILL.com to Ramp to obtain credit limit increase of *2800%* and to streamline reimbursements, onboarding, and reporting workflows
    - Served as liaison between organization and Siebel School of Computer Science staff to coordinate usage of department-provisioned funds for ACM events such as biannual open house *(500+ attendees)* and various social events
  ]

  #work-heading(
    "Private Policy Debate Coach",
    "Freelance",
    "",
    datetime(year: 2024, month: 8, day: 1),
    "Present",
  )[
    - Mentored *9* students from under-resourced institutions nationwide, identified through extensive high school competitive debate networking, providing coaching and research skills
  ]
]

// -------------------- SELECTED PUBLICATIONS --------------------
#custom-title("Publications")[
  #project-heading(
    [*Clickbait Classification and Spoiling Using Natural Language Processing #link("https://doi.org/10.48550/arXiv.2306.14907")[#text(fill: blue)[(arXiv)]]*],
  )[
    - Trained transformers-based models on shared task dataset for clickbait detection
    - Performed comparative analysis between fine-tuned SLM BERT-based models and Large Language Models on clickbait spoiling task
    - Utilized Weights and Biases hyperparameter tuning to achieve *~80%* accuracy on shared task
    - Results accepted by _The 17th International Workshop on Semantic Evaluation_: Toronto, Canada 2023
  ]

  #project-heading(
    [*Extractive Question Answering(QA) on Queries in Hindi and Tamil #link("https://doi.org/10.48550/arXiv.2210.06356")[#text(fill: blue)[(arXiv)]]*],
  )[
    - Trained NLP models to perform extractive QA improving performance by *20%* over baseline due to modified RoBERTa tokenizer
    - Utilized crosslingual dataset provided by competing in online competition hosted by Google
    - Received 26th Annual Carnegie Science Award given to *12* top scientists, entrepreneurs, innovators and educators across the city of Pittsburgh for submitted research
  ]
]

// -------------------- PROJECTS --------------------
#custom-title("Projects")[
  #project-heading(
    [*#link("https://github.com/adhi-thirumala/oxeye")[#text(fill: blue)[Oxeye]]*],
  )[
    - Built a *real-time* Minecraft-Discord player status bridge using async Rust (Axum, Tokio frameworks) and Java Fabric mod enabling Discord communities to monitor online players
    - Engineered *high-performance* async architecture with *lock-free* concurrent caching and *heap-free* player-name storage, eliminating mutex contention and heap allocation on high-throughput player events and decreasing disk read/write
    - Designed hybrid persistence layer combining SQLite for durability with in-memory caching for *sub-millisecond* queries across multiple tenants with multiple linked servers
    - Containerized and deployed to VPS on Oracle Cloud Infrastructure using Docker Compose to run in production
  ]
  #project-heading(
    [*#link("https://github.com/adhi-thirumala/writing-a-c-compiler-sandler-rs")[#text(fill: blue)[C Compiler]]*],
  )[
    - Wrote a C compiler in Rust with a 6-stage pipeline (lexer → parser → semantic analysis → IR → assembly generation → x86-64 code emission) targeting Linux and macOS    
    - Verified compiler against test case suite of *400+* programs to test functionality
  ]
]

// -------------------- AWARDS AND COMPETITIONS --------------------
#custom-title("Awards and Competitions")[
  #project-heading(
    [*SIGPwny FallCTF: 6th Place (Advanced Track)* in cybersecurity competition across *100+* teams from UIUC],
  )[]
]

// -------------------- SKILLS --------------------
#custom-title("Skills")[
  #skills()[
    *Languages:* Rust, C++, C, Python, Java, HTML, Bash, LaTeX, Typst, SQL, Go, Lua, JavaScript, Typescript, CSS, Verilog, MIPS Assembly \
    *Tools:* Linux, Git, Vim, Huggingface, Maven, Gradle, SQLite, Docker, Docker Compose, PostgreSQL, Vercel, AWS, Oracle Cloud, Google Cloud Platform, Cloudflare (Domain Management), Github Actions CI/CD, Ghidra, Cargo \
    *Libraries:* pandas, NumPy, Matplotlib, Tensorflow, pyTorch, Sci-Kit Learn, Swing (Java), Spring (Java), Next.JS, React.JS, Flask, LangChain, LangGraph, FastAPI, Axum, Tokio
  ]
]

// -------------------- RELEVANT COURSEWORK --------------------
#custom-title("Relevant Coursework")[
  #skills()[
    (Bold indicates graduate-level coursework) \
    *Computer Science:* System Programming, *Computer Systems Organization*, Data Management in the Cloud, Algorithms and Models of Computation, Data Structures in C++, Computer Architecture, Computational Linguistics \
    *Mathematics and Statistics:* Honors Abstract Linear Algebra, Statistics and Probability I, Introduction to Higher Level Math, Multivariable Calculus, Discrete Structures
  ]
]
