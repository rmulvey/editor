//======================================================================
//
// File: xtUMLModelS_DOMPropertySource.java
//
// WARNING:      Do not edit this generated file
// Generated by: arc/BuildPropertySource.arc
// Version:      $Revision: 1.66 $
//
// (c) Copyright 2006-2014 by Mentor Graphics Corp.  All rights reserved.
//
//======================================================================

package com.mentor.nucleus.bp.ui.properties;
import org.eclipse.ui.views.properties.*;

import com.mentor.nucleus.bp.core.*;
import com.mentor.nucleus.bp.core.common.*;
import com.mentor.nucleus.bp.core.sorter.MetadataSortingManager;
import com.mentor.nucleus.bp.core.ui.cells.editors.*;
import com.mentor.nucleus.bp.core.util.DimensionsUtil;

public class xtUMLModelS_DOMPropertySource implements IPropertySource {
	private Domain_c m_inst;
	private DataTypePackage_c[] m_DataTypePackage;
	private FunctionPackage_c[] m_FunctionPackage;
	private Subsystem_c[] m_Subsystem;
	private ExternalEntityPackage_c[] m_ExternalEntityPackage;
	private Activity_c[] m_Activities;
	private Sequence_c[] m_Sequences;
	private Communication_c[] m_Communications;
	private UseCaseDiagram_c[] m_UseCaseDiagrams;
	private PropertyDescriptor[] m_propertyDescriptors;
	private String[] Full_Der_vals = {"Partially Derived", "Fully Derived"};
	MetadataSortingManager sorter = MetadataSortingManager.createDefault();

	public xtUMLModelS_DOMPropertySource(Domain_c inst) {
		m_inst = inst;
	}
	/* (non-Javadoc)
	 * @see org.eclipse.ui.views.properties.IPropertySource#getEditableValue()
	 */
	public Object getEditableValue() {
		return this;
	}

	/* (non-Javadoc)
	 * @see org.eclipse.ui.views.properties.IPropertySource#isPropertySet(java.lang.Object)
	 */
	public boolean isPropertySet(Object id) {
		return false;
	}

	/* (non-Javadoc)
	 * @see org.eclipse.ui.views.properties.IPropertySource#resetPropertyValue(java.lang.Object)
	 */
	public void resetPropertyValue(Object id) {
		// do nothing
	}

	public String toString() {
		return m_inst.getName();
	}

