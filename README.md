# PetsApp

La aplicación permite dar de alta a usuarios y y las mascotas que tengan. Al validar el usuario podremos ver las mascotas de todos los usuarios y de quien es esa mascota. Tenemos la posibilidad de ver los detalles de las mascotas, tales como su nombre, raza, edad y propietario, también podemos ver una foto de él. Finalmente nos permite editar o eliminar solo las mascotas propias. Y añadir mascotas nuevas. 

La aplicación consta de dos tablas, una de usuarios y otra de mascotas. Relacionadas de forma que cada mascota tiene un usuario, y cada usuario puede tener varias mascotas.

La tabla de usuario tiene su nombre, dirección de correo y contraseña, esta tabla también tiene aplicado Devise, para que nos gestione toda la parte de sesiones de la aplicación.

La tabla de mascotas contiene su nombre, especie, edad y el id del usuario al que pertenece. Finalmente también tiene aplicado Paperclip, que nos ayuda a gestionar las imágenes de la mascota.

La parte visual de la web tiene Bootstrap y es responsive.

También se han testeado algunas partes de la web, para que se pueda seguir escalando con tranquilidad.

Otro dato a destacar es que los detalles de la mascota se cargan en un modal mediante una llamada de AJAX.
