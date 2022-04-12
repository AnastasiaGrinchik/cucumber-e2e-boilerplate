const { $, $$ } = require('@cucumber-e2e/po2');
const PatientsTableRow = require('./PatientsTableRow');

class PatientsTable {
  selector = '.e-content .e-table';

  PatientsTableRow = $$(new PatientsTableRow())
}

module.exports = PatientsTable;