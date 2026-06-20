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

---

### **Task 1 - Normalisation**

##### **Unormalised Data Table:**

| Order ID | Passenger | Passenger Name | Cabin | Cruise No | Cruise Name       | Port          | Excursion No. | Excursion      | Qty | Price per excursion | Excursion leader ID | Excursion Leader | Total Cost |
| -------- | --------- | -------------- | ----- | --------- | ----------------- | ------------- | ------------- | -------------- | --- | ------------------- | ------------------- | ---------------- | ---------- |
| O23      | P001      | Weber          | 2345  | 1012      | Baltic Highlights | Copenhagen    | C001          | Little Mermaid | 5   | 200                 | E0001               | Wermter          | 1900       |
|          |           |                |       |           |                   | Oslo          | O002          | Museums        | 2   | 150                 | E0002               | Smith            |            |
|          |           |                |       |           |                   | St Petersburg | P002          | Palaces        | 1   | 300                 | E1008               | Jones            |            |
|          |           |                |       |           |                   | St Petersburg | P003          | Ballet         | 3   | 100                 | E1008               | Jones            |            |
| O32      | P005      | Elshaw         | 3777  | 2121      | Fjords            | Bergen        | B001          | Biking         | 4   | 50                  | E0070               | Malone           | 1450       |
|          |           |                |       |           |                   | Bergen        | B111          | Hiking         | 10  | 75                  | E0070               | Malone           |            |
|          |           |                |       |           |                   | Holden        | H002          | Puffins        | 5   | 100                 | E0101               | Ham              |            |
| O01      | P003      | Brown          | 8124  | 1012      | Baltic Highlights | Oslo          | O002          | Museums        | 3   | 150                 | E0002               | Smith            | 1050       |
|          |           |                |       |           |                   | St Petersburg | P002          | Palaces        | 2   | 300                 | E1008               | Jones            |            |

##### **1st Normal Form**

| PK       |           |                |       |           |                   |            |
| -------- | --------- | -------------- | ----- | --------- | ----------------- | ---------- |
| Order ID | Passenger | Passenger Name | Cabin | Cruise No | Cruise Name       | Total Cost |
| O23      | P001      | Weber          | 2345  | 1012      | Baltic Highlights | 1900       |
| O32      | P005      | Elshaw         | 3777  | 2121      | Fjords            | 1450       |
| O01      | P003      | Brown          | 8124  | 1012      | Baltic Highlights | 1050       |

| Composite PK  | Composite PK  |               |                |     |                     |                     |                  |
| ------------- | ------------- | ------------- | -------------- | --- | ------------------- | ------------------- | ---------------- |
| Order ID (FK) | Excursion No. | Port          | Excursion      | Qty | Price per excursion | Excursion leader ID | Excursion Leader |
| O23           | C001          | Copenhagen    | Little Mermaid | 5   | 200                 | E0001               | Wermter          |
|               | O002          | Oslo          | Museums        | 2   | 150                 | E0002               | Smith            |
|               | P002          | St Petersburg | Palaces        | 1   | 300                 | E1008               | Jones            |
|               | P003          | St Petersburg | Ballet         | 3   | 100                 | E1008               | Jones            |
| O32           | B001          | Bergen        | Biking         | 4   | 50                  | E0070               | Malone           |
|               | B111          | Bergen        | Hiking         | 10  | 75                  | E0070               | Malone           |
|               | H002          | Holden        | Puffins        | 5   | 100                 | E0101               | Ham              |
| O01           | O002          | Oslo          | Museums        | 3   | 150                 | E0002               | Smith            |
|               | P002          | St Petersburg | Palaces        | 2   | 300                 | E1008               | Jones            |

##### 

##### **2nd Normal Form**

**Table 1:**

| PK            |           |                |       |           |                   |            |
| ------------- | --------- | -------------- | ----- | --------- | ----------------- | ---------- |
| Order ID (PK) | Passenger | Passenger Name | Cabin | Cruise No | Cruise Name       | Total Cost |
| O23           | P001      | Weber          | 2345  | 1012      | Baltic Highlights | 1900       |
| O32           | P005      | Elshaw         | 3777  | 2121      | Fjords            | 1450       |
| O01           | P003      | Brown          | 8124  | 1012      | Baltic Highlights | 1050       |

order_details



**Table 2:**

