Feature: Register

    Scenario: User registration
        Given the user to access the registration page
        When he fills in valid information
        | email                  | testqa1315@gmail.com                |
        | name                   | Julio                               |
        | second_name            | Cesar                               |
        | password               | @Ju95821488                         |
        | complement             | Colinas 2                           |
        | address                | Rua joão puga dias - 356            |
        | address_two            | Casa                                |
        | city                   | Mairiporã                           |
        | zip_code               | 00000                               |
        | additional_information | Essa é minha validação automatizada |
        | telephone              | (11)4444-6666                       |
        | cell_phone             | (11)6378-8485                       |
        | alternate_address      | São paulo                           |
        Then your registration is successful