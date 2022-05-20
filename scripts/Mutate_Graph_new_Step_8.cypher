// Mutate Graph new Step-8
CALL gds.graph.project(
'state_with_death_and_cases_defaultValue',
{
State: {
label: 'State',
properties: {
fips:{
property: 'fips',
defaultValue: -1
},
division:{
property: 'division',
defaultValue: -1
},
region:{
property: 'region',
defaultValue: -1
}
}
},
Death: {
label: 'Death',
properties: {
deaths:{
property: 'deaths',
defaultValue: 0
}}
},
Cases:{
label:'Cases',
properties: {
case:{
property: 'case',
defaultValue: 0
}
}
},
Population:{
label:'Population',
properties: {
total_population:{
property: 'total_population',
defaultValue: 0
}
}
},

Vaccination: {
label:'Vaccination',
properties: {
Administered_Dose1_Recip: {
property: 'Administered_Dose1_Recip',
defaultValue: 0.0
},
Administered: {
property: 'Administered',
defaultValue: 0.0
},
Administered_Pfizer: {
property: 'Administered_Pfizer',
defaultValue: 0.0
},
Administered_Moderna: {
property: 'Administered_Moderna',
defaultValue: 0.0
},
Administered_Unk_Manuf: {
property: 'Administered_Unk_Manuf',
defaultValue: 0.0
},
Administered_Janssen: {
property: 'Administered_Janssen',
defaultValue: 0.0
},
day:{
property: 'day',
defaultValue: 0
},
month:{
property: 'month',
defaultValue: 0
},
year:{
property: 'year',
defaultValue: 0
}
}
}
}, {
HAS_CASES: {
type: 'HAS_CASES',
orientation: 'UNDIRECTED',
properties: {
day:{
property: 'day',
defaultValue: 0
},
month:{
property: 'month',
defaultValue: 0
},
year:{
property: 'year',
defaultValue: 0
}

}
},
HAS_DEATH: {
type: 'HAS_DEATH',
orientation: 'UNDIRECTED',
properties: {
day:{
property: 'day',
defaultValue: 0
},
month:{
property: 'month',
defaultValue: 0
},
year:{
property: 'year',
defaultValue: 0
}

}
},
VACCINATED: {
type: 'VACCINATED',
orientation: 'UNDIRECTED',
properties: {
day:{
property: 'day',
defaultValue: 0
},
month:{
property: 'month',
defaultValue: 0
},
year:{
property: 'year',
defaultValue: 0
}

}
},
HAS_POPULATION: {
type: 'HAS_POPULATION',
orientation: 'UNDIRECTED'
}
})