	/* (non-Javadoc)
	 * @see org.eclipse.ui.views.properties.IPropertySource#getPropertyDescriptors()
	 */
	public IPropertyDescriptor[] getPropertyDescriptors() {
		if (m_inst == null || m_inst.isOrphaned())
			return new IPropertyDescriptor[0];
		int num_children = 0;
		DataTypePackage_c[] v_datatypepackage = DataTypePackage_c
				.getManyS_DPKsOnR40((Domain_c) m_inst);

		m_DataTypePackage = v_datatypepackage;
		num_children += m_DataTypePackage.length;

		sorter.sort(v_datatypepackage);
		FunctionPackage_c[] v_functionpackage = FunctionPackage_c
				.getManyS_FPKsOnR29((Domain_c) m_inst);

		m_FunctionPackage = v_functionpackage;
		num_children += m_FunctionPackage.length;

		sorter.sort(v_functionpackage);
		Subsystem_c[] v_subsystem = Subsystem_c
				.getManyS_SSsOnR1((Domain_c) m_inst);

		m_Subsystem = v_subsystem;
		num_children += m_Subsystem.length;

		sorter.sort(v_subsystem);
		ExternalEntityPackage_c[] v_externalentitypackage = ExternalEntityPackage_c
				.getManyS_EEPKsOnR36((Domain_c) m_inst);

		m_ExternalEntityPackage = v_externalentitypackage;
		num_children += m_ExternalEntityPackage.length;

		sorter.sort(v_externalentitypackage);
		Activity_c[] v_activities = Activity_c
				.getManyA_AsOnR1100((Domain_c) m_inst);

		m_Activities = v_activities;
		num_children += m_Activities.length;

		sorter.sort(v_activities);
		Sequence_c[] v_sequences = Sequence_c
				.getManySQ_SsOnR913((Domain_c) m_inst);

		m_Sequences = v_sequences;
		num_children += m_Sequences.length;

		sorter.sort(v_sequences);
		Communication_c[] v_communications = Communication_c
				.getManyCOMM_COMMsOnR1132((Domain_c) m_inst);

		m_Communications = v_communications;
		num_children += m_Communications.length;

		sorter.sort(v_communications);
		UseCaseDiagram_c[] v_usecasediagrams = UseCaseDiagram_c
				.getManyUC_UCCsOnR1201((Domain_c) m_inst);

		m_UseCaseDiagrams = v_usecasediagrams;
		num_children += m_UseCaseDiagrams.length;

		sorter.sort(v_usecasediagrams);
		if (m_propertyDescriptors == null
				|| 3 + num_children != m_propertyDescriptors.length) {
			m_propertyDescriptors = new PropertyDescriptor[3 + num_children];
			boolean readonly = false;

			m_propertyDescriptors[0] = new TextPropertyDescriptor("Name",
					"Domain Name");
			m_propertyDescriptors[0]
					.setValidator(new ModelElementNameValidator(m_inst));
			m_propertyDescriptors[0]
					.setCategory(BridgepointPropertySheetPage.basicCategoryName);
			m_propertyDescriptors[1] = new DescriptionPropertyDescriptor(
					"Descrip", "Domain Description", m_inst);
			m_propertyDescriptors[1]
					.setCategory(BridgepointPropertySheetPage.basicCategoryName);
			m_propertyDescriptors[2] = new EnumPropertyDescriptor("Full_Der",
					"Fully Derived Indicator", Full_Der_vals, readonly);
			m_propertyDescriptors[2]
					.setCategory(BridgepointPropertySheetPage.basicCategoryName);

			int d_index = 3;
			for (int i = 0; i < m_DataTypePackage.length; ++i) {
				m_propertyDescriptors[d_index] = new PropertyDescriptor(
						"DataTypePackage." + String.valueOf(i),
						"Data Type Package");
				m_propertyDescriptors[d_index].setCategory("Data Type Package");
				++d_index;
			}

			for (int i = 0; i < m_FunctionPackage.length; ++i) {
				m_propertyDescriptors[d_index] = new PropertyDescriptor(
						"FunctionPackage." + String.valueOf(i),
						"Function Package");
				m_propertyDescriptors[d_index].setCategory("Function Package");
				++d_index;
			}

			for (int i = 0; i < m_Subsystem.length; ++i) {
				m_propertyDescriptors[d_index] = new PropertyDescriptor(
						"Subsystem." + String.valueOf(i), "Subsystem");
				m_propertyDescriptors[d_index].setCategory("Subsystem");
				++d_index;
			}

			for (int i = 0; i < m_ExternalEntityPackage.length; ++i) {
				m_propertyDescriptors[d_index] = new PropertyDescriptor(
						"ExternalEntityPackage." + String.valueOf(i),
						"External Entity Package");
				m_propertyDescriptors[d_index]
						.setCategory("External Entity Package");
				++d_index;
			}

			for (int i = 0; i < m_Activities.length; ++i) {
				m_propertyDescriptors[d_index] = new PropertyDescriptor(
						"Activities." + String.valueOf(i), "Activity");
				m_propertyDescriptors[d_index].setCategory("Activities");
				++d_index;
			}

			for (int i = 0; i < m_Sequences.length; ++i) {
				m_propertyDescriptors[d_index] = new PropertyDescriptor(
						"Sequences." + String.valueOf(i), "Sequence");
				m_propertyDescriptors[d_index].setCategory("Sequences");
				++d_index;
			}

			for (int i = 0; i < m_Communications.length; ++i) {
				m_propertyDescriptors[d_index] = new PropertyDescriptor(
						"Communications." + String.valueOf(i), "Communication");
				m_propertyDescriptors[d_index].setCategory("Communications");
				++d_index;
			}

			for (int i = 0; i < m_UseCaseDiagrams.length; ++i) {
				m_propertyDescriptors[d_index] = new PropertyDescriptor(
						"UseCaseDiagrams." + String.valueOf(i),
						"Use Case Diagram");
				m_propertyDescriptors[d_index].setCategory("Use Case Diagrams");
				++d_index;
			}

		}
		if (m_propertyDescriptors.length > 0)
			m_propertyDescriptors[0].setValidator(new DomainNameValidator());
		return m_propertyDescriptors;
	}

