ann@VM-2:~/assignment_self_associations/SelfAssoc$ rails c
Running via Spring preloader in process 172103
Loading development environment (Rails 5.0.4)
irb(main):001:0> Hirb.enable
=> true
irb(main):002:0> Person.all
  Person Load (0.4ms)  SELECT "people".* FROM "people"
+-----+-----------------+-----------------+------------------+-----------------+
| id  | name            | created_at      | updated_at       | position        |
+-----+-----------------+-----------------+------------------+-----------------+
| 162 | Sean Ledner     | 2017-07-14 1... | 2017-07-14 17... | Internal Acc... |
| 163 | Brigitte Har... | 2017-07-14 1... | 2017-07-14 17... | Design Facil... |
| 164 | Amani Sauer PhD | 2017-07-14 1... | 2017-07-14 17... | Global Real-... |
| 165 | Gerson Wisoky   | 2017-07-14 1... | 2017-07-14 17... | National Pro... |
| 166 | Jonatan Gree... | 2017-07-14 1... | 2017-07-14 17... | Advertising ... |
| 167 | Ezekiel Bart... | 2017-07-14 1... | 2017-07-14 17... | Sales Officer   |
| 168 | Rosendo Kutch   | 2017-07-14 1... | 2017-07-14 17... | Central Stra... |
| 169 | Letha Johnson   | 2017-07-14 1... | 2017-07-14 17... | Sales Designer  |
| 170 | Baron Deckow    | 2017-07-14 1... | 2017-07-14 17... | Internal Dev... |
| 171 | Mrs. Olin Nolan | 2017-07-14 1... | 2017-07-14 17... | Accounting O... |
| 172 | Bill Oberbru... | 2017-07-14 1... | 2017-07-14 17... | Senior Gover... |
| 173 | Ms. Elda Borer  | 2017-07-14 1... | 2017-07-14 17... | Community-Se... |
| 174 | Jimmie Abbott   | 2017-07-14 1... | 2017-07-14 17... | Senior Repre... |
| 175 | Richard Gerlach | 2017-07-14 1... | 2017-07-14 17... | Retail Analyst  |
| 176 | Noah Batz       | 2017-07-14 1... | 2017-07-14 17... | Customer Rea... |
| 177 | Verona Kozey    | 2017-07-14 1... | 2017-07-14 17... | Senior Designer |
| 178 | Mario DuBuque   | 2017-07-14 1... | 2017-07-14 17... | Government A... |
| 179 | Mrs. Bulah G... | 2017-07-14 1... | 2017-07-14 17... | Legal Developer |
| 180 | Vada Collins    | 2017-07-14 1... | 2017-07-14 17... | Banking Faci... |
| 181 | Felix Gibson    | 2017-07-14 1... | 2017-07-14 17... | Sales Developer |
+-----+-----------------+-----------------+------------------+-----------------+
20 rows in set
irb(main):003:0> Person.first.employees
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (2.7ms)  SELECT "people".* FROM "people" INNER JOIN "managers_employees" ON "people"."id" = "managers_employees"."employee_id" WHERE "managers_employees"."manager_id" = $1  [["manager_id", 162]]
+-----+-----------------+-----------------+------------------+-----------------+
| id  | name            | created_at      | updated_at       | position        |
+-----+-----------------+-----------------+------------------+-----------------+
| 162 | Sean Ledner     | 2017-07-14 1... | 2017-07-14 17... | Internal Acc... |
| 164 | Amani Sauer PhD | 2017-07-14 1... | 2017-07-14 17... | Global Real-... |
| 168 | Rosendo Kutch   | 2017-07-14 1... | 2017-07-14 17... | Central Stra... |
| 173 | Ms. Elda Borer  | 2017-07-14 1... | 2017-07-14 17... | Community-Se... |
| 174 | Jimmie Abbott   | 2017-07-14 1... | 2017-07-14 17... | Senior Repre... |
| 175 | Richard Gerlach | 2017-07-14 1... | 2017-07-14 17... | Retail Analyst  |
| 176 | Noah Batz       | 2017-07-14 1... | 2017-07-14 17... | Customer Rea... |
| 178 | Mario DuBuque   | 2017-07-14 1... | 2017-07-14 17... | Government A... |
| 179 | Mrs. Bulah G... | 2017-07-14 1... | 2017-07-14 17... | Legal Developer |
| 180 | Vada Collins    | 2017-07-14 1... | 2017-07-14 17... | Banking Faci... |
+-----+-----------------+-----------------+------------------+-----------------+
10 rows in set
irb(main):004:0> Person.first.managers
  Person Load (0.5ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.3ms)  SELECT "people".* FROM "people" INNER JOIN "managers_employees" ON "people"."id" = "managers_employees"."manager_id" WHERE "managers_employees"."employee_id" = $1  [["employee_id", 162]]
+-----+-----------------+-----------------+------------------+-----------------+
| id  | name            | created_at      | updated_at       | position        |
+-----+-----------------+-----------------+------------------+-----------------+
| 175 | Richard Gerlach | 2017-07-14 1... | 2017-07-14 17... | Retail Analyst  |
| 162 | Sean Ledner     | 2017-07-14 1... | 2017-07-14 17... | Internal Acc... |
| 164 | Amani Sauer PhD | 2017-07-14 1... | 2017-07-14 17... | Global Real-... |
| 166 | Jonatan Gree... | 2017-07-14 1... | 2017-07-14 17... | Advertising ... |
| 172 | Bill Oberbru... | 2017-07-14 1... | 2017-07-14 17... | Senior Gover... |
| 174 | Jimmie Abbott   | 2017-07-14 1... | 2017-07-14 17... | Senior Repre... |
| 168 | Rosendo Kutch   | 2017-07-14 1... | 2017-07-14 17... | Central Stra... |
| 178 | Mario DuBuque   | 2017-07-14 1... | 2017-07-14 17... | Government A... |
| 176 | Noah Batz       | 2017-07-14 1... | 2017-07-14 17... | Customer Rea... |
| 171 | Mrs. Olin Nolan | 2017-07-14 1... | 2017-07-14 17... | Accounting O... |
| 181 | Felix Gibson    | 2017-07-14 1... | 2017-07-14 17... | Sales Developer |
| 179 | Mrs. Bulah G... | 2017-07-14 1... | 2017-07-14 17... | Legal Developer |
+-----+-----------------+-----------------+------------------+-----------------+
12 rows in set
irb(main):005:0> ManagersEmployee.all
  ManagersEmployee Load (0.3ms)  SELECT "managers_employees".* FROM "managers_employees"
irb(main):006:0> ManagersEmployee.all.limit(10)
  ManagersEmployee Load (0.2ms)  SELECT  "managers_employees".* FROM "managers_employees" LIMIT $1  [["LIMIT", 10]]
