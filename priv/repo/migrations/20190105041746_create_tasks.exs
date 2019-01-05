defmodule TwilioTasks.Repo.Migrations.CreateTasks do
  use Ecto.Migration

  def change do
    create table(:tasks) do
      add :dice_roll, :integer
      add :description, :string

      timestamps()
    end

  end
end
