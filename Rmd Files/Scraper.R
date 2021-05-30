
  ```{r}
library(tidyverse)
library(rvest)
library(devtools)
library(xlsx) 
```


```{r}

page_num <- 60*c(0:19)

link= "https://sofifa.com/players?type=all&ael=23&aeh=23&r=160058&set=true&showCol%5B%5D=pi&showCol%5B%5D=ae&showCol%5B%5D=oa&showCol%5B%5D=pt&showCol%5B%5D=bp&showCol%5B%5D=gu&showCol%5B%5D=vl&showCol%5B%5D=wg&showCol%5B%5D=st&showCol%5B%5D=po&showCol%5B%5D=vi&showCol%5B%5D=ir&offset="


ID <- lapply(paste0(link,page_num),
             function(url){
               url %>% read_html() %>% 
                 html_nodes("-col-pi.pjax, td.col-pi") %>% 
                 html_text()
             })
Name <- lapply(paste0(link, page_num),
               function(url){
                 url %>% read_html() %>% 
                   html_nodes(".nowrap") %>% 
                   html_text() 
               })
Age <- lapply(paste0(link, page_num),
              function(url){
                url %>% read_html() %>% 
                  html_nodes("-.col-ae.pjax , td.col-ae") %>% 
                  html_text()
              })

O_Rating <- lapply(paste0(link, page_num),
                   function(url){
                     url %>% read_html() %>% 
                       html_nodes("-.col-sort.pjax, td.col-oa") %>% 
                       html_text()
                   })

P_Rating <- lapply(paste0(link, page_num),
                   function(url){
                     url %>% read_html() %>% 
                       html_nodes("-.col-sort.pjax, td.col-pt") %>% 
                       html_text()
                     
                     
                   })


Growth <- lapply(paste0(link, page_num),
                 function(url){
                   url %>% read_html() %>% 
                     html_nodes("-.col-gu.pjax, td.col-gu") %>% 
                     html_text()
                   
                   
                 })


Value <- lapply(paste0(link, page_num),
                function(url){
                  url %>% read_html() %>% 
                    html_nodes("-.col-vl.pjax, td.col-vl") %>% 
                    html_text()
                  
                  
                })



Wage <- lapply(paste0(link, page_num),
               function(url){
                 url %>% read_html() %>% 
                   html_nodes("-.col-wg.pjax, td.col-wg") %>% 
                   html_text()
                 
                 
               })


Positioning <- lapply(paste0(link, page_num),
                      function(url){
                        url %>% read_html() %>% 
                          html_nodes("-.col-po.pjax, td.col-po") %>% 
                          html_text()
                        
                        
                      })


Vision <- lapply(paste0(link, page_num),
                 function(url){
                   url %>% read_html() %>% 
                     html_nodes("-.col-vi.pjax, td.col-vi") %>% 
                     html_text()
                   
                   
                 })


Game_Impact <- lapply(paste0(link, page_num),
                      function(url){
                        url %>% read_html() %>% 
                          html_nodes("-.col-ir.pjax, td.col-ir") %>% 
                          html_text()
                        
                        
                      })



ID <- unlist(ID)
Name <- unlist(Name)
Age <- unlist(Age)
O_Rating <- unlist(O_Rating)
P_Rating <- unlist(P_Rating)
Growth <-  unlist(Growth)
Value <- unlist(Value)
Wage <- unlist(Wage)
Positioning <- unlist(Positioning)
Vision <- unlist(Vision)
Game_Impact <- unlist(Game_Impact)

Positioning <- as.numeric(Positioning)
Vision <- as.numeric(Vision)
Game_Impact <- as.numeric(Game_Impact)

Maturity= ((Positioning + Vision)/2)


(Age_23_15 <- as.data.frame(cbind(ID,Name,Age,O_Rating,P_Rating,Growth,Value,Wage,Maturity)))


write.xlsx(Age_23_15,file = "Model_Data/Age_23_15.xlsx",sheetName = "Age_23_15")

```

