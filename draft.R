

# How long did it take on average for the CFA brigade to respond to incidents in their own areas for hazard class 2 in Q4 2018/19 and Q4 2019/20? Also, this will be analyzed against the standard time (given in the data for each of the hazard classes). (CFA Emergency Response Time)



```{r}
data_CFA_20 <- read.csv("~/5510_group_project/data/dat_q4_2020.csv")
data_CFA_20
```


```{r}
data_CFA_20 <- data_CFA_20%>%
  rename(`Time it took CFA brigade to respond` = `Time it CFA brigade to respond`)%>%
  rename(`Time it took CFA brigade to respond within` = Time)%>%
  mutate(`Time it took CFA brigade to respond within`= paste0("00:",`Time it took CFA brigade to respond within`))%>%
  mutate(`Time it took CFA brigade to respond` = paste0("00:",`Time it took CFA brigade to respond`))

data_CFA_20
```


CFA_19 <- chron(times= CFA_19_20$`Time it took CFA brigade to respond`)
CFA_19_20 <- chron(times =CFA_19_20$`Time it took CFA brigade to respond within`)

CFA_19_20

Pivot longer on Quarter, call the new column as ‘Quarter’

Do it for all the 4 small dataframes


Then all the 4 datafranes will have one column in common -> ‘Quarter’

Now bindrows,
rename(Num_incdents=`Number of incidents within the Brigade Area for the reporting period across all Hazard Classes Q1`)%>%
  rename(Num_incdents=`Number of incidents within the Brigade Area for the reporting period across all Hazard Classes Q2`)%>%
  rename(Num_incdents=`Number of incidents within the Brigade Area for the reporting period across all Hazard Classes Q3`)%>%
  rename(Num_incdents=`Number of incidents within the Brigade Area for the reporting period across all Hazard Classes Q4`)
