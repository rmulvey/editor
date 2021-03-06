package com.mentor.nucleus.bp.ui.canvas;
//====================================================================
//
// File:      com.mentor.nucleus.bp.ui.canvas.Reference_c.java
//
// WARNING: Do not edit this generated file
// Generated by ../MC-Java/java.arc, $Revision: 1.111 $
//
// (c) Copyright 2005-2014 by Mentor Graphics Corp.  All rights reserved.
//
//====================================================================

import com.mentor.nucleus.bp.core.*;
import org.eclipse.swt.graphics.GC;
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
abstract class EV_REFERENCE extends genericEvent_c {
	public abstract int getEvtcode();
}

public class Reference_c extends NonRootModelElement
		implements
			IAdaptable,
			Cloneable {
	// Public Constructors
	public Reference_c(ModelRoot modelRoot, java.util.UUID p_m_elementid,
			java.util.UUID p_m_leaf_elementid,
			boolean p_m_isindividualrepresentation) {
		super(modelRoot);
		m_isindividualrepresentation = p_m_isindividualrepresentation;
		//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
		m_leaf_elementid = IdAssigner.preprocessUUID(p_m_leaf_elementid);
		//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
		m_elementid = IdAssigner.preprocessUUID(p_m_elementid);

		Object[] key = {m_leaf_elementid};
		addInstanceToMap(key);
	}
	static public Reference_c createProxy(ModelRoot modelRoot,
			java.util.UUID p_m_elementid, java.util.UUID p_m_leaf_elementid,
			boolean p_m_isindividualrepresentation, String p_contentPath,
			IPath p_localPath) {
		ModelRoot resolvedModelRoot = ModelRoot.findModelRoot(modelRoot,
				p_contentPath, p_localPath);
		// if a model root was not resolved it is most likely
		// due to a missing file of the proxy, defualt back to
		// the original model root
		if (resolvedModelRoot != null)
			modelRoot = resolvedModelRoot;
		InstanceList instances = modelRoot.getInstanceList(Reference_c.class);
		Reference_c new_inst = null;
		synchronized (instances) {
			Object[] key = {p_m_leaf_elementid};
			new_inst = (Reference_c) instances.get(key);
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
				new_inst.m_isindividualrepresentation = p_m_isindividualrepresentation;
				//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
				new_inst.m_leaf_elementid = IdAssigner
						.preprocessUUID(p_m_leaf_elementid);
				//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
				new_inst.m_elementid = IdAssigner.preprocessUUID(p_m_elementid);

			}
		}
		if (new_inst == null) {
			// there is no instance matching the id, create a proxy
			// if the resource doesn't exist then this will be a dangling reference
			new_inst = new Reference_c(modelRoot, p_m_elementid,
					p_m_leaf_elementid, p_m_isindividualrepresentation);
			new_inst.m_contentPath = contentPath;
		}
		return new_inst;
	}

	static public Reference_c resolveInstance(ModelRoot modelRoot,
			java.util.UUID p_m_elementid, java.util.UUID p_m_leaf_elementid,
			boolean p_m_isindividualrepresentation) {
		InstanceList instances = modelRoot.getInstanceList(Reference_c.class);
		Reference_c source = null;
		synchronized (instances) {
			Object[] key = {p_m_leaf_elementid};
			source = (Reference_c) instances.get(key);
			if (source != null && !modelRoot.isCompareRoot()) {
				source.convertFromProxy();
				source.batchUnrelate();
				source.m_isindividualrepresentation = p_m_isindividualrepresentation;
				//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
				source.m_leaf_elementid = IdAssigner
						.preprocessUUID(p_m_leaf_elementid);
				//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
				source.m_elementid = IdAssigner.preprocessUUID(p_m_elementid);

				return source;
			}
		}
		// there is no instance matching the id
		Reference_c new_inst = new Reference_c(modelRoot, p_m_elementid,
				p_m_leaf_elementid, p_m_isindividualrepresentation);
		return new_inst;
	}
	public Reference_c(ModelRoot modelRoot) {
		super(modelRoot);
		m_leaf_elementid = IdAssigner.NULL_UUID;
		m_elementid = IdAssigner.NULL_UUID;
		Object[] key = {m_leaf_elementid};
		addInstanceToMap(key);
	}

	public Object getInstanceKey() {
		Object[] key = {m_leaf_elementid};
		return key;
	}

	public boolean setInstanceKey(UUID p_newKey) {

		boolean changed = false;
		// round p1
		// round p2
		// round p3
		// round p4
		// round p5
		if (m_leaf_elementid != p_newKey) {

			m_leaf_elementid = p_newKey;
			changed = true;
		}
		return changed;
	}

	public boolean equals(Object elem) {
		if (!(elem instanceof Reference_c)) {
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
		if (!(elem instanceof Reference_c)) {
			return false;
		}

		Reference_c me = (Reference_c) elem;
		// don't allow an empty id-value to produce a false positive result;
		// in this case, use whether the two instances are actually the same 
		// one in memory, instead
		if (!getModelRoot().isCompareRoot()
				&& ((IdAssigner.NULL_UUID.equals(getLeaf_elementid()) || IdAssigner.NULL_UUID
						.equals(((Reference_c) elem).getLeaf_elementid())) && this != elem)) {
			return false;
		}
		if (!getLeaf_elementid().equals(
				((Reference_c) elem).getLeaf_elementid()))
			return false;
		return true;
	}

	public boolean cachedIdentityEquals(Object elem) {
		if (!(elem instanceof Reference_c)) {
			return false;
		}

		Reference_c me = (Reference_c) elem;
		if (!getLeaf_elementidCachedValue().equals(
				((Reference_c) elem).getLeaf_elementidCachedValue()))
			return false;
		return true;
	}

	// Attributes
	private boolean m_isindividualrepresentation;
	private java.util.UUID m_leaf_elementid;
	private java.util.UUID m_elementid;

	// declare association references from this class

	// referring navigation

	Diagramelement_c ReferencedDiagramelement;
	public void relateAcrossR308To(Diagramelement_c target) {
		relateAcrossR308To(target, true);
	}
	public void relateAcrossR308To(Diagramelement_c target,
			boolean notifyChanges) {
		if (target == null)
			return;

		if (target == ReferencedDiagramelement)
			return; // already related

		if (ReferencedDiagramelement != target) {

			Object oldKey = getInstanceKey();

			if (ReferencedDiagramelement != null) {

				ReferencedDiagramelement.clearBackPointerR308To(this);

				if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == true) { //$NON-NLS-1$
					Ooaofgraphics.log
							.println(
									ILogger.CONSISTENCY,
									"Reference_c.relateAcrossR308To(Diagramelement_c target)",
									"Relate performed across R308 from Reference to DiagramElement without unrelate of prior instance.");
				}
			}

			ReferencedDiagramelement = target;
			m_leaf_elementid = target.getElementid();
			updateInstanceKey(oldKey, getInstanceKey());
			target.setBackPointerR308To(this);
			target.addRef();
			if (notifyChanges) {
				RelationshipChangeModelDelta change = new RelationshipChangeModelDelta(
						Modeleventnotification_c.DELTA_ELEMENT_RELATED, this,
						target, "308", "");
				Ooaofgraphics.getDefaultInstance()
						.fireModelElementRelationChanged(change);
			}
		}
	}
	public void unrelateAcrossR308From(Diagramelement_c target) {
		unrelateAcrossR308From(target, true);
	}
	public void unrelateAcrossR308From(Diagramelement_c target,
			boolean notifyChanges) {
		if (target == null)
			return;

		if (ReferencedDiagramelement == null)
			return; // already unrelated

		if (target != ReferencedDiagramelement) {
			Exception e = new Exception();
			e.fillInStackTrace();
			CanvasPlugin.logError(
					"Tried to unrelate from non-related instance across R308",
					e);
			return;
		}

		if (target != null) {
			target.clearBackPointerR308To(this);
		}

		if (ReferencedDiagramelement != null) {

			m_leaf_elementid = ReferencedDiagramelement.getElementid();
			ReferencedDiagramelement = null;
			target.removeRef();
			if (notifyChanges) {
				RelationshipChangeModelDelta change = new RelationshipChangeModelDelta(
						Modeleventnotification_c.DELTA_ELEMENT_UNRELATED, this,
						target, "308", "");
				Ooaofgraphics.getDefaultInstance()
						.fireModelElementRelationChanged(change);
			}
		}
	}

	public static Reference_c getOneDIM_REFOnR308(Diagramelement_c[] targets) {
		return getOneDIM_REFOnR308(targets, null);
	}

	public static Reference_c getOneDIM_REFOnR308(Diagramelement_c[] targets,
			ClassQueryInterface_c test) {
		Reference_c ret_val = null;
		if (targets != null) {
			for (int i = 0; i < targets.length && ret_val == null; ++i) {
				ret_val = getOneDIM_REFOnR308(targets[i], test);
			}
		}

		return ret_val;
	}

	public static Reference_c getOneDIM_REFOnR308(Diagramelement_c target) {
		return getOneDIM_REFOnR308(target, null);
	}

	public static Reference_c getOneDIM_REFOnR308(Diagramelement_c target,
			boolean loadComponent) {
		return getOneDIM_REFOnR308(target.getModelRoot(), target, null,
				loadComponent);
	}

	public static Reference_c getOneDIM_REFOnR308(Diagramelement_c target,
			ClassQueryInterface_c test) {
		if (target != null) {
			return getOneDIM_REFOnR308(target.getModelRoot(), target, test);
		}
		return null;
	}

	public static Reference_c getOneDIM_REFOnR308(ModelRoot modelRoot,
			Diagramelement_c target, ClassQueryInterface_c test) {
		return getOneDIM_REFOnR308(modelRoot, target, test, true);
	}

	public static Reference_c getOneDIM_REFOnR308(ModelRoot modelRoot,
			Diagramelement_c target, ClassQueryInterface_c test,
			boolean loadComponent) {
		return find_getOneDIM_REFOnR308(modelRoot, target, test);
	}
	private static Reference_c find_getOneDIM_REFOnR308(ModelRoot modelRoot,
			Diagramelement_c target, ClassQueryInterface_c test) {
		if (target != null) {
			synchronized (target.backPointer_ReferenceReferenceReference_R308) {
				for (int i = 0; i < target.backPointer_ReferenceReferenceReference_R308
						.size(); ++i) {
					Reference_c source = (Reference_c) target.backPointer_ReferenceReferenceReference_R308
							.get(i);
					if (source != null
							&& (test == null || test.evaluate(source))) {
						return source;
					}
				}
			}
		}
		// not found
		return null;
	}

	public static Reference_c[] getManyDIM_REFsOnR308(Diagramelement_c[] targets) {
		return getManyDIM_REFsOnR308(targets, null);
	}
	public static Reference_c[] getManyDIM_REFsOnR308(
			Diagramelement_c[] targets, boolean loadComponent) {
		return getManyDIM_REFsOnR308(targets, null, loadComponent);
	}
	public static Reference_c[] getManyDIM_REFsOnR308(
			Diagramelement_c[] targets, ClassQueryInterface_c test) {
		return getManyDIM_REFsOnR308(targets, test, true);
	}

	public static Reference_c[] getManyDIM_REFsOnR308(
			Diagramelement_c[] targets, ClassQueryInterface_c test,
			boolean loadComponent) {

		if (targets == null || targets.length == 0 || targets[0] == null)
			return new Reference_c[0];

		ModelRoot modelRoot = targets[0].getModelRoot();

		InstanceList instances = modelRoot.getInstanceList(Reference_c.class);

		Vector matches = new Vector();
		for (int i = 0; i < targets.length; i++) {
			synchronized (targets[i].backPointer_ReferenceReferenceReference_R308) {
				for (int j = 0; j < targets[i].backPointer_ReferenceReferenceReference_R308
						.size(); ++j) {
					Reference_c source = (Reference_c) targets[i].backPointer_ReferenceReferenceReference_R308
							.get(j);
					if (source != null
							&& (test == null || test.evaluate(source))) {
						matches.add(source);
					}
				}
			}
		}
		if (matches.size() > 0) {
			Reference_c[] ret_set = new Reference_c[matches.size()];
			matches.copyInto(ret_set);
			return ret_set;
		} else {
			return new Reference_c[0];
		}
	}

	public static Reference_c[] getManyDIM_REFsOnR308(Diagramelement_c target) {
		return getManyDIM_REFsOnR308(target, null);
	}

	public static Reference_c[] getManyDIM_REFsOnR308(Diagramelement_c target,
			boolean loadComponent) {
		return getManyDIM_REFsOnR308(target, null, loadComponent);
	}

	public static Reference_c[] getManyDIM_REFsOnR308(Diagramelement_c target,
			ClassQueryInterface_c test) {
		return getManyDIM_REFsOnR308(target, test, true);
	}

	public static Reference_c[] getManyDIM_REFsOnR308(Diagramelement_c target,
			ClassQueryInterface_c test, boolean loadComponent) {
		if (target == null)
			return new Reference_c[0];

		ModelRoot modelRoot = target.getModelRoot();
		Vector matches = new Vector();
		synchronized (target.backPointer_ReferenceReferenceReference_R308) {
			for (int i = 0; i < target.backPointer_ReferenceReferenceReference_R308
					.size(); ++i) {
				Reference_c source = (Reference_c) target.backPointer_ReferenceReferenceReference_R308
						.get(i);
				if (source != null && (test == null || test.evaluate(source))) {

					matches.add(source);
				}
			}
		}

		if (matches.size() > 0) {
			Reference_c[] ret_set = new Reference_c[matches.size()];
			matches.copyInto(ret_set);
			return ret_set;
		} else {
			return new Reference_c[0];
		}
	}

	// referring navigation

	Diagramelement_c IsSupertypeDiagramelement;
	public void relateAcrossR302To(Diagramelement_c target) {
		relateAcrossR302To(target, true);
	}
	public void relateAcrossR302To(Diagramelement_c target,
			boolean notifyChanges) {
		if (target == null)
			return;

		if (target == IsSupertypeDiagramelement)
			return; // already related

		if (IsSupertypeDiagramelement != target) {

			Object oldKey = getInstanceKey();

			if (IsSupertypeDiagramelement != null) {

				IsSupertypeDiagramelement.clearBackPointerR302To(this);

				if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == true) { //$NON-NLS-1$
					Ooaofgraphics.log
							.println(
									ILogger.CONSISTENCY,
									"Reference_c.relateAcrossR302To(Diagramelement_c target)",
									"Relate performed across R302 from Reference to DiagramElement without unrelate of prior instance.");
				}
			}

			IsSupertypeDiagramelement = target;
			m_elementid = target.getElementid();
			updateInstanceKey(oldKey, getInstanceKey());
			target.setBackPointerR302To(this);
			target.addRef();
			if (notifyChanges) {
				RelationshipChangeModelDelta change = new RelationshipChangeModelDelta(
						Modeleventnotification_c.DELTA_ELEMENT_RELATED, this,
						target, "302", "");
				Ooaofgraphics.getDefaultInstance()
						.fireModelElementRelationChanged(change);
			}
		}
	}
	public void unrelateAcrossR302From(Diagramelement_c target) {
		unrelateAcrossR302From(target, true);
	}
	public void unrelateAcrossR302From(Diagramelement_c target,
			boolean notifyChanges) {
		if (target == null)
			return;

		if (IsSupertypeDiagramelement == null)
			return; // already unrelated

		if (target != IsSupertypeDiagramelement) {
			Exception e = new Exception();
			e.fillInStackTrace();
			CanvasPlugin.logError(
					"Tried to unrelate from non-related instance across R302",
					e);
			return;
		}

		if (target != null) {
			target.clearBackPointerR302To(this);
		}

		if (IsSupertypeDiagramelement != null) {

			m_elementid = IsSupertypeDiagramelement.getElementid();
			IsSupertypeDiagramelement = null;
			target.removeRef();
			if (notifyChanges) {
				RelationshipChangeModelDelta change = new RelationshipChangeModelDelta(
						Modeleventnotification_c.DELTA_ELEMENT_UNRELATED, this,
						target, "302", "");
				Ooaofgraphics.getDefaultInstance()
						.fireModelElementRelationChanged(change);
			}
		}
	}

	public static Reference_c getOneDIM_REFOnR302(Diagramelement_c[] targets) {
		return getOneDIM_REFOnR302(targets, null);
	}

	public static Reference_c getOneDIM_REFOnR302(Diagramelement_c[] targets,
			ClassQueryInterface_c test) {
		Reference_c ret_val = null;
		if (targets != null) {
			for (int i = 0; i < targets.length && ret_val == null; ++i) {
				ret_val = getOneDIM_REFOnR302(targets[i], test);
			}
		}

		return ret_val;
	}

	public static Reference_c getOneDIM_REFOnR302(Diagramelement_c target) {
		return getOneDIM_REFOnR302(target, null);
	}

	public static Reference_c getOneDIM_REFOnR302(Diagramelement_c target,
			boolean loadComponent) {
		return getOneDIM_REFOnR302(target.getModelRoot(), target, null,
				loadComponent);
	}

	public static Reference_c getOneDIM_REFOnR302(Diagramelement_c target,
			ClassQueryInterface_c test) {
		if (target != null) {
			return getOneDIM_REFOnR302(target.getModelRoot(), target, test);
		}
		return null;
	}

	public static Reference_c getOneDIM_REFOnR302(ModelRoot modelRoot,
			Diagramelement_c target, ClassQueryInterface_c test) {
		return getOneDIM_REFOnR302(modelRoot, target, test, true);
	}

	public static Reference_c getOneDIM_REFOnR302(ModelRoot modelRoot,
			Diagramelement_c target, ClassQueryInterface_c test,
			boolean loadComponent) {
		return find_getOneDIM_REFOnR302(modelRoot, target, test);
	}
	private static Reference_c find_getOneDIM_REFOnR302(ModelRoot modelRoot,
			Diagramelement_c target, ClassQueryInterface_c test) {
		if (target != null) {
			Reference_c source = (Reference_c) target.backPointer_IsSubtypeReferenceIsSubtype_R302;
			if (source != null && (test == null || test.evaluate(source))) {
				return source;
			}
		}
		// not found
		return null;
	}

	public static Reference_c[] getManyDIM_REFsOnR302(Diagramelement_c[] targets) {
		return getManyDIM_REFsOnR302(targets, null);
	}
	public static Reference_c[] getManyDIM_REFsOnR302(
			Diagramelement_c[] targets, boolean loadComponent) {
		return getManyDIM_REFsOnR302(targets, null, loadComponent);
	}
	public static Reference_c[] getManyDIM_REFsOnR302(
			Diagramelement_c[] targets, ClassQueryInterface_c test) {
		return getManyDIM_REFsOnR302(targets, test, true);
	}

	public static Reference_c[] getManyDIM_REFsOnR302(
			Diagramelement_c[] targets, ClassQueryInterface_c test,
			boolean loadComponent) {

		if (targets == null || targets.length == 0 || targets[0] == null)
			return new Reference_c[0];

		ModelRoot modelRoot = targets[0].getModelRoot();

		InstanceList instances = modelRoot.getInstanceList(Reference_c.class);

		Vector matches = new Vector();
		for (int i = 0; i < targets.length; i++) {
			Reference_c source = (Reference_c) targets[i].backPointer_IsSubtypeReferenceIsSubtype_R302;
			if (source != null && (test == null || test.evaluate(source))) {
				matches.add(source);
			}
		}
		if (matches.size() > 0) {
			Reference_c[] ret_set = new Reference_c[matches.size()];
			matches.copyInto(ret_set);
			return ret_set;
		} else {
			return new Reference_c[0];
		}
	}

	public static Reference_c[] getManyDIM_REFsOnR302(Diagramelement_c target) {
		if (target != null) {
			Diagramelement_c[] targetArray = new Diagramelement_c[1];
			targetArray[0] = target;
			return getManyDIM_REFsOnR302(targetArray);
		} else {
			Reference_c[] result = new Reference_c[0];
			return result;
		}
	}

	public static Reference_c[] getManyDIM_REFsOnR302(Diagramelement_c target,
			boolean loadComponent) {
		if (target != null) {
			Diagramelement_c[] targetArray = new Diagramelement_c[1];
			targetArray[0] = target;
			return getManyDIM_REFsOnR302(targetArray, loadComponent);
		} else {
			Reference_c[] result = new Reference_c[0];
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

		if (ReferencedDiagramelement == null) {
			// R308
			Diagramelement_c relInst21702 = (Diagramelement_c) baseRoot
					.getInstanceList(Diagramelement_c.class).get(
							new Object[]{m_leaf_elementid});
			// if there was no local element, check for any global elements
			// failing that proceed to check other model roots
			if (relInst21702 == null) {
				relInst21702 = (Diagramelement_c) Ooaofooa.getDefaultInstance()
						.getInstanceList(Diagramelement_c.class)
						.get(new Object[]{m_leaf_elementid});
			}
			//synchronized
			if (relInst21702 != null) {
				if (relateProxies || !isProxy()
						|| (inSameComponent(this, relInst21702) && !isProxy())) {
					relInst21702.relateAcrossR308To(this, notifyChanges);
				}
			}
		}

		// R302
		Diagramelement_c relInst21703 = (Diagramelement_c) baseRoot
				.getInstanceList(Diagramelement_c.class).get(
						new Object[]{m_elementid});
		// if there was no local element, check for any global elements
		// failing that proceed to check other model roots
		if (relInst21703 == null) {
			relInst21703 = (Diagramelement_c) Ooaofooa.getDefaultInstance()
					.getInstanceList(Diagramelement_c.class)
					.get(new Object[]{m_elementid});
		}
		//synchronized
		if (relInst21703 != null) {
			if (relateProxies || !isProxy()
					|| (inSameComponent(this, relInst21703) && !isProxy())) {
				relInst21703.relateAcrossR302To(this, notifyChanges);
			}
		}

	}
	public void batchUnrelate(boolean notifyChanges) {
		NonRootModelElement inst = null;
		// R308
		// DIM_ELE
		inst = ReferencedDiagramelement;
		unrelateAcrossR308From(ReferencedDiagramelement, notifyChanges);
		if (inst != null) {
			inst.removeRef();
		}
		// R302
		// DIM_ELE
		inst = IsSupertypeDiagramelement;
		unrelateAcrossR302From(IsSupertypeDiagramelement, notifyChanges);
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
	InstanceList instances = modelRoot.getInstanceList(Reference_c.class);
    synchronized(instances) {
        Iterator<NonRootModelElement> cursor = instances.iterator() ;
    	while (cursor.hasNext())
	    {
            final Reference_c inst = (Reference_c)cursor.next() ;
	        inst.batchRelate(modelRoot, relateProxies, notifyChanges, searchAllRoots );
	    }
	}
  }
	public static void clearInstances(ModelRoot modelRoot) {
		InstanceList instances = modelRoot.getInstanceList(Reference_c.class);
		synchronized (instances) {
			for (int i = instances.size() - 1; i >= 0; i--) {
				((NonRootModelElement) instances.get(i)).delete_unchecked();
			}

		}
	}

	public static Reference_c ReferenceInstance(ModelRoot modelRoot,
			ClassQueryInterface_c test, boolean loadComponent) {
		Reference_c result = findReferenceInstance(modelRoot, test,
				loadComponent);
		return result;
	}
	private static Reference_c findReferenceInstance(ModelRoot modelRoot,
			ClassQueryInterface_c test, boolean loadComponent) {
		InstanceList instances = modelRoot.getInstanceList(Reference_c.class);
		synchronized (instances) {
			for (int i = 0; i < instances.size(); ++i) {
				Reference_c x = (Reference_c) instances.get(i);
				if (test == null || test.evaluate(x)) {
					return x;
				}
			}
		}
		return null;
	}
	public static Reference_c ReferenceInstance(ModelRoot modelRoot,
			ClassQueryInterface_c test) {
		return ReferenceInstance(modelRoot, test, true);
	}

	public static Reference_c ReferenceInstance(ModelRoot modelRoot) {
		return ReferenceInstance(modelRoot, null, true);
	}

	public static Reference_c[] ReferenceInstances(ModelRoot modelRoot,
			ClassQueryInterface_c test, boolean loadComponent) {
		InstanceList instances = modelRoot.getInstanceList(Reference_c.class);
		Vector matches = new Vector();
		synchronized (instances) {
			for (int i = 0; i < instances.size(); ++i) {
				Reference_c x = (Reference_c) instances.get(i);
				if (test == null || test.evaluate(x)) {
					matches.add(x);
				}
			}
			if (matches.size() > 0) {
				Reference_c[] ret_set = new Reference_c[matches.size()];
				matches.copyInto(ret_set);
				return ret_set;
			} else {
				return new Reference_c[0];
			}
		}
	}
	public static Reference_c[] ReferenceInstances(ModelRoot modelRoot,
			ClassQueryInterface_c test) {
		return ReferenceInstances(modelRoot, test, true);
	}
	public static Reference_c[] ReferenceInstances(ModelRoot modelRoot) {
		return ReferenceInstances(modelRoot, null, true);
	}

	public boolean delete() {
		boolean result = super.delete();
		boolean delete_error = false;
		String errorMsg = "The following relationships were not torn down by the Reference.dispose call: ";
		Diagramelement_c testR308Inst = Diagramelement_c.getOneDIM_ELEOnR308(
				this, false);

		if (testR308Inst != null) {
			delete_error = true;
			errorMsg = errorMsg + "308 ";
		}
		Diagramelement_c testR302Inst1 = Diagramelement_c.getOneDIM_ELEOnR302(
				this, false);

		if (testR302Inst1 != null) {
			delete_error = true;
			errorMsg = errorMsg + "302 ";
		}
		if (delete_error == true) {

			if (CanvasPlugin.getDefault().isDebugging()) {
				Ooaofgraphics.log
						.println(ILogger.DELETE, "Reference", errorMsg);
			} else {
				Exception e = new Exception();
				e.fillInStackTrace();
				CanvasPlugin.logError(errorMsg, e);
			}
		}
		return result;
	}

	// end declare instance pool

	// declare attribute accessors
	public boolean isUUID(String attributeName) {
		if (attributeName.equals("leaf_elementid")) {
			return true;
		}
		if (attributeName.equals("elementid")) {
			return true;
		}
		return false;
	}
	// declare attribute accessors
	public boolean getIsindividualrepresentation() {
		return m_isindividualrepresentation;
	}

	public void setIsindividualrepresentation(boolean newValue) {
		if (m_isindividualrepresentation == newValue) {
			return;
		}
		AttributeChangeModelDelta change = new AttributeChangeModelDelta(
				Modeleventnotification_c.DELTA_ATTRIBUTE_CHANGE, this,
				"Isindividualrepresentation", new Boolean(
						m_isindividualrepresentation), new Boolean(newValue),
				true);

		m_isindividualrepresentation = newValue;
		Ooaofgraphics.getDefaultInstance().fireModelElementAttributeChanged(
				change);
	}
	public long getLeaf_elementidLongBased() {
		if (ReferencedDiagramelement != null) {
			return ReferencedDiagramelement.getElementidLongBased();
		}
		return 0;
	}
	public java.util.UUID getLeaf_elementid() {
		if (ReferencedDiagramelement != null) {
			return ReferencedDiagramelement.getElementid();
		}
		return IdAssigner.NULL_UUID;
	}

	public java.util.UUID getLeaf_elementidCachedValue() {
		if (!IdAssigner.NULL_UUID.equals(m_leaf_elementid))
			return m_leaf_elementid;
		else
			return getLeaf_elementid();
	}

	public void setLeaf_elementid(java.util.UUID newValue) {
		if (newValue != null) {
			if (newValue.equals(m_leaf_elementid)) {
				return;
			}
		} else if (m_leaf_elementid != null) {
			if (m_leaf_elementid.equals(newValue)) {
				return;
			}
		} else {
			return;
		}
		AttributeChangeModelDelta change = new AttributeChangeModelDelta(
				Modeleventnotification_c.DELTA_ATTRIBUTE_CHANGE, this,
				"Leaf_elementid", m_leaf_elementid, newValue, true);
		m_leaf_elementid = IdAssigner.preprocessUUID(newValue);
		Ooaofgraphics.getDefaultInstance().fireModelElementAttributeChanged(
				change);
	}
	public long getElementidLongBased() {
		if (IsSupertypeDiagramelement != null) {
			return IsSupertypeDiagramelement.getElementidLongBased();
		}
		return 0;
	}
	public java.util.UUID getElementid() {
		if (IsSupertypeDiagramelement != null) {
			return IsSupertypeDiagramelement.getElementid();
		}
		return IdAssigner.NULL_UUID;
	}

	public boolean hasSuperType() {
		return (IsSupertypeDiagramelement != null);

	}

	public java.util.UUID getElementidCachedValue() {
		if (!IdAssigner.NULL_UUID.equals(m_elementid))
			return m_elementid;
		else
			return getElementid();
	}

	public void setElementid(java.util.UUID newValue) {
		if (newValue != null) {
			if (newValue.equals(m_elementid)) {
				return;
			}
		} else if (m_elementid != null) {
			if (m_elementid.equals(newValue)) {
				return;
			}
		} else {
			return;
		}
		AttributeChangeModelDelta change = new AttributeChangeModelDelta(
				Modeleventnotification_c.DELTA_ATTRIBUTE_CHANGE, this,
				"Elementid", m_elementid, newValue, true);
		m_elementid = IdAssigner.preprocessUUID(newValue);
		Ooaofgraphics.getDefaultInstance().fireModelElementAttributeChanged(
				change);
	}
	// end declare accessors
	public static void checkClassConsistency(ModelRoot modelRoot) {
		Ooaofooa.log.println(ILogger.OPERATION, "Reference", //$NON-NLS-1$
				" Operation entered: Reference::checkClassConsistency"); //$NON-NLS-1$
		if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == false) { //$NON-NLS-1$
			return;
		}
		Reference_c[] objs = Reference_c.ReferenceInstances(modelRoot, null,
				false);

		for (int i = 0; i < objs.length; i++) {
			objs[i].checkConsistency();
		}
	}
	public boolean checkConsistency() {
		Ooaofooa.log.println(ILogger.OPERATION, "Reference", //$NON-NLS-1$
				" Operation entered: Reference::checkConsistency"); //$NON-NLS-1$
		if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == false) { //$NON-NLS-1$
			return true;
		}
		ModelRoot modelRoot = getModelRoot();
		boolean retval = true;
		class Reference_c_test21705_c implements ClassQueryInterface_c {
			Reference_c_test21705_c(java.util.UUID p21706) {
				m_p21706 = p21706;
			}
			private java.util.UUID m_p21706;
			public boolean evaluate(Object candidate) {
				Reference_c selected = (Reference_c) candidate;
				boolean retval = false;
				retval = (selected.getLeaf_elementid().equals(m_p21706));
				return retval;
			}
		}

		Reference_c[] objs21704 = Reference_c.ReferenceInstances(modelRoot,
				new Reference_c_test21705_c(getLeaf_elementid()));

		if (((objs21704.length) == 0)) {

			if (CanvasPlugin.getDefault().isDebugging()) {
				Ooaofgraphics.log
						.println(ILogger.CONSISTENCY,
								"Reference", //$NON-NLS-1$
								"Consistency: Object: Reference: Cardinality of an identifier is zero. " //$NON-NLS-1$
										+ "Actual Value: " + Integer.toString(objs21704.length)); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CanvasPlugin.logError(
						"Consistency: Object: Reference: Cardinality of an identifier is zero. " //$NON-NLS-1$ 
								+ "Actual Value: " //$NON-NLS-1$
								+ Integer.toString(objs21704.length), e);
			}
			retval = false;

		}

		if (((objs21704.length) > 1)) {

			if (CanvasPlugin.getDefault().isDebugging()) {
				Ooaofgraphics.log
						.println(ILogger.CONSISTENCY,
								"Reference", //$NON-NLS-1$
								"Consistency: Object: Reference: Cardinality of an identifier is greater than 1. " //$NON-NLS-1$
										+ "Actual Value: " //$NON-NLS-1$ 
										+ Integer.toString(objs21704.length)
										+ " Leaf_elementId: " + "Not Printable"); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CanvasPlugin
						.logError(
								"Consistency: Object: Reference: Cardinality of an identifier is greater than 1. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs21704.length)
										+ " Leaf_elementId: " + "Not Printable", e); //$NON-NLS-1$
			}
			retval = false;

		}

		class Reference_c_test21708_c implements ClassQueryInterface_c {
			Reference_c_test21708_c(java.util.UUID p21709) {
				m_p21709 = p21709;
			}
			private java.util.UUID m_p21709;
			public boolean evaluate(Object candidate) {
				Reference_c selected = (Reference_c) candidate;
				boolean retval = false;
				retval = (selected.getElementid().equals(m_p21709));
				return retval;
			}
		}

		Reference_c[] objs21707 = Reference_c.ReferenceInstances(modelRoot,
				new Reference_c_test21708_c(getElementid()));

		if (((objs21707.length) == 0)) {

			if (CanvasPlugin.getDefault().isDebugging()) {
				Ooaofgraphics.log
						.println(ILogger.CONSISTENCY,
								"Reference", //$NON-NLS-1$
								"Consistency: Object: Reference: Cardinality of an identifier is zero. " //$NON-NLS-1$
										+ "Actual Value: " + Integer.toString(objs21707.length)); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CanvasPlugin.logError(
						"Consistency: Object: Reference: Cardinality of an identifier is zero. " //$NON-NLS-1$ 
								+ "Actual Value: " //$NON-NLS-1$
								+ Integer.toString(objs21707.length), e);
			}
			retval = false;

		}

		if (((objs21707.length) > 1)) {

			if (CanvasPlugin.getDefault().isDebugging()) {
				Ooaofgraphics.log
						.println(ILogger.CONSISTENCY,
								"Reference", //$NON-NLS-1$
								"Consistency: Object: Reference: Cardinality of an identifier is greater than 1. " //$NON-NLS-1$
										+ "Actual Value: " //$NON-NLS-1$ 
										+ Integer.toString(objs21707.length)
										+ " elementId: " + "Not Printable"); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CanvasPlugin
						.logError(
								"Consistency: Object: Reference: Cardinality of an identifier is greater than 1. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs21707.length)
										+ " elementId: " + "Not Printable", e); //$NON-NLS-1$
			}
			retval = false;

		}

		// Reference is a referring class in association: rel.Numb = 308
		// The participating class is: DiagramElement
		class Diagramelement_c_test21712_c implements ClassQueryInterface_c {
			Diagramelement_c_test21712_c(java.util.UUID p21713) {
				m_p21713 = p21713;
			}
			private java.util.UUID m_p21713;
			public boolean evaluate(Object candidate) {
				Diagramelement_c selected = (Diagramelement_c) candidate;
				boolean retval = false;
				retval = (selected.getElementid().equals(m_p21713));
				return retval;
			}
		}

		Diagramelement_c[] objs21711 = Diagramelement_c
				.DiagramelementInstances(modelRoot,
						new Diagramelement_c_test21712_c(getLeaf_elementid()));

		// The participant is unconditional
		// The multiplicity of the participant is one
		if (((objs21711.length) != 1)) {

			if (CanvasPlugin.getDefault().isDebugging()) {
				Ooaofgraphics.log
						.println(ILogger.CONSISTENCY,
								"Reference", //$NON-NLS-1$
								"Consistency: Object: Reference: Association: 308: Cardinality of a participant is not equal to 1. " //$NON-NLS-1$
										+ "Actual Value: " //$NON-NLS-1$ 
										+ Integer.toString(objs21711.length)
										+ " Leaf_elementId: " + "Not Printable"); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CanvasPlugin
						.logError(
								"Consistency: Object: Reference: Association: 308: Cardinality of a participant is not equal to 1. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs21711.length)
										+ " Leaf_elementId: " + "Not Printable", e); //$NON-NLS-1$
			}
			retval = false;

		}

		// Reference is a subtype in association: rel.Numb = 302
		// The supertype class is: DiagramElement
		class Diagramelement_c_test21715_c implements ClassQueryInterface_c {
			Diagramelement_c_test21715_c(java.util.UUID p21716) {
				m_p21716 = p21716;
			}
			private java.util.UUID m_p21716;
			public boolean evaluate(Object candidate) {
				Diagramelement_c selected = (Diagramelement_c) candidate;
				boolean retval = false;
				retval = (selected.getElementid().equals(m_p21716));
				return retval;
			}
		}

		Diagramelement_c[] objs21714 = Diagramelement_c
				.DiagramelementInstances(modelRoot,
						new Diagramelement_c_test21715_c(getElementid()));

		if (((objs21714.length) != 1)) {

			if (CanvasPlugin.getDefault().isDebugging()) {
				Ooaofgraphics.log
						.println(ILogger.CONSISTENCY,
								"Reference", //$NON-NLS-1$
								"Consistency: Object: Reference: Association: 302: Cardinality of a supertype is not equal to 1. " //$NON-NLS-1$
										+ "Actual Value: " + Integer.toString(objs21714.length)); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CanvasPlugin
						.logError(
								"Consistency: Object: Reference: Association: 302: Cardinality of a supertype is not equal to 1. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs21714.length), e);
			}
			retval = false;

		}

		return retval;
	}

	public Object getAdapter(Class adapter) {
		Object superAdapter = super.getAdapter(adapter);
		if (superAdapter != null) {
			return superAdapter;
		}
		return null;
	}
} // end Reference
