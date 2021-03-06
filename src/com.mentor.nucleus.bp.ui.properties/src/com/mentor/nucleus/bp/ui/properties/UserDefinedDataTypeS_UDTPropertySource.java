//======================================================================
//
// File: UserDefinedDataTypeS_UDTPropertySource.java
//
// WARNING:      Do not edit this generated file
// Generated by: arc/BuildPropertySource.arc
// Version:      $Revision: 1.66 $
//
// (c) Copyright 2006-2014 by Mentor Graphics Corp.  All rights reserved.
//
//======================================================================

package com.mentor.nucleus.bp.ui.properties;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.Vector;

import org.eclipse.ui.views.properties.*;

import com.mentor.nucleus.bp.core.*;
import com.mentor.nucleus.bp.core.common.*;
import com.mentor.nucleus.bp.core.sorter.MetadataSortingManager;
import com.mentor.nucleus.bp.core.ui.cells.editors.*;
import com.mentor.nucleus.bp.core.util.DimensionsUtil;

public class UserDefinedDataTypeS_UDTPropertySource implements IPropertySource {
	private UserDataType_c m_inst;
	private DataType_c[] m_DataType;
	private String[] m_DataTypeCoreType;
	private PropertyDescriptor[] m_propertyDescriptors;
	private String[] Gen_Type_vals = {"User Defined", "date", "timestamp",
			"inst_ref<Timer>"};
	MetadataSortingManager sorter = MetadataSortingManager.createDefault();

	public UserDefinedDataTypeS_UDTPropertySource(UserDataType_c inst) {
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
		return m_inst.Get_name();
	}

	/* (non-Javadoc)
	 * @see org.eclipse.ui.views.properties.IPropertySource#getPropertyDescriptors()
	 */
	public IPropertyDescriptor[] getPropertyDescriptors() {
		if (m_inst == null || m_inst.isOrphaned())
			return new IPropertyDescriptor[0];
		int num_children = 0;
		if (m_inst.getGen_type() == 0) {
			DataType_c[] v_datatype = DataType_c
					.getManyS_DTsOnR17((UserDataType_c) m_inst);

			m_DataType = v_datatype;
			num_children += m_DataType.length;

			sorter.sort(v_datatype);
		}
		if (m_propertyDescriptors == null
				|| 2 + num_children != m_propertyDescriptors.length) {
			m_propertyDescriptors = new PropertyDescriptor[2 + num_children];
			boolean readonly = false;

			m_propertyDescriptors[0] = new EnumPropertyDescriptor("Gen_Type",
					"User Defined Type Type", Gen_Type_vals, true);
			m_propertyDescriptors[0]
					.setCategory(BridgepointPropertySheetPage.basicCategoryName);

			int d_index = 1;
			if (m_inst.getGen_type() == 0) {
				for (int i = 0; i < m_DataType.length; ++i) {
					m_propertyDescriptors[d_index] = new PropertyDescriptor(
							"DataType." + String.valueOf(i), "Data Type");
					m_propertyDescriptors[d_index].setCategory("Data Type");
					++d_index;
				}
			}

			// create combobox descriptor for Data Type
			DataType_c[] set25 = new DataType_c[0];
			DataType_c[] set25_2 = new DataType_c[0];
			// Note that datatypes our handled by the dt chooser dialog
			List list26 = new ArrayList(set25.length + set25_2.length);
			for (int i = 0; i < set25.length; ++i) {
				if (m_inst.Isallowedcoretype(set25[i].getName())) {
					list26.add(set25[i].getName());
				}
			}
			Collections.sort(list26, new Comparator() {
				Collator coll = Collator.getInstance(Locale.getDefault());
				public int compare(Object a, Object b) {
					return coll.compare((String) a, (String) b);
				}
			});
			m_DataTypeCoreType = new String[list26.size()];
			for (int i = 0; i < list26.size(); ++i) {
				m_DataTypeCoreType[i] = (String) list26.get(i);
			}
			if (!readonly) {
				readonly = (m_inst.getGen_type() != 0);
			}
			m_propertyDescriptors[d_index] = new ChooserPropertyDescriptor(
					"DataType",
					"Core Type",
					m_inst,
					"com.mentor.nucleus.bp.core.ui.actions.SetTypeOnS_UDTAction",
					readonly);
			m_propertyDescriptors[d_index]
					.setCategory(BridgepointPropertySheetPage.basicCategoryName);
			++d_index;
		}
		return m_propertyDescriptors;
	}

