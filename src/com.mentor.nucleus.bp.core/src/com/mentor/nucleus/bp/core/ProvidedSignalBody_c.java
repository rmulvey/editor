package com.mentor.nucleus.bp.core;
//====================================================================
//
// File:      com.mentor.nucleus.bp.core.ProvidedSignalBody_c.java
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
abstract class EV_PROVIDED_SIGNAL_BODY extends genericEvent_c {
	public abstract int getEvtcode();
}

public class ProvidedSignalBody_c extends NonRootModelElement
		implements
			IAdaptable,
			Cloneable {
	// Public Constructors
	public ProvidedSignalBody_c(ModelRoot modelRoot,
			java.util.UUID p_m_action_id, java.util.UUID p_m_id) {
		super(modelRoot);
		//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
		m_action_id = IdAssigner.preprocessUUID(p_m_action_id);
		//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
		m_id = IdAssigner.preprocessUUID(p_m_id);

		Object[] key = {m_action_id};
		addInstanceToMap(key);
	}
	static public ProvidedSignalBody_c createProxy(ModelRoot modelRoot,
			java.util.UUID p_m_action_id, java.util.UUID p_m_id,
			String p_contentPath, IPath p_localPath) {
		ModelRoot resolvedModelRoot = ModelRoot.findModelRoot(modelRoot,
				p_contentPath, p_localPath);
		// if a model root was not resolved it is most likely
		// due to a missing file of the proxy, defualt back to
		// the original model root
		if (resolvedModelRoot != null)
			modelRoot = resolvedModelRoot;
		InstanceList instances = modelRoot
				.getInstanceList(ProvidedSignalBody_c.class);
		ProvidedSignalBody_c new_inst = null;
		synchronized (instances) {
			Object[] key = {p_m_action_id};
			new_inst = (ProvidedSignalBody_c) instances.get(key);
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
				new_inst.m_id = IdAssigner.preprocessUUID(p_m_id);

			}
		}
		if (new_inst == null) {
			// there is no instance matching the id, create a proxy
			// if the resource doesn't exist then this will be a dangling reference
			new_inst = new ProvidedSignalBody_c(modelRoot, p_m_action_id,
					p_m_id);
			new_inst.m_contentPath = contentPath;
		}
		return new_inst;
	}

	static public ProvidedSignalBody_c resolveInstance(ModelRoot modelRoot,
			java.util.UUID p_m_action_id, java.util.UUID p_m_id) {
		InstanceList instances = modelRoot
				.getInstanceList(ProvidedSignalBody_c.class);
		ProvidedSignalBody_c source = null;
		synchronized (instances) {
			Object[] key = {p_m_action_id};
			source = (ProvidedSignalBody_c) instances.get(key);
			if (source != null && !modelRoot.isCompareRoot()) {
				source.convertFromProxy();
				source.batchUnrelate();
				//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
				source.m_action_id = IdAssigner.preprocessUUID(p_m_action_id);
				//pre-process the uuid so that we re-use null uuid instance rather then creating a new one.           
				source.m_id = IdAssigner.preprocessUUID(p_m_id);

				return source;
			}
		}
		// there is no instance matching the id
		ProvidedSignalBody_c new_inst = new ProvidedSignalBody_c(modelRoot,
				p_m_action_id, p_m_id);
		return new_inst;
	}
	public ProvidedSignalBody_c(ModelRoot modelRoot) {
		super(modelRoot);
		m_action_id = IdAssigner.NULL_UUID;
		m_id = IdAssigner.NULL_UUID;
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
		if (!(elem instanceof ProvidedSignalBody_c)) {
			return false;
		}
		// check that the model-roots are the same
		if (((NonRootModelElement) elem).getModelRoot() != getModelRoot()) {
			return false;
		}

		return identityEquals(elem);
	}

	public boolean identityEquals(Object elem) {
		if (!(elem instanceof ProvidedSignalBody_c)) {
			return false;
		}

		ProvidedSignalBody_c me = (ProvidedSignalBody_c) elem;
		// don't allow an empty id-value to produce a false positive result;
		// in this case, use whether the two instances are actually the same 
		// one in memory, instead
		if ((IdAssigner.NULL_UUID.equals(getAction_id()) || IdAssigner.NULL_UUID
				.equals(((ProvidedSignalBody_c) elem).getAction_id()))
				&& this != elem) {
			return false;
		}
		if (!getAction_id()
				.equals(((ProvidedSignalBody_c) elem).getAction_id()))
			return false;
		return true;
	}

	public boolean cachedIdentityEquals(Object elem) {
		if (!(elem instanceof ProvidedSignalBody_c)) {
			return false;
		}

		ProvidedSignalBody_c me = (ProvidedSignalBody_c) elem;
		if (!getAction_idCachedValue().equals(
				((ProvidedSignalBody_c) elem).getAction_idCachedValue()))
			return false;
		return true;
	}

	// Attributes
	private java.util.UUID m_action_id;
	private java.util.UUID m_id;

	// declare association references from this class

	// referring navigation

	ProvidedSignal_c SpecifiesProcessingForProvidedSignal;
	public void relateAcrossR686To(ProvidedSignal_c target) {
		relateAcrossR686To(target, true);
	}
	public void relateAcrossR686To(ProvidedSignal_c target,
			boolean notifyChanges) {
		if (target == null)
			return;

		if (target == SpecifiesProcessingForProvidedSignal)
			return; // already related

		if (SpecifiesProcessingForProvidedSignal != target) {

			Object oldKey = getInstanceKey();

			if (SpecifiesProcessingForProvidedSignal != null) {

				SpecifiesProcessingForProvidedSignal
						.clearBackPointerR686To(this);

				if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == true) { //$NON-NLS-1$
					Ooaofooa.log
							.println(
									ILogger.CONSISTENCY,
									"ProvidedSignalBody_c.relateAcrossR686To(ProvidedSignal_c target)",
									"Relate performed across R686 from Provided Signal Body to Provided Signal without unrelate of prior instance.");
				}
			}

			SpecifiesProcessingForProvidedSignal = target;
			if (IdAssigner.NULL_UUID.equals(target.getId())) {
				// do not update cached value
			} else {
				// update cached value
				m_id = target.getIdCachedValue();
			}
			updateInstanceKey(oldKey, getInstanceKey());
			target.setBackPointerR686To(this);
			target.addRef();
		}
	}
	public void unrelateAcrossR686From(ProvidedSignal_c target) {
		unrelateAcrossR686From(target, true);
	}
	public void unrelateAcrossR686From(ProvidedSignal_c target,
			boolean notifyChanges) {
		if (target == null)
			return;

		if (SpecifiesProcessingForProvidedSignal == null)
			return; // already unrelated

		if (target != SpecifiesProcessingForProvidedSignal) {
			Exception e = new Exception();
			e.fillInStackTrace();
			CorePlugin.logError(
					"Tried to unrelate from non-related instance across R686",
					e);
			return;
		}

		if (target != null) {
			target.clearBackPointerR686To(this);
		}

		if (SpecifiesProcessingForProvidedSignal != null) {

			m_id = SpecifiesProcessingForProvidedSignal.getId();
			if (IdAssigner.NULL_UUID.equals(m_id)) {
				m_id = SpecifiesProcessingForProvidedSignal.getIdCachedValue();
			}
			SpecifiesProcessingForProvidedSignal = null;
			target.removeRef();
		}
	}

	public static ProvidedSignalBody_c getOneACT_PSBOnR686(
			ProvidedSignal_c[] targets) {
		return getOneACT_PSBOnR686(targets, null);
	}

	public static ProvidedSignalBody_c getOneACT_PSBOnR686(
			ProvidedSignal_c[] targets, ClassQueryInterface_c test) {
		ProvidedSignalBody_c ret_val = null;
		if (targets != null) {
			for (int i = 0; i < targets.length && ret_val == null; ++i) {
				ret_val = getOneACT_PSBOnR686(targets[i], test);
			}
		}

		return ret_val;
	}

	public static ProvidedSignalBody_c getOneACT_PSBOnR686(
			ProvidedSignal_c target) {
		return getOneACT_PSBOnR686(target, null);
	}

	public static ProvidedSignalBody_c getOneACT_PSBOnR686(
			ProvidedSignal_c target, boolean loadComponent) {
		return getOneACT_PSBOnR686(target.getModelRoot(), target, null,
				loadComponent);
	}

	public static ProvidedSignalBody_c getOneACT_PSBOnR686(
			ProvidedSignal_c target, ClassQueryInterface_c test) {
		if (target != null) {
			return getOneACT_PSBOnR686(target.getModelRoot(), target, test);
		}
		return null;
	}

	public static ProvidedSignalBody_c getOneACT_PSBOnR686(ModelRoot modelRoot,
			ProvidedSignal_c target, ClassQueryInterface_c test) {
		return getOneACT_PSBOnR686(modelRoot, target, test, true);
	}

	public static ProvidedSignalBody_c getOneACT_PSBOnR686(ModelRoot modelRoot,
			ProvidedSignal_c target, ClassQueryInterface_c test,
			boolean loadComponent) {
		return find_getOneACT_PSBOnR686(modelRoot, target, test);
	}
	private static ProvidedSignalBody_c find_getOneACT_PSBOnR686(
			ModelRoot modelRoot, ProvidedSignal_c target,
			ClassQueryInterface_c test) {
		if (target != null) {
			ProvidedSignalBody_c source = (ProvidedSignalBody_c) target.backPointer_ProvidedSignalBody_R686;
			if (source != null && (test == null || test.evaluate(source))) {
				return source;
			}
		}
		// not found
		return null;
	}

	public static ProvidedSignalBody_c[] getManyACT_PSBsOnR686(
			ProvidedSignal_c[] targets) {
		return getManyACT_PSBsOnR686(targets, null);
	}
	public static ProvidedSignalBody_c[] getManyACT_PSBsOnR686(
			ProvidedSignal_c[] targets, boolean loadComponent) {
		return getManyACT_PSBsOnR686(targets, null, loadComponent);
	}
	public static ProvidedSignalBody_c[] getManyACT_PSBsOnR686(
			ProvidedSignal_c[] targets, ClassQueryInterface_c test) {
		return getManyACT_PSBsOnR686(targets, test, true);
	}

	public static ProvidedSignalBody_c[] getManyACT_PSBsOnR686(
			ProvidedSignal_c[] targets, ClassQueryInterface_c test,
			boolean loadComponent) {

		if (targets == null || targets.length == 0 || targets[0] == null)
			return new ProvidedSignalBody_c[0];

		ModelRoot modelRoot = targets[0].getModelRoot();

		InstanceList instances = modelRoot
				.getInstanceList(ProvidedSignalBody_c.class);

		Vector matches = new Vector();
		for (int i = 0; i < targets.length; i++) {
			ProvidedSignalBody_c source = (ProvidedSignalBody_c) targets[i].backPointer_ProvidedSignalBody_R686;
			if (source != null && (test == null || test.evaluate(source))) {
				matches.add(source);
			}
		}
		if (matches.size() > 0) {
			ProvidedSignalBody_c[] ret_set = new ProvidedSignalBody_c[matches
					.size()];
			matches.copyInto(ret_set);
			return ret_set;
		} else {
			return new ProvidedSignalBody_c[0];
		}
	}

	public static ProvidedSignalBody_c[] getManyACT_PSBsOnR686(
			ProvidedSignal_c target) {
		if (target != null) {
			ProvidedSignal_c[] targetArray = new ProvidedSignal_c[1];
			targetArray[0] = target;
			return getManyACT_PSBsOnR686(targetArray);
		} else {
			ProvidedSignalBody_c[] result = new ProvidedSignalBody_c[0];
			return result;
		}
	}

	public static ProvidedSignalBody_c[] getManyACT_PSBsOnR686(
			ProvidedSignal_c target, boolean loadComponent) {
		if (target != null) {
			ProvidedSignal_c[] targetArray = new ProvidedSignal_c[1];
			targetArray[0] = target;
			return getManyACT_PSBsOnR686(targetArray, loadComponent);
		} else {
			ProvidedSignalBody_c[] result = new ProvidedSignalBody_c[0];
			return result;
		}
	}

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
									"ProvidedSignalBody_c.relateAcrossR698To(Body_c target)",
									"Relate performed across R698 from Provided Signal Body to Body without unrelate of prior instance.");
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

	public static ProvidedSignalBody_c getOneACT_PSBOnR698(Body_c[] targets) {
		return getOneACT_PSBOnR698(targets, null);
	}

	public static ProvidedSignalBody_c getOneACT_PSBOnR698(Body_c[] targets,
			ClassQueryInterface_c test) {
		ProvidedSignalBody_c ret_val = null;
		if (targets != null) {
			for (int i = 0; i < targets.length && ret_val == null; ++i) {
				ret_val = getOneACT_PSBOnR698(targets[i], test);
			}
		}

		return ret_val;
	}

	public static ProvidedSignalBody_c getOneACT_PSBOnR698(Body_c target) {
		return getOneACT_PSBOnR698(target, null);
	}

	public static ProvidedSignalBody_c getOneACT_PSBOnR698(Body_c target,
			boolean loadComponent) {
		return getOneACT_PSBOnR698(target.getModelRoot(), target, null,
				loadComponent);
	}

	public static ProvidedSignalBody_c getOneACT_PSBOnR698(Body_c target,
			ClassQueryInterface_c test) {
		if (target != null) {
			return getOneACT_PSBOnR698(target.getModelRoot(), target, test);
		}
		return null;
	}

	public static ProvidedSignalBody_c getOneACT_PSBOnR698(ModelRoot modelRoot,
			Body_c target, ClassQueryInterface_c test) {
		return getOneACT_PSBOnR698(modelRoot, target, test, true);
	}

	public static ProvidedSignalBody_c getOneACT_PSBOnR698(ModelRoot modelRoot,
			Body_c target, ClassQueryInterface_c test, boolean loadComponent) {
		return find_getOneACT_PSBOnR698(modelRoot, target, test);
	}
	private static ProvidedSignalBody_c find_getOneACT_PSBOnR698(
			ModelRoot modelRoot, Body_c target, ClassQueryInterface_c test) {
		if (target != null) {
			ProvidedSignalBody_c source = (ProvidedSignalBody_c) target.backPointer_IsSubtypeProvidedSignalBodyIsSubtype_R698;
			if (source != null && (test == null || test.evaluate(source))) {
				return source;
			}
		}
		// not found
		return null;
	}

	public static ProvidedSignalBody_c[] getManyACT_PSBsOnR698(Body_c[] targets) {
		return getManyACT_PSBsOnR698(targets, null);
	}
	public static ProvidedSignalBody_c[] getManyACT_PSBsOnR698(
			Body_c[] targets, boolean loadComponent) {
		return getManyACT_PSBsOnR698(targets, null, loadComponent);
	}
	public static ProvidedSignalBody_c[] getManyACT_PSBsOnR698(
			Body_c[] targets, ClassQueryInterface_c test) {
		return getManyACT_PSBsOnR698(targets, test, true);
	}

	public static ProvidedSignalBody_c[] getManyACT_PSBsOnR698(
			Body_c[] targets, ClassQueryInterface_c test, boolean loadComponent) {

		if (targets == null || targets.length == 0 || targets[0] == null)
			return new ProvidedSignalBody_c[0];

		ModelRoot modelRoot = targets[0].getModelRoot();

		InstanceList instances = modelRoot
				.getInstanceList(ProvidedSignalBody_c.class);

		Vector matches = new Vector();
		for (int i = 0; i < targets.length; i++) {
			ProvidedSignalBody_c source = (ProvidedSignalBody_c) targets[i].backPointer_IsSubtypeProvidedSignalBodyIsSubtype_R698;
			if (source != null && (test == null || test.evaluate(source))) {
				matches.add(source);
			}
		}
		if (matches.size() > 0) {
			ProvidedSignalBody_c[] ret_set = new ProvidedSignalBody_c[matches
					.size()];
			matches.copyInto(ret_set);
			return ret_set;
		} else {
			return new ProvidedSignalBody_c[0];
		}
	}

	public static ProvidedSignalBody_c[] getManyACT_PSBsOnR698(Body_c target) {
		if (target != null) {
			Body_c[] targetArray = new Body_c[1];
			targetArray[0] = target;
			return getManyACT_PSBsOnR698(targetArray);
		} else {
			ProvidedSignalBody_c[] result = new ProvidedSignalBody_c[0];
			return result;
		}
	}

	public static ProvidedSignalBody_c[] getManyACT_PSBsOnR698(Body_c target,
			boolean loadComponent) {
		if (target != null) {
			Body_c[] targetArray = new Body_c[1];
			targetArray[0] = target;
			return getManyACT_PSBsOnR698(targetArray, loadComponent);
		} else {
			ProvidedSignalBody_c[] result = new ProvidedSignalBody_c[0];
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

		if (SpecifiesProcessingForProvidedSignal == null) {
			// R686
			ProvidedSignal_c relInst56248 = (ProvidedSignal_c) baseRoot
					.getInstanceList(ProvidedSignal_c.class).get(
							new Object[]{m_id});
			// if there was no local element, check for any global elements
			// failing that proceed to check other model roots
			if (relInst56248 == null) {
				relInst56248 = (ProvidedSignal_c) Ooaofooa.getDefaultInstance()
						.getInstanceList(ProvidedSignal_c.class)
						.get(new Object[]{m_id});
			}
			if (relInst56248 == null && searchAllRoots
					&& !baseRoot.isCompareRoot()) {
				Ooaofooa[] roots = Ooaofooa.getInstances();
				for (int i = 0; i < roots.length; i++) {
					if (roots[i].isCompareRoot()) {
						// never use elements from any compare root
						continue;
					}
					relInst56248 = (ProvidedSignal_c) roots[i].getInstanceList(
							ProvidedSignal_c.class).get(new Object[]{m_id});
					if (relInst56248 != null)
						break;
				}
			}
			//synchronized
			if (relInst56248 != null) {
				if (relateProxies || !isProxy()
						|| (inSameComponent(this, relInst56248) && !isProxy())) {
					relInst56248.relateAcrossR686To(this, notifyChanges);
				}
			}
		}

		// R698
		Body_c relInst56249 = (Body_c) baseRoot.getInstanceList(Body_c.class)
				.get(new Object[]{m_action_id});
		// if there was no local element, check for any global elements
		// failing that proceed to check other model roots
		if (relInst56249 == null) {
			relInst56249 = (Body_c) Ooaofooa.getDefaultInstance()
					.getInstanceList(Body_c.class)
					.get(new Object[]{m_action_id});
		}
		if (relInst56249 == null && searchAllRoots && !baseRoot.isCompareRoot()) {
			Ooaofooa[] roots = Ooaofooa.getInstances();
			for (int i = 0; i < roots.length; i++) {
				if (roots[i].isCompareRoot()) {
					// never use elements from any compare root
					continue;
				}
				relInst56249 = (Body_c) roots[i].getInstanceList(Body_c.class)
						.get(new Object[]{m_action_id});
				if (relInst56249 != null)
					break;
			}
		}
		//synchronized
		if (relInst56249 != null) {
			if (relateProxies || !isProxy()
					|| (inSameComponent(this, relInst56249) && !isProxy())) {
				relInst56249.relateAcrossR698To(this, notifyChanges);
			}
		}

	}
	public void batchUnrelate(boolean notifyChanges) {
		NonRootModelElement inst = null;
		// R686
		// SPR_PS
		inst = SpecifiesProcessingForProvidedSignal;
		unrelateAcrossR686From(SpecifiesProcessingForProvidedSignal,
				notifyChanges);
		if (inst != null) {
			inst.removeRef();
		}
		// R698
		// ACT_ACT
		inst = IsSupertypeBody;
		unrelateAcrossR698From(IsSupertypeBody, notifyChanges);
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
	InstanceList instances = modelRoot.getInstanceList(ProvidedSignalBody_c.class);
    synchronized(instances) {
        Iterator<NonRootModelElement> cursor = instances.iterator() ;
    	while (cursor.hasNext())
	    {
            final ProvidedSignalBody_c inst = (ProvidedSignalBody_c)cursor.next() ;
	        inst.batchRelate(modelRoot, relateProxies, notifyChanges, searchAllRoots );
	    }
	}
  }
	public static void clearInstances(ModelRoot modelRoot) {
		InstanceList instances = modelRoot
				.getInstanceList(ProvidedSignalBody_c.class);
		synchronized (instances) {
			for (int i = instances.size() - 1; i >= 0; i--) {
				((NonRootModelElement) instances.get(i)).delete_unchecked();
			}

		}
	}

	public static ProvidedSignalBody_c ProvidedSignalBodyInstance(
			ModelRoot modelRoot, ClassQueryInterface_c test,
			boolean loadComponent) {
		ProvidedSignalBody_c result = findProvidedSignalBodyInstance(modelRoot,
				test, loadComponent);
		return result;
	}
	private static ProvidedSignalBody_c findProvidedSignalBodyInstance(
			ModelRoot modelRoot, ClassQueryInterface_c test,
			boolean loadComponent) {
		InstanceList instances = modelRoot
				.getInstanceList(ProvidedSignalBody_c.class);
		synchronized (instances) {
			for (int i = 0; i < instances.size(); ++i) {
				ProvidedSignalBody_c x = (ProvidedSignalBody_c) instances
						.get(i);
				if (test == null || test.evaluate(x)) {
					return x;
				}
			}
		}
		return null;
	}
	public static ProvidedSignalBody_c ProvidedSignalBodyInstance(
			ModelRoot modelRoot, ClassQueryInterface_c test) {
		return ProvidedSignalBodyInstance(modelRoot, test, true);
	}

	public static ProvidedSignalBody_c ProvidedSignalBodyInstance(
			ModelRoot modelRoot) {
		return ProvidedSignalBodyInstance(modelRoot, null, true);
	}

	public static ProvidedSignalBody_c[] ProvidedSignalBodyInstances(
			ModelRoot modelRoot, ClassQueryInterface_c test,
			boolean loadComponent) {
		InstanceList instances = modelRoot
				.getInstanceList(ProvidedSignalBody_c.class);
		Vector matches = new Vector();
		synchronized (instances) {
			for (int i = 0; i < instances.size(); ++i) {
				ProvidedSignalBody_c x = (ProvidedSignalBody_c) instances
						.get(i);
				if (test == null || test.evaluate(x)) {
					matches.add(x);
				}
			}
			if (matches.size() > 0) {
				ProvidedSignalBody_c[] ret_set = new ProvidedSignalBody_c[matches
						.size()];
				matches.copyInto(ret_set);
				return ret_set;
			} else {
				return new ProvidedSignalBody_c[0];
			}
		}
	}
	public static ProvidedSignalBody_c[] ProvidedSignalBodyInstances(
			ModelRoot modelRoot, ClassQueryInterface_c test) {
		return ProvidedSignalBodyInstances(modelRoot, test, true);
	}
	public static ProvidedSignalBody_c[] ProvidedSignalBodyInstances(
			ModelRoot modelRoot) {
		return ProvidedSignalBodyInstances(modelRoot, null, true);
	}

	public boolean delete() {
		boolean result = super.delete();
		boolean delete_error = false;
		String errorMsg = "The following relationships were not torn down by the Provided Signal Body.dispose call: ";
		ProvidedSignal_c testR686Inst = ProvidedSignal_c.getOneSPR_PSOnR686(
				this, false);

		if (testR686Inst != null) {
			delete_error = true;
			errorMsg = errorMsg + "686 ";
		}
		Body_c testR698Inst8 = Body_c.getOneACT_ACTOnR698(this, false);

		if (testR698Inst8 != null) {
			delete_error = true;
			errorMsg = errorMsg + "698 ";
		}
		if (delete_error == true) {

			if (CorePlugin.getDefault().isDebugging()) {
				Ooaofooa.log.println(ILogger.DELETE, "Provided Signal Body",
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
		if (attributeName.equals("action_id")) {
			return true;
		}
		if (attributeName.equals("id")) {
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
	public long getIdLongBased() {
		if (SpecifiesProcessingForProvidedSignal != null) {
			return SpecifiesProcessingForProvidedSignal.getIdLongBased();
		}
		return 0;
	}
	public java.util.UUID getId() {
		if (SpecifiesProcessingForProvidedSignal != null) {
			return SpecifiesProcessingForProvidedSignal.getId();
		}
		return IdAssigner.NULL_UUID;
	}

	public java.util.UUID getIdCachedValue() {
		if (!IdAssigner.NULL_UUID.equals(m_id))
			return m_id;
		else
			return getId();
	}

	public void setId(java.util.UUID newValue) {
		m_id = IdAssigner.preprocessUUID(newValue);
	}
	// end declare accessors
	public static void checkClassConsistency(ModelRoot modelRoot) {
		Ooaofooa.log
				.println(ILogger.OPERATION, "Provided Signal Body", //$NON-NLS-1$
						" Operation entered: Provided Signal Body::checkClassConsistency"); //$NON-NLS-1$
		if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == false) { //$NON-NLS-1$
			return;
		}
		ProvidedSignalBody_c[] objs = ProvidedSignalBody_c
				.ProvidedSignalBodyInstances(modelRoot, null, false);

		for (int i = 0; i < objs.length; i++) {
			objs[i].checkConsistency();
		}
	}
	public boolean checkConsistency() {
		Ooaofooa.log.println(ILogger.OPERATION, "Provided Signal Body", //$NON-NLS-1$
				" Operation entered: Provided Signal Body::checkConsistency"); //$NON-NLS-1$
		if (Boolean.valueOf(System.getenv("PTC_MCC_ENABLED")) == false) { //$NON-NLS-1$
			return true;
		}
		ModelRoot modelRoot = getModelRoot();
		boolean retval = true;
		class ProvidedSignalBody_c_test56251_c implements ClassQueryInterface_c {
			ProvidedSignalBody_c_test56251_c(java.util.UUID p56252) {
				m_p56252 = p56252;
			}
			private java.util.UUID m_p56252;
			public boolean evaluate(Object candidate) {
				ProvidedSignalBody_c selected = (ProvidedSignalBody_c) candidate;
				boolean retval = false;
				retval = (selected.getAction_id().equals(m_p56252));
				return retval;
			}
		}

		ProvidedSignalBody_c[] objs56250 = ProvidedSignalBody_c
				.ProvidedSignalBodyInstances(modelRoot,
						new ProvidedSignalBody_c_test56251_c(getAction_id()));

		if (((objs56250.length) == 0)) {

			if (CorePlugin.getDefault().isDebugging()) {
				Ooaofooa.log
						.println(ILogger.CONSISTENCY,
								"Provided Signal Body", //$NON-NLS-1$
								"Consistency: Object: Provided Signal Body: Cardinality of an identifier is zero. " //$NON-NLS-1$
										+ "Actual Value: " + Integer.toString(objs56250.length)); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CorePlugin
						.logError(
								"Consistency: Object: Provided Signal Body: Cardinality of an identifier is zero. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs56250.length), e);
			}
			retval = false;

		}

		if (((objs56250.length) > 1)) {

			if (CorePlugin.getDefault().isDebugging()) {
				Ooaofooa.log
						.println(ILogger.CONSISTENCY,
								"Provided Signal Body", //$NON-NLS-1$
								"Consistency: Object: Provided Signal Body: Cardinality of an identifier is greater than 1. " //$NON-NLS-1$
										+ "Actual Value: " //$NON-NLS-1$ 
										+ Integer.toString(objs56250.length)
										+ " Action_ID: " + "Not Printable"); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CorePlugin
						.logError(
								"Consistency: Object: Provided Signal Body: Cardinality of an identifier is greater than 1. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs56250.length)
										+ " Action_ID: " + "Not Printable", e); //$NON-NLS-1$
			}
			retval = false;

		}

		// Provided Signal Body is a subtype in association: rel.Numb = 698
		// The supertype class is: Body
		class Body_c_test56256_c implements ClassQueryInterface_c {
			Body_c_test56256_c(java.util.UUID p56257) {
				m_p56257 = p56257;
			}
			private java.util.UUID m_p56257;
			public boolean evaluate(Object candidate) {
				Body_c selected = (Body_c) candidate;
				boolean retval = false;
				retval = (selected.getAction_id().equals(m_p56257));
				return retval;
			}
		}

		Body_c[] objs56255 = Body_c.BodyInstances(modelRoot,
				new Body_c_test56256_c(getAction_id()));

		if (((objs56255.length) != 1)) {

			if (CorePlugin.getDefault().isDebugging()) {
				Ooaofooa.log
						.println(ILogger.CONSISTENCY,
								"Provided Signal Body", //$NON-NLS-1$
								"Consistency: Object: Provided Signal Body: Association: 698: Cardinality of a supertype is not equal to 1. " //$NON-NLS-1$
										+ "Actual Value: " + Integer.toString(objs56255.length)); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CorePlugin
						.logError(
								"Consistency: Object: Provided Signal Body: Association: 698: Cardinality of a supertype is not equal to 1. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs56255.length), e);
			}
			retval = false;

		}

		// Provided Signal Body is a referring class in association: rel.Numb = 686
		// The participating class is: Provided Signal
		class ProvidedSignal_c_test56259_c implements ClassQueryInterface_c {
			ProvidedSignal_c_test56259_c(java.util.UUID p56260) {
				m_p56260 = p56260;
			}
			private java.util.UUID m_p56260;
			public boolean evaluate(Object candidate) {
				ProvidedSignal_c selected = (ProvidedSignal_c) candidate;
				boolean retval = false;
				retval = (selected.getId().equals(m_p56260));
				return retval;
			}
		}

		ProvidedSignal_c[] objs56258 = ProvidedSignal_c
				.ProvidedSignalInstances(modelRoot,
						new ProvidedSignal_c_test56259_c(getId()));

		// The participant is unconditional
		// The multiplicity of the participant is one
		if (((objs56258.length) != 1)) {

			if (CorePlugin.getDefault().isDebugging()) {
				Ooaofooa.log
						.println(ILogger.CONSISTENCY,
								"Provided Signal Body", //$NON-NLS-1$
								"Consistency: Object: Provided Signal Body: Association: 686: Cardinality of a participant is not equal to 1. " //$NON-NLS-1$
										+ "Actual Value: " //$NON-NLS-1$ 
										+ Integer.toString(objs56258.length)
										+ " Id: " + "Not Printable"); //$NON-NLS-1$
			} else {
				Exception e = new Exception();
				CorePlugin
						.logError(
								"Consistency: Object: Provided Signal Body: Association: 686: Cardinality of a participant is not equal to 1. " //$NON-NLS-1$ 
										+ "Actual Value: " //$NON-NLS-1$
										+ Integer.toString(objs56258.length)
										+ " Id: " + "Not Printable", e); //$NON-NLS-1$
			}
			retval = false;

		}

		return retval;
	}

	// declare transform functions
	public void Dispose() {
		Ooaofooa.log.println(ILogger.OPERATION, "Provided Signal Body",
				" Operation entered: ProvidedSignalBody::Dispose");
		final ModelRoot modelRoot = getModelRoot();
		ProvidedSignal_c v_act = ProvidedSignal_c.getOneSPR_PSOnR686(this);

		if (((v_act != null))) {

			this.unrelateAcrossR686From(v_act);

		}

		delete();

	} // End dispose
	public java.util.UUID Getcontainingcomponentid() {
		Ooaofooa.log
				.println(ILogger.OPERATION, "Provided Signal Body",
						" Operation entered: ProvidedSignalBody::Getcontainingcomponentid");
		final ModelRoot modelRoot = getModelRoot();
		ProvidedSignal_c v_providedSig = ProvidedSignal_c
				.getOneSPR_PSOnR686(this);

		return v_providedSig.Getcomponentid();

	} // End getContainingComponentId
	public java.util.UUID Getcontainerid() {
		Ooaofooa.log.println(ILogger.OPERATION, "Provided Signal Body",
				" Operation entered: ProvidedSignalBody::Getcontainerid");
		final ModelRoot modelRoot = getModelRoot();
		ProvidedSignal_c v_providedSig = ProvidedSignal_c
				.getOneSPR_PSOnR686(this);

		return v_providedSig.Getcomponentid();

	} // End getContainerId
	public String Getpath() {
		Ooaofooa.log.println(ILogger.OPERATION, "Provided Signal Body",
				" Operation entered: ProvidedSignalBody::Getpath");
		final ModelRoot modelRoot = getModelRoot();
		ProvidedSignal_c v_providedSig = ProvidedSignal_c
				.getOneSPR_PSOnR686(this);

		String v_providedSigPath = "";

		String v_providedSigName = "";

		if (((v_providedSig != null))) {

			v_providedSigName = v_providedSig.getName();

			Component_c v_comp = Component_c
					.getOneC_COnR4010(Port_c.getOneC_POOnR4016(InterfaceReference_c.getOneC_IROnR4009(Provision_c
							.getOneC_POnR4501(ProvidedExecutableProperty_c
									.getOneSPR_PEPOnR4503(v_providedSig)))));

			v_providedSigPath = v_comp.Getpath(true, v_providedSigName);

		}

		return v_providedSigPath;

	} // End getPath

	// end transform functions

	public Object getAdapter(Class adapter) {
		Object superAdapter = super.getAdapter(adapter);
		if (superAdapter != null) {
			return superAdapter;
		}
		return null;
	}
} // end Provided Signal Body