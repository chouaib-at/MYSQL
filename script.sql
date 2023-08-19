CREATE TABLE Category (
    CategoryID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL
);


CREATE TABLE Ingredient (
    IngredientID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL
);


CREATE TABLE Step (
    StepID INT PRIMARY KEY,
    Description TEXT NOT NULL
);

CREATE TABLE Recipe (
    RecipeID INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    CategoryID INT,
    FOREIGN KEY (CategoryID) REFERENCES Category(CategoryID)
);

CREATE TABLE RecipeIngredient (
    RecipeID INT,
    IngredientID INT,
    Quantity VARCHAR(50),
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID),
    FOREIGN KEY (IngredientID) REFERENCES Ingredient(IngredientID)
);

CREATE TABLE RecipeStep (
    RecipeID INT,
    StepID INT,
    StepNumber INT,
    FOREIGN KEY (RecipeID) REFERENCES Recipe(RecipeID),
    FOREIGN KEY (StepID) REFERENCES Step(StepID)
);

INSERT INTO Category (CategoryID, Name)
VALUES
    (1, 'Italian'),
    (2, 'Algerian'),
    (3, 'French'),
    (4, 'Ukrainian');

-- Insert sample data into Ingredient table
INSERT INTO Ingredient (IngredientID, Name)
VALUES
    (1, 'Pasta'),
    (2, 'Couscous'),
    (3, 'Lettuce'),
    (4, 'Tomatoes'),
    (5, 'Onion'),
    (6, 'Beets'),
    (7, 'Cabbage'),
    (8, 'Potatoes'),
    (9, 'Beef'),
    (10, 'Sour Cream');

-- Insert sample data into Step table
INSERT INTO Step (StepID, Description)
VALUES
    (1, 'Boil pasta until al dente.'),
    (2, 'Steam couscous until fluffy.'),
    (3, 'Wash and chop lettuce and tomatoes.'),
    (4, 'Peel and chop beets, cabbage, potatoes, and onions.'),
    (5, 'Cook beef and vegetables to make broth.'),
    (6, 'Add sour cream and herbs to the borscht.');

INSERT INTO Recipe (RecipeID, Name, CategoryID)
VALUES
    (1, 'Italian Pasta', 1),
    (2, 'Algerian Couscous', 2),
    (3, 'French Salad', 3),
    (4, 'Ukrainian Borscht', 4);

INSERT INTO RecipeIngredient (RecipeID, IngredientID, Quantity)
VALUES
    (1, 1, '200g'),
    (2, 2, '1 cup'),
    (3, 3, '1 head'),
    (3, 4, '2 tomatoes'),
    (3, 5, '1 onion'),
    (4, 6, '2 beets'),
    (4, 7, '0.5 cabbage'),
    (4, 8, '2 potatoes'),
    (4, 9, '300g'),
    (4, 10, '1 cup');

INSERT INTO RecipeStep (RecipeID, StepID, StepNumber)
VALUES
    (1, 1, 1),
    (2, 2, 1),
    (3, 3, 1),
    (3, 4, 2),
    (4, 5, 1),
    (4, 6, 2);
