# CollectionsClient::ServiceFeatures

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**provides_collection_pids** | **BOOLEAN** | Indicates whether this services provides collection PIDs for new collections. If this is false, requests for new Collections must supply the PID for the collection. If this is true, the Service will use its default PID provider (as advertised via the collectionPidProviderType feature) to create new PIDs to assign to new Collections. | [default to false]
**collection_pid_provider_type** | **String** | Identifies the PID provider service used by the Collection Service to create new PIDs for new Collection. Required if providesCollectionPids is true, otherwise this property is optional and has no meaning. Recommended to use a Controlled Vocabulary or registered Data Types | [optional] 
**enforces_access** | **BOOLEAN** | Indicates whether or not the service enforces access controls on requests. Implementation details access are left up to the implementor. This flag simply states whether or not the Service enforces access. | [default to false]
**supports_pagination** | **BOOLEAN** | Indicates whether or not the service offers pagination (via cursors) of response data. | [default to false]
**asynchronous_actions** | **BOOLEAN** | Indicates whether or not actions such as update, delete occur synchronously or may be queued for later action. | [default to false]
**rule_based_generation** | **BOOLEAN** | Indicates whether or not the service allows rule-based generation of new collections. | 
**max_expansion_depth** | **Integer** | The maximum depth to which collection members can be expanded. A value of 0 means that expansion is not supppoted. A value of -1 means that the collections can be expanded to infinite depth. | 
**provides_versioning** | **BOOLEAN** | Indicates whether the service offers support for versioning of Collections. Implementation details are left up to the implementor. | [default to false]
**supported_collection_operations** | [**Array&lt;null&gt;**](.md) | List of collection-level set operations that are supported by this service. | 
**supported_model_types** | [**Array&lt;null&gt;**](.md) | List of collection model types supported by this service.  Recommended to use a Controlled Vocabulary or registered Data Types | 


