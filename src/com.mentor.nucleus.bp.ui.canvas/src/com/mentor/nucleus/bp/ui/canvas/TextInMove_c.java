package com.mentor.nucleus.bp.ui.canvas;
//====================================================================
//
// File:      com.mentor.nucleus.bp.ui.canvas.TextInMove_c.java
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
abstract class EV_TEXT_IN_MOVE extends genericEvent_c {
	public abstract int getEvtcode();
}

public class TextInMove_c extends NonRootModelElement
		implements
			IAdaptable,
			Cloneable {
	// Public Constructors
	public TextInMove_c(ModelRoot modelRoot, java.util.UUID p_m_diagramid,
			java.util.UUID p_m_elementid) {
		super(modelRoot);
		//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
		m_diagramid = IdAssigner.preprocessUUID(p_m_diagramid);
		//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
		m_elementid = IdAssigner.preprocessUUID(p_m_elementid);

		Object[] key = {m_diagramid, m_elementid};
		addInstanceToMap(key);
	}
	static public TextInMove_c createProxy(ModelRoot modelRoot,
			java.util.UUID p_m_diagramid, java.util.UUID p_m_elementid,
			String p_contentPath, IPath p_localPath) {
		ModelRoot resolvedModelRoot = ModelRoot.findModelRoot(modelRoot,
				p_contentPath, p_localPath);
		// if a model root was not resolved it is most likely
		// due to a missing file of the proxy, defualt back to
		// the original model root
		if (resolvedModelRoot != null)
			modelRoot = resolvedModelRoot;
		InstanceList instances = modelRoot.getInstanceList(TextInMove_c.class);
		TextInMove_c new_inst = null;
		synchronized (instances) {
			Object[] key = {p_m_diagramid, p_m_elementid};
			new_inst = (TextInMove_c) instances.get(key);
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
			new_inst = new TextInMove_c(modelRoot, p_m_diagramid, p_m_elementid);
			new_inst.m_contentPath = contentPath;
		}
		return new_inst;
	}

	static public TextInMove_c resolveInstance(ModelRoot modelRoot,
			java.util.UUID p_m_diagramid, java.util.UUID p_m_elementid) {
		InstanceList instances = modelRoot.getInstanceList(TextInMove_c.class);
		TextInMove_c source = null;
		synchronized (instances) {
			Object[] key = {p_m_diagramid, p_m_elementid};
			source = (TextInMove_c) instances.get(key);
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
		TextInMove_c new_inst = new TextInMove_c(modelRoot, p_m_diagramid,
				p_m_elementid);
		return new_inst;
	}
	public TextInMove_c(ModelRoot modelRoot) {
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
		if (!(elem instanceof TextInMove_c)) {
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
		if (!(elem instanceof TextInMove_c)) {
			return false;
		}

		TextInMove_c me = (TextInMove_c) elem;
		// don't allow an empty id-value to produce a false positive result;
		// in this case, use whether the two instances are actually the same 
		// one in memory, instead
		if (!getModelRoot().isCompareRoot()
				&& ((IdAssigner.NULL_UUID.equals(getDiagramid()) || IdAssigner.NULL_UUID
						.equals(((TextInMove_c) elem).getDiagramid())) && this != elem)) {
			return false;
		}
		if (!getDiagramid().equals(((TextInMove_c) elem).getDiagramid()))
			return false;
		// don't allow an empty id-value to produce a false positive result;
		// in this case, use whether the two instances are actually the same 
		// one in memory, instead
		if (!getModelRoot().isCompareRoot()
				&& ((IdAssigner.NULL_UUID.equals(getElementid()) || IdAssigner.NULL_UUID
						.equals(((TextInMove_c) elem).getElementid())) && this != elem)) {
			return false;
		}
		if (!getElementid().equals(((TextInMove_c) elem).getElementid()))
			return false;
		return true;
	}

	public boolean cachedIdentityEquals(Object elem) {
		if (!(elem instanceof TextInMove_c)) {
			return false;
		}

		TextInMove_c me = (TextInMove_c) elem;
		if (!getDiagramidCachedValue().equals(
				((TextInMove_c) elem).getDiagramidCachedValue()))
			return false;
		if (!getElementidCachedValue().equals(
				((TextInMove_c) elem).getElementidCachedValue()))
			return false;
		return true;
	}

	// Attributes
	private java.util.UUID m_diagramid;
	private java.util.UUID m_elementid;

	// declare association references from this class

	// referring navigation

	FloatingText_c FloatingText;
	public void relateAcrossR14To(FloatingText_c target) {
		relateAcrossR14To(target, true);
	}
	public void relateAcrossR14To(FloatingText_c target, boolean notifyChanges) {
		if (target == null)
			return;

		if (target == FloatingText)
			return; // already related

		if (FloatingText != target) {

			Object oldKey = getInstanceKey();

			if (FloatingText != null) {

				FloatingText.clearBackPointerR14To(this);

				if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == true) { //$NON-NLS-1$
					Ooaofgraphics.log
							.println(
									ILogger.CONSISTENCY,
									"TextInMove_c.relateAcrossR14To(FloatingText_c target)",
									"Relate performed across R14 from Text In Move to Floating Text without unrelate of prior instance.");
				}
			}

			FloatingText = target;
			if (IdAssigner.NULL_UUID.equals(target.getElementid())) {
				// do not update cached value
			} else {
				// update cached value
				m_elementid = target.getElementidCachedValue();
			}
			updateInstanceKey(oldKey, getInstanceKey());
			target.setBackPointerR14To(this);
			target.addRef();
			if (notifyChanges) {
				RelationshipChangeModelDelta change = new RelationshipChangeModelDelta(
						Modeleventnotification_c.DELTA_ELEMENT_RELATED, this,
						target, "14", "");
				Ooaofgraphics.getDefaultInstance()
						.fireModelElementRelationChanged(change);
			}
		}
	}
	public void unrelateAcrossR14From(FloatingText_c target) {
		unrelateAcrossR14From(target, true);
	}
	public void unrelateAcrossR14From(FloatingText_c target,
			boolean notifyChanges) {
		if (target == null)
			return;

		if (FloatingText == null)
			return; // already unrelated

		if (target != FloatingText) {
			Exception e = new Exception();
			e.fillInStackTrace();
			CanvasPlugin
					.logError(
							"Tried to unrelate from non-related instance across R14",
							e);
			return;
		}

		if (target != null) {
			target.clearBackPointerR14To(this);
		}

		if (FloatingText != null) {

			m_elementid = FloatingText.getElementid();
			if (IdAssigner.NULL_UUID.equals(m_elementid)) {
				m_elementid = FloatingText.getElementidCachedValue();
			}
			FloatingText = null;
			target.removeRef();
			if (notifyChanges) {
				RelationshipChangeModelDelta change = new RelationshipChangeModelDelta(
						Modeleventnotification_c.DELTA_ELEMENT_UNRELATED, this,
						target, "14", "");
				Ooaofgraphics.getDefaultInstance()
						.fireModelElementRelationChanged(change);
			}
		}
	}

	// referring navigation

	Model_c Model;
	public void relateAcrossR14To(Model_c target) {
		relateAcrossR14To(target, true);
	}
	public void relateAcrossR14To(Model_c target, boolean notifyChanges) {
		if (target == null)
			return;

		if (target == Model)
			return; // already related

		if (Model != target) {

			Object oldKey = getInstanceKey();

			if (Model != null) {

				Model.clearBackPointerR14To(this);

				if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == true) { //$NON-NLS-1$
					Ooaofgraphics.log
							.println(
									ILogger.CONSISTENCY,
									"TextInMove_c.relateAcrossR14To(Model_c target)",
									"Relate performed across R14 from Text In Move to Model without unrelate of prior instance.");
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
			target.setBackPointerR14To(this);
			target.addRef();
			if (notifyChanges) {
				RelationshipChangeModelDelta change = new RelationshipChangeModelDelta(
						Modeleventnotification_c.DELTA_ELEMENT_RELATED, this,
						target, "14", "");
				Ooaofgraphics.getDefaultInstance()
						.fireModelElementRelationChanged(change);
			}
		}
	}
	public void unrelateAcrossR14From(Model_c target) {
		unrelateAcrossR14From(target, true);
	}
	public void unrelateAcrossR14From(Model_c target, boolean notifyChanges) {
		if (target == null)
			return;

		if (Model == null)
			return; // already unrelated

		if (target != Model) {
			Exception e = new Exception();
			e.fillInStackTrace();
			CanvasPlugin
					.logError(
							"Tried to unrelate from non-related instance across R14",
							e);
			return;
		}

		if (target != null) {
			target.clearBackPointerR14To(this);
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
						target, "14", "");
				Ooaofgraphics.getDefaultInstance()
						.fireModelElementRelationChanged(change);
			}
		}
	}

	public static TextInMove_c getOneGD_TIMOnR14(FloatingText_c[] targets) {
		return getOneGD_TIMOnR14(targets, null);
	}

	public static TextInMove_c getOneGD_TIMOnR14(FloatingText_c[] targets,
			ClassQueryInterface_c test) {
		TextInMove_c ret_val = null;
		if (targets != null) {
			for (int i = 0; i < targets.length && ret_val == null; ++i) {
				ret_val = getOneGD_TIMOnR14(targets[i], test);
			}
		}

		return ret_val;
	}

	public static TextInMove_c getOneGD_TIMOnR14(FloatingText_c target) {
		return getOneGD_TIMOnR14(target, null);
	}

	public static TextInMove_c getOneGD_TIMOnR14(FloatingText_c target,
			boolean loadComponent) {
		return getOneGD_TIMOnR14(target.getModelRoot(), target, null,
				loadComponent);
	}

	public static TextInMove_c getOneGD_TIMOnR14(FloatingText_c target,
			ClassQueryInterface_c test) {
		if (target != null) {
			return getOneGD_TIMOnR14(target.getModelRoot(), target, test);
		}
		return null;
	}

	public static TextInMove_c getOneGD_TIMOnR14(ModelRoot modelRoot,
			FloatingText_c target, ClassQueryInterface_c test) {
		return getOneGD_TIMOnR14(modelRoot, target, test, true);
	}

	public static TextInMove_c getOneGD_TIMOnR14(ModelRoot modelRoot,
			FloatingText_c target, ClassQueryInterface_c test,
			boolean loadComponent) {
		return find_getOneGD_TIMOnR14(modelRoot, target, test);
	}
	private static TextInMove_c find_getOneGD_TIMOnR14(ModelRoot modelRoot,
			FloatingText_c target, ClassQueryInterface_c test) {
		if (target != null) {
			synchronized (target.backPointer_TextInMove_R14) {
				for (int i = 0; i < target.backPointer_TextInMove_R14.size(); ++i) {
					TextInMove_c source = (TextInMove_c) target.backPointer_TextInMove_R14
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

	public static TextInMove_c[] getManyGD_TIMsOnR14(FloatingText_c[] targets) {
		return getManyGD_TIMsOnR14(targets, null);
	}
	public static TextInMove_c[] getManyGD_TIMsOnR14(FloatingText_c[] targets,
			boolean loadComponent) {
		return getManyGD_TIMsOnR14(targets, null, loadComponent);
	}
	public static TextInMove_c[] getManyGD_TIMsOnR14(FloatingText_c[] targets,
			ClassQueryInterface_c test) {
		return getManyGD_TIMsOnR14(targets, test, true);
	}

	public static TextInMove_c[] getManyGD_TIMsOnR14(FloatingText_c[] targets,
			ClassQueryInterface_c test, boolean loadComponent) {

		if (targets == null || targets.length == 0 || targets[0] == null)
			return new TextInMove_c[0];

		ModelRoot modelRoot = targets[0].getModelRoot();

		InstanceList instances = modelRoot.getInstanceList(TextInMove_c.class);

		Vector matches = new Vector();
		for (int i = 0; i < targets.length; i++) {
			synchronized (targets[i].backPointer_TextInMove_R14) {
				for (int j = 0; j < targets[i].backPointer_TextInMove_R14
						.size(); ++j) {
					TextInMove_c source = (TextInMove_c) targets[i].backPointer_TextInMove_R14
							.get(j);
					if (source != null
							&& (test == null || test.evaluate(source))) {
						matches.add(source);
					}
				}
			}
		}
		if (matches.size() > 0) {
			TextInMove_c[] ret_set = new TextInMove_c[matches.size()];
			matches.copyInto(ret_set);
			return ret_set;
		} else {
			return new TextInMove_c[0];
		}
	}

	public static TextInMove_c[] getManyGD_TIMsOnR14(FloatingText_c target) {
		if (target != null) {
			FloatingText_c[] targetArray = new FloatingText_c[1];
			targetArray[0] = target;
			return getManyGD_TIMsOnR14(targetArray);
		} else {
			TextInMove_c[] result = new TextInMove_c[0];
			return result;
		}
	}

	public static TextInMove_c[] getManyGD_TIMsOnR14(FloatingText_c target,
			boolean loadComponent) {
		if (target != null) {
			FloatingText_c[] targetArray = new FloatingText_c[1];
			targetArray[0] = target;
			return getManyGD_TIMsOnR14(targetArray, loadComponent);
		} else {
			TextInMove_c[] result = new TextInMove_c[0];
			return result;
		}
	}

	public static TextInMove_c getOneGD_TIMOnR14(Model_c[] targets) {
		return getOneGD_TIMOnR14(targets, null);
	}

	public static TextInMove_c getOneGD_TIMOnR14(Model_c[] targets,
			ClassQueryInterface_c test) {
		TextInMove_c ret_val = null;
		if (targets != null) {
			for (int i = 0; i < targets.length && ret_val == null; ++i) {
				ret_val = getOneGD_TIMOnR14(targets[i], test);
			}
		}

		return ret_val;
	}

	public static TextInMove_c getOneGD_TIMOnR14(Model_c target) {
		return getOneGD_TIMOnR14(target, null);
	}

	public static TextInMove_c getOneGD_TIMOnR14(Model_c target,
			boolean loadComponent) {
		return getOneGD_TIMOnR14(target.getModelRoot(), target, null,
				loadComponent);
	}

	public static TextInMove_c getOneGD_TIMOnR14(Model_c target,
			ClassQueryInterface_c test) {
		if (target != null) {
			return getOneGD_TIMOnR14(target.getModelRoot(), target, test);
		}
		return null;
	}

	public static TextInMove_c getOneGD_TIMOnR14(ModelRoot modelRoot,
			Model_c target, ClassQueryInterface_c test) {
		return getOneGD_TIMOnR14(modelRoot, target, test, true);
	}

	public static TextInMove_c getOneGD_TIMOnR14(ModelRoot modelRoot,
			Model_c target, ClassQueryInterface_c test, boolean loadComponent) {
		return find_getOneGD_TIMOnR14(modelRoot, target, test);
	}
	private static TextInMove_c find_getOneGD_TIMOnR14(ModelRoot modelRoot,
			Model_c target, ClassQueryInterface_c test) {
		if (target != null) {
			synchronized (target.backPointer_TextInMove_R14) {
				for (int i = 0; i < target.backPointer_TextInMove_R14.size(); ++i) {
					TextInMove_c source = (TextInMove_c) target.backPointer_TextInMove_R14
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

	public static TextInMove_c[] getManyGD_TIMsOnR14(Model_c[] targets) {
		return getManyGD_TIMsOnR14(targets, null);
	}
	public static TextInMove_c[] getManyGD_TIMsOnR14(Model_c[] targets,
			boolean loadComponent) {
		return getManyGD_TIMsOnR14(targets, null, loadComponent);
	}
	public static TextInMove_c[] getManyGD_TIMsOnR14(Model_c[] targets,
			ClassQueryInterface_c test) {
		return getManyGD_TIMsOnR14(targets, test, true);
	}

	public static TextInMove_c[] getManyGD_TIMsOnR14(Model_c[] targets,
			ClassQueryInterface_c test, boolean loadComponent) {

		if (targets == null || targets.length == 0 || targets[0] == null)
			return new TextInMove_c[0];

		ModelRoot modelRoot = targets[0].getModelRoot();

		InstanceList instances = modelRoot.getInstanceList(TextInMove_c.class);

		Vector matches = new Vector();
		for (int i = 0; i < targets.length; i++) {
			synchronized (targets[i].backPointer_TextInMove_R14) {
				for (int j = 0; j < targets[i].backPointer_TextInMove_R14
						.size(); ++j) {
					TextInMove_c source = (TextInMove_c) targets[i].backPointer_TextInMove_R14
							.get(j);
					if (source != null
							&& (test == null || test.evaluate(source))) {
						matches.add(source);
					}
				}
			}
		}
		if (matches.size() > 0) {
			TextInMove_c[] ret_set = new TextInMove_c[matches.size()];
			matches.copyInto(ret_set);
			return ret_set;
		} else {
			return new TextInMove_c[0];
		}
	}

	public static TextInMove_c[] getManyGD_TIMsOnR14(Model_c target) {
		if (target != null) {
			Model_c[] targetArray = new Model_c[1];
			targetArray[0] = target;
			return getManyGD_TIMsOnR14(targetArray);
		} else {
			TextInMove_c[] result = new TextInMove_c[0];
			return result;
		}
	}

	public static TextInMove_c[] getManyGD_TIMsOnR14(Model_c target,
			boolean loadComponent) {
		if (target != null) {
			Model_c[] targetArray = new Model_c[1];
			targetArray[0] = target;
			return getManyGD_TIMsOnR14(targetArray, loadComponent);
		} else {
			TextInMove_c[] result = new TextInMove_c[0];
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

		// R14
		Model_c relInst22110 = (Model_c) baseRoot
				.getInstanceList(Model_c.class).get(new Object[]{m_diagramid});
		// if there was no local element, check for any global elements
		// failing that proceed to check other model roots
		if (relInst22110 == null) {
			relInst22110 = (Model_c) Ooaofooa.getDefaultInstance()
					.getInstanceList(Model_c.class)
					.get(new Object[]{m_diagramid});
		}
		//synchronized
		if (relInst22110 != null) {
			if (relateProxies || !isProxy()
					|| (inSameComponent(this, relInst22110) && !isProxy())) {
				relInst22110.relateAcrossR14To(this, notifyChanges);
			}
		}

		FloatingText_c relInst22111 = (FloatingText_c) baseRoot
				.getInstanceList(FloatingText_c.class).get(
						new Object[]{m_elementid});
		// if there was no local element, check for any global elements
		// failing that proceed to check other model roots
		if (relInst22111 == null) {
			relInst22111 = (FloatingText_c) Ooaofooa.getDefaultInstance()
					.getInstanceList(FloatingText_c.class)
					.get(new Object[]{m_elementid});
		}
		//synchronized
		if (relInst22111 != null) {
			if (relateProxies || !isProxy()
					|| (inSameComponent(this, relInst22111) && !isProxy())) {
				relInst22111.relateAcrossR14To(this, notifyChanges);
			}
		}

	}
	public void batchUnrelate(boolean notifyChanges) {
		NonRootModelElement inst = null;
		// R14
		// GD_MD
		inst = Model;
		unrelateAcrossR14From(Model, notifyChanges);
		if (inst != null) {
			inst.removeRef();
		}
		// GD_CTXT
		inst = FloatingText;
		unrelateAcrossR14From(FloatingText, notifyChanges);
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
	InstanceList instances = modelRoot.getInstanceList(TextInMove_c.class);
    synchronized(instances) {
        Iterator<NonRootModelElement> cursor = instances.iterator() ;
    	while (cursor.hasNext())
	    {
            final TextInMove_c inst = (TextInMove_c)cursor.next() ;
	        inst.batchRelate(modelRoot, relateProxies, notifyChanges, searchAllRoots );
	    }
	}
  }
	public static void clearInstances(ModelRoot modelRoot) {
		InstanceList instances = modelRoot.getInstanceList(TextInMove_c.class);
		synchronized (instances) {
			for (int i = instances.size() - 1; i >= 0; i--) {
				((NonRootModelElement) instances.get(i)).delete_unchecked();
			}

		}
	}

	public static TextInMove_c TextInMoveInstance(ModelRoot modelRoot,
			ClassQueryInterface_c test, boolean loadComponent) {
		TextInMove_c result = findTextInMoveInstance(modelRoot, test,
				loadComponent);
		return result;
	}
	private static TextInMove_c findTextInMoveInstance(ModelRoot modelRoot,
			ClassQueryInterface_c test, boolean loadComponent) {
		InstanceList instances = modelRoot.getInstanceList(TextInMove_c.class);
		synchronized (instances) {
			for (int i = 0; i < instances.size(); ++i) {
				TextInMove_c x = (TextInMove_c) instances.get(i);
				if (test == null || test.evaluate(x)) {
					return x;
				}
			}
		}
		return null;
	}
	public static TextInMove_c TextInMoveInstance(ModelRoot modelRoot,
			ClassQueryInterface_c test) {
		return TextInMoveInstance(modelRoot, test, true);
	}

	public static TextInMove_c TextInMoveInstance(ModelRoot modelRoot) {
		return TextInMoveInstance(modelRoot, null, true);
	}

	public static TextInMove_c[] TextInMoveInstances(ModelRoot modelRoot,
			ClassQueryInterface_c test, boolean loadComponent) {
		InstanceList instances = modelRoot.getInstanceList(TextInMove_c.class);
		Vector matches = new Vector();
		synchronized (instances) {
			for (int i = 0; i < instances.size(); ++i) {
				TextInMove_c x = (TextInMove_c) instances.get(i);
				if (test == null || test.evaluate(x)) {
					matches.add(x);
				}
			}
			if (matches.size() > 0) {
				TextInMove_c[] ret_set = new TextInMove_c[matches.size()];
				matches.copyInto(ret_set);
				return ret_set;
			} else {
				return new TextInMove_c[0];
			}
		}
	}
	public static TextInMove_c[] TextInMoveInstances(ModelRoot modelRoot,
			ClassQueryInterface_c test) {
		return TextInMoveInstances(modelRoot, test, true);
	}
	public static TextInMove_c[] TextInMoveInstances(ModelRoot modelRoot) {
		return TextInMoveInstances(modelRoot, null, true);
	}

	public boolean delete() {
		boolean result = super.delete();
		boolean delete_error = false;
		String errorMsg = "The following relationships were not torn down by the Text In Move.dispose call: ";
		Model_c testR14Inst = Model_c.getOneGD_MDOnR14(this, false);

		if (testR14Inst != null) {
			delete_error = true;
			errorMsg = errorMsg + "14 ";
		}

		FloatingText_c testR14InstOth = FloatingText_c.getOneGD_CTXTOnR14(this,
				false);

		if (testR14InstOth != null) {
			delete_error = true;
			errorMsg = errorMsg + "14 ";
		}
		if (delete_error == true) {

			if (CanvasPlugin.getDefault().isDebugging()) {
				Ooaofgraphics.log.println(ILogger.DELETE, "Text In Move",
						errorMsg);
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
				"Diagramid", m_diagramid, newValue, false);
		m_diagramid = IdAssigner.preprocessUUID(newValue);
		Ooaofgraphics.getDefaultInstance().fireModelElementAttributeChanged(
				change);
	}
	public long getElementidLongBased() {
		if (FloatingText != null) {
			return FloatingText.getElementidLongBased();
		}
		return 0;
	}
	public java.util.UUID getElementid() {
		if (FloatingText != null) {
			return FloatingText.getElementid();
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
				"Elementid", m_elementid, newValue, false);
		m_elementid = IdAssigner.preprocessUUID(newValue);
		Ooaofgraphics.getDefaultInstance().fireModelElementAttributeChanged(
				change);
	}
	// end declare accessors
	public static void checkClassConsistency(ModelRoot modelRoot) {
		Ooaofooa.log.println(ILogger.OPERATION, "Text In Move", //$NON-NLS-1$
				" Operation entered: Text In Move::checkClassConsistency"); //$NON-NLS-1$
		if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == false) { //$NON-NLS-1$
			return;
		}
		TextInMove_c[] objs = TextInMove_c.TextInMoveInstances(modelRoot, null,
				false);

		for (int i = 0; i < objs.length; i++) {
			objs[i].checkConsistency();
		}
	}
	public boolean checkConsistency() {
		Ooaofooa.log.println(ILogger.OPERATION, "Text In Move", //$NON-NLS-1$
				" Operation entered: Text In Move::checkConsistency"); //$NON-NLS-1$
		if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == false) { //$NON-NLS-1$
			return true;
		}
		ModelRoot modelRoot = getModelRoot();
		boolean retval = true;
		class TextInMove_c_test22113_c implements ClassQueryInterface_c {
			TextInMove_c_test22113_c(java.util.UUID p22114,
					java.util.UUID p22115) {
				m_p22114 = p22114;
				m_p22115 = p22115;
			}
			private java.util.UUID m_p22114;
			private java.util.UUID m_p22115;
			public boolean evaluate(Object candidate) {
				TextInMove_c selected = (TextInMove_c) candidate;
				boolean retval = false;
				retval = (selected.getDiagramid().equals(m_p22114))
						& (selected.getElementid().equals(m_p22115));
				return retval;
			}
		}

		TextInMove_c[] objs22112 = TextInMove_c.TextInMoveInstances(modelRoot,
				new TextInMove_c_test22113_c(getDiagramid(), getElementid()));

		if (((objs22112.length) == 0)) {

			if (CanvasPlugin.getDefault().isDebugging()) {
				Ooaofgraphics.log
						.println(ILogger.CONSISTENCY,
								"Text In Move", //$NON-NLS-1$
								"Consistency: Object: Text In Move: Cardinality of an identifier is zero. " //$NON-NLS-1$
										+ "Actual Value: " + Integer.toString(objs22112.length)); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CanvasPlugin.logError(
						"Consistency: Object: Text In Move: Cardinality of an identifier is zero. " //$NON-NLS-1$ 
								+ "Actual Value: " //$NON-NLS-1$
								+ Integer.toString(objs22112.length), e);
			}
			retval = false;

		}

		if (((objs22112.length) > 1)) {

			if (CanvasPlugin.getDefault().isDebugging()) {
				Ooaofgraphics.log
						.println(ILogger.CONSISTENCY,
								"Text In Move", //$NON-NLS-1$
								"Consistency: Object: Text In Move: Cardinality of an identifier is greater than 1. " //$NON-NLS-1$
										+ "Actual Value: " //$NON-NLS-1$ 
										+ Integer.toString(objs22112.length)
										+ " diagramId: " + "Not Printable" + " elementId: " + "Not Printable"); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CanvasPlugin
						.logError(
								"Consistency: Object: Text In Move: Cardinality of an identifier is greater than 1. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs22112.length)
										+ " diagramId: " + "Not Printable" + " elementId: " + "Not Printable", e); //$NON-NLS-1$
			}
			retval = false;

		}

		// Text In Move is a link class in association: rel.Numb = 14
		// The one side class in the association is: Model
		class Model_c_test22119_c implements ClassQueryInterface_c {
			Model_c_test22119_c(java.util.UUID p22120) {
				m_p22120 = p22120;
			}
			private java.util.UUID m_p22120;
			public boolean evaluate(Object candidate) {
				Model_c selected = (Model_c) candidate;
				boolean retval = false;
				retval = (selected.getDiagramid().equals(m_p22120));
				return retval;
			}
		}

		Model_c[] objs22118 = Model_c.ModelInstances(modelRoot,
				new Model_c_test22119_c(getDiagramid()));

		if (((objs22118.length) > 1)) {

			if (CanvasPlugin.getDefault().isDebugging()) {
				Ooaofgraphics.log
						.println(ILogger.CONSISTENCY,
								"Text In Move", //$NON-NLS-1$
								"Consistency: Object: Text In Move: Association: 14: Cardinality of one side of link is greater than 1. " //$NON-NLS-1$
										+ "Actual Value: " + Integer.toString(objs22118.length)); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CanvasPlugin
						.logError(
								"Consistency: Object: Text In Move: Association: 14: Cardinality of one side of link is greater than 1. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs22118.length), e);
			}
			retval = false;

		}

		// Other side
		// The other side class in the association is: Floating Text
		class FloatingText_c_test22122_c implements ClassQueryInterface_c {
			FloatingText_c_test22122_c(java.util.UUID p22123) {
				m_p22123 = p22123;
			}
			private java.util.UUID m_p22123;
			public boolean evaluate(Object candidate) {
				FloatingText_c selected = (FloatingText_c) candidate;
				boolean retval = false;
				retval = (selected.getElementid().equals(m_p22123));
				return retval;
			}
		}

		FloatingText_c[] objs22121 = FloatingText_c.FloatingTextInstances(
				modelRoot, new FloatingText_c_test22122_c(getElementid()));

		if (((objs22121.length) > 1)) {

			if (CanvasPlugin.getDefault().isDebugging()) {
				Ooaofgraphics.log
						.println(ILogger.CONSISTENCY,
								"Text In Move", //$NON-NLS-1$
								"Consistency: Object: Text In Move: Association: 14: Cardinality of other side of link is greater than 1. " //$NON-NLS-1$
										+ "Actual Value: " + Integer.toString(objs22121.length)); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CanvasPlugin
						.logError(
								"Consistency: Object: Text In Move: Association: 14: Cardinality of other side of link is greater than 1. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs22121.length), e);
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
} // end Text In Move
