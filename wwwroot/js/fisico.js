


$(function ()
{
        // Tu código aquí
    $('#Identificacion_txt').on('keyup', function (event) {
        if (event.key === 'Enter') {
            event.preventDefault(); // Prevenir el comportamiento predeterminado de enviar formulario.
            var identificacion = $(this).val();
            $.ajax({
                url: '/General/BuscarPorIdentificacion',
                type: 'GET',
                data: { identificacion: identificacion },
                success: function (data) {
                    // Limpiar la tabla antes de agregar nuevos resultados
                    $("tbody").empty();

                    // Iterar sobre los datos recibidos y rellenar la tabla
                    $.each(data, function (index, item) {
                        console.log(item);  // Depuración: Imprimir cada item para ver sus propiedades
                        var row = $("<tr class='justify-content-center align-baseline'></tr>");
                        row.append($("<td></td>").text(item.identificacion || ''));
                        row.append($("<td></td>").text(item.nombre || ''));
                        row.append($("<td></td>").text(item.primerApellido || ''));
                        row.append($("<td></td>").text(item.segundoApellido || ''));
                        row.append($("<td></td>").text(item.fechaNacimiento || '')); // Considera formatear la fecha
                        row.append($("<td></td>").text(item.sexo || ''));
                        row.append(
                            $("<td class='text-center'></td>").html(
                                "<a href='/General/Edit/" + item.id + "' class='btn btn-success btn-icon fa-sm' title='Editar'><i class='fas fa-edit'></i></a>" +
                                "<a href='/General/Details/" + item.id + "' class='btn btn-info btn-icon fa-sm' title='Detalles'><i class='fas fa-info-circle'></i></a>" +
                                "<a href='/General/Delete/" + item.id + "' class='btn btn-danger btn-icon fa-sm' title='Eliminar' onclick='return confirm(\"¿Estás seguro de querer eliminar este registro?\");'><i class='fas fa-trash-alt'></i></a>"
                            )
                        );

                        $("tbody").append(row); // Agregar fila a tbody
                    });
                },
                error: function (err) {
                    console.error(err); // Manejo de errores
                }
            }); // Cierra $.ajax
        } // Cierra if
    }); // Cierra on keyup




 });


