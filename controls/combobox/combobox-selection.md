---
title: Selection
page_title: Xamarin ComboBox Documentation | Selection
description: Check our &quot;Selection&quot; documentation article for Telerik ComboBox for Xamarin control.
position: 6
slug: combobox-selection
---

# Selection

ComboBox for Xamarin enables the app users to quickly and easily select item/items fro a drop-down list. This topic will go through the provided by the ComboBox API related to item/items selection.

ComboBox control has a support for single and multiple selection. You can easily specify the required selection using the `SelectionMode` property.

## Main Properties

* **SelectionMode** (enumeration of type *Telerik.XamarinForms.Input.ComboBoxSelectionMode*): Defines whether the selection is single or multiple.
* **SelectedIndex** (*int*): Specifies the index of the first item in the current selection or -1 if the selection is empty.
* **SelectedItem** (*object*): Defines the first item in the current selection, or null if the selection is empty.
* **SelectedItems** (*readonly ObservableCollection &lt;object &gt; *): Gets the collection of currently Selected Items. 

> `SelectedItems` collection can be changed only when `SelectionMode` is `Multiple`. For `Single` `SelectionMode` use `SelectedItem`.

## Single Selection

The default **SelectinMode** (enumeration of type *Telerik.XamarinForms.Input.ComboBoxSelectionMode*) of the ComboBox control is **Single**.

### Example with Single Selection and SelectedIndex set

Here is the ComboBox definition in XAML:

<snippet id='combobox-single-selection-selectedindex'/>

you need to add the following namespace:

<snippet id='xmlns-telerikinput'/>

the sample business model

<snippet id='combobox-city-businessmodel'/>

and the ViewModel used:

<snippet id='comobobox-selection-viewmodel'/> 

This is how single selection looks:

![ComboBox Single Selection](images/dropdown-single-selection.png)

### Example with Single Selection and SelectedItem set

Here is the ComboBox definition in XAML:

<snippet id='combobox-single-selection-selecteditem'/>

you need to add the following namespace:

<snippet id='xmlns-telerikinput'/>

the sample business model

<snippet id='combobox-city-businessmodel'/>

and the ViewModel used:

<snippet id='comobobox-selection-viewmodel'/> 

## Multiple Selection

If you want to achieve multiple selection you will need to set the `SelectionMode` to `Multiple`. The multiple selected items are visualized inside tokens.

>important As the SelectedItems collection is read-only, in order to be notified when the collection is changed, you should listen to the  `CollectionChanged` event of the `SelectedItems`. Example with SelectedItems CollectionChanged can be found here: SDK Browser App - [ComboBo/HowTo/Selection with Checkboxes](https://github.com/telerik/xamarin-forms-sdk/tree/master/XamarinSDK/SDKBrowser/SDKBrowser/Examples/ComboBoxControl/HowToCategory/SelectionWithCheckBoxExample) and QSF app -> [ComboBox Customization example](https://github.com/telerik/telerik-xamarin-forms-samples/tree/master/QSF/QSF/Examples/ComboBoxControl/CustomizationExample). 

### Example with Multiple Selection and SelectedItems set

Here is the ComboBox definition in XAML:

<snippet id='combobox-multiple-selection'/>

the sample business model

<snippet id='combobox-city-businessmodel'/>

and the ViewModel used:

<snippet id='comobobox-selection-viewmodel'/> 

This is how multiple selection looks: 

![ComboBox Multiple Selection](images/combobox-multiple-selection-selecteditems.png)

>important The Selection example can be found in our [SDK Browser Application]({%slug developer-focused-examples%}). You can find the applications in the **Examples** folder of your local **Telerik UI for Xamarin** installation or in the following [GitHub repo](https://github.com/telerik/xamarin-forms-sdk).

## Events

ComboBox exposes a SelectionChanged event which is raised when item is selected.

The SelectionChanged event handler receives two parameters:

- The `sender` which is the RadComboBox control.
- ComboBoxSelectionChangedEventArgs provides the following properties:
	- `AddedItems`: the items added to the SelectedItemsCollection
	- `RemovedItems`: the items removed from the SelectedItmesCollection

## Commands

ComboBox has two commands related to the Selection feature:

- **SelectAllCommand** (*ICommand*): Selects all items from the source.
- **ClearSelectionCommand** (*ICommand*): Sets the selection to null. If Multiple SelectionMode is used, this command will clear all selected items.

## ComboBox with CheckBox

If you want to add checkbox inside the drop down and select/desect items using CheckBox, we have a how-to article how this scenario can be achieved. In addition you can select all/deselect all items using CheckBox inside the drop down header. For more details please check the [ComboBox with CheckBox Selection how to article]({%slug combobox-checkboxes-selection%}). 

## See Also

- [Key Features]({%slug combobox-key-features%})
- [Data Binding]({%slug combobox-databinding%})
- [Editing]({%slug combobox-editing%})
- [Searching]({%slug combobox-searching%})
- [Templates]({%slug combobox-templates%})
