#language en

Feature: Manage Product Categories
	In order to manage product categories
	As an admin of product category
	I want to list/create/update/delete product categories


	Scenario: List Product Categories
		Given I have following product_category records
			|code   |name           |description   |parent_category_id|actived|
			|001    |童装           |儿童服装      |                  |true   |
			|002    |内衣           |女人内衣      |                  |true   |
			|001001 |新生儿套装     |0~1岁         |1                 |true   |
			|001002 |幼儿衣服       |1~3岁         |1                 |true   |
			|002001 |文胸           |女人文胸      |2                 |true   |
		When I go to Product Categories List
		Then I should see "童装"
		And I should see "内衣"

