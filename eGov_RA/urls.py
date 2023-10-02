"""eGov_RA URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static

from parsingbpmn import views
from parsingbpmn.views import bpmn_process_management, system_management, \
    delete_process, delete_system, process_enrichment, threat_modeling, process_view_task_type, process_view_attribute, \
    task_type_enrichment, export_threat_modeling, threats_and_controls, bpmn_viewer, edit_process, threat_modeling_view, \
    risk_analysis_result, delete_Dataobj

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', system_management, name='system_management'),
    path('bpmn_process_management/<int:systemId>', bpmn_process_management, name='bpmn_process_management'),
    path('process_view_task_type/<int:systemId>/<int:processId>', process_view_task_type, name='process_view_task_type'),
    path('process_view_attribute/<int:systemId>/<int:processId>', process_view_attribute, name='process_view_attribute'),
    path('edit_process/<int:systemId>/<int:processId>', edit_process, name='edit_process'),
    path('delete_process/<int:systemId>/<int:processId>', delete_process, name='delete_process'),
    path('delete_Dataobj/<int:systemId>/<int:processId>/<int:assetId>', delete_Dataobj, name='delete_Dataobj'),
    path('delete_system/<int:systemId>', delete_system, name='delete_system'),
    path('process_enrichment/<int:systemId>/<int:processId>', process_enrichment, name='process_enrichment'),
    path('risk_analysis_result/<int:systemId>/<int:processId>', risk_analysis_result, name='risk_analysis_result'),
    path('bpmn_viewer/<int:pk>', bpmn_viewer, name='bpmn_viewer'),
    path('task_type_enrichment/<int:systemId>/<int:processId>', task_type_enrichment, name='task_type_enrichment'),
    path('threats_and_controls/<int:systemId>/<int:processId>', threats_and_controls, name='threats_and_controls'),
    path('threat_modeling_view/<int:systemId>/<int:processId>', threat_modeling_view, name='threat_modeling_view'),
    path('export_threat_modeling/<int:systemId>/<int:processId>', export_threat_modeling, name='export_threat_modeling'),
    path('threat_agent_wizard/<int:systemId>/<int:processId>/<int:assetId>', views.threat_agent_wizard, name='threat_agent_wizard'),
    path('threat_agent_generation/<int:systemId>/<int:processId>/<int:assetId>', views.threat_agent_generation, name='threat_agent_generation'),
    path('calculate_threat_agent_risks/<int:systemId>/<int:processId>/<int:assetId>', views.calculate_threat_agent_risks, name='calculate_threat_agent_risks'),
    path('StrideImpact/<int:systemId>/<int:processId>/<int:assetId>', views.StrideImpact, name='StrideImpact'),
    path('StrideImpact_Result/<int:systemId>/<int:processId>/', views.StrideImpact_Result, name='StrideImpact_Result'),
    path('risk_analysis/<int:systemId>/<int:processId>/<int:assetId>', views.risk_analysis, name='risk_analysis'),
    path('process_data_object_input/<int:systemId>/<int:processId>', views.process_data_object_input, name='process_data_object_input'),
    path('save_dataobject/<int:systemId>/<int:processId>', views.save_dataobject, name='save_dataobject'),
    path('export_dataobject_to_bpmn/<int:systemId>', views.export_dataobject_to_bpmn, name='export_dataobject_to_bpmn'),
    path('report_processing_activities/<int:systemId>', views.report_processing_activities, name='report_processing_activities'),
    path('task_manage_data/<int:systemId>/<int:processId>', views.task_manage_data, name='task_manage_data'),
    path('countermeasures_selection/<int:systemId>/<int:processId>/<int:cisId>', views.countermeasures_selection, name='countermeasures_selection'),





]

if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)