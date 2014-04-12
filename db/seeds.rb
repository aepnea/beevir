# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#poblando regiones
Region.create([{nombre: 'Región de Arica y Parinacota', numero: 'XV'}, \
			   {nombre: 'Región de Tarapacá', numero: 'I'}, \
			   {nombre: 'Región de Antofagasta', numero: 'II'}, \
			   {nombre: 'Región de Atacama', numero: 'III'}, \
			   {nombre: 'Región de Coquimbo', numero: 'IV'}, \
			   {nombre: 'Región de Valparaíso', numero: 'V'}, \
			   {nombre: 'Región Metropolitana', numero: 'XIII'}, \
			   {nombre: 'Región del Libertador General Bernardo O\'Higgins', numero: 'VI'}, \
			   {nombre: 'Región del Maule', numero: 'VII'}, \
			   {nombre: 'Región del Biobío', numero: 'VIII'}, \
			   {nombre: 'Región de La Araucanía', numero: 'IX'}, \
			   {nombre: 'Región de Los Ríos', numero: 'XIV'}, \
			   {nombre: 'Región de Los Lagos', numero: 'X'}, \
			   {nombre: 'Región de Aysén', numero: 'XI'}, \
			   {nombre: 'Región de Magallanes', numero: 'XII'}])
# Creando cliente por defecto
Cliente.create([{razon_social: 'Beevir SpA', nombre: 'Beevir', rut: '15119027-8', direccion: 'German Riesco 430', email: 'contacto@beevir.com', telefono: '72101837', nombre_contacto: 'Cristian Vasquez', region_id: '8'}])
Cliente.create([{razon_social: '1 Test - Iculo SA', nombre: 'Test-iculo', rut: '15119027-8', direccion: 'German Riesco 430', email: 'contacto@testiculo.com', telefono: '72101837', nombre_contacto: 'Memo Lestaelano', region_id: '10'}])

# Creando usuario dios

user = User.create! nombre:'admin', apellido1:'admin', apellido2:'admin', rut:'15119027-8', fono:'72101837', email:"admin@beevir.com", password:'password', cliente_id: '1'
user.add_role "admin"
user = User.create! nombre:'copropietario', apellido1:'copropietario', apellido2:'copropietario', rut:'15119027-8', fono:'72101837', email:"copropietario@beevir.com", password:'password', cliente_id: '1'
user.add_role "copropietario"
user = User.create! nombre:'copropietario_residente', apellido1:'copropietario_residente', apellido2:'copropietario_residente', rut:'15119027-8', fono:'72101837', email:"copropietario_residente@beevir.com", password:'password', cliente_id: '1'
user.add_role "copropietario_residente"
user = User.create! nombre:'arrendatario', apellido1:'arrendatario', apellido2:'arrendatario', rut:'15119027-8', fono:'72101837', email:"arrendatario@beevir.com", password:'password', cliente_id: '1'
user.add_role "arrendatario"
user = User.create! nombre:'comite', apellido1:'comite', apellido2:'comite', rut:'15119027-8', fono:'72101837', email:"comite@beevir.com", password:'password', cliente_id: '1'
user.add_role "comite"
user = User.create! nombre:'dios', apellido1:'', apellido2:'', rut:'15119027-8', fono:'72101837', email:"dios@beevir.com", password:'password', cliente_id: '1'
user.add_role "dios"