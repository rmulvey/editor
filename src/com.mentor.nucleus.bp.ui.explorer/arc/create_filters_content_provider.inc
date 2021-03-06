.//=====================================================================
.//
.// File:      $RCSfile: create_filters_content_provider.inc,v $
.// Version:   $Revision: 1.11 $
.// Modified:  $Date: 2013/01/10 23:15:41 $
.//
.// (c) Copyright 2003-2014 Mentor Graphics Corporation All rights reserved.
.//
.//=====================================================================
.// Licensed under the Apache License, Version 2.0 (the "License"); you may not
.// use this file except in compliance with the License.  You may obtain a copy
.// of the License at
.//
.//      http://www.apache.org/licenses/LICENSE-2.0
.//
.// Unless required by applicable law or agreed to in writing, software
.// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
.// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   See the
.// License for the specific language governing permissions and limitations under
.// the License.
.//=====================================================================
.//
.// This file is responsible for generating the class that provides the
.// Model Explorer filter dialog with a list of things that can be 
.// filtered.
.//
.function create_filters_content_provider
  .param string path
  .//
  .assign provider_name = "FiltersContentProvider"
  .assign attr_result = provider_name  
package com.mentor.nucleus.bp.ui.explorer;
//======================================================================
//
// File: ${path}/${provider_name}.java
//
// WARNING:      Do not edit this generated file
// Generated by: ${info.arch_file_name}
// Version:      $$Revision: 1.11 $$
//
// (c) Copyright 2003-2014 Mentor Graphics Corporation  All rights reserved.
//
//======================================================================
//
// This class provides the Model Explorer filter dialog with a list of
// things that can be filtered.
//
import java.util.ArrayList;
import java.util.List;

import org.eclipse.jface.dialogs.IDialogSettings;
import org.eclipse.jface.viewers.IStructuredContentProvider;
import org.eclipse.jface.viewers.Viewer;

/**
 * The FiltersContentProvider provides the elements for use by the list dialog
 * for selecting the patterns to apply.
 */
class ${provider_name} implements IStructuredContentProvider {
  private static List definedFilters;
  /**
   * Create a ${provider_name} using the selections from the supplied
   * resource filter.
   */
  public ${provider_name}() {
  }
  /* (non-Javadoc)
   * Method declared on IContentProvider.
   */
  public void dispose() {}
  /**
   * Returns the filters currently defined for the navigator.
   *
   * @return a list of strings
   */
  public static List getDefinedFilters() {
    if (definedFilters == null) {
      readFilters();
    }
    return definedFilters;
  }
  /* (non-Javadoc)
   * Method declared on IStructuredContentProvider.
   */
  public Object[] getElements(Object inputElement) {
    return getDefinedFilters().toArray();
  }
  /**
   * Return the initially selected elements.
   */
  public String[] getInitialSelections() {
    IDialogSettings settings = ExplorerPlugin.getDefault().getDialogSettings();
    ArrayList selections = new ArrayList();
    if (settings != null) {   
      IDialogSettings filterSect = settings.getSection("com.mentor.nucleus.bp.ui.filterSettings"); // $$NON-NLS-1$$
      if (filterSect != null) {
        for (int i=0; i<getDefinedFilters().size(); i++){
          String filter = filterSect.get((String)getDefinedFilters().get(i));
          if (filter != null) {
            if (filter.equals("true")) {  // $$NON-NLS-1$$
              selections.add(getDefinedFilters().get(i));
            }
          }
        }
      }
    }
    String [] result = new String[selections.size()];
    for (int i=0; i<selections.size(); i++) {
      result[i] = (String)selections.get(i);
    }
    return result;
  }
  /**
   * Set the selected elements
   */
  public void setSelections(String [] elements){
    ArrayList selections = new ArrayList();
    for (int i=0; i < elements.length; i++){
      selections.add(elements[i]);
    }
    IDialogSettings settings = ExplorerPlugin.getDefault().getDialogSettings();
    if (settings != null) {
      IDialogSettings filterSect = settings.getSection("com.mentor.nucleus.bp.ui.filterSettings"); // $$NON-NLS-1$$
      if (filterSect == null) {
        filterSect = settings.addNewSection("com.mentor.nucleus.bp.ui.filterSettings"); // $$NON-NLS-1$$
      }
  .select many tree_nodes from instances of T_TNS
  .for each node in tree_nodes
      filterSect.put("${node.CategoryName}", selections.contains("${node.CategoryName}")); // $$NON-NLS-1$$ $$NON-NLS-2$$
  .end for
    }   
  }
  /* (non-Javadoc)
   * Method declared on IContentProvider.
   */
  public void inputChanged(Viewer viewer, Object oldInput, Object newInput) {
    // Input cannot change, do nothing.
  }
  /**
   * Reads the filters currently defined for the workbench. 
   */
  private static void readFilters() {
  .assign node_count = cardinality tree_nodes
    definedFilters = new ArrayList();
  .for each node in tree_nodes
    .// Put only non root node types in the list (i.e. not 'System')
    .// Filtering the root node has no effect on the tree (filtering
    .// on 'Domains' clears the tree).
    .select any parent_spec related by node->T_TPS[R1001]
    .if (not_empty parent_spec)
    definedFilters.add("${node.CategoryName}"); // $$NON-NLS-1$$
    .end if
  .end for
  }
} // FiltersContentProvider
.end function
.//