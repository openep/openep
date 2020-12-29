---
title: Roadmap
subtitle: >-
  The planned development for OpenEP

layout: page
---

## Current Roadmap

Since OpenEP is under active development within the core contributors labs the prioritisation given to each of these projects is related to our ongoing research. That said, there are times when work arounds are quickly implemented and if there was interest from other researchers in submitting issues within each stream and potentially contributing to their development then we are very keen to support this. One way that this can be done is to build and include fully-featured OpenEP solutions to particular problems when there are areas of mutual interest.

There are four major streams in the Roadmap for Development:

### Infrastructure projects

<div id="issues-infra"></div>

### Data parsing projects

<div id="issues-parse"></div>

### Data analysis projects

<div id="issues-data"></div>

### Visualisation projects

<div id="issues-vis"></div>

If you have seen something which you would really like implemented in OpenEP then please do get in touch!

We are also keen to support developers who may be interested in contributing their own EP analysis solutions to the projets. If this sounds like you then again please get in touch!

Each of the above streams is hosted as a project on github.

## Development plan
We are following the git-flow framework for development. The active branch is currently 'develop'. When it is time for the first release, this will be merged into master and a release will be created. If you are working on an issue then please create a feature by forking develop and submit a pull request when you are ready.

<!-- issue loader code -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>
var issueURL = "https://api.github.com/repos/openep/openep-core/issues?state=open";

$(document).ready(function () {
    loadIssues("issues-data", "project-Data%20Analysis");
    loadIssues("issues-infra", "project-Infrastructure");
    loadIssues("issues-parse", "project-Data%20Parsing");
    loadIssues("issues-vis", "project-Visualisation");
});

function loadIssues(id, label) {
    trim = 165;
    $.getJSON(issueURL+"&labels="+label, function (allIssues) {
        $("div#"+id).append("<span class=\"github-count\">found " + allIssues.length + " issues</span>");
        $.each(allIssues, function (i, issue) {
            var trimmedBody = issue.body.length > trim ?
                issue.body.substring(0, trim - 3) + "..." :
                issue.body;
            $("div#"+id).append("<div class=\"github-bug\">"
                + "<span class=\"issue-number\">" + issue.number + "</span><a href=\"" + issue.html_url + "\">" + issue.title + "</a>"
                + "<p>" + trimmedBody + "</p>"
                + "</div>");
        });
    });
};
</script>
