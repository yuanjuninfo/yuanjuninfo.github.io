---
layout: contents
title: Blog
---

{% for post in site.posts %}
- [{{ post.title }}]({{ post.url }})
{% endfor %}
