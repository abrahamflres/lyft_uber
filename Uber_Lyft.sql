USE Test_Uber;


-- Constraint: Find the hours with the highest demand for each source in November and December 
SELECT 
    source,
    day,
    hour,
    month,
    datetime,
    cab_type,
    max_demand
FROM 
    (SELECT 
         u.source,
         u.day,
         u.hour,
         u.month,
         u.datetime,
         u.cab_type,
         MAX(u.demand_multiplier) AS max_demand
     FROM 
         Test_Uber.uberlyft u
     WHERE 
         u.source = 'Back Bay'
     GROUP BY 
         u.source, u.day, u.hour, u.month, u.datetime, u.cab_type
     ORDER BY 
         max_demand DESC
     LIMIT 1000) AS top_combinations;
-- hours of highest demand for Back Bay , November: 7pm,11pm December:12pm, 1pm

SELECT 
    source,
    day,
    hour,
    month,
    datetime,
    cab_type,
    max_demand
FROM 
    (SELECT 
         u.source,
         u.day,
         u.hour,
         u.month,
         u.datetime,
         u.cab_type,
         MAX(u.demand_multiplier) AS max_demand
     FROM 
         Test_Uber.uberlyft u
     WHERE 
         u.source = 'North End'
     GROUP BY 
         u.source, u.day, u.hour, u.month, u.datetime, u.cab_type
     ORDER BY 
         max_demand DESC
     LIMIT 1000) AS top_combinations;
-- hours of highest demand for North End , November: 4 am, 3pm, 7pm December: 6 am
SELECT 
    source,
    day,
    hour,
    month,
    datetime,
    cab_type,
    max_demand
FROM 
    (SELECT 
         u.source,
         u.day,
         u.hour,
         u.month,
         u.datetime,
         u.cab_type,
         MAX(u.demand_multiplier) AS max_demand
     FROM 
         Test_Uber.uberlyft u
     WHERE 
         u.source = 'Haymarket Square'
     GROUP BY 
         u.source, u.day, u.hour, u.month, u.datetime, u.cab_type
     ORDER BY 
         max_demand DESC
     LIMIT 1000) AS top_combinations;
-- hours of highest demand for Haymarket Square , November: 2 am, 8 pm, 10 pm December:  1 pm  
     SELECT 
    source,
    day,
    hour,
    month,
    datetime,
    cab_type,
    max_demand
FROM 
    (SELECT 
         u.source,
         u.day,
         u.hour,
         u.month,
         u.datetime,
         u.cab_type,
         MAX(u.demand_multiplier) AS max_demand
     FROM 
         Test_Uber.uberlyft u
     WHERE 
         u.source = 'North Station'
     GROUP BY 
         u.source, u.day, u.hour, u.month, u.datetime, u.cab_type
     ORDER BY 
         max_demand DESC
     LIMIT 5) AS top_combinations;
   -- hours of highest demand for North Station, November: 11am December:  11 am, 1pm, 3 pm, 6pm
     SELECT 
    source,
    day,
    hour,
    month,
    datetime,
    cab_type,
    max_demand
FROM 
    (SELECT 
         u.source,
         u.day,
         u.hour,
         u.month,
         u.datetime,
         u.cab_type,
         MAX(u.demand_multiplier) AS max_demand
     FROM 
         Test_Uber.uberlyft u
     WHERE 
         u.source = 'Beacon Hill'
     GROUP BY 
         u.source, u.day, u.hour, u.month, u.datetime, u.cab_type
     ORDER BY 
         max_demand DESC
     LIMIT 1000) AS top_combinations;
     -- hours of highest demand for Beacon Hill, November: 9 am, 11 am December: 5 am, 3 pm, 5 pm
      SELECT 
    source,
    day,
    hour,
    month,
    datetime,
    cab_type,
    max_demand
FROM 
    (SELECT 
         u.source,
         u.day,
         u.hour,
         u.month,
         u.datetime,
         u.cab_type,
         MAX(u.demand_multiplier) AS max_demand
     FROM 
         Test_Uber.uberlyft u
     WHERE 
         u.source = 'Boston University'
     GROUP BY 
         u.source, u.day, u.hour, u.month, u.datetime, u.cab_type
     ORDER BY 
         max_demand DESC
     LIMIT 1000) AS top_combinations;
     -- hours of highest demand for Boston University, November: 9 am, 11 am December:11 am, 3 pm, 8 pm
      SELECT 
    source,
    day,
    hour,
    month,
    datetime,
    cab_type,
    max_demand
