package com.mentor.nucleus.bp.ui.canvas;
//====================================================================
//
// File:      com.mentor.nucleus.bp.ui.canvas.ElementInSuppression_c.java
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
import org.eclipse.swt.graphics.Color;
import com.mentor.nucleus.bp.core.common.*;
abstract class EV_ELEMENT_IN_SUPPRESSION extends genericEvent_c {
	public abstract int getEvtcode();
}

public class ElementInSuppression_c extends NonRootModelElement
		implements
			IAdaptable,
			Cloneable {
	// Public Constructors
	public ElementInSuppression_c(ModelRoot modelRoot,
			java.util.UUID p_m_diagramid, java.util.UUID p_m_elementid) {
		super(modelRoot);
		//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
		m_diagramid = IdAssigner.preprocessUUID(p_m_diagramid);
		//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
		m_elementid = IdAssigner.preprocessUUID(p_m_elementid);

		Object[] key = {m_diagramid, m_elementid};
		addInstanceToMap(key);
	}
	static public ElementInSuppression_c createProxy(ModelRoot modelRoot,
			java.util.UUID p_m_diagramid, java.util.UUID p_m_elementid,
			String p_contentPath, IPath p_localPath) {
		ModelRoot resolvedModelRoot = ModelRoot.findModelRoot(modelRoot,
				p_contentPath, p_localPath);
		// if a model root was not resolved it is most likely
		// due to a missing file of the proxy, defualt back to
		// the original model root
		if (resolvedModelRoot != null)
			modelRoot = resolvedModelRoot;
		InstanceList instances = modelRoot
				.getInstanceList(ElementInSuppression_c.class);
		ElementInSuppression_c new_inst = null;
		synchronized (instances) {
			Object[] key = {p_m_diagramid, p_m_elementid};
			new_inst = (ElementInSuppression_c) instances.get(key);
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
				//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
				new_inst.m_diagramid = IdAssigner.preprocessUUID(p_m_diagramid);
				//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
				new_inst.m_elementid = IdAssigner.preprocessUUID(p_m_elementid);

			}
		}
		if (new_inst == null) {
			// there is no instance matching the id, create a proxy
			// if the resource doesn't exist then this will be a dangling reference
			new_inst = new ElementInSuppression_c(modelRoot, p_m_diagramid,
					p_m_elementid);
			new_inst.m_contentPath = contentPath;
		}
		return new_inst;
	}

	static public ElementInSuppression_c resolveInstance(ModelRoot modelRoot,
			java.util.UUID p_m_diagramid, java.util.UUID p_m_elementid) {
		InstanceList instances = modelRoot
				.getInstanceList(ElementInSuppression_c.class);
		ElementInSuppression_c source = null;
		synchronized (instances) {
			Object[] key = {p_m_diagramid, p_m_elementid};
			source = (ElementInSuppression_c) instances.get(key);
			if (source != null && !modelRoot.isCompareRoot()) {
				source.convertFromProxy();
				source.batchUnrelate();
				//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
				source.m_diagramid = IdAssigner.preprocessUUID(p_m_diagramid);
				//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
				source.m_elementid = IdAssigner.preprocessUUID(p_m_elementid);

				return source;
			}
		}
		// there is no instance matching the id
		ElementInSuppression_c new_inst = new ElementInSuppression_c(modelRoot,
				p_m_diagramid, p_m_elementid);
		return new_inst;
	}
	public ElementInSuppression_c(ModelRoot modelRoot) {
		super(modelRoot);
		m_diagramid = IdAssigner.NULL_UUID;
		m_elementid = IdAssigner.NULL_UUID;
		Object[] key = {m_diagramid, m_elementid};
		addInstanceToMap(key);
	}

	public Object getInstanceKey() {
		Object[] key = {m_diagramid, m_elementid};
		return key;
	}

	public boolean setInstanceKey(UUID p_newKey) {

		boolean changed = false;
		// round p1
		// round p2
		// round p3
		// round p4
		// round p5
		if (m_diagramid != p_newKey) {

			m_diagramid = p_newKey;
			changed = true;
		}
		return changed;
	}

	public boolean equals(Object elem) {
		if (!(elem instanceof ElementInSuppression_c)) {
			return false;
		}
		// check that the model-roots are the same
		if (((NonRootModelElement) elem).getModelRoot() != getModelRoot()) {
			return false;
		}

		return identityEquals(elem);
	}

	public boolean identityEquals(Object elem) {
		if (!(elem instanceof ElementInSuppression_c)) {
			return false;
		}

		ElementInSuppression_c me = (ElementInSuppression_c) elem;
		// don't allow an empty id-value to produce a false positive result;
		// in this case, use whether the two instances are actually the same 
		// one in memory, instead
		if ((IdAssigner.NULL_UUID.equals(getDiagramid()) || IdAssigner.NULL_UUID
				.equals(((ElementInSuppression_c) elem).getDiagramid()))
				&& this != elem) {
			return false;
		}
		if (!getDiagramid().equals(
				((ElementInSuppression_c) elem).getDiagramid()))
			return false;
		// don't allow an empty id-value to produce a false positive result;
		// in this case, use whether the two instances are actually the same 
		// one in memory, instead
		if ((IdAssigner.NULL_UUID.equals(getElementid()) || IdAssigner.NULL_UUID
				.equals(((ElementInSuppression_c) elem).getElementid()))
				&& this != elem) {
			return false;
		}
		if (!getElementid().equals(
				((ElementInSuppression_c) elem).getElementid()))
			return false;
		return true;
	}

	public boolean cachedIdentityEquals(Object elem) {
		if (!(elem instanceof ElementInSuppression_c)) {
			return false;
		}

		ElementInSuppression_c me = (ElementInSuppression_c) elem;
		if (!getDiagramidCachedValue().equals(
				((ElementInSuppression_c) elem).getDiagramidCachedValue()))
			return false;
		if (!getElementidCachedValue().equals(
				((ElementInSuppression_c) elem).getElementidCachedValue()))
			return false;
		return true;
	}

	// Attributes
	private java.util.UUID m_diagramid;
	private java.util.UUID m_elementid;

	// declare association references from this class

	// referring navigation

	GraphicalElement_c GraphicalElement;
	public void relateAcrossR32To(GraphicalElement_c target) {
		relateAcrossR32To(target, true);
	}
	public void relateAcrossR32To(GraphicalElement_c target,
			boolean notifyChanges) {
		if (target == null)
			return;

		if (target == GraphicalElement)
			return; // already related

		if (GraphicalElement != target) {

			Object oldKey = getInstanceKey();

			if (GraphicalElement != null) {

				GraphicalElement.clearBackPointerR32To(this);

				if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == true) { //$NON-NLS-1$
					Ooaofgraphics.log
							.println(
									ILogger.CONSISTENCY,
									"ElementInSuppression_c.relateAcrossR32To(GraphicalElement_c target)",
									"Relate performed across R32 from Element In Suppression to Graphical Element without unrelate of prior instance.");
				}
			}

			GraphicalElement = target;
			if (IdAssigner.NULL_UUID.equals(target.getElementid())) {
				// do not update cached value
			} else {
				// update cached value
				m_elementid = target.getElementidCachedValue();
			}
			updateInstanceKey(oldKey, getInstanceKey());
			target.setBackPointerR32To(this);
			target.addRef();
			if (notifyChanges) {
				RelationshipChangeModelDelta change = new RelationshipChangeModelDelta(
						Modeleventnotification_c.DELTA_ELEMENT_RELATED, this,
						target, "32", "");
				Ooaofgraphics.getDefaultInstance()
						.fireModelElementRelationChanged(change);
			}
		}
	}
	public void unrelateAcrossR32From(GraphicalElement_c target) {
		unrelateAcrossR32From(target, true);
	}
	public void unrelateAcrossR32From(GraphicalElement_c target,
			boolean notifyChanges) {
		if (target == null)
			return;

		if (GraphicalElement == null)
			return; // already unrelated

		if (target != GraphicalElement) {
			Exception e = new Exception();
			e.fillInStackTrace();
			CanvasPlugin
					.logError(
							"Tried to unrelate from non-related instance across R32",
							e);
			return;
		}

		if (target != null) {
			target.clearBackPointerR32To(this);
		}

		if (GraphicalElement != null) {

			m_elementid = GraphicalElement.getElementid();
			if (IdAssigner.NULL_UUID.equals(m_elementid)) {
				m_elementid = GraphicalElement.getElementidCachedValue();
			}
			GraphicalElement = null;
			target.removeRef();
			if (notifyChanges) {
				RelationshipChangeModelDelta change = new RelationshipChangeModelDelta(
						Modeleventnotification_c.DELTA_ELEMENT_UNRELATED, this,
						target, "32", "");
				Ooaofgraphics.getDefaultInstance()
						.fireModelElementRelationChanged(change);
			}
		}
	}

	// referring navigation

	Model_c Model;
	public void relateAcrossR32To(Model_c target) {
		relateAcrossR32To(target, true);
	}
	public void relateAcrossR32To(Model_c target, boolean notifyChanges) {
		if (target == null)
			return;

		if (target == Model)
			return; // already related

		if (Model != target) {

			Object oldKey = getInstanceKey();

			if (Model != null) {

				Model.clearBackPointerR32To(this);

				if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == true) { //$NON-NLS-1$
					Ooaofgraphics.log
							.println(
									ILogger.CONSISTENCY,
									"ElementInSuppression_c.relateAcrossR32To(Model_c target)",
									"Relate performed across R32 from Element In Suppression to Model without unrelate of prior instance.");
				}
			}

			Model = target;
			if (IdAssigner.NULL_UUID.equals(target.getDiagramid())) {
				// do not update cached value
			} else {
				// update cached value
				m_diagramid = target.getDiagramidCachedValue();
			}
			updateInstanceKey(oldKey, getInstanceKey());
			target.setBackPointerR32To(this);
			target.addRef();
			if (notifyChanges) {
				RelationshipChangeModelDelta change = new RelationshipChangeModelDelta(
						Modeleventnotification_c.DELTA_ELEMENT_RELATED, this,
						target, "32", "");
				Ooaofgraphics.getDefaultInstance()
						.fireModelElementRelationChanged(change);
			}
		}
	}
	public void unrelateAcrossR32From(Model_c target) {
		unrelateAcrossR32From(target, true);
	}
	public void unrelateAcrossR32From(Model_c target, boolean notifyChanges) {
		if (target == null)
			return;

		if (Model == null)
			return; // already unrelated

		if (target != Model) {
			Exception e = new Exception();
			e.fillInStackTrace();
			CanvasPlugin
					.logError(
							"Tried to unrelate from non-related instance across R32",
							e);
			return;
		}

		if (target != null) {
			target.clearBackPointerR32To(this);
		}

		if (Model != null) {

			m_diagramid = Model.getDiagramid();
			if (IdAssigner.NULL_UUID.equals(m_diagramid)) {
				m_diagramid = Model.getDiagramidCachedValue();
			}
			Model = null;
			target.removeRef();
			if (notifyChanges) {
				RelationshipChangeModelDelta change = new RelationshipChangeModelDelta(
						Modeleventnotification_c.DELTA_ELEMENT_UNRELATED, this,
						target, "32", "");
				Ooaofgraphics.getDefaultInstance()
						.fireModelElementRelationChanged(change);
			}
		}
	}

	public static ElementInSuppression_c getOneGD_EISOnR32(
			GraphicalElement_c[] targets) {
		return getOneGD_EISOnR32(targets, null);
	}

	public static ElementInSuppression_c getOneGD_EISOnR32(
			GraphicalElement_c[] targets, ClassQueryInterface_c test) {
		ElementInSuppression_c ret_val = null;
		if (targets != null) {
			for (int i = 0; i < targets.length && ret_val == null; ++i) {
				ret_val = getOneGD_EISOnR32(targets[i], test);
			}
		}

		return ret_val;
	}

	public static ElementInSuppression_c getOneGD_EISOnR32(
			GraphicalElement_c target) {
		return getOneGD_EISOnR32(target, null);
	}

	public static ElementInSuppression_c getOneGD_EISOnR32(
			GraphicalElement_c target, boolean loadComponent) {
		return getOneGD_EISOnR32(target.getModelRoot(), target, null,
				loadComponent);
	}

	public static ElementInSuppression_c getOneGD_EISOnR32(
			GraphicalElement_c target, ClassQueryInterface_c test) {
		if (target != null) {
			return getOneGD_EISOnR32(target.getModelRoot(), target, test);
		}
		return null;
	}

	public static ElementInSuppression_c getOneGD_EISOnR32(ModelRoot modelRoot,
			GraphicalElement_c target, ClassQueryInterface_c test) {
		return getOneGD_EISOnR32(modelRoot, target, test, true);
	}

	public static ElementInSuppression_c getOneGD_EISOnR32(ModelRoot modelRoot,
			GraphicalElement_c target, ClassQueryInterface_c test,
			boolean loadComponent) {
		return find_getOneGD_EISOnR32(modelRoot, target, test);
	}
	private static ElementInSuppression_c find_getOneGD_EISOnR32(
			ModelRoot modelRoot, GraphicalElement_c target,
			ClassQueryInterface_c test) {
		if (target != null) {
			synchronized (target.backPointer_ElementInSuppression_R32) {
				for (int i = 0; i < target.backPointer_ElementInSuppression_R32
						.size(); ++i) {
					ElementInSuppression_c source = (ElementInSuppression_c) target.backPointer_ElementInSuppression_R32
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

	public static ElementInSuppression_c[] getManyGD_EISsOnR32(
			GraphicalElement_c[] targets) {
		return getManyGD_EISsOnR32(targets, null);
	}
	public static ElementInSuppression_c[] getManyGD_EISsOnR32(
			GraphicalElement_c[] targets, boolean loadComponent) {
		return getManyGD_EISsOnR32(targets, null, loadComponent);
	}
	public static ElementInSuppression_c[] getManyGD_EISsOnR32(
			GraphicalElement_c[] targets, ClassQueryInterface_c test) {
		return getManyGD_EISsOnR32(targets, test, true);
	}

	public static ElementInSuppression_c[] getManyGD_EISsOnR32(
			GraphicalElement_c[] targets, ClassQueryInterface_c test,
			boolean loadComponent) {

		if (targets == null || targets.length == 0 || targets[0] == null)
			return new ElementInSuppression_c[0];

		ModelRoot modelRoot = targets[0].getModelRoot();

		InstanceList instances = modelRoot
				.getInstanceList(ElementInSuppression_c.class);

		Vector matches = new Vector();
		for (int i = 0; i < targets.length; i++) {
			synchronized (targets[i].backPointer_ElementInSuppression_R32) {
				for (int j = 0; j < targets[i].backPointer_ElementInSuppression_R32
						.size(); ++j) {
					ElementInSuppression_c source = (ElementInSuppression_c) targets[i].backPointer_ElementInSuppression_R32
							.get(j);
					if (source != null
							&& (test == null || test.evaluate(source))) {
						matches.add(source);
					}
				}
			}
		}
		if (matches.size() > 0) {
			ElementInSuppression_c[] ret_set = new ElementInSuppression_c[matches
					.size()];
			matches.copyInto(ret_set);
			return ret_set;
		} else {
			return new ElementInSuppression_c[0];
		}
	}

	public static ElementInSuppression_c[] getManyGD_EISsOnR32(
			GraphicalElement_c target) {
		if (target != null) {
			GraphicalElement_c[] targetArray = new GraphicalElement_c[1];
			targetArray[0] = target;
			return getManyGD_EISsOnR32(targetArray);
		} else {
			ElementInSuppression_c[] result = new ElementInSuppression_c[0];
			return result;
		}
	}

	public static ElementInSuppression_c[] getManyGD_EISsOnR32(
			GraphicalElement_c target, boolean loadComponent) {
		if (target != null) {
			GraphicalElement_c[] targetArray = new GraphicalElement_c[1];
			targetArray[0] = target;
			return getManyGD_EISsOnR32(targetArray, loadComponent);
		} else {
			ElementInSuppression_c[] result = new ElementInSuppression_c[0];
			return result;
		}
	}

	public static ElementInSuppression_c getOneGD_EISOnR32(Model_c[] targets) {
		return getOneGD_EISOnR32(targets, null);
	}

	public static ElementInSuppression_c getOneGD_EISOnR32(Model_c[] targets,
			ClassQueryInterface_c test) {
		ElementInSuppression_c ret_val = null;
		if (targets != null) {
			for (int i = 0; i < targets.length && ret_val == null; ++i) {
				ret_val = getOneGD_EISOnR32(targets[i], test);
			}
		}

		return ret_val;
	}

	public static ElementInSuppression_c getOneGD_EISOnR32(Model_c target) {
		return getOneGD_EISOnR32(target, null);
	}

	public static ElementInSuppression_c getOneGD_EISOnR32(Model_c target,
			boolean loadComponent) {
		return getOneGD_EISOnR32(target.getModelRoot(), target, null,
				loadComponent);
	}

	public static ElementInSuppression_c getOneGD_EISOnR32(Model_c target,
			ClassQueryInterface_c test) {
		if (target != null) {
			return getOneGD_EISOnR32(target.getModelRoot(), target, test);
		}
		return null;
	}

	public static ElementInSuppression_c getOneGD_EISOnR32(ModelRoot modelRoot,
			Model_c target, ClassQueryInterface_c test) {
		return getOneGD_EISOnR32(modelRoot, target, test, true);
	}

	public static ElementInSuppression_c getOneGD_EISOnR32(ModelRoot modelRoot,
			Model_c target, ClassQueryInterface_c test, boolean loadComponent) {
		return find_getOneGD_EISOnR32(modelRoot, target, test);
	}
	private static ElementInSuppression_c find_getOneGD_EISOnR32(
			ModelRoot modelRoot, Model_c target, ClassQueryInterface_c test) {
		if (target != null) {
			synchronized (target.backPointer_ElementInSuppression_R32) {
				for (int i = 0; i < target.backPointer_ElementInSuppression_R32
						.size(); ++i) {
					ElementInSuppression_c source = (ElementInSuppression_c) target.backPointer_ElementInSuppression_R32
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

	public static ElementInSuppression_c[] getManyGD_EISsOnR32(Model_c[] targets) {
		return getManyGD_EISsOnR32(targets, null);
	}
	public static ElementInSuppression_c[] getManyGD_EISsOnR32(
			Model_c[] targets, boolean loadComponent) {
		return getManyGD_EISsOnR32(targets, null, loadComponent);
	}
	public static ElementInSuppression_c[] getManyGD_EISsOnR32(
			Model_c[] targets, ClassQueryInterface_c test) {
		return getManyGD_EISsOnR32(targets, test, true);
	}

	public static ElementInSuppression_c[] getManyGD_EISsOnR32(
			Model_c[] targets, ClassQueryInterface_c test, boolean loadComponent) {

		if (targets == null || targets.length == 0 || targets[0] == null)
			return new ElementInSuppression_c[0];

		ModelRoot modelRoot = targets[0].getModelRoot();

		InstanceList instances = modelRoot
				.getInstanceList(ElementInSuppression_c.class);

		Vector matches = new Vector();
		for (int i = 0; i < targets.length; i++) {
			synchronized (targets[i].backPointer_ElementInSuppression_R32) {
				for (int j = 0; j < targets[i].backPointer_ElementInSuppression_R32
						.size(); ++j) {
					ElementInSuppression_c source = (ElementInSuppression_c) targets[i].backPointer_ElementInSuppression_R32
							.get(j);
					if (source != null
							&& (test == null || test.evaluate(source))) {
						matches.add(source);
					}
				}
			}
		}
		if (matches.size() > 0) {
			ElementInSuppression_c[] ret_set = new ElementInSuppression_c[matches
					.size()];
			matches.copyInto(ret_set);
			return ret_set;
		} else {
			return new ElementInSuppression_c[0];
		}
	}

	public static ElementInSuppression_c[] getManyGD_EISsOnR32(Model_c target) {
		return getManyGD_EISsOnR32(target, null);
	}

	public static ElementInSuppression_c[] getManyGD_EISsOnR32(Model_c target,
			boolean loadComponent) {
		return getManyGD_EISsOnR32(target, null, loadComponent);
	}

	public static ElementInSuppression_c[] getManyGD_EISsOnR32(Model_c target,
			ClassQueryInterface_c test) {
		return getManyGD_EISsOnR32(target, test, true);
	}

	public static ElementInSuppression_c[] getManyGD_EISsOnR32(Model_c target,
			ClassQueryInterface_c test, boolean loadComponent) {
		if (target == null)
			return new ElementInSuppression_c[0];

		ModelRoot modelRoot = target.getModelRoot();
		Vector matches = new Vector();
		synchronized (target.backPointer_ElementInSuppression_R32) {
			for (int i = 0; i < target.backPointer_ElementInSuppression_R32
					.size(); ++i) {
				ElementInSuppression_c source = (ElementInSuppression_c) target.backPointer_ElementInSuppression_R32
						.get(i);
				if (source != null && (test == null || test.evaluate(source))) {

					matches.add(source);
				}
			}
		}

		if (matches.size() > 0) {
			ElementInSuppression_c[] ret_set = new ElementInSuppression_c[matches
					.size()];
			matches.copyInto(ret_set);
			return ret_set;
		} else {
			return new ElementInSuppression_c[0];
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

		// R32
		Model_c relInst22302 = (Model_c) baseRoot
				.getInstanceList(Model_c.class).get(new Object[]{m_diagramid});
		// if there was no local element, check for any global elements
		// failing that proceed to check other model roots
		if (relInst22302 == null) {
			relInst22302 = (Model_c) Ooaofooa.getDefaultInstance()
					.getInstanceList(Model_c.class)
					.get(new Object[]{m_diagramid});
		}
		//synchronized
		if (relInst22302 != null) {
			if (relateProxies || !isProxy()
					|| (inSameComponent(this, relInst22302) && !isProxy())) {
				relInst22302.relateAcrossR32To(this, notifyChanges);
			}
		}

		GraphicalElement_c relInst22303 = (GraphicalElement_c) baseRoot
				.getInstanceList(GraphicalElement_c.class).get(
						new Object[]{m_elementid});
		// if there was no local element, check for any global elements
		// failing that proceed to check other model roots
		if (relInst22303 == null) {
			relInst22303 = (GraphicalElement_c) Ooaofooa.getDefaultInstance()
					.getInstanceList(GraphicalElement_c.class)
					.get(new Object[]{m_elementid});
		}
		//synchronized
		if (relInst22303 != null) {
			if (relateProxies || !isProxy()
					|| (inSameComponent(this, relInst22303) && !isProxy())) {
				relInst22303.relateAcrossR32To(this, notifyChanges);
			}
		}

	}
	public void batchUnrelate(boolean notifyChanges) {
		NonRootModelElement inst = null;
		// R32
		// GD_MD
		inst = Model;
		unrelateAcrossR32From(Model, notifyChanges);
		if (inst != null) {
			inst.removeRef();
		}
		// GD_GE
		inst = GraphicalElement;
		unrelateAcrossR32From(GraphicalElement, notifyChanges);
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
	InstanceList instances = modelRoot.getInstanceList(ElementInSuppression_c.class);
    synchronized(instances) {
        Iterator<NonRootModelElement> cursor = instances.iterator() ;
    	while (cursor.hasNext())
	    {
            final ElementInSuppression_c inst = (ElementInSuppression_c)cursor.next() ;
	        inst.batchRelate(modelRoot, relateProxies, notifyChanges, searchAllRoots );
	    }
	}
  }
	public static void clearInstances(ModelRoot modelRoot) {
		InstanceList instances = modelRoot
				.getInstanceList(ElementInSuppression_c.class);
		synchronized (instances) {
			for (int i = instances.size() - 1; i >= 0; i--) {
				((NonRootModelElement) instances.get(i)).delete_unchecked();
			}

		}
	}

	public static ElementInSuppression_c ElementInSuppressionInstance(
			ModelRoot modelRoot, ClassQueryInterface_c test,
			boolean loadComponent) {
		ElementInSuppression_c result = findElementInSuppressionInstance(
				modelRoot, test, loadComponent);
		return result;
	}
	private static ElementInSuppression_c findElementInSuppressionInstance(
			ModelRoot modelRoot, ClassQueryInterface_c test,
			boolean loadComponent) {
		InstanceList instances = modelRoot
				.getInstanceList(ElementInSuppression_c.class);
		synchronized (instances) {
			for (int i = 0; i < instances.size(); ++i) {
				ElementInSuppression_c x = (ElementInSuppression_c) instances
						.get(i);
				if (test == null || test.evaluate(x)) {
					return x;
				}
			}
		}
		return null;
	}
	public static ElementInSuppression_c ElementInSuppressionInstance(
			ModelRoot modelRoot, ClassQueryInterface_c test) {
		return ElementInSuppressionInstance(modelRoot, test, true);
	}

	public static ElementInSuppression_c ElementInSuppressionInstance(
			ModelRoot modelRoot) {
		return ElementInSuppressionInstance(modelRoot, null, true);
	}

	public static ElementInSuppression_c[] ElementInSuppressionInstances(
			ModelRoot modelRoot, ClassQueryInterface_c test,
			boolean loadComponent) {
		InstanceList instances = modelRoot
				.getInstanceList(ElementInSuppression_c.class);
		Vector matches = new Vector();
		synchronized (instances) {
			for (int i = 0; i < instances.size(); ++i) {
				ElementInSuppression_c x = (ElementInSuppression_c) instances
						.get(i);
				if (test == null || test.evaluate(x)) {
					matches.add(x);
				}
			}
			if (matches.size() > 0) {
				ElementInSuppression_c[] ret_set = new ElementInSuppression_c[matches
						.size()];
				matches.copyInto(ret_set);
				return ret_set;
			} else {
				return new ElementInSuppression_c[0];
			}
		}
	}
	public static ElementInSuppression_c[] ElementInSuppressionInstances(
			ModelRoot modelRoot, ClassQueryInterface_c test) {
		return ElementInSuppressionInstances(modelRoot, test, true);
	}
	public static ElementInSuppression_c[] ElementInSuppressionInstances(
			ModelRoot modelRoot) {
		return ElementInSuppressionInstances(modelRoot, null, true);
	}

	public boolean delete() {
		boolean result = super.delete();
		boolean delete_error = false;
		String errorMsg = "The following relationships were not torn down by the Element In Suppression.dispose call: ";
		Model_c testR32Inst = Model_c.getOneGD_MDOnR32(this, false);

		if (testR32Inst != null) {
			delete_error = true;
			errorMsg = errorMsg + "32 ";
		}

		GraphicalElement_c testR32InstOth = GraphicalElement_c
				.getOneGD_GEOnR32(this, false);

		if (testR32InstOth != null) {
			delete_error = true;
			errorMsg = errorMsg + "32 ";
		}
		if (delete_error == true) {

			if (CanvasPlugin.getDefault().isDebugging()) {
				Ooaofgraphics.log.println(ILogger.DELETE,
						"Element In Suppression", errorMsg);
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
		if (attributeName.equals("diagramid")) {
			return true;
		}
		if (attributeName.equals("elementid")) {
			return true;
		}
		return false;
	}
	// declare attribute accessors
	public long getDiagramidLongBased() {
		if (Model != null) {
			return Model.getDiagramidLongBased();
		}
		return 0;
	}
	public java.util.UUID getDiagramid() {
		if (Model != null) {
			return Model.getDiagramid();
		}
		return IdAssigner.NULL_UUID;
	}

	public java.util.UUID getDiagramidCachedValue() {
		if (!IdAssigner.NULL_UUID.equals(m_diagramid))
			return m_diagramid;
		else
			return getDiagramid();
	}

	public void setDiagramid(java.util.UUID newValue) {
		if (newValue != null) {
			if (newValue.equals(m_diagramid)) {
				return;
			}
		} else if (m_diagramid != null) {
			if (m_diagramid.equals(newValue)) {
				return;
			}
		} else {
			return;
		}
		AttributeChangeModelDelta change = new AttributeChangeModelDelta(
				Modeleventnotification_c.DELTA_ATTRIBUTE_CHANGE, this,
				"Diagramid", m_diagramid, newValue, true);
		m_diagramid = IdAssigner.preprocessUUID(newValue);
		Ooaofgraphics.getDefaultInstance().fireModelElementAttributeChanged(
				change);
	}
	public long getElementidLongBased() {
		if (GraphicalElement != null) {
			return GraphicalElement.getElementidLongBased();
		}
		return 0;
	}
	public java.util.UUID getElementid() {
		if (GraphicalElement != null) {
			return GraphicalElement.getElementid();
		}
		return IdAssigner.NULL_UUID;
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
		Ooaofooa.log
				.println(ILogger.OPERATION, "Element In Suppression", //$NON-NLS-1$
						" Operation entered: Element In Suppression::checkClassConsistency"); //$NON-NLS-1$
		if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == false) { //$NON-NLS-1$
			return;
		}
		ElementInSuppression_c[] objs = ElementInSuppression_c
				.ElementInSuppressionInstances(modelRoot, null, false);

		for (int i = 0; i < objs.length; i++) {
			objs[i].checkConsistency();
		}
	}
	public boolean checkConsistency() {
		Ooaofooa.log.println(ILogger.OPERATION, "Element In Suppression", //$NON-NLS-1$
				" Operation entered: Element In Suppression::checkConsistency"); //$NON-NLS-1$
		if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == false) { //$NON-NLS-1$
			return true;
		}
		ModelRoot modelRoot = getModelRoot();
		boolean retval = true;
		class ElementInSuppression_c_test22305_c
				implements
					ClassQueryInterface_c {
			ElementInSuppression_c_test22305_c(java.util.UUID p22306,
					java.util.UUID p22307) {
				m_p22306 = p22306;
				m_p22307 = p22307;
			}
			private java.util.UUID m_p22306;
			private java.util.UUID m_p22307;
			public boolean evaluate(Object candidate) {
				ElementInSuppression_c selected = (ElementInSuppression_c) candidate;
				boolean retval = false;
				retval = (selected.getDiagramid().equals(m_p22306))
						& (selected.getElementid().equals(m_p22307));
				return retval;
			}
		}

		ElementInSuppression_c[] objs22304 = ElementInSuppression_c
				.ElementInSuppressionInstances(modelRoot,
						new ElementInSuppression_c_test22305_c(getDiagramid(),
								getElementid()));

		if (((objs22304.length) == 0)) {

			if (CanvasPlugin.getDefault().isDebugging()) {
				Ooaofgraphics.log
						.println(ILogger.CONSISTENCY,
								"Element In Suppression", //$NON-NLS-1$
								"Consistency: Object: Element In Suppression: Cardinality of an identifier is zero. " //$NON-NLS-1$
										+ "Actual Value: " + Integer.toString(objs22304.length)); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CanvasPlugin
						.logError(
								"Consistency: Object: Element In Suppression: Cardinality of an identifier is zero. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs22304.length), e);
			}
			retval = false;

		}

		if (((objs22304.length) > 1)) {

			if (CanvasPlugin.getDefault().isDebugging()) {
				Ooaofgraphics.log
						.println(ILogger.CONSISTENCY,
								"Element In Suppression", //$NON-NLS-1$
								"Consistency: Object: Element In Suppression: Cardinality of an identifier is greater than 1. " //$NON-NLS-1$
										+ "Actual Value: " //$NON-NLS-1$ 
										+ Integer.toString(objs22304.length)
										+ " diagramId: " + "Not Printable" + " elementId: " + "Not Printable"); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CanvasPlugin
						.logError(
								"Consistency: Object: Element In Suppression: Cardinality of an identifier is greater than 1. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs22304.length)
										+ " diagramId: " + "Not Printable" + " elementId: " + "Not Printable", e); //$NON-NLS-1$
			}
			retval = false;

		}

		// Element In Suppression is a link class in association: rel.Numb = 32
		// The one side class in the association is: Model
		class Model_c_test22311_c implements ClassQueryInterface_c {
			Model_c_test22311_c(java.util.UUID p22312) {
				m_p22312 = p22312;
			}
			private java.util.UUID m_p22312;
			public boolean evaluate(Object candidate) {
				Model_c selected = (Model_c) candidate;
				boolean retval = false;
				retval = (selected.getDiagramid().equals(m_p22312));
				return retval;
			}
		}

		Model_c[] objs22310 = Model_c.ModelInstances(modelRoot,
				new Model_c_test22311_c(getDiagramid()));

		if (((objs22310.length) > 1)) {

			if (CanvasPlugin.getDefault().isDebugging()) {
				Ooaofgraphics.log
						.println(ILogger.CONSISTENCY,
								"Element In Suppression", //$NON-NLS-1$
								"Consistency: Object: Element In Suppression: Association: 32: Cardinality of one side of link is greater than 1. " //$NON-NLS-1$
										+ "Actual Value: " + Integer.toString(objs22310.length)); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CanvasPlugin
						.logError(
								"Consistency: Object: Element In Suppression: Association: 32: Cardinality of one side of link is greater than 1. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs22310.length), e);
			}
			retval = false;

		}

		// Other side
		return retval;
	}

	public Object getAdapter(Class adapter) {
		Object superAdapter = super.getAdapter(adapter);
		if (superAdapter != null) {
			return superAdapter;
		}
		return null;
	}
} // end Element In Suppression