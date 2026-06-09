// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Analizador de Toxicidad en Relaciones IA';

  @override
  String get psychologicalMetrics => 'Métricas Psicológicas';

  @override
  String get metricsDescription =>
      'Menos métricas seleccionadas producen un análisis más profundo y concentrado de esos comportamientos. Más métricas seleccionadas producen un informe más amplio con menos detalle por métrica.';

  @override
  String get selectSMS => 'Seleccionar SMS / RCS Chat';

  @override
  String get selectDiscordChannel => 'Seleccionar Canal de Discord';

  @override
  String get lightMode => 'Claro';

  @override
  String get darkMode => 'Oscuro';

  @override
  String get discordSetupTitle => 'Cómo Configurar Discord';

  @override
  String get discordSetupDescription =>
      'Sigue estos pasos para habilitar el análisis de canales de Discord en la aplicación:';

  @override
  String get discordStep1Title => 'Crear un Bot de Discord';

  @override
  String get discordStep1Description =>
      'Ve a discord.com/developers, crea una nueva aplicación y añade un bot. Copia el token del bot.';

  @override
  String get discordStep2Title => 'Habilitar Privilegios del Bot';

  @override
  String get discordStep2Description =>
      'En la configuración del bot, habilita \'Message Content Intent\' y \'Server Members Intent\'.';

  @override
  String get discordStep3Title => 'Invitar Bot al Servidor';

  @override
  String get discordStep3Description =>
      'Usa el generador de URL OAuth2 para invitar el bot a tu servidor de Discord con los permisos necesarios.';

  @override
  String get discordStep4Title => 'Configurar en la Aplicación';

  @override
  String get discordStep4Description =>
      'Ingresa tu token del bot en la configuración de la aplicación (contacta soporte si necesitas ayuda).';

  @override
  String get discordStep5Title => 'Seleccionar Canal';

  @override
  String get discordStep5Description =>
      'Toca \'Seleccionar Canal de Discord\', elige tu servidor, luego selecciona el canal para analizar.';

  @override
  String get gotIt => 'Entendido';

  @override
  String get selectFile => 'Seleccionar archivo';

  @override
  String get analyzeSelectedMetrics => 'Analizar métricas seleccionadas';

  @override
  String get analyze20RandomMetrics => 'Analizar 20 métricas aleatorias';

  @override
  String get membershipOptions => 'Opciones de membresía';

  @override
  String get free => 'Gratis';

  @override
  String get oneTimeUnlock => 'Desbloqueo único de informe';

  @override
  String get standard => 'Estándar';

  @override
  String get discordAddon => 'Complemento Discord';

  @override
  String get analyze => 'Analizar';

  @override
  String get report => 'Informe';

  @override
  String get pdfReport => 'Informe PDF';

  @override
  String get openPdf => 'Abrir PDF';

  @override
  String get sharePdf => 'Compartir PDF';

  @override
  String get printPdf => 'Imprimir PDF';

  @override
  String get closePdfPreview => 'Cerrar ventana de vista previa PDF';

  @override
  String get openPdfPreview => 'Abrir ventana de vista previa PDF';

  @override
  String get pdfPreviewDescription =>
      'La ventana PDF incrustada comienza cerrada para mantener el informe compacto.';

  @override
  String get notNow => 'Ahora no';

  @override
  String get unlockThisReport => 'Desbloquear este informe - \$20';

  @override
  String get joinStandard => 'Unirse a Estándar - \$9.99/mes';

  @override
  String get instantUnlockTitle => 'Desbloqueo instantáneo de informe - \$20';

  @override
  String get instantUnlockDescription =>
      'Esta es una compra única para desbloquear solo el informe actual. No requiere suscripción. Los informes futuros requerirán desbloqueos separados o una membresía.\n\n¿Proceder con el pago?';

  @override
  String get purchaseFor20 => 'Comprar por \$20';

  @override
  String get share => 'Compartir';

  @override
  String get print => 'Imprimir';

  @override
  String get save => 'Guardar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get ok => 'Aceptar';

  @override
  String get loading => 'Cargando...';

  @override
  String get error => 'Error';

  @override
  String get success => 'Éxito';

  @override
  String get conversations => 'Conversaciones';

  @override
  String get messages => 'Mensajes';

  @override
  String get selectConversation => 'Seleccionar conversación';

  @override
  String get selectSmsConversation => 'Seleccionar SMS / RCS Chat';

  @override
  String get searchConversations => 'Buscar conversaciones...';

  @override
  String get loadingConversations => 'Cargando conversaciones...';

  @override
  String get errorLoadingConversations => 'Error al cargar conversaciones';

  @override
  String get selectConversationToAnalyze =>
      'Seleccionar conversación para analizar';

  @override
  String get analyzeWithSelectedMetrics =>
      'Analizar con las métricas seleccionadas';

  @override
  String get loadConversationAndSelectMetric =>
      'Cargue una conversación y seleccione al menos una métrica';

  @override
  String get selectAtLeastOneMetric =>
      'Se debe seleccionar al menos una métrica para ejecutar el informe.';

  @override
  String get spinningMetricWheel => 'Girando la rueda de métricas...';

  @override
  String get loadConversationToAnalyze =>
      'Cargue una conversación para analizar';

  @override
  String get noConversationsFound => 'No se encontraron conversaciones';

  @override
  String get permissionsRequired => 'Permisos necesarios';

  @override
  String get smsPermission => 'Mensajes de texto';

  @override
  String get contactsPermission => 'Contactos';

  @override
  String get smsPermissionDescription =>
      'Para analizar tus conversaciones SMS en busca de patrones de relación';

  @override
  String get contactsPermissionDescription =>
      'Para mostrar nombres de contactos en lugar de números de teléfono';

  @override
  String get analyzingMessage =>
      'Espere mientras se genera su análisis psicológico por IA...';

  @override
  String get analyzingStatus => 'Analizando conversación...';

  @override
  String get analyzingSubMessage =>
      'Por favor sea paciente, este proceso puede tardar hasta un minuto dependiendo de su velocidad de conexión y la cantidad de métricas seleccionadas';

  @override
  String get unlockFullReport => 'Desbloquear y mostrar todo este informe';

  @override
  String get fullReportLocked => 'Informe completo bloqueado';

  @override
  String get upgradeToUnlock =>
      'Actualice su membresía para desbloquear el informe completo de análisis psicológico con todas las métricas e información detallada.';

  @override
  String get language => 'Idioma';

  @override
  String get english => 'Inglés';

  @override
  String get spanish => 'Español';

  @override
  String get french => 'Francés';

  @override
  String get german => 'Alemán';

  @override
  String get italian => 'Italiano';

  @override
  String get portuguese => 'Portugués';

  @override
  String get dutch => 'Holandés';

  @override
  String get russian => 'Ruso';

  @override
  String get chinese => 'Chino';

  @override
  String get japanese => 'Japonés';

  @override
  String get korean => 'Coreano';

  @override
  String get arabic => 'Árabe';

  @override
  String get hindi => 'Hindi';

  @override
  String get turkish => 'Turco';

  @override
  String get polish => 'Polaco';

  @override
  String get ukrainian => 'Ucraniano';

  @override
  String get runAnotherAnalysis => '¿Ejecutar otro análisis?';

  @override
  String get becomeMemberTitle =>
      'Hazte miembro para obtener el informe de análisis completo';

  @override
  String get becomeMemberSubtitle =>
      'Elige el nivel de acceso que se ajuste a las conversaciones e informes que necesitas analizar.';

  @override
  String get benefitAnalyzeSms => 'Analizar mensajes de texto SMS';

  @override
  String get benefitReportPreview => 'Ejecutar una vista previa del informe';

  @override
  String get benefitViewPartialReport =>
      'Ver aproximadamente el 25% del informe';

  @override
  String get benefitLockedDetails => 'Detalles del informe completo bloqueados';

  @override
  String get currentFreeAccess => 'Acceso gratuito actual';

  @override
  String get benefitUnlockCurrentReport =>
      'Desbloquear este informe completo actual';

  @override
  String get benefitNoSubscription => 'Sin suscripción';

  @override
  String get benefitSavePrintShareThis =>
      'Guardar, imprimir y compartir este informe';

  @override
  String get benefitBestSingleAnalysis => 'Ideal si solo necesitas un análisis';

  @override
  String get unlockThisReportShort => 'Desbloquear este informe';

  @override
  String get benefitFullSmsReport => 'Informe completo de análisis SMS';

  @override
  String get benefitSavePrintSharePdf =>
      'Guardar, imprimir y compartir informes PDF';

  @override
  String get benefitTenReports => '10 informes por período de 24 horas';

  @override
  String get benefitBestTextReview =>
      'Ideal para revisar relaciones por mensajes de texto';

  @override
  String get benefitDateRangeFilter => 'Filtrar análisis por rango de fechas';

  @override
  String get signUpStandard => 'Suscribirse a la membresía Estándar';

  @override
  String get benefitAddToStandard => 'Añadir a la membresía Estándar';

  @override
  String get benefitAnalyzeDiscord => 'Analizar chats de servidores de Discord';

  @override
  String get benefitRequiresBot => 'Requiere instalación del bot';

  @override
  String get benefitBestGamers =>
      'Ideal para jugadores y comunidades de Discord';

  @override
  String get addDiscordAnalysis => 'Añadir análisis de Discord';

  @override
  String get requiresStandardMembership => 'Requiere membresía Estándar';

  @override
  String get comingSoon => 'Próximamente';

  @override
  String get comingSoonWithNextUpdate =>
      'Próximamente con la siguiente actualización:';

  @override
  String get proMembershipTier => 'Nivel de membresía Pro - \$19.99';

  @override
  String get proPlusMembershipTier => 'Nivel de membresía Pro-Plus - \$24.99';

  @override
  String get proGetsLabel => 'Pro incluye:';

  @override
  String get proGetsDescription =>
      'Analiza hilos de chat de todas las demás plataformas populares de mensajería y redes sociales como:';

  @override
  String get proPlatformsList =>
      'LinkedIn, WhatsApp, Instagram, Facebook Messenger, Telegram, X (Twitter), correo electrónico y calendario';

  @override
  String get proPlusGetsLabel => 'Pro-Plus incluye:';

  @override
  String get proPlusGetsDescription =>
      'Todo lo de Pro, más el complemento de Discord a un precio reducido.';

  @override
  String get purchaseSuccessfulUnlocked =>
      '¡Compra exitosa! Informe desbloqueado.';

  @override
  String get purchaseFailed =>
      'La compra falló. Por favor, inténtalo de nuevo.';

  @override
  String get membershipActivated => '¡Membresía activada!';

  @override
  String get dateRangeFilter => 'Filtro de Rango de Fechas';

  @override
  String get dateRangeOptional => '(opcional)';

  @override
  String get startDate => 'Fecha de Inicio';

  @override
  String get endDate => 'Fecha de Fin';

  @override
  String get clear => 'Limpiar';

  @override
  String get dateRangeRequiresMembership =>
      'Requiere Membresía Estándar o superior';

  @override
  String selectUpToCount(Object current, Object max) {
    return 'Seleccionar hasta $max. Actual: $current';
  }

  @override
  String get clearSelections => 'Limpiar selecciones';

  @override
  String analyzeRandomMetrics(Object count) {
    return 'Analizar $count métricas aleatorias';
  }

  @override
  String get saveSelections => 'Guardar Selecciones';

  @override
  String get loadSelections => 'Cargar Selecciones';

  @override
  String get saveMetricListName => 'Guardar Lista de Métricas';

  @override
  String get enterListName => 'Ingrese un nombre para esta lista de métricas:';

  @override
  String get chooseSavedMetrics => 'Elija la lista de métricas guardada:';

  @override
  String get noSavedLists =>
      'No hay listas de métricas guardadas para cargar en este momento.';

  @override
  String get metricListSaved => 'Lista de métricas guardada exitosamente.';

  @override
  String get metricListLoaded => 'Lista de métricas cargada exitosamente.';

  @override
  String get filters => 'Filtros';

  @override
  String get sortBy => 'Ordenar por:';

  @override
  String get recent => 'Reciente';

  @override
  String get name => 'Nombre';

  @override
  String get count => 'Cantidad';

  @override
  String get namedOnly => 'Solo con nombre';

  @override
  String get minMessages => 'Mín. mensajes:';

  @override
  String get minimumMessages => 'Mínimo de mensajes:';

  @override
  String get executiveSummary => 'Resumen Ejecutivo';

  @override
  String get metricScores => 'Puntuaciones de Métricas';

  @override
  String get contextualEvidenceExamples => 'Ejemplos de Evidencia Contextual';

  @override
  String get neutralSynthesis => 'Síntesis Neutral';

  @override
  String analysisOfSender(Object sender) {
    return 'Análisis de $sender (Remitente)';
  }

  @override
  String analysisOfReceiver(Object receiver) {
    return 'Análisis de $receiver (Receptor)';
  }

  @override
  String get finalConclusion => 'Conclusión Final';

  @override
  String get metric_1_name => 'Desprecio';

  @override
  String get metric_1_description =>
      'Busca superioridad, disgusto, burla, lenguaje de ojos en blanco o insultos que coloquen a una pareja por debajo de la otra.';

  @override
  String get metric_2_name => 'Defensiva';

  @override
  String get metric_2_description =>
      'Rastrea la autoprotección refleja, contraataques, excusas y la negativa a considerar la queja de la otra persona.';

  @override
  String get metric_3_name => 'Bloqueo';

  @override
  String get metric_3_description =>
      'Identifica el cierre, el retiro, ignorar, negarse a responder o terminar conversaciones para evitar el compromiso.';

  @override
  String get metric_4_name => 'Crítica';

  @override
  String get metric_4_description =>
      'Detecta ataques al carácter o personalidad en lugar de comportamientos, necesidades o incidentes específicos.';

  @override
  String get metric_5_name => 'Indicadores de Gaslighting';

  @override
  String get metric_5_description =>
      'Marca intentos de hacer dudar a alguien de su memoria, percepción, cordura o legitimidad de su experiencia.';

  @override
  String get metric_6_name => 'Cambio de Culpa';

  @override
  String get metric_6_description =>
      'Mide si la responsabilidad se redirige a la otra pareja en lugar de reconocerse directamente.';

  @override
  String get metric_7_name => 'Patrón de Escalada';

  @override
  String get metric_7_description =>
      'Evalúa si el tono, acusaciones, intensidad o amenazas aumentan en lugar de avanzar hacia la resolución.';

  @override
  String get metric_8_name => 'Reconocimiento de Intentos de Reparación';

  @override
  String get metric_8_description =>
      'Verifica si las disculpas, humor, pausas, tranquilidad u ofertas de paz se notan y aceptan.';

  @override
  String get metric_9_name => 'Lenguaje de Responsabilidad';

  @override
  String get metric_9_description =>
      'Busca una clara propiedad del daño, responsabilidad específica y voluntad de cambiar el comportamiento.';

  @override
  String get metric_10_name => 'Respeto de Límites';

  @override
  String get metric_10_description =>
      'Evalúa si se respetan los límites establecidos en torno al tiempo, privacidad, cuerpo, emociones o contacto.';

  @override
  String get metric_11_name => 'Indicadores de Control Coercitivo';

  @override
  String get metric_11_description =>
      'Marca patrones de intimidación, restricción, monitoreo, dependencia o control sobre elecciones y movimientos.';

  @override
  String get metric_12_name => 'Lenguaje de Amenaza';

  @override
  String get metric_12_description =>
      'Identifica amenazas explícitas o implícitas que involucran seguridad, abandono, exposición, represalia o castigo.';

  @override
  String get metric_13_name => 'Desdén';

  @override
  String get metric_13_description =>
      'Detecta el descuido de preocupaciones, tratar necesidades como poco importantes o negarse a tomar el sufrimiento en serio.';

  @override
  String get metric_14_name => 'Invalidación';

  @override
  String get metric_14_description =>
      'Mide la negación, ridiculización o corrección de las emociones de otra persona en lugar de reconocerlas.';

  @override
  String get metric_15_name => 'Expresión de Empatía';

  @override
  String get metric_15_description =>
      'Busca tomar perspectiva, cuidado, reconocimiento emocional y preocupación por la experiencia de la otra persona.';

  @override
  String get metric_16_name => 'Reciprocidad';

  @override
  String get metric_16_description =>
      'Evalúa si la atención, esfuerzo, disculpa, compromiso y apoyo emocional fluyen en ambas direcciones.';

  @override
  String get metric_17_name => 'Regulación Emocional';

  @override
  String get metric_17_description =>
      'Evalúa la capacidad de mantenerse firme, pausar, calmarse y comunicarse sin reactividad explosiva.';

  @override
  String get metric_18_name => 'Sarcasmo Usado como Daño';

  @override
  String get metric_18_description =>
      'Marca el sarcasmo usado para menospreciar, castigar, humillar o disfrazar la hostilidad como humor.';

  @override
  String get metric_19_name => 'Insultos';

  @override
  String get metric_19_description =>
      'Identifica etiquetas despectivas, insultos, profanidad dirigida a la persona o ataques basados en identidad.';

  @override
  String get metric_20_name => 'Patrón de Tratamiento Silencioso';

  @override
  String get metric_20_description =>
      'Rastrea el silencio usado como castigo, control, evitación o retiro de conexión.';

  @override
  String get metric_21_name => 'Encuadre de Celos';

  @override
  String get metric_21_description =>
      'Evalúa sospecha, posesividad, acusaciones o celos presentados como prueba de cuidado.';

  @override
  String get metric_22_name => 'Presión de Aislamiento';

  @override
  String get metric_22_description =>
      'Marca esfuerzos para separar a una pareja de amigos, familia, sistemas de apoyo o perspectivas externas.';

  @override
  String get metric_23_name => 'Indicadores de Control Financiero';

  @override
  String get metric_23_description =>
      'Busca control de dinero, gastos, empleo, acceso a cuentas o independencia financiera.';

  @override
  String get metric_24_name => 'Indicadores de Invasión de Privacidad';

  @override
  String get metric_24_description =>
      'Detecta fisgoneo, demandas de contraseñas, verificaciones de dispositivos, rastreo de ubicación o violaciones de privacidad.';

  @override
  String get metric_25_name => 'Especificidad de Disculpa';

  @override
  String get metric_25_description =>
      'Mide si las disculpas nombran el daño exacto, impacto y corrección futura en lugar de quedarse vagas.';

  @override
  String get metric_26_name => 'Presión de Perdón';

  @override
  String get metric_26_description =>
      'Marca demandas de seguir adelante, perdonar rápidamente o dejar de discutir el daño antes de que ocurra la reparación.';

  @override
  String get metric_27_name => 'Minimización';

  @override
  String get metric_27_description =>
      'Detecta minimizar el daño, llamar preocupaciones serias dramáticas o reducir el impacto para evitar responsabilidad.';

  @override
  String get metric_28_name => 'Proyección';

  @override
  String get metric_28_description =>
      'Busca acusaciones que reflejen el propio comportamiento, motivos o sentimientos no resueltos del hablante.';

  @override
  String get metric_29_name => 'Patrón de Interrupción';

  @override
  String get metric_29_description =>
      'Rastrea cortar, hablar por encima, negarse a completar o controlar los turnos de conversación.';

  @override
  String get metric_30_name => 'Desviación de Tema';

  @override
  String get metric_30_description =>
      'Identifica cambiar de tema, plantear problemas no relacionados o evitar la preocupación central.';

  @override
  String get metric_31_name => 'Orientación a Resolución';

  @override
  String get metric_31_description =>
      'Mide si los mensajes apuntan hacia soluciones, claridad, acuerdos y próximos pasos.';

  @override
  String get metric_32_name => 'Resolución Mutua de Problemas';

  @override
  String get metric_32_description =>
      'Evalúa lenguaje colaborativo, responsabilidad compartida, lluvia de ideas y voluntad de encontrar compromisos viables.';

  @override
  String get metric_33_name => 'Inundación Emocional';

  @override
  String get metric_33_description =>
      'Detecta abrumo, pánico, cierre, espiral o incapacidad de procesar durante el conflicto.';

  @override
  String get metric_34_name => 'Pistas de Respuesta de Miedo';

  @override
  String get metric_34_description =>
      'Busca apaciguar, palabras cuidadosas, temor, preocupaciones de seguridad o miedo a la reacción de la pareja.';

  @override
  String get metric_35_name => 'Consistencia de Afirmaciones';

  @override
  String get metric_35_description =>
      'Evalúa si los relatos permanecen internamente consistentes a través de mensajes y tiempo.';

  @override
  String get metric_36_name => 'Recuerdo Basado en Evidencia';

  @override
  String get metric_36_description =>
      'Verifica si las afirmaciones hacen referencia a eventos concretos, citas, cronologías o comportamiento observable.';

  @override
  String get metric_37_name => 'Patrón de Demanda y Retiro';

  @override
  String get metric_37_description =>
      'Rastrea a una pareja buscando respuestas o cambio mientras la otra evita, se cierra o sale.';

  @override
  String get metric_38_name => 'Indicadores de Desequilibrio de Poder';

  @override
  String get metric_38_description =>
      'Marca poder de decisión desigual, miedo a consecuencias, dependencia, intimidación o control unilateral.';

  @override
  String get metric_39_name => 'Desacuerdo Respetuoso';

  @override
  String get metric_39_description =>
      'Mide si el conflicto preserva la dignidad, curiosidad y desacuerdo sin degradación.';

  @override
  String get metric_40_name => 'Ciclo de Ruptura y Reparación';

  @override
  String get metric_40_description =>
      'Evalúa si el conflicto es seguido por reconocimiento, reconexión y reparación real.';

  @override
  String get metric_41_name => 'Retiro de Afecto';

  @override
  String get metric_41_description =>
      'Detecta amor, calidez, sexo, atención o tranquilidad retenidos como castigo o palanca.';

  @override
  String get metric_42_name => 'Referencias de Humillación Pública';

  @override
  String get metric_42_description =>
      'Marca amenazas, bromas o acciones que avergüenzan a la pareja frente a otros.';

  @override
  String get metric_43_name => 'Pistas de Conflicto Vinculado a Sustancias';

  @override
  String get metric_43_description =>
      'Busca el uso de alcohol o drogas vinculado a agresión, falta de fiabilidad, conflicto o daño.';

  @override
  String get metric_44_name => 'Presión de Conflicto Parental';

  @override
  String get metric_44_description =>
      'Identifica hijos, custodia, roles parentales o culpa parental usados en conflicto o palanca.';

  @override
  String get metric_45_name => 'Respeto de Límites Sexuales';

  @override
  String get metric_45_description =>
      'Evalúa el respeto por el consentimiento, presión, negativa, comodidad, momento y autonomía sexual.';

  @override
  String get metric_46_name => 'Indicadores de Acoso Digital';

  @override
  String get metric_46_description =>
      'Rastrea mensajes no deseados repetidos, llamadas spam, presión en línea, vigilancia o intimidación basada en plataformas.';

  @override
  String get metric_47_name => 'Lenguaje de Monitoreo o Vigilancia';

  @override
  String get metric_47_description =>
      'Marca verificar paradero, demandar pruebas, rastrear comportamiento o verificación constante.';

  @override
  String get metric_48_name => 'Orientación Futura';

  @override
  String get metric_48_description =>
      'Mide si las parejas discuten mejora futura, compromisos, planes o dirección constructiva.';

  @override
  String get metric_49_name => 'Señales de Planificación de Seguridad';

  @override
  String get metric_49_description =>
      'Busca intentos de buscar ayuda, crear distancia, documentar daño o planificar seguridad física/emocional.';

  @override
  String get metric_50_name => 'Intentos Mutuos de Desescalada';

  @override
  String get metric_50_description =>
      'Rastrea pausas, lenguaje calmante, tono más suave, tiempos muertos e intentos de ambas parejas para reducir la intensidad.';

  @override
  String get metric_51_name => 'Pistas de Apego Seguro';

  @override
  String get metric_51_description =>
      'Identifica confianza, tranquilidad directa, disponibilidad emocional y comodidad con cercanía e independencia.';

  @override
  String get metric_52_name => 'Activación de Apego Ansioso';

  @override
  String get metric_52_description =>
      'Marca comportamiento de protesta, necesidades urgentes de tranquilidad, miedo al abandono y sensibilidad elevada a la distancia.';

  @override
  String get metric_53_name => 'Distanciamiento de Apego Evitativo';

  @override
  String get metric_53_description =>
      'Detecta minimización emocional, defensas de independencia, retiro de vulnerabilidad o incomodidad con necesidades.';

  @override
  String get metric_54_name => 'Señales de Apego Desorganizado';

  @override
  String get metric_54_description =>
      'Busca ciclos de acercamiento-evitación, miedo mezclado con necesidad, reacciones caóticas o patrones de intimidad confusos.';

  @override
  String get metric_55_name => 'Ofertas Emocionales y Respuestas';

  @override
  String get metric_55_description =>
      'Mide invitaciones para atención, comodidad o conexión y si se aceptan o se pierden.';

  @override
  String get metric_56_name => 'Apartarse de la Conexión';

  @override
  String get metric_56_description =>
      'Marca ignorar, descartar o no responder a ofertas de cercanía o apoyo.';

  @override
  String get metric_57_name => 'Volverse Contra la Conexión';

  @override
  String get metric_57_description =>
      'Detecta respuestas hostiles o punitivas a intentos de afecto, vulnerabilidad o reparación.';

  @override
  String get metric_58_name => 'Sobrescritura de Sentimiento Positivo';

  @override
  String get metric_58_description =>
      'Busca generosidad, beneficio de la duda, afecto e interpretar el conflicto a través del cuidado.';

  @override
  String get metric_59_name => 'Sobrescritura de Sentimiento Negativo';

  @override
  String get metric_59_description =>
      'Marca asumir mala intención, interpretar mensajes neutrales negativamente y encuadre hostil persistente.';

  @override
  String get metric_60_name => 'Patrón de Inicio Duro';

  @override
  String get metric_60_description =>
      'Identifica conversaciones que comienzan con acusación, ataque, desprecio o culpa en lugar de una solicitud.';

  @override
  String get metric_61_name => 'Patrón de Inicio Suave';

  @override
  String get metric_61_description =>
      'Busca aperturas suaves usando sentimientos, necesidades, solicitudes específicas y lenguaje no acusatorio.';

  @override
  String get metric_62_name => 'Autocalmación Fisiológica';

  @override
  String get metric_62_description =>
      'Evalúa intentos de pausar, respirar, tomar espacio o regular el cuerpo antes de continuar el conflicto.';

  @override
  String get metric_63_name => 'Patrón de Evitación de Conflicto';

  @override
  String get metric_63_description =>
      'Rastrea evitación repetida de temas necesarios, incomodidad, desacuerdo u honestidad emocional.';

  @override
  String get metric_64_name => 'Estilo de Conflicto Volátil';

  @override
  String get metric_64_description =>
      'Detecta conflicto de alta intensidad con expresión directa que aún puede incluir compromiso y reparación.';

  @override
  String get metric_65_name => 'Estilo de Conflicto Validante';

  @override
  String get metric_65_description =>
      'Mide si las parejas reconocen la perspectiva del otro mientras están en desacuerdo.';

  @override
  String get metric_66_name => 'Estilo de Conflicto Hostil';

  @override
  String get metric_66_description =>
      'Marca crítica frecuente, desprecio, defensividad, ataques y encuadre adversarial.';

  @override
  String get metric_67_name => 'Patrón Hostil-Detachado';

  @override
  String get metric_67_description =>
      'Identifica hostilidad fría, desconexión emocional, desprecio y baja motivación de reparación.';

  @override
  String get metric_68_name => 'Voluntad de Compromiso';

  @override
  String get metric_68_description =>
      'Busca flexibilidad, negociación, propuestas de término medio y sacrificios que respeten ambas necesidades.';

  @override
  String get metric_69_name => 'Aceptación de Influencia';

  @override
  String get metric_69_description =>
      'Mide la apertura a ser afectado por los sentimientos, necesidades o perspectiva de la pareja.';

  @override
  String get metric_70_name => 'Señales de Conflicto Estancado';

  @override
  String get metric_70_description =>
      'Marca problemas no resueltos repetidos vinculados a valores, sueños, identidad o incompatibilidad crónica.';

  @override
  String get metric_71_name => 'Encuadre de Problema Soluble';

  @override
  String get metric_71_description =>
      'Detecta definiciones de problemas prácticas y concretas que pueden llevar a acuerdos específicos.';

  @override
  String get metric_72_name => 'Referencias de Significado Compartido';

  @override
  String get metric_72_description =>
      'Busca valores, rituales, objetivos, recuerdos o lenguaje de identidad que crea una historia de relación compartida.';

  @override
  String get metric_73_name => 'Conciencia del Mapa de Amor';

  @override
  String get metric_73_description =>
      'Evalúa el conocimiento del mundo interior, estresores, preferencias, miedos y vida diaria de la pareja.';

  @override
  String get metric_74_name => 'Afecto y Admiración';

  @override
  String get metric_74_description =>
      'Identifica aprecio, respeto, calidez, cumplidos, gratitud y consideración positiva.';

  @override
  String get metric_75_name => 'Desequilibrio de Trabajo Emocional';

  @override
  String get metric_75_description =>
      'Marca a una pareja llevando planificación desproporcionada, calma, recuerdo, explicación o mantenimiento de relación.';

  @override
  String get metric_76_name => 'Descuido de Carga Mental';

  @override
  String get metric_76_description =>
      'Detecta minimizar el trabajo de planificación invisible, coordinación del hogar, programación o seguimiento de responsabilidad.';

  @override
  String get metric_77_name => 'Pistas de Incompetencia Armada';

  @override
  String get metric_77_description =>
      'Busca reclamar incapacidad, confusión o indefensión para evitar responsabilidad justa.';

  @override
  String get metric_78_name => 'Sensibilidad a Disparadores de Trauma';

  @override
  String get metric_78_description =>
      'Mide la conciencia de disparadores, respuestas al trauma y manejo cuidadoso de temas vulnerables.';

  @override
  String get metric_79_name => 'Pistas de Hipervigilancia';

  @override
  String get metric_79_description =>
      'Marca escanear en busca de peligro, monitoreo excesivo del tono, miedo a errores o alerta emocional constante.';

  @override
  String get metric_80_name => 'Lenguaje de Miedo al Abandono';

  @override
  String get metric_80_description =>
      'Detecta miedo a ser dejado, reemplazado, ignorado, descartado o abandonado emocionalmente.';

  @override
  String get metric_81_name => 'Patrón de Búsqueda de Tranquilidad';

  @override
  String get metric_81_description =>
      'Rastrea solicitudes repetidas de prueba de amor, compromiso, seguridad o interés continuo.';

  @override
  String get metric_82_name => 'Ciclo Perseguidor-Distanciador';

  @override
  String get metric_82_description =>
      'Identifica a una pareja escalando la búsqueda de cercanía mientras la otra aumenta la distancia.';

  @override
  String get metric_83_name => 'Acumulación de Rencor';

  @override
  String get metric_83_description =>
      'Busca agravios almacenados, referencias repetidas al pasado, amargura y deuda emocional no resuelta.';

  @override
  String get metric_84_name => 'Comportamiento de Conteo de Puntos';

  @override
  String get metric_84_description =>
      'Marca conteo transaccional de fallas, favores, sacrificios o errores para ganar ventaja.';

  @override
  String get metric_85_name => 'Afecto Condicional';

  @override
  String get metric_85_description =>
      'Detecta amor, aprobación, acceso o calidez ofrecidos solo cuando se logra el cumplimiento.';

  @override
  String get metric_86_name => 'Indicadores de Love Bombing';

  @override
  String get metric_86_description =>
      'Marca afecto intenso, promesas, presión o idealización usados para acelerar el apego o el control.';

  @override
  String get metric_87_name => 'Intentos de Hoovering';

  @override
  String get metric_87_description =>
      'Identifica intentos de volver a atraer a alguien a través de culpa, nostalgia, promesas, crisis o afecto repentino.';

  @override
  String get metric_88_name => 'Patrón DARVO';

  @override
  String get metric_88_description =>
      'Detecta respuestas de negar, atacar y revertir víctima-ofensor cuando se confronta sobre el daño.';

  @override
  String get metric_89_name => 'Patrón de Postura de Víctima';

  @override
  String get metric_89_description =>
      'Marca auto-victimización recurrente que evita la responsabilidad o redirige la atención del daño causado.';

  @override
  String get metric_90_name => 'Encuadre de Superioridad Moral';

  @override
  String get metric_90_description =>
      'Busca rectitud, reclamos de pureza o superioridad ética usados para dominar el conflicto.';

  @override
  String get metric_91_name => 'Asesinato de Carácter';

  @override
  String get metric_91_description =>
      'Detecta ataques amplios a identidad, integridad, salud mental o valor en lugar de comportamiento específico.';

  @override
  String get metric_92_name => 'Indicadores de Triangulación';

  @override
  String get metric_92_description =>
      'Marca traer terceros al conflicto para presionar, comparar, validar o desestabilizar a la pareja.';

  @override
  String get metric_93_name => 'Presión de Comparación Social';

  @override
  String get metric_93_description =>
      'Busca comparaciones con ex, amigos, otras parejas o ideales usados para avergonzar o coaccionar.';

  @override
  String get metric_94_name => 'Apoyo a la Autonomía';

  @override
  String get metric_94_description =>
      'Mide el respeto por elecciones independientes, amistades, objetivos, límites y agencia personal.';

  @override
  String get metric_95_name => 'Respeto al Consentimiento y Elección';

  @override
  String get metric_95_description =>
      'Evalúa si las decisiones se toman libremente sin presión, culpa, amenazas o manipulación.';

  @override
  String get metric_96_name => 'Planificación Colaborativa';

  @override
  String get metric_96_description =>
      'Busca programación compartida, decisiones conjuntas, responsabilidades coordinadas y seguimiento práctico.';

  @override
  String get metric_97_name => 'Seguimiento de Reparación';

  @override
  String get metric_97_description =>
      'Mide si los cambios prometidos se reflejan más tarde en el comportamiento, no solo en palabras.';

  @override
  String get metric_98_name => 'Evidencia de Comportamiento Cambiado';

  @override
  String get metric_98_description =>
      'Verifica acciones observables y repetidas que muestran aprendizaje, ajuste o comportamiento dañino reducido.';

  @override
  String get metric_99_name => 'Lenguaje de Seguridad Emocional';

  @override
  String get metric_99_description =>
      'Identifica lenguaje que invita a la honestidad, reduce el miedo, protege la dignidad y tranquiliza la expresión segura.';

  @override
  String get metric_100_name => 'Ambivalencia en la Relación';

  @override
  String get metric_100_description =>
      'Detecta incertidumbre, compromiso mixto, mensajes de empuje-tirón o deseo poco claro de continuar.';

  @override
  String get unableToOpenConversations => 'No se pueden abrir conversaciones';

  @override
  String get unableToOpenConversationsBody =>
      'Algo salió mal al cargar sus conversaciones. Por favor, inténtelo de nuevo.';

  @override
  String get unableToLoadConversationsBody =>
      'No se pueden cargar las conversaciones. Por favor, verifique sus permisos e inténtelo de nuevo.';

  @override
  String get errorLoadingConversationsBody =>
      'Error al cargar conversaciones. Por favor, inténtelo de nuevo.';

  @override
  String get smsPermissionRequired => 'Permiso SMS requerido';

  @override
  String get smsPermissionRequiredBody =>
      'Para analizar conversaciones SMS, necesitamos permiso para leer sus mensajes. Su privacidad es importante — los mensajes solo se analizan localmente y nunca se almacenan en nuestros servidores.';

  @override
  String get grantSmsPermission => 'Conceder permiso SMS';

  @override
  String get noSmsConversationsFound => 'No se encontraron conversaciones SMS';

  @override
  String get noConversationsMatchSearch =>
      'Ninguna conversación coincide con su búsqueda';

  @override
  String get noSmsMessagesOnDevice =>
      'No tiene mensajes SMS en este dispositivo';

  @override
  String get tryDifferentSearch => 'Intente un término de búsqueda diferente';

  @override
  String get clearSearch => 'Borrar búsqueda';

  @override
  String selectedFile(String filename) {
    return 'Seleccionado: $filename';
  }

  @override
  String get invalidFile => 'Archivo no válido';

  @override
  String get fileImport => 'Importar archivo';

  @override
  String get fileImportNotImplemented =>
      'El análisis de archivos aún no está implementado para este tipo de archivo.';

  @override
  String get errorPickingFile =>
      'No se puede abrir el archivo. Por favor, inténtelo de nuevo.';

  @override
  String get readyToCapture => 'Listo para capturar';

  @override
  String get readyToCaptureBody =>
      'Cambie a la aplicación de Mensajes ahora y comience a tomar capturas de pantalla.\n\nRegrese a esta aplicación cuando haya terminado y toque \"Finalizar y procesar\".';

  @override
  String get noScreenshotsToProcess =>
      'No hay capturas de pantalla para procesar.';

  @override
  String processingScreenshot(int current, int total) {
    return 'Procesando captura $current de $total...';
  }

  @override
  String get noMessagesFound => 'No se encontraron mensajes';

  @override
  String get noMessagesFoundBody =>
      'No se pudieron extraer mensajes de las capturas de pantalla.\n\nAsegúrese de que las capturas muestren claramente la conversación.';

  @override
  String loadedMessages(int count) {
    return 'Se cargaron $count mensajes de capturas de pantalla';
  }

  @override
  String get processingError => 'Error de procesamiento';

  @override
  String get processingErrorBody =>
      'Error al procesar capturas de pantalla. Por favor, inténtelo de nuevo.';

  @override
  String metricListSavedAs(String name) {
    return 'Sus selecciones se han guardado como \"$name\".';
  }

  @override
  String metricListLoadedName(String name) {
    return 'Las selecciones \"$name\" han sido recuperadas y aplicadas.';
  }

  @override
  String conversationLoaded(int count, String name) {
    return 'Se cargaron $count mensajes de $name';
  }

  @override
  String get loadButton => 'Cargar';

  @override
  String get photoPermissionRequired =>
      'Se requiere permiso de la biblioteca de fotos para detectar capturas de pantalla.';

  @override
  String get initializingConnection => 'Inicializando conexión segura...';

  @override
  String get configurationRequired => 'Configuración requerida';

  @override
  String get goBack => 'Volver';

  @override
  String get enableDateRangeFiltering =>
      'Habilitar filtrado por rango de fechas';

  @override
  String get clearSelectedDateRange => 'Borrar rango de fechas seleccionado';

  @override
  String get largeThreadNoticeTitle => 'AVISO AL USUARIO';

  @override
  String get largeThreadNoticeBody =>
      'Al tratar con hilos de texto excepcionalmente grandes, algunas pantallas de carga en esta aplicación podrían superar un minuto y medio a veces.\n\nLa aplicación no se bloquea. Si ve un indicador de estado girando, la aplicación todavía está cargando.\n\nPor favor, sea paciente en esos casos, ya que el tiempo de carga podría ser más largo de lo habitual en comparación con otras aplicaciones, especialmente cuando se trata de un conjunto de datos grande como un hilo con 50,000 mensajes.';

  @override
  String get neverShowThisAgain => 'No volver a mostrar este mensaje';

  @override
  String loadingConversationWith(String name) {
    return 'Cargando conversación\ncon $name…';
  }

  @override
  String get iosCaptureInstructions =>
      '1. Abra la aplicación de Mensajes y seleccione la conversación\n2. Desplácese hasta el mensaje más antiguo que desee analizar\n3. Toque \"Iniciar captura\" a continuación\n4. Tome capturas de pantalla mientras se desplaza por la conversación\n5. Cuando termine, toque \"Finalizar y procesar\"';

  @override
  String get howToCaptureIosMessages => 'Cómo capturar mensajes de iOS';

  @override
  String get deepSeekApiKey => 'Clave de API de DeepSeek';

  @override
  String get enterYourDeepSeekApiKeyToEnableAiAnalysis =>
      'Ingrese su clave de API de DeepSeek para habilitar el análisis con IA.';

  @override
  String get getYourApiKeyFrom =>
      'Obtenga su clave de API de: https://platform.deepseek.com';

  @override
  String get apiKey => 'Clave de API';

  @override
  String get skPlaceholder => 'sk-...';

  @override
  String get yourApiKeyIsStoredSecurely =>
      'Su clave de API se almacena de forma segura en su dispositivo y nunca se comparte.';

  @override
  String get pleaseEnterApiKey => 'Por favor, ingrese una clave de API';

  @override
  String get apiKeySavedSuccessfully => '¡Clave de API guardada exitosamente!';

  @override
  String get pleaseBePatientLongerTextThreads =>
      'Por favor, sea paciente, los conjuntos de datos de hilos de texto más largos tardan bastante en cargar';

  @override
  String get almostThereBigOne =>
      'Casi terminado, Wow, este debe haber sido grande';

  @override
  String get pleaseBePatientLargeDatasets =>
      'Por favor, sea paciente, los conjuntos de datos grandes podrían resultar en tiempos de carga mayores a un minuto y medio';

  @override
  String continuingToLoadMassiveThread(String name) {
    return 'Continuando cargando el hilo masivo con $name…';
  }

  @override
  String get noMessagesInDateRange =>
      'No se encontraron mensajes en el rango de fechas seleccionado. Por favor, seleccione fechas diferentes o borre el filtro de fecha.';

  @override
  String get purchaseCustomMetricTileTitle => 'Comprar Métrica Personalizada';

  @override
  String get purchaseCustomMetricTileDescription =>
      'Por una tarifa única de \$4.99, ingrese un nombre y definición de métrica personalizada guardados permanentemente junto con sus otras métricas para usar en cualquier análisis futuro. Compre métricas personalizadas ilimitadas.';

  @override
  String get purchaseCustomMetricConfirmTitle =>
      'Comprar Métrica Personalizada';

  @override
  String get purchaseCustomMetricConfirmBody =>
      'Se le cobrará \$4.99 (una vez) para desbloquear una ranura de métrica personalizada.\n\nSu nombre y definición de métrica personalizada son permanentes y no pueden cambiarse nunca una vez guardados, así que elija cuidadosamente.';

  @override
  String get purchaseCustomMetricConfirmButton => 'Comprar — \$4.99';

  @override
  String get purchaseCustomMetricEnterNameTitle =>
      'Nombre de Métrica Personalizada';

  @override
  String get purchaseCustomMetricEnterNamePrompt =>
      'Ingrese el nombre para su métrica personalizada:';

  @override
  String get purchaseCustomMetricNameHint => 'Nombre de la Métrica';

  @override
  String get purchaseCustomMetricConfirmNameTitle =>
      'Confirmar Nombre de Métrica';

  @override
  String get purchaseCustomMetricConfirmNameYouEntered => 'Ingresó:\n\n';

  @override
  String get purchaseCustomMetricConfirmNameWarning =>
      '\n\n⚠️  Esto es FINAL y NUNCA se puede cambiar.';

  @override
  String get purchaseCustomMetricReenterName => 'Ups — Reingresar Nombre';

  @override
  String get purchaseCustomMetricSaveName => 'OK — Guardar Nombre de Métrica';

  @override
  String purchaseCustomMetricDefineTitleWithName(String name) {
    return 'Definir: $name';
  }

  @override
  String purchaseCustomMetricDefinePromptWithName(String name) {
    return 'Ingrese el significado de su Métrica Personalizada: $name';
  }

  @override
  String get purchaseCustomMetricMeaningHint =>
      'Describa qué significa esta métrica, qué comportamientos busca y cómo se aplica a la dinámica de la relación...';

  @override
  String get purchaseCustomMetricReenter => 'Ups — Reingresar';

  @override
  String get purchaseCustomMetricSaveMeaning => 'OK — Guardar Significado';

  @override
  String get purchaseCustomMetricPreviewTitle =>
      'Vista Previa de su Métrica Personalizada';

  @override
  String get purchaseCustomMetricPreviewSubtitle =>
      'Así es como se verá su ficha:';

  @override
  String get purchaseCustomMetricLastChanceWarning =>
      '⚠️  Esta es su ÚLTIMA OPORTUNIDAD de cambiar de opinión.\nUna vez confirmado, el nombre y la definición son permanentes.';

  @override
  String get purchaseCustomMetricCancelEverything => 'Cancelar Todo';

  @override
  String get purchaseCustomMetricCommit => 'Confirmar Métrica Personalizada';

  @override
  String purchaseCustomMetricSuccess(String name) {
    return '✓ \"$name\" añadido a sus métricas. ¡Ahora puede seleccionarlo para el análisis!';
  }

  @override
  String get purchaseCustomMetricProcessingTitle => 'Procesando Compra...';

  @override
  String get purchaseCustomMetricProcessingBody =>
      'Esperando confirmación de la tienda.\nPor favor, no cierre la aplicación.';

  @override
  String get next => 'Siguiente';

  @override
  String get cancelNotReady => 'Cancelar — No estaba listo';

  @override
  String get packGoodLabel => 'El Bueno';

  @override
  String get packBadLabel => 'El Feo';

  @override
  String get packUglyLabel => 'El Malo';

  @override
  String get metric_good_1_name => 'Active Listening Cues';

  @override
  String get metric_good_1_description =>
      'Detects paraphrasing, clarifying questions, and demonstrated understanding of the partner\'s perspective in text.';

  @override
  String get metric_good_2_name => 'Appreciation Expression';

  @override
  String get metric_good_2_description =>
      'Identifies specific gratitude, recognition of effort, and acknowledgment of partner\'s positive qualities or actions.';

  @override
  String get metric_good_3_name => 'Affirmation Language';

  @override
  String get metric_good_3_description =>
      'Looks for statements that validate the partner\'s feelings, experiences, worth, or right to have needs.';

  @override
  String get metric_good_4_name => 'Collaborative Tone';

  @override
  String get metric_good_4_description =>
      'Measures use of \"we,\" joint problem-solving language, and framing issues as shared challenges to address together.';

  @override
  String get metric_good_5_name => 'Curiosity About Partner';

  @override
  String get metric_good_5_description =>
      'Tracks asking questions about the partner\'s thoughts, feelings, day, preferences, or inner experience.';

  @override
  String get metric_good_6_name => 'Vulnerability Expression';

  @override
  String get metric_good_6_description =>
      'Identifies sharing fears, insecurities, needs, or emotional truths without defensiveness or blame.';

  @override
  String get metric_good_7_name => 'Humor as Connection';

  @override
  String get metric_good_7_description =>
      'Detects playful shared laughter that brings partners together rather than mocking or belittling.';

  @override
  String get metric_good_8_name => 'Reassurance Offering';

  @override
  String get metric_good_8_description =>
      'Looks for proactive statements that provide comfort, security, or confidence to the anxious partner.';

  @override
  String get metric_good_9_name => 'Compliment Frequency';

  @override
  String get metric_good_9_description =>
      'Measures genuine specific praise about appearance, character, abilities, or positive actions.';

  @override
  String get metric_good_10_name => 'Emotional Availability';

  @override
  String get metric_good_10_description =>
      'Assesses responsiveness to the partner\'s emotional needs, presence during distress, and willingness to engage.';

  @override
  String get metric_good_11_name => 'Gratitude Habit';

  @override
  String get metric_good_11_description =>
      'Identifies regular expressions of thanks for small things, effort, presence, or support.';

  @override
  String get metric_good_12_name => 'Supportive Language';

  @override
  String get metric_good_12_description =>
      'Tracks statements offering help, encouragement, belief in the partner\'s abilities, or standing beside them.';

  @override
  String get metric_good_13_name => 'Gentle Disagreement';

  @override
  String get metric_good_13_description =>
      'Measures ability to express different views while preserving respect, curiosity, and the relationship.';

  @override
  String get metric_good_14_name => 'Apology Sincerity';

  @override
  String get metric_good_14_description =>
      'Detects genuine remorse, understanding of impact, and commitment to change without excuses.';

  @override
  String get metric_good_15_name => 'Forgiveness Acceptance';

  @override
  String get metric_good_15_description =>
      'Looks for willingness to let go of past harm, move forward, and rebuild trust after repair.';

  @override
  String get metric_good_16_name => 'Quality Time Initiation';

  @override
  String get metric_good_16_description =>
      'Identifies offers to spend focused time together, plan activities, or create connection moments.';

  @override
  String get metric_good_17_name => 'Physical Affection Cues';

  @override
  String get metric_good_17_description =>
      'Tracks mentions of touch, hugs, kisses, or physical closeness as expressions of care and intimacy.';

  @override
  String get metric_good_18_name => 'Shared Joy Recognition';

  @override
  String get metric_good_18_description =>
      'Measures celebrating partner\'s wins, achievements, happiness, or good news with genuine enthusiasm.';

  @override
  String get metric_good_19_name => 'Conflict Resolution Effort';

  @override
  String get metric_good_19_description =>
      'Identifies attempts to find solutions, compromise, or restore peace after disagreement.';

  @override
  String get metric_good_20_name => 'Patience Demonstration';

  @override
  String get metric_good_20_description =>
      'Detects tolerance for partner\'s pace, struggles, learning curve, or emotional processing needs.';

  @override
  String get metric_good_21_name => 'Perspective-Taking Language';

  @override
  String get metric_good_21_description =>
      'Looks for statements showing understanding of the partner\'s viewpoint, context, or emotional reality.';

  @override
  String get metric_good_22_name => 'Reliability Signals';

  @override
  String get metric_good_22_description =>
      'Tracks following through on promises, showing up consistently, and being dependable.';

  @override
  String get metric_good_23_name => 'Respect for Differences';

  @override
  String get metric_good_23_description =>
      'Measures acceptance of partner\'s unique traits, preferences, opinions, and ways of being.';

  @override
  String get metric_good_24_name => 'Openness to Feedback';

  @override
  String get metric_good_24_description =>
      'Identifies receptiveness to partner\'s concerns, willingness to hear criticism, and desire to improve.';

  @override
  String get metric_good_25_name => 'Validation of Emotions';

  @override
  String get metric_good_25_description =>
      'Detects acknowledgment that the partner\'s feelings are real, understandable, and worthy of attention.';

  @override
  String get metric_good_26_name => 'Encouragement Language';

  @override
  String get metric_good_26_description =>
      'Looks for statements that inspire confidence, motivate action, or support the partner\'s goals.';

  @override
  String get metric_good_27_name => 'Intimate Disclosure';

  @override
  String get metric_good_27_description =>
      'Identifies sharing personal thoughts, dreams, fears, or secrets that deepen emotional connection.';

  @override
  String get metric_good_28_name => 'Attunement Signals';

  @override
  String get metric_good_28_description =>
      'Measures noticing the partner\'s mood, needs, or distress without being told explicitly.';

  @override
  String get metric_good_29_name => 'Positive Reframing';

  @override
  String get metric_good_29_description =>
      'Detects finding silver linings, growth opportunities, or constructive angles in difficult situations.';

  @override
  String get metric_good_30_name => 'Commitment Language';

  @override
  String get metric_good_30_description =>
      'Tracks expressions of dedication, long-term thinking, and investment in the relationship\'s future.';

  @override
  String get metric_good_31_name => 'Flexibility Demonstration';

  @override
  String get metric_good_31_description =>
      'Identifies willingness to adapt plans, adjust expectations, or meet the partner halfway.';

  @override
  String get metric_good_32_name => 'Protective Language';

  @override
  String get metric_good_32_description =>
      'Looks for statements showing the partner\'s safety, wellbeing, and interests matter deeply.';

  @override
  String get metric_good_33_name => 'Celebration of Milestones';

  @override
  String get metric_good_33_description =>
      'Measures acknowledging anniversaries, achievements, or meaningful moments together.';

  @override
  String get metric_good_34_name => 'Constructive Feedback';

  @override
  String get metric_good_34_description =>
      'Detects offering suggestions for improvement that are kind, specific, and growth-focused.';

  @override
  String get metric_good_35_name => 'Presence During Hardship';

  @override
  String get metric_good_35_description =>
      'Identifies staying engaged when the partner is struggling, grieving, or facing challenges.';

  @override
  String get metric_good_36_name => 'Admiration Expression';

  @override
  String get metric_good_36_description =>
      'Tracks genuine respect for the partner\'s character, strength, intelligence, or resilience.';

  @override
  String get metric_good_37_name => 'Playfulness Indicators';

  @override
  String get metric_good_37_description =>
      'Looks for lighthearted teasing, inside jokes, or fun interactions that strengthen bonding.';

  @override
  String get metric_good_38_name => 'Empathic Mirroring';

  @override
  String get metric_good_38_description =>
      'Measures reflecting back the partner\'s emotions to show understanding and validation.';

  @override
  String get metric_good_39_name => 'Acceptance Language';

  @override
  String get metric_good_39_description =>
      'Detects embracing the partner as they are, including flaws, without demanding change.';

  @override
  String get metric_good_40_name => 'Supportive Presence';

  @override
  String get metric_good_40_description =>
      'Identifies being there without fixing, offering comfort through listening and companionship.';

  @override
  String get metric_good_41_name => 'Genuine Interest';

  @override
  String get metric_good_41_description =>
      'Tracks asking follow-up questions and remembering details about the partner\'s life and concerns.';

  @override
  String get metric_good_42_name => 'Reciprocal Effort';

  @override
  String get metric_good_42_description =>
      'Measures both partners contributing equally to emotional work, planning, and relationship maintenance.';

  @override
  String get metric_good_43_name => 'Forgiveness Language';

  @override
  String get metric_good_43_description =>
      'Looks for releasing grudges, offering second chances, and choosing to move past hurt.';

  @override
  String get metric_good_44_name => 'Mutual Respect Signals';

  @override
  String get metric_good_44_description =>
      'Detects treating the partner as an equal, honoring their opinions, and valuing their input.';

  @override
  String get metric_good_45_name => 'Emotional Honesty';

  @override
  String get metric_good_45_description =>
      'Identifies truthful expression of feelings without manipulation, exaggeration, or strategic withholding.';

  @override
  String get metric_good_46_name => 'Supportive Listening';

  @override
  String get metric_good_46_description =>
      'Measures allowing the partner to fully express without interrupting, judging, or immediately problem-solving.';

  @override
  String get metric_good_47_name => 'Affectionate Nicknames';

  @override
  String get metric_good_47_description =>
      'Tracks use of loving terms of endearment that convey warmth and intimate connection.';

  @override
  String get metric_good_48_name => 'Shared Laughter';

  @override
  String get metric_good_48_description =>
      'Identifies moments of mutual humor and joy that create positive bonding experiences.';

  @override
  String get metric_good_49_name => 'Thoughtful Gestures';

  @override
  String get metric_good_49_description =>
      'Looks for small acts of kindness, remembering preferences, or doing things to make partner happy.';

  @override
  String get metric_good_50_name => 'Confidence in Partner';

  @override
  String get metric_good_50_description =>
      'Detects belief in the partner\'s abilities, potential, and capacity to handle challenges.';

  @override
  String get metric_good_51_name => 'Healthy Interdependence';

  @override
  String get metric_good_51_description =>
      'Measures balance between togetherness and independence, supporting each other\'s autonomy.';

  @override
  String get metric_good_52_name => 'Conflict De-escalation';

  @override
  String get metric_good_52_description =>
      'Identifies soft language, breaks, or solution-offering to calm heated discussions.';

  @override
  String get metric_good_53_name => 'Genuine Apology';

  @override
  String get metric_good_53_description =>
      'Tracks full acknowledgment of wrongdoing without minimizing, defending, or shifting blame.';

  @override
  String get metric_good_54_name => 'Emotional Support Offers';

  @override
  String get metric_good_54_description =>
      'Looks for proactive check-ins, asking how the partner is doing, and offering help.';

  @override
  String get metric_good_55_name => 'Respectful Boundaries';

  @override
  String get metric_good_55_description =>
      'Measures honoring the partner\'s stated limits while maintaining own healthy boundaries.';

  @override
  String get metric_good_56_name => 'Positive Anticipation';

  @override
  String get metric_good_56_description =>
      'Detects excitement about the future together, planning ahead, and looking forward to shared experiences.';

  @override
  String get metric_good_57_name => 'Attentiveness Signals';

  @override
  String get metric_good_57_description =>
      'Identifies remembering important dates, preferences, and details that show the partner matters.';

  @override
  String get metric_good_58_name => 'Encouraging Growth';

  @override
  String get metric_good_58_description =>
      'Tracks supporting the partner\'s personal development, learning, and pursuit of goals.';

  @override
  String get metric_good_59_name => 'Tender Language';

  @override
  String get metric_good_59_description =>
      'Looks for soft, caring word choices that convey gentleness and emotional warmth.';

  @override
  String get metric_good_60_name => 'Mutual Accountability';

  @override
  String get metric_good_60_description =>
      'Measures both partners taking responsibility for their actions and their impact.';

  @override
  String get metric_good_61_name => 'Celebration of Partner';

  @override
  String get metric_good_61_description =>
      'Detects publicly or privately expressing pride, joy, or admiration for the partner.';

  @override
  String get metric_good_62_name => 'Consistent Affection';

  @override
  String get metric_good_62_description =>
      'Identifies regular expressions of love that do not fluctuate based on performance or compliance.';

  @override
  String get metric_good_63_name => 'Emotional Attunement';

  @override
  String get metric_good_63_description =>
      'Tracks sensing and responding to subtle shifts in the partner\'s emotional state.';

  @override
  String get metric_good_64_name => 'Collaborative Decision-Making';

  @override
  String get metric_good_64_description =>
      'Measures discussing options together and making choices that consider both partners\' needs.';

  @override
  String get metric_good_65_name => 'Reassurance Without Demand';

  @override
  String get metric_good_65_description =>
      'Looks for offering comfort and security without requiring the partner to earn it.';

  @override
  String get metric_good_66_name => 'Authentic Connection';

  @override
  String get metric_good_66_description =>
      'Detects genuine presence, real sharing, and dropping pretense in interactions.';

  @override
  String get metric_good_67_name => 'Mutual Encouragement';

  @override
  String get metric_good_67_description =>
      'Identifies both partners cheering each other on and celebrating efforts not just outcomes.';

  @override
  String get metric_good_68_name => 'Respectful Questioning';

  @override
  String get metric_good_68_description =>
      'Tracks asking about the partner\'s perspective with genuine curiosity rather than interrogation.';

  @override
  String get metric_good_69_name => 'Loving Consistency';

  @override
  String get metric_good_69_description =>
      'Measures showing up the same way in good times and hard times, reliable in affection.';

  @override
  String get metric_good_70_name => 'Emotional Reciprocity';

  @override
  String get metric_good_70_description =>
      'Looks for both partners sharing feelings, needs, and vulnerabilities in balanced ways.';

  @override
  String get metric_good_71_name => 'Joyful Presence';

  @override
  String get metric_good_71_description =>
      'Detects genuine happiness in the partner\'s company and enthusiasm for time together.';

  @override
  String get metric_good_72_name => 'Constructive Dialogue';

  @override
  String get metric_good_72_description =>
      'Identifies conversations that move toward understanding rather than winning or proving right.';

  @override
  String get metric_good_73_name => 'Protective Advocacy';

  @override
  String get metric_good_73_description =>
      'Tracks standing up for the partner, defending them, and prioritizing their wellbeing.';

  @override
  String get metric_good_74_name => 'Mindful Communication';

  @override
  String get metric_good_74_description =>
      'Measures thoughtful word choice, considering impact before speaking, and intentional messaging.';

  @override
  String get metric_good_75_name => 'Relationship Investment';

  @override
  String get metric_good_75_description =>
      'Looks for time, energy, and resources devoted to nurturing the partnership.';

  @override
  String get metric_good_76_name => 'Secure Base Language';

  @override
  String get metric_good_76_description =>
      'Detects offering stability, safety, and a foundation from which the partner can explore.';

  @override
  String get metric_good_77_name => 'Mutual Admiration';

  @override
  String get metric_good_77_description =>
      'Identifies both partners expressing respect and appreciation for each other\'s qualities.';

  @override
  String get metric_good_78_name => 'Tender Moments';

  @override
  String get metric_good_78_description =>
      'Tracks creating or recognizing intimate quiet moments of connection and closeness.';

  @override
  String get metric_good_79_name => 'Genuine Curiosity';

  @override
  String get metric_good_79_description =>
      'Looks for authentic interest in understanding the partner\'s thoughts, feelings, and experiences.';

  @override
  String get metric_good_80_name => 'Loving Acceptance';

  @override
  String get metric_good_80_description =>
      'Detects embracing the partner\'s whole self, including imperfections and past.';

  @override
  String get metric_good_81_name => 'Mutual Growth Support';

  @override
  String get metric_good_81_description =>
      'Identifies both partners encouraging each other\'s development and celebrating progress.';

  @override
  String get metric_good_82_name => 'Warm Tone Indicators';

  @override
  String get metric_good_82_description =>
      'Tracks use of affectionate language, kind phrasing, and gentle communication style.';

  @override
  String get metric_good_83_name => 'Responsive Engagement';

  @override
  String get metric_good_83_description =>
      'Measures quick, engaged responses to the partner\'s messages and emotional bids.';

  @override
  String get metric_good_84_name => 'Shared Values Alignment';

  @override
  String get metric_good_84_description =>
      'Looks for references to common beliefs, goals, or life philosophies that unite the couple.';

  @override
  String get metric_good_85_name => 'Unconditional Support';

  @override
  String get metric_good_85_description =>
      'Detects standing by the partner through difficulties without making support conditional.';

  @override
  String get metric_good_86_name => 'Intimate Vulnerability';

  @override
  String get metric_good_86_description =>
      'Identifies sharing deep fears, dreams, or insecurities that deepen emotional bonds.';

  @override
  String get metric_good_87_name => 'Mutual Respect Language';

  @override
  String get metric_good_87_description =>
      'Tracks honoring each other\'s perspectives, choices, and autonomy in communication.';

  @override
  String get metric_good_88_name => 'Positive Framing';

  @override
  String get metric_good_88_description =>
      'Measures seeing the best in situations and the partner, focusing on strengths.';

  @override
  String get metric_good_89_name => 'Collaborative Problem Solving';

  @override
  String get metric_good_89_description =>
      'Looks for working together toward solutions that benefit both partners equally.';

  @override
  String get metric_good_90_name => 'Emotional Validation';

  @override
  String get metric_good_90_description =>
      'Detects confirming that the partner\'s feelings make sense and are acceptable.';

  @override
  String get metric_good_91_name => 'Consistent Kindness';

  @override
  String get metric_good_91_description =>
      'Identifies regular small acts of care that show the partner is thought of and valued.';

  @override
  String get metric_good_92_name => 'Mutual Celebration';

  @override
  String get metric_good_92_description =>
      'Tracks both partners genuinely happy about each other\'s successes and joys.';

  @override
  String get metric_good_93_name => 'Secure Attachment Language';

  @override
  String get metric_good_93_description =>
      'Measures expressing trust, comfort with intimacy, and confidence in the relationship.';

  @override
  String get metric_good_94_name => 'Thoughtful Consideration';

  @override
  String get metric_good_94_description =>
      'Looks for making decisions with the partner\'s needs and feelings in mind.';

  @override
  String get metric_good_95_name => 'Loving Presence';

  @override
  String get metric_good_95_description =>
      'Detects being fully present and engaged, showing the partner they matter most.';

  @override
  String get metric_good_96_name => 'Genuine Care Language';

  @override
  String get metric_good_96_description =>
      'Tracks authentic expressions of concern, care, and investment in the partner\'s wellbeing.';

  @override
  String get metric_good_97_name => 'Relationship Commitment';

  @override
  String get metric_good_97_description =>
      'Measures expressing dedication to the partnership and willingness to work through challenges.';

  @override
  String get metric_good_98_name => 'Authentic Love Expression';

  @override
  String get metric_good_98_description =>
      'Looks for genuine consistent expressions of love that feel real and unconditional.';

  @override
  String get metric_good_99_name => 'Mutual Goal Setting';

  @override
  String get metric_good_99_description =>
      'Identifies partners collaboratively defining shared dreams, priorities, and direction for their future together.';

  @override
  String get metric_good_100_name => 'Repair Attempt Recognition';

  @override
  String get metric_good_100_description =>
      'Detects noticing and positively responding to the partner\'s bids to de-escalate conflict and restore connection.';

  @override
  String get metric_bad_1_name => 'Passive Aggression';

  @override
  String get metric_bad_1_description =>
      'Detects indirect hostility through procrastination, forgetfulness, sarcasm, or subtle sabotage instead of direct expression.';

  @override
  String get metric_bad_2_name => 'Guilt Weaponization';

  @override
  String get metric_bad_2_description =>
      'Identifies using guilt, shame, or obligation language to manipulate decisions or prevent boundary-setting.';

  @override
  String get metric_bad_3_name => 'Emotional Blackmail';

  @override
  String get metric_bad_3_description =>
      'Flags threats of self-harm, abandonment, or withdrawal of love to control behavior or prevent discussion.';

  @override
  String get metric_bad_4_name => 'Chronic Complaining';

  @override
  String get metric_bad_4_description =>
      'Tracks persistent negativity, rumination, or complaint without seeking solutions or collaborative change.';

  @override
  String get metric_bad_5_name => 'Comparison Shaming';

  @override
  String get metric_bad_5_description =>
      'Identifies unfavorable comparisons to exes, friends, or family to shame or coerce behavior change.';

  @override
  String get metric_bad_6_name => 'Conditional Listening';

  @override
  String get metric_bad_6_description =>
      'Detects listening only when it benefits the listener or serves their agenda rather than genuine understanding.';

  @override
  String get metric_bad_7_name => 'Selective Memory';

  @override
  String get metric_bad_7_description =>
      'Tracks convenient forgetting of promises, agreements, or past harmful behavior to avoid accountability.';

  @override
  String get metric_bad_8_name => 'Attention Seeking Through Crisis';

  @override
  String get metric_bad_8_description =>
      'Identifies dramatic escalation, crisis creation, or exaggeration to gain focus or sympathy.';

  @override
  String get metric_bad_9_name => 'Boundary Testing';

  @override
  String get metric_bad_9_description =>
      'Detects repeated probing or pushing of stated limits to determine if they will be enforced.';

  @override
  String get metric_bad_10_name => 'Withholding Information';

  @override
  String get metric_bad_10_description =>
      'Identifies deliberate omission of relevant facts, context, or transparency to maintain control.';

  @override
  String get metric_bad_11_name => 'Disproportionate Anger';

  @override
  String get metric_bad_11_description =>
      'Tracks anger responses that are significantly larger than the triggering incident warrants.';

  @override
  String get metric_bad_12_name => 'Reassurance Addiction';

  @override
  String get metric_bad_12_description =>
      'Flags constant need for validation, repeated questions about commitment, or endless proof of love.';

  @override
  String get metric_bad_13_name => 'Conversation Avoidance';

  @override
  String get metric_bad_13_description =>
      'Detects refusal to engage with concerns, avoidance phrases, or shutting down important discussions.';

  @override
  String get metric_bad_14_name => 'Contradiction Pattern';

  @override
  String get metric_bad_14_description =>
      'Identifies contradictory statements, promises, or positions that create confusion or destabilization.';

  @override
  String get metric_bad_15_name => 'Dismissal Through Labeling';

  @override
  String get metric_bad_15_description =>
      'Flags labeling concerns as \"crazy,\" \"dramatic,\" \"paranoid,\" or \"overreacting\" to invalidate them.';

  @override
  String get metric_bad_16_name => 'Selective Empathy';

  @override
  String get metric_bad_16_description =>
      'Detects empathy offered only when convenient or when it serves the speaker\'s interests.';

  @override
  String get metric_bad_17_name => 'Transactional Framing';

  @override
  String get metric_bad_17_description =>
      'Identifies \"you owe me,\" \"after all I\'ve done,\" or viewing relationship acts as creating debt.';

  @override
  String get metric_bad_18_name => 'Grievance Recycling';

  @override
  String get metric_bad_18_description =>
      'Tracks bringing up old grievances repeatedly or using past harm as ammunition in current conflicts.';

  @override
  String get metric_bad_19_name => 'Demand Language';

  @override
  String get metric_bad_19_description =>
      'Flags imperatives, commands, or ultimatums rather than requests or collaborative problem-solving.';

  @override
  String get metric_bad_20_name => 'Emotional Unavailability';

  @override
  String get metric_bad_20_description =>
      'Detects consistent refusal to engage emotionally, share feelings, or provide comfort.';

  @override
  String get metric_bad_21_name => 'Hostile Interpretation';

  @override
  String get metric_bad_21_description =>
      'Identifies taking neutral statements as attacks or interpreting ambiguous messages as hostile.';

  @override
  String get metric_bad_22_name => 'Entitlement Framing';

  @override
  String get metric_bad_22_description =>
      'Flags language suggesting the speaker deserves special treatment, exceptions, or priority.';

  @override
  String get metric_bad_23_name => 'Criticism Disguised as Help';

  @override
  String get metric_bad_23_description =>
      'Detects criticism wrapped in \"I\'m just trying to help\" or \"for your own good\" language.';

  @override
  String get metric_bad_24_name => 'Neglect Patterns';

  @override
  String get metric_bad_24_description =>
      'Identifies consistent failure to meet emotional, physical, or relational needs.';

  @override
  String get metric_bad_25_name => 'Conflict Rumination';

  @override
  String get metric_bad_25_description =>
      'Tracks obsessive rehashing of conflicts without moving toward resolution or closure.';

  @override
  String get metric_bad_26_name => 'Sensitivity Dismissal';

  @override
  String get metric_bad_26_description =>
      'Flags statements like \"you\'re too sensitive\" or \"you\'re overreacting\" to dismiss feelings.';

  @override
  String get metric_bad_27_name => 'Competitive Framing';

  @override
  String get metric_bad_27_description =>
      'Detects framing relationship as a competition where one partner must win or dominate.';

  @override
  String get metric_bad_28_name => 'Double Standards';

  @override
  String get metric_bad_28_description =>
      'Identifies applying different rules to self versus partner or changing expectations arbitrarily.';

  @override
  String get metric_bad_29_name => 'Affection as Punishment';

  @override
  String get metric_bad_29_description =>
      'Flags removing affection, attention, or communication as retaliation for perceived wrongs.';

  @override
  String get metric_bad_30_name => 'Blame Rotation';

  @override
  String get metric_bad_30_description =>
      'Tracks rotating blame between partner, circumstances, and external factors to avoid accountability.';

  @override
  String get metric_bad_31_name => 'Rhetorical Mockery';

  @override
  String get metric_bad_31_description =>
      'Detects rhetorical or sarcastic questions used to mock rather than understand.';

  @override
  String get metric_bad_32_name => 'Sacrifice Reminders';

  @override
  String get metric_bad_32_description =>
      'Identifies reminding partner of sacrifices, favors, or support to create debt and compliance.';

  @override
  String get metric_bad_33_name => 'Deliberate Escalation';

  @override
  String get metric_bad_33_description =>
      'Flags deliberately escalating intensity to overwhelm partner\'s ability to respond rationally.';

  @override
  String get metric_bad_34_name => 'Strategic Vulnerability';

  @override
  String get metric_bad_34_description =>
      'Detects sharing emotions only when it serves manipulation or control purposes.';

  @override
  String get metric_bad_35_name => 'Deflection Through Counterattack';

  @override
  String get metric_bad_35_description =>
      'Identifies turning focus away from partner\'s concerns by raising unrelated issues or countercharges.';

  @override
  String get metric_bad_36_name => 'Superiority Language';

  @override
  String get metric_bad_36_description =>
      'Flags superiority language, condescension, or framing partner as beneath them.';

  @override
  String get metric_bad_37_name => 'Conflict Exit Pattern';

  @override
  String get metric_bad_37_description =>
      'Detects pattern of leaving conversations, refusing to engage, or creating distance during conflict.';

  @override
  String get metric_bad_38_name => 'Negative Bias';

  @override
  String get metric_bad_38_description =>
      'Tracks consistently interpreting neutral or positive actions as negative or suspicious.';

  @override
  String get metric_bad_39_name => 'Agency Denial';

  @override
  String get metric_bad_39_description =>
      'Identifies \"I have to,\" \"you make me,\" or language removing personal agency from the speaker.';

  @override
  String get metric_bad_40_name => 'Silence as Control';

  @override
  String get metric_bad_40_description =>
      'Flags using silence or non-response as a form of punishment or control.';

  @override
  String get metric_bad_41_name => 'Privacy Hypocrisy';

  @override
  String get metric_bad_41_description =>
      'Detects refusing to share information while demanding transparency from the partner.';

  @override
  String get metric_bad_42_name => 'Unsolicited Harsh Feedback';

  @override
  String get metric_bad_42_description =>
      'Identifies harsh feedback presented as \"constructive\" or \"helpful\" without consent.';

  @override
  String get metric_bad_43_name => 'Conditional Care';

  @override
  String get metric_bad_43_description =>
      'Flags support offered only when partner complies with speaker\'s expectations.';

  @override
  String get metric_bad_44_name => 'Impact Denial';

  @override
  String get metric_bad_44_description =>
      'Detects \"I didn\'t mean it that way\" or \"you\'re reading too much into it\" after causing harm.';

  @override
  String get metric_bad_45_name => 'Debt Mentality';

  @override
  String get metric_bad_45_description =>
      'Tracks bringing up past help or support to create debt and control current behavior.';

  @override
  String get metric_bad_46_name => 'Responsibility Evasion';

  @override
  String get metric_bad_46_description =>
      'Flags consistent pattern of not taking responsibility for the impact of actions.';

  @override
  String get metric_bad_47_name => 'Needs Dismissal';

  @override
  String get metric_bad_47_description =>
      'Identifies treating partner\'s needs as inconvenient, unreasonable, or unimportant.';

  @override
  String get metric_bad_48_name => 'Emotional Manipulation';

  @override
  String get metric_bad_48_description =>
      'Flags using emotions strategically to control outcomes or prevent accountability.';

  @override
  String get metric_bad_49_name => 'Intimacy Avoidance';

  @override
  String get metric_bad_49_description =>
      'Tracks consistent withdrawal from emotional or physical closeness without explanation.';

  @override
  String get metric_bad_50_name => 'Veiled Criticism';

  @override
  String get metric_bad_50_description =>
      'Identifies criticism disguised as jokes, observations, or casual comments.';

  @override
  String get metric_bad_51_name => 'Concern Minimization';

  @override
  String get metric_bad_51_description =>
      'Flags reducing partner\'s concerns to insignificance or exaggeration.';

  @override
  String get metric_bad_52_name => 'Guilt Enforcement';

  @override
  String get metric_bad_52_description =>
      'Identifies using guilt or shame to ensure partner complies with expectations.';

  @override
  String get metric_bad_53_name => 'Apology Resistance';

  @override
  String get metric_bad_53_description =>
      'Tracks resistance to apologizing, explaining away harm, or refusing to acknowledge impact.';

  @override
  String get metric_bad_54_name => 'Perspective Rejection';

  @override
  String get metric_bad_54_description =>
      'Flags refusing to consider or validate partner\'s viewpoint or experience.';

  @override
  String get metric_bad_55_name => 'Emotional Rationing';

  @override
  String get metric_bad_55_description =>
      'Detects deliberately limiting emotional expression or connection as a form of control.';

  @override
  String get metric_bad_56_name => 'Obligation Manipulation';

  @override
  String get metric_bad_56_description =>
      'Flags using past support or sacrifice to manipulate current decisions.';

  @override
  String get metric_bad_57_name => 'Resistance to Growth';

  @override
  String get metric_bad_57_description =>
      'Tracks resistance to modifying harmful behavior despite requests or demonstrated impact.';

  @override
  String get metric_bad_58_name => 'Harm Denial';

  @override
  String get metric_bad_58_description =>
      'Detects refusing to acknowledge or take seriously the impact of one\'s own behavior.';

  @override
  String get metric_bad_59_name => 'Loaded Questions';

  @override
  String get metric_bad_59_description =>
      'Flags critical intent disguised as innocent questions or expressions of curiosity.';

  @override
  String get metric_bad_60_name => 'Contemptuous Tone';

  @override
  String get metric_bad_60_description =>
      'Identifies dismissive attitude or disdain conveyed through text patterns and word choice.';

  @override
  String get metric_bad_61_name => 'Guilt Trip Cycling';

  @override
  String get metric_bad_61_description =>
      'Detects repeatedly using guilt about past support or sacrifice to control current behavior.';

  @override
  String get metric_bad_62_name => 'Emotional Guardedness';

  @override
  String get metric_bad_62_description =>
      'Tracks refusing to share emotions, fears, or needs with partner as protective withholding.';

  @override
  String get metric_bad_63_name => 'Boundary Negotiation';

  @override
  String get metric_bad_63_description =>
      'Flags treating stated limits as suggestions or negotiable rather than firm commitments.';

  @override
  String get metric_bad_64_name => 'Emotional Absence';

  @override
  String get metric_bad_64_description =>
      'Detects consistent refusal to provide emotional support or engaged presence.';

  @override
  String get metric_bad_65_name => 'Favor Tracking';

  @override
  String get metric_bad_65_description =>
      'Flags keeping mental score of favors, support, or sacrifices for later leverage.';

  @override
  String get metric_bad_66_name => 'Honesty Avoidance';

  @override
  String get metric_bad_66_description =>
      'Detects pattern of withholding truth, omitting facts, or being deliberately vague.';

  @override
  String get metric_bad_67_name => 'Validity Denial';

  @override
  String get metric_bad_67_description =>
      'Identifies treating partner\'s feelings, needs, or concerns as invalid or illegitimate.';

  @override
  String get metric_bad_68_name => 'Advice Disguised Criticism';

  @override
  String get metric_bad_68_description =>
      'Flags criticism presented as concern, advice, or a helpful observation.';

  @override
  String get metric_bad_69_name => 'Superiority Indicators';

  @override
  String get metric_bad_69_description =>
      'Detects superiority, mockery, or disdain in language or communication style.';

  @override
  String get metric_bad_70_name => 'Repair Resistance';

  @override
  String get metric_bad_70_description =>
      'Tracks resistance to making amends, reconnecting, or rebuilding after conflict.';

  @override
  String get metric_bad_71_name => 'Effort Dismissal';

  @override
  String get metric_bad_71_description =>
      'Flags minimizing or ignoring partner\'s attempts to improve or address issues.';

  @override
  String get metric_bad_72_name => 'Emotional Distance Pattern';

  @override
  String get metric_bad_72_description =>
      'Detects long-term pattern of emotional distance or refusal to engage authentically.';

  @override
  String get metric_bad_73_name => 'Inferiority Framing';

  @override
  String get metric_bad_73_description =>
      'Identifies framing partner as inferior, flawed, or unworthy of full respect.';

  @override
  String get metric_bad_74_name => 'Feedback Resistance';

  @override
  String get metric_bad_74_description =>
      'Detects resistance to hearing criticism, refusing to listen, or shutting down discussion.';

  @override
  String get metric_bad_75_name => 'Worry Dismissal';

  @override
  String get metric_bad_75_description =>
      'Identifies treating partner\'s worries or fears as unfounded or irrational.';

  @override
  String get metric_bad_76_name => 'Fault Finding';

  @override
  String get metric_bad_76_description =>
      'Flags chronic pattern of finding fault, complaining about, or attacking partner\'s character.';

  @override
  String get metric_bad_77_name => 'Sacrifice Guilt Cycling';

  @override
  String get metric_bad_77_description =>
      'Identifies repeatedly bringing up past support to create guilt or control behavior.';

  @override
  String get metric_bad_78_name => 'Commitment Ambiguity';

  @override
  String get metric_bad_78_description =>
      'Tracks unclear or wavering commitment language, mixed signals, or reluctance to commit.';

  @override
  String get metric_bad_79_name => 'Request Dismissal';

  @override
  String get metric_bad_79_description =>
      'Flags ignoring, refusing, or delaying response to partner\'s reasonable requests.';

  @override
  String get metric_bad_80_name => 'Emotional Control Tactics';

  @override
  String get metric_bad_80_description =>
      'Detects strategic use of emotions to control outcomes or prevent accountability.';

  @override
  String get metric_bad_81_name => 'Exchange Mentality';

  @override
  String get metric_bad_81_description =>
      'Flags viewing relationship through lens of debt, obligation, or transactional exchange.';

  @override
  String get metric_bad_82_name => 'Personal Development Resistance';

  @override
  String get metric_bad_82_description =>
      'Detects resistance to personal development, learning, or changing harmful patterns.';

  @override
  String get metric_bad_83_name => 'Improvement Rejection';

  @override
  String get metric_bad_83_description =>
      'Identifies minimizing or rejecting partner\'s efforts to improve or address issues.';

  @override
  String get metric_bad_84_name => 'Chronic Criticism';

  @override
  String get metric_bad_84_description =>
      'Flags chronic pattern of criticism wrapped in concern, helpfulness, or care language.';

  @override
  String get metric_bad_85_name => 'Solution Avoidance';

  @override
  String get metric_bad_85_description =>
      'Detects consistent pattern of avoiding closure, moving forward, or finding workable solutions.';

  @override
  String get metric_bad_86_name => 'Blame Deflection Pattern';

  @override
  String get metric_bad_86_description =>
      'Flags habitual pattern of redirecting responsibility to external factors or the partner.';

  @override
  String get metric_bad_87_name => 'Dismissive Responses';

  @override
  String get metric_bad_87_description =>
      'Identifies pattern of dismissing partner\'s input, ideas, or suggestions without consideration.';

  @override
  String get metric_bad_88_name => 'Resentment Expression';

  @override
  String get metric_bad_88_description =>
      'Detects tone of resentment, bitterness, or long-held frustration in communication.';

  @override
  String get metric_bad_89_name => 'Ambivalent Messaging';

  @override
  String get metric_bad_89_description =>
      'Flags mixed messages about commitment, unclear desire to continue, or push-pull dynamics.';

  @override
  String get metric_bad_90_name => 'Expectation Shifting';

  @override
  String get metric_bad_90_description =>
      'Identifies changing expectations without communication, then blaming partner for not meeting them.';

  @override
  String get metric_bad_91_name => 'Deflection Habit';

  @override
  String get metric_bad_91_description =>
      'Detects habitual avoidance of direct answers or redirection of conversations away from accountability.';

  @override
  String get metric_bad_92_name => 'Manipulation Through Kindness';

  @override
  String get metric_bad_92_description =>
      'Flags exaggerated generosity used strategically to create obligation or lower defenses.';

  @override
  String get metric_bad_93_name => 'Chronic Lateness Pattern';

  @override
  String get metric_bad_93_description =>
      'Identifies consistent disregard for partner\'s time through lateness or broken scheduling commitments.';

  @override
  String get metric_bad_94_name => 'Progress Minimization';

  @override
  String get metric_bad_94_description =>
      'Tracks dismissing or failing to acknowledge the partner\'s genuine personal growth or improvements.';

  @override
  String get metric_bad_95_name => 'Emotional Weaponizing';

  @override
  String get metric_bad_95_description =>
      'Detects using partner\'s disclosed vulnerabilities or fears against them in conflict.';

  @override
  String get metric_bad_96_name => 'Gaslighting-Adjacent Tactics';

  @override
  String get metric_bad_96_description =>
      'Identifies subtle reality-distorting tactics that create self-doubt without full gaslighting.';

  @override
  String get metric_bad_97_name => 'Passive Stonewalling';

  @override
  String get metric_bad_97_description =>
      'Flags subtle disengagement, monosyllabic responses, or checked-out presence as avoidance.';

  @override
  String get metric_bad_98_name => 'Narrative Control';

  @override
  String get metric_bad_98_description =>
      'Detects insisting on being the sole authority on what happened, how it felt, or what was meant.';

  @override
  String get metric_bad_99_name => 'Responsibility Deflection';

  @override
  String get metric_bad_99_description =>
      'Tracks consistently redirecting accountability onto external factors, third parties, or the partner\'s behavior.';

  @override
  String get metric_bad_100_name => 'Emotional Unavailability';

  @override
  String get metric_bad_100_description =>
      'Flags chronic withdrawal from emotional intimacy, vulnerability, or meaningful connection when the partner needs closeness.';

  @override
  String get metric_ugly_1_name => 'Physical Violence Threats';

  @override
  String get metric_ugly_1_description =>
      'Detects explicit or veiled threats of hitting, harming, or physical assault against the partner.';

  @override
  String get metric_ugly_2_name => 'Weapon Possession References';

  @override
  String get metric_ugly_2_description =>
      'Flags mentions of guns, knives, or weapons in the context of anger, control, or capability to harm.';

  @override
  String get metric_ugly_3_name => 'Strangulation Indicators';

  @override
  String get metric_ugly_3_description =>
      'Identifies choking, throat-grabbing, suffocation, or asphyxiation language or references.';

  @override
  String get metric_ugly_4_name => 'Suicide Threat Weaponization';

  @override
  String get metric_ugly_4_description =>
      'Detects threats of self-harm used to control, manipulate, or punish the partner.';

  @override
  String get metric_ugly_5_name => 'Homicide Ideation Language';

  @override
  String get metric_ugly_5_description =>
      'Flags statements expressing intent, planning, or desire to kill the partner.';

  @override
  String get metric_ugly_6_name => 'Lethality Risk Patterns';

  @override
  String get metric_ugly_6_description =>
      'Identifies high-lethality warning signs: weapon access, obsession, escalation, and separation threats combined.';

  @override
  String get metric_ugly_7_name => 'Stalking Obsession Language';

  @override
  String get metric_ugly_7_description =>
      'Detects obsessive location monitoring, following, surprise visits, or persistent unwanted pursuit.';

  @override
  String get metric_ugly_8_name => 'Forced Isolation Enforcement';

  @override
  String get metric_ugly_8_description =>
      'Flags aggressive demands to cut off all family, friends, work, or outside contact.';

  @override
  String get metric_ugly_9_name => 'Economic Sabotage';

  @override
  String get metric_ugly_9_description =>
      'Identifies deliberate destruction of employment, credit, finances, or economic stability.';

  @override
  String get metric_ugly_10_name => 'Reproductive Coercion';

  @override
  String get metric_ugly_10_description =>
      'Detects forced pregnancy, abortion pressure, contraception tampering, or reproductive control.';

  @override
  String get metric_ugly_11_name => 'Sexual Coercion Pressure';

  @override
  String get metric_ugly_11_description =>
      'Flags forced sex, coerced sexual acts, pressure after refusal, or sexual punishment language.';

  @override
  String get metric_ugly_12_name => 'Non-Consensual Sexual Language';

  @override
  String get metric_ugly_12_description =>
      'Identifies explicit or implicit non-consensual sexual assault threats or descriptions.';

  @override
  String get metric_ugly_13_name => 'Child Harm Threats';

  @override
  String get metric_ugly_13_description =>
      'Detects threats to harm, neglect, or abuse children as leverage or punishment against the partner.';

  @override
  String get metric_ugly_14_name => 'Child Custody Weaponization';

  @override
  String get metric_ugly_14_description =>
      'Flags threats to take children, deny access, or use custody as a control mechanism.';

  @override
  String get metric_ugly_15_name => 'Pet Harm Threats';

  @override
  String get metric_ugly_15_description =>
      'Identifies threats to hurt, kill, or abuse pets as punishment or to demonstrate control.';

  @override
  String get metric_ugly_16_name => 'Sleep Deprivation Tactics';

  @override
  String get metric_ugly_16_description =>
      'Flags deliberate prevention of sleep, constant interruption, or exhaustion as a control method.';

  @override
  String get metric_ugly_17_name => 'Confinement Language';

  @override
  String get metric_ugly_17_description =>
      'Flags locking in, preventing departure, or confining the partner to a location.';

  @override
  String get metric_ugly_18_name => 'Predatory Grooming Language';

  @override
  String get metric_ugly_18_description =>
      'Flags systematic manipulation to lower defenses, build false trust, then exploit the partner.';

  @override
  String get metric_ugly_19_name => 'Dehumanization Language';

  @override
  String get metric_ugly_19_description =>
      'Detects describing partner as an animal, object, subhuman, or unworthy of basic rights.';

  @override
  String get metric_ugly_20_name => 'Narcissistic Rage Escalation';

  @override
  String get metric_ugly_20_description =>
      'Detects explosive anger triggered by perceived slights, criticism, or any loss of control.';

  @override
  String get metric_ugly_21_name => 'Obsessive Possession Claims';

  @override
  String get metric_ugly_21_description =>
      'Flags language claiming ownership, property rights, or total control over the partner\'s person.';

  @override
  String get metric_ugly_22_name => 'Pathological Lying Patterns';

  @override
  String get metric_ugly_22_description =>
      'Identifies consistent, elaborate, or unnecessary lies about serious matters without apparent reason.';

  @override
  String get metric_ugly_23_name => 'Revenge Fantasy Language';

  @override
  String get metric_ugly_23_description =>
      'Identifies detailed fantasies about harming, humiliating, or destroying the partner.';

  @override
  String get metric_ugly_24_name => 'Betrayal Obsession Fixation';

  @override
  String get metric_ugly_24_description =>
      'Detects obsessive rumination, accusation, and punishment focused on perceived infidelity.';

  @override
  String get metric_ugly_25_name => 'Abandonment Panic Aggression';

  @override
  String get metric_ugly_25_description =>
      'Flags violent or aggressive responses to perceived abandonment or any separation attempt.';

  @override
  String get metric_ugly_26_name => 'Separation Threat Escalation';

  @override
  String get metric_ugly_26_description =>
      'Identifies extreme threats or dangerous behaviors triggered by breakup or separation attempts.';

  @override
  String get metric_ugly_27_name => 'Post-Separation Harassment Threats';

  @override
  String get metric_ugly_27_description =>
      'Flags threats of stalking, harm, or forced contact after the relationship ends.';

  @override
  String get metric_ugly_28_name => 'Custody Kidnapping Threats';

  @override
  String get metric_ugly_28_description =>
      'Identifies threats to take children and flee or hide them permanently from the other parent.';

  @override
  String get metric_ugly_29_name => 'Parental Alienation Agenda';

  @override
  String get metric_ugly_29_description =>
      'Flags systematic attempts to turn children against the other parent through manipulation.';

  @override
  String get metric_ugly_30_name => 'Child Witness Indifference';

  @override
  String get metric_ugly_30_description =>
      'Identifies disregard for children witnessing abuse, conflict, or emotional harm.';

  @override
  String get metric_ugly_31_name => 'Human Trafficking Language';

  @override
  String get metric_ugly_31_description =>
      'Identifies language suggesting selling, trading, or sexually exploiting the partner.';

  @override
  String get metric_ugly_32_name => 'Slavery Language';

  @override
  String get metric_ugly_32_description =>
      'Identifies language treating partner as property, slave, or wholly owned person without rights.';

  @override
  String get metric_ugly_33_name => 'Debt Bondage Threats';

  @override
  String get metric_ugly_33_description =>
      'Detects threats to trap partner through manufactured debt or financial obligation.';

  @override
  String get metric_ugly_34_name => 'Forced Labor Demands';

  @override
  String get metric_ugly_34_description =>
      'Flags demands for unpaid labor, servitude, or work under threat of harm or punishment.';

  @override
  String get metric_ugly_35_name => 'Exploitation Normalization';

  @override
  String get metric_ugly_35_description =>
      'Identifies framing severe exploitation as normal, deserved, consensual, or even beneficial.';

  @override
  String get metric_ugly_36_name => 'Vulnerability Targeting';

  @override
  String get metric_ugly_36_description =>
      'Identifies deliberate targeting of isolated, economically dependent, or psychologically vulnerable individuals.';

  @override
  String get metric_ugly_37_name => 'Trauma Bonding Engineering';

  @override
  String get metric_ugly_37_description =>
      'Detects deliberate creation of fear-relief cycles designed to create deep emotional dependency.';

  @override
  String get metric_ugly_38_name => 'Intermittent Reinforcement Abuse';

  @override
  String get metric_ugly_38_description =>
      'Flags unpredictable cycles of reward and severe punishment used to create psychological addiction.';

  @override
  String get metric_ugly_39_name => 'Learned Helplessness Induction';

  @override
  String get metric_ugly_39_description =>
      'Identifies systematic removal of agency, resources, and perceived escape options.';

  @override
  String get metric_ugly_40_name => 'Identity Erasure Language';

  @override
  String get metric_ugly_40_description =>
      'Flags demands to abandon personality, interests, appearance, or core sense of identity.';

  @override
  String get metric_ugly_41_name => 'Autonomy Annihilation';

  @override
  String get metric_ugly_41_description =>
      'Detects systematic elimination of independent thought, decision-making, or personal agency.';

  @override
  String get metric_ugly_42_name => 'Thought Control Tactics';

  @override
  String get metric_ugly_42_description =>
      'Flags demands to think, believe, or feel only as the controlling partner dictates.';

  @override
  String get metric_ugly_43_name => 'Emotional Numbness Enforcement';

  @override
  String get metric_ugly_43_description =>
      'Identifies punishment for showing emotions or explicit demands to suppress all feelings.';

  @override
  String get metric_ugly_44_name => 'Complex Trauma Creation';

  @override
  String get metric_ugly_44_description =>
      'Flags systematic patterns creating complex PTSD-level trauma through chronic abuse.';

  @override
  String get metric_ugly_45_name => 'Betrayal Trauma Infliction';

  @override
  String get metric_ugly_45_description =>
      'Identifies deliberate betrayal designed to shatter foundational trust and psychological safety.';

  @override
  String get metric_ugly_46_name => 'Moral Injury Language';

  @override
  String get metric_ugly_46_description =>
      'Detects forcing partner to violate their own deeply held values or commit harmful acts.';

  @override
  String get metric_ugly_47_name => 'Existential Threat Language';

  @override
  String get metric_ugly_47_description =>
      'Flags threats to partner\'s existence, core identity, sanity, or will to live.';

  @override
  String get metric_ugly_48_name => 'Suicide Coercion Language';

  @override
  String get metric_ugly_48_description =>
      'Identifies pushing partner toward suicidal ideation through sustained abuse and manufactured hopelessness.';

  @override
  String get metric_ugly_49_name => 'Justification Mythology';

  @override
  String get metric_ugly_49_description =>
      'Identifies elaborate invented narratives presented to justify abuse as necessary, deserved, or righteous.';

  @override
  String get metric_ugly_50_name => 'Victim Narrative Inversion';

  @override
  String get metric_ugly_50_description =>
      'Detects complete reversal where the abuser claims to be the real victim of their own abuse.';

  @override
  String get metric_ugly_51_name => 'Abuse Normalization Preaching';

  @override
  String get metric_ugly_51_description =>
      'Flags teaching or insisting that abuse is normal, healthy, or beneficial for the partner.';

  @override
  String get metric_ugly_52_name => 'Predatory Ideology';

  @override
  String get metric_ugly_52_description =>
      'Identifies ideological justification for exploitation, dominance, or harm toward the partner.';

  @override
  String get metric_ugly_53_name => 'Cult Leader Messaging';

  @override
  String get metric_ugly_53_description =>
      'Detects messaging claiming special knowledge, divine right, or superior authority over the partner.';

  @override
  String get metric_ugly_54_name => 'Grooming Timeline Language';

  @override
  String get metric_ugly_54_description =>
      'Flags references to a long-term manipulation plan or descriptions of a grooming progression.';

  @override
  String get metric_ugly_55_name => 'Chronic Humiliation Campaign';

  @override
  String get metric_ugly_55_description =>
      'Identifies sustained pattern of public or private humiliation designed to destroy self-worth.';

  @override
  String get metric_ugly_56_name => 'Safety Exit Blocking';

  @override
  String get metric_ugly_56_description =>
      'Detects actively preventing the partner from accessing escape routes, support systems, or safety resources.';

  @override
  String get metric_ugly_57_name => 'Document Confiscation Threats';

  @override
  String get metric_ugly_57_description =>
      'Flags threats or actions to take, hide, or destroy identity documents to prevent escape.';

  @override
  String get metric_ugly_58_name => 'Violent Jealousy Patterns';

  @override
  String get metric_ugly_58_description =>
      'Identifies jealousy that has escalated to explicit threats, surveillance, or violent retaliation.';

  @override
  String get metric_ugly_59_name => 'Rage Explosion Patterns';

  @override
  String get metric_ugly_59_description =>
      'Detects descriptions or patterns of explosive violent outbursts disproportionate to any trigger.';

  @override
  String get metric_ugly_60_name => 'Coercive Control Escalation';

  @override
  String get metric_ugly_60_description =>
      'Tracks increasing severity and breadth of coercive control tactics over time.';

  @override
  String get metric_ugly_61_name => 'Fear-Based Compliance Language';

  @override
  String get metric_ugly_61_description =>
      'Identifies compliance driven entirely by fear of violence or severe punishment rather than choice.';

  @override
  String get metric_ugly_62_name => 'Punishment Ritual Language';

  @override
  String get metric_ugly_62_description =>
      'Detects references to systematic punishment practices used to enforce compliance and control.';

  @override
  String get metric_ugly_63_name => 'Degradation Ritual Indicators';

  @override
  String get metric_ugly_63_description =>
      'Flags systematic degradation or humiliation rituals designed to destroy dignity.';

  @override
  String get metric_ugly_64_name => 'Non-Consensual Exposure Threats';

  @override
  String get metric_ugly_64_description =>
      'Identifies threats to expose intimate images, private information, or secrets without consent.';

  @override
  String get metric_ugly_65_name => 'Image-Based Abuse Threats';

  @override
  String get metric_ugly_65_description =>
      'Detects threats to distribute intimate images as revenge, punishment, or blackmail.';

  @override
  String get metric_ugly_66_name => 'Financial Entrapment Tactics';

  @override
  String get metric_ugly_66_description =>
      'Flags deliberate creation of financial dependency making independent survival impossible.';

  @override
  String get metric_ugly_67_name => 'Housing Threat Language';

  @override
  String get metric_ugly_67_description =>
      'Detects threats to make partner homeless, remove housing access, or destroy shelter security.';

  @override
  String get metric_ugly_68_name => 'Immigration Status Threats';

  @override
  String get metric_ugly_68_description =>
      'Identifies threats to report immigration status or revoke visa sponsorship as control.';

  @override
  String get metric_ugly_69_name => 'Religious or Spiritual Abuse';

  @override
  String get metric_ugly_69_description =>
      'Detects using religious authority, doctrine, or spiritual threat to control, punish, or harm.';

  @override
  String get metric_ugly_70_name => 'Cultural Shame Weaponization';

  @override
  String get metric_ugly_70_description =>
      'Flags threatening to expose behaviors to cultural or family community as punishment.';

  @override
  String get metric_ugly_71_name => 'Family Harm Threats';

  @override
  String get metric_ugly_71_description =>
      'Identifies threats to harm partner\'s family members, children, or loved ones as leverage.';

  @override
  String get metric_ugly_72_name => 'Coordinated Harassment Campaign';

  @override
  String get metric_ugly_72_description =>
      'Detects organizing others to collectively harass, stalk, or intimidate the partner.';

  @override
  String get metric_ugly_73_name => 'False Police Report Threats';

  @override
  String get metric_ugly_73_description =>
      'Flags threatening to make false police reports or legal accusations against the partner.';

  @override
  String get metric_ugly_74_name => 'Legal System Weaponization';

  @override
  String get metric_ugly_74_description =>
      'Identifies using legal processes, courts, or protective orders as weapons of harassment.';

  @override
  String get metric_ugly_75_name => 'Restraining Order Violation';

  @override
  String get metric_ugly_75_description =>
      'Detects references to violating or planning to violate protective or no-contact orders.';

  @override
  String get metric_ugly_76_name => 'Workplace Sabotage Threats';

  @override
  String get metric_ugly_76_description =>
      'Flags threats to contact employer, colleagues, or clients to destroy partner\'s livelihood.';

  @override
  String get metric_ugly_77_name => 'Social Annihilation Threats';

  @override
  String get metric_ugly_77_description =>
      'Detects threats to destroy partner\'s reputation, relationships, and social standing.';

  @override
  String get metric_ugly_78_name => 'Systematic Deception Campaign';

  @override
  String get metric_ugly_78_description =>
      'Identifies long-term elaborate deception designed to exploit the partner financially or emotionally.';

  @override
  String get metric_ugly_79_name => 'Property Destruction as Terror';

  @override
  String get metric_ugly_79_description =>
      'Identifies deliberate destruction of partner\'s property as an intimidation tactic.';

  @override
  String get metric_ugly_80_name => 'Animal Cruelty as Proxy Terror';

  @override
  String get metric_ugly_80_description =>
      'Detects harming or threatening pets to demonstrate capacity for violence to partner.';

  @override
  String get metric_ugly_81_name => 'Child Endangerment Language';

  @override
  String get metric_ugly_81_description =>
      'Flags placing children in dangerous situations or threatening to do so as leverage.';

  @override
  String get metric_ugly_82_name => 'Disability-Based Control';

  @override
  String get metric_ugly_82_description =>
      'Detects exploiting partner\'s disability by controlling access to medication, mobility, or care.';

  @override
  String get metric_ugly_83_name => 'Crisis Manufactured Control';

  @override
  String get metric_ugly_83_description =>
      'Flags deliberately creating emergencies or crises to increase partner dependency or justify monitoring.';

  @override
  String get metric_ugly_84_name => 'Isolation from Emergency Services';

  @override
  String get metric_ugly_84_description =>
      'Identifies actively preventing partner from calling police, ambulance, or crisis services.';

  @override
  String get metric_ugly_85_name => 'Threat Escalation Trajectory';

  @override
  String get metric_ugly_85_description =>
      'Tracks measurable increase in severity, specificity, or frequency of threats over time.';

  @override
  String get metric_ugly_86_name => 'Lethality Assessment Indicators';

  @override
  String get metric_ugly_86_description =>
      'Flags combinations of factors associated with highest risk of intimate partner homicide.';

  @override
  String get metric_ugly_87_name => 'Psychological Torture Tactics';

  @override
  String get metric_ugly_87_description =>
      'Identifies sustained psychological abuse designed to break the partner\'s mental stability.';

  @override
  String get metric_ugly_88_name => 'Captivity Language';

  @override
  String get metric_ugly_88_description =>
      'Detects references to holding partner captive, preventing departure, or controlling all movement.';

  @override
  String get metric_ugly_89_name => 'Targeted Violence Planning';

  @override
  String get metric_ugly_89_description =>
      'Detects any language indicating planning, preparation, or countdown to violence against partner.';

  @override
  String get metric_ugly_90_name => 'Third Party Threat Recruitment';

  @override
  String get metric_ugly_90_description =>
      'Identifies recruiting friends, family, or others to threaten or harm the partner.';

  @override
  String get metric_ugly_91_name => 'Suicidal Ideation Exploitation';

  @override
  String get metric_ugly_91_description =>
      'Flags exploiting partner\'s suicidal crisis as leverage or to prevent them seeking help.';

  @override
  String get metric_ugly_92_name => 'Poisoning or Drugging Threats';

  @override
  String get metric_ugly_92_description =>
      'Detects threats or references to drugging, poisoning, or tampering with partner\'s food or drink.';

  @override
  String get metric_ugly_93_name => 'Non-Suicidal Self-Harm Exploitation';

  @override
  String get metric_ugly_93_description =>
      'Flags exploiting partner\'s self-harm behavior as leverage, mockery, or further control.';

  @override
  String get metric_ugly_94_name => 'Dissociation Induction Language';

  @override
  String get metric_ugly_94_description =>
      'Detects patterns designed to cause dissociation, detachment, or depersonalization in the partner.';

  @override
  String get metric_ugly_95_name => 'Cognitive Distortion Implanting';

  @override
  String get metric_ugly_95_description =>
      'Detects deliberate installation of false beliefs about self, reality, or the partner\'s own sanity.';

  @override
  String get metric_ugly_96_name => 'Medical Care Obstruction';

  @override
  String get metric_ugly_96_description =>
      'Detects preventing access to medication, doctors, hospitals, or health treatment.';

  @override
  String get metric_ugly_97_name => 'Extremist Threat Language';

  @override
  String get metric_ugly_97_description =>
      'Flags language borrowed from extremist or violent ideological frameworks applied toward the partner.';

  @override
  String get metric_ugly_98_name => 'Post-Separation Stalking Signals';

  @override
  String get metric_ugly_98_description =>
      'Detects threats, surveillance language, or intimidation tactics following or anticipating a breakup.';

  @override
  String get metric_ugly_99_name => 'Child Weaponization';

  @override
  String get metric_ugly_99_description =>
      'Identifies using children as pawns, threats regarding custody, or leveraging parental bonds as control mechanisms.';

  @override
  String get metric_ugly_100_name => 'Systematic Dehumanization';

  @override
  String get metric_ugly_100_description =>
      'Detects sustained language that strips the partner of personhood, dignity, or their right to basic humanity.';
}
