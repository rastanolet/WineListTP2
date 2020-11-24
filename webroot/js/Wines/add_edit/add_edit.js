$(document).ready(function () {
    // The path to action from CakePHP is in urlToLinkedListFilter 
    $('#country-id').change(function () {
        var countryId = $(this).val();
        if (countryId) {
            $.ajax({
                url: urlToLinkedListFilter,
                data: 'country_id=' + countryId,
                success: function (regions) {
                    $select = $('#region-id');
                    $select.find('option').remove();
                    $.each(regions, function (key, value)
                    {
                        $.each(value, function (childKey, childValue) {
                            $select.append('<option value=' + childValue.id + '>' + childValue.name + '</option>');
                        });
                    });
                }
            });
        } else {
            $('#region-id').html('<option value="">Select Country first</option>');
        }
    }).change();
});