+----+------------+-------------+----------------------+-----------------------+
| id | manager_id | employee_id | created_at           | updated_at            |
+----+------------+-------------+----------------------+-----------------------+
| 26 | 162        | 168         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 27 | 175        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 28 | 162        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 29 | 164        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 30 | 162        | 174         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 31 | 166        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 32 | 162        | 178         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 33 | 172        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 34 | 162        | 173         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 35 | 174        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
+----+------------+-------------+----------------------+-----------------------+
10 rows in set
irb(main):007:0> Person.first.managers_employee
  Person Load (0.5ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
NoMethodError: undefined method `managers_employee' for #<Person:0x0000000587edd0>
Did you mean?  manager_ids
	from /var/lib/gems/2.3.0/gems/activemodel-5.0.4/lib/active_model/attribute_methods.rb:433:in `method_missing'
	from (irb):7
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):008:0> Person.first.managers_employees
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
NoMethodError: undefined method `managers_employees' for #<Person:0x000000059183e0>
Did you mean?  manager_ids
	from /var/lib/gems/2.3.0/gems/activemodel-5.0.4/lib/active_model/attribute_methods.rb:433:in `method_missing'
	from (irb):8
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):009:0> Person.first.managersemployees
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
NoMethodError: undefined method `managersemployees' for #<Person:0x000000059f96b0>
Did you mean?  manager_ids
	from /var/lib/gems/2.3.0/gems/activemodel-5.0.4/lib/active_model/attribute_methods.rb:433:in `method_missing'
	from (irb):9
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):010:0> Person.first.our_employees
  Person Load (4.3ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  ManagersEmployee Load (0.2ms)  SELECT "managers_employees".* FROM "managers_employees" WHERE "managers_employees"."manager_id" = $1  [["manager_id", 162]]
+----+------------+-------------+----------------------+-----------------------+
| id | manager_id | employee_id | created_at           | updated_at            |
+----+------------+-------------+----------------------+-----------------------+
| 26 | 162        | 168         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 28 | 162        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 30 | 162        | 174         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 32 | 162        | 178         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 34 | 162        | 173         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 38 | 162        | 179         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 40 | 162        | 176         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 42 | 162        | 175         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 44 | 162        | 164         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 45 | 162        | 180         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
+----+------------+-------------+----------------------+-----------------------+
10 rows in set
irb(main):011:0> Person.first.our_managers
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  ManagersEmployee Load (0.2ms)  SELECT "managers_employees".* FROM "managers_employees" WHERE "managers_employees"."employee_id" = $1  [["employee_id", 162]]
+----+------------+-------------+----------------------+-----------------------+
| id | manager_id | employee_id | created_at           | updated_at            |
+----+------------+-------------+----------------------+-----------------------+
| 27 | 175        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 28 | 162        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 29 | 164        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 31 | 166        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 33 | 172        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 35 | 174        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 36 | 168        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 37 | 178        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 39 | 176        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 41 | 171        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 43 | 181        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 46 | 179        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
+----+------------+-------------+----------------------+-----------------------+
12 rows in set
irb(main):012:0> Person.first.employees << person.second
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
NameError: undefined local variable or method `person' for main:Object
	from (irb):12
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):013:0> Person.first.employees << person.second
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
NameError: undefined local variable or method `person' for main:Object
	from (irb):13
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):014:0> Person.first.employees << Person.second
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 1]]
   (0.1ms)  BEGIN
  Person Load (0.4ms)  SELECT  "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 162], ["LIMIT", 1]]
  ManagersEmployee Exists (0.3ms)  SELECT  1 AS one FROM "managers_employees" WHERE "managers_employees"."employee_id" = $1 AND "managers_employees"."manager_id" = $2 LIMIT $3  [["employee_id", 163], ["manager_id", 162], ["LIMIT", 1]]
  SQL (0.3ms)  INSERT INTO "managers_employees" ("manager_id", "employee_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["manager_id", 162], ["employee_id", 163], ["created_at", "2017-07-14 18:52:23.283325"], ["updated_at", "2017-07-14 18:52:23.283325"]]
   (5.8ms)  COMMIT
  Person Load (0.4ms)  SELECT "people".* FROM "people" INNER JOIN "managers_employees" ON "people"."id" = "managers_employees"."employee_id" WHERE "managers_employees"."manager_id" = $1  [["manager_id", 162]]
+-----+-----------------+-----------------+------------------+-----------------+
| id  | name            | created_at      | updated_at       | position        |
+-----+-----------------+-----------------+------------------+-----------------+
| 162 | Sean Ledner     | 2017-07-14 1... | 2017-07-14 17... | Internal Acc... |
| 163 | Brigitte Har... | 2017-07-14 1... | 2017-07-14 17... | Design Facil... |
| 164 | Amani Sauer PhD | 2017-07-14 1... | 2017-07-14 17... | Global Real-... |
| 168 | Rosendo Kutch   | 2017-07-14 1... | 2017-07-14 17... | Central Stra... |
| 173 | Ms. Elda Borer  | 2017-07-14 1... | 2017-07-14 17... | Community-Se... |
| 174 | Jimmie Abbott   | 2017-07-14 1... | 2017-07-14 17... | Senior Repre... |
| 175 | Richard Gerlach | 2017-07-14 1... | 2017-07-14 17... | Retail Analyst  |
| 176 | Noah Batz       | 2017-07-14 1... | 2017-07-14 17... | Customer Rea... |
| 178 | Mario DuBuque   | 2017-07-14 1... | 2017-07-14 17... | Government A... |
| 179 | Mrs. Bulah G... | 2017-07-14 1... | 2017-07-14 17... | Legal Developer |
| 180 | Vada Collins    | 2017-07-14 1... | 2017-07-14 17... | Banking Faci... |
+-----+-----------------+-----------------+------------------+-----------------+
11 rows in set
irb(main):015:0> Person.first.employees << Person.third
  Person Load (0.3ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 2]]
   (0.1ms)  BEGIN
  Person Load (2.7ms)  SELECT  "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 162], ["LIMIT", 1]]
  ManagersEmployee Exists (0.8ms)  SELECT  1 AS one FROM "managers_employees" WHERE "managers_employees"."employee_id" = $1 AND "managers_employees"."manager_id" = $2 LIMIT $3  [["employee_id", 164], ["manager_id", 162], ["LIMIT", 1]]
   (0.1ms)  ROLLBACK
ActiveRecord::RecordInvalid: Validation failed: Employee has already been taken
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/validations.rb:78:in `raise_validation_error'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/validations.rb:50:in `save!'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/attribute_methods/dirty.rb:30:in `save!'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/transactions.rb:324:in `block in save!'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/transactions.rb:395:in `block in with_transaction_returning_status'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/database_statements.rb:230:in `transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/transactions.rb:211:in `transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/transactions.rb:392:in `with_transaction_returning_status'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/transactions.rb:324:in `save!'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/suppressor.rb:45:in `save!'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/has_many_through_association.rb:87:in `save_through_record'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/has_many_through_association.rb:45:in `insert_record'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:570:in `block (2 levels) in concat_records'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:584:in `replace_on_target'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:422:in `add_to_target'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:569:in `block in concat_records'
... 16 levels...
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):016:0> Person.second
  Person Load (0.3ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 1]]
+-----+-----------------+-----------------+------------------+-----------------+
| id  | name            | created_at      | updated_at       | position        |
+-----+-----------------+-----------------+------------------+-----------------+
| 163 | Brigitte Har... | 2017-07-14 1... | 2017-07-14 17... | Design Facil... |
+-----+-----------------+-----------------+------------------+-----------------+
1 row in set
irb(main):017:0> Person.first.managers << Person.third
  Person Load (1.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.9ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 2]]
   (0.8ms)  BEGIN
  Person Load (0.2ms)  SELECT  "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 162], ["LIMIT", 1]]
  ManagersEmployee Exists (0.2ms)  SELECT  1 AS one FROM "managers_employees" WHERE "managers_employees"."employee_id" = $1 AND "managers_employees"."manager_id" = $2 LIMIT $3  [["employee_id", 162], ["manager_id", 164], ["LIMIT", 1]]
   (1.1ms)  ROLLBACK
