# frozen_string_literal: true

Report.create(
  name: "My meta report",
  query: "select name, query from reports"
)
