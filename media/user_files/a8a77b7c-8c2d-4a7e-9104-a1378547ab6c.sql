DELETE FROM valor_por_defecto_bloque_lin WHERE tipo_despliegue = 'E' AND programa = 'MWL.FOR_PMR_TEST';
DELETE FROM valor_por_defecto_bloque_cab WHERE tipo_despliegue = 'E' AND programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_informes_ad WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_informes_det WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_grp_val WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_bloques_bi WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_botonera WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_informes WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_historia WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_param_llamada WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_ventanas_idiomas WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_ventanas WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_tabs_idiomas WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_tabs WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_campos_idiomas WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_campos WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_bl_pl_items WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_bl_pl_det WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_bl_plug_in WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_bl_filtros_var WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_bl_filtros WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_bl_categorias WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_bl_relaciones WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_bl_reldup WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp_bloques WHERE programa = 'MWL.FOR_PMR_TEST';
DELETE FROM programas_erp WHERE codigo = 'MWL.FOR_PMR_TEST';
INSERT INTO programas_erp (codigo, descripcion, tipo_programa, dinamico, campo_codigo, imprimir_excel)
VALUES ('MWL.FOR_PMR_TEST', 'prueba movilidad pedro martinez rioseco', NULL, 'N', NULL, 'S');
UPDATE programas_erp SET seleccion_directorio_breport = 'S' WHERE codigo = 'MWL.FOR_PMR_TEST';
UPDATE programas_erp SET fecha_ult_modificacion = TO_DATE('31-05-2024 11:27:27', 'DD-MM-YYYY HH24:MI:SS') WHERE codigo = 'MWL.FOR_PMR_TEST';
UPDATE programas_erp SET version_cf = '$PNTPKLIB$ASIDE%CTRL(FTES:00001:' WHERE codigo = 'MWL.FOR_PMR_TEST';
UPDATE programas_erp SET bbdd_info = 'v6.1.3.6.4.4-12040165:00611' WHERE codigo = 'MWL.FOR_PMR_TEST';
INSERT INTO programas_erp_bloques (programa, bloque, descripcion, clausula_where, clausula_order_by) VALUES (
'MWL.FOR_PMR_TEST', 'BREPORT', 'Bloque de Impresion', 
NULL
, NULL);
BEGIN
UPDATE programas_erp_bloques SET codigo_pl_sql_inicializacion = ':rdo := pk_web_general.inicializar_breport();' WHERE programa = 'MWL.FOR_PMR_TEST' AND bloque = 'BREPORT';
END;
/
BEGIN
UPDATE programas_erp_bloques SET parametros_web = '"automatico":"N","cerrar_al_imprimir":"S"' WHERE programa = 'MWL.FOR_PMR_TEST' AND bloque = 'BREPORT';
END;
/
INSERT INTO programas_erp_bloques (programa, bloque, descripcion, clausula_where, clausula_order_by) VALUES (
'MWL.FOR_PMR_TEST', 'CAMPOS', 'Bloque de Campos', 
NULL
, NULL);
INSERT INTO programas_erp_bloques (programa, bloque, descripcion, clausula_where, origen_consulta, clausula_order_by) VALUES (
'MWL.FOR_PMR_TEST', 'CLIENTES', 'Bloque de clientes', 
NULL
, 'WEB_FOR_PMR_TEST_CLI w', NULL);
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, ocultar, valor_por_defecto, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'BREPORT', 'COPIAS', 'Copias', 0, 1, 'N', 'N', 'S', 'N', NULL, NULL, 'S', 'S', NULL, 'S', 'S', '1', NULL);
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, ocultar, columna_order, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'BREPORT', 'CORREO_ELECTRONICO', 'Correo', 0, 1, 'N', 'N', 'N', 'N', NULL, NULL, 'S', 'S', NULL, 'S', 'S', '3', NULL);
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, obligar, valor_por_defecto, lista_valores_grupo, columna_order, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'BREPORT', 'DISPOSITIVO', 'Destino', 0, 1, 'N', 'N', 'N', 'N', NULL, 'V_DISPOSITIVOS_IMPRESION', 'S', 'S', NULL, 'S', 'S', 'PDF', 'S', '2', NULL);
BEGIN
UPDATE programas_erp_campos SET codigo_pl_sql_validacion = 'DECLARE
  v_dispositivo VARCHAR2(50) := pk_web_general.get(''DISPOSITIVO'');
  v_destino     VARCHAR2(50);
