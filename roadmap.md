---
title: Roadmap
subtitle: >-
  The planned future for our project

layout: page
---

Thigs we have said we will add :

getWindowOfInterest.m

## 📦 Planned Releases (date / version?)

Intro again perhaps

### 1️⃣ Version number / name

highlight

* feature 1
* feature 2

### 2️⃣ Next number / name

a summary

* feature 3
* feature 4


## 🎁 Nice to have (teasers etc)

Working on these items has less priority probably.

* Something
* another

## Open issues

<div id="issues"></div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>
var issueURL = "https://api.github.com/repos/fyne-io/fynedesk/issues?state=open";

$(document).ready(function () {
    trim = 165;
    $.getJSON(issueURL, function (allIssues) {
        $("div#issues").append("<span class=\"github-count\">found " + allIssues.length + " issues</span>");
        $.each(allIssues, function (i, issue) {
            var trimmedBody = issue.body.length > trim ?
                issue.body.substring(0, trim - 3) + "..." :
                issue.body;
            $("div#issues").append("<div class=\"github-bug\">"
                + "<span class=\"issue-number\">" + issue.number + "</span><a href=\"" + issue.html_url + "\">" + issue.title + "</a>"
                + "<p>" + trimmedBody + "</p>"
                + "</div>");
        });
    });
});
</script>
