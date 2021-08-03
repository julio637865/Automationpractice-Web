Feature: Navegation

        Scenario: Breadcrumb follows the navigated path
                Given the user to access the site
                When it interacts with some element on the page
                Then he visualizes bradcrump following the path of his interaction

        Scenario: Adding a product to the cart
                Given the user to access the site
                When he clicks on buy a product
                Then he sees this product in the cart
        
        Scenario: accessing social network links
                Given the user to access the site
                When he access the social network links
                Then it is directed to the link you clicked
        
        Scenario: "search" option
                Given the user to access the site
                When he search for a product in search
                | product | Print Dress |
                Then he views the searched product