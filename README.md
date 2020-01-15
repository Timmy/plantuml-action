# PlantUML Action
A GitHub Action for drawing UML diagrams with PlantUML.

## Usage
To integrate this Action in your workflow, add a step that uses `Timmy/plantuml-action@v1`. Use the `args` parameter to provide PlantUML command-line arguments.

### Example workflow
```yaml
name: Draw diagrams
on: push

jobs:
  diagrams:
    name: Draw diagrams
    runs-on: ubuntu-latest
    steps:
      - name: Check out repository
        uses: actions/checkout@v2
      - name: Process diagrams
        uses: Timmy/plantuml-action@v1
        with:
          args: '-tutxt diagrams/*.txt'
      - name: Display diagrams
        run: cat diagrams/*.utxt
```

## Parameters
Argument | Description
--- | ---
`args` | PlantUML command-line arguments ([reference](https://plantuml.com/command-line)). Defaults to `-help`.
`version` | PlantUML software version (e.g., `1.2020.0`). Defaults to latest version.
