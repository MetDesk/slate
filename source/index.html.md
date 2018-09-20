---
title: API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - shell

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

# Powergen API





## Get Issues

```shell
curl
  -X GET \ "/power/get/issues?model=ecop"
  -H "Authorization: yourtoken"
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

This endpoint retrieves all available issues for a specific model.

### HTTP Request

`GET http://api.metdesk.com/powergen/get/issues?model=ecop`

### Query Parameters

Parameter | Required | Description
--------- | -------- | -----------
model | true | Specify the model to return issues for.

<aside class="success">
Remember — this is a success message!
</aside>





## Get Dtgs

```shell
curl
  -X GET \ "/power/get/dtgs?model=ecop&issue=2018-09-10T00:00:00Z"
  -H "Authorization: yourtoken"
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
        "2018-09-10T04:00:00Z"
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

<aside class="sucwarningcess">
Remember — this is a warning message!
</aside>