```{r}

page_num <- 60*c(0:19)

link= "https://sofifa.com/players?type=all&ael=24&aeh=24&r=170099&set=true&showCol%5B%5D=pi&showCol%5B%5D=ae&showCol%5B%5D=oa&showCol%5B%5D=pt&showCol%5B%5D=bp&showCol%5B%5D=gu&showCol%5B%5D=vl&showCol%5B%5D=wg&showCol%5B%5D=st&showCol%5B%5D=po&showCol%5B%5D=vi&showCol%5B%5D=ir&offset="


ID <- lapply(paste0(link,page_num),
             function(url){
               url %>% read_html() %>% 
                 html_nodes("-col-pi.pjax, td.col-pi") %>% 
                 html_text()
             })
Name <- lapply(paste0(link, page_num),
               function(url){
                 url %>% read_html() %>% 
                   html_nodes(".nowrap") %>% 
                   html_text() 
               })
Age <- lapply(paste0(link, page_num),
              function(url){
                url %>% read_html() %>% 
                  html_nodes("-.col-ae.pjax , td.col-ae") %>% 
                  html_text()
              })

O_Rating <- lapply(paste0(link, page_num),
                   function(url){
                     url %>% read_html() %>% 
                       html_nodes("-.col-sort.pjax, td.col-oa") %>% 
                       html_text()
                   })

P_Rating <- lapply(paste0(link, page_num),
                   function(url){
                     url %>% read_html() %>% 
                       html_nodes("-.col-sort.pjax, td.col-pt") %>% 
                       html_text()
                     
                     
                   })


Growth <- lapply(paste0(link, page_num),
                 function(url){
                   url %>% read_html() %>% 
                     html_nodes("-.col-gu.pjax, td.col-gu") %>% 
                     html_text()
                   
                   
                 })


Value <- lapply(paste0(link, page_num),
                function(url){
                  url %>% read_html() %>% 
                    html_nodes("-.col-vl.pjax, td.col-vl") %>% 
                    html_text()
                  
                  
                })



Wage <- lapply(paste0(link, page_num),
               function(url){
                 url %>% read_html() %>% 
                   html_nodes("-.col-wg.pjax, td.col-wg") %>% 
                   html_text()
                 
                 
               })


Positioning <- lapply(paste0(link, page_num),
                      function(url){
                        url %>% read_html() %>% 
                          html_nodes("-.col-po.pjax, td.col-po") %>% 
                          html_text()
                        
                        
                      })


Vision <- lapply(paste0(link, page_num),
                 function(url){
                   url %>% read_html() %>% 
                     html_nodes("-.col-vi.pjax, td.col-vi") %>% 
                     html_text()
                   
                   
                 })


Game_Impact <- lapply(paste0(link, page_num),
                      function(url){
                        url %>% read_html() %>% 
                          html_nodes("-.col-ir.pjax, td.col-ir") %>% 
                          html_text()
                        
                        
                      })



ID <- unlist(ID)
Name <- unlist(Name)
Age <- unlist(Age)
O_Rating <- unlist(O_Rating)
P_Rating <- unlist(P_Rating)
Growth <-  unlist(Growth)
Value <- unlist(Value)
Wage <- unlist(Wage)
Positioning <- unlist(Positioning)
Vision <- unlist(Vision)
Game_Impact <- unlist(Game_Impact)

Positioning <- as.numeric(Positioning)
Vision <- as.numeric(Vision)
Game_Impact <- as.numeric(Game_Impact)

Maturity= ((Positioning + Vision )/2)


(Age_24_16 <- as.data.frame(cbind(ID,Name,Age,O_Rating,P_Rating,Growth,Value,Wage,Maturity)))

write.xlsx(Age_24_16,file = "Model_Data/Age_24_16.xlsx",sheetName = "Age_24_16")

```



