# Hello Server

## Changes

- Configure working directory for Run target
- Add Fluent libraries
  - `Package.swift`
- Add a new model object
  - `Models/Todo.swift`
- Add a database migration
  - `Migrations/CreateTodo.swift`
  - `configure.swift`
- Add new route collection
  - `Controllers/TodoController.swift`
  - `routes.swift`

## Try This

- Create the database file: `vapor run migrate`
- Call the new API endpoints:
  - `http GET :8080/todos`
  - `http POST :8080/todos < SampleJSON/new-todo.json`
  - `http GET :8080/todos`
  - `http POST :8080/todos < SampleJSON/another-todo.json`
  - `http GET :8080/todos`
  - `http DELETE :8080/todos/TODO-ID`
  - `http GET :8080/todos`
