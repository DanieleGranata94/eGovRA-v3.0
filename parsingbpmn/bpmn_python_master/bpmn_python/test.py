from parsingbpmn.bpmn_python_master.bpmn_python import bpmn_diagram_rep as diagram
from parsingbpmn.bpmn_python_master.bpmn_python import bpmn_import_utils as utils
from parsingbpmn.bpmn_python_master.bpmn_python import bpmn_python_consts as consts

bpmn_graph = diagram.BpmnDiagramGraph()

collab = bpmn_graph.load_diagram_from_xml_file(r"/Users/giacomodiguida/Downloads/diagram7.bpmn")
lista = bpmn_graph.get_nodes()
print(lista,"RISOLTO")


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
x1,y1,id_dataobjectref1=bpmn_graph.add_dataObject_with_Association_to_diagram("Process_0gwcszw","NomeProva2","380", "180")




bpmn_graph.add_dataOutput_to_diagram("Activity_1xtu41w",x1,y1,id_dataobjectref1, None)

lista = bpmn_graph.get_nodes()
print(lista,"after")

#bpmn_graph.add_dataOutput_to_diagram("Activity_1xtu41w","100","100",id_dataobjectref, None)


bpmn_graph.export_xml_file(r"/Users/giacomodiguida/Downloads", "CHECKHERE.bpmn")

"""
for tuple in lista:
    for dizionario in tuple:
        if type(dizionario) is dict:
            if dizionario['type'].endswith("Task"):
                #print(dizionario['type'])
                print(dizionario)
"""