	/* (non-Javadoc)
	 * @see org.eclipse.ui.views.properties.IPropertySource#getPropertyValue(java.lang.Object)
	 */
	public Object getPropertyValue(Object id) {
		if (m_inst.isOrphaned()) {
			return "";
		}
		if (id.equals("Name")) {
			return m_inst.getName();
		} else if (id.equals("Descrip")) {
			return m_inst.getDescrip().replace('\n', '/');
		} else if (id.equals("Full_Der")) {
			return Full_Der_vals[m_inst.getFull_der()];
		}
		int d_index = 3;
		for (int i = 0; i < m_DataTypePackage.length; ++i) {
			if (m_propertyDescriptors[d_index].getId().equals(id)) {
				return new DataTypePackageS_DPKPropertySource(
						m_DataTypePackage[i]);
			}
			++d_index;
		}

		for (int i = 0; i < m_FunctionPackage.length; ++i) {
			if (m_propertyDescriptors[d_index].getId().equals(id)) {
				return new FunctionPackageS_FPKPropertySource(
						m_FunctionPackage[i]);
			}
			++d_index;
		}

		for (int i = 0; i < m_Subsystem.length; ++i) {
			if (m_propertyDescriptors[d_index].getId().equals(id)) {
				return new SubsystemS_SSPropertySource(m_Subsystem[i]);
			}
			++d_index;
		}

		for (int i = 0; i < m_ExternalEntityPackage.length; ++i) {
			if (m_propertyDescriptors[d_index].getId().equals(id)) {
				return new ExternalEntityPackageS_EEPKPropertySource(
						m_ExternalEntityPackage[i]);
			}
			++d_index;
		}

		for (int i = 0; i < m_Activities.length; ++i) {
			if (m_propertyDescriptors[d_index].getId().equals(id)) {
				return new ActivitiesA_APropertySource(m_Activities[i]);
			}
			++d_index;
		}

		for (int i = 0; i < m_Sequences.length; ++i) {
			if (m_propertyDescriptors[d_index].getId().equals(id)) {
				return new SequencesSQ_SPropertySource(m_Sequences[i]);
			}
			++d_index;
		}

		for (int i = 0; i < m_Communications.length; ++i) {
			if (m_propertyDescriptors[d_index].getId().equals(id)) {
				return new CommunicationsCOMM_COMMPropertySource(
						m_Communications[i]);
			}
			++d_index;
		}

		for (int i = 0; i < m_UseCaseDiagrams.length; ++i) {
			if (m_propertyDescriptors[d_index].getId().equals(id)) {
				return new UseCaseDiagramsUC_UCCPropertySource(
						m_UseCaseDiagrams[i]);
			}
			++d_index;
		}

		return null;
	}

	/* (non-Javadoc)
	 * @see org.eclipse.ui.views.properties.IPropertySource#setPropertyValue(java.lang.Object, java.lang.Object)
	 */
	public void setPropertyValue(Object id, Object value) {
		boolean value_changed = false;
		String trans_name = "";
		Transaction tr = null;
		Ooaofooa modelRoot = (Ooaofooa) m_inst.getModelRoot();
		TransactionManager tm = TransactionManager.getSingleton();
		try {
			if (id.equals("Name")) {
				if (!value.toString().equals(m_inst.getName())) {
					trans_name = "Change in property: 'Name' of Domain";//$NON-NLS-1$
					tr = tm.startTransaction(trans_name,
							Ooaofooa.getDefaultInstance());
					value_changed = true;
					m_inst.setName(value.toString());
				}
			} else if (id.equals("Descrip")) {
				if (!value.toString().equals(m_inst.getDescrip())) {
					trans_name = "Change in property: 'Descrip' of Domain";//$NON-NLS-1$
					tr = tm.startTransaction(trans_name,
							Ooaofooa.getDefaultInstance());
					value_changed = true;
					m_inst.setDescrip(value.toString());
				}
			} else if (id.equals("Full_Der")) {
				int new_val = Integer.parseInt(value.toString());
				if (new_val != m_inst.getFull_der()) {
					trans_name = "Change in property: 'Full_Der' of Domain";//$NON-NLS-1$
					tr = tm.startTransaction(trans_name,
							Ooaofooa.getDefaultInstance());
					value_changed = true;
					m_inst.setFull_der(new_val);
				}
			}

			// catch all exceptions and cancel the transaction
		} catch (Exception e) {
			// this can be null if there was
			// an exception starting the
			// transaction
			if (tr != null) {
				tm.cancelTransaction(tr, e);
				tr = null;
			}
			CorePlugin.logError("Transaction: " + trans_name
					+ " could not complete", e);
		}
		if (tr != null) {
			if (value_changed)
				tm.endTransaction(tr);
			else
				tm.cancelTransaction(tr);
		}
	}
}