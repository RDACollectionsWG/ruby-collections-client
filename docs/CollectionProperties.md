# CollectionsClient::CollectionProperties

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ownership** | **String** | Indicates the owner of the Collection. Implementation is expected to use a controlled vocabulary or PIDs. | 
**license** | **String** | Indicates the license that applies to the Collection. Implementation is expected to use a controlled vocabulary, stable URIs or PIDs of registered data types.  | 
**model_type** | **String** | Identifies the model that the collection adheres to. Iimplementation is expected to use a controlled vocabulary, or PIDs of registered data types.  | 
**has_access_restrictions** | **BOOLEAN** | Indicates whether the collection is fully open or has access restrictions.  | [default to false]
**member_of** | **Array&lt;String&gt;** | If provided, this is a list of collection identifiers to which this collection itself belongs. This property is only meaningful if the service features supports a  maximumExpansionDepth &gt; 0. | [optional] 
**description_ontology** | **String** | Identifies the ontology used for descriptive metadata. Implementation is expected to supply the URI of a controlled vocabulary. | 