```{r}

page_num <- 60*c(0:19)

link= "https://sofifa.com/players?type=all&ael=25&aeh=25&showCol%5B0%5D=pi&showCol%5B1%5D=ae&showCol%5B2%5D=oa&showCol%5B3%5D=pt&showCol%5B4%5D=bp&showCol%5B5%5D=gu&showCol%5B6%5D=vl&showCol%5B7%5D=wg&showCol%5B8%5D=st&showCol%5B9%5D=po&showCol%5B10%5D=vi&showCol%5B11%5D=ir&r=180084&set=true&offset="


ID <- lapply(paste0(link,page_num),
             function(url){
               url %>% read_html() %>% 
                 html_nodes("-col-pi.pjax, td.col-pi") %>% 
                 html_text()
             })
Name <- lapply(paste0(link, page_num),
               function(url){
                 url %>% read_html() %>% 
                   html_nodes(".nowrap") %>% 
                   html_text() 
               })
Age <- lapply(paste0(link, page_num),
              function(url){
                url %>% read_html() %>% 
                  html_nodes("-.col-ae.pjax , td.col-ae") %>% 
                  html_text()
              })

O_Rating <- lapply(paste0(link, page_num),
                   function(url){
                     url %>% read_html() %>% 
                       html_nodes("-.col-sort.pjax, td.col-oa") %>% 
                       html_text()
                   })

P_Rating <- lapply(paste0(link, page_num),
                   function(url){
                     url %>% read_html() %>% 
                       html_nodes("-.col-sort.pjax, td.col-pt") %>% 
                       html_text()
                     
                     
                   })


Growth <- lapply(paste0(link, page_num),
                 function(url){
                   url %>% read_html() %>% 
                     html_nodes("-.col-gu.pjax, td.col-gu") %>% 
                     html_text()
                   
                   
                 })


Value <- lapply(paste0(link, page_num),
                function(url){
                  url %>% read_html() %>% 
                    html_nodes("-.col-vl.pjax, td.col-vl") %>% 
                    html_text()
                  
                  
                })



Wage <- lapply(paste0(link, page_num),
               function(url){
                 url %>% read_html() %>% 
                   html_nodes("-.col-wg.pjax, td.col-wg") %>% 
                   html_text()
                 
                 
               })


Positioning <- lapply(paste0(link, page_num),
                      function(url){
                        url %>% read_html() %>% 
                          html_nodes("-.col-po.pjax, td.col-po") %>% 
                          html_text()
                        
                        
                      })


Vision <- lapply(paste0(link, page_num),
                 function(url){
                   url %>% read_html() %>% 
                     html_nodes("-.col-vi.pjax, td.col-vi") %>% 
                     html_text()
                   
                   
                 })


Game_Impact <- lapply(paste0(link, page_num),
                      function(url){
                        url %>% read_html() %>% 
                          html_nodes("-.col-ir.pjax, td.col-ir") %>% 
                          html_text()
                        
                        
                      })



ID <- unlist(ID)
Name <- unlist(Name)
Age <- unlist(Age)
O_Rating <- unlist(O_Rating)
P_Rating <- unlist(P_Rating)
Growth <-  unlist(Growth)
Value <- unlist(Value)
Wage <- unlist(Wage)
Positioning <- unlist(Positioning)
Vision <- unlist(Vision)
Game_Impact <- unlist(Game_Impact)

Positioning <- as.numeric(Positioning)
Vision <- as.numeric(Vision)
Game_Impact <- as.numeric(Game_Impact)

Maturity= ((Positioning + Vision )/2)


(Age_25_17 <- as.data.frame(cbind(ID,Name,Age,O_Rating,P_Rating,Growth,Value,Wage,Maturity)))


write.xlsx(Age_25_17,file = "Model_Data/Age_25_17.xlsx",sheetName = "Age_25_17")


```



```{r}

page_num <- 60*c(0:19)

link= "https://sofifa.com/players?type=all&ael=26&aeh=26&showCol%5B0%5D=pi&showCol%5B1%5D=ae&showCol%5B2%5D=oa&showCol%5B3%5D=pt&showCol%5B4%5D=bp&showCol%5B5%5D=gu&showCol%5B6%5D=vl&showCol%5B7%5D=wg&showCol%5B8%5D=st&showCol%5B9%5D=po&showCol%5B10%5D=vi&showCol%5B11%5D=ir&r=190075&set=true&offset="


ID <- lapply(paste0(link,page_num),
             function(url){
               url %>% read_html() %>% 
                 html_nodes("-col-pi.pjax, td.col-pi") %>% 
                 html_text()
             })
Name <- lapply(paste0(link, page_num),
               function(url){
                 url %>% read_html() %>% 
                   html_nodes(".nowrap") %>% 
                   html_text() 
               })
Age <- lapply(paste0(link, page_num),
              function(url){
                url %>% read_html() %>% 
                  html_nodes("-.col-ae.pjax , td.col-ae") %>% 
                  html_text()
              })

O_Rating <- lapply(paste0(link, page_num),
                   function(url){
                     url %>% read_html() %>% 
                       html_nodes("-.col-sort.pjax, td.col-oa") %>% 
                       html_text()
                   })

P_Rating <- lapply(paste0(link, page_num),
                   function(url){
                     url %>% read_html() %>% 
                       html_nodes("-.col-sort.pjax, td.col-pt") %>% 
                       html_text()
                     
                     
                   })


Growth <- lapply(paste0(link, page_num),
                 function(url){
                   url %>% read_html() %>% 
                     html_nodes("-.col-gu.pjax, td.col-gu") %>% 
                     html_text()
                   
                   
                 })


Value <- lapply(paste0(link, page_num),
                function(url){
                  url %>% read_html() %>% 
                    html_nodes("-.col-vl.pjax, td.col-vl") %>% 
                    html_text()
                  
                  
                })



Wage <- lapply(paste0(link, page_num),
               function(url){
                 url %>% read_html() %>% 
                   html_nodes("-.col-wg.pjax, td.col-wg") %>% 
                   html_text()
                 
                 
               })


Positioning <- lapply(paste0(link, page_num),
                      function(url){
                        url %>% read_html() %>% 
                          html_nodes("-.col-po.pjax, td.col-po") %>% 
                          html_text()
                        
                        
                      })


Vision <- lapply(paste0(link, page_num),
                 function(url){
                   url %>% read_html() %>% 
                     html_nodes("-.col-vi.pjax, td.col-vi") %>% 
                     html_text()
                   
                   
                 })


Game_Impact <- lapply(paste0(link, page_num),
                      function(url){
                        url %>% read_html() %>% 
                          html_nodes("-.col-ir.pjax, td.col-ir") %>% 
                          html_text()
                        
                        
                      })



ID <- unlist(ID)
Name <- unlist(Name)
Age <- unlist(Age)
O_Rating <- unlist(O_Rating)
P_Rating <- unlist(P_Rating)
Growth <-  unlist(Growth)
Value <- unlist(Value)
Wage <- unlist(Wage)
Positioning <- unlist(Positioning)
Vision <- unlist(Vision)
Game_Impact <- unlist(Game_Impact)

Positioning <- as.numeric(Positioning)
Vision <- as.numeric(Vision)
Game_Impact <- as.numeric(Game_Impact)

Maturity= ((Positioning + Vision)/2)


(Age_26_18 <- as.data.frame(cbind(ID,Name,Age,O_Rating,P_Rating,Growth,Value,Wage,Maturity)))


write.xlsx(Age_26_18,file = "Model_Data/Age_26_18.xlsx",sheetName = "Age_26_18")


```


