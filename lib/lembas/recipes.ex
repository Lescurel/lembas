defmodule Lembas.Recipes do
  @moduledoc """
  The Recipes context.
  """

  import Ecto.Query, warn: false
  alias Lembas.Repo

  alias Lembas.Recipes.Recipe

  @doc """
  Returns the list of recipes.

  ## Examples

      iex> list_recipes()
      [%Recipe{}, ...]

  """
  def list_recipes do
    Repo.all(Recipe)
  end

  @doc """
  Gets a single recipe.

  Raises `Ecto.NoResultsError` if the Recipe does not exist.

  ## Examples

      iex> get_recipe!(123)
      %Recipe{}

      iex> get_recipe!(456)
      ** (Ecto.NoResultsError)

  """
  def get_recipe!(id), do: Repo.get!(Recipe, id)

  @doc """
  Creates a recipe.

  ## Examples

      iex> create_recipe(%{field: value})
      {:ok, %Recipe{}}

      iex> create_recipe(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_recipe(attrs \\ %{}) do
    %Recipe{}
    |> Recipe.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a recipe.

  ## Examples

      iex> update_recipe(recipe, %{field: new_value})
      {:ok, %Recipe{}}

      iex> update_recipe(recipe, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_recipe(%Recipe{} = recipe, attrs) do
    recipe
    |> Recipe.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a recipe.

  ## Examples

      iex> delete_recipe(recipe)
      {:ok, %Recipe{}}

      iex> delete_recipe(recipe)
      {:error, %Ecto.Changeset{}}

  """
  def delete_recipe(%Recipe{} = recipe) do
    Repo.delete(recipe)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking recipe changes.

  ## Examples

      iex> change_recipe(recipe)
      %Ecto.Changeset{data: %Recipe{}}

  """
  def change_recipe(%Recipe{} = recipe, attrs \\ %{}) do
    Recipe.changeset(recipe, attrs)
  end

  alias Lembas.Recipes.Ingredient

  @doc """
  Returns the list of ingredients.

  ## Examples

      iex> list_ingredients()
      [%Ingredient{}, ...]

  """
  def list_ingredients do
    Repo.all(Ingredient)
  end

  @doc """
  Gets a single ingredient.

  Raises `Ecto.NoResultsError` if the Ingredient does not exist.

  ## Examples

      iex> get_ingredient!(123)
      %Ingredient{}

      iex> get_ingredient!(456)
      ** (Ecto.NoResultsError)

  """
  def get_ingredient!(id), do: Repo.get!(Ingredient, id)

  @doc """
  Creates a ingredient.

  ## Examples

      iex> create_ingredient(%{field: value})
      {:ok, %Ingredient{}}

      iex> create_ingredient(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_ingredient(attrs \\ %{}) do
    %Ingredient{}
    |> Ingredient.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a ingredient.

  ## Examples

      iex> update_ingredient(ingredient, %{field: new_value})
      {:ok, %Ingredient{}}

      iex> update_ingredient(ingredient, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_ingredient(%Ingredient{} = ingredient, attrs) do
    ingredient
    |> Ingredient.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a ingredient.

  ## Examples

      iex> delete_ingredient(ingredient)
      {:ok, %Ingredient{}}

      iex> delete_ingredient(ingredient)
      {:error, %Ecto.Changeset{}}

  """
  def delete_ingredient(%Ingredient{} = ingredient) do
    Repo.delete(ingredient)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking ingredient changes.

  ## Examples

      iex> change_ingredient(ingredient)
      %Ecto.Changeset{data: %Ingredient{}}

  """
  def change_ingredient(%Ingredient{} = ingredient, attrs \\ %{}) do
    Ingredient.changeset(ingredient, attrs)
  end

  alias Lembas.Recipes.Unit

  @doc """
  Returns the list of units.

  ## Examples

      iex> list_units()
      [%Unit{}, ...]

  """
  def list_units do
    Repo.all(Unit)
  end

  @doc """
  Gets a single unit.

  Raises `Ecto.NoResultsError` if the Unit does not exist.

  ## Examples

      iex> get_unit!(123)
      %Unit{}

      iex> get_unit!(456)
      ** (Ecto.NoResultsError)

  """
  def get_unit!(id), do: Repo.get!(Unit, id)

  @doc """
  Creates a unit.

  ## Examples

      iex> create_unit(%{field: value})
      {:ok, %Unit{}}

      iex> create_unit(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_unit(attrs \\ %{}) do
    %Unit{}
    |> Unit.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a unit.

  ## Examples

      iex> update_unit(unit, %{field: new_value})
      {:ok, %Unit{}}

      iex> update_unit(unit, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_unit(%Unit{} = unit, attrs) do
    unit
    |> Unit.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a unit.

  ## Examples

      iex> delete_unit(unit)
      {:ok, %Unit{}}

      iex> delete_unit(unit)
      {:error, %Ecto.Changeset{}}

  """
  def delete_unit(%Unit{} = unit) do
    Repo.delete(unit)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking unit changes.

  ## Examples

      iex> change_unit(unit)
      %Ecto.Changeset{data: %Unit{}}

  """
  def change_unit(%Unit{} = unit, attrs \\ %{}) do
    Unit.changeset(unit, attrs)
  end

  alias Lembas.Recipes.RecipeIngredient

  @doc """
  Returns the list of recipe_ingredients.

  ## Examples

      iex> list_recipe_ingredients()
      [%RecipeIngredient{}, ...]

  """
  def list_recipe_ingredients do
    Repo.all(RecipeIngredient)
  end

  @doc """
  Gets a single recipe_ingredient.

  Raises `Ecto.NoResultsError` if the Recipe ingredient does not exist.

  ## Examples

      iex> get_recipe_ingredient!(123)
      %RecipeIngredient{}

      iex> get_recipe_ingredient!(456)
      ** (Ecto.NoResultsError)

  """
  def get_recipe_ingredient!(id), do: Repo.get!(RecipeIngredient, id)

  @doc """
  Creates a recipe_ingredient.

  ## Examples

      iex> create_recipe_ingredient(%{field: value})
      {:ok, %RecipeIngredient{}}

      iex> create_recipe_ingredient(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_recipe_ingredient(attrs \\ %{}) do
    %RecipeIngredient{}
    |> RecipeIngredient.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a recipe_ingredient.

  ## Examples

      iex> update_recipe_ingredient(recipe_ingredient, %{field: new_value})
      {:ok, %RecipeIngredient{}}

      iex> update_recipe_ingredient(recipe_ingredient, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_recipe_ingredient(%RecipeIngredient{} = recipe_ingredient, attrs) do
    recipe_ingredient
    |> RecipeIngredient.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a recipe_ingredient.

  ## Examples

      iex> delete_recipe_ingredient(recipe_ingredient)
      {:ok, %RecipeIngredient{}}

      iex> delete_recipe_ingredient(recipe_ingredient)
      {:error, %Ecto.Changeset{}}

  """
  def delete_recipe_ingredient(%RecipeIngredient{} = recipe_ingredient) do
    Repo.delete(recipe_ingredient)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking recipe_ingredient changes.

  ## Examples

      iex> change_recipe_ingredient(recipe_ingredient)
      %Ecto.Changeset{data: %RecipeIngredient{}}

  """
  def change_recipe_ingredient(%RecipeIngredient{} = recipe_ingredient, attrs \\ %{}) do
    RecipeIngredient.changeset(recipe_ingredient, attrs)
  end
end
