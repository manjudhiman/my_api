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

```clickhouse
To Create a Retro with id :


/create_retro?retro=68

```
Response:
```clickhouse
{
    "type": "Retro",
    "id": 68
}
```
    
    
## For Get api
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
   
To get the retroIds:

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
