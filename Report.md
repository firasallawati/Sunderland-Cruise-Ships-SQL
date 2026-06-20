| Module Code        | IY455                                   |
| ------------------ | --------------------------------------- |
| Group              | A/B                                     |
| Module Title       | Information Systems Analysis and Design |
| Assessment Type    | Coursework Stage 1                      |
| Module Tutor Name  | Mustafa Ghashim                         |
| Student ID Number  | P466146                                 |
| Date of Submission | 22/05/2026                              |

☒ *I confirm that this assignment is my own work. Where I have referred to academic
sources, I have provided in-text citations and included the sources in the
final reference list.*

 ☒ *Where I have used AI, I have cited and referenced appropriately.*

1 NF

| PK       |           |                    |       |               |                   |                |
| -------- | --------- | ------------------ | ----- | ------------- | ----------------- | -------------- |
| Order ID | Passenger | Passenger<br> Name | Cabin | Cruise<br> No | Cruise<br> Name   | Total<br> Cost |
| O23      | P001      | Weber              | 2345  | 1012          | Baltic Highlights | 1900           |
| O32      | P005      | Elshaw             | 3777  | 2121          | Fjords            | 1450           |
| O01      | P003      | Brown              | 8124  | 1012          | Baltic Highlights | 1050           |

| Composite<br> PK |               |               |                |     |                     |                     |                      |
[Report.md](Report.md)| ---------------- | ------------- | ------------- | -------------- | --- | ------------------- | ------------------- | -------------------- |
| Order ID (FK)    | Port          | Excursion No. | Excursion      | Qty | Price per excursion | Excursion leader ID | Excursion<br> Leader |
| O23              | Copenhagen    | C001          | Little Mermaid | 5   | 200                 | E0001               | Wermter              |
|                  | Oslo          | O002          | Museums        | 2   | 150                 | E0002               | Smith                |
|                  | St Petersburg | P002          | Palaces        | 1   | 300                 | E1008               | Jones                |
|                  | St Petersburg | P003          | Ballet         | 3   | 100                 | E1008               | Jones                |
| O32              | Bergen        | B001          | Biking         | 4   | 50                  | E0070               | Malone               |
|                  | Bergen        | B111          | Hiking         | 10  | 75                  | E0070               | Malone               |
|                  | Holden        | H002          | Puffins        | 5   | 100                 | E0101               | Ham                  |
| O01              | Oslo          | O002          | Museums        | 3   | 150                 | E0002               | Smith                |
|                  | St Petersburg | P002          | Palaces        | 2   | 300                 | E1008               | Jones                |

2 NF

| PK            |           |                    |       |               |                   |                |
| ------------- | --------- | ------------------ | ----- | ------------- | ----------------- | -------------- |
| Order ID      | Passenger | Passenger<br> Name | Cabin | Cruise<br> No | Cruise<br> Name   | Total<br> Cost |
| O23           | P001      | Weber              | 2345  | 1012          | Baltic Highlights | 1900           |
| O32           | P005      | Elshaw             | 3777  | 2121          | Fjords            | 1450           |
| O01           | P003      | Brown              | 8124  | 1012          | Baltic Highlights | 1050           |
| Order Details |           |                    |       |               |                   |                |

| PK                       |                      |
| ------------------------ | -------------------- |
| Excursion leader ID      | Excursion<br> Leader |
| E0001                    | Wermter              |
| E0002                    | Smith                |
| E1008                    | Jones                |
| E1008                    | Jones                |
| E0070                    | Malone               |
| E0070                    | Malone               |
| E0101                    | Ham                  |
| E0002                    | Smith                |
| E1008                    | Jones                |
| Excursion leader Details |                      |

| Composite PK  |               |                   |     |
| ------------- | ------------- | ----------------- | --- |
| Order ID (FK) | Port          | Excursion<br> No. | Qty |
| O23           | Copenhagen    | C001              | 5   |
|               | Oslo          | O002              | 2   |
|               | St Petersburg | P002              | 1   |
|               | St Petersburg | P003              | 3   |
| O32           | Bergen        | B001              | 4   |
|               | Bergen        | B111              | 10  |
|               | Holden        | H002              | 5   |
| O01           | Oslo          | O002              | 3   |
|               | St Petersburg | P002              | 2   |
| Port Info     |               |                   |     |

| PK              |                     |
| --------------- | ------------------- |
| Excursion       | Price per excursion |
| Little Mermaid  | 200                 |
| Museums         | 150                 |
| Palaces         | 300                 |
| Ballet          | 100                 |
| Biking          | 50                  |
| Hiking          | 75                  |
| Puffins         | 100                 |
| Museums         | 150                 |
| Palaces         | 300                 |
| Excursion Price |                     |

3 NF

| PK        |                   |
| --------- | ----------------- |
| Cruise No | Cruise<br> Name   |
| 1012      | Baltic Highlights |
| 2121      | Fjords            |
| 1012      | Baltic Highlights |

| PK           |           |                |       |
| ------------ | --------- | -------------- | ----- |
| Waiting List | Passenger | Passenger Name | Cabin |
| 1            | P001      | Weber          | 2345  |
| 2            | P005      | Elshaw         | 3777  |
| 3            | P003      | Brown          | 8124  |

| PK       |           |              |
| -------- | --------- | ------------ |
| Order ID | Cruise No | Waiting List |
| O23      | 1012      | 1            |
| O32      | 2121      | 2            |
| O01      | 1012      | 3            |

| PK                  |                      |
| ------------------- | -------------------- |
| Excursion leader ID | Excursion<br> Leader |
| E0001               | Wermter              |
| E0002               | Smith                |
| E1008               | Jones                |
| E1008               | Jones                |
| E0070               | Malone               |
| E0070               | Malone               |
| E0101               | Ham                  |
| E0002               | Smith                |
| E1008               | Jones                |

| PK             |                     |
| -------------- | ------------------- |
| Excursion      | Price per excursion |
| Little Mermaid | 200                 |
| Museums        | 150                 |
| Palaces        | 300                 |
| Ballet         | 100                 |
| Biking         | 50                  |
| Hiking         | 75                  |
| Puffins        | 100                 |
| Museums        | 150                 |
| Palaces        | 300                 |

| PK            |               |
| ------------- | ------------- |
| Order ID (FK) | Port          |
| O23           | Copenhagen    |
|               | Oslo          |
|               | St Petersburg |
|               | St Petersburg |
| O32           | Bergen        |
|               | Bergen        |
|               | Holden        |
| O01           | Oslo          |
|               | St Petersburg |

| PK            |     |
| ------------- | --- |
| Excursion No. | Qty |
| C001          | 5   |
| O002          | 2   |
| P002          | 1   |
| P003          | 3   |
| B001          | 4   |
| B111          | 10  |
| H002          | 5   |
| O002          | 3   |
| P002          | 2   |
