---
layout: default
---

<div class='well metrics'>
  <ul class="nav nav-tabs">
    {% for i in site.data.sprints %}
      {% if i.commits %}
        <li class='{{i.class}}'><a data-toggle="tab" class='{{i.class}}' href="#sprint-{{i.number}}">Sprint {{i.number}}</a></li>
      {% endif %}
    {% endfor %}
  </ul>

  <div class="tab-content">
    {% for i in site.data.sprints %}
      {% if i.commits %}
        <div id="sprint-{{i.number}}" class="tab-pane fade {{i.class}}">
                <img src='{{site.baseurl}}/static/img/commits/sprint_{{i.number}}.png' title='Commits por Dia - Sprint {{i.number}}' alt='Commits por Dia - Sprint {{i.number}}'>
        </div>
      {% endif %}
    {% endfor %}
  </div>

  <hr>

  <div class="card-deck">
    {% for i in site.data.sprints %}
      {% if i.commits %}
        <div class="card bg-primary">
          <div class="card-body text-center">
            <p>Sprint {{i.number}}</p>
            <img src='{{site.baseurl}}/static/img/commits/sprint_{{i.number}}.png' title='Commits por Dia - Sprint {{i.number}}' alt='Commits por Dia - Sprint {{i.number}}'>
          </div>
        </div>
      {% endif %}
    {% endfor %}
  </div>
</div>
