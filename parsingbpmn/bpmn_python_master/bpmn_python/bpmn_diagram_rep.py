# coding=utf-8
"""
Package with BPMNDiagramGraph - graph representation of BPMN diagram
"""
import uuid
import random
import string

import networkx as nx

import parsingbpmn.bpmn_python_master.bpmn_python.bpmn_diagram_exception as bpmn_exception
import parsingbpmn.bpmn_python_master.bpmn_python.bpmn_diagram_export as bpmn_export
import parsingbpmn.bpmn_python_master.bpmn_python.bpmn_diagram_import as bpmn_import
import parsingbpmn.bpmn_python_master.bpmn_python.bpmn_process_csv_export as bpmn_csv_export
import parsingbpmn.bpmn_python_master.bpmn_python.bpmn_process_csv_import as bpmn_csv_import
import parsingbpmn.bpmn_python_master.bpmn_python.bpmn_python_consts as consts


class BpmnDiagramGraph(object):
    """
    Class BPMNDiagramGraph implements simple inner representation of BPMN 2.0 diagram,
    based on NetworkX graph implementation

    Fields:

    * diagram_graph - networkx.Graph object, stores elements of BPMN diagram as nodes. Each edge of graph represents
        sequenceFlow element. Edges are identified by IDs of nodes connected by edge. IDs are passed as edge parameters,
    * sequence_flows - dictionary (associative list) of sequence flows existing in diagram.
        Key attribute is sequenceFlow ID, value is a dictionary consisting three key-value pairs: "name" (sequence flow
        name), "sourceRef" (ID of node, that is a flow source) and "targetRef" (ID of node, that is a flow target),
    * collaboration - a dictionary that contains two dictionaries:
        * "messageFlows" - dictionary (associative list) of message flows existing in diagram. Key attribute is
            messageFlow ID, value is a dictionary consisting three key-value pairs: "name" (message flow name),
        * "sourceRef" (ID of node, that is a flow source) and "targetRef" (ID of node, that is a flow target),
        * "participants" - dictionary (associative list) of participants existing in diagram. Key attribute is
            participant ID, value is a dictionary consisting participant attributes,
    * process_elements_dictionary - dictionary that holds attribute values for imported 'process' elements. 
        Key is an ID of process, value is a dictionary of all process attributes,

    * diagram_attributes - dictionary that contains BPMN diagram element attributes,
    * plane_attributes - dictionary that contains BPMN plane element attributes.
    """

    # String "constants" used in multiple places
    id_prefix = "id"
    bpmndi_namespace = "bpmndi:"

    def __init__(self):
        """
        Default constructor, initializes object fields with new instances.
        """
        self.diagram_graph = nx.Graph()
        self.sequence_flows = {}
        self.process_elements = {}
        self.diagram_attributes = {}
        self.plane_attributes = {}
        self.collaboration = {}
        self.association_flow = {}

    def load_diagram_from_xml_file(self, filepath):
        """
        Reads an XML file from given filepath and maps it into inner representation of BPMN diagram.
        Returns an instance of BPMNDiagramGraph class.

        :param filepath: string with output filepath.
        """

        return bpmn_import.BpmnDiagramGraphImport.load_diagram_from_xml(filepath,self)

    def export_xml_file(self, directory, filename):
        """
        Exports diagram inner graph to BPMN 2.0 XML file (with Diagram Interchange data).

        :param directory: strings representing output directory,
        :param filename: string representing output file name.
        """
        bpmn_export.BpmnDiagramGraphExport.export_xml_file(directory, filename, self)

    def export_xml_file_no_di(self, directory, filename):
        """
        Exports diagram inner graph to BPMN 2.0 XML file (without Diagram Interchange data).

        :param directory: strings representing output directory,
        :param filename: string representing output file name.
        """
        bpmn_export.BpmnDiagramGraphExport.export_xml_file_no_di(directory, filename, self)

    def load_diagram_from_csv_file(self, filepath):
        """
        Reads an CSV file from given filepath and maps it into inner representation of BPMN diagram.
        Returns an instance of BPMNDiagramGraph class.

        :param filepath: string with output filepath.
        """

        bpmn_csv_import.BpmnDiagramGraphCSVImport.load_diagram_from_csv(filepath, self)

    def export_csv_file(self, directory, filename):
        """
        Exports diagram inner graph to BPMN 2.0 XML file (with Diagram Interchange data).

        :param directory: strings representing output directory,
        :param filename: string representing output file name.
        """
        bpmn_csv_export.BpmnDiagramGraphCsvExport.export_process_to_csv(self, directory, filename)

    # Querying methods
    def get_nodes(self, node_type=""):
        """
        Gets all nodes of requested type. If no type is provided by user, all nodes in BPMN diagram graph are returned.
        Returns a dictionary, where key is an ID of node, value is a dictionary of all node attributes.

        :param node_type: string with valid BPMN XML tag name (e.g. 'task', 'sequenceFlow').
        """
        tmp_nodes = self.diagram_graph.nodes(True)


        if node_type == "":
            return tmp_nodes
        else:
            nodes = []
            for node in tmp_nodes:
                if node[1][consts.Consts.type] == node_type:
                    nodes.append(node)
            return nodes

    def get_nodes_list_by_process_id(self, process_id):
        """
        Gets all nodes of requested type. If no type is provided by user, all nodes in BPMN diagram graph are returned.
        Returns a dictionary, where key is an ID of node, value is a dictionary of all node attributes.

        :param process_id: string object, representing an ID of parent process element.
        """
        tmp_nodes = self.diagram_graph.nodes(True)
        nodes = []
        for node in tmp_nodes:
            if node[1][consts.Consts.process] == process_id:
                nodes.append(node)
        return nodes

    def get_node_by_id(self, node_id):
        """
        Gets a node with requested ID.
        Returns a tuple, where first value is node ID, second - a dictionary of all node attributes.

        :param node_id: string with ID of node.
        """
        tmp_nodes = self.diagram_graph.nodes(data=True)
        for node in tmp_nodes:
            if node[0] == node_id:
                return node

    def get_nodes_id_list_by_type(self, node_type):
        """
        Get a list of node's id by requested type.
        Returns a list of ids

        :param node_type: string with valid BPMN XML tag name (e.g. 'task', 'sequenceFlow').
        """
        tmp_nodes = self.diagram_graph.nodes(data=True)
        id_list = []
        for node in tmp_nodes:
            if node[1][consts.Consts.type] == node_type:
                id_list.append(node[0])
        return id_list


    def get_node_id_by_name(self, name=''):
        tmp_nodes = self.diagram_graph.nodes(data=True)
        for node in tmp_nodes:
            print(node, "nodeeeeee")
            try:

                if node[1][consts.Consts.node_name] == name:
                    id = node[0]
                    return id
            except:
                print()
    def get_node_by_name(self, name=''):
        tmp_nodes = self.diagram_graph.nodes(data=True)
        for node in tmp_nodes:
            if node[1][consts.Consts.node_name] == name:
                return node


    def get_flows(self):
        """
        Gets all graph edges (process flows).
        Returns a two-dimensional dictionary, where keys are IDs of nodes connected by edge and
        values are a dictionary of all edge attributes.
        """
        return self.diagram_graph.edges(data=True)

    def get_flow_by_id(self, flow_id):
        """
        Gets an edge (flow) with requested ID.
        Returns a tuple, where first value is node ID, second - a dictionary of all node attributes.

        :param flow_id: string with edge ID.
        """
        tmp_flows = self.diagram_graph.edges(data=True)
        for flow in tmp_flows:
            if flow[2][consts.Consts.id] == flow_id:
                return flow

    def get_flows_list_by_process_id(self, process_id):
        """
        Gets an edge (flow) with requested ID.
        Returns a tuple, where first value is node ID, second - a dictionary of all node attributes.

        :param process_id: string object, representing an ID of parent process element.
        """
        tmp_flows = self.diagram_graph.edges(data=True)
        flows = []
        for flow in tmp_flows:
            if consts.Consts.process in flow[2] and flow[2][consts.Consts.process] == process_id:
                flows.append(flow)
        return flows

    # Diagram creating methods
    def create_new_diagram_graph(self, diagram_name=""):
        """
        Initializes a new BPMN diagram and sets up a basic diagram attributes.
        Accepts a user-defined values for following attributes:
        (Diagram element)

        - name - default value empty string.

        :param diagram_name: string type. Represents a user-defined value of 'BPMNDiagram' element
            attribute 'name'. Default value - empty string.
        """
        self.__init__()
        diagram_id = BpmnDiagramGraph.id_prefix + str(uuid.uuid4())

        self.diagram_attributes[consts.Consts.id] = diagram_id
        self.diagram_attributes[consts.Consts.name] = diagram_name

    def add_process_to_diagram(self, process_name="", process_is_closed=False, process_is_executable=False,
                               process_type="None"):
        """
        Adds a new process to diagram and corresponding participant
            process, diagram and plane

        Accepts a user-defined values for following attributes:
        (Process element)
        - isClosed - default value false,
        - isExecutable - default value false,
        - processType - default value None.

        :param process_name: string obejct, process name. Default value - empty string,
        :param process_is_closed: boolean type. Represents a user-defined value of 'process' element
            attribute 'isClosed'. Default value false,
        :param process_is_executable: boolean type. Represents a user-defined value of 'process' element
            attribute 'isExecutable'. Default value false,
        :param process_type: string type. Represents a user-defined value of 'process' element
            attribute 'procesType'. Default value "None",
        """
        plane_id = BpmnDiagramGraph.id_prefix + str(uuid.uuid4())
        process_id = BpmnDiagramGraph.id_prefix + str(uuid.uuid4())

        self.process_elements[process_id] = {consts.Consts.name: process_name,
                                             consts.Consts.is_closed: "true" if process_is_closed else "false",
                                             consts.Consts.is_executable: "true" if process_is_executable else "false",
                                             consts.Consts.process_type: process_type}

        self.plane_attributes[consts.Consts.id] = plane_id
        self.plane_attributes[consts.Consts.bpmn_element] = process_id
        return process_id



    def add_textAnnotation_flow_node_to_diagram(self, process_id, type, text,x,y, node_id=None):
        """
        (process_id,text connected_task, node_id,)
        Helper function that adds a new Flow Node to diagram. It is used to add a new node of specified type.
        Adds a basic information inherited from Flow Node type.

        :param process_id: string object. ID of parent process,
        :param node_type: string object. Represents type of BPMN node passed to method,
        :param name: string object. Name of the node,
        :param node_id: string object. ID of node. Default value - None.
        """
        letters = string.ascii_letters
        result_str = ''.join(random.choice(letters) for i in range(9))

        if node_id is None:
            node_id = "TextAnnotation_" + result_str
        self.diagram_graph.add_node(node_id)
        self.diagram_graph._node[node_id][consts.Consts.id] = node_id
        self.diagram_graph._node[node_id][consts.Consts.type] = consts.Consts.textAnnotation
        self.diagram_graph._node[node_id][consts.Consts.text_in_Textann] = text
        # self.diagram_graph._node[node_id][consts.Consts.incoming_flow] = []
        # self.diagram_graph._node[node_id][consts.Consts.outgoing_flow] = []
        self.diagram_graph._node[node_id][consts.Consts.process] = process_id

        # Adding some dummy constant values
        self.diagram_graph._node[node_id][consts.Consts.width] = "120"
        self.diagram_graph._node[node_id][consts.Consts.height] = "30"
        self.diagram_graph._node[node_id][consts.Consts.x] = x
        self.diagram_graph._node[node_id][consts.Consts.y] = y
        return node_id, self.diagram_graph._node[node_id]

    def add_dataObject_flow_node_to_diagram(self, process_id, node_id_do=None):
        """
        (process_id,text connected_task, node_id,)
        Helper function that adds a new Flow Node to diagram. It is used to add a new node of specified type.
        Adds a basic information inherited from Flow Node type.

        :param process_id: string object. ID of parent process,
        :param node_type: string object. Represents type of BPMN node passed to method,
        :param name: string object. Name of the node,
        :param node_id: string object. ID of node. Default value - None.
        """
        letters = string.ascii_letters
        result_str = ''.join(random.choice(letters) for i in range(9))
        if node_id_do is None:
            node_id_do = "DataObject_" + result_str

        self.diagram_graph.add_node(node_id_do)
        self.diagram_graph._node[node_id_do][consts.Consts.id] = node_id_do
        self.diagram_graph._node[node_id_do][consts.Consts.process] = process_id
        self.diagram_graph._node[node_id_do][consts.Consts.type] = consts.Consts.data_object
        self.diagram_graph._node[node_id_do][consts.Consts.is_collection] = ""

        return node_id_do, self.diagram_graph._node[node_id_do]
        # return node_id2, self.diagram_graph._node[node_id2]

    def add_dataObjectReference_flow_node_to_diagram(self, process_id, text, id_dataObject,x,y, node_id_dor=None):
        """
        (process_id,text connected_task, node_id,)
        Helper function that adds a new Flow Node to diagram. It is used to add a new node of specified type.
        Adds a basic information inherited from Flow Node type.

        :param process_id: string object. ID of parent process,
        :param node_type: string object. Represents type of BPMN node passed to method,
        :param name: string object. Name of the node,
        :param node_id: string object. ID of node. Default value - None.
        """
        letters = string.ascii_letters
        result_str = ''.join(random.choice(letters) for i in range(9))

        if node_id_dor is None:
            node_id_dor = "DataObjectReference_" + result_str
        self.diagram_graph.add_node(node_id_dor)
        self.diagram_graph._node[node_id_dor][consts.Consts.id] = node_id_dor
        self.diagram_graph._node[node_id_dor][consts.Consts.type] = consts.Consts.dataObjectReference
        self.diagram_graph._node[node_id_dor][consts.Consts.node_name] = text
        # self.diagram_graph._node[node_id][consts.Consts.incoming_flow] = []
        # self.diagram_graph._node[node_id][consts.Consts.outgoing_flow] = []
        self.diagram_graph._node[node_id_dor][consts.Consts.process] = process_id
        self.diagram_graph._node[node_id_dor][consts.Consts.dataObjectRef] = id_dataObject

        # Adding some dummy constant values
        self.diagram_graph._node[node_id_dor][consts.Consts.width] = "36"
        self.diagram_graph._node[node_id_dor][consts.Consts.height] = "50"
        self.diagram_graph._node[node_id_dor][consts.Consts.x] = x
        self.diagram_graph._node[node_id_dor][consts.Consts.y] = y
        return node_id_dor, self.diagram_graph._node[node_id_dor]
        # return node_id2, self.diagram_graph._node[node_id2]
    def add_dataStoreReference_flow_node_to_diagram(self, process_id, text, x,y, node_id_dsr=None):
        """
        (process_id,text connected_task, node_id,)
        Helper function that adds a new Flow Node to diagram. It is used to add a new node of specified type.
        Adds a basic information inherited from Flow Node type.

        :param process_id: string object. ID of parent process,
        :param node_type: string object. Represents type of BPMN node passed to method,
        :param name: string object. Name of the node,
        :param node_id: string object. ID of node. Default value - None.
        """
        letters = string.ascii_letters
        result_str = ''.join(random.choice(letters) for i in range(9))

        if node_id_dsr is None:
            node_id_dsr = "DataStoreReference_" + result_str
        self.diagram_graph.add_node(node_id_dsr)
        self.diagram_graph._node[node_id_dsr][consts.Consts.id] = node_id_dsr
        self.diagram_graph._node[node_id_dsr][consts.Consts.type] = consts.Consts.dataStoreReference
        self.diagram_graph._node[node_id_dsr][consts.Consts.node_name] = text
        self.diagram_graph._node[node_id_dsr][consts.Consts.dataStoreRef]=consts.Consts.dataStoreRef
        # self.diagram_graph._node[node_id][consts.Consts.incoming_flow] = []
        # self.diagram_graph._node[node_id][consts.Consts.outgoing_flow] = []
        self.diagram_graph._node[node_id_dsr][consts.Consts.process] = process_id
        #self.diagram_graph._node[node_id_dor][consts.Consts.dataObjectRef] = id_dataObject

        # Adding some dummy constant values
        self.diagram_graph._node[node_id_dsr][consts.Consts.width] = "50"
        self.diagram_graph._node[node_id_dsr][consts.Consts.height] = "50"
        self.diagram_graph._node[node_id_dsr][consts.Consts.x] = x
        self.diagram_graph._node[node_id_dsr][consts.Consts.y] = y
        return x, y, self.diagram_graph._node[node_id_dsr]
        # return node_id2, self.diagram_graph._node[node_id2]

    def add_Assocation_flow_node_to_diagram(self, process_id, sourceId, targetId, node_id=None):
        """
        (process_id,text connected_task, node_id,)
        Helper function that adds a new Flow Node to diagram. It is used to add a new node of specified type.
        Adds a basic information inherited from Flow Node type.

        :param process_id: string object. ID of parent process,
        :param node_type: string object. Represents type of BPMN node passed to method,
        :param name: string object. Name of the node,
        :param node_id: string object. ID of node. Default value - None.
        """
        letters = string.ascii_letters
        result_str = ''.join(random.choice(letters) for i in range(9))

        # la forma è questa <bpmn:association id="Association_01yjqmr" sourceRef="Activity_0d3htun" targetRef="TextAnnotation_0be5yqh" />
        if node_id is None:
            node_id = "Association_" + result_str
        self.diagram_graph.add_node(node_id)
        self.diagram_graph._node[node_id][consts.Consts.id] = node_id
        self.diagram_graph._node[node_id][consts.Consts.type] = consts.Consts.association
        self.diagram_graph._node[node_id][consts.Consts.association] = []
        self.diagram_graph._node[node_id][consts.Consts.association].append(node_id)
        self.diagram_graph._node[node_id][consts.Consts.association].append(sourceId)
        self.diagram_graph._node[node_id][consts.Consts.association].append(targetId)
        ['Association_0kdwnjh', 'Activity_1iaonrp', 'TextAnnotation_0iwo0w3']
        #self.diagram_graph._node[node_id][consts.Consts.source_ref] = sourceId
       # self.diagram_graph._node[node_id][consts.Consts.target_ref] = targetId
        # self.diagram_graph._node[node_id][consts.Consts.outgoing_flow] = []
        self.diagram_graph._node[node_id][consts.Consts.process] = process_id

        # deve essere generata la coppia dataobj e dataobjref
        # self.diagram_graph.add_node(node_id2)
        # self.diagram_graph._node[node_id2][consts.Consts.type] = "dataObject"
        # self.diagram_graph._node[node_id2][consts.Consts.process] = process_id

        # Adding some dummy constant values
        # self.diagram_graph._node[node_id][consts.Consts.width] = "200"
        # self.diagram_graph._node[node_id][consts.Consts.height] = "200"
        #self.diagram_graph._node[node_id][consts.Consts.x] = "200"
        #self.diagram_graph._node[node_id][consts.Consts.y] = "200"
        return node_id, self.diagram_graph._node[node_id]
        # return node_id2, self.diagram_graph._node[node_id2]

    def get_random_string(length):
        letters = string.ascii_letters
        result_str = ''.join(random.choice(letters) for i in range(length))
        return result_str

    def add_flow_node_to_diagram(self, process_id, node_type, name, node_id=None):
        """
        Helper function that adds a new Flow Node to diagram. It is used to add a new node of specified type.
        Adds a basic information inherited from Flow Node type.

        :param process_id: string object. ID of parent process,
        :param node_type: string object. Represents type of BPMN node passed to method,
        :param name: string object. Name of the node,
        :param node_id: string object. ID of node. Default value - None.
        """
        letters = string.ascii_letters
        result_str = ''.join(random.choice(letters) for i in range(9))

        if node_id is None:
            node_id = "Activity_" + result_str
        self.diagram_graph.add_node(node_id)
        self.diagram_graph._node[node_id][consts.Consts.id] = node_id
        self.diagram_graph._node[node_id][consts.Consts.type] = node_type
        self.diagram_graph._node[node_id][consts.Consts.node_name] = name
        self.diagram_graph._node[node_id][consts.Consts.incoming_flow] = []
        self.diagram_graph._node[node_id][consts.Consts.outgoing_flow] = []
        self.diagram_graph._node[node_id][consts.Consts.process] = process_id

        # Adding some dummy constant values
        self.diagram_graph._node[node_id][consts.Consts.width] = "100"
        self.diagram_graph._node[node_id][consts.Consts.height] = "100"
        self.diagram_graph._node[node_id][consts.Consts.x] = "100"
        self.diagram_graph._node[node_id][consts.Consts.y] = "100"
        return node_id, self.diagram_graph._node[node_id]

    def update_task_to_diagram(self, node_id,Targetx,Targety, dataOut_Ass, targetRef):
        """
        Helper function that adds a new Flow Node to diagram. It is used to add a new node of specified type.
        Adds a basic information inherited from Flow Node type.

        :param process_id: string object. ID of parent process,
        :param node_type: string object. Represents type of BPMN node passed to method,
        :param name: string object. Name of the node,
        :param node_id: string object. ID of node. Default value - None.
        """
        letters = string.ascii_letters
        result_str = ''.join(random.choice(letters) for i in range(9))
        #print(self.diagram_graph._node[node_id][consts.Consts.dataOutputAssociation],"controlla qua")
        single_dataoutput_assoc_dict = {}

        if dataOut_Ass is None:
            dataOut_Ass = "DataOutputAssociation_" + result_str
        # self.diagram_graph.add_node(node_id)
        # self.diagram_graph._node[node_id][consts.Consts.id] = node_id
        # self.diagram_graph._node[node_id][consts.Consts.type] = node_type
        # self.diagram_graph._node[node_id][consts.Consts.node_name] = name
        # self.diagram_graph._node[node_id][consts.Consts.incoming_flow] = []
        # self.diagram_graph._node[node_id][consts.Consts.outgoing_flow] = []
        # self.diagram_graph._node[node_id][consts.Consts.process] = process_id

        # Adding dataoutput association
        single_dataoutput_assoc_dict[consts.Consts.id] = dataOut_Ass
        single_dataoutput_assoc_dict[consts.Consts.target_ref] = targetRef
        single_dataoutput_assoc_dict[consts.Consts.x] = Targetx
        single_dataoutput_assoc_dict[consts.Consts.y] = Targety
        self.diagram_graph._node[node_id][consts.Consts.dataOutputAssociation].append(single_dataoutput_assoc_dict)

        # Adding some dummy constant values
        # self.diagram_graph._node[node_id][consts.Consts.width] = "100"
        # self.diagram_graph._node[node_id][consts.Consts.height] = "100"
        #self.diagram_graph._node[node_id][consts.Consts.dataOutputAssociation][consts.Consts.x] = Targetx
        #self.diagram_graph._node[node_id][consts.Consts.dataOutputAssociation][consts.Consts.y] = Targety
        return node_id, self.diagram_graph._node[node_id]
    def update_InputTask_to_diagram(self, dataObjectRef,sourcex, sourcey, Targetx,Targety, dataIn_Ass, target_node_id):
        """
        Helper function that adds a new Flow Node to diagram. It is used to add a new node of specified type.
        Adds a basic information inherited from Flow Node type.

        :param process_id: string object. ID of parent process,
        :param node_type: string object. Represents type of BPMN node passed to method,
        :param name: string object. Name of the node,
        :param node_id: string object. ID of node. Default value - None.
        """
        letters = string.ascii_letters
        result_str = ''.join(random.choice(letters) for i in range(9))
        #print(self.diagram_graph._node[node_id][consts.Consts.dataOutputAssociation],"controlla qua")
        single_datainput_assoc_dict = {}

        if dataIn_Ass is None:
            dataIn_Ass = "DataInputAssociation_" + result_str

        single_datainput_assoc_dict[consts.Consts.id] = dataIn_Ass
        single_datainput_assoc_dict[consts.Consts.source_ref]=dataObjectRef
        single_datainput_assoc_dict[consts.Consts.target_ref] = target_node_id
        single_datainput_assoc_dict[consts.Consts.waypoints]=([sourcex, sourcey], [Targetx, Targety])
        self.diagram_graph._node[target_node_id][consts.Consts.dataInputAssociation].append(single_datainput_assoc_dict)

        # Adding some dummy constant values
        # self.diagram_graph._node[node_id][consts.Consts.width] = "100"
        # self.diagram_graph._node[node_id][consts.Consts.height] = "100"
        #self.diagram_graph._node[node_id][consts.Consts.dataOutputAssociation][consts.Consts.x] = Targetx
        #self.diagram_graph._node[node_id][consts.Consts.dataOutputAssociation][consts.Consts.y] = Targety
        return target_node_id, self.diagram_graph._node[target_node_id]

    def add_task_to_diagram(self, process_id, task_name="", node_id=None):
        """
        Adds a Task element to BPMN diagram.
        User-defined attributes:

        - name


        :param process_id: string object. ID of parent process,
        :param task_name: string object. Name of task,
        :param node_id: string object. ID of node. Default value - None.
        :return: a tuple, where first value is task ID, second a reference to created object.
        """
        return self.add_flow_node_to_diagram(process_id, consts.Consts.task, task_name, node_id)

    def add_textAnnotation_to_diagram(self, process_id,x,y, text, node_id=None):
        """
        Adds a TextAnnotation element to BPMN diagram.
        User-defined attributes:

        - name


        :param text: text related to TextAnnotation:
        :param process_id: string object. ID of parent process,
        :param connected_task: string object. Name of connected task
        :param node_id: string object. ID of node. Default value - None.
        :return: a tuple, where first value is task ID, second a reference to created object.
        """
        return self.add_textAnnotation_flow_node_to_diagram(process_id, consts.Consts.textAnnotation, text,x,y, node_id)

    def add_dataObject_to_diagram(self, process_id, node_id=None):
        """
        Adds a dataObject element to BPMN diagram.
        User-defined attributes:

        - name


        :param text: text related to TextAnnotation:
        :param process_id: string object. ID of parent process,
        :param connected_task: string object. Name of connected task
        :param node_id: string object. ID of node. Default value - None.
        :return: a tuple, where first value is task ID, second a reference to created object.
        """
        return self.add_dataObject_flow_node_to_diagram(process_id, node_id)

    def add_dataObjectReference_to_diagram(self, process_id,x,y, text="", id_dataObject="",node_id=None):
        """
        Adds a dataObjectReference element to BPMN diagram.
        User-defined attributes:

        - name


        :param text: text related to TextAnnotation:
        :param process_id: string object. ID of parent process,
        :param connected_task: string object. Name of connected task
        :param node_id: string object. ID of node. Default value - None.
        :return: a tuple, where first value is task ID, second a reference to created object.
        """
        return self.add_dataObjectReference_flow_node_to_diagram(process_id, text, id_dataObject,x,y, node_id)

    def add_dataStoreReference_to_diagram(self, process_id, x, y, text="", node_id=None):
        """
        Adds a dataObjectReference element to BPMN diagram.
        User-defined attributes:

        - name


        :param text: text related to TextAnnotation:
        :param process_id: string object. ID of parent process,
        :param connected_task: string object. Name of connected task
        :param node_id: string object. ID of node. Default value - None.
        :return: a tuple, where first value is task ID, second a reference to created object.
        """
        return self.add_dataStoreReference_flow_node_to_diagram(process_id, text, x, y, node_id)

    def add_dataOutput_to_diagram(self, node_id,dataObx, dataOby, dataObjectRef, dataOutput_id=""):
        """
        Adds a TextAnnotation element to BPMN diagram.
        User-defined attributes:

        - name


        :param text: text related to TextAnnotation:
        :param process_id: string object. ID of parent process,
        :param connected_task: string object. Name of connected task
        :param node_id: string object. ID of node. Default value - None.
        :return: a tuple, where first value is task ID, second a reference to created object.
        """
        return self.update_task_to_diagram(node_id,dataObx,dataOby, dataOutput_id, dataObjectRef)
    def add_dataInput_to_diagram(self,dataObjectRef ,sourcex, sourcey, Targetx,Targety, target_node_id, dataInput_id=""):#modifica
        """
        Adds a TextAnnotation element to BPMN diagram.
        User-defined attributes:

        - name


        :param text: text related to TextAnnotation:
        :param process_id: string object. ID of parent process,
        :param connected_task: string object. Name of connected task
        :param node_id: string object. ID of node. Default value - None.
        :return: a tuple, where first value is task ID, second a reference to created object.
        """
        return self.update_InputTask_to_diagram(dataObjectRef,sourcex, sourcey,Targetx,Targety, dataInput_id, target_node_id)

    def add_Association_to_diagram(self, process_id, sourceId, targetId, node_id=None):
        """
        Adds a TextAnnotation element to BPMN diagram.
        User-defined attributes:

        - name


        :param sourceId: taskid
        :param targetId: textannotationID
        :param text: text related to TextAnnotation:
        :param process_id: string object. ID of parent process,
        :param connected_task: string object. Name of connected task
        :param node_id: string object. ID of node. Default value - None.
        :return: a tuple, where first value is task ID, second a reference to created object.
        """
        return self.add_Assocation_flow_node_to_diagram(process_id, sourceId,
                                                        targetId, node_id)

    def add_subprocess_to_diagram(self, process_id, subprocess_name, is_expanded=False, triggered_by_event=False,
                                  node_id=None):
        """
        Adds a SubProcess element to BPMN diagram.
        User-defined attributes:

        - name
        - triggered_by_event


        :param process_id: string object. ID of parent process,
        :param subprocess_name: string object. Name of subprocess,
        :param is_expanded: boolean value for attribute "isExpanded". Default value false,
        :param triggered_by_event: boolean value for attribute "triggeredByEvent". Default value false,
        :param node_id: string object. ID of node. Default value - None.
        :return: a tuple, where first value is subProcess ID, second a reference to created object.
        """
        subprocess_id, subprocess = self.add_flow_node_to_diagram(process_id, consts.Consts.subprocess, subprocess_name,
                                                                  node_id)
        self.diagram_graph._node[subprocess_id][consts.Consts.is_expanded] = "true" if is_expanded else "false"
        self.diagram_graph._node[subprocess_id][consts.Consts.triggered_by_event] = \
            "true" if triggered_by_event else "false"
        return subprocess_id, subprocess

    def add_start_event_to_diagram(self, process_id, start_event_name="", start_event_definition=None,
                                   parallel_multiple=False, is_interrupting=True, node_id=None):
        """
        Adds a StartEvent element to BPMN diagram.

        User-defined attributes:

        - name
        - parallel_multiple
        - is_interrupting
        - event definition (creates a special type of start event). Supported event definitions -
            * 'message': 'messageEventDefinition',
            * 'timer': 'timerEventDefinition',
            * 'signal': 'signalEventDefinition',
            * 'conditional': 'conditionalEventDefinition',
            * 'escalation': 'escalationEventDefinition'.

        :param process_id: string object. ID of parent process,
        :param start_event_name: string object. Name of start event,
        :param start_event_definition: list of event definitions. By default - empty,
        :param parallel_multiple: boolean value for attribute "parallelMultiple",
        :param is_interrupting: boolean value for attribute "isInterrupting,
        :param node_id: string object. ID of node. Default value - None.

        :return: a tuple, where first value is startEvent ID, second a reference to created object.
        """
        start_event_id, start_event = self.add_flow_node_to_diagram(process_id, consts.Consts.start_event,
                                                                    start_event_name, node_id)
        self.diagram_graph._node[start_event_id][consts.Consts.parallel_multiple] = \
            "true" if parallel_multiple else "false"
        self.diagram_graph._node[start_event_id][consts.Consts.is_interrupting] = "true" if is_interrupting else "false"
        start_event_definitions = {"message": "messageEventDefinition", "timer": "timerEventDefinition",
                                   "conditional": "conditionalEventDefinition", "signal": "signalEventDefinition",
                                   "escalation": "escalationEventDefinition"}
        event_def_list = []
        if start_event_definition == "message":
            event_def_list.append(BpmnDiagramGraph.add_event_definition_element("message", start_event_definitions))
        elif start_event_definition == "timer":
            event_def_list.append(BpmnDiagramGraph.add_event_definition_element("timer", start_event_definitions))
        elif start_event_definition == "conditional":
            event_def_list.append(BpmnDiagramGraph.add_event_definition_element("conditional", start_event_definitions))
        elif start_event_definition == "signal":
            event_def_list.append(BpmnDiagramGraph.add_event_definition_element("signal", start_event_definitions))
        elif start_event_definition == "escalation":
            event_def_list.append(BpmnDiagramGraph.add_event_definition_element("escalation", start_event_definitions))

        self.diagram_graph._node[start_event_id][consts.Consts.event_definitions] = event_def_list
        return start_event_id, start_event

    def add_end_event_to_diagram(self, process_id, end_event_name="", end_event_definition=None, node_id=None):
        """
        Adds an EndEvent element to BPMN diagram.
        User-defined attributes:

        - name
        - event definition (creates a special type of end event). Supported event definitions
            * `terminate`: 'terminateEventDefinition',
            * `signal`: 'signalEventDefinition',
            * `error`: 'errorEventDefinition',
            * `escalation`: 'escalationEventDefinition',
            * `message`: 'messageEventDefinition',
            * `compensate`: 'compensateEventDefinition'.

        :param process_id: string object. ID of parent process,
        :param end_event_name: string object. Name of end event,
        :param end_event_definition: list of event definitions. By default - empty.
        :param node_id: string object. ID of node. Default value - None.
        :return: a tuple, where first value is endEvent ID, second a reference to created object,
        """
        end_event_id, end_event = self.add_flow_node_to_diagram(process_id, consts.Consts.end_event, end_event_name,
                                                                node_id)
        end_event_definitions = {"terminate": "terminateEventDefinition", "escalation": "escalationEventDefinition",
                                 "message": "messageEventDefinition", "compensate": "compensateEventDefinition",
                                 "signal": "signalEventDefinition", "error": "errorEventDefinition"}
        event_def_list = []
        if end_event_definition == "terminate":
            event_def_list.append(self.add_event_definition_element("terminate", end_event_definitions))
        elif end_event_definition == "escalation":
            event_def_list.append(self.add_event_definition_element("escalation", end_event_definitions))
        elif end_event_definition == "message":
            event_def_list.append(self.add_event_definition_element("message", end_event_definitions))
        elif end_event_definition == "compensate":
            event_def_list.append(self.add_event_definition_element("compensate", end_event_definitions))
        elif end_event_definition == "signal":
            event_def_list.append(self.add_event_definition_element("signal", end_event_definitions))
        elif end_event_definition == "error":
            event_def_list.append(self.add_event_definition_element("error", end_event_definitions))

        self.diagram_graph._node[end_event_id][consts.Consts.event_definitions] = event_def_list
        return end_event_id, end_event

    @staticmethod
    def add_event_definition_element(event_type, event_definitions):
        """
        Helper function, that creates event definition element (special type of event) from given parameters.

        :param event_type: string object. Short name of required event definition,
        :param event_definitions: dictionary of event definitions. Key is a short name of event definition,
           value is a full name of event definition, as defined in BPMN 2.0 XML Schema.
        """
        event_def_id = BpmnDiagramGraph.id_prefix + str(uuid.uuid4())
        event_def = {consts.Consts.id: event_def_id, consts.Consts.definition_type: event_definitions[event_type]}
        return event_def

    def add_gateway_to_diagram(self, process_id, gateway_type, gateway_name="", gateway_direction="Unspecified",
                               node_id=None, instantiate= None, event_type=None):
        """
        Adds an exclusiveGateway element to BPMN diagram.

        :param process_id: string object. ID of parent process,
        :param gateway_type: string object. Type of gateway to be added.
        :param gateway_name: string object. Name of exclusive gateway,
        :param gateway_direction: string object. Accepted values - "Unspecified", "Converging", "Diverging", "Mixed".
            Default value - "Unspecified",
        :param node_id: string object. ID of node. Default value - None.

        :return: a tuple, where first value is gateway ID, second a reference to created object.
        """
        gateway_id, gateway = self.add_flow_node_to_diagram(process_id, gateway_type, gateway_name, node_id)
        if not (gateway_direction in ("Unspecified", "Converging", "Diverging", "Mixed")):
            raise bpmn_exception.BpmnPythonError("Invalid value passed as gatewayDirection parameter. Value passed: "
                                                 + gateway_direction)
        self.diagram_graph._node[gateway_id][consts.Consts.gateway_direction] = gateway_direction
        if (gateway_type== consts.Consts.event_based_gateway): ##modifica
            if instantiate is not None and instantiate is bool:
                if instantiate:
                    self.diagram_graph._node[gateway_id][consts.Consts.instantiate] = "true"
                else:
                    self.diagram_graph._node[gateway_id][consts.Consts.instantiate] = "false"
            elif instantiate is None or instantiate is not bool:
                self.diagram_graph._node[gateway_id][consts.Consts.instantiate] = "false"
            if event_type is not None:
                self.diagram_graph._node[gateway_id][consts.Consts.event_gateway_type] = event_type
            else:
                self.diagram_graph._node[gateway_id][consts.Consts.event_gateway_type] = "Exclusive"


        return gateway_id, gateway
    def add_event_based_gateway_to_diagram(self, process_id, gateway_name="", instantiate=False, event_type=None, gateway_direction="Unspecified", default=None, node_id=None, ):
        event_based_gateway_id, event_based_gateway = self.add_gateway_to_diagram(process_id,
                                                                              consts.Consts.event_based_gateway,
                                                                              gateway_name=gateway_name,
                                                                              gateway_direction=gateway_direction,
                                                                              node_id=node_id,
                                                                              instantiate=instantiate,
                                                                              event_type=event_type)
        self.diagram_graph._node[event_based_gateway_id][consts.Consts.default] = default
        return event_based_gateway_id, event_based_gateway
    def add_exclusive_gateway_to_diagram(self, process_id, gateway_name="", gateway_direction="Unspecified",
                                         default=None, node_id=None):
        """
        Adds an exclusiveGateway element to BPMN diagram.

        :param process_id: string object. ID of parent process,
        :param gateway_name: string object. Name of exclusive gateway,
        :param gateway_direction: string object. Accepted values - "Unspecified", "Converging", "Diverging", "Mixed".
            Default value - "Unspecified".
        :param default: string object. ID of flow node, target of gateway default path. Default value - None,
        :param node_id: string object. ID of node. Default value - None.

        :return: a tuple, where first value is exculusiveGateway ID, second a reference to created object.
        """
        exclusive_gateway_id, exclusive_gateway = self.add_gateway_to_diagram(process_id,
                                                                              consts.Consts.exclusive_gateway,
                                                                              gateway_name=gateway_name,
                                                                              gateway_direction=gateway_direction,
                                                                              node_id=node_id)
        self.diagram_graph._node[exclusive_gateway_id][consts.Consts.default] = default
        return exclusive_gateway_id, exclusive_gateway

    def add_complex_gateway_to_diagram(self, process_id, gateway_name="", gateway_direction="Unspecified",
                                       default=None, node_id=None):
        """
        Adds an exclusiveGateway element to BPMN diagram.

        :param process_id: string object. ID of parent process,
        :param gateway_name: string object. Name of exclusive gateway,
        :param gateway_direction: string object. Accepted values - "Unspecified", "Converging", "Diverging", "Mixed".
            Default value - "Unspecified".
        :param default: string object. ID of flow node, target of gateway default path. Default value - None,
        :param node_id: string object. ID of node. Default value - None.

        :return: a tuple, where first value is exculusiveGateway ID, second a reference to created object.
        """
        complex_gateway_id, complex_gateway = self.add_gateway_to_diagram(process_id,
                                                                          consts.Consts.complex_gateway,
                                                                          gateway_name=gateway_name,
                                                                          gateway_direction=gateway_direction,
                                                                          node_id=node_id)
        self.diagram_graph._node[complex_gateway_id][consts.Consts.default] = default
        return complex_gateway_id, complex_gateway

    def add_inclusive_gateway_to_diagram(self, process_id, gateway_name="", gateway_direction="Unspecified",
                                         default=None, node_id=None):
        """
        Adds an inclusiveGateway element to BPMN diagram.

        :param process_id: string object. ID of parent process,
        :param gateway_name: string object. Name of inclusive gateway,
        :param gateway_direction: string object. Accepted values - "Unspecified", "Converging", "Diverging", "Mixed".
           Default value - "Unspecified",
        :param default: string object. ID of flow node, target of gateway default path. Default value - None,
        :param node_id: string object. ID of node. Default value - None.

        :return: a tuple, where first value is inclusiveGateway ID, second a reference to created object.
        """
        inclusive_gateway_id, inclusive_gateway = self.add_gateway_to_diagram(process_id,
                                                                              consts.Consts.inclusive_gateway,
                                                                              gateway_name=gateway_name,
                                                                              gateway_direction=gateway_direction,
                                                                              node_id=node_id)
        self.diagram_graph._node[inclusive_gateway_id][consts.Consts.default] = default
        return inclusive_gateway_id, inclusive_gateway

    def add_parallel_gateway_to_diagram(self, process_id, gateway_name="", gateway_direction="Unspecified",
                                        node_id=None):
        """
        Adds an parallelGateway element to BPMN diagram.

        :param process_id: string object. ID of parent process,
        :param gateway_name: string object. Name of inclusive gateway,
        :param gateway_direction: string object. Accepted values - "Unspecified", "Converging", "Diverging", "Mixed".
            Default value - "Unspecified",
        :param node_id: string object. ID of node. Default value - None.

        :return: a tuple, where first value is parallelGateway ID, second a reference to created object.
        """
        parallel_gateway_id, parallel_gateway = self.add_gateway_to_diagram(process_id,
                                                                            consts.Consts.parallel_gateway,
                                                                            gateway_name=gateway_name,
                                                                            gateway_direction=gateway_direction,
                                                                            node_id=node_id)
        return parallel_gateway_id, parallel_gateway

    def add_sequence_flow_to_diagram(self, process_id, source_ref_id, target_ref_id, sequence_flow_name=""):
        """
        Adds a SequenceFlow element to BPMN diagram.
        Requires that user passes a sourceRef and targetRef as parameters.
        User-defined attributes:

            - name

        :param process_id: string object. ID of parent process,
        :param source_ref_id: string object. ID of source node,
        :param target_ref_id: string object. ID of target node,
        :param sequence_flow_name: string object. Name of sequence flow.
        :return: a tuple, where first value is sequenceFlow ID, second a reference to created object.
        """
        sequence_flow_id = BpmnDiagramGraph.id_prefix + str(uuid.uuid4())
        self.sequence_flows[sequence_flow_id] = {consts.Consts.name: sequence_flow_name,
                                                 consts.Consts.source_ref: source_ref_id,
                                                 consts.Consts.target_ref: target_ref_id}
        self.diagram_graph.add_edge(source_ref_id, target_ref_id)
        flow = self.diagram_graph[source_ref_id][target_ref_id]
        flow[consts.Consts.id] = sequence_flow_id
        flow[consts.Consts.name] = sequence_flow_name
        flow[consts.Consts.process] = process_id
        flow[consts.Consts.source_ref] = source_ref_id
        flow[consts.Consts.target_ref] = target_ref_id
        source_node = self.diagram_graph._node[source_ref_id]
        target_node = self.diagram_graph._node[target_ref_id]
        flow[consts.Consts.waypoints] = \
            [(source_node[consts.Consts.x], source_node[consts.Consts.y]),
             (target_node[consts.Consts.x], target_node[consts.Consts.y])]

        # add target node (target_ref_id) as outgoing node from source node (source_ref_id)
        try:
            source_node[consts.Consts.outgoing_flow].append(sequence_flow_id)

            # add source node (source_ref_id) as incoming node to target node (target_ref_id)
            target_node[consts.Consts.incoming_flow].append(sequence_flow_id)
        except KeyError:
            print()

        return sequence_flow_id, flow

    def get_nodes_positions(self):
        """
        Getter method for nodes positions.

        :return: A dictionary with nodes as keys and positions as values
        """
        nodes = self.get_nodes()
        output = {}
        for node in nodes:
            output[node[0]] = (float(node[1][consts.Consts.x]), float(node[1][consts.Consts.y]))
        return output

    def add_dataObject_with_Association_to_diagram(self,ProcessId,DataObjectName,XDataObject,YDataObject):
        id_DataObject, dataObject = self.add_dataObject_to_diagram(ProcessId, None)
        id_dataobjectref, dataRef = self.add_dataObjectReference_to_diagram(ProcessId, XDataObject, YDataObject,
                                                                                  DataObjectName, id_DataObject, None)
        return XDataObject,YDataObject,id_dataobjectref

        # modifiche
    def set_task_type(self, node_id='', task_type='', name=''):
        node=self.get_node_by_id(node_id)
        #node=self.get_node_by_name(name)

        if (task_type == consts.Consts.task):
                node[1][consts.Consts.type] = task_type
        elif (task_type == consts.Consts.user_task or task_type.__contains__("User")):
                node[1][consts.Consts.type] = consts.Consts.user_task
        elif (task_type == consts.Consts.service_task or task_type.__contains__("Service")):
                node[1][consts.Consts.type] = consts.Consts.service_task
        elif (task_type == consts.Consts.manual_task or task_type.__contains__("Manual")):
                node[1][consts.Consts.type] = consts.Consts.manual_task
        elif (task_type == consts.Consts.send_task or task_type.__contains__("Send")):
                node[1][consts.Consts.type] = consts.Consts.send_task
        elif (task_type == consts.Consts.receive_task or task_type.__contains__("Receive")):
                node[1][consts.Consts.type] = consts.Consts.receive_task
        elif (task_type == consts.Consts.script_task or task_type.__contains__("Script")):
                node[1][consts.Consts.type] = consts.Consts.script_task
        elif (task_type == consts.Consts.business_rule_task or task_type.__contains__("Business")):
                node[1][consts.Consts.type] = consts.Consts.business_rule_task
        return node

    def add_association_dataObject_node(self, dataObjectRef, node_id, mode):
            x1, y1 = self.get_node_position_by_id(dataObjectRef)
            x2, y2 =self.get_node_position_by_id(node_id)
            if mode == "input":
                association_id = self.add_dataInput_to_diagram(dataObjectRef, x1, y1, x2, y2, node_id, None)
                return association_id
            elif mode == "output":
                association_id = self.add_dataOutput_to_diagram(node_id, x1, y1, dataObjectRef, None)
                return association_id
            else:
                return None
    def get_node_position_by_id(self, node_id):
        node = self.get_node_by_id(node_id)
        x=node[1][consts.Consts.x]
        y=node[1][consts.Consts.y]
        return x, y