package com.mentor.nucleus.bp.ui.canvas;
//====================================================================
//
// File:      com.mentor.nucleus.bp.ui.canvas.Graphicalelementinlayer_c.java
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
abstract class EV_GRAPHICALELEMENTINLAYER extends genericEvent_c {
	public abstract int getEvtcode();
}

public class Graphicalelementinlayer_c extends NonRootModelElement
		implements
			IAdaptable,
			Cloneable {
	// Public Constructors
	public Graphicalelementinlayer_c(ModelRoot modelRoot,
			String p_m_layer_name, java.util.UUID p_m_elementid) {
		super(modelRoot);
		m_layer_name = p_m_layer_name;
		//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
		m_elementid = IdAssigner.preprocessUUID(p_m_elementid);

		Object[] key = {m_layer_name, m_elementid};
		addInstanceToMap(key);
	}
	static public Graphicalelementinlayer_c createProxy(ModelRoot modelRoot,
			String p_m_layer_name, java.util.UUID p_m_elementid,
			String p_contentPath, IPath p_localPath) {
		ModelRoot resolvedModelRoot = ModelRoot.findModelRoot(modelRoot,
				p_contentPath, p_localPath);
		// if a model root was not resolved it is most likely
		// due to a missing file of the proxy, defualt back to
		// the original model root
		if (resolvedModelRoot != null)
			modelRoot = resolvedModelRoot;
		InstanceList instances = modelRoot
				.getInstanceList(Graphicalelementinlayer_c.class);
		Graphicalelementinlayer_c new_inst = null;
		synchronized (instances) {
			Object[] key = {p_m_layer_name, p_m_elementid};
			new_inst = (Graphicalelementinlayer_c) instances.get(key);
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
				new_inst.m_layer_name = p_m_layer_name;
				//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
				new_inst.m_elementid = IdAssigner.preprocessUUID(p_m_elementid);

			}
		}
		if (new_inst == null) {
			// there is no instance matching the id, create a proxy
			// if the resource doesn't exist then this will be a dangling reference
			new_inst = new Graphicalelementinlayer_c(modelRoot, p_m_layer_name,
					p_m_elementid);
			new_inst.m_contentPath = contentPath;
		}
		return new_inst;
	}

	static public Graphicalelementinlayer_c resolveInstance(
			ModelRoot modelRoot, String p_m_layer_name,
			java.util.UUID p_m_elementid) {
		InstanceList instances = modelRoot
				.getInstanceList(Graphicalelementinlayer_c.class);
		Graphicalelementinlayer_c source = null;
		synchronized (instances) {
			Object[] key = {p_m_layer_name, p_m_elementid};
			source = (Graphicalelementinlayer_c) instances.get(key);
			if (source != null && !modelRoot.isCompareRoot()) {
				source.convertFromProxy();
				source.batchUnrelate();
				source.m_layer_name = p_m_layer_name;
				//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
				source.m_elementid = IdAssigner.preprocessUUID(p_m_elementid);

				return source;
			}
		}
		// there is no instance matching the id
		Graphicalelementinlayer_c new_inst = new Graphicalelementinlayer_c(
				modelRoot, p_m_layer_name, p_m_elementid);
		return new_inst;
	}
	public Graphicalelementinlayer_c(ModelRoot modelRoot) {
		super(modelRoot);
		m_layer_name = "";
		m_elementid = IdAssigner.NULL_UUID;
		Object[] key = {m_layer_name, m_elementid};
		addInstanceToMap(key);
	}

	public Object getInstanceKey() {
		Object[] key = {m_layer_name, m_elementid};
		return key;
	}

	public boolean setInstanceKey(UUID p_newKey) {

		boolean changed = false;
		// round p1
		// round p2
		// round p3
		// round p4
		// round p6
		// round p7
		// round p1
		// round p2
		// round p3
		// round p4
		// round p5
		if (m_elementid != p_newKey) {

			m_elementid = p_newKey;
			changed = true;
		}
		return changed;
	}

	public boolean equals(Object elem) {
		if (!(elem instanceof Graphicalelementinlayer_c)) {
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
		if (!(elem instanceof Graphicalelementinlayer_c)) {
			return false;
		}

		Graphicalelementinlayer_c me = (Graphicalelementinlayer_c) elem;
		if (!getLayer_name().equals(
				((Graphicalelementinlayer_c) elem).getLayer_name()))
			return false;
		// don't allow an empty id-value to produce a false positive result;
		// in this case, use whether the two instances are actually the same 
		// one in memory, instead
		if (!getModelRoot().isCompareRoot()
				&& ((IdAssigner.NULL_UUID.equals(getElementid()) || IdAssigner.NULL_UUID
						.equals(((Graphicalelementinlayer_c) elem)
								.getElementid())) && this != elem)) {
			return false;
		}
		if (!getElementid().equals(
				((Graphicalelementinlayer_c) elem).getElementid()))
			return false;
		return true;
	}

	public boolean cachedIdentityEquals(Object elem) {
		if (!(elem instanceof Graphicalelementinlayer_c)) {
			return false;
		}

		Graphicalelementinlayer_c me = (Graphicalelementinlayer_c) elem;
		if (!getLayer_nameCachedValue().equals(
				((Graphicalelementinlayer_c) elem).getLayer_nameCachedValue()))
			return false;
		if (!getElementidCachedValue().equals(
				((Graphicalelementinlayer_c) elem).getElementidCachedValue()))
			return false;
		return true;
	}

	// Attributes
	private String m_layer_name;
	private java.util.UUID m_elementid;

	// declare association references from this class

	// referring navigation

	GraphicalElement_c ContainsGraphicalElement;
	public void relateAcrossR35To(GraphicalElement_c target) {
		relateAcrossR35To(target, true);
	}
	public void relateAcrossR35To(GraphicalElement_c target,
			boolean notifyChanges) {
		if (target == null)
			return;

		if (target == ContainsGraphicalElement)
			return; // already related

		if (ContainsGraphicalElement != target) {

			Object oldKey = getInstanceKey();

			if (ContainsGraphicalElement != null) {

				ContainsGraphicalElement.clearBackPointerR35To(this);

				if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == true) { //$NON-NLS-1$
					Ooaofgraphics.log
							.println(
									ILogger.CONSISTENCY,
									"Graphicalelementinlayer_c.relateAcrossR35To(GraphicalElement_c target)",
									"Relate performed across R35 from GraphicalElementInLayer to Graphical Element without unrelate of prior instance.");
				}
			}

			ContainsGraphicalElement = target;
			if (IdAssigner.NULL_UUID.equals(target.getElementid())) {
				// do not update cached value
			} else {
				// update cached value
				m_elementid = target.getElementidCachedValue();
			}
			updateInstanceKey(oldKey, getInstanceKey());
			target.setBackPointerR35To(this);
			target.addRef();
			if (notifyChanges) {
				RelationshipChangeModelDelta change = new RelationshipChangeModelDelta(
						Modeleventnotification_c.DELTA_ELEMENT_RELATED, this,
						target, "35", "");
				Ooaofgraphics.getDefaultInstance()
						.fireModelElementRelationChanged(change);
			}
		}
	}
	public void unrelateAcrossR35From(GraphicalElement_c target) {
		unrelateAcrossR35From(target, true);
	}
	public void unrelateAcrossR35From(GraphicalElement_c target,
			boolean notifyChanges) {
		if (target == null)
			return;

		if (ContainsGraphicalElement == null)
			return; // already unrelated

		if (target != ContainsGraphicalElement) {
			Exception e = new Exception();
			e.fillInStackTrace();
			CanvasPlugin
					.logError(
							"Tried to unrelate from non-related instance across R35",
							e);
			return;
		}

		if (target != null) {
			target.clearBackPointerR35To(this);
		}

		if (ContainsGraphicalElement != null) {

			m_elementid = ContainsGraphicalElement.getElementid();
			if (IdAssigner.NULL_UUID.equals(m_elementid)) {
				m_elementid = ContainsGraphicalElement
						.getElementidCachedValue();
			}
			ContainsGraphicalElement = null;
			target.removeRef();
			if (notifyChanges) {
				RelationshipChangeModelDelta change = new RelationshipChangeModelDelta(
						Modeleventnotification_c.DELTA_ELEMENT_UNRELATED, this,
						target, "35", "");
				Ooaofgraphics.getDefaultInstance()
						.fireModelElementRelationChanged(change);
			}
		}
	}

	// referring navigation

	Layer_c ContainedInLayer;
	public void relateAcrossR35To(Layer_c target) {
		relateAcrossR35To(target, true);
	}
	public void relateAcrossR35To(Layer_c target, boolean notifyChanges) {
		if (target == null)
			return;

		if (target == ContainedInLayer)
			return; // already related

		if (ContainedInLayer != target) {

			Object oldKey = getInstanceKey();

			if (ContainedInLayer != null) {

				ContainedInLayer.clearBackPointerR35To(this);

				if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == true) { //$NON-NLS-1$
					Ooaofgraphics.log
							.println(
									ILogger.CONSISTENCY,
									"Graphicalelementinlayer_c.relateAcrossR35To(Layer_c target)",
									"Relate performed across R35 from GraphicalElementInLayer to Layer without unrelate of prior instance.");
				}
			}

			ContainedInLayer = target;
			m_layer_name = target.getLayer_name();
			updateInstanceKey(oldKey, getInstanceKey());
			target.setBackPointerR35To(this);
			target.addRef();
			if (notifyChanges) {
				RelationshipChangeModelDelta change = new RelationshipChangeModelDelta(
						Modeleventnotification_c.DELTA_ELEMENT_RELATED, this,
						target, "35", "");
				Ooaofgraphics.getDefaultInstance()
						.fireModelElementRelationChanged(change);
			}
		}
	}
	public void unrelateAcrossR35From(Layer_c target) {
		unrelateAcrossR35From(target, true);
	}
	public void unrelateAcrossR35From(Layer_c target, boolean notifyChanges) {
		if (target == null)
			return;

		if (ContainedInLayer == null)
			return; // already unrelated

		if (target != ContainedInLayer) {
			Exception e = new Exception();
			e.fillInStackTrace();
			CanvasPlugin
					.logError(
							"Tried to unrelate from non-related instance across R35",
							e);
			return;
		}

		if (target != null) {
			target.clearBackPointerR35To(this);
		}

		if (ContainedInLayer != null) {

			m_layer_name = ContainedInLayer.getLayer_name();
			ContainedInLayer = null;
			target.removeRef();
			if (notifyChanges) {
				RelationshipChangeModelDelta change = new RelationshipChangeModelDelta(
						Modeleventnotification_c.DELTA_ELEMENT_UNRELATED, this,
						target, "35", "");
				Ooaofgraphics.getDefaultInstance()
						.fireModelElementRelationChanged(change);
			}
		}
	}

	public static Graphicalelementinlayer_c getOneGD_GLAYOnR35(
			GraphicalElement_c[] targets) {
		return getOneGD_GLAYOnR35(targets, null);
	}

	public static Graphicalelementinlayer_c getOneGD_GLAYOnR35(
			GraphicalElement_c[] targets, ClassQueryInterface_c test) {
		Graphicalelementinlayer_c ret_val = null;
		if (targets != null) {
			for (int i = 0; i < targets.length && ret_val == null; ++i) {
				ret_val = getOneGD_GLAYOnR35(targets[i], test);
			}
		}

		return ret_val;
	}

	public static Graphicalelementinlayer_c getOneGD_GLAYOnR35(
			GraphicalElement_c target) {
		return getOneGD_GLAYOnR35(target, null);
	}

	public static Graphicalelementinlayer_c getOneGD_GLAYOnR35(
			GraphicalElement_c target, boolean loadComponent) {
		return getOneGD_GLAYOnR35(target.getModelRoot(), target, null,
				loadComponent);
	}

	public static Graphicalelementinlayer_c getOneGD_GLAYOnR35(
			GraphicalElement_c target, ClassQueryInterface_c test) {
		if (target != null) {
			return getOneGD_GLAYOnR35(target.getModelRoot(), target, test);
		}
		return null;
	}

	public static Graphicalelementinlayer_c getOneGD_GLAYOnR35(
			ModelRoot modelRoot, GraphicalElement_c target,
			ClassQueryInterface_c test) {
		return getOneGD_GLAYOnR35(modelRoot, target, test, true);
	}

	public static Graphicalelementinlayer_c getOneGD_GLAYOnR35(
			ModelRoot modelRoot, GraphicalElement_c target,
			ClassQueryInterface_c test, boolean loadComponent) {
		return find_getOneGD_GLAYOnR35(modelRoot, target, test);
	}
	private static Graphicalelementinlayer_c find_getOneGD_GLAYOnR35(
			ModelRoot modelRoot, GraphicalElement_c target,
			ClassQueryInterface_c test) {
		if (target != null) {
			synchronized (target.backPointer_ContainedInGraphicalelementinlayerContainedIn_R35) {
				for (int i = 0; i < target.backPointer_ContainedInGraphicalelementinlayerContainedIn_R35
						.size(); ++i) {
					Graphicalelementinlayer_c source = (Graphicalelementinlayer_c) target.backPointer_ContainedInGraphicalelementinlayerContainedIn_R35
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

	public static Graphicalelementinlayer_c[] getManyGD_GLAYsOnR35(
			GraphicalElement_c[] targets) {
		return getManyGD_GLAYsOnR35(targets, null);
	}
	public static Graphicalelementinlayer_c[] getManyGD_GLAYsOnR35(
			GraphicalElement_c[] targets, boolean loadComponent) {
		return getManyGD_GLAYsOnR35(targets, null, loadComponent);
	}
	public static Graphicalelementinlayer_c[] getManyGD_GLAYsOnR35(
			GraphicalElement_c[] targets, ClassQueryInterface_c test) {
		return getManyGD_GLAYsOnR35(targets, test, true);
	}

	public static Graphicalelementinlayer_c[] getManyGD_GLAYsOnR35(
			GraphicalElement_c[] targets, ClassQueryInterface_c test,
			boolean loadComponent) {

		if (targets == null || targets.length == 0 || targets[0] == null)
			return new Graphicalelementinlayer_c[0];

		ModelRoot modelRoot = targets[0].getModelRoot();

		InstanceList instances = modelRoot
				.getInstanceList(Graphicalelementinlayer_c.class);

		Vector matches = new Vector();
		for (int i = 0; i < targets.length; i++) {
			synchronized (targets[i].backPointer_ContainedInGraphicalelementinlayerContainedIn_R35) {
				for (int j = 0; j < targets[i].backPointer_ContainedInGraphicalelementinlayerContainedIn_R35
						.size(); ++j) {
					Graphicalelementinlayer_c source = (Graphicalelementinlayer_c) targets[i].backPointer_ContainedInGraphicalelementinlayerContainedIn_R35
							.get(j);
					if (source != null
							&& (test == null || test.evaluate(source))) {
						matches.add(source);
					}
				}
			}
		}
		if (matches.size() > 0) {
			Graphicalelementinlayer_c[] ret_set = new Graphicalelementinlayer_c[matches
					.size()];
			matches.copyInto(ret_set);
			return ret_set;
		} else {
			return new Graphicalelementinlayer_c[0];
		}
	}

	public static Graphicalelementinlayer_c[] getManyGD_GLAYsOnR35(
			GraphicalElement_c target) {
		return getManyGD_GLAYsOnR35(target, null);
	}

	public static Graphicalelementinlayer_c[] getManyGD_GLAYsOnR35(
			GraphicalElement_c target, boolean loadComponent) {
		return getManyGD_GLAYsOnR35(target, null, loadComponent);
	}

	public static Graphicalelementinlayer_c[] getManyGD_GLAYsOnR35(
			GraphicalElement_c target, ClassQueryInterface_c test) {
		return getManyGD_GLAYsOnR35(target, test, true);
	}

	public static Graphicalelementinlayer_c[] getManyGD_GLAYsOnR35(
			GraphicalElement_c target, ClassQueryInterface_c test,
			boolean loadComponent) {
		if (target == null)
			return new Graphicalelementinlayer_c[0];

		ModelRoot modelRoot = target.getModelRoot();
		Vector matches = new Vector();
		synchronized (target.backPointer_ContainedInGraphicalelementinlayerContainedIn_R35) {
			for (int i = 0; i < target.backPointer_ContainedInGraphicalelementinlayerContainedIn_R35
					.size(); ++i) {
				Graphicalelementinlayer_c source = (Graphicalelementinlayer_c) target.backPointer_ContainedInGraphicalelementinlayerContainedIn_R35
						.get(i);
				if (source != null && (test == null || test.evaluate(source))) {

					matches.add(source);
				}
			}
		}

		if (matches.size() > 0) {
			Graphicalelementinlayer_c[] ret_set = new Graphicalelementinlayer_c[matches
					.size()];
			matches.copyInto(ret_set);
			return ret_set;
		} else {
			return new Graphicalelementinlayer_c[0];
		}
	}

	public static Graphicalelementinlayer_c getOneGD_GLAYOnR35(Layer_c[] targets) {
		return getOneGD_GLAYOnR35(targets, null);
	}

	public static Graphicalelementinlayer_c getOneGD_GLAYOnR35(
			Layer_c[] targets, ClassQueryInterface_c test) {
		Graphicalelementinlayer_c ret_val = null;
		if (targets != null) {
			for (int i = 0; i < targets.length && ret_val == null; ++i) {
				ret_val = getOneGD_GLAYOnR35(targets[i], test);
			}
		}

		return ret_val;
	}

	public static Graphicalelementinlayer_c getOneGD_GLAYOnR35(Layer_c target) {
		return getOneGD_GLAYOnR35(target, null);
	}

	public static Graphicalelementinlayer_c getOneGD_GLAYOnR35(Layer_c target,
			boolean loadComponent) {
		return getOneGD_GLAYOnR35(target.getModelRoot(), target, null,
				loadComponent);
	}

	public static Graphicalelementinlayer_c getOneGD_GLAYOnR35(Layer_c target,
			ClassQueryInterface_c test) {
		if (target != null) {
			return getOneGD_GLAYOnR35(target.getModelRoot(), target, test);
		}
		return null;
	}

	public static Graphicalelementinlayer_c getOneGD_GLAYOnR35(
			ModelRoot modelRoot, Layer_c target, ClassQueryInterface_c test) {
		return getOneGD_GLAYOnR35(modelRoot, target, test, true);
	}

	public static Graphicalelementinlayer_c getOneGD_GLAYOnR35(
			ModelRoot modelRoot, Layer_c target, ClassQueryInterface_c test,
			boolean loadComponent) {
		return find_getOneGD_GLAYOnR35(modelRoot, target, test);
	}
	private static Graphicalelementinlayer_c find_getOneGD_GLAYOnR35(
			ModelRoot modelRoot, Layer_c target, ClassQueryInterface_c test) {
		if (target != null) {
			synchronized (target.backPointer_ContainsGraphicalelementinlayerContains_R35) {
				for (int i = 0; i < target.backPointer_ContainsGraphicalelementinlayerContains_R35
						.size(); ++i) {
					Graphicalelementinlayer_c source = (Graphicalelementinlayer_c) target.backPointer_ContainsGraphicalelementinlayerContains_R35
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

	public static Graphicalelementinlayer_c[] getManyGD_GLAYsOnR35(
			Layer_c[] targets) {
		return getManyGD_GLAYsOnR35(targets, null);
	}
	public static Graphicalelementinlayer_c[] getManyGD_GLAYsOnR35(
			Layer_c[] targets, boolean loadComponent) {
		return getManyGD_GLAYsOnR35(targets, null, loadComponent);
	}
	public static Graphicalelementinlayer_c[] getManyGD_GLAYsOnR35(
			Layer_c[] targets, ClassQueryInterface_c test) {
		return getManyGD_GLAYsOnR35(targets, test, true);
	}

	public static Graphicalelementinlayer_c[] getManyGD_GLAYsOnR35(
			Layer_c[] targets, ClassQueryInterface_c test, boolean loadComponent) {

		if (targets == null || targets.length == 0 || targets[0] == null)
			return new Graphicalelementinlayer_c[0];

		ModelRoot modelRoot = targets[0].getModelRoot();

		InstanceList instances = modelRoot
				.getInstanceList(Graphicalelementinlayer_c.class);

		Vector matches = new Vector();
		for (int i = 0; i < targets.length; i++) {
			synchronized (targets[i].backPointer_ContainsGraphicalelementinlayerContains_R35) {
				for (int j = 0; j < targets[i].backPointer_ContainsGraphicalelementinlayerContains_R35
						.size(); ++j) {
					Graphicalelementinlayer_c source = (Graphicalelementinlayer_c) targets[i].backPointer_ContainsGraphicalelementinlayerContains_R35
							.get(j);
					if (source != null
							&& (test == null || test.evaluate(source))) {
						matches.add(source);
					}
				}
			}
		}
		if (matches.size() > 0) {
			Graphicalelementinlayer_c[] ret_set = new Graphicalelementinlayer_c[matches
					.size()];
			matches.copyInto(ret_set);
			return ret_set;
		} else {
			return new Graphicalelementinlayer_c[0];
		}
	}

	public static Graphicalelementinlayer_c[] getManyGD_GLAYsOnR35(
			Layer_c target) {
		return getManyGD_GLAYsOnR35(target, null);
	}

	public static Graphicalelementinlayer_c[] getManyGD_GLAYsOnR35(
			Layer_c target, boolean loadComponent) {
		return getManyGD_GLAYsOnR35(target, null, loadComponent);
	}

	public static Graphicalelementinlayer_c[] getManyGD_GLAYsOnR35(
			Layer_c target, ClassQueryInterface_c test) {
		return getManyGD_GLAYsOnR35(target, test, true);
	}

	public static Graphicalelementinlayer_c[] getManyGD_GLAYsOnR35(
			Layer_c target, ClassQueryInterface_c test, boolean loadComponent) {
		if (target == null)
			return new Graphicalelementinlayer_c[0];

		ModelRoot modelRoot = target.getModelRoot();
		Vector matches = new Vector();
		synchronized (target.backPointer_ContainsGraphicalelementinlayerContains_R35) {
			for (int i = 0; i < target.backPointer_ContainsGraphicalelementinlayerContains_R35
					.size(); ++i) {
				Graphicalelementinlayer_c source = (Graphicalelementinlayer_c) target.backPointer_ContainsGraphicalelementinlayerContains_R35
						.get(i);
				if (source != null && (test == null || test.evaluate(source))) {

					matches.add(source);
				}
			}
		}

		if (matches.size() > 0) {
			Graphicalelementinlayer_c[] ret_set = new Graphicalelementinlayer_c[matches
					.size()];
			matches.copyInto(ret_set);
			return ret_set;
		} else {
			return new Graphicalelementinlayer_c[0];
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

		// R35
		Layer_c relInst22218 = (Layer_c) baseRoot
				.getInstanceList(Layer_c.class).get(new Object[]{m_layer_name});
		// if there was no local element, check for any global elements
		// failing that proceed to check other model roots
		if (relInst22218 == null) {
			relInst22218 = (Layer_c) Ooaofooa.getDefaultInstance()
					.getInstanceList(Layer_c.class)
					.get(new Object[]{m_layer_name});
		}
		//synchronized
		if (relInst22218 != null) {
			if (relateProxies || !isProxy()
					|| (inSameComponent(this, relInst22218) && !isProxy())) {
				relInst22218.relateAcrossR35To(this, notifyChanges);
			}
		}

		GraphicalElement_c relInst22219 = (GraphicalElement_c) baseRoot
				.getInstanceList(GraphicalElement_c.class).get(
						new Object[]{m_elementid});
		// if there was no local element, check for any global elements
		// failing that proceed to check other model roots
		if (relInst22219 == null) {
			relInst22219 = (GraphicalElement_c) Ooaofooa.getDefaultInstance()
					.getInstanceList(GraphicalElement_c.class)
					.get(new Object[]{m_elementid});
		}
		//synchronized
		if (relInst22219 != null) {
			if (relateProxies || !isProxy()
					|| (inSameComponent(this, relInst22219) && !isProxy())) {
				relInst22219.relateAcrossR35To(this, notifyChanges);
			}
		}

	}
	public void batchUnrelate(boolean notifyChanges) {
		NonRootModelElement inst = null;
		// R35
		// GD_LAY
		inst = ContainedInLayer;
		unrelateAcrossR35From(ContainedInLayer, notifyChanges);
		if (inst != null) {
			inst.removeRef();
		}
		// GD_GE
		inst = ContainsGraphicalElement;
		unrelateAcrossR35From(ContainsGraphicalElement, notifyChanges);
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
	InstanceList instances = modelRoot.getInstanceList(Graphicalelementinlayer_c.class);
    synchronized(instances) {
        Iterator<NonRootModelElement> cursor = instances.iterator() ;
    	while (cursor.hasNext())
	    {
            final Graphicalelementinlayer_c inst = (Graphicalelementinlayer_c)cursor.next() ;
	        inst.batchRelate(modelRoot, relateProxies, notifyChanges, searchAllRoots );
	    }
	}
  }
	public static void clearInstances(ModelRoot modelRoot) {
		InstanceList instances = modelRoot
				.getInstanceList(Graphicalelementinlayer_c.class);
		synchronized (instances) {
			for (int i = instances.size() - 1; i >= 0; i--) {
				((NonRootModelElement) instances.get(i)).delete_unchecked();
			}

		}
	}

	public static Graphicalelementinlayer_c GraphicalelementinlayerInstance(
			ModelRoot modelRoot, ClassQueryInterface_c test,
			boolean loadComponent) {
		Graphicalelementinlayer_c result = findGraphicalelementinlayerInstance(
				modelRoot, test, loadComponent);
		return result;
	}
	private static Graphicalelementinlayer_c findGraphicalelementinlayerInstance(
			ModelRoot modelRoot, ClassQueryInterface_c test,
			boolean loadComponent) {
		InstanceList instances = modelRoot
				.getInstanceList(Graphicalelementinlayer_c.class);
		synchronized (instances) {
			for (int i = 0; i < instances.size(); ++i) {
				Graphicalelementinlayer_c x = (Graphicalelementinlayer_c) instances
						.get(i);
				if (test == null || test.evaluate(x)) {
					return x;
				}
			}
		}
		return null;
	}
	public static Graphicalelementinlayer_c GraphicalelementinlayerInstance(
			ModelRoot modelRoot, ClassQueryInterface_c test) {
		return GraphicalelementinlayerInstance(modelRoot, test, true);
	}

	public static Graphicalelementinlayer_c GraphicalelementinlayerInstance(
			ModelRoot modelRoot) {
		return GraphicalelementinlayerInstance(modelRoot, null, true);
	}

	public static Graphicalelementinlayer_c[] GraphicalelementinlayerInstances(
			ModelRoot modelRoot, ClassQueryInterface_c test,
			boolean loadComponent) {
		InstanceList instances = modelRoot
				.getInstanceList(Graphicalelementinlayer_c.class);
		Vector matches = new Vector();
		synchronized (instances) {
			for (int i = 0; i < instances.size(); ++i) {
				Graphicalelementinlayer_c x = (Graphicalelementinlayer_c) instances
						.get(i);
				if (test == null || test.evaluate(x)) {
					matches.add(x);
				}
			}
			if (matches.size() > 0) {
				Graphicalelementinlayer_c[] ret_set = new Graphicalelementinlayer_c[matches
						.size()];
				matches.copyInto(ret_set);
				return ret_set;
			} else {
				return new Graphicalelementinlayer_c[0];
			}
		}
	}
	public static Graphicalelementinlayer_c[] GraphicalelementinlayerInstances(
			ModelRoot modelRoot, ClassQueryInterface_c test) {
		return GraphicalelementinlayerInstances(modelRoot, test, true);
	}
	public static Graphicalelementinlayer_c[] GraphicalelementinlayerInstances(
			ModelRoot modelRoot) {
		return GraphicalelementinlayerInstances(modelRoot, null, true);
	}

	public boolean delete() {
		boolean result = super.delete();
		boolean delete_error = false;
		String errorMsg = "The following relationships were not torn down by the GraphicalElementInLayer.dispose call: ";
		Layer_c testR35Inst = Layer_c.getOneGD_LAYOnR35(this, false);

		if (testR35Inst != null) {
			delete_error = true;
			errorMsg = errorMsg + "35 ";
		}

		GraphicalElement_c testR35InstOth = GraphicalElement_c
				.getOneGD_GEOnR35(this, false);

		if (testR35InstOth != null) {
			delete_error = true;
			errorMsg = errorMsg + "35 ";
		}
		if (delete_error == true) {

			if (CanvasPlugin.getDefault().isDebugging()) {
				Ooaofgraphics.log.println(ILogger.DELETE,
						"GraphicalElementInLayer", errorMsg);
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
		if (attributeName.equals("elementid")) {
			return true;
		}
		return false;
	}
	// declare attribute accessors
	public String getLayer_name() {
		if (ContainedInLayer != null) {
			return ContainedInLayer.getLayer_name();
		}
		return "";
	}

	public String getLayer_nameCachedValue() {
		if (!m_layer_name.equals(""))
			return m_layer_name;
		else
			return getLayer_name();
	}

	public void setLayer_name(String newValue) {
		if (newValue != null) {
			if (newValue.equals(m_layer_name)) {
				return;
			}
		} else if (m_layer_name != null) {
			if (m_layer_name.equals(newValue)) {
				return;
			}
		} else {
			return;
		}
		AttributeChangeModelDelta change = new AttributeChangeModelDelta(
				Modeleventnotification_c.DELTA_ATTRIBUTE_CHANGE, this,
				"Layer_name", m_layer_name, newValue, true);
		m_layer_name = newValue;
		Ooaofgraphics.getDefaultInstance().fireModelElementAttributeChanged(
				change);
	}
	public long getElementidLongBased() {
		if (ContainsGraphicalElement != null) {
			return ContainsGraphicalElement.getElementidLongBased();
		}
		return 0;
	}
	public java.util.UUID getElementid() {
		if (ContainsGraphicalElement != null) {
			return ContainsGraphicalElement.getElementid();
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
				.println(ILogger.OPERATION, "GraphicalElementInLayer", //$NON-NLS-1$
						" Operation entered: GraphicalElementInLayer::checkClassConsistency"); //$NON-NLS-1$
		if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == false) { //$NON-NLS-1$
			return;
		}
		Graphicalelementinlayer_c[] objs = Graphicalelementinlayer_c
				.GraphicalelementinlayerInstances(modelRoot, null, false);

		for (int i = 0; i < objs.length; i++) {
			objs[i].checkConsistency();
		}
	}
	public boolean checkConsistency() {
		Ooaofooa.log
				.println(ILogger.OPERATION, "GraphicalElementInLayer", //$NON-NLS-1$
						" Operation entered: GraphicalElementInLayer::checkConsistency"); //$NON-NLS-1$
		if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == false) { //$NON-NLS-1$
			return true;
		}
		ModelRoot modelRoot = getModelRoot();
		boolean retval = true;
		class Graphicalelementinlayer_c_test22221_c
				implements
					ClassQueryInterface_c {
			Graphicalelementinlayer_c_test22221_c(String p22222,
					java.util.UUID p22223) {
				m_p22222 = p22222;
				m_p22223 = p22223;
			}
			private String m_p22222;
			private java.util.UUID m_p22223;
			public boolean evaluate(Object candidate) {
				Graphicalelementinlayer_c selected = (Graphicalelementinlayer_c) candidate;
				boolean retval = false;
				retval = (selected.getLayer_name().equals(m_p22222))
						& (selected.getElementid().equals(m_p22223));
				return retval;
			}
		}

		Graphicalelementinlayer_c[] objs22220 = Graphicalelementinlayer_c
				.GraphicalelementinlayerInstances(modelRoot,
						new Graphicalelementinlayer_c_test22221_c(
								getLayer_name(), getElementid()));

		if (((objs22220.length) == 0)) {

			if (CanvasPlugin.getDefault().isDebugging()) {
				Ooaofgraphics.log
						.println(
								ILogger.CONSISTENCY,
								"GraphicalElementInLayer", //$NON-NLS-1$
								"Consistency: Object: GraphicalElementInLayer: Cardinality of an identifier is zero. " //$NON-NLS-1$
										+ "Actual Value: " + Integer.toString(objs22220.length)); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CanvasPlugin
						.logError(
								"Consistency: Object: GraphicalElementInLayer: Cardinality of an identifier is zero. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs22220.length), e);
			}
			retval = false;

		}

		if (((objs22220.length) > 1)) {

			if (CanvasPlugin.getDefault().isDebugging()) {
				Ooaofgraphics.log
						.println(
								ILogger.CONSISTENCY,
								"GraphicalElementInLayer", //$NON-NLS-1$
								"Consistency: Object: GraphicalElementInLayer: Cardinality of an identifier is greater than 1. " //$NON-NLS-1$
										+ "Actual Value: " //$NON-NLS-1$ 
										+ Integer.toString(objs22220.length)
										+ " Layer_Name: " + getLayer_name() + " elementId: " + "Not Printable"); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CanvasPlugin
						.logError(
								"Consistency: Object: GraphicalElementInLayer: Cardinality of an identifier is greater than 1. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs22220.length)
										+ " Layer_Name: " + getLayer_name() + " elementId: " + "Not Printable", e); //$NON-NLS-1$
			}
			retval = false;

		}

		// GraphicalElementInLayer is a link class in association: rel.Numb = 35
		// The one side class in the association is: Layer
		class Layer_c_test22227_c implements ClassQueryInterface_c {
			Layer_c_test22227_c(String p22228) {
				m_p22228 = p22228;
			}
			private String m_p22228;
			public boolean evaluate(Object candidate) {
				Layer_c selected = (Layer_c) candidate;
				boolean retval = false;
				retval = (selected.getLayer_name().equals(m_p22228));
				return retval;
			}
		}

		Layer_c[] objs22226 = Layer_c.LayerInstances(modelRoot,
				new Layer_c_test22227_c(getLayer_name()));

		// The one side class is unconditional
		if (((objs22226.length) == 0)) {

			if (CanvasPlugin.getDefault().isDebugging()) {
				Ooaofgraphics.log
						.println(
								ILogger.CONSISTENCY,
								"GraphicalElementInLayer", //$NON-NLS-1$
								"Consistency: Object: GraphicalElementInLayer: Association: 35: Cardinality of unconditional one side of link is equal to zero. " //$NON-NLS-1$
										+ "Actual Value: " + Integer.toString(objs22226.length)); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CanvasPlugin
						.logError(
								"Consistency: Object: GraphicalElementInLayer: Association: 35: Cardinality of unconditional one side of link is equal to zero. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs22226.length), e);
			}
			retval = false;

		}

		// Other side
		return retval;
	}

	// declare transform functions
	public String Get_name() {
		Ooaofgraphics.log.println(ILogger.OPERATION, "GraphicalElementInLayer",
				" Operation entered: Graphicalelementinlayer::Get_name");
		final ModelRoot modelRoot = getModelRoot();
		GraphicalElement_c v_ge = GraphicalElement_c.getOneGD_GEOnR35(this);

		Shape_c v_shape = Shape_c.getOneGD_SHPOnR2(v_ge);

		Connector_c v_con = Connector_c.getOneGD_CONOnR2(v_ge);

		if (((v_shape != null))) {

			return "Shape In Layer : " + v_ge.getRepresents_path();

		}

		if (((v_con != null))) {

			return "Connector In Layer : " + v_ge.getRepresents_path();

		}

		return "";

	} // End get_name

	// end transform functions

	public Object getAdapter(Class adapter) {
		Object superAdapter = super.getAdapter(adapter);
		if (superAdapter != null) {
			return superAdapter;
		}
		return null;
	}
} // end GraphicalElementInLayer