	/* (non-Javadoc)
	 * @see org.eclipse.ui.views.properties.IPropertySource#getPropertyValue(java.lang.Object)
	 */
	public Object getPropertyValue(Object id) {
		if (m_inst.isOrphaned()) {
			return "";
		}
		if (id.equals("Gen_Type")) {
			return Gen_Type_vals[m_inst.getGen_type()];
		}
		int d_index = 1;
		if (m_inst.getGen_type() == 0) {
			for (int i = 0; i < m_DataType.length; ++i) {
				if (m_propertyDescriptors[d_index].getId().equals(id)) {
					return new DataTypeS_DTPropertySource(m_DataType[i]);
				}
				++d_index;
			}
		}

		// getPropertyValue for combobox for Data Type
		if (id.equals("DataType")) {
			DataType_c val = DataType_c
					.getOneS_DTOnR18((UserDataType_c) m_inst);

			if (val != null)
				return val.getName();
		}
		++d_index;
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
			if (id.equals("Gen_Type")) {
				int new_val = Integer.parseInt(value.toString());
				if (new_val != m_inst.getGen_type()) {
					trans_name = "Change in property: 'Gen_Type' of User Data Type";//$NON-NLS-1$
					tr = tm.startTransaction(trans_name,
							Ooaofooa.getDefaultInstance());
					value_changed = true;
					m_inst.setGen_type(new_val);
				}
			}

			int d_index = 1;
			if (id.equals("DataType")) {
				DataType_c val = DataType_c
						.getOneS_DTOnR18((UserDataType_c) m_inst);

				if (!value.equals(val.getName())) {
					DataType_c[] set27_1 = new DataType_c[0];
					DataType_c[] set27_2 = new DataType_c[0];
					if (m_inst.isInGenericPackage()) {
						Package_c pkg = m_inst.getFirstParentPackage();
						Component_c component = m_inst
								.getFirstParentComponent();
						if ((pkg != null)) {
							pkg.Clearscope();
							pkg.Collectvisibleelementsforname(false,
									Gd_c.Null_unique_id(), false, "",
									pkg.getPackage_id(),
									Elementtypeconstants_c.DATATYPE);

							class SearchResultSet_test24870_c
									implements
										ClassQueryInterface_c {
								public boolean evaluate(Object candidate) {
									SearchResultSet_c selected = (SearchResultSet_c) candidate;
									return selected.getName().equals("")
											&& selected.getType() == Elementtypeconstants_c.DATATYPE;
								}
							}
							SearchResultSet_c v_resultSet = SearchResultSet_c
									.getOnePE_SRSOnR8005(pkg,
											new SearchResultSet_test24870_c());

							set27_2 = DataType_c
									.getManyS_DTsOnR8001(PackageableElement_c
											.getManyPE_PEsOnR8002(ElementVisibility_c
													.getManyPE_VISsOnR8006(v_resultSet)));
						} else {
							if (component != null) {
								component.Clearscope();
								component.Collectvisibleelementsforname(false,
										Gd_c.Null_unique_id(), "",
										component.getId(),
										Elementtypeconstants_c.DATATYPE);

								class ComponentResultSet_test24870_c
										implements
											ClassQueryInterface_c {
									public boolean evaluate(Object candidate) {
										ComponentResultSet_c selected = (ComponentResultSet_c) candidate;
										return selected.getName().equals("")
												&& selected.getType() == Elementtypeconstants_c.DATATYPE;
									}
								}
								ComponentResultSet_c v_resultSet = ComponentResultSet_c
										.getOnePE_CRSOnR8007(
												component,
												new ComponentResultSet_test24870_c());

								set27_2 = DataType_c
										.getManyS_DTsOnR8001(PackageableElement_c
												.getManyPE_PEsOnR8004(ComponentVisibility_c
														.getManyPE_CVSsOnR8008(v_resultSet)));

							} else {
								// only throw an error the the element owning
								// this property source, are expected to not
								// have a package or component (the cases that
								// are not are UDTs that are built in)  Note that
								// the tool will behave properly, as the field
								// for these are read-only.
								if (!m_inst.selfIsCoreDataType()) {
									Throwable t = new Throwable();
									t.fillInStackTrace();
									CorePlugin
											.logError(
													"Attempted to call an operation on a null instance.",
													t);
								}
							}

						}
					}

					else {
						Domain_c domain = Domain_c
								.DomainInstance((Ooaofooa) (m_inst
										.getModelRoot()));
						set27_1 = DataType_c.getManyS_DTsOnR14(domain);
						set27_2 = DataType_c
								.getManyS_DTsOnR4401(SystemDatatypeInPackage_c.getManySLD_SDINPsOnR4402(SystemModel_c
										.getManyS_SYSsOnR4606(ComponentPackage_c
												.getManyCP_CPsOnR4608(Component_c
														.getManyC_CsOnR4204(DomainAsComponent_c
																.getManyCN_DCsOnR4204(domain))))));
						if (domain == null) {
							set27_2 = DataType_c
									.getManyS_DTsOnR4401(SystemDatatypeInPackage_c
											.getManySLD_SDINPsOnR4402(SystemModel_c
													.getManyS_SYSsOnR4402(SystemDatatypeInPackage_c
															.getManySLD_SDINPsOnR4401(DataType_c
																	.getManyS_DTsOnR17(m_inst)))));
						}
					} // end isInGenericPackage
						// copy the system level data types into the
						// domain level data types array
					DataType_c[] set27_3 = new DataType_c[0];
					if (((SystemModel_c) m_inst.getRoot()).getUseglobals() == true) {
						set27_3 = DataType_c
								.getManyS_DTsOnR8001(PackageableElement_c
										.getManyPE_PEsOnR9100(GlobalElementInSystem_c
												.getManyG_EISsOnR9100((SystemModel_c) this.m_inst
														.getRoot())));
					}
					DataType_c[] set27 = new DataType_c[set27_1.length
							+ set27_2.length + +set27_3.length];
					System.arraycopy(set27_1, 0, set27, 0, set27_1.length);
					System.arraycopy(set27_2, 0, set27, set27_1.length,
							set27_2.length);
					System.arraycopy(set27_3, 0, set27, set27_1.length
							+ set27_2.length, set27_3.length);
					for (int i = 0; i < set27.length; ++i) {
						if (value.equals(set27[i].getName())) {
							trans_name = "Change in property: 'Core Type' of User Data Type"; //$NON-NLS-1$
							tr = tm.startTransaction(trans_name,
									Ooaofooa.getDefaultInstance());
							m_inst.unrelateAcrossR18From(val);
							m_inst.relateAcrossR18To(set27[i]);
							value_changed = true;
							break;
						}
					}
				}
			}
			++d_index;

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
