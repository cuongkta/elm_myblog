ExUnit.start

Mix.Task.run "ecto.create", ~w(-r ElmMyblog.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r ElmMyblog.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(ElmMyblog.Repo)

