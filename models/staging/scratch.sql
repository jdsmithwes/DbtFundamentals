{{ config(enabled=false) }}

--if statment
{% set temperature = 80.0 %}

On a day like this, I especially like
{% if temperature >= 70.0 %}
    a refreshing lemon sorbet
{% else %}
    a decadent chocolate cake
{% endif %}

--for loop
{% for j in range(26)%} 


{% set animals = ['lemur','dingo','rhino','dog']%}

{% for animal in animals %}
    my favorite{{ animal }} is the {{ animal }}!
{% endfor %}



{% set foods = ['radish','cucumber','chicken nugget','avocado']%}
{% for food in foods %}
    {% if food == 'chicken nugget' %}
        {% set food_type = 'snack'%}
    {% else %}
        {% set food_type = 'vegetable'%}
    {% endif %}
    The delicisious {{ food }} is a {{ food_type }}.
{% endfor %}
{% endfor %}