ActiveRecord::RecordInvalid: Validation failed: Employee has already been taken
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/validations.rb:78:in `raise_validation_error'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/validations.rb:50:in `save!'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/attribute_methods/dirty.rb:30:in `save!'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/transactions.rb:324:in `block in save!'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/transactions.rb:395:in `block in with_transaction_returning_status'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/database_statements.rb:230:in `transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/transactions.rb:211:in `transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/transactions.rb:392:in `with_transaction_returning_status'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/transactions.rb:324:in `save!'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/suppressor.rb:45:in `save!'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/has_many_through_association.rb:87:in `save_through_record'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/has_many_through_association.rb:45:in `insert_record'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:570:in `block (2 levels) in concat_records'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:584:in `replace_on_target'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:422:in `add_to_target'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:569:in `block in concat_records'
... 16 levels...
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):018:0> Person.first.managers
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.9ms)  SELECT "people".* FROM "people" INNER JOIN "managers_employees" ON "people"."id" = "managers_employees"."manager_id" WHERE "managers_employees"."employee_id" = $1  [["employee_id", 162]]
+-----+-----------------+-----------------+------------------+-----------------+
| id  | name            | created_at      | updated_at       | position        |
+-----+-----------------+-----------------+------------------+-----------------+
| 175 | Richard Gerlach | 2017-07-14 1... | 2017-07-14 17... | Retail Analyst  |
| 162 | Sean Ledner     | 2017-07-14 1... | 2017-07-14 17... | Internal Acc... |
| 164 | Amani Sauer PhD | 2017-07-14 1... | 2017-07-14 17... | Global Real-... |
| 166 | Jonatan Gree... | 2017-07-14 1... | 2017-07-14 17... | Advertising ... |
| 172 | Bill Oberbru... | 2017-07-14 1... | 2017-07-14 17... | Senior Gover... |
| 174 | Jimmie Abbott   | 2017-07-14 1... | 2017-07-14 17... | Senior Repre... |
| 168 | Rosendo Kutch   | 2017-07-14 1... | 2017-07-14 17... | Central Stra... |
| 178 | Mario DuBuque   | 2017-07-14 1... | 2017-07-14 17... | Government A... |
| 176 | Noah Batz       | 2017-07-14 1... | 2017-07-14 17... | Customer Rea... |
| 171 | Mrs. Olin Nolan | 2017-07-14 1... | 2017-07-14 17... | Accounting O... |
| 181 | Felix Gibson    | 2017-07-14 1... | 2017-07-14 17... | Sales Developer |
| 179 | Mrs. Bulah G... | 2017-07-14 1... | 2017-07-14 17... | Legal Developer |
+-----+-----------------+-----------------+------------------+-----------------+
12 rows in set
irb(main):019:0> Person.first.managers << Person.second
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 1]]
   (0.1ms)  BEGIN
  Person Load (4.3ms)  SELECT  "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 162], ["LIMIT", 1]]
  ManagersEmployee Exists (0.9ms)  SELECT  1 AS one FROM "managers_employees" WHERE "managers_employees"."employee_id" = $1 AND "managers_employees"."manager_id" = $2 LIMIT $3  [["employee_id", 162], ["manager_id", 163], ["LIMIT", 1]]
  SQL (0.3ms)  INSERT INTO "managers_employees" ("manager_id", "employee_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["manager_id", 163], ["employee_id", 162], ["created_at", "2017-07-14 18:56:32.438763"], ["updated_at", "2017-07-14 18:56:32.438763"]]
   (7.7ms)  COMMIT
  Person Load (0.4ms)  SELECT "people".* FROM "people" INNER JOIN "managers_employees" ON "people"."id" = "managers_employees"."manager_id" WHERE "managers_employees"."employee_id" = $1  [["employee_id", 162]]
+-----+-----------------+-----------------+------------------+-----------------+
| id  | name            | created_at      | updated_at       | position        |
+-----+-----------------+-----------------+------------------+-----------------+
| 175 | Richard Gerlach | 2017-07-14 1... | 2017-07-14 17... | Retail Analyst  |
| 162 | Sean Ledner     | 2017-07-14 1... | 2017-07-14 17... | Internal Acc... |
| 164 | Amani Sauer PhD | 2017-07-14 1... | 2017-07-14 17... | Global Real-... |
| 166 | Jonatan Gree... | 2017-07-14 1... | 2017-07-14 17... | Advertising ... |
| 172 | Bill Oberbru... | 2017-07-14 1... | 2017-07-14 17... | Senior Gover... |
| 174 | Jimmie Abbott   | 2017-07-14 1... | 2017-07-14 17... | Senior Repre... |
| 168 | Rosendo Kutch   | 2017-07-14 1... | 2017-07-14 17... | Central Stra... |
| 178 | Mario DuBuque   | 2017-07-14 1... | 2017-07-14 17... | Government A... |
| 176 | Noah Batz       | 2017-07-14 1... | 2017-07-14 17... | Customer Rea... |
| 171 | Mrs. Olin Nolan | 2017-07-14 1... | 2017-07-14 17... | Accounting O... |
| 181 | Felix Gibson    | 2017-07-14 1... | 2017-07-14 17... | Sales Developer |
| 179 | Mrs. Bulah G... | 2017-07-14 1... | 2017-07-14 17... | Legal Developer |
| 163 | Brigitte Har... | 2017-07-14 1... | 2017-07-14 17... | Design Facil... |
+-----+-----------------+-----------------+------------------+-----------------+
13 rows in set
irb(main):020:0> Person.our_managers.build(173)
NoMethodError: undefined method `our_managers' for #<Class:0x0000000511d0c8>
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/dynamic_matchers.rb:21:in `method_missing'
	from (irb):20
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):021:0> Person.our_manager.build(173)
NoMethodError: undefined method `our_manager' for #<Class:0x0000000511d0c8>
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/dynamic_matchers.rb:21:in `method_missing'
	from (irb):21
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):022:0> Person.first.our_manager.build(173)
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
NoMethodError: undefined method `our_manager' for #<Person:0x00000004fdcab0>
Did you mean?  our_managers
               our_managers=
	from /var/lib/gems/2.3.0/gems/activemodel-5.0.4/lib/active_model/attribute_methods.rb:433:in `method_missing'
	from (irb):22
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):023:0> Person.first.our_managers.build(173)
  Person Load (2.4ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
ArgumentError: When assigning attributes, you must pass a hash as an argument.
	from /var/lib/gems/2.3.0/gems/activemodel-5.0.4/lib/active_model/attribute_assignment.rb:28:in `assign_attributes'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/core.rb:319:in `initialize'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/inheritance.rb:65:in `new'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/inheritance.rb:65:in `new'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/reflection.rb:152:in `build_association'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/association.rb:263:in `build_record'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:164:in `build'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_proxy.rb:293:in `build'
	from (irb):23
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):024:0> Person.first.our_managers.build(:id 173)
SyntaxError: (irb):24: syntax error, unexpected tINTEGER, expecting ')'
Person.first.our_managers.build(:id 173)
                                       ^
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):025:0> Person.first.our_managers.build(:id => 173)
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
+-----+------------+-------------+------------+------------+
| id  | manager_id | employee_id | created_at | updated_at |
+-----+------------+-------------+------------+------------+
| 173 |            | 162         |            |            |
+-----+------------+-------------+------------+------------+
1 row in set
irb(main):026:0> Person.first.our_managers.build(:manager_id => 173)
  Person Load (0.3ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
+----+------------+-------------+------------+------------+
| id | manager_id | employee_id | created_at | updated_at |
+----+------------+-------------+------------+------------+
|    | 173        | 162         |            |            |
+----+------------+-------------+------------+------------+
1 row in set
irb(main):027:0> Person.first.our_managers.build(:manager_id => 173).save
  Person Load (0.3ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
   (0.1ms)  BEGIN
  Person Load (0.2ms)  SELECT  "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 162], ["LIMIT", 1]]
  Person Load (0.1ms)  SELECT  "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 173], ["LIMIT", 1]]
  ManagersEmployee Exists (0.2ms)  SELECT  1 AS one FROM "managers_employees" WHERE "managers_employees"."employee_id" = $1 AND "managers_employees"."manager_id" = $2 LIMIT $3  [["employee_id", 162], ["manager_id", 173], ["LIMIT", 1]]
  SQL (0.4ms)  INSERT INTO "managers_employees" ("manager_id", "employee_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["manager_id", 173], ["employee_id", 162], ["created_at", "2017-07-14 19:02:40.903426"], ["updated_at", "2017-07-14 19:02:40.903426"]]
   (3.5ms)  COMMIT
=> true
irb(main):028:0> Person.first.our_managers.create(:manager_id => 179)
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
   (0.1ms)  BEGIN
  Person Load (0.1ms)  SELECT  "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 162], ["LIMIT", 1]]
  Person Load (0.1ms)  SELECT  "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 179], ["LIMIT", 1]]
  ManagersEmployee Exists (0.2ms)  SELECT  1 AS one FROM "managers_employees" WHERE "managers_employees"."employee_id" = $1 AND "managers_employees"."manager_id" = $2 LIMIT $3  [["employee_id", 162], ["manager_id", 179], ["LIMIT", 1]]
   (0.1ms)  COMMIT
+----+------------+-------------+------------+------------+
| id | manager_id | employee_id | created_at | updated_at |
+----+------------+-------------+------------+------------+
|    | 179        | 162         |            |            |
+----+------------+-------------+------------+------------+
1 row in set
irb(main):029:0> Person.first.our_managers
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  ManagersEmployee Load (0.3ms)  SELECT "managers_employees".* FROM "managers_employees" WHERE "managers_employees"."employee_id" = $1  [["employee_id", 162]]
+----+------------+-------------+----------------------+-----------------------+
| id | manager_id | employee_id | created_at           | updated_at            |
+----+------------+-------------+----------------------+-----------------------+
| 27 | 175        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 28 | 162        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 29 | 164        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 31 | 166        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 33 | 172        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 35 | 174        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 36 | 168        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 37 | 178        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 39 | 176        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 41 | 171        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 43 | 181        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 46 | 179        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 48 | 163        | 162         | 2017-07-14 18:56:... | 2017-07-14 18:56:3... |
| 49 | 173        | 162         | 2017-07-14 19:02:... | 2017-07-14 19:02:4... |
+----+------------+-------------+----------------------+-----------------------+
14 rows in set
irb(main):030:0> Person.first.our_employees
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  ManagersEmployee Load (0.2ms)  SELECT "managers_employees".* FROM "managers_employees" WHERE "managers_employees"."manager_id" = $1  [["manager_id", 162]]
+----+------------+-------------+----------------------+-----------------------+
| id | manager_id | employee_id | created_at           | updated_at            |
+----+------------+-------------+----------------------+-----------------------+
| 26 | 162        | 168         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 28 | 162        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 30 | 162        | 174         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 32 | 162        | 178         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 34 | 162        | 173         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 38 | 162        | 179         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 40 | 162        | 176         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 42 | 162        | 175         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 44 | 162        | 164         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 45 | 162        | 180         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 47 | 162        | 163         | 2017-07-14 18:52:... | 2017-07-14 18:52:2... |
+----+------------+-------------+----------------------+-----------------------+
11 rows in set
irb(main):031:0> Person.first.our_employees.build(:employee_id => 177).save
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
   (0.1ms)  BEGIN
  Person Load (0.1ms)  SELECT  "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 177], ["LIMIT", 1]]
  Person Load (0.1ms)  SELECT  "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 162], ["LIMIT", 1]]
  ManagersEmployee Exists (0.2ms)  SELECT  1 AS one FROM "managers_employees" WHERE "managers_employees"."employee_id" = $1 AND "managers_employees"."manager_id" = $2 LIMIT $3  [["employee_id", 177], ["manager_id", 162], ["LIMIT", 1]]
  SQL (1.6ms)  INSERT INTO "managers_employees" ("manager_id", "employee_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["manager_id", 162], ["employee_id", 177], ["created_at", "2017-07-14 19:07:41.995515"], ["updated_at", "2017-07-14 19:07:41.995515"]]
   (3.3ms)  COMMIT
=> true
irb(main):032:0> Person.first.our_employees
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  ManagersEmployee Load (1.2ms)  SELECT "managers_employees".* FROM "managers_employees" WHERE "managers_employees"."manager_id" = $1  [["manager_id", 162]]
+----+------------+-------------+----------------------+-----------------------+
| id | manager_id | employee_id | created_at           | updated_at            |
+----+------------+-------------+----------------------+-----------------------+
| 26 | 162        | 168         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 28 | 162        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 30 | 162        | 174         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 32 | 162        | 178         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 34 | 162        | 173         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 38 | 162        | 179         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 40 | 162        | 176         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 42 | 162        | 175         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 44 | 162        | 164         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 45 | 162        | 180         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 47 | 162        | 163         | 2017-07-14 18:52:... | 2017-07-14 18:52:2... |
| 50 | 162        | 177         | 2017-07-14 19:07:... | 2017-07-14 19:07:4... |
+----+------------+-------------+----------------------+-----------------------+
12 rows in set
irb(main):033:0> Person.first.our_employees.destroy(Person.second)
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 1]]
ActiveRecord::AssociationTypeMismatch: ManagersEmployee(#44256500) expected, got Person(#42526820)
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/association.rb:231:in `raise_on_type_mismatch!'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:519:in `block in delete_or_destroy'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:519:in `each'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:519:in `delete_or_destroy'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:294:in `destroy'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_proxy.rb:695:in `destroy'
	from (irb):33
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):034:0> Person.first.our_employees.destroy(:employee_id => 177)
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
ActiveRecord::AssociationTypeMismatch: ManagersEmployee(#44256500) expected, got Hash(#5435720)
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/association.rb:231:in `raise_on_type_mismatch!'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:519:in `block in delete_or_destroy'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:519:in `each'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:519:in `delete_or_destroy'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:294:in `destroy'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_proxy.rb:695:in `destroy'
	from (irb):34
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):035:0> Person.first.our_employees.delete(:employee_id => 177)
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
=> []
irb(main):036:0> Person.first.our_employees
  Person Load (0.6ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  ManagersEmployee Load (2.3ms)  SELECT "managers_employees".* FROM "managers_employees" WHERE "managers_employees"."manager_id" = $1  [["manager_id", 162]]
+----+------------+-------------+----------------------+-----------------------+
| id | manager_id | employee_id | created_at           | updated_at            |
+----+------------+-------------+----------------------+-----------------------+
| 26 | 162        | 168         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 28 | 162        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 30 | 162        | 174         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 32 | 162        | 178         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 34 | 162        | 173         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 38 | 162        | 179         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 40 | 162        | 176         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 42 | 162        | 175         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 44 | 162        | 164         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 45 | 162        | 180         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 47 | 162        | 163         | 2017-07-14 18:52:... | 2017-07-14 18:52:2... |
| 50 | 162        | 177         | 2017-07-14 19:07:... | 2017-07-14 19:07:4... |
+----+------------+-------------+----------------------+-----------------------+
12 rows in set
irb(main):037:0> Person.first.our_employees.delete(:employee_id => 177).save
  Person Load (0.3ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
NoMethodError: undefined method `save' for []:Array
	from (irb):37
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):038:0> Person.first.our_employees.delete(:employee_id => 177)
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
=> []
irb(main):039:0> Person.all
  Person Load (0.3ms)  SELECT "people".* FROM "people"
+-----+-----------------+-----------------+------------------+-----------------+
| id  | name            | created_at      | updated_at       | position        |
+-----+-----------------+-----------------+------------------+-----------------+
| 162 | Sean Ledner     | 2017-07-14 1... | 2017-07-14 17... | Internal Acc... |
| 163 | Brigitte Har... | 2017-07-14 1... | 2017-07-14 17... | Design Facil... |
| 164 | Amani Sauer PhD | 2017-07-14 1... | 2017-07-14 17... | Global Real-... |
| 165 | Gerson Wisoky   | 2017-07-14 1... | 2017-07-14 17... | National Pro... |
| 166 | Jonatan Gree... | 2017-07-14 1... | 2017-07-14 17... | Advertising ... |
| 167 | Ezekiel Bart... | 2017-07-14 1... | 2017-07-14 17... | Sales Officer   |
| 168 | Rosendo Kutch   | 2017-07-14 1... | 2017-07-14 17... | Central Stra... |
| 169 | Letha Johnson   | 2017-07-14 1... | 2017-07-14 17... | Sales Designer  |
| 170 | Baron Deckow    | 2017-07-14 1... | 2017-07-14 17... | Internal Dev... |
| 171 | Mrs. Olin Nolan | 2017-07-14 1... | 2017-07-14 17... | Accounting O... |
| 172 | Bill Oberbru... | 2017-07-14 1... | 2017-07-14 17... | Senior Gover... |
| 173 | Ms. Elda Borer  | 2017-07-14 1... | 2017-07-14 17... | Community-Se... |
| 174 | Jimmie Abbott   | 2017-07-14 1... | 2017-07-14 17... | Senior Repre... |
| 175 | Richard Gerlach | 2017-07-14 1... | 2017-07-14 17... | Retail Analyst  |
| 176 | Noah Batz       | 2017-07-14 1... | 2017-07-14 17... | Customer Rea... |
| 177 | Verona Kozey    | 2017-07-14 1... | 2017-07-14 17... | Senior Designer |
| 178 | Mario DuBuque   | 2017-07-14 1... | 2017-07-14 17... | Government A... |
| 179 | Mrs. Bulah G... | 2017-07-14 1... | 2017-07-14 17... | Legal Developer |
| 180 | Vada Collins    | 2017-07-14 1... | 2017-07-14 17... | Banking Faci... |
| 181 | Felix Gibson    | 2017-07-14 1... | 2017-07-14 17... | Sales Developer |
+-----+-----------------+-----------------+------------------+-----------------+
20 rows in set
irb(main):040:0> Person.first
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
+-----+-------------+------------------+-------------------+-------------------+
| id  | name        | created_at       | updated_at        | position          |
+-----+-------------+------------------+-------------------+-------------------+
| 162 | Sean Ledner | 2017-07-14 17... | 2017-07-14 17:... | Internal Accou... |
+-----+-------------+------------------+-------------------+-------------------+
1 row in set
irb(main):041:0> Person.first.our_employees.delete(Person.first)
  Person Load (0.3ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.3ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
ActiveRecord::AssociationTypeMismatch: ManagersEmployee(#44256500) expected, got Person(#42526820)
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/association.rb:231:in `raise_on_type_mismatch!'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:519:in `block in delete_or_destroy'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:519:in `each'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:519:in `delete_or_destroy'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:283:in `delete'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_proxy.rb:623:in `delete'
	from (irb):41
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):042:0> Person.first.our_employees.delete(:employee_id => 177)
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
=> []
irb(main):043:0> Person.our_employees.delete(:id => 177)
NoMethodError: undefined method `our_employees' for #<Class:0x0000000511d0c8>
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/dynamic_matchers.rb:21:in `method_missing'
	from (irb):43
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):044:0> Person.first.our_employees.delete(:id => 177)
  Person Load (0.3ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
=> []
irb(main):045:0> Person.first.our_employees.delete(ManagersEmployee.all.where(employee_id = ?, 177).first)
SyntaxError: (irb):45: syntax error, unexpected tINTEGER, expecting ')'
....all.where(employee_id = ?, 177).first)
...                               ^
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):046:0> Person.first.our_employees.delete(ManagersEmployee.all.where(employee_id = ?, 177).first)
SyntaxError: (irb):46: syntax error, unexpected tINTEGER, expecting ')'
....all.where(employee_id = ?, 177).first)
...                               ^
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):047:0> Person.first.our_employees.delete(ManagersEmployee.all.where(employee_id = ?, 177)).first
SyntaxError: (irb):47: syntax error, unexpected tINTEGER, expecting ')'
....all.where(employee_id = ?, 177)).first
...                               ^
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):048:0> Person.first.our_employees.delete(ManagersEmployee.first)
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  ManagersEmployee Load (0.1ms)  SELECT  "managers_employees".* FROM "managers_employees" ORDER BY "managers_employees"."id" ASC LIMIT $1  [["LIMIT", 1]]
   (0.1ms)  BEGIN
  SQL (0.2ms)  DELETE FROM "managers_employees" WHERE "managers_employees"."id" = $1  [["id", 26]]
   (3.4ms)  COMMIT
+----+------------+-------------+----------------------+-----------------------+
| id | manager_id | employee_id | created_at           | updated_at            |
+----+------------+-------------+----------------------+-----------------------+
| 26 | 162        | 168         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
+----+------------+-------------+----------------------+-----------------------+
1 row in set
irb(main):049:0> Person.first.our_employees
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  ManagersEmployee Load (0.2ms)  SELECT "managers_employees".* FROM "managers_employees" WHERE "managers_employees"."manager_id" = $1  [["manager_id", 162]]
+----+------------+-------------+----------------------+-----------------------+
| id | manager_id | employee_id | created_at           | updated_at            |
+----+------------+-------------+----------------------+-----------------------+
| 28 | 162        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 30 | 162        | 174         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 32 | 162        | 178         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 34 | 162        | 173         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 38 | 162        | 179         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 40 | 162        | 176         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 42 | 162        | 175         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 44 | 162        | 164         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 45 | 162        | 180         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 47 | 162        | 163         | 2017-07-14 18:52:... | 2017-07-14 18:52:2... |
| 50 | 162        | 177         | 2017-07-14 19:07:... | 2017-07-14 19:07:4... |
+----+------------+-------------+----------------------+-----------------------+
11 rows in set
irb(main):050:0> Person.first.our_employees = [174, 178, 181, 182]
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
ActiveRecord::AssociationTypeMismatch: ManagersEmployee(#44256500) expected, got Fixnum(#5456940)
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/association.rb:231:in `raise_on_type_mismatch!'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:382:in `block in replace'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:382:in `each'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:382:in `replace'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:48:in `writer'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/builder/association.rb:119:in `our_employees='
	from (irb):50
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):051:0> Person.first.our_employees.ids = [174, 178, 181, 182]
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
NoMethodError:   ManagersEmployee Load (2.7ms)  SELECT "managers_employees".* FROM "managers_employees" WHERE "managers_employees"."manager_id" = $1  [["manager_id", 162]]
undefined method `ids=' for #<ManagersEmployee::ActiveRecord_Associations_CollectionProxy:0x00000005ada750>
Did you mean?  ids
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/relation/delegation.rb:124:in `method_missing'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/relation/delegation.rb:94:in `method_missing'
	from (irb):51
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):052:0> Person.first.our_employees.id = [174, 178, 181, 182]
  Person Load (0.3ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
NoMethodError:   ManagersEmployee Load (0.2ms)  SELECT "managers_employees".* FROM "managers_employees" WHERE "managers_employees"."manager_id" = $1  [["manager_id", 162]]
undefined method `id=' for #<ManagersEmployee::ActiveRecord_Associations_CollectionProxy:0x00000006460b30>
Did you mean?  ids
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/relation/delegation.rb:124:in `method_missing'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/relation/delegation.rb:94:in `method_missing'
	from (irb):52
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):053:0> Person.first.our_employees.employee_id = [174, 178, 181, 182]
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
NoMethodError:   ManagersEmployee Load (0.2ms)  SELECT "managers_employees".* FROM "managers_employees" WHERE "managers_employees"."manager_id" = $1  [["manager_id", 162]]
undefined method `employee_id=' for #<ManagersEmployee::ActiveRecord_Associations_CollectionProxy:0x000000064852a0>
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/relation/delegation.rb:124:in `method_missing'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/relation/delegation.rb:94:in `method_missing'
	from (irb):53
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):054:0> Person.first.managers_employees.employee_id = [174, 178, 181, 182]
  Person Load (0.4ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
NoMethodError: undefined method `managers_employees' for #<Person:0x000000059b3c00>
Did you mean?  manager_ids
	from /var/lib/gems/2.3.0/gems/activemodel-5.0.4/lib/active_model/attribute_methods.rb:433:in `method_missing'
	from (irb):54
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):055:0> Person.first.employee_id = [174, 178, 181, 182]
  Person Load (0.6ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
NoMethodError: undefined method `employee_id=' for #<Person:0x00000006cdedc0>
Did you mean?  employee_ids=
               employee_ids
               employees=
	from /var/lib/gems/2.3.0/gems/activemodel-5.0.4/lib/active_model/attribute_methods.rb:433:in `method_missing'
	from (irb):55
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):056:0> Person.first.employee_ids = [174, 178, 181, 182]
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.2ms)  SELECT "people".* FROM "people" WHERE "people"."id" IN (174, 178, 181, 182)
ActiveRecord::RecordNotFound: Couldn't find all People with 'id': (174, 178, 181, 182) (found 3 results, but was looking for 4)
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/relation/finder_methods.rb:358:in `raise_record_not_found_exception!'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:74:in `ids_writer'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/builder/collection_association.rb:66:in `employee_ids='
	from (irb):56
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):057:0> Person.first.employee_ids = [174, 178, 176, 179]
  Person Load (0.3ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.3ms)  SELECT "people".* FROM "people" WHERE "people"."id" IN (174, 178, 176, 179)
  Person Load (0.5ms)  SELECT "people".* FROM "people" INNER JOIN "managers_employees" ON "people"."id" = "managers_employees"."employee_id" WHERE "managers_employees"."manager_id" = $1  [["manager_id", 162]]
   (0.1ms)  BEGIN
  SQL (0.2ms)  DELETE FROM "managers_employees" WHERE "managers_employees"."manager_id" = $1 AND "managers_employees"."employee_id" IN (162, 163, 164, 173, 175, 177, 180)  [["manager_id", 162]]
   (7.0ms)  COMMIT
