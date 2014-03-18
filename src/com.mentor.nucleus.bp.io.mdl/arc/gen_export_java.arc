.//====================================================================
.//
.// File:      $RCSfile: gen_export_java.arc,v $
.// Version:   $Revision: 1.14 $
.// Modified:  $Date: 2013/05/10 13:26:16 $
.//
.// (c) Copyright 2004-2014 by Mentor Graphics Corp.  All rights reserved.
.//
.//====================================================================
.//
.// Generate the Java code that exports the model in a format
.//  that Model Builder can read
.//
.//====================================================================
.//
.assign io_core = "../com.mentor.nucleus.bp.io.core"
.assign class_name = "ExportModel"
.include "${io_core}/arc/gen_export_java.inc"
.invoke result = gen_export("", "", "NBP", "${class_name}", false) 
//========================================================================
//
// File: ${class_name}.java
//
// WARNING:      Do not edit this generated file
// Generated by: ${info.arch_file_name}
// Version:      $$Revision: 1.14 $$
//
// (c) Copyright 2005-2014 by Mentor Graphics Corp.  All rights reserved.
//
//========================================================================
// Licensed under the Apache License, Version 2.0 (the "License"); you may not 
// use this file except in compliance with the License.  You may obtain a copy 
// of the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software 
// distributed under the License is distributed on an "AS IS" BASIS, WITHOUT 
// WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   See the 
// License for the specific language governing permissions and limitations under
// the License.
//======================================================================== 
//
${result.body}
.//
.emit to file "src/com/mentor/nucleus/bp/io/mdl/${class_name}.java"
.//