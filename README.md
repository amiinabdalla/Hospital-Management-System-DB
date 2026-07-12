# 🏥 Hospital Management System Database

Kani waa mashruuc Relational Database ah oo aan u dhisay si loo maamulo xogta cisbitaal dhab ah.
*(This is a fully optimized Relational Database designed to manage real-world hospital data efficiently).*

---

## 🛠️ Tiknoolajiyada la isticmaalay (Tech Stack)
* **Database Engine:** Microsoft SQL Server (SSMS)
* **Language:** SQL (DDL & DML)

---

## 📊 Naqshadda Database-ka (Database Structure)
Mashruucu wuxuu ka kooban yahay saddexda table ee ugu muhiimsan:
1. **`Patients`** - Lagu kaydiyo xogta bukaannada (Stores unique patient records).
2. **`Doctors`** - Lagu kaydiyo dhakhaatiirta (Tracks doctor information and specialties).
3. **`Appointments`** - Xiriirka u dhexeeya bukaanka iyo dhakhtarka (Connects patients with doctors and logs visit schedules).

---

## ⚡ Core SQL Features Included
* **Data Integrity:** Rigidly protected using `PRIMARY KEY` and `FOREIGN KEY` constraints to link patients and doctors perfectly without data anomalies.
* **Relational Mapping:** Implemented Many-to-Many relationships via the `Appointments` bridge table.

---

## 🚀 How to Run & Query
1. Download the `hospital_database.sql` file from this repository.
2. Open Microsoft SQL Server Management Studio (SSMS).
3. Open the script and click **Execute (F5)** to create the database and sample data.