=> [174, 178, 176, 179]
irb(main):058:0> Person.first.our_employees
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  ManagersEmployee Load (0.1ms)  SELECT "managers_employees".* FROM "managers_employees" WHERE "managers_employees"."manager_id" = $1  [["manager_id", 162]]
+----+------------+-------------+----------------------+-----------------------+
| id | manager_id | employee_id | created_at           | updated_at            |
+----+------------+-------------+----------------------+-----------------------+
| 30 | 162        | 174         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 32 | 162        | 178         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 38 | 162        | 179         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 40 | 162        | 176         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
+----+------------+-------------+----------------------+-----------------------+
4 rows in set
irb(main):059:0> Person.first.employee_ids = [174, 178, 176, 179]
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.2ms)  SELECT "people".* FROM "people" WHERE "people"."id" IN (174, 178, 176, 179)
  Person Load (0.3ms)  SELECT "people".* FROM "people" INNER JOIN "managers_employees" ON "people"."id" = "managers_employees"."employee_id" WHERE "managers_employees"."manager_id" = $1  [["manager_id", 162]]
   (0.1ms)  BEGIN
   (0.1ms)  COMMIT
=> [174, 178, 176, 179]
irb(main):060:0> Person.second.our_managers << Person.last
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 1]]
  Person Load (0.1ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" DESC LIMIT $1  [["LIMIT", 1]]
   (0.1ms)  BEGIN
   (0.1ms)  ROLLBACK
ActiveRecord::AssociationTypeMismatch: ManagersEmployee(#44256500) expected, got Person(#42526820)
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/association.rb:231:in `raise_on_type_mismatch!'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:568:in `block in concat_records'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:567:in `each'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:567:in `concat_records'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/has_many_association.rb:123:in `concat_records'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:187:in `block in concat'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:202:in `block in transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/database_statements.rb:232:in `block in transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/transaction.rb:189:in `within_new_transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/database_statements.rb:232:in `transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/transactions.rb:211:in `transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:201:in `transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:187:in `concat'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_proxy.rb:1001:in `<<'
	from (irb):60
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):061:0> Person.second.our_managers
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 1]]
  ManagersEmployee Load (0.3ms)  SELECT "managers_employees".* FROM "managers_employees" WHERE "managers_employees"."employee_id" = $1  [["employee_id", 163]]
