const { $, $$ } = require('@cucumber-e2e/po2');

class PatientsForm {
  selector = '[cssclass="new-patient-dialog"]';

  NameInput = $('[name="Name"]');
  PhoneInput =  $('#PatientMobile')
  MaleInput = $('[for="doctorCheckMale"]');
  EmailInput = $('[name="Email"]');
  DobInput = $('#DOB_input');
  BloodGroupSelect = $('[aria-owns="BloodGroup_options"]');
  SymptomsInput = $('[name="Symptoms"]');
  SaveFormButton = $('//button[contains(text(), "Save")]');
}

module.exports = PatientsForm;