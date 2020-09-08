# README


## Set up the database
```
  Rails db:create db:migrate
```

## Run the application
```clickhouse
  Rails s

```

## For Post api

1. To Create a Retro with id :

```clickhouse


/create_retro?retro=68

```
Response:
```clickhouse
{
    "type": "Retro",
    "id": 68
}
```

2. To Create the Retro

``/retro_info?retro=10``

Body:
 ```
 {
        "well": {
            "0": {
                "value": "Story planning"
            },
            "1": {
                "value": "Story Pointing"
            },
            "2": {
                "value": "Reviews"
            }
            
        },
         "notwell": {
            "0": {
                "value": "Code reviews"
            }
            
        },
         "continue": {
            "0": {
                "value": "Code review"
            },
            "1": {
                "value": "Story planning"
            }
            
        },
         "improve": {
            "0": {
                "value": "Code reviews"
         }
    }
            
    }
    
```


    
    
## For Get api

3. To Get the details for Retro with DD
```clickhouse
  /retro_info?retro=10
```
Response:
```
{
    "well": {
        "1": {
            "value": "Story planning"
        },
        "2": {
            "value": "Story Pointing"
        },
        "3": {
            "value": "Reviews"
        }
    },
    "notwell": {
        "1": {
            "value": "Code reviews"
        }
    },
    "improve": {
        "1": {
            "value": "Code reviews"
        }
    },
    "continue": {
        "1": {
            "value": "Code review"
        },
        "2": {
            "value": "Story planning"
        }
    }
}
   ```
   
4. To get the all retroIds:

```clickhouse
/retro_details
```
Response
```
[
    1,
    2,
    3,
    4,
    10,
    66,
    67,
    68,
    100
]

```


5. Get all Retro details:
```clickhouse
/details?retro=9
```
Response
```clickhouse
[
    {
        "well": "Story planning",
        "notwell": "Code reviews",
        "improve": "Code reviews",
        "continue": "Code review"
    },
    {
        "well": "Story Pointing",
        "continue": "Story planning"
    },
    {
        "well": "Reviews"
    },
    {
        "well": "test1"
    }
]
```