=> #<ActiveRecord::Associations::CollectionProxy []>
irb(main):062:0> Person.last
  Person Load (0.3ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" DESC LIMIT $1  [["LIMIT", 1]]
+-----+--------------+-------------------+-------------------+-----------------+
| id  | name         | created_at        | updated_at        | position        |
+-----+--------------+-------------------+-------------------+-----------------+
| 181 | Felix Gibson | 2017-07-14 17:... | 2017-07-14 17:... | Sales Developer |
+-----+--------------+-------------------+-------------------+-----------------+
1 row in set
irb(main):063:0> Person.second.our_employees << Person.last
  Person Load (0.3ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 1]]
  Person Load (0.1ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" DESC LIMIT $1  [["LIMIT", 1]]
   (0.1ms)  BEGIN
   (0.1ms)  ROLLBACK
ActiveRecord::AssociationTypeMismatch: ManagersEmployee(#44256500) expected, got Person(#42526820)
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/association.rb:231:in `raise_on_type_mismatch!'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:568:in `block in concat_records'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:567:in `each'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:567:in `concat_records'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/has_many_association.rb:123:in `concat_records'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:187:in `block in concat'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:202:in `block in transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/database_statements.rb:232:in `block in transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/transaction.rb:189:in `within_new_transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/database_statements.rb:232:in `transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/transactions.rb:211:in `transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:201:in `transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:187:in `concat'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_proxy.rb:1001:in `<<'
	from (irb):63
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):064:0> Person.second.our_employees << Person.first
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 1]]
  Person Load (0.1ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
   (0.1ms)  BEGIN
   (2.3ms)  ROLLBACK
ActiveRecord::AssociationTypeMismatch: ManagersEmployee(#44256500) expected, got Person(#42526820)
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/association.rb:231:in `raise_on_type_mismatch!'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:568:in `block in concat_records'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:567:in `each'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:567:in `concat_records'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/has_many_association.rb:123:in `concat_records'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:187:in `block in concat'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:202:in `block in transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/database_statements.rb:232:in `block in transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/transaction.rb:189:in `within_new_transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/database_statements.rb:232:in `transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/transactions.rb:211:in `transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:201:in `transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:187:in `concat'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_proxy.rb:1001:in `<<'
	from (irb):64
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):065:0> Person.first.our_managers << Person.first
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.1ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
   (0.1ms)  BEGIN
   (0.1ms)  ROLLBACK
ActiveRecord::AssociationTypeMismatch: ManagersEmployee(#44256500) expected, got Person(#42526820)
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/association.rb:231:in `raise_on_type_mismatch!'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:568:in `block in concat_records'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:567:in `each'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:567:in `concat_records'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/has_many_association.rb:123:in `concat_records'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:187:in `block in concat'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:202:in `block in transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/database_statements.rb:232:in `block in transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/transaction.rb:189:in `within_new_transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/database_statements.rb:232:in `transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/transactions.rb:211:in `transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:201:in `transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:187:in `concat'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_proxy.rb:1001:in `<<'
	from (irb):65
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):066:0> Person.second.managers << Person.first
  Person Load (0.3ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 1]]
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
   (0.1ms)  BEGIN
  Person Load (0.1ms)  SELECT  "people".* FROM "people" WHERE "people"."id" = $1 LIMIT $2  [["id", 163], ["LIMIT", 1]]
  ManagersEmployee Exists (0.4ms)  SELECT  1 AS one FROM "managers_employees" WHERE "managers_employees"."employee_id" = $1 AND "managers_employees"."manager_id" = $2 LIMIT $3  [["employee_id", 163], ["manager_id", 162], ["LIMIT", 1]]
  SQL (2.4ms)  INSERT INTO "managers_employees" ("manager_id", "employee_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["manager_id", 162], ["employee_id", 163], ["created_at", "2017-07-14 19:52:54.514271"], ["updated_at", "2017-07-14 19:52:54.514271"]]
   (5.6ms)  COMMIT
  Person Load (0.8ms)  SELECT "people".* FROM "people" INNER JOIN "managers_employees" ON "people"."id" = "managers_employees"."manager_id" WHERE "managers_employees"."employee_id" = $1  [["employee_id", 163]]
+-----+-------------+------------------+-------------------+-------------------+
| id  | name        | created_at       | updated_at        | position          |
+-----+-------------+------------------+-------------------+-------------------+
| 162 | Sean Ledner | 2017-07-14 17... | 2017-07-14 17:... | Internal Accou... |
+-----+-------------+------------------+-------------------+-------------------+
1 row in set
irb(main):067:0> Person.first.employees
  Person Load (0.3ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.3ms)  SELECT "people".* FROM "people" INNER JOIN "managers_employees" ON "people"."id" = "managers_employees"."employee_id" WHERE "managers_employees"."manager_id" = $1  [["manager_id", 162]]
+-----+-----------------+-----------------+------------------+-----------------+
| id  | name            | created_at      | updated_at       | position        |
+-----+-----------------+-----------------+------------------+-----------------+
| 163 | Brigitte Har... | 2017-07-14 1... | 2017-07-14 17... | Design Facil... |
| 174 | Jimmie Abbott   | 2017-07-14 1... | 2017-07-14 17... | Senior Repre... |
| 176 | Noah Batz       | 2017-07-14 1... | 2017-07-14 17... | Customer Rea... |
| 178 | Mario DuBuque   | 2017-07-14 1... | 2017-07-14 17... | Government A... |
| 179 | Mrs. Bulah G... | 2017-07-14 1... | 2017-07-14 17... | Legal Developer |
+-----+-----------------+-----------------+------------------+-----------------+
5 rows in set
irb(main):068:0> Person.first.employees.delete(Person.where("id = ?" 179).first)
SyntaxError: (irb):68: syntax error, unexpected tINTEGER, expecting ')'
Person.first.employees.delete(Person.where("id = ?" 179).first)
                                                       ^
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):069:0> Person.first.employees.delete(Person.where("id = ?" 179))
SyntaxError: (irb):69: syntax error, unexpected tINTEGER, expecting ')'
Person.first.employees.delete(Person.where("id = ?" 179))
                                                       ^
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):070:0> Person.first.employees.create(Person.last)
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.3ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" DESC LIMIT $1  [["LIMIT", 1]]
   (0.1ms)  BEGIN
   (0.1ms)  ROLLBACK
