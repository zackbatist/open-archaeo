<link rel="stylesheet" href="index.css" />

A list of open source archaeological software and resources.

<a href="/contributing/"><contributing</a>

## Items

{% for item in site.test-web.data.items %}
  <article>
    <p>{{ item.name }}</p>
    <p>by {% if item.author-url %}<a href="{{ item.author-url }}">{% endif %}{{ item.author }}{% if item.author-url %}</a> {% endif %}</p>

    <span><p>🌐: 
    {% if item.github %}
      <a href="{{ item.github }}">[GitHub]</a> 
    {% endif %}
    {% if item.website %}
      <a href="{{ item.website }}">[Website]</a> 
    {% endif %}
    {% if item.cran %}
      <a href="{{ item.cran }}">[CRAN]</a> 
    {% endif %}
    {% if item.pypi %}
      <a href="{{ item.pypi }}">[PyPi]</a> 
    {% endif %}
    {% if item.launchpad %}
      <a href="{{ item.launchpad }}">[Launchpad]</a> 
    {% endif %}
    {% if item.bitbucket %}
      <a href="{{ item.bitbucket }}">[BitBucket]</a> 
    {% endif %}
    {% if item.gitlab %}
      <a href="{{ item.gitlab }}">[GitLab]</a> 
    {% endif %}
    </p></span>

    <span><p> 🏷: 
      {% for tag in item.tags %}
        <a href="/tags/{{ tag }}/">[{{tag}}]</a> 
      {% endfor %}
    </p></span>

    {% if item.description %}
      <span class="description">{{ item.description }}</span>
    {% endif %}

    <hr style="border-width: 1px 1px 0;
           border-style: solid;
           border-color: palevioletred;
           background-color: palevioletred;
           height: 1px;
           width: 100%;
           margin-left: auto;
           margin-right: auto;">

  </article>
{% endfor %}
