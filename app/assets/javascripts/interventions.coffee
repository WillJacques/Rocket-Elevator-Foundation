# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
    none = '<option value="">None</option>';
    buildings = $('#intervention_building_id').html()
    $('#intervention_customer_id').click ->
        customer = $('#intervention_customer_id :selected').text()
        options1 = $(buildings).filter("optgroup[label='#{customer}']").html()
        if options1
            $('#intervention_building_id').html(options1)
            $('#intervention_building_id').val('');
        else
            $('#intervention_building_id').empty()

    batteries = $('#intervention_battery_id').html()
    $('#intervention_building_id').click ->
        building = $('#intervention_building_id :selected').text()
        options2 = $(batteries).filter("optgroup[label='#{building}']").html()
        if options2
            $('#intervention_battery_id').html(options2)
            $('#intervention_battery_id').val('');
        else
            $('#intervention_battery_id').empty()

    columns = $('#intervention_column_id').html()
    $('#intervention_battery_id').click ->
        battery = $('#intervention_battery_id :selected').text()
        options3 = $(columns).filter("optgroup[label='#{battery}']").html()
        if options3
            $('#intervention_column_id').html(none + options3)
        else
            $('#intervention_column_id').empty()

    elevators = $('#intervention_elevator_id').html()
    $('#intervention_column_id').click ->
        column = $('#intervention_column_id :selected').text()
        options4 = $(elevators).filter("optgroup[label='#{column}']").html()
        if options4
            $('#intervention_elevator_id').html(none + options4)
        else
            $('#intervention_elevator_id').empty()