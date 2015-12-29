# -*- coding:utf-8 -*-
#
#
#    Copyright (C) 2011,2013 Michael Telahun Makonnen <mmakonnen@gmail.com>.
#    All Rights Reserved.
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as published
#    by the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#

{
    'name': 'Employee Education Records',
    'version': '1.0',
    'category': 'Generic Modules/Human Resources',
    'description': """
Details About and Employee's Education
======================================

    Add an extra field about an employee's education.
    """,
    'author': "Michael Telahun Makonnen <mmakonnen@gmail.com>,Odoo Community Association (OCA)",
    'website': 'http://www.openerp.com',
    'license': 'AGPL-3',
    'depends': [
        'hr',
    ],
    'data': [
        'wizard/hr_employee_by_department_view.xml',
        'hr_view.xml',
    ],
    'test': [
    ],
    'installable': False,
}
