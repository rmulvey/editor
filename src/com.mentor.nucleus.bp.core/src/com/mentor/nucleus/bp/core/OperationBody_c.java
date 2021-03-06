package com.mentor.nucleus.bp.core;
//====================================================================
//
// File:      com.mentor.nucleus.bp.core.OperationBody_c.java
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
abstract class EV_OPERATION_BODY extends genericEvent_c {
	public abstract int getEvtcode();
}

public class OperationBody_c extends NonRootModelElement
		implements
			IAdaptable,
			Cloneable {
	// Public Constructors
	public OperationBody_c(ModelRoot modelRoot, java.util.UUID p_m_action_id,
			java.util.UUID p_m_tfr_id) {
		super(modelRoot);
		//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
		m_action_id = IdAssigner.preprocessUUID(p_m_action_id);
		//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
		m_tfr_id = IdAssigner.preprocessUUID(p_m_tfr_id);

		Object[] key = {m_action_id};
		addInstanceToMap(key);
	}
	static public OperationBody_c createProxy(ModelRoot modelRoot,
			java.util.UUID p_m_action_id, java.util.UUID p_m_tfr_id,
			String p_contentPath, IPath p_localPath) {
		ModelRoot resolvedModelRoot = ModelRoot.findModelRoot(modelRoot,
				p_contentPath, p_localPath);
		// if a model root was not resolved it is most likely
		// due to a missing file of the proxy, defualt back to
		// the original model root
		if (resolvedModelRoot != null)
			modelRoot = resolvedModelRoot;
		InstanceList instances = modelRoot
				.getInstanceList(OperationBody_c.class);
		OperationBody_c new_inst = null;
		synchronized (instances) {
			Object[] key = {p_m_action_id};
			new_inst = (OperationBody_c) instances.get(key);
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
				new_inst.m_action_id = IdAssigner.preprocessUUID(p_m_action_id);
				//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
				new_inst.m_tfr_id = IdAssigner.preprocessUUID(p_m_tfr_id);

			}
		}
		if (new_inst == null) {
			// there is no instance matching the id, create a proxy
			// if the resource doesn't exist then this will be a dangling reference
			new_inst = new OperationBody_c(modelRoot, p_m_action_id, p_m_tfr_id);
			new_inst.m_contentPath = contentPath;
		}
		return new_inst;
	}

	static public OperationBody_c resolveInstance(ModelRoot modelRoot,
			java.util.UUID p_m_action_id, java.util.UUID p_m_tfr_id) {
		InstanceList instances = modelRoot
				.getInstanceList(OperationBody_c.class);
		OperationBody_c source = null;
		synchronized (instances) {
			Object[] key = {p_m_action_id};
			source = (OperationBody_c) instances.get(key);
			if (source != null && !modelRoot.isCompareRoot()) {
				source.convertFromProxy();
				source.batchUnrelate();
				//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
				source.m_action_id = IdAssigner.preprocessUUID(p_m_action_id);
				//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
				source.m_tfr_id = IdAssigner.preprocessUUID(p_m_tfr_id);

				return source;
			}
		}
		// there is no instance matching the id
		OperationBody_c new_inst = new OperationBody_c(modelRoot,
				p_m_action_id, p_m_tfr_id);
		return new_inst;
	}
	public OperationBody_c(ModelRoot modelRoot) {
		super(modelRoot);
		m_action_id = IdAssigner.NULL_UUID;
		m_tfr_id = IdAssigner.NULL_UUID;
		Object[] key = {m_action_id};
		addInstanceToMap(key);
	}

	public Object getInstanceKey() {
		Object[] key = {m_action_id};
		return key;
	}

	public boolean setInstanceKey(UUID p_newKey) {

		boolean changed = false;
		// round p1
		// round p2
		// round p3
		// round p4
		// round p5
		if (m_action_id != p_newKey) {

			m_action_id = p_newKey;
			changed = true;
		}
		return changed;
	}

	public boolean equals(Object elem) {
		if (!(elem instanceof OperationBody_c)) {
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
		if (!(elem instanceof OperationBody_c)) {
			return false;
		}

		OperationBody_c me = (OperationBody_c) elem;
		// don't allow an empty id-value to produce a false positive result;
		// in this case, use whether the two instances are actually the same 
		// one in memory, instead
		if (!getModelRoot().isCompareRoot()
				&& ((IdAssigner.NULL_UUID.equals(getAction_id()) || IdAssigner.NULL_UUID
						.equals(((OperationBody_c) elem).getAction_id())) && this != elem)) {
			return false;
		}
		if (!getAction_id().equals(((OperationBody_c) elem).getAction_id()))
			return false;
		return true;
	}

	public boolean cachedIdentityEquals(Object elem) {
		if (!(elem instanceof OperationBody_c)) {
			return false;
		}

		OperationBody_c me = (OperationBody_c) elem;
		if (!getAction_idCachedValue().equals(
				((OperationBody_c) elem).getAction_idCachedValue()))
			return false;
		return true;
	}

	// Attributes
	private java.util.UUID m_action_id;
	private java.util.UUID m_tfr_id;

	// declare association references from this class

	// referring navigation

	Body_c IsSupertypeBody;
	public void relateAcrossR698To(Body_c target) {
		relateAcrossR698To(target, true);
	}
	public void relateAcrossR698To(Body_c target, boolean notifyChanges) {
		if (target == null)
			return;

		if (target == IsSupertypeBody)
			return; // already related

		if (IsSupertypeBody != target) {

			Object oldKey = getInstanceKey();

			if (IsSupertypeBody != null) {

				IsSupertypeBody.clearBackPointerR698To(this);

				if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == true) { //$NON-NLS-1$
					Ooaofooa.log
							.println(
									ILogger.CONSISTENCY,
									"OperationBody_c.relateAcrossR698To(Body_c target)",
									"Relate performed across R698 from Operation Body to Body without unrelate of prior instance.");
				}
			}

			IsSupertypeBody = target;
			m_action_id = target.getAction_id();
			updateInstanceKey(oldKey, getInstanceKey());
			target.setBackPointerR698To(this);
			target.addRef();
		}
	}
	public void unrelateAcrossR698From(Body_c target) {
		unrelateAcrossR698From(target, true);
	}
	public void unrelateAcrossR698From(Body_c target, boolean notifyChanges) {
		if (target == null)
			return;

		if (IsSupertypeBody == null)
			return; // already unrelated

		if (target != IsSupertypeBody) {
			Exception e = new Exception();
			e.fillInStackTrace();
			CorePlugin.logError(
					"Tried to unrelate from non-related instance across R698",
					e);
			return;
		}

		if (target != null) {
			target.clearBackPointerR698To(this);
		}

		if (IsSupertypeBody != null) {

			m_action_id = IsSupertypeBody.getAction_id();
			IsSupertypeBody = null;
			target.removeRef();
		}
	}

	public static OperationBody_c getOneACT_OPBOnR698(Body_c[] targets) {
		return getOneACT_OPBOnR698(targets, null);
	}

	public static OperationBody_c getOneACT_OPBOnR698(Body_c[] targets,
			ClassQueryInterface_c test) {
		OperationBody_c ret_val = null;
		if (targets != null) {
			for (int i = 0; i < targets.length && ret_val == null; ++i) {
				ret_val = getOneACT_OPBOnR698(targets[i], test);
			}
		}

		return ret_val;
	}

	public static OperationBody_c getOneACT_OPBOnR698(Body_c target) {
		return getOneACT_OPBOnR698(target, null);
	}

	public static OperationBody_c getOneACT_OPBOnR698(Body_c target,
			boolean loadComponent) {
		return getOneACT_OPBOnR698(target.getModelRoot(), target, null,
				loadComponent);
	}

	public static OperationBody_c getOneACT_OPBOnR698(Body_c target,
			ClassQueryInterface_c test) {
		if (target != null) {
			return getOneACT_OPBOnR698(target.getModelRoot(), target, test);
		}
		return null;
	}

	public static OperationBody_c getOneACT_OPBOnR698(ModelRoot modelRoot,
			Body_c target, ClassQueryInterface_c test) {
		return getOneACT_OPBOnR698(modelRoot, target, test, true);
	}

	public static OperationBody_c getOneACT_OPBOnR698(ModelRoot modelRoot,
			Body_c target, ClassQueryInterface_c test, boolean loadComponent) {
		return find_getOneACT_OPBOnR698(modelRoot, target, test);
	}
	private static OperationBody_c find_getOneACT_OPBOnR698(
			ModelRoot modelRoot, Body_c target, ClassQueryInterface_c test) {
		if (target != null) {
			OperationBody_c source = (OperationBody_c) target.backPointer_IsSubtypeOperationBodyIsSubtype_R698;
			if (source != null && (test == null || test.evaluate(source))) {
				return source;
			}
		}
		// not found
		return null;
	}

	public static OperationBody_c[] getManyACT_OPBsOnR698(Body_c[] targets) {
		return getManyACT_OPBsOnR698(targets, null);
	}
	public static OperationBody_c[] getManyACT_OPBsOnR698(Body_c[] targets,
			boolean loadComponent) {
		return getManyACT_OPBsOnR698(targets, null, loadComponent);
	}
	public static OperationBody_c[] getManyACT_OPBsOnR698(Body_c[] targets,
			ClassQueryInterface_c test) {
		return getManyACT_OPBsOnR698(targets, test, true);
	}

	public static OperationBody_c[] getManyACT_OPBsOnR698(Body_c[] targets,
			ClassQueryInterface_c test, boolean loadComponent) {

		if (targets == null || targets.length == 0 || targets[0] == null)
			return new OperationBody_c[0];

		ModelRoot modelRoot = targets[0].getModelRoot();

		InstanceList instances = modelRoot
				.getInstanceList(OperationBody_c.class);

		Vector matches = new Vector();
		for (int i = 0; i < targets.length; i++) {
			OperationBody_c source = (OperationBody_c) targets[i].backPointer_IsSubtypeOperationBodyIsSubtype_R698;
			if (source != null && (test == null || test.evaluate(source))) {
				matches.add(source);
			}
		}
		if (matches.size() > 0) {
			OperationBody_c[] ret_set = new OperationBody_c[matches.size()];
			matches.copyInto(ret_set);
			return ret_set;
		} else {
			return new OperationBody_c[0];
		}
	}

	public static OperationBody_c[] getManyACT_OPBsOnR698(Body_c target) {
		if (target != null) {
			Body_c[] targetArray = new Body_c[1];
			targetArray[0] = target;
			return getManyACT_OPBsOnR698(targetArray);
		} else {
			OperationBody_c[] result = new OperationBody_c[0];
			return result;
		}
	}

	public static OperationBody_c[] getManyACT_OPBsOnR698(Body_c target,
			boolean loadComponent) {
		if (target != null) {
			Body_c[] targetArray = new Body_c[1];
			targetArray[0] = target;
			return getManyACT_OPBsOnR698(targetArray, loadComponent);
		} else {
			OperationBody_c[] result = new OperationBody_c[0];
			return result;
		}
	}

	// referring navigation

	Operation_c SpecifiesProcessingForOperation;
	public void relateAcrossR696To(Operation_c target) {
		relateAcrossR696To(target, true);
	}
	public void relateAcrossR696To(Operation_c target, boolean notifyChanges) {
		if (target == null)
			return;

		if (target == SpecifiesProcessingForOperation)
			return; // already related

		if (SpecifiesProcessingForOperation != target) {

			Object oldKey = getInstanceKey();

			if (SpecifiesProcessingForOperation != null) {

				SpecifiesProcessingForOperation.clearBackPointerR696To(this);

				if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == true) { //$NON-NLS-1$
					Ooaofooa.log
							.println(
									ILogger.CONSISTENCY,
									"OperationBody_c.relateAcrossR696To(Operation_c target)",
									"Relate performed across R696 from Operation Body to Operation without unrelate of prior instance.");
				}
			}

			SpecifiesProcessingForOperation = target;
			m_tfr_id = target.getTfr_id();
			updateInstanceKey(oldKey, getInstanceKey());
			target.setBackPointerR696To(this);
			target.addRef();
		}
	}
	public void unrelateAcrossR696From(Operation_c target) {
		unrelateAcrossR696From(target, true);
	}
	public void unrelateAcrossR696From(Operation_c target, boolean notifyChanges) {
		if (target == null)
			return;

		if (SpecifiesProcessingForOperation == null)
			return; // already unrelated

		if (target != SpecifiesProcessingForOperation) {
			Exception e = new Exception();
			e.fillInStackTrace();
			CorePlugin.logError(
					"Tried to unrelate from non-related instance across R696",
					e);
			return;
		}

		if (target != null) {
			target.clearBackPointerR696To(this);
		}

		if (SpecifiesProcessingForOperation != null) {

			m_tfr_id = SpecifiesProcessingForOperation.getTfr_id();
			SpecifiesProcessingForOperation = null;
			target.removeRef();
		}
	}

	public static OperationBody_c getOneACT_OPBOnR696(Operation_c[] targets) {
		return getOneACT_OPBOnR696(targets, null);
	}

	public static OperationBody_c getOneACT_OPBOnR696(Operation_c[] targets,
			ClassQueryInterface_c test) {
		OperationBody_c ret_val = null;
		if (targets != null) {
			for (int i = 0; i < targets.length && ret_val == null; ++i) {
				ret_val = getOneACT_OPBOnR696(targets[i], test);
			}
		}

		return ret_val;
	}

	public static OperationBody_c getOneACT_OPBOnR696(Operation_c target) {
		return getOneACT_OPBOnR696(target, null);
	}

	public static OperationBody_c getOneACT_OPBOnR696(Operation_c target,
			boolean loadComponent) {
		return getOneACT_OPBOnR696(target.getModelRoot(), target, null,
				loadComponent);
	}

	public static OperationBody_c getOneACT_OPBOnR696(Operation_c target,
			ClassQueryInterface_c test) {
		if (target != null) {
			return getOneACT_OPBOnR696(target.getModelRoot(), target, test);
		}
		return null;
	}

	public static OperationBody_c getOneACT_OPBOnR696(ModelRoot modelRoot,
			Operation_c target, ClassQueryInterface_c test) {
		return getOneACT_OPBOnR696(modelRoot, target, test, true);
	}

	public static OperationBody_c getOneACT_OPBOnR696(ModelRoot modelRoot,
			Operation_c target, ClassQueryInterface_c test,
			boolean loadComponent) {
		return find_getOneACT_OPBOnR696(modelRoot, target, test);
	}
	private static OperationBody_c find_getOneACT_OPBOnR696(
			ModelRoot modelRoot, Operation_c target, ClassQueryInterface_c test) {
		if (target != null) {
			OperationBody_c source = (OperationBody_c) target.backPointer_OperationBody_R696;
			if (source != null && (test == null || test.evaluate(source))) {
				return source;
			}
		}
		// not found
		return null;
	}

	public static OperationBody_c[] getManyACT_OPBsOnR696(Operation_c[] targets) {
		return getManyACT_OPBsOnR696(targets, null);
	}
	public static OperationBody_c[] getManyACT_OPBsOnR696(
			Operation_c[] targets, boolean loadComponent) {
		return getManyACT_OPBsOnR696(targets, null, loadComponent);
	}
	public static OperationBody_c[] getManyACT_OPBsOnR696(
			Operation_c[] targets, ClassQueryInterface_c test) {
		return getManyACT_OPBsOnR696(targets, test, true);
	}

	public static OperationBody_c[] getManyACT_OPBsOnR696(
			Operation_c[] targets, ClassQueryInterface_c test,
			boolean loadComponent) {

		if (targets == null || targets.length == 0 || targets[0] == null)
			return new OperationBody_c[0];

		ModelRoot modelRoot = targets[0].getModelRoot();

		InstanceList instances = modelRoot
				.getInstanceList(OperationBody_c.class);

		Vector matches = new Vector();
		for (int i = 0; i < targets.length; i++) {
			OperationBody_c source = (OperationBody_c) targets[i].backPointer_OperationBody_R696;
			if (source != null && (test == null || test.evaluate(source))) {
				matches.add(source);
			}
		}
		if (matches.size() > 0) {
			OperationBody_c[] ret_set = new OperationBody_c[matches.size()];
			matches.copyInto(ret_set);
			return ret_set;
		} else {
			return new OperationBody_c[0];
		}
	}

	public static OperationBody_c[] getManyACT_OPBsOnR696(Operation_c target) {
		if (target != null) {
			Operation_c[] targetArray = new Operation_c[1];
			targetArray[0] = target;
			return getManyACT_OPBsOnR696(targetArray);
		} else {
			OperationBody_c[] result = new OperationBody_c[0];
			return result;
		}
	}

	public static OperationBody_c[] getManyACT_OPBsOnR696(Operation_c target,
			boolean loadComponent) {
		if (target != null) {
			Operation_c[] targetArray = new Operation_c[1];
			targetArray[0] = target;
			return getManyACT_OPBsOnR696(targetArray, loadComponent);
		} else {
			OperationBody_c[] result = new OperationBody_c[0];
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

		// R698
		Body_c relInst57823 = (Body_c) baseRoot.getInstanceList(Body_c.class)
				.get(new Object[]{m_action_id});
		// if there was no local element, check for any global elements
		// failing that proceed to check other model roots
		if (relInst57823 == null) {
			relInst57823 = (Body_c) Ooaofooa.getDefaultInstance()
					.getInstanceList(Body_c.class)
					.get(new Object[]{m_action_id});
		}
		if (relInst57823 == null && searchAllRoots && !baseRoot.isCompareRoot()) {
			Ooaofooa[] roots = Ooaofooa.getInstances();
			for (int i = 0; i < roots.length; i++) {
				if (roots[i].isCompareRoot()) {
					// never use elements from any compare root
					continue;
				}
				relInst57823 = (Body_c) roots[i].getInstanceList(Body_c.class)
						.get(new Object[]{m_action_id});
				if (relInst57823 != null)
					break;
			}
		}
		//synchronized
		if (relInst57823 != null) {
			if (relateProxies || !isProxy()
					|| (inSameComponent(this, relInst57823) && !isProxy())) {
				relInst57823.relateAcrossR698To(this, notifyChanges);
			}
		}

		if (SpecifiesProcessingForOperation == null) {
			// R696
			Operation_c relInst57824 = (Operation_c) baseRoot.getInstanceList(
					Operation_c.class).get(new Object[]{m_tfr_id});
			// if there was no local element, check for any global elements
			// failing that proceed to check other model roots
			if (relInst57824 == null) {
				relInst57824 = (Operation_c) Ooaofooa.getDefaultInstance()
						.getInstanceList(Operation_c.class)
						.get(new Object[]{m_tfr_id});
			}
			if (relInst57824 == null && searchAllRoots
					&& !baseRoot.isCompareRoot()) {
				Ooaofooa[] roots = Ooaofooa.getInstances();
				for (int i = 0; i < roots.length; i++) {
					if (roots[i].isCompareRoot()) {
						// never use elements from any compare root
						continue;
					}
					relInst57824 = (Operation_c) roots[i].getInstanceList(
							Operation_c.class).get(new Object[]{m_tfr_id});
					if (relInst57824 != null)
						break;
				}
			}
			//synchronized
			if (relInst57824 != null) {
				if (relateProxies || !isProxy()
						|| (inSameComponent(this, relInst57824) && !isProxy())) {
					relInst57824.relateAcrossR696To(this, notifyChanges);
				}
			}
		}

	}
	public void batchUnrelate(boolean notifyChanges) {
		NonRootModelElement inst = null;
		// R698
		// ACT_ACT
		inst = IsSupertypeBody;
		unrelateAcrossR698From(IsSupertypeBody, notifyChanges);
		if (inst != null) {
			inst.removeRef();
		}
		// R696
		// O_TFR
		inst = SpecifiesProcessingForOperation;
		unrelateAcrossR696From(SpecifiesProcessingForOperation, notifyChanges);
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
	InstanceList instances = modelRoot.getInstanceList(OperationBody_c.class);
    synchronized(instances) {
        Iterator<NonRootModelElement> cursor = instances.iterator() ;
    	while (cursor.hasNext())
	    {
            final OperationBody_c inst = (OperationBody_c)cursor.next() ;
	        inst.batchRelate(modelRoot, relateProxies, notifyChanges, searchAllRoots );
	    }
	}
  }
	public static void clearInstances(ModelRoot modelRoot) {
		InstanceList instances = modelRoot
				.getInstanceList(OperationBody_c.class);
		synchronized (instances) {
			for (int i = instances.size() - 1; i >= 0; i--) {
				((NonRootModelElement) instances.get(i)).delete_unchecked();
			}

		}
	}

	public static OperationBody_c OperationBodyInstance(ModelRoot modelRoot,
			ClassQueryInterface_c test, boolean loadComponent) {
		OperationBody_c result = findOperationBodyInstance(modelRoot, test,
				loadComponent);
		return result;
	}
	private static OperationBody_c findOperationBodyInstance(
			ModelRoot modelRoot, ClassQueryInterface_c test,
			boolean loadComponent) {
		InstanceList instances = modelRoot
				.getInstanceList(OperationBody_c.class);
		synchronized (instances) {
			for (int i = 0; i < instances.size(); ++i) {
				OperationBody_c x = (OperationBody_c) instances.get(i);
				if (test == null || test.evaluate(x)) {
					return x;
				}
			}
		}
		return null;
	}
	public static OperationBody_c OperationBodyInstance(ModelRoot modelRoot,
			ClassQueryInterface_c test) {
		return OperationBodyInstance(modelRoot, test, true);
	}

	public static OperationBody_c OperationBodyInstance(ModelRoot modelRoot) {
		return OperationBodyInstance(modelRoot, null, true);
	}

	public static OperationBody_c[] OperationBodyInstances(ModelRoot modelRoot,
			ClassQueryInterface_c test, boolean loadComponent) {
		InstanceList instances = modelRoot
				.getInstanceList(OperationBody_c.class);
		Vector matches = new Vector();
		synchronized (instances) {
			for (int i = 0; i < instances.size(); ++i) {
				OperationBody_c x = (OperationBody_c) instances.get(i);
				if (test == null || test.evaluate(x)) {
					matches.add(x);
				}
			}
			if (matches.size() > 0) {
				OperationBody_c[] ret_set = new OperationBody_c[matches.size()];
				matches.copyInto(ret_set);
				return ret_set;
			} else {
				return new OperationBody_c[0];
			}
		}
	}
	public static OperationBody_c[] OperationBodyInstances(ModelRoot modelRoot,
			ClassQueryInterface_c test) {
		return OperationBodyInstances(modelRoot, test, true);
	}
	public static OperationBody_c[] OperationBodyInstances(ModelRoot modelRoot) {
		return OperationBodyInstances(modelRoot, null, true);
	}

	public boolean delete() {
		boolean result = super.delete();
		boolean delete_error = false;
		String errorMsg = "The following relationships were not torn down by the Operation Body.dispose call: ";
		Body_c testR698Inst5 = Body_c.getOneACT_ACTOnR698(this, false);

		if (testR698Inst5 != null) {
			delete_error = true;
			errorMsg = errorMsg + "698 ";
		}
		Operation_c testR696Inst = Operation_c.getOneO_TFROnR696(this, false);

		if (testR696Inst != null) {
			delete_error = true;
			errorMsg = errorMsg + "696 ";
		}
		if (delete_error == true) {

			if (CorePlugin.getDefault().isDebugging()) {
				Ooaofooa.log
						.println(ILogger.DELETE, "Operation Body", errorMsg);
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
		if (attributeName.equals("action_id")) {
			return true;
		}
		if (attributeName.equals("tfr_id")) {
			return true;
		}
		return false;
	}
	// declare attribute accessors
	public long getAction_idLongBased() {
		if (IsSupertypeBody != null) {
			return IsSupertypeBody.getAction_idLongBased();
		}
		return 0;
	}
	public java.util.UUID getAction_id() {
		if (IsSupertypeBody != null) {
			return IsSupertypeBody.getAction_id();
		}
		return IdAssigner.NULL_UUID;
	}

	public boolean hasSuperType() {
		return (IsSupertypeBody != null);

	}

	public java.util.UUID getAction_idCachedValue() {
		if (!IdAssigner.NULL_UUID.equals(m_action_id))
			return m_action_id;
		else
			return getAction_id();
	}

	public void setAction_id(java.util.UUID newValue) {
		m_action_id = IdAssigner.preprocessUUID(newValue);
	}
	public long getTfr_idLongBased() {
		if (SpecifiesProcessingForOperation != null) {
			return SpecifiesProcessingForOperation.getTfr_idLongBased();
		}
		return 0;
	}
	public java.util.UUID getTfr_id() {
		if (SpecifiesProcessingForOperation != null) {
			return SpecifiesProcessingForOperation.getTfr_id();
		}
		return IdAssigner.NULL_UUID;
	}

	public java.util.UUID getTfr_idCachedValue() {
		if (!IdAssigner.NULL_UUID.equals(m_tfr_id))
			return m_tfr_id;
		else
			return getTfr_id();
	}

	public void setTfr_id(java.util.UUID newValue) {
		m_tfr_id = IdAssigner.preprocessUUID(newValue);
	}
	// end declare accessors
	public static void checkClassConsistency(ModelRoot modelRoot) {
		Ooaofooa.log.println(ILogger.OPERATION, "Operation Body", //$NON-NLS-1$
				" Operation entered: Operation Body::checkClassConsistency"); //$NON-NLS-1$
		if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == false) { //$NON-NLS-1$
			return;
		}
		OperationBody_c[] objs = OperationBody_c.OperationBodyInstances(
				modelRoot, null, false);

		for (int i = 0; i < objs.length; i++) {
			objs[i].checkConsistency();
		}
	}
	public boolean checkConsistency() {
		Ooaofooa.log.println(ILogger.OPERATION, "Operation Body", //$NON-NLS-1$
				" Operation entered: Operation Body::checkConsistency"); //$NON-NLS-1$
		if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == false) { //$NON-NLS-1$
			return true;
		}
		ModelRoot modelRoot = getModelRoot();
		boolean retval = true;
		class OperationBody_c_test57826_c implements ClassQueryInterface_c {
			OperationBody_c_test57826_c(java.util.UUID p57827) {
				m_p57827 = p57827;
			}
			private java.util.UUID m_p57827;
			public boolean evaluate(Object candidate) {
				OperationBody_c selected = (OperationBody_c) candidate;
				boolean retval = false;
				retval = (selected.getAction_id().equals(m_p57827));
				return retval;
			}
		}

		OperationBody_c[] objs57825 = OperationBody_c.OperationBodyInstances(
				modelRoot, new OperationBody_c_test57826_c(getAction_id()));

		if (((objs57825.length) == 0)) {

			if (CorePlugin.getDefault().isDebugging()) {
				Ooaofooa.log
						.println(ILogger.CONSISTENCY,
								"Operation Body", //$NON-NLS-1$
								"Consistency: Object: Operation Body: Cardinality of an identifier is zero. " //$NON-NLS-1$
										+ "Actual Value: " + Integer.toString(objs57825.length)); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CorePlugin.logError(
						"Consistency: Object: Operation Body: Cardinality of an identifier is zero. " //$NON-NLS-1$ 
								+ "Actual Value: " //$NON-NLS-1$
								+ Integer.toString(objs57825.length), e);
			}
			retval = false;

		}

		if (((objs57825.length) > 1)) {

			if (CorePlugin.getDefault().isDebugging()) {
				Ooaofooa.log
						.println(ILogger.CONSISTENCY,
								"Operation Body", //$NON-NLS-1$
								"Consistency: Object: Operation Body: Cardinality of an identifier is greater than 1. " //$NON-NLS-1$
										+ "Actual Value: " //$NON-NLS-1$ 
										+ Integer.toString(objs57825.length)
										+ " Action_ID: " + "Not Printable"); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CorePlugin
						.logError(
								"Consistency: Object: Operation Body: Cardinality of an identifier is greater than 1. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs57825.length)
										+ " Action_ID: " + "Not Printable", e); //$NON-NLS-1$
			}
			retval = false;

		}

		// Operation Body is a subtype in association: rel.Numb = 698
		// The supertype class is: Body
		class Body_c_test57831_c implements ClassQueryInterface_c {
			Body_c_test57831_c(java.util.UUID p57832) {
				m_p57832 = p57832;
			}
			private java.util.UUID m_p57832;
			public boolean evaluate(Object candidate) {
				Body_c selected = (Body_c) candidate;
				boolean retval = false;
				retval = (selected.getAction_id().equals(m_p57832));
				return retval;
			}
		}

		Body_c[] objs57830 = Body_c.BodyInstances(modelRoot,
				new Body_c_test57831_c(getAction_id()));

		if (((objs57830.length) != 1)) {

			if (CorePlugin.getDefault().isDebugging()) {
				Ooaofooa.log
						.println(ILogger.CONSISTENCY,
								"Operation Body", //$NON-NLS-1$
								"Consistency: Object: Operation Body: Association: 698: Cardinality of a supertype is not equal to 1. " //$NON-NLS-1$
										+ "Actual Value: " + Integer.toString(objs57830.length)); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CorePlugin
						.logError(
								"Consistency: Object: Operation Body: Association: 698: Cardinality of a supertype is not equal to 1. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs57830.length), e);
			}
			retval = false;

		}

		// Operation Body is a referring class in association: rel.Numb = 696
		// The participating class is: Operation
		class Operation_c_test57834_c implements ClassQueryInterface_c {
			Operation_c_test57834_c(java.util.UUID p57835) {
				m_p57835 = p57835;
			}
			private java.util.UUID m_p57835;
			public boolean evaluate(Object candidate) {
				Operation_c selected = (Operation_c) candidate;
				boolean retval = false;
				retval = (selected.getTfr_id().equals(m_p57835));
				return retval;
			}
		}

		Operation_c[] objs57833 = Operation_c.OperationInstances(modelRoot,
				new Operation_c_test57834_c(getTfr_id()));

		// The participant is unconditional
		// The multiplicity of the participant is one
		if (((objs57833.length) != 1)) {

			if (CorePlugin.getDefault().isDebugging()) {
				Ooaofooa.log
						.println(ILogger.CONSISTENCY,
								"Operation Body", //$NON-NLS-1$
								"Consistency: Object: Operation Body: Association: 696: Cardinality of a participant is not equal to 1. " //$NON-NLS-1$
										+ "Actual Value: " //$NON-NLS-1$ 
										+ Integer.toString(objs57833.length)
										+ " Tfr_ID: " + "Not Printable"); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CorePlugin
						.logError(
								"Consistency: Object: Operation Body: Association: 696: Cardinality of a participant is not equal to 1. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs57833.length)
										+ " Tfr_ID: " + "Not Printable", e); //$NON-NLS-1$
			}
			retval = false;

		}

		return retval;
	}

	// declare transform functions
	public void Dispose() {
		Ooaofooa.log.println(ILogger.OPERATION, "Operation Body",
				" Operation entered: OperationBody::Dispose");
		final ModelRoot modelRoot = getModelRoot();
		Operation_c v_opb = Operation_c.getOneO_TFROnR696(this);

		if (((v_opb != null))) {

			this.unrelateAcrossR696From(v_opb);

		}

		delete();

	} // End dispose
	public java.util.UUID Getcontainingcomponentid() {
		Ooaofooa.log.println(ILogger.OPERATION, "Operation Body",
				" Operation entered: OperationBody::Getcontainingcomponentid");
		final ModelRoot modelRoot = getModelRoot();
		Operation_c v_op = Operation_c.getOneO_TFROnR696(this);

		return v_op.Getcontainingcomponentid();

	} // End getContainingComponentId
	public java.util.UUID Getcontainerid() {
		Ooaofooa.log.println(ILogger.OPERATION, "Operation Body",
				" Operation entered: OperationBody::Getcontainerid");
		final ModelRoot modelRoot = getModelRoot();
		Operation_c v_op = Operation_c.getOneO_TFROnR696(this);

		return v_op.Getcontainerid();

	} // End getContainerId
	public String Getpath() {
		Ooaofooa.log.println(ILogger.OPERATION, "Operation Body",
				" Operation entered: OperationBody::Getpath");
		final ModelRoot modelRoot = getModelRoot();
		Operation_c v_operation = Operation_c.getOneO_TFROnR696(this);

		String v_opPath = "";

		String v_opName = "";

		if (((v_operation != null))) {

			v_opName = v_operation.getName();

			PackageableElement_c v_pe_pe = PackageableElement_c
					.getOnePE_PEOnR8001(ModelClass_c
							.getOneO_OBJOnR115(v_operation));

			if (((v_pe_pe != null))) {

				Package_c v_pkg = Package_c.getOneEP_PKGOnR8000(v_pe_pe);

				v_opPath = v_pkg.Getpath(v_opName);

			}

			else {

				Subsystem_c v_subSystem = Subsystem_c
						.getOneS_SSOnR2(ModelClass_c
								.getOneO_OBJOnR115(v_operation));

				v_opPath = v_subSystem.Getpath(v_opName);

			}

		}

		return v_opPath;

	} // End getPath

	// end transform functions

	public Object getAdapter(Class adapter) {
		Object superAdapter = super.getAdapter(adapter);
		if (superAdapter != null) {
			return superAdapter;
		}
		return null;
	}
} // end Operation Body
