# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@fetchReadme = (report) ->
  key = report.github_key
  url = "https://api.github.com/repos/#{key}/readme"
  $.ajax
    url: url
    dataType: "json"
    contentType: "application/vnd.github.v3.raw"
    success: (data) ->
      $ ->
        html = marked(Base64.decode(data.content))
        $container = $('#markdown-container')
        $container.html html
        $container.find('table').addClass('table table-bordered table-hover')

$ ->
  $('#search').submit ->
    val = $('#search-input').val()
    # Remove any GitHub URL prefix from the target
    # e.g. https://github.com/rails/rails -> rails/rails
    val = val.replace(/^https?:\/\/github.com\//, '')
    document.location = "/github/#{val}"
    false

  $('#refresh-report').on "ajax:send", ->
    $(this).attr('disabled','disabled')
    $('.fa-refresh').addClass('fa-spin')
    $('#refresh-text').text("refreshing... come back soon.")
  $('#welcome-alert').on 'closed.bs.alert', ->
    date = new Date(2035,0)
    document.cookie = "#{welcomeMessageKey}=true; expires=#{date}; path=/"
    true
