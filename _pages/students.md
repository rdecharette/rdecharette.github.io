---
layout: page
permalink: /students/
title: students
description: 
nav: true
nav_order: 7
---

<!-- pages/team.md -->
{% include supervision.liquid %}

<h2 style="margin-top: 2em;">Alumni</h2>
{% assign alumni = site.data.team | where_exp:"item","item.alumni == true" | sort: "alumni_date" | reverse %}

{% assign phds = alumni | where_exp:"item","item.position == 'PhD student' or item.position == 'PhD Visit'" %}

{% assign postdocs = alumni | where: "position", "Postdoctoral" %}
{% assign engineers = alumni | where: "position", "Engineer" %}
{% assign postdoc_engineers = postdocs | concat: engineers | sort: "alumni_date" | reverse %}

{% assign interns = alumni | where_exp:"item","item.position == 'Intern' or item.position == 'Visitor'" %}

{% assign others = alumni | where_exp:"item","item.position != 'Postdoctoral' and item.position != 'PhD student' and item.position != 'PhD Visit' and item.position != 'Engineer' and item.position != 'Intern' and item.position != 'Visitor'" %}

<div>
    <h5 style="margin-top: 1em;">PhD students</h5>
    <div class="team alumni">
    {% for member in phds %}
        {% include team/member.html member=member %}
    {% endfor %}
    </div>
    <h5 style="margin-top: 1em;">Postdocs and Engineers</h5>
    <div class="team alumni">
    {% for member in postdoc_engineers %}
        {% include team/member.html member=member %}
    {% endfor %}
    </div>
    <h5 style="margin-top: 1em;">Interns and Visitors</h5>
    <div class="team alumni">
    {% for member in interns %}
        {% include team/member.html member=member %}
    {% endfor %}
    </div>

    {% if others.size != 0 %}
        <h5 style="margin-top: 1em;">Others</h5>
        <div class="team alumni">
        {% for member in others %}
            {% include team/member.html member=member %}
        {% endfor %}
        </div>
    {% endif %}
</div>