ArgumentError: When assigning attributes, you must pass a hash as an argument.
	from /var/lib/gems/2.3.0/gems/activemodel-5.0.4/lib/active_model/attribute_assignment.rb:28:in `assign_attributes'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/core.rb:319:in `initialize'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/inheritance.rb:65:in `new'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/inheritance.rb:65:in `new'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/reflection.rb:152:in `build_association'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/association.rb:263:in `build_record'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/through_association.rb:105:in `build_record'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/has_many_through_association.rb:95:in `build_record'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:496:in `block in _create_record'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:202:in `block in transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/database_statements.rb:232:in `block in transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/transaction.rb:189:in `within_new_transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/database_statements.rb:232:in `transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/transactions.rb:211:in `transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:201:in `transaction'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:495:in `_create_record'
... 5 levels...
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):071:0> Person.first.employees.create(:id => Person.last.id)
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.1ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" DESC LIMIT $1  [["LIMIT", 1]]
   (0.1ms)  BEGIN
  SQL (1.0ms)  INSERT INTO "people" ("id", "created_at", "updated_at") VALUES ($1, $2, $3) RETURNING "id"  [["id", 181], ["created_at", "2017-07-14 20:02:46.548892"], ["updated_at", "2017-07-14 20:02:46.548892"]]
   (0.1ms)  ROLLBACK
