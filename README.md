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
    
    
## For Get api
```clickhouse
  /retro_info?retro=10
```
Response:
```
{
       "well": [
           {
               "id": 11,
               "comment": "Story planning",
               "retro_id": 10,
               "created_at": "2020-04-13T21:52:56.550Z",
               "updated_at": "2020-04-13T21:52:56.550Z"
           },
           {
               "id": 12,
               "comment": "Story Pointing",
               "retro_id": 10,
               "created_at": "2020-04-13T21:52:56.600Z",
               "updated_at": "2020-04-13T21:52:56.600Z"
           },
           {
               "id": 13,
               "comment": "Reviews",
               "retro_id": 10,
               "created_at": "2020-04-13T21:52:56.618Z",
               "updated_at": "2020-04-13T21:52:56.618Z"
           }
       ],
       "notwell": [
           {
               "id": 10,
               "comment": "Code reviews",
               "retro_id": 10,
               "created_at": "2020-04-13T21:52:56.629Z",
               "updated_at": "2020-04-13T21:52:56.629Z"
           }
       ],
       "improve": [
           {
               "id": 7,
               "comment": "Code review",
               "retro_id": 10,
               "created_at": "2020-04-13T21:52:56.642Z",
               "updated_at": "2020-04-13T21:52:56.642Z"
           },
           {
               "id": 8,
               "comment": "Story planning",
               "retro_id": 10,
               "created_at": "2020-04-13T21:52:56.653Z",
               "updated_at": "2020-04-13T21:52:56.653Z"
           }
       ],
       "continue": [
           {
               "id": 7,
               "comment": "Code review",
               "retro_id": 10,
               "created_at": "2020-04-13T21:52:56.642Z",
               "updated_at": "2020-04-13T21:52:56.642Z"
           },
           {
               "id": 8,
               "comment": "Story planning",
               "retro_id": 10,
               "created_at": "2020-04-13T21:52:56.653Z",
               "updated_at": "2020-04-13T21:52:56.653Z"
           }
       ]
   }
   ```
