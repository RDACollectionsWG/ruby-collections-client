# CollectionsClient::CollectionCapabilities

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_ordered** | **BOOLEAN** | Identifies whether the collection items are kept in a consistent, meaningful order. The exact nature of the ordering is not specified, but see also appendsToEnd property. | [default to false]
**appends_to_end** | **BOOLEAN** | For an ordered collection, indicates that new items are appended to the end rather than insertable at a specified, possibly invalid, index points. Only valid if isOrdered is true. | [default to true]
**supports_roles** | **BOOLEAN** | Indicates whether the collection supports assigning roles to its member items. Available roles are determined by the Collection Model type. | [default to false]
**membership_is_mutable** | **BOOLEAN** | Indicates whether collection membership mutable (i.e. whether members can be added and removed) | [default to true]
**metadata_is_mutable** | **BOOLEAN** | Indicates whether collection metadata is mutable (i.e. can the metadata of this collection be changed) | [default to true]
**restricted_to_type** | **String** | If specified, indicates that the collection is made up of homogenous items of the specified type. Type should be specified using the PID of a registered Data Type or a controlled vocabulary. | 
**max_length** | **Integer** | The maximum length of the Collection. -1 means length is not restricted. | 


