Feature: Syncfusion

  Background: Open Syncfusion home page 
    Given open '$syncfusionUrl' url

  @addDoctor
  Scenario: Add new doctor to doctors tabs in syncfusion
    When click 'Syncfusion Home > Doctors Tab'
    And click 'Syncfusion Home > Add Doctor Button'
    And type '$doctorsName' to 'Doctors Form > Name Input'
    And click 'Doctors Form > Female Input'
    And type '$doctorsPhone' to 'Doctors Form > Phone Input'
    And type '$doctorsEmail' to 'Doctors Form > Email Input'
    And select 'Doctors Form > Department Select' from list '#Neurology in Dropdown List'
    And type '$doctorsEducation' to 'Doctors Form > Education Input'
    And type '$doctorsDesignation' to 'Doctors Form > Designation Input'
    And select 'Doctors Form > Experience Select' from list '#5+ years in Dropdown List'
    And select 'Doctors Form > Duty Timing Select' from list '#12:00 AM - 09:00 PM in Dropdown List'
    And click 'Doctors Form > Save Form Button'
    Then field 'Syncfusion Home > #8 of Doctors Cards' contains '$doctorsName'
    And click 'Syncfusion Home > #8 of Doctors Cards'
    Then field 'Full Doctors Card > Name Field' contains '$doctorsName'
    Then field 'Full Doctors Card > Education Field' contains '$doctorsEducation'
    Then field 'Full Doctors Card > Department Field' contains '$doctorsDepartment'
    Then field 'Full Doctors Card > Experience Field' contains '$doctorsExpirience'
    Then field 'Full Doctors Card > Phone Field' contains '(123) 456-7890'
    Then field 'Full Doctors Card > Designation Field' contains '$doctorsDesignation'
    Then field 'Full Doctors Card > Duty Timing Field' contains 'SUN,TUE,WED,THU,FRI - 12:00 PM - 9:00 PM'

  @addPatient
  Scenario: Add new patient to doctors tabs in syncfusion
    When click 'Syncfusion Home > Patients Tab'
    And click 'Syncfusion Home > Add Patient Button'
    And type '$patientsName' to 'Patients Form > Name Input'
    And click 'Patients Form > Male Input'
    And type '$patientsDob' to 'Patients Form > Dob Input'
    And select 'Patients Form > Blood Group Select' from list '#O+ in Dropdown List'
    And type '$patientsPhone' to 'Patients Form > Phone Input'
    And type '$patientsEmail' to 'Patients Form > Email Input'
    And type '$patientsSymptoms' to 'Patients Form > Symptoms Input'
    And click 'Patients Form > Save Form Button'
    Then field 'Patients Table > #8 of Patients Table Row > Patients Name' contains '$patientsName'
    Then field 'Patients Table > #8 of Patients Table Row > Patients Gender' contains '$patientsGender'
    Then field 'Patients Table > #8 of Patients Table Row > Patients Symptoms' contains '$patientsSymptoms'
    Then field 'Patients Table > #8 of Patients Table Row > Patients Blood Group' contains '$patientsBloodGroup'
    Then field 'Patients Table > #8 of Patients Table Row > Patients Phone' contains '(123) 456-7890'
    Then field 'Patients Table > #8 of Patients Table Row > Patients Email' contains '$patientsEmail'
