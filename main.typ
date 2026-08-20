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
#set text(size: 9.5pt)
#set par(leading: 0.5em)


// -------------------- EDUCATION --------------------
#custom-title("Education")[
  #education-heading(
    "University of Ilinois Urbana-Champaign - Siebel School of Computer Science",
    "GPA: 3.86",
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
  )[
    - Developed test-generation tool in Rust for distributed synthetic end-to-end probe platform (Flamingo) on edge network that runs *750M+* tests per day to support health-mediated software releases, Service Level Objective (SLO) monitoring, and company-wide resiliency efforts 
    - Implemented internal/external-facing API fuzzing service in Rust that utilized edge-network for massively parallel test running over *60k+* nodes over *1375* data centers
    - Used tool to determine health of Kubernetes service region-failover status to support high availability (HA) API deployment
    - Extended Kubernetes-based test-scheduling control plane in Go to support bespoke test-scheduling needs for fuzzing service
  ]

  #work-heading(
    "University of Illinois Siebel School of Computer Science",
    "Course Assistant",
    "Urbana, IL",
    datetime(year: 2026, month: 1, day: 1),
    "Present",
  )[
    - Assisted students in understanding and learning data structures in C++ (graphs, trees, linked lists) through office hours and online forum
    - Assisted students in learning systems programming concepts in C (synchronization, concurrency, networking, filesystems, scheduling)
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



// -------------------- SELECTED PUBLICATIONS --------------------
// -------------------- PROJECTS --------------------
#custom-title("Research and Projects")[
  #project-heading(
    [C Compiler *#link("https://github.com/adhi-thirumala/writing-a-c-compiler-sandler-rs")[#text(fill: blue)[(Github)]]*],
  )[
    - Implemented C compiler (C17 Standard) in Rust with hand-rolled recursive-descent parser, iterator-based (lazy) lexer, semantic analysis pass, and x86 code generation for macOS and Linux
    - Verified compiler against comprehensive test case suite of *400+* programs to test functionality
  ]
  #project-heading(
    [Oxeye *#link("https://github.com/adhi-thirumala/oxeye")[#text(fill: blue)[(Github)]]*],
  )[
    - Built a real-time Minecraft–Discord player status bridge (async Rust: Axum/Tokio + Java Fabric mod) with lock-free caching and heap-free name storage, removing mutex contention and allocations on high-throughput events
    - Containerized with Docker Compose and deployed to production on Oracle Cloud VPS
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
    - Received 26th Annual Carnegie Science Award given to *12* top scientists, entrepreneurs, and innovators across the city of Pittsburgh
  ]
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

// -------------------- AWARDS AND COMPETITIONS --------------------
#custom-title("Awards and Competitions")[
  #project-heading(
    [*UIUC ACM SIGPwny FallCTF: 6th Place (Advanced Track)* in cybersecurity competition across *100+* teams from UIUC],
  )[]
]

// -------------------- SKILLS --------------------
#custom-title("Skills")[
  #skills()[
    *Languages:* Rust, C++, C, Python, Bash, LaTeX, Typst, SQL, Go, Lua, JavaScript, Typescript, CSS, Verilog, MIPS Assembly, Haskell \
    *Tools:* Linux, Git, Vim, Huggingface, Docker, Docker Compose, Kubernetes, PostgreSQL, AWS, Oracle Cloud, Google Cloud Platform, Cloudflare (Networking, Developer Platform), Github Actions CI/CD, Ghidra, Cargo, Bun, Prometheus, Grafana, Terraform, Vault (Hashicorp)  \
    *Libraries:* Axum, Tokio, pandas, NumPy, Matplotlib, Tensorflow, pyTorch, Sci-Kit Learn, React, Flask, LangChain, LangGraph, FastAPI
  ]
]

// -------------------- RELEVANT COURSEWORK --------------------
#custom-title("Relevant Coursework")[
  #skills()[
    *Computer Science:* Distributed Systems, Compiler Construction, Programming Languages and Compilers, ML Compilers (Graduate), System Programming, Computer Systems Organization, Data Management in the Cloud, Algorithms and Models of Computation, Data Structures in C++, Computer Architecture, Computational Linguistics \
    *Mathematics and Statistics:* Honors Abstract Linear Algebra, Statistics and Probability, Introduction to Higher Level Math, Multivariable Calculus, Discrete Structures
  ]
]