BEGIN
  pk_web_general.set(''IMPRESORA'', '''');
  pk_web_general.set(''CORREO_ELECTRONICO'', '''');
  pkpantallas.comando_plug_in(''SIP'', ''IMPRESORA'', ''VISIBLE'', ''PROPERTY_FALSE'');
  pkpantallas.comando_plug_in(''SIP'', ''IMPRESORA'', ''REQUIRED'', ''PROPERTY_FALSE'');
  pkpantallas.comando_plug_in(''SIP'', ''CORREO_ELECTRONICO'', ''VISIBLE'', ''PROPERTY_FALSE'');
  pkpantallas.comando_plug_in(''SIP'', ''CORREO_ELECTRONICO'', ''REQUIRED'', ''PROPERTY_FALSE'');
  IF v_dispositivo = ''PRINTER'' THEN
    v_destino := ''IMPRESORA'';
  ELSIF v_dispositivo = ''MAIL'' THEN
    v_destino := ''CORREO_ELECTRONICO'';
  END IF;
  pkpantallas.comando_plug_in(''SIP'', v_destino, ''VISIBLE'', ''PROPERTY_TRUE'');
  pkpantallas.comando_plug_in(''SIP'', v_destino, ''REQUIRED'', ''PROPERTY_TRUE'');
  pk_web_general.set(''POSICIONAR'', v_destino);
END;' WHERE programa = 'MWL.FOR_PMR_TEST' AND bloque = 'BREPORT' AND campo = 'DISPOSITIVO';
END;
/
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, ocultar, lista_valores_grupo, columna_order, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'BREPORT', 'IMPRESORA', 'Impresora', 0, 1, 'N', 'N', 'N', 'N', NULL, 'IMPRESORAS_LOGICAS', 'S', 'S', ':where_lov AND codigo IN (SELECT DISTINCT codigo_impresora FROM v_impresoras WHERE ((nivel = ''USUARIO_PROGRAMA'' AND codigo_nivel = :global.usuario AND codigo_nivel2 = :parametros.codigo_menu) OR (nivel = ''USUARIO'' AND codigo_nivel = :global.usuario) OR (nivel = ''PROGRAMA'' AND codigo_nivel = :parametros.codigo_menu)))', 'S', 'S', 'S', '3', NULL);
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, obligar, lista_valores_grupo, columna_order, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'BREPORT', 'INFORME', 'Informe', 0, 1, 'N', 'N', 'N', 'N', NULL, 'WEB_PROGRAMAS_ERP_INFORMES', 'S', 'S', NULL, 'S', 'S', 'S', '1', NULL);
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, mascara, columna_order, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'CAMPOS', 'ACTIVO', 'ACTIVO', 0, 1, 'N', 'N', 'N', 'N', NULL, NULL, 'S', 'S', NULL, 'S', 'TP:SN', '060', NULL);
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, columna_order, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'CAMPOS', 'CAMPO', 'Campo', 0, 1, 'S', 'N', 'N', 'N', NULL, NULL, 'S', 'S', NULL, 'S', '010', NULL);
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, columna_order, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'CAMPOS', 'CODIGO_RAPIDO', 'CODIGO_RAPIDO', 0, 1, 'N', 'N', 'N', 'N', NULL, NULL, 'S', 'S', NULL, 'S', '020', NULL);
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, columna_order, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'CAMPOS', 'EMAIL', 'EMAIL', 0, 1, 'N', 'N', 'N', 'N', NULL, NULL, 'S', 'S', NULL, 'S', '070', NULL);
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, columna_order, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'CAMPOS', 'FECHA_ALTA', 'FECHA_ALTA', 0, 1, 'N', 'N', 'N', 'N', NULL, NULL, 'S', 'S', NULL, 'S', '050', NULL);
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, columna_order, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'CAMPOS', 'INSERTAR', 'INSERTAR', 0, 1, 'N', 'N', 'N', 'N', NULL, NULL, 'S', 'S', NULL, 'S', '090', NULL);
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, columna_order, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'CAMPOS', 'NOMBRE', 'NOMBRE', 0, 1, 'N', 'N', 'N', 'N', NULL, NULL, 'S', 'S', NULL, 'S', '030', NULL);
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'CAMPOS', 'PRIMER_APELLIDO', 'PRIMER_APELLIDO', 0, 1, 'N', 'N', 'N', 'N', NULL, NULL, 'S', 'S', NULL, 'S', NULL);
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, columna_order, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'CAMPOS', 'SEGUNDO_APELLIDO', 'SEGUNDO_APELLIDO', 0, 1, 'N', 'N', 'N', 'N', NULL, NULL, 'S', 'S', NULL, 'S', '040', NULL);
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, columna_order, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'CAMPOS', 'TELEFONO', 'TELEFONO', 0, 1, 'N', 'N', 'N', 'N', NULL, NULL, 'S', 'S', NULL, 'S', '080', NULL);
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, columna_query, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'CLIENTES', 'C1', 'codigo_rapido', 0, 1, 'N', 'N', 'N', 'N', NULL, NULL, 'S', 'S', NULL, 'S', 'w.codigo_rapido', NULL);
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, columna_query, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'CLIENTES', 'C2', 'nombre', 0, 1, 'N', 'N', 'N', 'N', NULL, NULL, 'S', 'S', NULL, 'S', 'w.nombre', NULL);
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, columna_query, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'CLIENTES', 'C3', 'primer_apellido', 0, 1, 'N', 'N', 'N', 'N', NULL, NULL, 'S', 'S', NULL, 'S', 'w.primer_apellido', NULL);
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, columna_query, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'CLIENTES', 'C4', 'fecha_alta', 0, 1, 'N', 'N', 'N', 'N', NULL, NULL, 'S', 'S', NULL, 'S', 'w.fecha_alta', NULL);
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, columna_query, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'CLIENTES', 'C5', 'activo', 0, 1, 'N', 'N', 'N', 'N', NULL, NULL, 'S', 'S', NULL, 'S', 'w.activo', NULL);
INSERT INTO programas_erp_campos (programa, bloque, campo, etiqueta_std, seccion, numero_orden, obligatorio, pasar_en_navegacion, activar_calculadora, activar_calendario, parametro_navegacion, lv_codigo_lista, lv_ejecutar_consulta, lv_validar_desde_lista, lv_where_defecto, ejecutar_pl_sql_prevalidacion, columna_query, llamar_programa) VALUES ('MWL.FOR_PMR_TEST', 'CLIENTES', 'C6', 'fecha_baja', 0, 1, 'N', 'N', 'N', 'N', NULL, NULL, 'S', 'S', NULL, 'S', 'w.fecha_baja', NULL);
BEGIN
INSERT INTO programas_erp_bl_plug_in (programa, bloque, codigo, numero_orden, descripcion, icono, programa_llamado, modo_menu, modo_consulta, operacion_control_activacion, codigo_pl_sql) VALUES ('MWL.FOR_PMR_TEST', 'CAMPOS', '1', 1, 'Volver', 'fast-backward', '#', 38, 502, '=', ':script := ''app.fn.mostrar_lista()'';');
END;
/
BEGIN
INSERT INTO programas_erp_bl_plug_in (programa, bloque, codigo, numero_orden, descripcion, icono, programa_llamado, modo_menu, modo_consulta, operacion_control_activacion, codigo_pl_sql) VALUES ('MWL.FOR_PMR_TEST', 'CLIENTES', '1', 1, 'Mostrar Campos', 'plus-circle', '#', 38, 502, '=', ':script := ''app.fn.mostrar_campos()'';');
END;
/
COMMIT;
