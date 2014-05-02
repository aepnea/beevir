# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:
 ActiveSupport::Inflector.inflections do |inflect|
 	inflect.irregular 'cliente', 'clientes'
 	inflect.irregular 'region', 'regiones'
 	inflect.irregular 'usuario', 'usuarios'
	inflect.irregular 'dios', 'dios'
	inflect.irregular 'comunidad', 'comunidades'
	inflect.irregular 'espacio_comun', 'espacios_comunes'	 
    inflect.irregular 'sector', 'sectores'
	inflect.irregular 'tipo_unidad', 'tipo_unidades'
	inflect.irregular 'unidad', 'unidades'
	inflect.irregular 'user_unidad', 'users_unidades'
	inflect.irregular 'comunidad_user', 'comunidades_users'
	inflect.irregular 'solicitud','solicitudes'
 end
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym 'RESTful'
# end
