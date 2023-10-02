from parsingbpmn.bpmn_python_master.bpmn_python import bpmn_diagram_rep as diagram
from parsingbpmn.bpmn_python_master.bpmn_python import bpmn_import_utils as utils
from parsingbpmn.bpmn_python_master.bpmn_python import bpmn_python_consts as consts

bpmn_graph = diagram.BpmnDiagramGraph()

collab = bpmn_graph.load_diagram_from_xml_file(r"C:\Users\veron\OneDrive\Desktop\Tesi\Materiale\eGovRa\prov\processo-civile-cognizione-07.bpmn")
#lista = bpmn_graph.get_nodes()
#print(lista,"RISOLTO")


#bpmn_graph.add_flow_node_to_diagram("Activity_0e44ssw", "Task", "TestProva", None)
#textAnnotation=bpmn_graph.add_textAnnotation_to_diagram("Process_03g1b8a","200","200", "PEC Communication", None)
#bpmn_graph.add_Association_to_diagram("Process_03g1b8a", "Activity_0e44ssw",textAnnotation[1]['id'], None)

#for e in bpmn_graph.get_nodes():
    #print(e)


#bpmn_graph.add_sequence_flow_to_diagram("Process_0f53oai","Activity_12bl4v5", "TextAnnotation_0dpjutk", None)

# bpmn_graph.add_task_to_diagram("Activity_0e44s34","TestProva",None)

#id_DataObject, dataObject = bpmn_graph.add_dataObject_to_diagram("Process_0gwcszw", None)
#id_dataobjectref, dataRef = bpmn_graph.add_dataObjectReference_to_diagram("Process_0gwcszw", "320", "80","TestDataObject", id_DataObject, None)
#bpmn_graph.add_dataOutput_to_diagram("Activity_0sk03aw",x,y,id_dataobjectref, None)
#(self,ProcessId,DataObjectName,XDataObject,YDataObject):

#x,y,id_dataobjectref=bpmn_graph.add_dataObject_with_Association_to_diagram("Process_0gwcszw","NomeProva","320", "80")
#x1,y1,id_dataobjectref1=bpmn_graph.add_dataObject_with_Association_to_diagram("Process_17ewa3x","NomeProva2","380", "180")






#bpmn_graph.add_dataOutput_to_diagram("Activity_1xtu41w","100","100",id_dataobjectref, None)
#x, y, dataobject_ref=bpmn_graph.add_dataObject_with_Association_to_diagram("Process_17ewa3x", "prova input", "200", "200",)
#bpmn_graph.add_dataOutput_to_diagram("Activity_0ihnntb", x, y,dataobject_ref, None )
#x, y, id=bpmn_graph.add_dataStoreReference_to_diagram("Process_17ewa3x", "200", "200", "datastore prova 2", None)
#bpmn_graph.add_dataInput_to_diagram(dataobject_ref, x, y,"360", "159","Activity_0ihnntb", None)
#bpmn_graph.add_association_dataObject_node(dataRef, "Activity_0ihnntb", "input" )
#bpmn_graph.add_dataInput_to_diagram("DataStoreReference_YzvcTexCI", "200", "200","360", "409","Activity_0ihnntb", None)
#bpmn_graph.set_task_type("Activity_0ihnntb", "task")
#id=bpmn_graph.get_node_id_by_name('Compile certificate request')
#print( "id:", id)
#print("x, y, id", x, y, id)
#textAnnotation=bpmn_graph.add_textAnnotation_to_diagram("Process_17ewa3x", "200", "200", "prova", None)
#bpmn_graph.add_Association_to_diagram("Process_17ewa3x", textAnnotation[1]['id'], "Activity_0ihnntb")
#bpmn_graph.add_dataStoreReference_to_diagram()

#bpmn_graph.add_dataStoreReference_to_diagram("Process_17ewa3x", "200", "200", "prova","Activity_0qbnh9m" )
bpmn_graph.export_xml_file(r"C:/Users/veron/OneDrive/Desktop/Tesi/Materiale/eGovRa/prov/", "prova1.bpmn")

"""
for tuple in lista:
    for dizionario in tuple:
        if type(dizionario) is dict:
            if dizionario['type'].endswith("Task"):
                #print(dizionario['type'])
                print(dizionario)
"""