FROM 
    (SELECT 
         u.source,
         u.day,
         u.hour,
         u.month,
         u.datetime,
         u.cab_type,
         MAX(u.demand_multiplier) AS max_demand
     FROM 
         Test_Uber.uberlyft u
     WHERE 
         u.source = 'Fenway'
     GROUP BY 
         u.source, u.day, u.hour, u.month, u.datetime, u.cab_type
     ORDER BY 
         max_demand DESC
     LIMIT 1000) AS top_combinations;
     -- hours of highest demand for Fenway, November: 4 pm, 5 pm December: 3am, 10 am, 4 pm
      SELECT 
    source,
    day,
    hour,
    month,
    datetime,
    cab_type,
    max_demand
FROM 
    (SELECT 
         u.source,
         u.day,
         u.hour,
         u.month,
         u.datetime,
         u.cab_type,
         MAX(u.demand_multiplier) AS max_demand
     FROM 
         Test_Uber.uberlyft u
     WHERE 
         u.source = 'South Station'
     GROUP BY 
         u.source, u.day, u.hour, u.month, u.datetime, u.cab_type
     ORDER BY 
         max_demand DESC
     LIMIT 5) AS top_combinations;
   -- hours of highest demand for South Station , November: 3 am, 12 pm, 1 pm December:  8 am
      SELECT 
    source,
    day,
    hour,
    month,
    datetime,
    cab_type,
    max_demand
FROM 
    (SELECT 
         u.source,
         u.day,
         u.hour,
         u.month,
         u.datetime,
         u.cab_type,
         MAX(u.demand_multiplier) AS max_demand
     FROM 
         Test_Uber.uberlyft u
     WHERE 
         u.source = 'Financial District'
     GROUP BY 
         u.source, u.day, u.hour, u.month, u.datetime, u.cab_type
     ORDER BY 
         max_demand DESC
     LIMIT 5) AS top_combinations;
  -- hours of highest demand for Financial District, November:1 am, 1 pm, 9 pm, December:  11 am, 7 pm 

      SELECT 
    source,
    day,
    hour,
    month,
    datetime,
    cab_type,
    max_demand
FROM 
    (SELECT 
         u.source,
         u.day,
         u.hour,
         u.month,
         u.datetime,
         u.cab_type,
         MAX(u.demand_multiplier) AS max_demand
     FROM 
         Test_Uber.uberlyft u
     WHERE 
         u.source = 'Theatre District'
     GROUP BY 
         u.source, u.day, u.hour, u.month, u.datetime, u.cab_type
     ORDER BY 
         max_demand DESC
     LIMIT 1000) AS top_combinations;
    -- -- 'Theatre District' selected for visualization

      SELECT 
    source,
    day,
    hour,
    month,
    datetime,
    cab_type,
    max_demand
FROM 
    (SELECT 
         u.source,
         u.day,
         u.hour,
         u.month,
         u.datetime,
         u.cab_type,
         MAX(u.demand_multiplier) AS max_demand
     FROM 
         Test_Uber.uberlyft u
     WHERE 
         u.source = 'Northeastern University'
     GROUP BY 
         u.source, u.day, u.hour, u.month, u.datetime, u.cab_type
     ORDER BY 
         max_demand DESC
     LIMIT 1000) AS top_combinations;
   -- hours of highest demand for Northeastern University, November:  8am, 2 pm, 11pm December: 6pm
           SELECT 
    source,
    day,
    hour,
    month,
    datetime,
    cab_type,
    max_demand,
    temperature,
    short_summary,
    precipIntensity,
    humidity,
    windSpeed,
    visibility
    
FROM 
    (SELECT 
         u.source,
         u.day,
         u.hour,
         u.month,
         u.datetime,
         u.cab_type,
         u.temperature,
         u.short_summary,
         u.precipIntensity,
         u.humidity,
         u.windSpeed,
         u.visibility,
         
         MAX(u.demand_multiplier) AS max_demand
     FROM 
         Test_Uber.uberlyft u
     WHERE 
         u.source = 'West End'
     GROUP BY 
         u.source, u.day, u.hour, u.month, u.datetime, u.cab_type,u.temperature,
         u.short_summary, u.precipIntensity, u.humidity, u.windSpeed,u.visibility
     ORDER BY 
         max_demand DESC
     LIMIT 1000) AS top_combinations;
     
    -- West End selected for visualization
	
     


     

     
     

     
     
     