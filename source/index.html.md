---
title: API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - shell
  - javascript

toc_footers:
  - <a href='http://www.metdesk.com'>Powered by MetDesk</a>

includes:
  - errors

search: true
---

# Introduction

Welcome to the MetDesk API Docs!

You can view code examples in the dark area to the right, and you can switch the programming language of the examples with the tabs in the top right.

# Authentication

MetDesk uses API keys to allow access to the API. You can request access from your sales representative.

MetDesk expects for the API key to be included in all API requests to the server in a header that looks like the following:

`Authorization: yourtoken`

<aside class="notice">
You must replace <code>yourtoken</code> with your personal API key.
</aside>

<aside class="warning">
Remember — this is a warning message!
</aside>

<aside class="success">
Remember — this is a success message!
</aside>

# Powergen API


## Get Issues

```shell
curl
  -X GET "http://api.metdesk.com/powergen/get/issues?model=ecop"
  -H "Authorization: yourtoken"
```

```javascript
function reqListener () {
  console.log(this.responseText);
}
var req = new XMLHttpRequest();
req.addEventListener("load", reqListener);
req.open("GET", "http://api.metdesk.com/powergen/get/issues?model=ecop");
req.setRequestHeader("Authorization", "yourtoken");
req.send();
```

> The above command returns JSON structured like this:

```json
{
    "request": {
        "endpoint": "metdesk/powergen/issues",
        "version": 1,
        "created": "2018-09-20T12:57:29Z",
        "status": "OK",
        "message": "",
        "parameters": {
            "model": "ecop"
        }
    },
    "data": [
        "2018-08-21T00:00:00Z",
        "2018-08-21T12:00:00Z",
        "2018-08-22T00:00:00Z",
        "2018-08-22T12:00:00Z",
        "2018-08-23T00:00:00Z"
    ]
}
```

> Make sure to replace `yourtoken` with your API key.

This endpoint retrieves all available issues for a specific model.

### HTTP Request

`GET http://api.metdesk.com/powergen/get/issues?model=ecop`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
model | true | Specify the model to return issues for.


## Get Dtgs

```shell
curl
  -X GET "http://api.metdesk.com/powergen/get/dtgs?model=ecop&issue=2018-09-10T00:00:00Z"
  -H "Authorization: yourtoken"
```

```javascript
function reqListener () {
  console.log(this.responseText);
}
var req = new XMLHttpRequest();
req.addEventListener("load", reqListener);
req.open("GET", "http://api.metdesk.com/powergen/get/dtgs?model=ecop&issue=2018-09-10T00:00:00Z");
req.setRequestHeader("Authorization", "yourtoken");
req.send();
```

> The above command returns JSON structured like this:

```json
{
    "request": {
        "endpoint": "metdesk/powergen/dtgs",
        "version": 1,
        "created": "2018-09-20T13:27:17Z",
        "status": "OK",
        "message": "",
        "parameters": {
            "model": "ecop",
            "issue": "2018-09-10T00:00:00Z"
        }
    },
    "data": [
        "2018-09-10T00:00:00Z",
        "2018-09-10T01:00:00Z",
        "2018-09-10T02:00:00Z",
        "2018-09-10T03:00:00Z",
        "2018-09-10T04:00:00Z",
        ...
    ]
}
```

This endpoint retrieves all available dtgs for a specific model / issue.

### HTTP Request

`GET http://api.metdesk.com/powergen/get/dtgs?model=ecop&issue=2018-09-10T00:00:00Z`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
model | true | Specify the model to return dtgs for.
issue | true | Specify the issue to return dtgs for.


## Get Forecasts

```shell
curl
  -X GET "http://api.metdesk.com/powergen/get/forecasts?model=ecop&issue=2018-09-14T00:00:00Z&element=solar&location=GB&location_type=country"
  -H "Authorization: yourtoken"
```

```javascript
function reqListener () {
  console.log(this.responseText);
}
var req = new XMLHttpRequest();
req.addEventListener("load", reqListener);
req.open("GET", "http://api.metdesk.com/powergen/get/forecasts?model=ecop&issue=2018-09-14T00:00:00Z&element=solar&location=GB&location_type=country");
req.setRequestHeader("Authorization", "yourtoken");
req.send();
```

> The above command returns JSON structured like this:

```json
{
    "request": {
        "endpoint": "metdesk/powergen/forecasts",
        "version": 1,
        "created": "2018-09-20T16:18:19Z",
        "status": "OK",
        "message": "",
        "parameters": {
            "model": "ecop",
            "issue": "2018-09-14T00:00:00Z",
            "element": "solar",
            "location": "GB",
            "location_type": "country",
            "interval": "hires",
            "mean": false
        }
    },
    "data": [
        {
            "dtg": "2018-09-14T01:00:00Z",
            "member": null,
            "value": 0
        },
        {
            "dtg": "2018-09-14T01:30:00Z",
            "member": null,
            "value": 0
        },
        ...
    ]
}
```

This endpoint retrieves forecasts for a specific model / issue / element / location combination.