ActiveRecord::RecordNotUnique: PG::UniqueViolation: ERROR:  duplicate key value violates unique constraint "people_pkey"
DETAIL:  Key (id)=(181) already exists.
: INSERT INTO "people" ("id", "created_at", "updated_at") VALUES ($1, $2, $3) RETURNING "id"
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/postgresql_adapter.rb:598:in `async_exec'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/postgresql_adapter.rb:598:in `block in exec_no_cache'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract_adapter.rb:590:in `block in log'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/notifications/instrumenter.rb:21:in `instrument'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract_adapter.rb:583:in `log'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/postgresql_adapter.rb:598:in `exec_no_cache'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/postgresql_adapter.rb:587:in `execute_and_clear'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/postgresql/database_statements.rb:103:in `exec_query'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/postgresql/database_statements.rb:137:in `exec_insert'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/database_statements.rb:124:in `insert'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/query_cache.rb:17:in `insert'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/relation.rb:65:in `insert'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/persistence.rb:572:in `_create_record'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/counter_cache.rb:128:in `_create_record'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/locking/optimistic.rb:75:in `_create_record'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/attribute_methods/dirty.rb:123:in `_create_record'
... 47 levels...
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):072:0> Person.first.employees.create(:id => Person.fifth.id)
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.9ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 4]]
   (0.1ms)  BEGIN
  SQL (1.3ms)  INSERT INTO "people" ("id", "created_at", "updated_at") VALUES ($1, $2, $3) RETURNING "id"  [["id", 166], ["created_at", "2017-07-14 20:03:14.752162"], ["updated_at", "2017-07-14 20:03:14.752162"]]
   (0.3ms)  ROLLBACK
ActiveRecord::RecordNotUnique: PG::UniqueViolation: ERROR:  duplicate key value violates unique constraint "people_pkey"
DETAIL:  Key (id)=(166) already exists.
: INSERT INTO "people" ("id", "created_at", "updated_at") VALUES ($1, $2, $3) RETURNING "id"
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/postgresql_adapter.rb:598:in `async_exec'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/postgresql_adapter.rb:598:in `block in exec_no_cache'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract_adapter.rb:590:in `block in log'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/notifications/instrumenter.rb:21:in `instrument'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract_adapter.rb:583:in `log'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/postgresql_adapter.rb:598:in `exec_no_cache'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/postgresql_adapter.rb:587:in `execute_and_clear'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/postgresql/database_statements.rb:103:in `exec_query'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/postgresql/database_statements.rb:137:in `exec_insert'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/database_statements.rb:124:in `insert'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/connection_adapters/abstract/query_cache.rb:17:in `insert'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/relation.rb:65:in `insert'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/persistence.rb:572:in `_create_record'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/counter_cache.rb:128:in `_create_record'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/locking/optimistic.rb:75:in `_create_record'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/attribute_methods/dirty.rb:123:in `_create_record'
... 47 levels...
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):073:0> Person.first.employees.delete(Person.last.id)
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" DESC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.2ms)  SELECT  "people".* FROM "people" INNER JOIN "managers_employees" ON "people"."id" = "managers_employees"."employee_id" WHERE "managers_employees"."manager_id" = $1 AND "people"."id" = $2 LIMIT $3  [["manager_id", 162], ["id", 181], ["LIMIT", 1]]
ActiveRecord::RecordNotFound: Couldn't find Person with 'id'=181 [WHERE "managers_employees"."manager_id" = $1]
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/relation/finder_methods.rb:353:in `raise_record_not_found_exception!'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/relation/finder_methods.rb:479:in `find_one'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/relation/finder_methods.rb:458:in `find_with_ids'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/relation/finder_methods.rb:66:in `find'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:109:in `find'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_association.rb:282:in `delete'
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/associations/collection_proxy.rb:623:in `delete'
	from (irb):73
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):074:0> Person.first.employees.last
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.3ms)  SELECT  "people".* FROM "people" INNER JOIN "managers_employees" ON "people"."id" = "managers_employees"."employee_id" WHERE "managers_employees"."manager_id" = $1 ORDER BY "people"."id" DESC LIMIT $2  [["manager_id", 162], ["LIMIT", 1]]
+-----+-----------------+-----------------+------------------+-----------------+
| id  | name            | created_at      | updated_at       | position        |
+-----+-----------------+-----------------+------------------+-----------------+
| 179 | Mrs. Bulah G... | 2017-07-14 1... | 2017-07-14 17... | Legal Developer |
+-----+-----------------+-----------------+------------------+-----------------+
1 row in set
irb(main):075:0> Person.first.employees.delete(Person.first.employees.last)
  Person Load (0.3ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.1ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.3ms)  SELECT  "people".* FROM "people" INNER JOIN "managers_employees" ON "people"."id" = "managers_employees"."employee_id" WHERE "managers_employees"."manager_id" = $1 ORDER BY "people"."id" DESC LIMIT $2  [["manager_id", 162], ["LIMIT", 1]]
   (0.1ms)  BEGIN
  SQL (0.2ms)  DELETE FROM "managers_employees" WHERE "managers_employees"."manager_id" = $1 AND "managers_employees"."employee_id" = 179  [["manager_id", 162]]
   (6.0ms)  COMMIT
+-----+-----------------+-----------------+------------------+-----------------+
| id  | name            | created_at      | updated_at       | position        |
+-----+-----------------+-----------------+------------------+-----------------+
| 179 | Mrs. Bulah G... | 2017-07-14 1... | 2017-07-14 17... | Legal Developer |
+-----+-----------------+-----------------+------------------+-----------------+
1 row in set
irb(main):076:0> Person.first.managers
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.4ms)  SELECT "people".* FROM "people" INNER JOIN "managers_employees" ON "people"."id" = "managers_employees"."manager_id" WHERE "managers_employees"."employee_id" = $1  [["employee_id", 162]]
+-----+-----------------+-----------------+------------------+-----------------+
| id  | name            | created_at      | updated_at       | position        |
+-----+-----------------+-----------------+------------------+-----------------+
| 175 | Richard Gerlach | 2017-07-14 1... | 2017-07-14 17... | Retail Analyst  |
| 164 | Amani Sauer PhD | 2017-07-14 1... | 2017-07-14 17... | Global Real-... |
| 166 | Jonatan Gree... | 2017-07-14 1... | 2017-07-14 17... | Advertising ... |
| 172 | Bill Oberbru... | 2017-07-14 1... | 2017-07-14 17... | Senior Gover... |
| 174 | Jimmie Abbott   | 2017-07-14 1... | 2017-07-14 17... | Senior Repre... |
| 168 | Rosendo Kutch   | 2017-07-14 1... | 2017-07-14 17... | Central Stra... |
| 178 | Mario DuBuque   | 2017-07-14 1... | 2017-07-14 17... | Government A... |
| 176 | Noah Batz       | 2017-07-14 1... | 2017-07-14 17... | Customer Rea... |
| 171 | Mrs. Olin Nolan | 2017-07-14 1... | 2017-07-14 17... | Accounting O... |
| 181 | Felix Gibson    | 2017-07-14 1... | 2017-07-14 17... | Sales Developer |
| 179 | Mrs. Bulah G... | 2017-07-14 1... | 2017-07-14 17... | Legal Developer |
| 163 | Brigitte Har... | 2017-07-14 1... | 2017-07-14 17... | Design Facil... |
| 173 | Ms. Elda Borer  | 2017-07-14 1... | 2017-07-14 17... | Community-Se... |
+-----+-----------------+-----------------+------------------+-----------------+
13 rows in set
irb(main):077:0> Person.first.employees
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.3ms)  SELECT "people".* FROM "people" INNER JOIN "managers_employees" ON "people"."id" = "managers_employees"."employee_id" WHERE "managers_employees"."manager_id" = $1  [["manager_id", 162]]
+-----+-----------------+-----------------+------------------+-----------------+
| id  | name            | created_at      | updated_at       | position        |
+-----+-----------------+-----------------+------------------+-----------------+
| 163 | Brigitte Har... | 2017-07-14 1... | 2017-07-14 17... | Design Facil... |
| 174 | Jimmie Abbott   | 2017-07-14 1... | 2017-07-14 17... | Senior Repre... |
| 176 | Noah Batz       | 2017-07-14 1... | 2017-07-14 17... | Customer Rea... |
| 178 | Mario DuBuque   | 2017-07-14 1... | 2017-07-14 17... | Government A... |
+-----+-----------------+-----------------+------------------+-----------------+
4 rows in set
irb(main):078:0> Person.all
  Person Load (0.6ms)  SELECT "people".* FROM "people"
+-----+-----------------+-----------------+------------------+-----------------+
| id  | name            | created_at      | updated_at       | position        |
+-----+-----------------+-----------------+------------------+-----------------+
| 162 | Sean Ledner     | 2017-07-14 1... | 2017-07-14 17... | Internal Acc... |
| 163 | Brigitte Har... | 2017-07-14 1... | 2017-07-14 17... | Design Facil... |
| 164 | Amani Sauer PhD | 2017-07-14 1... | 2017-07-14 17... | Global Real-... |
| 165 | Gerson Wisoky   | 2017-07-14 1... | 2017-07-14 17... | National Pro... |
| 166 | Jonatan Gree... | 2017-07-14 1... | 2017-07-14 17... | Advertising ... |
| 167 | Ezekiel Bart... | 2017-07-14 1... | 2017-07-14 17... | Sales Officer   |
| 168 | Rosendo Kutch   | 2017-07-14 1... | 2017-07-14 17... | Central Stra... |
| 169 | Letha Johnson   | 2017-07-14 1... | 2017-07-14 17... | Sales Designer  |
| 170 | Baron Deckow    | 2017-07-14 1... | 2017-07-14 17... | Internal Dev... |
| 171 | Mrs. Olin Nolan | 2017-07-14 1... | 2017-07-14 17... | Accounting O... |
| 172 | Bill Oberbru... | 2017-07-14 1... | 2017-07-14 17... | Senior Gover... |
| 173 | Ms. Elda Borer  | 2017-07-14 1... | 2017-07-14 17... | Community-Se... |
| 174 | Jimmie Abbott   | 2017-07-14 1... | 2017-07-14 17... | Senior Repre... |
| 175 | Richard Gerlach | 2017-07-14 1... | 2017-07-14 17... | Retail Analyst  |
| 176 | Noah Batz       | 2017-07-14 1... | 2017-07-14 17... | Customer Rea... |
| 177 | Verona Kozey    | 2017-07-14 1... | 2017-07-14 17... | Senior Designer |
| 178 | Mario DuBuque   | 2017-07-14 1... | 2017-07-14 17... | Government A... |
| 179 | Mrs. Bulah G... | 2017-07-14 1... | 2017-07-14 17... | Legal Developer |
| 180 | Vada Collins    | 2017-07-14 1... | 2017-07-14 17... | Banking Faci... |
| 181 | Felix Gibson    | 2017-07-14 1... | 2017-07-14 17... | Sales Developer |
+-----+-----------------+-----------------+------------------+-----------------+
20 rows in set
irb(main):079:0> ManagersEmployee.all
  ManagersEmployee Load (0.3ms)  SELECT "managers_employees".* FROM "managers_employees"
+----+------------+-------------+----------------------+-----------------------+
| id | manager_id | employee_id | created_at           | updated_at            |
+----+------------+-------------+----------------------+-----------------------+
| 27 | 175        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 29 | 164        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 30 | 162        | 174         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 31 | 166        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 32 | 162        | 178         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 33 | 172        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 35 | 174        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 36 | 168        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 37 | 178        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 39 | 176        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 40 | 162        | 176         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 41 | 171        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 43 | 181        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 46 | 179        | 162         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 48 | 163        | 162         | 2017-07-14 18:56:... | 2017-07-14 18:56:3... |
| 49 | 173        | 162         | 2017-07-14 19:02:... | 2017-07-14 19:02:4... |
| 51 | 162        | 163         | 2017-07-14 19:52:... | 2017-07-14 19:52:5... |
+----+------------+-------------+----------------------+-----------------------+
17 rows in set
irb(main):080:0> ManagersEmployee.last
  ManagersEmployee Load (0.4ms)  SELECT  "managers_employees".* FROM "managers_employees" ORDER BY "managers_employees"."id" DESC LIMIT $1  [["LIMIT", 1]]
+----+------------+-------------+----------------------+-----------------------+
| id | manager_id | employee_id | created_at           | updated_at            |
+----+------------+-------------+----------------------+-----------------------+
| 51 | 162        | 163         | 2017-07-14 19:52:... | 2017-07-14 19:52:5... |
+----+------------+-------------+----------------------+-----------------------+
1 row in set
irb(main):081:0> Person.first.employees.delete(Person.first.employees.last)
  Person Load (1.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.1ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.3ms)  SELECT  "people".* FROM "people" INNER JOIN "managers_employees" ON "people"."id" = "managers_employees"."employee_id" WHERE "managers_employees"."manager_id" = $1 ORDER BY "people"."id" DESC LIMIT $2  [["manager_id", 162], ["LIMIT", 1]]
   (0.1ms)  BEGIN
  SQL (0.2ms)  DELETE FROM "managers_employees" WHERE "managers_employees"."manager_id" = $1 AND "managers_employees"."employee_id" = 178  [["manager_id", 162]]
   (8.5ms)  COMMIT
+-----+---------------+------------------+------------------+------------------+
| id  | name          | created_at       | updated_at       | position         |
+-----+---------------+------------------+------------------+------------------+
| 178 | Mario DuBuque | 2017-07-14 17... | 2017-07-14 17... | Government As... |
+-----+---------------+------------------+------------------+------------------+
1 row in set
irb(main):082:0> Person.first.employees.last
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.4ms)  SELECT  "people".* FROM "people" INNER JOIN "managers_employees" ON "people"."id" = "managers_employees"."employee_id" WHERE "managers_employees"."manager_id" = $1 ORDER BY "people"."id" DESC LIMIT $2  [["manager_id", 162], ["LIMIT", 1]]
+-----+-----------+-------------------+--------------------+-------------------+
| id  | name      | created_at        | updated_at         | position          |
+-----+-----------+-------------------+--------------------+-------------------+
| 176 | Noah Batz | 2017-07-14 17:... | 2017-07-14 17:3... | Customer Real-... |
+-----+-----------+-------------------+--------------------+-------------------+
1 row in set
irb(main):083:0> Person.first.our_employees
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  ManagersEmployee Load (3.6ms)  SELECT "managers_employees".* FROM "managers_employees" WHERE "managers_employees"."manager_id" = $1  [["manager_id", 162]]
+----+------------+-------------+----------------------+-----------------------+
| id | manager_id | employee_id | created_at           | updated_at            |
+----+------------+-------------+----------------------+-----------------------+
| 30 | 162        | 174         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 40 | 162        | 176         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 51 | 162        | 163         | 2017-07-14 19:52:... | 2017-07-14 19:52:5... |
+----+------------+-------------+----------------------+-----------------------+
3 rows in set
irb(main):084:0> Person.first.employees.delete(Person.first.employees.last)
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.1ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.3ms)  SELECT  "people".* FROM "people" INNER JOIN "managers_employees" ON "people"."id" = "managers_employees"."employee_id" WHERE "managers_employees"."manager_id" = $1 ORDER BY "people"."id" DESC LIMIT $2  [["manager_id", 162], ["LIMIT", 1]]
   (0.1ms)  BEGIN
  SQL (0.2ms)  DELETE FROM "managers_employees" WHERE "managers_employees"."manager_id" = $1 AND "managers_employees"."employee_id" = 176  [["manager_id", 162]]
   (6.9ms)  COMMIT
+-----+-----------+-------------------+--------------------+-------------------+
| id  | name      | created_at        | updated_at         | position          |
+-----+-----------+-------------------+--------------------+-------------------+
| 176 | Noah Batz | 2017-07-14 17:... | 2017-07-14 17:3... | Customer Real-... |
+-----+-----------+-------------------+--------------------+-------------------+
1 row in set
irb(main):085:0> Person.first.our_employees
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  ManagersEmployee Load (0.2ms)  SELECT "managers_employees".* FROM "managers_employees" WHERE "managers_employees"."manager_id" = $1  [["manager_id", 162]]
+----+------------+-------------+----------------------+-----------------------+
| id | manager_id | employee_id | created_at           | updated_at            |
+----+------------+-------------+----------------------+-----------------------+
| 30 | 162        | 174         | 2017-07-14 17:35:... | 2017-07-14 17:35:2... |
| 51 | 162        | 163         | 2017-07-14 19:52:... | 2017-07-14 19:52:5... |
+----+------------+-------------+----------------------+-----------------------+
2 rows in set
irb(main):086:0> Person.first.employees.delete(Person.first.employees.last)
  Person Load (0.3ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.1ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  Person Load (0.3ms)  SELECT  "people".* FROM "people" INNER JOIN "managers_employees" ON "people"."id" = "managers_employees"."employee_id" WHERE "managers_employees"."manager_id" = $1 ORDER BY "people"."id" DESC LIMIT $2  [["manager_id", 162], ["LIMIT", 1]]
   (0.1ms)  BEGIN
  SQL (0.2ms)  DELETE FROM "managers_employees" WHERE "managers_employees"."manager_id" = $1 AND "managers_employees"."employee_id" = 174  [["manager_id", 162]]
   (6.7ms)  COMMIT
+-----+---------------+------------------+------------------+------------------+
| id  | name          | created_at       | updated_at       | position         |
+-----+---------------+------------------+------------------+------------------+
| 174 | Jimmie Abbott | 2017-07-14 17... | 2017-07-14 17... | Senior Repres... |
+-----+---------------+------------------+------------------+------------------+
1 row in set
irb(main):087:0> Person.first.our_employees
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  ManagersEmployee Load (0.1ms)  SELECT "managers_employees".* FROM "managers_employees" WHERE "managers_employees"."manager_id" = $1  [["manager_id", 162]]
+----+------------+-------------+----------------------+-----------------------+
| id | manager_id | employee_id | created_at           | updated_at            |
+----+------------+-------------+----------------------+-----------------------+
| 51 | 162        | 163         | 2017-07-14 19:52:... | 2017-07-14 19:52:5... |
+----+------------+-------------+----------------------+-----------------------+
1 row in set
irb(main):088:0> Person.all
  Person Load (0.4ms)  SELECT "people".* FROM "people"
+-----+-----------------+-----------------+------------------+-----------------+
| id  | name            | created_at      | updated_at       | position        |
+-----+-----------------+-----------------+------------------+-----------------+
| 162 | Sean Ledner     | 2017-07-14 1... | 2017-07-14 17... | Internal Acc... |
| 163 | Brigitte Har... | 2017-07-14 1... | 2017-07-14 17... | Design Facil... |
| 164 | Amani Sauer PhD | 2017-07-14 1... | 2017-07-14 17... | Global Real-... |
| 165 | Gerson Wisoky   | 2017-07-14 1... | 2017-07-14 17... | National Pro... |
| 166 | Jonatan Gree... | 2017-07-14 1... | 2017-07-14 17... | Advertising ... |
| 167 | Ezekiel Bart... | 2017-07-14 1... | 2017-07-14 17... | Sales Officer   |
| 168 | Rosendo Kutch   | 2017-07-14 1... | 2017-07-14 17... | Central Stra... |
| 169 | Letha Johnson   | 2017-07-14 1... | 2017-07-14 17... | Sales Designer  |
| 170 | Baron Deckow    | 2017-07-14 1... | 2017-07-14 17... | Internal Dev... |
| 171 | Mrs. Olin Nolan | 2017-07-14 1... | 2017-07-14 17... | Accounting O... |
| 172 | Bill Oberbru... | 2017-07-14 1... | 2017-07-14 17... | Senior Gover... |
| 173 | Ms. Elda Borer  | 2017-07-14 1... | 2017-07-14 17... | Community-Se... |
| 174 | Jimmie Abbott   | 2017-07-14 1... | 2017-07-14 17... | Senior Repre... |
| 175 | Richard Gerlach | 2017-07-14 1... | 2017-07-14 17... | Retail Analyst  |
| 176 | Noah Batz       | 2017-07-14 1... | 2017-07-14 17... | Customer Rea... |
| 177 | Verona Kozey    | 2017-07-14 1... | 2017-07-14 17... | Senior Designer |
| 178 | Mario DuBuque   | 2017-07-14 1... | 2017-07-14 17... | Government A... |
| 179 | Mrs. Bulah G... | 2017-07-14 1... | 2017-07-14 17... | Legal Developer |
| 180 | Vada Collins    | 2017-07-14 1... | 2017-07-14 17... | Banking Faci... |
| 181 | Felix Gibson    | 2017-07-14 1... | 2017-07-14 17... | Sales Developer |
+-----+-----------------+-----------------+------------------+-----------------+
20 rows in set
irb(main):089:0> Person.our_employees.find(174)
NoMethodError: undefined method `our_employees' for #<Class:0x0000000511d0c8>
	from /var/lib/gems/2.3.0/gems/activerecord-5.0.4/lib/active_record/dynamic_matchers.rb:21:in `method_missing'
	from (irb):89
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console.rb:65:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/console_helper.rb:9:in `start'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:78:in `console'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands/commands_tasks.rb:49:in `run_command!'
	from /var/lib/gems/2.3.0/gems/railties-5.0.4/lib/rails/commands.rb:18:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `block in require'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:293:in `require'
	from /home/ann/assignment_self_associations/SelfAssoc/bin/rails:9:in `<top (required)>'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `block in load'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:259:in `load_dependency'
	from /var/lib/gems/2.3.0/gems/activesupport-5.0.4/lib/active_support/dependencies.rb:287:in `load'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/commands/rails.rb:6:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/command_wrapper.rb:38:in `call'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:201:in `block in serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `fork'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:171:in `serve'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:141:in `block in run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `loop'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application.rb:135:in `run'
	from /var/lib/gems/2.3.0/gems/spring-2.0.2/lib/spring/application/boot.rb:19:in `<top (required)>'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from /usr/lib/ruby/2.3.0/rubygems/core_ext/kernel_require.rb:55:in `require'
	from -e:1:in `<main>'
irb(main):090:0> Person.first.our_employees
  Person Load (0.2ms)  SELECT  "people".* FROM "people" ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
  ManagersEmployee Load (0.1ms)  SELECT "managers_employees".* FROM "managers_employees" WHERE "managers_employees"."manager_id" = $1  [["manager_id", 162]]
+----+------------+-------------+----------------------+-----------------------+
| id | manager_id | employee_id | created_at           | updated_at            |
+----+------------+-------------+----------------------+-----------------------+
| 51 | 162        | 163         | 2017-07-14 19:52:... | 2017-07-14 19:52:5... |
+----+------------+-------------+----------------------+-----------------------+
1 row in set
irb(main):091:0> quit
2.2.4 :016 > Person.where("id = ?", 61).first.destroy
  Person Load (0.7ms)  SELECT  "people".* FROM "people" WHERE (id = 61) ORDER BY "people"."id" ASC LIMIT $1  [["LIMIT", 1]]
   (0.2ms)  BEGIN
  SQL (0.7ms)  UPDATE "manager_employees" SET "manager_id" = NULL WHERE "manager_employees"."manager_id" = $1  [["manager_id", 61]]
  SQL (0.4ms)  UPDATE "manager_employees" SET "employee_id" = NULL WHERE "manager_employees"."employee_id" = $1  [["employee_id", 61]]
  SQL (0.3ms)  DELETE FROM "people" WHERE "people"."id" = $1  [["id", 61]]
   (2.6ms)  COMMIT
+----+------------------+-------------------------+-------------------------+--------------------+
| id | name             | created_at              | updated_at              | position           |
+----+------------------+-------------------------+-------------------------+--------------------+
| 61 | Dr. Agustin Bode | 2017-07-16 20:56:04 UTC | 2017-07-16 20:56:04 UTC | Construction Agent |
+----+------------------+-------------------------+-------------------------+--------------------+
1 row in set
2.2.4 :017 > ManagerEmployee.all.where("employee_id = ? or manager_id = ?", 61, 61).all
  ManagerEmployee Load (0.7ms)  SELECT "manager_employees".* FROM "manager_employees" WHERE (employee_id = 61 or manager_id = 61)
 => #<ActiveRecord::Relation []>
2.2.4 :018 > ManagerEmployee.all.where("employee_id = ? or manager_id = ?", 68, 68).all
  ManagerEmployee Load (1.3ms)  SELECT "manager_employees".* FROM "manager_employees" WHERE (employee_id = 68 or manager_id = 68)
+----+------------+-------------+-------------------------+-------------------------+
| id | manager_id | employee_id | created_at              | updated_at              |
+----+------------+-------------+-------------------------+-------------------------+
| 47 |            | 68          | 2017-07-16 20:56:04 UTC | 2017-07-16 20:56:04 UTC |
| 43 | 68         |             | 2017-07-16 20:56:04 UTC | 2017-07-16 20:56:04 UTC |
+----+------------+-------------+-------------------------+-------------------------+
2 rows in set
