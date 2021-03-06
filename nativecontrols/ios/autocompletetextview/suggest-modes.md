---
title: Suggest Modes
page_title: AutoCompleteTextView Suggest Modes
position: 3
---

# AutoCompleteTextView (Beta): Suggest Modes

There are three suggesting modes in which <code>TKAutoCompleteTextView</code> operates: 

- <code>TKAutoCompleteSuggestModeAppend</code> - suggestions are shown in list view.

<img src="../images/autocomplete-suggestmodes002.png"/>

- <code>TKAutoCompleteSuggestModeSuggest</code> - only one suggestion is shown as an instant completion to the typed text.

<img src="../images/autocomplete-suggestmodes003.png"/>

- <code>TKAutoCompleteSuggestModeSuggestAppend</code> - combines the first two modes.

<img src="../images/autocomplete-suggestmodes001.png"/>

The default suggesting mode is <code>TKAutoCompleteSuggestModeSuggest</code>. It can be changed through the <code>suggestMode</code> property of the <code>TKAutoCompleteTextView</code>:

<snippet id='autocmp-suggest-mode'/>

<snippet id='autocmp-suggest-mode-swift'/>

```C#
this.Autocomplete.SuggestMode = TKAutoCompleteSuggestMode.Suggest;
```

