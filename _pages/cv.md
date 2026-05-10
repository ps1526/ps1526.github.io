---
layout: single
title: "CV"
permalink: /cv/
author_profile: true
classes: wide
redirect_from:
  - /resume
---

{% comment %}relative_url: local preview uses your files/ PDF; production uses the same path. ?v= busts browser cache after updates.{% endcomment %}
{% assign _cv_bust = site.time | date: '%s' %}
{% assign cv_pdf = '/files/PranavSinghCV.pdf' | relative_url | append: '?v=' | append: _cv_bust %}
{% assign site_home = '/' | absolute_url %}

<div class="cv-page__meta">
  <p><strong>Website:</strong> <a href="{{ site_home }}">{{ site.url }}{{ site.baseurl }}/</a></p>
  <p><a href="{{ cv_pdf }}">Download CV (PDF)</a></p>
</div>

<div class="cv-pdf-frame" style="width:100%; min-height:85vh; margin-top:1rem;">
  <iframe
    src="{{ cv_pdf }}#view=FitH"
    title="Curriculum vitae — Pranav Singh"
    width="100%"
    height="1100"
    style="border:1px solid #ccc; border-radius:4px;"
  ></iframe>
</div>