| PK                 |                |                     |                     |                  |               |
| ------------------ | -------------- | ------------------- | ------------------- | ---------------- | ------------- |
| Excursion No. (PK) | Excursion      | Price per excursion | Excursion leader ID | Excursion Leader | Port          |
| C001               | Little Mermaid | 200                 | E0001               | Wermter          | Copenhagen    |
| O002               | Museums        | 150                 | E0002               | Smith            | Oslo          |
| P002               | Palaces        | 300                 | E1008               | Jones            | St Petersburg |
| P003               | Ballet         | 100                 | E1008               | Jones            | St Petersburg |
| B001               | Biking         | 50                  | E0070               | Malone           | Bergen        |
| B111               | Hiking         | 75                  | E0070               | Malone           | Bergen        |
| H002               | Puffins        | 100                 | E0101               | Ham              | Holden        |
| O002               | Museums        | 150                 | E0002               | Smith            | Oslo          |
| P002               | Palaces        | 300                 | E1008               | Jones            | St Petersburg |

excursion_details



**Table 3:**

| Composite PK       | Composite PK            |     |
| ------------------ | ----------------------- | --- |
| Order ID (PK) (FK) | Excursion No. (PK) (FK) | Qty |
| O23                | C001                    | 5   |
|                    | O002                    | 2   |
|                    | P002                    | 1   |
|                    | P003                    | 3   |
| O32                | B001                    | 4   |
|                    | B111                    | 10  |
|                    | H002                    | 5   |
| O01                | O002                    | 3   |
|                    | P002                    | 2   |

order_amount



##### **3rd Normal Form**

**Table 1:**

| PK                |                |       |
| ----------------- | -------------- | ----- |
| Passenger ID (PK) | Passenger Name | Cabin |
| P001              | Weber          | 2345  |
| P005              | Elshaw         | 3777  |
| P003              | Brown          | 8124  |

passenger_details



**Table 2:**

| PK             |                   |
| -------------- | ----------------- |
| Cruise No (PK) | Cruise Name       |
| 1012           | Baltic Highlights |
| 2121           | Fjords            |

cruise_details



**Table 3:**

| PK            |                   |                |
| ------------- | ----------------- | -------------- |
| Order ID (PK) | Passenger ID (FK) | Cruise No (FK) |
| O23           | P001              | 1012           |
| O32           | P005              | 2121           |
| O01           | P003              | 1012           |

order_details



**Table 4:**

| PK           |               |
| ------------ | ------------- |
| Port ID (PK) | Port          |
| 1            | Copenhagen    |
| 2            | Oslo          |
| 3            | St Petersburg |
| 4            | Bergen        |
| 5            | Holden        |

port_details



**Table 5:**

| PK                       |                  |
| ------------------------ | ---------------- |
| Excursion leader ID (PK) | Excursion Leader |
| E0001                    | Wermter          |
| E0002                    | Smith            |
| E1008                    | Jones            |
| E0070                    | Malone           |
| E0101                    | Ham              |

excursion_leader_details



**Table 6:**

| PK                 |                          |              |                |                     |
| ------------------ | ------------------------ | ------------ | -------------- | ------------------- |
| Excursion No. (PK) | Excursion leader ID (FK) | Port ID (FK) | Excursion      | Price per excursion |
| C001               | E0001                    | 1            | Little Mermaid | 200                 |
| O002               | E0002                    | 2            | Museums        | 150                 |
| P002               | E1008                    | 3            | Palaces        | 300                 |
| P003               | E1008                    | 3            | Ballet         | 100                 |
| B001               | E0070                    | 4            | Biking         | 50                  |
| B111               | E0070                    | 4            | Hiking         | 75                  |
| H002               | E0101                    | 5            | Puffins        | 100                 |
| O002               | E0002                    | 2            | Museums        | 150                 |
| P002               | E1008                    | 3            | Palaces        | 300                 |

excursion_details



**Table 7:**

| Composite PK       | Composite PK            |     |
| ------------------ | ----------------------- | --- |
| Order ID (PK) (FK) | Excursion No. (PK) (FK) | Qty |
| O23                | C001                    | 5   |
| O23                | O002                    | 2   |
| O23                | P002                    | 1   |
| O23                | P003                    | 3   |
| O32                | B001                    | 4   |
| O32                | B111                    | 10  |
| O32                | H002                    | 5   |
| O01                | O002                    | 3   |
| O01                | P002                    | 2   |

order_amount_details

---

### **Task 2 - Entity Relationship Diagram (ERD)**
