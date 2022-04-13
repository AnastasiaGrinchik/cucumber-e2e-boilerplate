const { $, $$ } = require('@cucumber-e2e/po2');

class PatientsTableRow {
  selector = '[role="row"]';

  PatientsName = $('[aria-colindex="1"] span');
  PatientsGender = $('[aria-colindex="2"]');
  PatientsSymptoms = $(' [aria-colindex="4"] ');
  PatientsBloodGroup = $('[aria-colindex="3"] ');
  PatientsPhone = $('[aria-colindex="5"]');
  PatientsEmail = $('[aria-colindex="6"]');
}

module.exports = PatientsTableRow;