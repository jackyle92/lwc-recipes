public with sharing class UpdateContactPageLayout {
  public UpdateContactPageLayout() {
  }

  // Add custom field to Page layout
  public Metadata.Layout addLayoutItem() {
    // Retrieve the metadata for the Contact page layout
    List<Metadata.Metadata> layoutsList = Metadata.Operations.retrieve(
      Metadata.MetadataType.LAYOUT,
      new List<String>{ 'Contact-Contact Layout' }
    );
    Metadata.Layout layoutMetadata = (Metadata.Layout) layoutsList.get(0);
    Metadata.LayoutSection contactLayoutSection = null;
    List<Metadata.LayoutSection> layoutSection = layoutMetadata.layoutSections;

    for (Metadata.LayoutSection section : layoutSection) {
      if (section.label == 'Additional Information') {
        contactLayoutSection = section;
        break;
      }
    }
    // add the field under Contact additional information section in the left column
    List<Metadata.LayoutColumn> contactColumns = contactLayoutSection.layoutColumns;
    List<Metadata.LayoutItem> contactLayoutItems = contactColumns[0]
      .layoutItems;
    // create a new layout item for the custom field
    Metadata.LayoutItem newField = new Metadata.LayoutItem();
    newField.behavior = Metadata.UiBehavior.EDIT;
    newField.field = 'AMAPI__Apex_MD_API_Twitter_name__c';
    contactLayoutItems.add(newField);
    return layoutMetadata;
  }
}