### HTTP Request

`GET http://api.metdesk.com/powergen/get/forecasts?model=ecop&issue=2018-09-14T00:00:00Z&element=solar&location=GB&location_type=country`

### Query Parameters

Parameter | Required | Options
--------- | -------- | -----------
model | true | ecop, eceps, gfsop, gfsens, uke4, magma
issue | true | 2018-09-14T00:00:00Z
element | true | wind, solar, combined
location | true | location code
location_type | false | country, tso, portfolio, site
interval | false | hires, peak, offpeak, base
mean | false | false, true


## Get Observations

```shell
curl
  -X GET "http://api.metdesk.com/powergen/get/observations?element=wind&location=DE"
  -H "Authorization: yourtoken"
```

```javascript
function reqListener () {
  console.log(this.responseText);
}
var req = new XMLHttpRequest();
req.addEventListener("load", reqListener);
req.open("GET", "http://api.metdesk.com/powergen/get/observations?element=wind&location=DE");
req.setRequestHeader("Authorization", "yourtoken");
req.send();
```

> The above command returns JSON structured like this:

```json
{
    "request": {
        "endpoint": "metdesk/powergen/observations",
        "version": 1,
        "created": "2018-09-20T16:31:26Z",
        "status": "OK",
        "message": "",
        "parameters": {
            "element": "wind",
            "location": "DE",
            "location_type": "country",
            "interval": "hires"
        }
    },
    "data": [
        {
            "dtg": "2018-09-17T00:00:00Z",
            "value": 9179,
            "pseudo": 0
        },
        {
            "dtg": "2018-09-17T00:15:00Z",
            "value": 9040,
            "pseudo": 0
        },
        {
            "dtg": "2018-09-17T00:30:00Z",
            "value": 8843,
            "pseudo": 0
        }
        ...
    ]
}
```

This endpoint retrieves observations for a specific element / location combination.

### HTTP Request

`GET http://api.metdesk.com/powergen/get/observations?element=wind&location=DE`

### Query Parameters

Parameter | Required | Options
--------- | -------- | -----------
element | true | wind, solar, combined
location | true | location code
location_type | false | country, tso, portfolio, site
interval | false | hires, peak, offpeak, base


## Get Climate

```shell
curl
  -X GET "http://api.metdesk.com/powergen/get/climate?element=wind&location=GB"
  -H "Authorization: yourtoken"
```

```javascript
function reqListener () {
  console.log(this.responseText);
}
var req = new XMLHttpRequest();
req.addEventListener("load", reqListener);
req.open("GET", "http://api.metdesk.com/powergen/get/climate?element=wind&location=GB");
req.setRequestHeader("Authorization", "yourtoken");
req.send();
```

> The above command returns JSON structured like this:

```json
{
    "request": {
        "endpoint": "metdesk/powergen/climate",
        "version": 1,
        "created": "2018-09-20T16:33:53Z",
        "status": "OK",
        "message": "",
        "parameters": {
            "element": "wind",
            "location": "GB",
            "location_type": "country",
            "interval": "hires"
        }
    },
    "data": [
        {
            "dtg": "2018-09-17T00:00:00Z",
            "value": 4793.77
        },
        {
            "dtg": "2018-09-17T00:30:00Z",
            "value": 4793.8
        },
        {
            "dtg": "2018-09-17T01:00:00Z",
            "value": 4793.83
        }
        ...
    ]
}
```

This endpoint retrieves climate for a specific element / location combination.

### HTTP Request

`GET http://api.metdesk.com/powergen/get/climate?element=wind&location=GB`

### Query Parameters

Parameter | Required | Options
--------- | -------- | -----------
element | true | wind, solar, combined
location | true | location code
location_type | false | country, tso, portfolio, site
interval | false | hires, peak, offpeak, base


## Get MaxRecorded

```shell
curl
  -X GET "http://api.metdesk.com/powergen/get/maxrecorded?element=wind&location=DE"
  -H "Authorization: yourtoken"
```

```javascript
function reqListener () {
  console.log(this.responseText);
}
var req = new XMLHttpRequest();
req.addEventListener("load", reqListener);
req.open("GET", "http://api.metdesk.com/powergen/get/maxrecorded?element=wind&location=DE");
req.setRequestHeader("Authorization", "yourtoken");
req.send();
```

> The above command returns JSON structured like this:

```json
{
    "request": {
        "endpoint": "metdesk/powergen/maxrecorded",
        "version": 1,
        "created": "2018-09-20T16:35:38Z",
        "status": "OK",
        "message": "",
        "parameters": {
            "element": "wind",
            "location": "DE",
            "location_type": "country"
        }
    },
    "data": {
        "value": 44656
    }
}
```

This endpoint retrieves max recorded value for a specific element / location combination.

### HTTP Request

`GET http://api.metdesk.com/powergen/get/maxrecorded?element=wind&location=DE`

### Query Parameters

Parameter | Required | Options
--------- | -------- | -----------
element | true | wind, solar, combined
location | true | location code
location_type | false | country, tso, portfolio, site
