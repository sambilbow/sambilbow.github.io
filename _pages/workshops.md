---
layout: page
permalink: /workshops/
title: workshops
description:
nav: true 
nav_order: 4
display_categories: [conference,lab,taught]

---


<!-- pages/workshops.md -->
<div class="workshops">
{%- if site.enable_workshop_categories and page.display_categories %}
  <!-- Display categorized workshops -->
  {%- for category in page.display_categories %}
  <h2 class="category">{{ category }}</h2>
  {%- assign categorized_workshops = site.workshops | where: "category", category -%}
  {%- assign sorted_workshops = categorized_workshops | sort: "importance" %}
  <!-- Generate cards for each workshop -->
  {% if page.horizontal -%}
  <div class="container">
    <div class="row row-cols-2">
    {%- for workshop in sorted_workshops -%}
      {% include workshops_horizontal.html %}
    {%- endfor %}
    </div>
  </div>
  {%- else -%}
  <div class="grid">
    {%- for workshop in sorted_workshops -%}
      {% include workshops.html %}
    {%- endfor %}
  </div>
  {%- endif -%}
  {% endfor %}

{%- else -%}
<!-- Display workshops without categories -->
  {%- assign sorted_workshops = site.workshops | sort: "importance" -%}
  <!-- Generate cards for each workshop -->
  {% if page.horizontal -%}
  <div class="container">
    <div class="row row-cols-2">
    {%- for workshop in sorted_workshops -%}
      {% include workshops_horizontal.html %}
    {%- endfor %}
    </div>
  </div>
  {%- else -%}
  <div class="grid">
    {%- for workshop in sorted_workshops -%}
      {% include workshops.html %}
    {%- endfor %}
  </div>
  {%- endif -%}
{%- endif -%}
</div>
