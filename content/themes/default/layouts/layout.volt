<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

    <!-- Basic Page Needs -->
    {% set controller = this.view.getControllerName(), action =  this.view.getActionName()%}
    {% set name = this.config.application.name, publicUrl = this.config.application.publicUrl %}
    <!-- Add meta tags to refactor-->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="keywords" content="{{name}}, Phanbook, Phalcon,QA">
    <meta name="author" content="Phanbook Team">
    <meta property="og:title" content="{{ name }}">
    <meta property="og:type"  content="website">
    <meta property="og:image" content=" {{ name }}">
    <meta property="og:url" content="{{publicUrl}}">
    <link rel="shortcut icon" href="{{ getImageSrc('favicon.png') }}">
    <title>{% block title%}{% endblock %} - {{name}}</title>

    <!-- Main Style -->
    <link rel="stylesheet" type="text/css" href="{{assets('css/app.css')}}" />

    <!-- Responsive Style -->
    <link rel="stylesheet" href="/core/assets/css/responsive.css">
    {{ this.assets.outputCss() }}
    <script type="text/javascript">
        var baseUri     = '{{ this.config.application.baseUri }}';
        var controller  = '{{ controller }}';
        var action      = '{{ action }}';
        var googleAnalytic = '{{ this.config.googleAnalytic }}';
    </script>
</head>
<body class="{{action}} {{controller}}">

<!-- <div class="loader"><div class="loader_html"></div></div>
 --><div class="m-b-md">
    {{ this.flashSession.output() }}
</div>
<div id="wrap">
    {{ partial('partials/header')}}

    {{ partial('partials/breadcrumb')}}
    <section class="container main-content">
        {% block content %}{% endblock %}
    </section><!-- End container -->

    {{ partial('partials/footer')}}
</div><!-- End wrap -->

<div class="go-up"><i class="fa fa-chevron-up"></i></div>

<!-- js -->
{{ javascript_include('core/assets/js/jquery.js')}}
{{ javascript_include('core/assets/js/notify.js')}}
{{ javascript_include('core/assets/js/app.function.js')}}
{{ javascript_include('core/assets/js/app.ajax.js')}}
{{ javascript_include('core/assets/js/app.js')}}
<script src="{{assets('js/custom.js')}}"></script>
{{ this.assets.outputJs() }}
{% block scripts%} {% endblock %}
<!-- End js -->

</body>
</html>
