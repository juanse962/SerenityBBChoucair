#Autor Juan S. Gomez
@stories
Feature: Academy Choucair
  As a user, I want to learn how to atomate in screenplay at the Choucair Academy with the automation course
  @scenario1
  Scenario Outline: Search for automation course
    Given than Brandon wants to learn automation at the academy Choucair
    | strUser   | strPassword    |
    | <strUser> | <strPassword>  |
    When he search for the course (.*) on the Choucair academy platform
    | strCourse               |
    | <strCourse>              |
    Then he finds the course called resources Recursos Autmotizacion Bancolombia
    | strCourse   |
    | <strCourse> |

    Examples:
    | strUser | strPassword  | strCourse               |
    | rpenaa  | Febrero.2020 | Metodologia Bancolombia |