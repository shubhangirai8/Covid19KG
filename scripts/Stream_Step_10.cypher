// Stream Step-10
CALL gds.beta.graphSage.stream(
  'state_with_death_and_cases_defaultValue',
  {
    modelName: 'multiLabelModelAll'
  }
)
YIELD nodeId, embedding
