// New train Step-9

CALL gds.beta.graphSage.train(
'state_with_death_and_cases_defaultValue',
{
modelName: 'multiLabelModelAll',
featureProperties: ['fips', 'division', 'region','case','deaths', 'Administered_Dose1_Recip', 'Administered', 'Administered_Pfizer', 'Administered_Moderna', 'Administered_Unk_Manuf', 'Administered_Janssen', 'total_population'],
projectedFeatureDimension: 16,
batchSize: 32,
searchDepth: 10,
activationFunction: "RELU",
epochs: 10000,
learningRate: 0.001
}
)
