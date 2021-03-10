defmodule Lembas.RecipesTest do
  use Lembas.DataCase

  alias Lembas.Recipes

  describe "recipes" do
    alias Lembas.Recipes.Recipe

    @valid_attrs %{cooking_time: ~T[14:00:00], instructions: "some instructions", name: "some name", yield: 42}
    @update_attrs %{cooking_time: ~T[15:01:01], instructions: "some updated instructions", name: "some updated name", yield: 43}
    @invalid_attrs %{cooking_time: nil, instructions: nil, name: nil, yield: nil}

    def recipe_fixture(attrs \\ %{}) do
      {:ok, recipe} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Recipes.create_recipe()

      recipe
    end

    test "list_recipes/0 returns all recipes" do
      recipe = recipe_fixture()
      assert Recipes.list_recipes() == [recipe]
    end

    test "get_recipe!/1 returns the recipe with given id" do
      recipe = recipe_fixture()
      assert Recipes.get_recipe!(recipe.id) == recipe
    end

    test "create_recipe/1 with valid data creates a recipe" do
      assert {:ok, %Recipe{} = recipe} = Recipes.create_recipe(@valid_attrs)
      assert recipe.cooking_time == ~T[14:00:00]
      assert recipe.instructions == "some instructions"
      assert recipe.name == "some name"
      assert recipe.yield == 42
    end

    test "create_recipe/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Recipes.create_recipe(@invalid_attrs)
    end

    test "update_recipe/2 with valid data updates the recipe" do
      recipe = recipe_fixture()
      assert {:ok, %Recipe{} = recipe} = Recipes.update_recipe(recipe, @update_attrs)
      assert recipe.cooking_time == ~T[15:01:01]
      assert recipe.instructions == "some updated instructions"
      assert recipe.name == "some updated name"
      assert recipe.yield == 43
    end

    test "update_recipe/2 with invalid data returns error changeset" do
      recipe = recipe_fixture()
      assert {:error, %Ecto.Changeset{}} = Recipes.update_recipe(recipe, @invalid_attrs)
      assert recipe == Recipes.get_recipe!(recipe.id)
    end

    test "delete_recipe/1 deletes the recipe" do
      recipe = recipe_fixture()
      assert {:ok, %Recipe{}} = Recipes.delete_recipe(recipe)
      assert_raise Ecto.NoResultsError, fn -> Recipes.get_recipe!(recipe.id) end
    end

    test "change_recipe/1 returns a recipe changeset" do
      recipe = recipe_fixture()
      assert %Ecto.Changeset{} = Recipes.change_recipe(recipe)
    end
  end

  describe "ingredient" do
    alias Lembas.Recipes.Ingredients

    @valid_attrs %{name: "some name"}
    @update_attrs %{name: "some updated name"}
    @invalid_attrs %{name: nil}

    def ingredients_fixture(attrs \\ %{}) do
      {:ok, ingredients} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Recipes.create_ingredients()

      ingredients
    end

    test "list_ingredient/0 returns all ingredient" do
      ingredients = ingredients_fixture()
      assert Recipes.list_ingredient() == [ingredients]
    end

    test "get_ingredients!/1 returns the ingredients with given id" do
      ingredients = ingredients_fixture()
      assert Recipes.get_ingredients!(ingredients.id) == ingredients
    end

    test "create_ingredients/1 with valid data creates a ingredients" do
      assert {:ok, %Ingredients{} = ingredients} = Recipes.create_ingredients(@valid_attrs)
      assert ingredients.name == "some name"
    end

    test "create_ingredients/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Recipes.create_ingredients(@invalid_attrs)
    end

    test "update_ingredients/2 with valid data updates the ingredients" do
      ingredients = ingredients_fixture()
      assert {:ok, %Ingredients{} = ingredients} = Recipes.update_ingredients(ingredients, @update_attrs)
      assert ingredients.name == "some updated name"
    end

    test "update_ingredients/2 with invalid data returns error changeset" do
      ingredients = ingredients_fixture()
      assert {:error, %Ecto.Changeset{}} = Recipes.update_ingredients(ingredients, @invalid_attrs)
      assert ingredients == Recipes.get_ingredients!(ingredients.id)
    end

    test "delete_ingredients/1 deletes the ingredients" do
      ingredients = ingredients_fixture()
      assert {:ok, %Ingredients{}} = Recipes.delete_ingredients(ingredients)
      assert_raise Ecto.NoResultsError, fn -> Recipes.get_ingredients!(ingredients.id) end
    end

    test "change_ingredients/1 returns a ingredients changeset" do
      ingredients = ingredients_fixture()
      assert %Ecto.Changeset{} = Recipes.change_ingredients(ingredients)
    end
  end

  describe "unit" do
    alias Lembas.Recipes.Units

    @valid_attrs %{factor: 120.5, name: "some name", offset: 120.5}
    @update_attrs %{factor: 456.7, name: "some updated name", offset: 456.7}
    @invalid_attrs %{factor: nil, name: nil, offset: nil}

    def units_fixture(attrs \\ %{}) do
      {:ok, units} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Recipes.create_units()

      units
    end

    test "list_unit/0 returns all unit" do
      units = units_fixture()
      assert Recipes.list_unit() == [units]
    end

    test "get_units!/1 returns the units with given id" do
      units = units_fixture()
      assert Recipes.get_units!(units.id) == units
    end

    test "create_units/1 with valid data creates a units" do
      assert {:ok, %Units{} = units} = Recipes.create_units(@valid_attrs)
      assert units.factor == 120.5
      assert units.name == "some name"
      assert units.offset == 120.5
    end

    test "create_units/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Recipes.create_units(@invalid_attrs)
    end

    test "update_units/2 with valid data updates the units" do
      units = units_fixture()
      assert {:ok, %Units{} = units} = Recipes.update_units(units, @update_attrs)
      assert units.factor == 456.7
      assert units.name == "some updated name"
      assert units.offset == 456.7
    end

    test "update_units/2 with invalid data returns error changeset" do
      units = units_fixture()
      assert {:error, %Ecto.Changeset{}} = Recipes.update_units(units, @invalid_attrs)
      assert units == Recipes.get_units!(units.id)
    end

    test "delete_units/1 deletes the units" do
      units = units_fixture()
      assert {:ok, %Units{}} = Recipes.delete_units(units)
      assert_raise Ecto.NoResultsError, fn -> Recipes.get_units!(units.id) end
    end

    test "change_units/1 returns a units changeset" do
      units = units_fixture()
      assert %Ecto.Changeset{} = Recipes.change_units(units)
    end
  end

  describe "ingredients" do
    alias Lembas.Recipes.Ingredient

    @valid_attrs %{name: "some name"}
    @update_attrs %{name: "some updated name"}
    @invalid_attrs %{name: nil}

    def ingredient_fixture(attrs \\ %{}) do
      {:ok, ingredient} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Recipes.create_ingredient()

      ingredient
    end

    test "list_ingredients/0 returns all ingredients" do
      ingredient = ingredient_fixture()
      assert Recipes.list_ingredients() == [ingredient]
    end

    test "get_ingredient!/1 returns the ingredient with given id" do
      ingredient = ingredient_fixture()
      assert Recipes.get_ingredient!(ingredient.id) == ingredient
    end

    test "create_ingredient/1 with valid data creates a ingredient" do
      assert {:ok, %Ingredient{} = ingredient} = Recipes.create_ingredient(@valid_attrs)
      assert ingredient.name == "some name"
    end

    test "create_ingredient/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Recipes.create_ingredient(@invalid_attrs)
    end

    test "update_ingredient/2 with valid data updates the ingredient" do
      ingredient = ingredient_fixture()
      assert {:ok, %Ingredient{} = ingredient} = Recipes.update_ingredient(ingredient, @update_attrs)
      assert ingredient.name == "some updated name"
    end

    test "update_ingredient/2 with invalid data returns error changeset" do
      ingredient = ingredient_fixture()
      assert {:error, %Ecto.Changeset{}} = Recipes.update_ingredient(ingredient, @invalid_attrs)
      assert ingredient == Recipes.get_ingredient!(ingredient.id)
    end

    test "delete_ingredient/1 deletes the ingredient" do
      ingredient = ingredient_fixture()
      assert {:ok, %Ingredient{}} = Recipes.delete_ingredient(ingredient)
      assert_raise Ecto.NoResultsError, fn -> Recipes.get_ingredient!(ingredient.id) end
    end

    test "change_ingredient/1 returns a ingredient changeset" do
      ingredient = ingredient_fixture()
      assert %Ecto.Changeset{} = Recipes.change_ingredient(ingredient)
    end
  end

  describe "units" do
    alias Lembas.Recipes.Unit

    @valid_attrs %{factor: 120.5, name: "some name", offset: 120.5}
    @update_attrs %{factor: 456.7, name: "some updated name", offset: 456.7}
    @invalid_attrs %{factor: nil, name: nil, offset: nil}

    def unit_fixture(attrs \\ %{}) do
      {:ok, unit} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Recipes.create_unit()

      unit
    end

    test "list_units/0 returns all units" do
      unit = unit_fixture()
      assert Recipes.list_units() == [unit]
    end

    test "get_unit!/1 returns the unit with given id" do
      unit = unit_fixture()
      assert Recipes.get_unit!(unit.id) == unit
    end

    test "create_unit/1 with valid data creates a unit" do
      assert {:ok, %Unit{} = unit} = Recipes.create_unit(@valid_attrs)
      assert unit.factor == 120.5
      assert unit.name == "some name"
      assert unit.offset == 120.5
    end

    test "create_unit/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Recipes.create_unit(@invalid_attrs)
    end

    test "update_unit/2 with valid data updates the unit" do
      unit = unit_fixture()
      assert {:ok, %Unit{} = unit} = Recipes.update_unit(unit, @update_attrs)
      assert unit.factor == 456.7
      assert unit.name == "some updated name"
      assert unit.offset == 456.7
    end

    test "update_unit/2 with invalid data returns error changeset" do
      unit = unit_fixture()
      assert {:error, %Ecto.Changeset{}} = Recipes.update_unit(unit, @invalid_attrs)
      assert unit == Recipes.get_unit!(unit.id)
    end

    test "delete_unit/1 deletes the unit" do
      unit = unit_fixture()
      assert {:ok, %Unit{}} = Recipes.delete_unit(unit)
      assert_raise Ecto.NoResultsError, fn -> Recipes.get_unit!(unit.id) end
    end

    test "change_unit/1 returns a unit changeset" do
      unit = unit_fixture()
      assert %Ecto.Changeset{} = Recipes.change_unit(unit)
    end
  end

  describe "recipe_ingredients" do
    alias Lembas.Recipes.RecipeIngredient

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def recipe_ingredient_fixture(attrs \\ %{}) do
      {:ok, recipe_ingredient} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Recipes.create_recipe_ingredient()

      recipe_ingredient
    end

    test "list_recipe_ingredients/0 returns all recipe_ingredients" do
      recipe_ingredient = recipe_ingredient_fixture()
      assert Recipes.list_recipe_ingredients() == [recipe_ingredient]
    end

    test "get_recipe_ingredient!/1 returns the recipe_ingredient with given id" do
      recipe_ingredient = recipe_ingredient_fixture()
      assert Recipes.get_recipe_ingredient!(recipe_ingredient.id) == recipe_ingredient
    end

    test "create_recipe_ingredient/1 with valid data creates a recipe_ingredient" do
      assert {:ok, %RecipeIngredient{} = recipe_ingredient} = Recipes.create_recipe_ingredient(@valid_attrs)
    end

    test "create_recipe_ingredient/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Recipes.create_recipe_ingredient(@invalid_attrs)
    end

    test "update_recipe_ingredient/2 with valid data updates the recipe_ingredient" do
      recipe_ingredient = recipe_ingredient_fixture()
      assert {:ok, %RecipeIngredient{} = recipe_ingredient} = Recipes.update_recipe_ingredient(recipe_ingredient, @update_attrs)
    end

    test "update_recipe_ingredient/2 with invalid data returns error changeset" do
      recipe_ingredient = recipe_ingredient_fixture()
      assert {:error, %Ecto.Changeset{}} = Recipes.update_recipe_ingredient(recipe_ingredient, @invalid_attrs)
      assert recipe_ingredient == Recipes.get_recipe_ingredient!(recipe_ingredient.id)
    end

    test "delete_recipe_ingredient/1 deletes the recipe_ingredient" do
      recipe_ingredient = recipe_ingredient_fixture()
      assert {:ok, %RecipeIngredient{}} = Recipes.delete_recipe_ingredient(recipe_ingredient)
      assert_raise Ecto.NoResultsError, fn -> Recipes.get_recipe_ingredient!(recipe_ingredient.id) end
    end

    test "change_recipe_ingredient/1 returns a recipe_ingredient changeset" do
      recipe_ingredient = recipe_ingredient_fixture()
      assert %Ecto.Changeset{} = Recipes.change_recipe_ingredient(recipe_ingredient)
    end
  end
end
