defmodule TwilioTasks.Task do
  use Ecto.Schema
  import Ecto.Changeset


  schema "tasks" do
    field :description, :string
    field :dice_roll, :integer

    timestamps()
  end

  @doc false
  def changeset(task, attrs) do
    task
    |> cast(attrs, [:dice_roll, :description])
    |> validate_required([:dice_roll, :description])
    |> validate_number(:dice_roll, greater_than_or_equal_to: 2)
    |> validate_number(:dice_roll, less_than_or_equal_to: 12)
  end
end
