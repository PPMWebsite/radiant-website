Start a new non-ecommerce website project using the website-builder-non-ecomm skill.



Do this in order:



1\. Check whether this project already has CLAUDE.md and docs memory files.

2\. If it does, ask whether this is a new build or a continuation.

3\. If not, begin the compact intake questions.



At the very start, require the user to choose one startup path:

\- Build New Website

\- Improve Existing Website



If the user chooses Improve Existing Website:

\- inspect the current HTML/CSS/JS structure first

\- identify what should be kept, refactored, replaced, or removed

\- avoid assuming a full rebuild unless justified



If an existing website URL is available, run hybrid intake:

\- start from the homepage

\- identify main navigation and same-domain internal links

\- review the most relevant internal pages, not just the homepage

\- limit first-pass extraction to the homepage plus a maximum of 6 important internal pages unless a specific gap requires more

\- extract visible branding clues

\- extract visible factual business information

\- extract visible page structure, CTA patterns, trust signals, and useful imagery

\- note which internal pages were reviewed and which were skipped

\- summarize what is already known before making more tool calls



Then:

4\. Determine page count from buyer intent, content depth, commercial clarity, and SEO structure before assigning the tier.

5\. Apply:

&#x20;  - buyer-intent test

&#x20;  - standalone page test

&#x20;  - anti-compression rule

&#x20;  - tier escalation signal

6\. Produce the planning package before any coding:

&#x20;  - startup path selection

&#x20;  - project brief

&#x20;  - source-of-truth summary

&#x20;  - sitemap

&#x20;  - page purposes

&#x20;  - build order

&#x20;  - design system draft

&#x20;  - content rules draft

&#x20;  - image inventory draft

&#x20;  - page-status tracker

7\. Save or update the memory files.

8\. Recommend which page to build first.