```{r}

page_num <- 60*c(0:19)

link= "https://sofifa.com/players?type=all&ael=27&aeh=27&showCol%5B0%5D=pi&showCol%5B1%5D=ae&showCol%5B2%5D=oa&showCol%5B3%5D=pt&showCol%5B4%5D=bp&showCol%5B5%5D=gu&showCol%5B6%5D=vl&showCol%5B7%5D=wg&showCol%5B8%5D=st&showCol%5B9%5D=po&showCol%5B10%5D=vi&showCol%5B11%5D=ir&r=200014&set=true&offset="


ID <- lapply(paste0(link,page_num),
             function(url){
               url %>% read_html() %>% 
                 html_nodes("-col-pi.pjax, td.col-pi") %>% 
                 html_text()
             })
Name <- lapply(paste0(link, page_num),
               function(url){
                 url %>% read_html() %>% 
                   html_nodes(".nowrap") %>% 
                   html_text() 
               })
Age <- lapply(paste0(link, page_num),
              function(url){
                url %>% read_html() %>% 
                  html_nodes("-.col-ae.pjax , td.col-ae") %>% 
                  html_text()
              })

O_Rating <- lapply(paste0(link, page_num),
                   function(url){
                     url %>% read_html() %>% 
                       html_nodes("-.col-sort.pjax, td.col-oa") %>% 
                       html_text()
                   })

P_Rating <- lapply(paste0(link, page_num),
                   function(url){
                     url %>% read_html() %>% 
                       html_nodes("-.col-sort.pjax, td.col-pt") %>% 
                       html_text()
                     
                     
                   })


Growth <- lapply(paste0(link, page_num),
                 function(url){
                   url %>% read_html() %>% 
                     html_nodes("-.col-gu.pjax, td.col-gu") %>% 
                     html_text()
                   
                   
                 })


Value <- lapply(paste0(link, page_num),
                function(url){
                  url %>% read_html() %>% 
                    html_nodes("-.col-vl.pjax, td.col-vl") %>% 
                    html_text()
                  
                  
                })



Wage <- lapply(paste0(link, page_num),
               function(url){
                 url %>% read_html() %>% 
                   html_nodes("-.col-wg.pjax, td.col-wg") %>% 
                   html_text()
                 
                 
               })


Positioning <- lapply(paste0(link, page_num),
                      function(url){
                        url %>% read_html() %>% 
                          html_nodes("-.col-po.pjax, td.col-po") %>% 
                          html_text()
                        
                        
                      })


Vision <- lapply(paste0(link, page_num),
                 function(url){
                   url %>% read_html() %>% 
                     html_nodes("-.col-vi.pjax, td.col-vi") %>% 
                     html_text()
                   
                   
                 })


Game_Impact <- lapply(paste0(link, page_num),
                      function(url){
                        url %>% read_html() %>% 
                          html_nodes("-.col-ir.pjax, td.col-ir") %>% 
                          html_text()
                        
                        
                      })



ID <- unlist(ID)
Name <- unlist(Name)
Age <- unlist(Age)
O_Rating <- unlist(O_Rating)
P_Rating <- unlist(P_Rating)
Growth <-  unlist(Growth)
Value <- unlist(Value)
Wage <- unlist(Wage)
Positioning <- unlist(Positioning)
Vision <- unlist(Vision)
Game_Impact <- unlist(Game_Impact)

Positioning <- as.numeric(Positioning)
Vision <- as.numeric(Vision)
Game_Impact <- as.numeric(Game_Impact)

Maturity= ((Positioning + Vision)/2)


(Age_27_19 <- as.data.frame(cbind(ID,Name,Age,O_Rating,P_Rating,Growth,Value,Wage,Maturity)))


write.xlsx(Age_27_19,file = "Model_Data/Age_27_19.xlsx",sheetName = "Age_27_19")


```


