CREATE DATABASE myrecipies;

CREATE TABLE recipe (
    id SERIAL PRIMARY KEY,
    recipeName VARCHAR(55) 
);

CREATE TABLE ingredient (
    id SERIAL PRIMARY KEY,
    ingredientName VARCHAR(55) 
);

CREATE TABLE IngredientInRecipe (
    id SERIAL PRIMARY KEY,
    recipeId INTEGER,
    ingredientId INTEGER,
    FOREIGN KEY (recipeId) REFERENCES recipe(id),
    FOREIGN KEY (ingredientId) REFERENCES ingredient(id)
);

INSERT INTO recipe (recipeName) VALUES ('Pumpkin Pasties');

INSERT INTO recipe (recipeName) VALUES ('Pumpkin Tartlets');

INSERT INTO recipe (recipeName) VALUES ('Creamy Pumpkin Soup');


INSERT INTO ingredient (ingredientName) VALUES ('pumpkin puree');

INSERT INTO ingredient (ingredientName) VALUES ('sugar');

INSERT INTO ingredient (ingredientName) VALUES ('cinnamon');

INSERT INTO ingredient (ingredientName) VALUES ('nutmeg');

INSERT INTO ingredient (ingredientName) VALUES ('cloves');

INSERT INTO ingredient (ingredientName) VALUES ('Pastry dough');

INSERT INTO ingredient (ingredientName) VALUES ('Egg wash (1 egg beaten with a splash of milk)');

INSERT INTO ingredient (ingredientName) VALUES ('brown sugar');

INSERT INTO ingredient (ingredientName) VALUES ('ginger');

INSERT INTO ingredient (ingredientName) VALUES ('Mini tart shells');

INSERT INTO ingredient (ingredientName) VALUES ('Whipped cream for garnish');

INSERT INTO ingredient (ingredientName) VALUES ('onion, chopped');

INSERT INTO ingredient (ingredientName) VALUES ('garlic, minced');

INSERT INTO ingredient (ingredientName) VALUES ('vegetable broth');

INSERT INTO ingredient (ingredientName) VALUES ('heavy cream');

INSERT INTO ingredient (ingredientName) VALUES ('Salt and pepper to taste');

INSERT INTO ingredientinrecipe (recipeId,ingredientId) VALUES ('1', '1');

INSERT INTO ingredientinrecipe (recipeId,ingredientId) VALUES ('1', '2');

INSERT INTO ingredientinrecipe (recipeId,ingredientId) VALUES ('1', '3');

INSERT INTO ingredientinrecipe (recipeId,ingredientId) VALUES ('1', '4');

INSERT INTO ingredientinrecipe (recipeId,ingredientId) VALUES ('1', '5');

INSERT INTO ingredientinrecipe (recipeId,ingredientId) VALUES ('1', '6');

INSERT INTO ingredientinrecipe (recipeId,ingredientId) VALUES ('1', '7');

INSERT INTO ingredientinrecipe (recipeId,ingredientId) VALUES ('2', '1');

INSERT INTO ingredientinrecipe (recipeId,ingredientId) VALUES ('2', '8');

INSERT INTO ingredientinrecipe (recipeId,ingredientId) VALUES ('2', '9');

INSERT INTO ingredientinrecipe (recipeId,ingredientId) VALUES ('2', '3');

INSERT INTO ingredientinrecipe (recipeId,ingredientId) VALUES ('2', '4');

INSERT INTO ingredientinrecipe (recipeId,ingredientId) VALUES ('2', '10');

INSERT INTO ingredientinrecipe (recipeId,ingredientId) VALUES ('2', '11');

INSERT INTO ingredientinrecipe (recipeId,ingredientId) VALUES ('3', '1');

INSERT INTO ingredientinrecipe (recipeId,ingredientId) VALUES ('3', '12');

INSERT INTO ingredientinrecipe (recipeId,ingredientId) VALUES ('3', '5');

INSERT INTO ingredientinrecipe (recipeId,ingredientId) VALUES ('3', '14');

INSERT INTO ingredientinrecipe (recipeId,ingredientId) VALUES ('3', '15');

INSERT INTO ingredientinrecipe (recipeId,ingredientId) VALUES ('3', '16');

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
SELECT a.id, b.id
FROM recipe a
JOIN ingredient b 
ON a.recipeName = 'Pumpkin Pasties' AND b.ingredientname = 'cloves';

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
SELECT a.id, b.id
FROM recipe a
JOIN ingredient b 
ON a.recipeName = 'Pumpkin Pasties' AND b.ingredientname = 'Pastry dough';

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
SELECT a.id, b.id
FROM recipe a
JOIN ingredient b 
ON a.recipeName = 'Pumpkin Pasties' AND b.ingredientname = 'Egg wash (1 egg beaten with a splash of milk)';

INSERT INTO ingredientinrecipe (recipeid, ingredientid)
SELECT a.id, b.id
FROM recipe a
JOIN ingredient b 
ON a.recipeName = 'Pumpkin Tartlets' AND b.ingredientname = 'pumpkin puree';




DROP TABLE ingredient CASCADE;

SELECT * from recipe;

DELETE from recipe WHERE id = 2;

SELECT a.recipeName, b.ingredientName FROM recipe a
INNER JOIN IngredientInRecipe c
ON a.id = c.recipeId
INNER JOIN ingredient b
ON b.id = c.ingredientId;