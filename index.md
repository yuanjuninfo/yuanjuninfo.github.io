---
layout: default
title: Notes
---

1. Respect the privacy of others.
2. Think before you type.
3. With great power comes great responsibility.

{% for post in site.posts %}
- [{{ post.title }}]({{ post.url }})
{% endfor %}
