# Introduction to Databases

#### I worked on this challenge [by myself, with: ]
#### This challenge took me [1.5] hours.

## SQL Queries


1. Select all data for all states.
```SELECT * FROM states;```

2. Select all data for all regions.
```SELECT * FROM regions;```

3. Select the state_name and population for all states.
```SELECT state_name, population FROM states;```

4. Select the state_name and population for all states ordered by population. The state with the highest population should be at the top.
```SELECT state_name, population FROM states ORDER BY population DESC;```

5. Select the state_name for the states in region 7.
```SELECT state_name FROM states WHERE region_id = 7;```

6. Select the state_name and population_density for states with a population density over 50 ordered from least to most dense.
```SELECT state_name, population_density FROM states
   WHERE population_density > 50
   ORDER BY population_density  ASC;```

7. Select the state_name for states with a population between 1 million and 1.5 million people.
```SELECT state_name FROM states
   WHERE population_density BETWEEN 1 AND 1.5;```

8. Select the state_name and region_id for states ordered by region in ascending order.
```SELECT state_name, region_id FROM states
   ORDER BY region_ID ASC;```

9. Select the region_name for the regions with "Central" in the name.
```SELECT region_name FROM regions
   WHERE region_name LIKE "%Central%";```

10. Select the region_name and the state_name for all states and regions in ascending order by region_id. Refer to the region by name. (This will involve joining the tables).
```SELECT region_name, state_name FROM states
   JOIN regions ORDER BY region_id;```


## `persons` and `outfits` Schema
![outfit schema](schema.png)

<!-- Include a link to your schema design here -->


## Reflection
