package com.mentor.nucleus.bp.core;
//====================================================================
//
// File:      com.mentor.nucleus.bp.core.DecisionMergeNode_c.java
//
// WARNING: Do not edit this generated file
// Generated by ../MC-Java/java.arc, $Revision: 1.111 $
//
// (c) Copyright 2005-2014 by Mentor Graphics Corp.  All rights reserved.
//
//====================================================================

// No special imports
import java.util.*;
import java.lang.reflect.*;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IAdaptable;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import com.mentor.nucleus.bp.core.util.PersistenceUtil;
import org.eclipse.core.runtime.NullProgressMonitor;
import com.mentor.nucleus.bp.core.ui.marker.UmlProblem;
import com.mentor.nucleus.bp.core.common.*;
abstract class EV_DECISION_MERGE_NODE extends genericEvent_c {
	public abstract int getEvtcode();
}

public class DecisionMergeNode_c extends NonRootModelElement
		implements
			IAdaptable,
			Cloneable {
	// Public Constructors
	public DecisionMergeNode_c(ModelRoot modelRoot, java.util.UUID p_m_id,
			String p_m_name, String p_m_descrip) {
		super(modelRoot);
		m_name = p_m_name;
		m_descrip = p_m_descrip;
		//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
		m_id = IdAssigner.preprocessUUID(p_m_id);

		Object[] key = {m_id};
		addInstanceToMap(key);
	}
	static public DecisionMergeNode_c createProxy(ModelRoot modelRoot,
			java.util.UUID p_m_id, String p_m_name, String p_m_descrip,
			String p_contentPath, IPath p_localPath) {
		ModelRoot resolvedModelRoot = ModelRoot.findModelRoot(modelRoot,
				p_contentPath, p_localPath);
		// if a model root was not resolved it is most likely
		// due to a missing file of the proxy, defualt back to
		// the original model root
		if (resolvedModelRoot != null)
			modelRoot = resolvedModelRoot;
		InstanceList instances = modelRoot
				.getInstanceList(DecisionMergeNode_c.class);
		DecisionMergeNode_c new_inst = null;
		synchronized (instances) {
			Object[] key = {p_m_id};
			new_inst = (DecisionMergeNode_c) instances.get(key);
		}
		String contentPath = PersistenceUtil.resolveRelativePath(p_localPath,
				new Path(p_contentPath));
		if (modelRoot.isNewCompareRoot()) {
			// for comparisons we do not want to change
			// the content path
			contentPath = p_contentPath;
		}
		if (new_inst != null && !modelRoot.isCompareRoot()) {
			PersistableModelComponent pmc = new_inst.getPersistableComponent();
			if (pmc == null) {
				// dangling reference, redo this instance
				new_inst.batchUnrelate();
				new_inst.m_name = p_m_name;
				new_inst.m_descrip = p_m_descrip;
				//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
				new_inst.m_id = IdAssigner.preprocessUUID(p_m_id);

			}
		}
		if (new_inst == null) {
			// there is no instance matching the id, create a proxy
			// if the resource doesn't exist then this will be a dangling reference
			new_inst = new DecisionMergeNode_c(modelRoot, p_m_id, p_m_name,
					p_m_descrip);
			new_inst.m_contentPath = contentPath;
		}
		return new_inst;
	}

	static public DecisionMergeNode_c resolveInstance(ModelRoot modelRoot,
			java.util.UUID p_m_id, String p_m_name, String p_m_descrip) {
		InstanceList instances = modelRoot
				.getInstanceList(DecisionMergeNode_c.class);
		DecisionMergeNode_c source = null;
		synchronized (instances) {
			Object[] key = {p_m_id};
			source = (DecisionMergeNode_c) instances.get(key);
			if (source != null && !modelRoot.isCompareRoot()) {
				source.convertFromProxy();
				source.batchUnrelate();
				source.m_name = p_m_name;
				source.m_descrip = p_m_descrip;
				//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
				source.m_id = IdAssigner.preprocessUUID(p_m_id);

				return source;
			}
		}
		// there is no instance matching the id
		DecisionMergeNode_c new_inst = new DecisionMergeNode_c(modelRoot,
				p_m_id, p_m_name, p_m_descrip);
		return new_inst;
	}
	public DecisionMergeNode_c(ModelRoot modelRoot) {
		super(modelRoot);
		m_name = "";
		m_descrip = "";
		m_id = IdAssigner.NULL_UUID;
		Object[] key = {m_id};
		addInstanceToMap(key);
	}

	public Object getInstanceKey() {
		Object[] key = {m_id};
		return key;
	}

	public boolean setInstanceKey(UUID p_newKey) {

		boolean changed = false;
		// round p1
		// round p2
		// round p3
		// round p4
		// round p5
		if (m_id != p_newKey) {

			m_id = p_newKey;
			changed = true;
		}
		return changed;
	}

	public boolean equals(Object elem) {
		if (!(elem instanceof DecisionMergeNode_c)) {
			return false;
		}
		// check that the model-roots are the same
		if (((NonRootModelElement) elem).getModelRoot() != getModelRoot()
				&& !getModelRoot().isCompareRoot()) {
			return false;
		}

		return identityEquals(elem);
	}

	public boolean identityEquals(Object elem) {
		if (!(elem instanceof DecisionMergeNode_c)) {
			return false;
		}

		DecisionMergeNode_c me = (DecisionMergeNode_c) elem;
		// don't allow an empty id-value to produce a false positive result;
		// in this case, use whether the two instances are actually the same 
		// one in memory, instead
		if (!getModelRoot().isCompareRoot()
				&& ((IdAssigner.NULL_UUID.equals(getId()) || IdAssigner.NULL_UUID
						.equals(((DecisionMergeNode_c) elem).getId())) && this != elem)) {
			return false;
		}
		if (!getId().equals(((DecisionMergeNode_c) elem).getId()))
			return false;
		return true;
	}

	public boolean cachedIdentityEquals(Object elem) {
		if (!(elem instanceof DecisionMergeNode_c)) {
			return false;
		}

		DecisionMergeNode_c me = (DecisionMergeNode_c) elem;
		if (!getIdCachedValue().equals(
				((DecisionMergeNode_c) elem).getIdCachedValue()))
			return false;
		return true;
	}

	// Attributes
	private String m_name;
	private String m_descrip;
	private java.util.UUID m_id;

	// declare association references from this class

	// referring navigation

	ControlNode_c IsSupertypeControlNode;
	public void relateAcrossR1106To(ControlNode_c target) {
		relateAcrossR1106To(target, true);
	}
	public void relateAcrossR1106To(ControlNode_c target, boolean notifyChanges) {
		if (target == null)
			return;

		if (target == IsSupertypeControlNode)
			return; // already related

		if (IsSupertypeControlNode != target) {

			Object oldKey = getInstanceKey();

			if (IsSupertypeControlNode != null) {

				IsSupertypeControlNode.clearBackPointerR1106To(this);

				if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == true) { //$NON-NLS-1$
					Ooaofooa.log
							.println(
									ILogger.CONSISTENCY,
									"DecisionMergeNode_c.relateAcrossR1106To(ControlNode_c target)",
									"Relate performed across R1106 from Decision Merge Node to Control Node without unrelate of prior instance.");
				}
			}

			IsSupertypeControlNode = target;
			if (IdAssigner.NULL_UUID.equals(target.getId())) {
				// do not update cached value
			} else {
				// update cached value
				m_id = target.getIdCachedValue();
			}
			updateInstanceKey(oldKey, getInstanceKey());
			target.setBackPointerR1106To(this);
			target.addRef();
			if (notifyChanges) {
				RelationshipChangeModelDelta change = new RelationshipChangeModelDelta(
						Modeleventnotification_c.DELTA_ELEMENT_RELATED, this,
						target, "1106", "");
				Ooaofooa.getDefaultInstance().fireModelElementRelationChanged(
						change);
			}
		}
	}
	public void unrelateAcrossR1106From(ControlNode_c target) {
		unrelateAcrossR1106From(target, true);
	}
	public void unrelateAcrossR1106From(ControlNode_c target,
			boolean notifyChanges) {
		if (target == null)
			return;

		if (IsSupertypeControlNode == null)
			return; // already unrelated

		if (target != IsSupertypeControlNode) {
			Exception e = new Exception();
			e.fillInStackTrace();
			CorePlugin.logError(
					"Tried to unrelate from non-related instance across R1106",
					e);
			return;
		}

		if (target != null) {
			target.clearBackPointerR1106To(this);
		}

		if (IsSupertypeControlNode != null) {

			m_id = IsSupertypeControlNode.getId();
			if (IdAssigner.NULL_UUID.equals(m_id)) {
				m_id = IsSupertypeControlNode.getIdCachedValue();
			}
			IsSupertypeControlNode = null;
			target.removeRef();
			if (notifyChanges) {
				RelationshipChangeModelDelta change = new RelationshipChangeModelDelta(
						Modeleventnotification_c.DELTA_ELEMENT_UNRELATED, this,
						target, "1106", "");
				Ooaofooa.getDefaultInstance().fireModelElementRelationChanged(
						change);
			}
		}
	}

	public static DecisionMergeNode_c getOneA_DMOnR1106(ControlNode_c[] targets) {
		return getOneA_DMOnR1106(targets, null);
	}

	public static DecisionMergeNode_c getOneA_DMOnR1106(
			ControlNode_c[] targets, ClassQueryInterface_c test) {
		DecisionMergeNode_c ret_val = null;
		if (targets != null) {
			for (int i = 0; i < targets.length && ret_val == null; ++i) {
				ret_val = getOneA_DMOnR1106(targets[i], test);
			}
		}

		return ret_val;
	}

	public static DecisionMergeNode_c getOneA_DMOnR1106(ControlNode_c target) {
		return getOneA_DMOnR1106(target, null);
	}

	public static DecisionMergeNode_c getOneA_DMOnR1106(ControlNode_c target,
			boolean loadComponent) {
		return getOneA_DMOnR1106(target.getModelRoot(), target, null,
				loadComponent);
	}

	public static DecisionMergeNode_c getOneA_DMOnR1106(ControlNode_c target,
			ClassQueryInterface_c test) {
		if (target != null) {
			return getOneA_DMOnR1106(target.getModelRoot(), target, test);
		}
		return null;
	}

	public static DecisionMergeNode_c getOneA_DMOnR1106(ModelRoot modelRoot,
			ControlNode_c target, ClassQueryInterface_c test) {
		return getOneA_DMOnR1106(modelRoot, target, test, true);
	}

	public static DecisionMergeNode_c getOneA_DMOnR1106(ModelRoot modelRoot,
			ControlNode_c target, ClassQueryInterface_c test,
			boolean loadComponent) {
		return find_getOneA_DMOnR1106(modelRoot, target, test);
	}
	private static DecisionMergeNode_c find_getOneA_DMOnR1106(
			ModelRoot modelRoot, ControlNode_c target,
			ClassQueryInterface_c test) {
		if (target != null) {
			DecisionMergeNode_c source = (DecisionMergeNode_c) target.backPointer_IsSubtypeDecisionMergeNodeIsSubtype_R1106;
			if (source != null && (test == null || test.evaluate(source))) {
				return source;
			}
		}
		// not found
		return null;
	}

	public static DecisionMergeNode_c[] getManyA_DMsOnR1106(
			ControlNode_c[] targets) {
		return getManyA_DMsOnR1106(targets, null);
	}
	public static DecisionMergeNode_c[] getManyA_DMsOnR1106(
			ControlNode_c[] targets, boolean loadComponent) {
		return getManyA_DMsOnR1106(targets, null, loadComponent);
	}
	public static DecisionMergeNode_c[] getManyA_DMsOnR1106(
			ControlNode_c[] targets, ClassQueryInterface_c test) {
		return getManyA_DMsOnR1106(targets, test, true);
	}

	public static DecisionMergeNode_c[] getManyA_DMsOnR1106(
			ControlNode_c[] targets, ClassQueryInterface_c test,
			boolean loadComponent) {

		if (targets == null || targets.length == 0 || targets[0] == null)
			return new DecisionMergeNode_c[0];

		ModelRoot modelRoot = targets[0].getModelRoot();

		InstanceList instances = modelRoot
				.getInstanceList(DecisionMergeNode_c.class);

		Vector matches = new Vector();
		for (int i = 0; i < targets.length; i++) {
			DecisionMergeNode_c source = (DecisionMergeNode_c) targets[i].backPointer_IsSubtypeDecisionMergeNodeIsSubtype_R1106;
			if (source != null && (test == null || test.evaluate(source))) {
				matches.add(source);
			}
		}
		if (matches.size() > 0) {
			DecisionMergeNode_c[] ret_set = new DecisionMergeNode_c[matches
					.size()];
			matches.copyInto(ret_set);
			return ret_set;
		} else {
			return new DecisionMergeNode_c[0];
		}
	}

	public static DecisionMergeNode_c[] getManyA_DMsOnR1106(ControlNode_c target) {
		if (target != null) {
			ControlNode_c[] targetArray = new ControlNode_c[1];
			targetArray[0] = target;
			return getManyA_DMsOnR1106(targetArray);
		} else {
			DecisionMergeNode_c[] result = new DecisionMergeNode_c[0];
			return result;
		}
	}

	public static DecisionMergeNode_c[] getManyA_DMsOnR1106(
			ControlNode_c target, boolean loadComponent) {
		if (target != null) {
			ControlNode_c[] targetArray = new ControlNode_c[1];
			targetArray[0] = target;
			return getManyA_DMsOnR1106(targetArray, loadComponent);
		} else {
			DecisionMergeNode_c[] result = new DecisionMergeNode_c[0];
			return result;
		}
	}

	public void batchRelate(ModelRoot modelRoot, boolean notifyChanges,
			boolean searchAllRoots) {
		batchRelate(modelRoot, false, notifyChanges, searchAllRoots);
	}

	public void batchRelate(ModelRoot modelRoot, boolean relateProxies,
			boolean notifyChanges, boolean searchAllRoots) {
		InstanceList instances = null;
		ModelRoot baseRoot = modelRoot;

		// R1106
		ControlNode_c relInst58506 = (ControlNode_c) baseRoot.getInstanceList(
				ControlNode_c.class).get(new Object[]{m_id});
		// if there was no local element, check for any global elements
		// failing that proceed to check other model roots
		if (relInst58506 == null) {
			relInst58506 = (ControlNode_c) Ooaofooa.getDefaultInstance()
					.getInstanceList(ControlNode_c.class)
					.get(new Object[]{m_id});
		}
		if (relInst58506 == null && searchAllRoots && !baseRoot.isCompareRoot()) {
			Ooaofooa[] roots = Ooaofooa.getInstances();
			for (int i = 0; i < roots.length; i++) {
				if (roots[i].isCompareRoot()) {
					// never use elements from any compare root
					continue;
				}
				relInst58506 = (ControlNode_c) roots[i].getInstanceList(
						ControlNode_c.class).get(new Object[]{m_id});
				if (relInst58506 != null)
					break;
			}
		}
		//synchronized
		if (relInst58506 != null) {
			if (relateProxies || !isProxy()
					|| (inSameComponent(this, relInst58506) && !isProxy())) {
				relInst58506.relateAcrossR1106To(this, notifyChanges);
			}
		}

	}
	public void batchUnrelate(boolean notifyChanges) {
		NonRootModelElement inst = null;
		// R1106
		// A_CTL
		inst = IsSupertypeControlNode;
		unrelateAcrossR1106From(IsSupertypeControlNode, notifyChanges);
		if (inst != null) {
			inst.removeRef();
		}
	}
	public static void batchRelateAll(ModelRoot modelRoot,
			boolean notifyChanges, boolean searchAllRoots) {
		batchRelateAll(modelRoot, notifyChanges, searchAllRoots, false);
	}
	public static void batchRelateAll(ModelRoot modelRoot, boolean notifyChanges, boolean searchAllRoots, boolean relateProxies)
  {
	InstanceList instances = modelRoot.getInstanceList(DecisionMergeNode_c.class);
    synchronized(instances) {
        Iterator<NonRootModelElement> cursor = instances.iterator() ;
    	while (cursor.hasNext())
	    {
            final DecisionMergeNode_c inst = (DecisionMergeNode_c)cursor.next() ;
	        inst.batchRelate(modelRoot, relateProxies, notifyChanges, searchAllRoots );
	    }
	}
  }
	public static void clearInstances(ModelRoot modelRoot) {
		InstanceList instances = modelRoot
				.getInstanceList(DecisionMergeNode_c.class);
		synchronized (instances) {
			for (int i = instances.size() - 1; i >= 0; i--) {
				((NonRootModelElement) instances.get(i)).delete_unchecked();
			}

		}
	}

	public static DecisionMergeNode_c DecisionMergeNodeInstance(
			ModelRoot modelRoot, ClassQueryInterface_c test,
			boolean loadComponent) {
		DecisionMergeNode_c result = findDecisionMergeNodeInstance(modelRoot,
				test, loadComponent);
		if (result == null && loadComponent) {
			List pmcs = PersistenceManager.findAllComponents(modelRoot,
					DecisionMergeNode_c.class);
			for (int i = 0; i < pmcs.size(); i++) {
				PersistableModelComponent component = (PersistableModelComponent) pmcs
						.get(i);
				if (!component.isLoaded()) {
					try {
						component.load(new NullProgressMonitor());
						result = findDecisionMergeNodeInstance(modelRoot, test,
								loadComponent);
						if (result != null)
							return result;
					} catch (Exception e) {
						CorePlugin.logError("Error Loading component", e);
					}
				}
			}
		}
		if (result != null && loadComponent) {
			result.loadProxy();
		}
		return result;
	}
	private static DecisionMergeNode_c findDecisionMergeNodeInstance(
			ModelRoot modelRoot, ClassQueryInterface_c test,
			boolean loadComponent) {
		InstanceList instances = modelRoot
				.getInstanceList(DecisionMergeNode_c.class);
		synchronized (instances) {
			for (int i = 0; i < instances.size(); ++i) {
				DecisionMergeNode_c x = (DecisionMergeNode_c) instances.get(i);
				if (test == null || test.evaluate(x)) {
					if (x.ensureLoaded(loadComponent))
						return x;
				}
			}
		}
		return null;
	}
	public static DecisionMergeNode_c DecisionMergeNodeInstance(
			ModelRoot modelRoot, ClassQueryInterface_c test) {
		return DecisionMergeNodeInstance(modelRoot, test, true);
	}

	public static DecisionMergeNode_c DecisionMergeNodeInstance(
			ModelRoot modelRoot) {
		return DecisionMergeNodeInstance(modelRoot, null, true);
	}

	public static DecisionMergeNode_c[] DecisionMergeNodeInstances(
			ModelRoot modelRoot, ClassQueryInterface_c test,
			boolean loadComponent) {
		if (loadComponent) {
			PersistenceManager.ensureAllInstancesLoaded(modelRoot,
					DecisionMergeNode_c.class);
		}
		InstanceList instances = modelRoot
				.getInstanceList(DecisionMergeNode_c.class);
		Vector matches = new Vector();
		synchronized (instances) {
			for (int i = 0; i < instances.size(); ++i) {
				DecisionMergeNode_c x = (DecisionMergeNode_c) instances.get(i);
				if (test == null || test.evaluate(x)) {
					if (x.ensureLoaded(loadComponent))
						matches.add(x);
				}
			}
			if (matches.size() > 0) {
				DecisionMergeNode_c[] ret_set = new DecisionMergeNode_c[matches
						.size()];
				matches.copyInto(ret_set);
				return ret_set;
			} else {
				return new DecisionMergeNode_c[0];
			}
		}
	}
	public static DecisionMergeNode_c[] DecisionMergeNodeInstances(
			ModelRoot modelRoot, ClassQueryInterface_c test) {
		return DecisionMergeNodeInstances(modelRoot, test, true);
	}
	public static DecisionMergeNode_c[] DecisionMergeNodeInstances(
			ModelRoot modelRoot) {
		return DecisionMergeNodeInstances(modelRoot, null, true);
	}

	public boolean delete() {
		boolean result = super.delete();
		boolean delete_error = false;
		String errorMsg = "The following relationships were not torn down by the Decision Merge Node.dispose call: ";
		ControlNode_c testR1106Inst4 = ControlNode_c.getOneA_CTLOnR1106(this,
				false);

		if (testR1106Inst4 != null) {
			delete_error = true;
			errorMsg = errorMsg + "1106 ";
		}
		if (delete_error == true) {

			if (CorePlugin.getDefault().isDebugging()) {
				Ooaofooa.log.println(ILogger.DELETE, "Decision Merge Node",
						errorMsg);
			} else {
				Exception e = new Exception();
				e.fillInStackTrace();
				CorePlugin.logError(errorMsg, e);
			}
		}
		return result;
	}

	// end declare instance pool

	// declare attribute accessors
	public boolean isUUID(String attributeName) {
		if (attributeName.equals("id")) {
			return true;
		}
		return false;
	}
	public String getCompUniqueID() {
		UUID tempID = null;
		long longID = 0L;
		StringBuffer result = new StringBuffer();

		tempID = getId();

		if (IdAssigner.NULL_UUID.equals(tempID))
			tempID = getIdCachedValue();
		result.append(Long.toHexString(tempID.getMostSignificantBits()));
		result.append(Long.toHexString(tempID.getLeastSignificantBits()));
		return result.toString();
	}
	// declare attribute accessors
	public String getName() {
		return m_name;
	}

	public void setName(String newValue) {
		if (newValue != null) {
			if (newValue.equals(m_name)) {
				return;
			}
		} else if (m_name != null) {
			if (m_name.equals(newValue)) {
				return;
			}
		} else {
			return;
		}
		AttributeChangeModelDelta change = new AttributeChangeModelDelta(
				Modeleventnotification_c.DELTA_ATTRIBUTE_CHANGE, this, "Name",
				m_name, newValue, true);
		m_name = newValue;
		Ooaofooa.getDefaultInstance().fireModelElementAttributeChanged(change);
	}
	public String getDescrip() {
		return m_descrip;
	}

	public void setDescrip(String newValue) {
		if (newValue != null) {
			if (newValue.equals(m_descrip)) {
				return;
			}
		} else if (m_descrip != null) {
			if (m_descrip.equals(newValue)) {
				return;
			}
		} else {
			return;
		}
		AttributeChangeModelDelta change = new AttributeChangeModelDelta(
				Modeleventnotification_c.DELTA_ATTRIBUTE_CHANGE, this,
				"Descrip", m_descrip, newValue, true);
		m_descrip = newValue;
		Ooaofooa.getDefaultInstance().fireModelElementAttributeChanged(change);
	}
	public long getIdLongBased() {
		if (IsSupertypeControlNode != null) {
			return IsSupertypeControlNode.getIdLongBased();
		}
		return 0;
	}
	public java.util.UUID getId() {
		if (IsSupertypeControlNode != null) {
			return IsSupertypeControlNode.getId();
		}
		return IdAssigner.NULL_UUID;
	}

	public boolean hasSuperType() {
		return (IsSupertypeControlNode != null);

	}

	public java.util.UUID getIdCachedValue() {
		if (!IdAssigner.NULL_UUID.equals(m_id))
			return m_id;
		else
			return getId();
	}

	public void setId(java.util.UUID newValue) {
		if (newValue != null) {
			if (newValue.equals(m_id)) {
				return;
			}
		} else if (m_id != null) {
			if (m_id.equals(newValue)) {
				return;
			}
		} else {
			return;
		}
		AttributeChangeModelDelta change = new AttributeChangeModelDelta(
				Modeleventnotification_c.DELTA_ATTRIBUTE_CHANGE, this, "Id",
				m_id, newValue, true);
		m_id = IdAssigner.preprocessUUID(newValue);
		Ooaofooa.getDefaultInstance().fireModelElementAttributeChanged(change);
	}
	// end declare accessors
	public static void checkClassConsistency(ModelRoot modelRoot) {
		Ooaofooa.log
				.println(ILogger.OPERATION, "Decision Merge Node", //$NON-NLS-1$
						" Operation entered: Decision Merge Node::checkClassConsistency"); //$NON-NLS-1$
		if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == false) { //$NON-NLS-1$
			return;
		}
		DecisionMergeNode_c[] objs = DecisionMergeNode_c
				.DecisionMergeNodeInstances(modelRoot, null, false);

		for (int i = 0; i < objs.length; i++) {
			objs[i].checkConsistency();
		}
	}
	public boolean checkConsistency() {
		Ooaofooa.log.println(ILogger.OPERATION, "Decision Merge Node", //$NON-NLS-1$
				" Operation entered: Decision Merge Node::checkConsistency"); //$NON-NLS-1$
		if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == false) { //$NON-NLS-1$
			return true;
		}
		ModelRoot modelRoot = getModelRoot();
		boolean retval = true;
		class DecisionMergeNode_c_test58508_c implements ClassQueryInterface_c {
			DecisionMergeNode_c_test58508_c(java.util.UUID p58509) {
				m_p58509 = p58509;
			}
			private java.util.UUID m_p58509;
			public boolean evaluate(Object candidate) {
				DecisionMergeNode_c selected = (DecisionMergeNode_c) candidate;
				boolean retval = false;
				retval = (selected.getId().equals(m_p58509));
				return retval;
			}
		}

		DecisionMergeNode_c[] objs58507 = DecisionMergeNode_c
				.DecisionMergeNodeInstances(modelRoot,
						new DecisionMergeNode_c_test58508_c(getId()));

		if (((objs58507.length) == 0)) {

			if (CorePlugin.getDefault().isDebugging()) {
				Ooaofooa.log
						.println(ILogger.CONSISTENCY,
								"Decision Merge Node", //$NON-NLS-1$
								"Consistency: Object: Decision Merge Node: Cardinality of an identifier is zero. " //$NON-NLS-1$
										+ "Actual Value: " + Integer.toString(objs58507.length)); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CorePlugin
						.logError(
								"Consistency: Object: Decision Merge Node: Cardinality of an identifier is zero. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs58507.length), e);
			}
			retval = false;

		}

		if (((objs58507.length) > 1)) {

			if (CorePlugin.getDefault().isDebugging()) {
				Ooaofooa.log
						.println(ILogger.CONSISTENCY,
								"Decision Merge Node", //$NON-NLS-1$
								"Consistency: Object: Decision Merge Node: Cardinality of an identifier is greater than 1. " //$NON-NLS-1$
										+ "Actual Value: " //$NON-NLS-1$ 
										+ Integer.toString(objs58507.length)
										+ " Id: " + "Not Printable"); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CorePlugin
						.logError(
								"Consistency: Object: Decision Merge Node: Cardinality of an identifier is greater than 1. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs58507.length)
										+ " Id: " + "Not Printable", e); //$NON-NLS-1$
			}
			retval = false;

		}

		// Decision Merge Node is a subtype in association: rel.Numb = 1106
		// The supertype class is: Control Node
		class ControlNode_c_test58513_c implements ClassQueryInterface_c {
			ControlNode_c_test58513_c(java.util.UUID p58514) {
				m_p58514 = p58514;
			}
			private java.util.UUID m_p58514;
			public boolean evaluate(Object candidate) {
				ControlNode_c selected = (ControlNode_c) candidate;
				boolean retval = false;
				retval = (selected.getId().equals(m_p58514));
				return retval;
			}
		}

		ControlNode_c[] objs58512 = ControlNode_c.ControlNodeInstances(
				modelRoot, new ControlNode_c_test58513_c(getId()));

		if (((objs58512.length) != 1)) {

			if (CorePlugin.getDefault().isDebugging()) {
				Ooaofooa.log
						.println(ILogger.CONSISTENCY,
								"Decision Merge Node", //$NON-NLS-1$
								"Consistency: Object: Decision Merge Node: Association: 1106: Cardinality of a supertype is not equal to 1. " //$NON-NLS-1$
										+ "Actual Value: " + Integer.toString(objs58512.length)); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CorePlugin
						.logError(
								"Consistency: Object: Decision Merge Node: Association: 1106: Cardinality of a supertype is not equal to 1. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs58512.length), e);
			}
			retval = false;

		}

		return retval;
	}

	// declare transform functions
	public void Dispose() {
		Ooaofooa.log.println(ILogger.OPERATION, "Decision Merge Node",
				" Operation entered: DecisionMergeNode::Dispose");
		final ModelRoot modelRoot = getModelRoot();
		ControlNode_c v_parent = ControlNode_c.getOneA_CTLOnR1106(this);

		if (((v_parent != null))) {

			if (v_parent != null) {
				v_parent.Dispose();
			} else {
				Throwable t = new Throwable();
				t.fillInStackTrace();
				CorePlugin
						.logError(
								"Attempted to call an operation on a null instance.",
								t);
			}

			return;

		}

		if (delete()) {
			Ooaofooa.getDefaultInstance().fireModelElementDeleted(
					new BaseModelDelta(Modeleventnotification_c.DELTA_DELETE,
							this));
		}

	} // End dispose
	public String Get_name() {
		Ooaofooa.log.println(ILogger.OPERATION, "Decision Merge Node",
				" Operation entered: DecisionMergeNode::Get_name");
		final ModelRoot modelRoot = getModelRoot();
		return getName();

	} // End get_name
	public boolean Incomingedgeallowed() {
		Ooaofooa.log.println(ILogger.OPERATION, "Decision Merge Node",
				" Operation entered: DecisionMergeNode::Incomingedgeallowed");
		final ModelRoot modelRoot = getModelRoot();
		return true;

	} // End incomingEdgeAllowed
	public boolean Outgoingedgeallowed() {
		Ooaofooa.log.println(ILogger.OPERATION, "Decision Merge Node",
				" Operation entered: DecisionMergeNode::Outgoingedgeallowed");
		final ModelRoot modelRoot = getModelRoot();
		return true;

	} // End outgoingEdgeAllowed
	public java.util.UUID Get_ooa_id() {
		Ooaofooa.log.println(ILogger.OPERATION, "Decision Merge Node",
				" Operation entered: DecisionMergeNode::Get_ooa_id");
		final ModelRoot modelRoot = getModelRoot();
		return getId();

	} // End get_ooa_id
	public int Get_style() {
		Ooaofooa.log.println(ILogger.OPERATION, "Decision Merge Node",
				" Operation entered: DecisionMergeNode::Get_style");
		final ModelRoot modelRoot = getModelRoot();
		return Style_c.Diamond;

	} // End get_style
	public int Get_text_style(final int p_At, final int p_Comp_num,
			final int p_Ent_num) {
		Ooaofooa.log.println(ILogger.OPERATION, "Decision Merge Node",
				" Operation entered: DecisionMergeNode::Get_text_style");
		final ModelRoot modelRoot = getModelRoot();
		return Style_c.None;

	} // End get_text_style
	public int Get_compartments() {
		Ooaofooa.log.println(ILogger.OPERATION, "Decision Merge Node",
				" Operation entered: DecisionMergeNode::Get_compartments");
		final ModelRoot modelRoot = getModelRoot();
		return 0;

	} // End get_compartments
	public int Get_entries(final int p_Comp_num) {
		Ooaofooa.log.println(ILogger.OPERATION, "Decision Merge Node",
				" Operation entered: DecisionMergeNode::Get_entries");
		final ModelRoot modelRoot = getModelRoot();
		return 0;

	} // End get_entries
	public String Get_compartment_text(final int p_At, final int p_Comp_num,
			final int p_Ent_num) {
		Ooaofooa.log.println(ILogger.OPERATION, "Decision Merge Node",
				" Operation entered: DecisionMergeNode::Get_compartment_text");
		final ModelRoot modelRoot = getModelRoot();
		String v_result = "";

		if ((p_At == Justification_c.Floating)) {

			if ((!getName().equals(""))) {

				v_result = getName();

			}

		}

		return v_result;

	} // End get_compartment_text
	public void Initialize() {
		Ooaofooa.log.println(ILogger.OPERATION, "Decision Merge Node",
				" Operation entered: DecisionMergeNode::Initialize");
		final ModelRoot modelRoot = getModelRoot();
		setName("");

	} // End initialize

	// end transform functions

	public Object getAdapter(Class adapter) {
		Object superAdapter = super.getAdapter(adapter);
		if (superAdapter != null) {
			return superAdapter;
		}
		return null;
	}
} // end Decision Merge Node
