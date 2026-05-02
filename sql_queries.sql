-- 1. Monthly appointment volume by type
SELECT
    strftime('%Y-%m', start_time) AS month,
    appointment_type,
    COUNT(*) AS appointment_count
FROM appointments
GROUP BY month, appointment_type
ORDER BY month, appointment_type;

-- 2. Revenue summary by payment status
SELECT
    payment_status,
    ROUND(SUM(amount), 2) AS total_amount,
    COUNT(*) AS invoice_count
FROM payments
GROUP BY payment_status
ORDER BY total_amount DESC;

-- 3. Patient utilization and note activity
SELECT
    p.patient_code,
    p.full_name,
    p.city,
    COUNT(DISTINCT a.id) AS total_appointments,
    COUNT(DISTINCT t.id) AS completed_notes
FROM patients p
LEFT JOIN appointments a ON a.patient_id = p.id
LEFT JOIN treatment_notes t ON t.patient_id = p.id
GROUP BY p.id
ORDER BY total_appointments DESC, completed_notes DESC
LIMIT 15;

-- 4. Abnormal lab results with patient demographics
SELECT
    p.patient_code,
    p.full_name,
    p.age,
    p.sex,
    l.test_name,
    l.result_value,
    l.result_flag,
    l.encounter_date
FROM lab_results l
JOIN patients p ON p.id = l.patient_id
WHERE l.result_flag = 'Abnormal'
ORDER BY l.encounter_date DESC;

-- 5. Diagnosis groups by average note length
SELECT
    diagnosis_group,
    ROUND(AVG(note_length), 1) AS avg_note_length,
    COUNT(*) AS note_count
FROM treatment_notes
GROUP BY diagnosis_group
ORDER BY avg_note_length DESC;
