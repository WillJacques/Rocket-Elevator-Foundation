# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
    buildings = $('#intervention_building_list').html()
    console.log(buildings)
    $('#intervention_customer_list').change ->
        customer = $('#intervention_customer_list :selected').text()
        options = $(buildings).filter("optgroup[label='#{customer}']").html()
        if options
            $('#intervention_building_list').html(options)
        else
            $('#intervention_building_list').empty()

jQuery ->
    batteries = $('#intervention_battery_list').html()
    console.log(batteries)
    $('#intervention_building_list').change ->
        building = $('#intervention_building_list :selected').text()
        options = $(batteries).filter("optgroup[label='#{building}']").html()
        if options
            $('#intervention_battery_list').html(options)
        else
            $('#intervention_battery_list').empty()