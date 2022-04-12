Feature: Syncfusion

  Background: Open Syncfusion home page 
    Given open '$syncfusionUrl' url

  @addDoctor
  Scenario: Add new doctor to doctors tabs in syncfusion
    When click 'SyncfusionHome > Doctors Tab'
    And click 'SyncfusionHome > Add Doctor Button'
    And type '$doctorsName' to 'DoctorsForm > Name Input'
    And click 'DoctorsForm > Female Input'
    And type '$doctorsPhone' to 'DoctorsForm > Phone Input'
    And type '$doctorsEmail' to 'DoctorsForm > Email Input'
    And select 'DoctorsForm > Department Select' from list '#Neurology in SelectionInDropdownList'
    And type '$doctorsEducation' to 'DoctorsForm > Education Input'
    And type '$doctorsDesignation' to 'DoctorsForm > Designation Input'
    And select 'DoctorsForm > Experience Select' from list '#5+ years in SelectionInDropdownList'
    And select 'DoctorsForm > Duty Timing Select' from list '#12:00 AM - 09:00 PM in SelectionInDropdownList'
    And click 'DoctorsForm > Save Form Button'
    Then field 'SyncfusionHome > #8 of DoctorsCards' contains '$doctorsName'
    And click 'SyncfusionHome > #8 of DoctorsCards'
    Then field 'FullDoctorsCard > Name Field' contains '$doctorsName'
    Then field 'FullDoctorsCard > Education Field' contains '$doctorsEducation'
    Then field 'FullDoctorsCard > Department Field' contains '$doctorsDepartment'
    Then field 'FullDoctorsCard > Experience Field' contains '$doctorsExpirience'
    Then field 'FullDoctorsCard > Phone Field' contains '(123) 456-7890'
    Then field 'FullDoctorsCard > Designation Field' contains '$doctorsDesignation'
    Then field 'FullDoctorsCard > Duty Timing Field' contains 'SUN,TUE,WED,THU,FRI - 12:00 PM - 9:00 PM'

  @addPatient
  Scenario: Add new patient to doctors tabs in syncfusion
    When click 'SyncfusionHome > Patients Tab'
    And click 'SyncfusionHome > Add Patient Button'
    And type '$patientsName' to 'PatientsForm > Name Input'
    And click 'PatientsForm > Male Input'
    And type '$patientsDob' to 'PatientsForm > DobInput'
    And select 'PatientsForm > BloodGroupSelect' from list '#O+ in SelectionInDropdownList'
    And type '$patientsPhone' to 'PatientsForm > Phone Input'
    And type '$patientsEmail' to 'PatientsForm > Email Input'
    And type '$patientsSymptoms' to 'PatientsForm > Symptoms Input'
    And click 'PatientsForm > Save Form Button'
    Then field 'PatientsTable > #8 of PatientsTableRow > Patients Name' contains '$patientsName'
    Then field 'PatientsTable > #8 of PatientsTableRow > Patients Gender' contains '$patientsGender'
    Then field 'PatientsTable > #8 of PatientsTableRow > Patients Symptoms' contains '$patientsSymptoms'
    Then field 'PatientsTable > #8 of PatientsTableRow > Patients Blood Group' contains '$patientsBloodGroup'
    Then field 'PatientsTable > #8 of PatientsTableRow > Patients Phone' contains '(123) 456-7890'
    Then field 'PatientsTable > #8 of PatientsTableRow > Patients Email' contains '$patientsEmail'
