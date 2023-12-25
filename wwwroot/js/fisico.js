


$(function ()
{
    // Consulta por Numero Identificacion
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
                                "<a href='/Fisicos/Edit/" + item.id + "' class='btn btn-success btn-icon fa-sm me-1' title='Editar'><i class='fas fa-edit '></i> </a>" +
                                "<a href='/Fisicos/Details/" + item.id + "' class='btn btn-info btn-icon fa-sm me-1' title='Detalles'><i class='fas fa-info-circle'></i> </a>" +
                                "<a href='/Fisicos/Delete/" + item.id + "' class='btn btn-danger btn-icon fa-sm me-1' title='Eliminar' onclick='return confirm(\"¿Estás seguro de querer eliminar este registro?\");'><i class='fas fa-trash-alt'></i> </a>"
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

    // Consulta por Nombre
    $('#Nombre_txt').on('keyup', function (event) {
        if (event.key === 'Enter') {
            event.preventDefault(); // Prevenir el comportamiento predeterminado de enviar formulario.
            var Nombre = $(this).val();
            $.ajax({
                url: '/General/BuscarPorNombre',
                type: 'GET',
                data: { Nombre: Nombre },
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
                                "<a href='/Fisicos/Edit/" + item.id + "' class='btn btn-success btn-icon fa-sm me-1' title='Editar'><i class='fas fa-edit '></i> </a>" +
                                "<a href='/Fisicos/Details/" + item.id + "' class='btn btn-info btn-icon fa-sm me-1' title='Detalles'><i class='fas fa-info-circle'></i> </a>" +
                                "<a href='/Fisicos/Delete/" + item.id + "' class='btn btn-danger btn-icon fa-sm me-1' title='Eliminar' onclick='return confirm(\"¿Estás seguro de querer eliminar este registro?\");'><i class='fas fa-trash-alt'></i> </a>"
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
    //------------------------//


    // Consulta por Primer Apellido
    $('#PrimerApellido_txt').on('keyup', function (event) {
        if (event.key === 'Enter') {
            event.preventDefault(); // Prevenir el comportamiento predeterminado de enviar formulario.
            var PrimerApellido = $(this).val();
            $.ajax({
                url: '/General/BuscarPorPrimerApellido',
                type: 'GET',
                data: { PrimerApellido: PrimerApellido },
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
                                "<a href='/Fisicos/Edit/" + item.id + "' class='btn btn-success btn-icon fa-sm me-1' title='Editar'><i class='fas fa-edit '></i> </a>" +
                                "<a href='/Fisicos/Details/" + item.id + "' class='btn btn-info btn-icon fa-sm me-1' title='Detalles'><i class='fas fa-info-circle'></i> </a>" +
                                "<a href='/Fisicos/Delete/" + item.id + "' class='btn btn-danger btn-icon fa-sm me-1' title='Eliminar' onclick='return confirm(\"¿Estás seguro de querer eliminar este registro?\");'><i class='fas fa-trash-alt'></i> </a>"
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
    //------------------------//



    // Consulta por Segundo Apellido
    $('#SegundoApellido_txt').on('keyup', function (event) {
        if (event.key === 'Enter') {
            event.preventDefault(); // Prevenir el comportamiento predeterminado de enviar formulario.
            var SegundoApellido = $(this).val();
            $.ajax({
                url: '/General/BuscarPorSegundoApellido',
                type: 'GET',
                data: { SegundoApellido: SegundoApellido },
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
                                "<a href='/Fisicos/Edit/" + item.id + "' class='btn btn-success btn-icon fa-sm me-1' title='Editar'><i class='fas fa-edit '></i> </a>" +
                                "<a href='/Fisicos/Details/" + item.id + "' class='btn btn-info btn-icon fa-sm me-1' title='Detalles'><i class='fas fa-info-circle'></i> </a>" +
                                "<a href='/Fisicos/Delete/" + item.id + "' class='btn btn-danger btn-icon fa-sm me-1' title='Eliminar' onclick='return confirm(\"¿Estás seguro de querer eliminar este registro?\");'><i class='fas fa-trash-alt'></i> </a>"
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
    //------------------------//


    // Consulta los primeros 15 registros
 
    $('#Botton_Refrescar').on('click', function () {
            var identificacion = $(this).val();
            $.ajax({
                url: '/General/FisicosAll',
                type: 'GET',
                success: function (data) {
                    // Limpiar la tabla antes de agregar nuevos resultados
                    $("tbody").empty();
                    console.log("Array Completo" + data)
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
                                "<a href='/Fisicos/Edit/" + item.id + "' class='btn btn-success btn-icon fa-sm me-1' title='Editar'><i class='fas fa-edit '></i> </a>" +
                                "<a href='/Fisicos/Details/" + item.id + "' class='btn btn-info btn-icon fa-sm me-1' title='Detalles'><i class='fas fa-info-circle'></i> </a>" +
                                "<a href='/Fisicos/Delete/" + item.id + "' class='btn btn-danger btn-icon fa-sm me-1' title='Eliminar' onclick='return confirm(\"¿Estás seguro de querer eliminar este registro?\");'><i class='fas fa-trash-alt'></i> </a>"
                            )
                        );

                        $("tbody").append(row); // Agregar fila a tbody
                    });
                },
                error: function (err) {
                    console.error(err); // Manejo de errores
                }
            }); // Cierra $.ajax
     
    }); // Cierra on keyup



    //Limpiar Formulario 
    $('#Botton_Limpiar').on('click', function () {
        // Establece el valor del campo de identificación a una cadena vacía
        $('#Identificacion_txt').val('');
        $('#Nombre_txt').val('');
        $('#PrimerApellido_txt').val('');
        $('#SegundoApellido_txt').val('');
        $("tbody").empty();
    });


 });


