const { $, $$ } = require('@cucumber-e2e/po2');
class DoctorsForm {
  selector = '.new-doctor-dialog.e-dlg-modal';

  NameInput = $('[name="Name"]');
  PhoneInput =  $('#DoctorMobile')
  FemaleInput = $('[for="patientCheckFemale"]');
  EmailInput = $('[name="Email"]');
  EducationInput = $('[name="Education"]');
  DesignationInput = $('[name="Designation"]');
  DepartmentSelect = $('[aria-owns="Specialization_options"]');
  ExperienceSelect = $('[aria-owns="Experience_options"]');
  DutyTimingSelect = $('[aria-owns="DutyTiming_options"]');
  SaveFormButton = $('//button[contains(text(), "Save")]');
}

module.exports = DoctorsForm;