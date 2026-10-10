--Retrieve the first name, last name, gender, and specialty of all doctors.
SELECT first_name,
    last_name,
    gender,
    specialty
FROM doctors;
--Find all doctors working in Cardiology.
SELECT doctor_id,
    first_name,
    last_name,
    gender,
    specialty
FROM doctors
WHERE department_id = 1;
--Find the number of patients currently admitted.
SELECT COUNT(*)
FROM patients
WHERE exit_date IS NULL;
--Show each department and the number of doctors working in it.
SELECT departments.department_name,
    COUNT(doctors.doctor_id) AS number_of_doctors
FROM departments
    JOIN doctors ON departments.department_id = doctors.department_id
GROUP BY departments.department_name;
--Show each patient together with their assigned doctor's name.
SELECT patients.patient_id AS patient,
    doctors.first_name AS doctors_first_name,
    doctors.last_name AS doctors_last_name
FROM patients
    JOIN doctors ON patients.doctor_assigned = doctors.doctor_id;
--Find all female doctors
SELECT *
FROM doctors
WHERE gender = 'Female';
--Find all doctors who are either Cardiologists or Neurologists.
SELECT *
FROM doctors
WHERE department_id = 1
    OR department_id = 2;
--Display all patients, showing their first name, last name, and entry date, ordered from the most recent entry to the oldest.
SELECT first_name,
    last_name,
    entry_date
FROM patients
ORDER BY entry_date DESC;
--Change the house address of the nurse with nurse_id = 3 to "15 Allen Avenue".
UPDATE nurses
SET house_address = '15 Allen Avenue'
WHERE nurse_id = 233;
--Display each doctor's first name, last name, specialty, and the name of their department.
SELECT doctors.first_name AS doctors_first_name,
    doctors.last_name AS doctors_last_name,
    doctors.specialty AS doctors_specialty,
    departments.department_name AS doctors_department
FROM doctors
    JOIN departments ON doctors.department_id = departments.department_id;
--Find all patients who are assigned to the Cardiology department. Display the patient's first name, last name, and their assigned doctor's name.
SELECT patients.first_name,
    patients.last_name,
    doctors.first_name,
    doctors.last_name
FROM patients
    JOIN doctors ON patients.doctor_assigned = doctors.doctor_id
WHERE department_id = 1;
--Find the number of doctors in each department.
SELECT COUNT(doctors.doctor_id),
    departments.department_name
FROM Doctors
    JOIN departments ON doctors.department_id = departments.department_id
GROUP BY department_name;
--Find the total number of patients, and also find the number of patients who have already been discharged.
SELECT COUNT(*) AS total_patients,
    COUNT(exit_date) AS discharged_patients,
    COUNT(*) FILTER (
        WHERE exit_date IS NULL
    ) AS currently_admitted
FROM patients;
--Display all currently admitted patients (patients who have not yet been discharged), showing:
--Patient 's full name
--Entry date
--Doctor' s full name
--Nurse 's full name
--Room number
--Department name
SELECT CONCAT(patients.first_name, ' ', patients.last_name) AS patient_full_name,
    patients.entry_date,
    CONCAT(doctors.first_name, ' ', doctors.last_name) AS doctors_full_name,
    CONCAT(nurses.first_name, ' ', nurses.last_name) AS nurses_ful_name,
    patients.room_assigned AS room_number,
    departments.Department_name
FROM patients
    LEFT JOIN doctors ON patients.doctor_assigned = doctors.doctor_id
    LEFT JOIN nurses ON patients.nurse_assigned = nurses.nurse_id
    LEFT JOIN rooms ON patients.room_assigned = rooms.room_id
    LEFT JOIN departments ON rooms.department_id = departments.department_id
WHERE patients.exit_date IS NULL;