package com.mentor.nucleus.bp.core.ui;
//======================================================================
//
// File: com/mentor/nucleus/bp/core/ui/MarkInstanceNotDestroyedOnSQ_LSAction.java
//
// WARNING:      Do not edit this generated file
// Generated by: arc/create_object_action.inc
// Version:      $Revision: 1.30 $
//
// (c) Copyright 2005-2014 by Mentor Graphics Corp.  All rights reserved.
//
//======================================================================
//
// This class is the main BridgePoint entry point for the action that
// creates new Mark Instance not Destroyeds.
//
import java.util.Iterator;

import org.eclipse.jface.action.IAction;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.viewers.ISelection;
import org.eclipse.jface.viewers.IStructuredSelection;
import org.eclipse.jface.viewers.StructuredSelection;
import org.eclipse.ui.IObjectActionDelegate;
import org.eclipse.ui.IWorkbenchPart;
import com.mentor.nucleus.bp.core.*;
import com.mentor.nucleus.bp.core.common.*;
import com.mentor.nucleus.bp.core.util.OoaofgraphicsUtil;
import com.mentor.nucleus.bp.core.util.RenameActionUtil;
import com.mentor.nucleus.bp.core.util.TransactionUtil;
import com.mentor.nucleus.bp.core.util.UIUtil;

public class MarkInstanceNotDestroyedOnSQ_LSAction
		implements
			IObjectActionDelegate {

	/**
	 * Constructor for MarkInstanceNotDestroyedOnSQ_LSAction.
	 */
	public MarkInstanceNotDestroyedOnSQ_LSAction() {
		super();
	}
	/**
	 * @see IObjectActionDelegate#setActivePart(IAction, IWorkbenchPart)
	 */
	public void setActivePart(IAction action, IWorkbenchPart targetPart) {
		// The part is mainly needed to locate the selection provider, and
		// we cache our selection in core so no action is needed here.
	}
	/**
	 * @see IActionDelegate#run(IAction)
	 */
	public void run(IAction action) {
		IStructuredSelection structuredSelection = Selection.getInstance()
				.getStructuredSelection();
		SQ_LS_MarkInstanceNotDestroyed(structuredSelection);

	}
	/**
	 * @see IActionDelegate#selectionChanged(IAction, ISelection)
	 */
	public void selectionChanged(IAction action, ISelection selection) {
	}
	private void SQ_LS_MarkInstanceNotDestroyed(IStructuredSelection selection) {
		// Assign the context selection variables with the action context 
		// Assign the context selection variable with the action context 
		Object context = selection.iterator().next();
		Lifespan_c v_ls = (Lifespan_c) context;
		PersistableModelComponent.ensureCoreDataTypesAvailable(v_ls
				.getModelRoot());

		TransactionUtil.TransactionGroup transactionGroup = TransactionUtil
				.startTransactionsOnSelectedModelRoots("Lifespan Mark Instance not Destroyed");
		try {
			// Ensure that actions take place between Verifier Activity executions
			Ooaofooa.beginSaveOperation();
			if (((v_ls != null))) {

				if (v_ls != null) {
					v_ls.setDestroyed(false);
				} else {
					Throwable t = new Throwable();
					t.fillInStackTrace();
					CorePlugin.logError(
							"Attribute write attempted on null instance.", t);
				}

			}

			// end critical section
			Ooaofooa.endSaveOperation();
			// catch all exceptions and cancel the transactions
		} catch (Exception e) {
			Ooaofooa.endSaveOperation();
			TransactionUtil.cancelTransactions(transactionGroup, e);
			CorePlugin
					.logError(
							"Transaction: Lifespan Mark Instance not Destroyed failed", e);//$NON-NLS-1$
		}
		TransactionUtil.endTransactions(transactionGroup);

	}
} // end MarkInstanceNotDestroyedOnSQ_LSAction
