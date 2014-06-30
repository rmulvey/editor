-- BP 7.1.6 content: Domain syschar: 3 persistence-version: 7.1.6

INSERT INTO S_DOM
	VALUES (1,
	'ooaofooa',
	'========================================================================

File:          $RCSfile: ooaofooa.xtuml,v $
Version:   $Revision: 1.127 $
Modified:  $Date: 2006/09/26 15:10:20 $

(c) Copyright 2004-2014 by Mentor Graphics Corp. All rights reserved.

========================================================================
Licensed under the Apache License, Version 2.0 (the "License"); you may not
use this file except in compliance with the License.  You may obtain a copy
of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   See the
License for the specific language governing permissions and limitations under
the License.
========================================================================

This is the application domain for the Tiger project.

The processing in this model describes the activities
for model capture.



',
	1,
	2,
	3);
-- BP 7.1 content: Subsystem syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SS
	VALUES (4,
	'Wiring',
	'Persistent:false
',
	'W',
	0,
	1,
	0);
INSERT INTO S_SID
	VALUES (1,
	4);
INSERT INTO O_IOBJ
	VALUES (5,
	6,
	0,
	4,
	'Bridge',
	'S_BRG');
INSERT INTO O_IOBJ
	VALUES (7,
	8,
	0,
	4,
	'Function',
	'S_SYNC');
INSERT INTO R_SIMP
	VALUES (9);
INSERT INTO R_REL
	VALUES (9,
	3201,
	'',
	4);
INSERT INTO R_PART
	VALUES (8,
	9,
	10,
	0,
	1,
	'connects bridge execution to');
INSERT INTO O_RTIDA
	VALUES (11,
	8,
	0,
	9,
	10);
INSERT INTO R_RTO
	VALUES (8,
	9,
	10,
	0);
INSERT INTO R_OIR
	VALUES (8,
	9,
	10,
	7);
INSERT INTO R_FORM
	VALUES (12,
	9,
	13,
	1,
	1,
	'provides execution for');
INSERT INTO R_RGO
	VALUES (12,
	9,
	13);
INSERT INTO R_OIR
	VALUES (12,
	9,
	13,
	0);
INSERT INTO R_SIMP
	VALUES (14);
INSERT INTO R_REL
	VALUES (14,
	3200,
	'',
	4);
INSERT INTO R_PART
	VALUES (6,
	14,
	15,
	0,
	0,
	'for bridge execution');
INSERT INTO O_RTIDA
	VALUES (16,
	6,
	0,
	14,
	15);
INSERT INTO R_RTO
	VALUES (6,
	14,
	15,
	0);
INSERT INTO R_OIR
	VALUES (6,
	14,
	15,
	5);
INSERT INTO R_FORM
	VALUES (12,
	14,
	17,
	0,
	1,
	'is executed through');
INSERT INTO R_RGO
	VALUES (12,
	14,
	17);
INSERT INTO R_OIR
	VALUES (12,
	14,
	17,
	0);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (12,
	'Automatic Wiring',
	3200,
	'S_AW',
	'An instance of Automatic Wiring is created for each bridge within the Domain. 
Whenever a Bridge is found with no action language in it and has an External
Entity whose name matches another Domain in the verification and that exposes a 
Function whose name and arguments match that of the Bridge, the Automatic Wiring
is then associated with the matching Function.',
	4);
INSERT INTO O_TFR
	VALUES (18,
	12,
	'dispose',
	'',
	19,
	1,
	'// Automatic Wiring.dispose()

select one function related by self->S_SYNC[R3201];
if (not_empty function)
  unrelate function from self across R3201;
end if;

select one brg related by self->S_BRG[R3200];
if (not_empty brg)
  unrelate brg from self across R3200;
end if;

delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (12,
	6,
	0,
	16,
	14,
	17,
	15,
	20,
	21,
	0,
	0,
	'',
	'Bridge',
	'Brg_ID',
	'R3200');
INSERT INTO O_RATTR
	VALUES (20,
	12,
	16,
	6,
	1,
	'Brg_ID');
INSERT INTO O_ATTR
	VALUES (20,
	12,
	0,
	'Brg_ID',
	'',
	'',
	'Brg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (12,
	8,
	0,
	11,
	9,
	13,
	10,
	23,
	24,
	0,
	0,
	'',
	'Function',
	'Sync_ID',
	'R3201');
INSERT INTO O_RATTR
	VALUES (23,
	12,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (23,
	12,
	20,
	'Sync_ID',
	'',
	'',
	'Sync_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	12);
INSERT INTO O_ID
	VALUES (1,
	12);
INSERT INTO O_ID
	VALUES (2,
	12);
-- BP 7.1 content: Subsystem syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SS
	VALUES (27,
	'Value',
	'This subsystem formalizes the concepts of values (r-values) and variables 
(l-values). It also captures the concept of an actual parameter.
Notify_Changes:false
Persistent:false
// This is used by schema_gen to ignore this subsystem (for publication)
TRANSLATE_FOR_EXTERNAL_USE:FALSE
',
	'V',
	800,
	1,
	28);
INSERT INTO S_SID
	VALUES (1,
	27);
INSERT INTO O_IOBJ
	VALUES (29,
	30,
	5,
	27,
	'Model Class',
	'O_OBJ');
INSERT INTO O_IOBJ
	VALUES (31,
	32,
	5,
	27,
	'Data Type',
	'S_DT');
INSERT INTO O_IOBJ
	VALUES (33,
	32,
	5,
	27,
	'Data Type',
	'S_DT');
INSERT INTO O_IOBJ
	VALUES (34,
	35,
	5,
	27,
	'Block',
	'ACT_BLK');
INSERT INTO O_IOBJ
	VALUES (36,
	37,
	5,
	27,
	'Attribute',
	'O_ATTR');
INSERT INTO O_IOBJ
	VALUES (38,
	39,
	5,
	27,
	'Enumerator',
	'S_ENUM');
INSERT INTO O_IOBJ
	VALUES (40,
	35,
	5,
	27,
	'Block',
	'ACT_BLK');
INSERT INTO O_IOBJ
	VALUES (41,
	8,
	5,
	27,
	'Function',
	'S_SYNC');
INSERT INTO O_IOBJ
	VALUES (42,
	43,
	5,
	27,
	'Operation',
	'O_TFR');
INSERT INTO O_IOBJ
	VALUES (44,
	6,
	5,
	27,
	'Bridge',
	'S_BRG');
INSERT INTO O_IOBJ
	VALUES (45,
	46,
	5,
	27,
	'Bridge Parameter',
	'S_BPARM');
INSERT INTO O_IOBJ
	VALUES (47,
	48,
	5,
	27,
	'Function Parameter',
	'S_SPARM');
INSERT INTO O_IOBJ
	VALUES (49,
	50,
	5,
	27,
	'Operation Parameter',
	'O_TPARM');
INSERT INTO O_IOBJ
	VALUES (51,
	52,
	5,
	27,
	'State Machine Event Data Item',
	'SM_EVTDI');
INSERT INTO O_IOBJ
	VALUES (53,
	37,
	0,
	27,
	'Attribute',
	'O_ATTR');
INSERT INTO O_IOBJ
	VALUES (54,
	55,
	0,
	27,
	'Structure Member',
	'S_MBR');
INSERT INTO O_IOBJ
	VALUES (56,
	57,
	0,
	27,
	'Property Parameter',
	'C_PP');
INSERT INTO O_IOBJ
	VALUES (58,
	59,
	0,
	27,
	'Dimensions',
	'S_DIM');
INSERT INTO O_IOBJ
	VALUES (60,
	61,
	0,
	27,
	'Provided Executable Property',
	'SPR_PEP');
INSERT INTO O_IOBJ
	VALUES (62,
	63,
	0,
	27,
	'Required Executable Property',
	'SPR_REP');
INSERT INTO O_IOBJ
	VALUES (64,
	57,
	0,
	27,
	'Property Parameter',
	'C_PP');
INSERT INTO O_IOBJ
	VALUES (65,
	66,
	0,
	27,
	'Symbolic Constant',
	'CNST_SYC');
INSERT INTO R_SIMP
	VALUES (67);
INSERT INTO R_REL
	VALUES (67,
	800,
	'',
	27);
INSERT INTO R_FORM
	VALUES (68,
	67,
	69,
	0,
	1,
	'is value of');
INSERT INTO R_RGO
	VALUES (68,
	67,
	69);
INSERT INTO R_OIR
	VALUES (68,
	67,
	69,
	0);
INSERT INTO R_PART
	VALUES (70,
	67,
	71,
	0,
	0,
	'has');
INSERT INTO O_RTIDA
	VALUES (72,
	70,
	0,
	67,
	71);
INSERT INTO R_RTO
	VALUES (70,
	67,
	71,
	0);
INSERT INTO R_OIR
	VALUES (70,
	67,
	71,
	0);
INSERT INTO R_SIMP
	VALUES (73);
INSERT INTO R_REL
	VALUES (73,
	804,
	'',
	27);
INSERT INTO R_PART
	VALUES (70,
	73,
	74,
	0,
	0,
	'has operand');
INSERT INTO O_RTIDA
	VALUES (72,
	70,
	0,
	73,
	74);
INSERT INTO R_RTO
	VALUES (70,
	73,
	74,
	0);
INSERT INTO R_OIR
	VALUES (70,
	73,
	74,
	0);
INSERT INTO R_FORM
	VALUES (75,
	73,
	76,
	0,
	1,
	'is operand to');
INSERT INTO R_RGO
	VALUES (75,
	73,
	76);
INSERT INTO R_OIR
	VALUES (75,
	73,
	76,
	0);
INSERT INTO R_SIMP
	VALUES (77);
INSERT INTO R_REL
	VALUES (77,
	803,
	'',
	27);
INSERT INTO R_PART
	VALUES (70,
	77,
	78,
	0,
	0,
	'has right');
INSERT INTO O_RTIDA
	VALUES (72,
	70,
	0,
	77,
	78);
INSERT INTO R_RTO
	VALUES (70,
	77,
	78,
	0);
INSERT INTO R_OIR
	VALUES (70,
	77,
	78,
	0);
INSERT INTO R_FORM
	VALUES (79,
	77,
	80,
	0,
	1,
	'is right operand to');
INSERT INTO R_RGO
	VALUES (79,
	77,
	80);
INSERT INTO R_OIR
	VALUES (79,
	77,
	80,
	0);
INSERT INTO R_SIMP
	VALUES (81);
INSERT INTO R_REL
	VALUES (81,
	802,
	'',
	27);
INSERT INTO R_PART
	VALUES (70,
	81,
	82,
	0,
	0,
	'has left');
INSERT INTO O_RTIDA
	VALUES (72,
	70,
	0,
	81,
	82);
INSERT INTO R_RTO
	VALUES (70,
	81,
	82,
	0);
INSERT INTO R_OIR
	VALUES (70,
	81,
	82,
	0);
INSERT INTO R_FORM
	VALUES (79,
	81,
	83,
	0,
	1,
	'is left operand to');
INSERT INTO R_RGO
	VALUES (79,
	81,
	83);
INSERT INTO R_OIR
	VALUES (79,
	81,
	83,
	0);
INSERT INTO R_SUBSUP
	VALUES (84);
INSERT INTO R_REL
	VALUES (84,
	801,
	'',
	27);
INSERT INTO R_SUPER
	VALUES (70,
	84,
	85);
INSERT INTO O_RTIDA
	VALUES (72,
	70,
	0,
	84,
	85);
INSERT INTO R_RTO
	VALUES (70,
	84,
	85,
	0);
INSERT INTO R_OIR
	VALUES (70,
	84,
	85,
	0);
INSERT INTO R_SUB
	VALUES (86,
	84,
	87);
INSERT INTO R_RGO
	VALUES (86,
	84,
	87);
INSERT INTO R_OIR
	VALUES (86,
	84,
	87,
	0);
INSERT INTO R_SUB
	VALUES (88,
	84,
	89);
INSERT INTO R_RGO
	VALUES (88,
	84,
	89);
INSERT INTO R_OIR
	VALUES (88,
	84,
	89,
	0);
INSERT INTO R_SUB
	VALUES (90,
	84,
	91);
INSERT INTO R_RGO
	VALUES (90,
	84,
	91);
INSERT INTO R_OIR
	VALUES (90,
	84,
	91,
	0);
INSERT INTO R_SUB
	VALUES (92,
	84,
	93);
INSERT INTO R_RGO
	VALUES (92,
	84,
	93);
INSERT INTO R_OIR
	VALUES (92,
	84,
	93,
	0);
INSERT INTO R_SUB
	VALUES (94,
	84,
	95);
INSERT INTO R_RGO
	VALUES (94,
	84,
	95);
INSERT INTO R_OIR
	VALUES (94,
	84,
	95,
	0);
INSERT INTO R_SUB
	VALUES (96,
	84,
	97);
INSERT INTO R_RGO
	VALUES (96,
	84,
	97);
INSERT INTO R_OIR
	VALUES (96,
	84,
	97,
	0);
INSERT INTO R_SUB
	VALUES (98,
	84,
	99);
INSERT INTO R_RGO
	VALUES (98,
	84,
	99);
INSERT INTO R_OIR
	VALUES (98,
	84,
	99,
	0);
INSERT INTO R_SUB
	VALUES (100,
	84,
	101);
INSERT INTO R_RGO
	VALUES (100,
	84,
	101);
INSERT INTO R_OIR
	VALUES (100,
	84,
	101,
	0);
INSERT INTO R_SUB
	VALUES (75,
	84,
	102);
INSERT INTO R_RGO
	VALUES (75,
	84,
	102);
INSERT INTO R_OIR
	VALUES (75,
	84,
	102,
	0);
INSERT INTO R_SUB
	VALUES (103,
	84,
	104);
INSERT INTO R_RGO
	VALUES (103,
	84,
	104);
INSERT INTO R_OIR
	VALUES (103,
	84,
	104,
	0);
INSERT INTO R_SUB
	VALUES (105,
	84,
	106);
INSERT INTO R_RGO
	VALUES (105,
	84,
	106);
INSERT INTO R_OIR
	VALUES (105,
	84,
	106,
	0);
INSERT INTO R_SUB
	VALUES (107,
	84,
	108);
INSERT INTO R_RGO
	VALUES (107,
	84,
	108);
INSERT INTO R_OIR
	VALUES (107,
	84,
	108,
	0);
INSERT INTO R_SUB
	VALUES (109,
	84,
	110);
INSERT INTO R_RGO
	VALUES (109,
	84,
	110);
INSERT INTO R_OIR
	VALUES (109,
	84,
	110,
	0);
INSERT INTO R_SUB
	VALUES (111,
	84,
	112);
INSERT INTO R_RGO
	VALUES (111,
	84,
	112);
INSERT INTO R_OIR
	VALUES (111,
	84,
	112,
	0);
INSERT INTO R_SUB
	VALUES (113,
	84,
	114);
INSERT INTO R_RGO
	VALUES (113,
	84,
	114);
INSERT INTO R_OIR
	VALUES (113,
	84,
	114,
	0);
INSERT INTO R_SUB
	VALUES (79,
	84,
	115);
INSERT INTO R_RGO
	VALUES (79,
	84,
	115);
INSERT INTO R_OIR
	VALUES (79,
	84,
	115,
	0);
INSERT INTO R_SUB
	VALUES (116,
	84,
	117);
INSERT INTO R_RGO
	VALUES (116,
	84,
	117);
INSERT INTO R_OIR
	VALUES (116,
	84,
	117,
	0);
INSERT INTO R_SUB
	VALUES (118,
	84,
	119);
INSERT INTO R_RGO
	VALUES (118,
	84,
	119);
INSERT INTO R_OIR
	VALUES (118,
	84,
	119,
	0);
INSERT INTO R_SUB
	VALUES (120,
	84,
	121);
INSERT INTO R_RGO
	VALUES (120,
	84,
	121);
INSERT INTO R_OIR
	VALUES (120,
	84,
	121,
	0);
INSERT INTO R_SUB
	VALUES (122,
	84,
	123);
INSERT INTO R_RGO
	VALUES (122,
	84,
	123);
INSERT INTO R_OIR
	VALUES (122,
	84,
	123,
	0);
INSERT INTO R_SUB
	VALUES (124,
	84,
	125);
INSERT INTO R_RGO
	VALUES (124,
	84,
	125);
INSERT INTO R_OIR
	VALUES (124,
	84,
	125,
	0);
INSERT INTO R_SUB
	VALUES (126,
	84,
	127);
INSERT INTO R_RGO
	VALUES (126,
	84,
	127);
INSERT INTO R_OIR
	VALUES (126,
	84,
	127,
	0);
INSERT INTO R_SUBSUP
	VALUES (128);
INSERT INTO R_REL
	VALUES (128,
	814,
	'',
	27);
INSERT INTO R_SUPER
	VALUES (129,
	128,
	130);
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	128,
	130);
INSERT INTO R_RTO
	VALUES (129,
	128,
	130,
	0);
INSERT INTO R_OIR
	VALUES (129,
	128,
	130,
	0);
INSERT INTO R_SUB
	VALUES (132,
	128,
	133);
INSERT INTO R_RGO
	VALUES (132,
	128,
	133);
INSERT INTO R_OIR
	VALUES (132,
	128,
	133,
	0);
INSERT INTO R_SUB
	VALUES (134,
	128,
	135);
INSERT INTO R_RGO
	VALUES (134,
	128,
	135);
INSERT INTO R_OIR
	VALUES (134,
	128,
	135,
	0);
INSERT INTO R_SUB
	VALUES (136,
	128,
	137);
INSERT INTO R_RGO
	VALUES (136,
	128,
	137);
INSERT INTO R_OIR
	VALUES (136,
	128,
	137,
	0);
INSERT INTO R_SIMP
	VALUES (138);
INSERT INTO R_REL
	VALUES (138,
	805,
	'',
	27);
INSERT INTO R_PART
	VALUES (129,
	138,
	139,
	0,
	0,
	'references');
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	138,
	139);
INSERT INTO R_RTO
	VALUES (129,
	138,
	139,
	0);
INSERT INTO R_OIR
	VALUES (129,
	138,
	139,
	0);
INSERT INTO R_FORM
	VALUES (109,
	138,
	140,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (109,
	138,
	140);
INSERT INTO R_OIR
	VALUES (109,
	138,
	140,
	0);
INSERT INTO R_SIMP
	VALUES (141);
INSERT INTO R_REL
	VALUES (141,
	808,
	'',
	27);
INSERT INTO R_PART
	VALUES (129,
	141,
	142,
	0,
	0,
	'refers to');
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	141,
	142);
INSERT INTO R_RTO
	VALUES (129,
	141,
	142,
	0);
INSERT INTO R_OIR
	VALUES (129,
	141,
	142,
	0);
INSERT INTO R_FORM
	VALUES (94,
	141,
	143,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (94,
	141,
	143);
INSERT INTO R_OIR
	VALUES (94,
	141,
	143,
	0);
INSERT INTO R_SIMP
	VALUES (144);
INSERT INTO R_REL
	VALUES (144,
	809,
	'',
	27);
INSERT INTO R_PART
	VALUES (129,
	144,
	145,
	0,
	0,
	'refers to');
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	144,
	145);
INSERT INTO R_RTO
	VALUES (129,
	144,
	145,
	0);
INSERT INTO R_OIR
	VALUES (129,
	144,
	145,
	0);
INSERT INTO R_FORM
	VALUES (105,
	144,
	146,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (105,
	144,
	146);
INSERT INTO R_OIR
	VALUES (105,
	144,
	146,
	0);
INSERT INTO R_SIMP
	VALUES (147);
INSERT INTO R_REL
	VALUES (147,
	818,
	'',
	27);
INSERT INTO R_FORM
	VALUES (132,
	147,
	148,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (132,
	147,
	148);
INSERT INTO R_OIR
	VALUES (132,
	147,
	148,
	0);
INSERT INTO R_PART
	VALUES (30,
	147,
	149,
	0,
	0,
	'refers to');
INSERT INTO O_RTIDA
	VALUES (150,
	30,
	0,
	147,
	149);
INSERT INTO R_RTO
	VALUES (30,
	147,
	149,
	0);
INSERT INTO R_OIR
	VALUES (30,
	147,
	149,
	29);
INSERT INTO R_SIMP
	VALUES (151);
INSERT INTO R_REL
	VALUES (151,
	819,
	'',
	27);
INSERT INTO R_FORM
	VALUES (134,
	151,
	152,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (134,
	151,
	152);
INSERT INTO R_OIR
	VALUES (134,
	151,
	152,
	0);
INSERT INTO R_PART
	VALUES (30,
	151,
	153,
	0,
	0,
	'refers to');
INSERT INTO O_RTIDA
	VALUES (150,
	30,
	0,
	151,
	153);
INSERT INTO R_RTO
	VALUES (30,
	151,
	153,
	0);
INSERT INTO R_OIR
	VALUES (30,
	151,
	153,
	29);
INSERT INTO R_SIMP
	VALUES (154);
INSERT INTO R_REL
	VALUES (154,
	820,
	'',
	27);
INSERT INTO R_PART
	VALUES (32,
	154,
	155,
	0,
	0,
	'has type');
INSERT INTO O_RTIDA
	VALUES (156,
	32,
	0,
	154,
	155);
INSERT INTO R_RTO
	VALUES (32,
	154,
	155,
	0);
INSERT INTO R_OIR
	VALUES (32,
	154,
	155,
	31);
INSERT INTO R_FORM
	VALUES (70,
	154,
	157,
	1,
	1,
	'is type of');
INSERT INTO R_RGO
	VALUES (70,
	154,
	157);
INSERT INTO R_OIR
	VALUES (70,
	154,
	157,
	0);
INSERT INTO R_SIMP
	VALUES (158);
INSERT INTO R_REL
	VALUES (158,
	821,
	'',
	27);
INSERT INTO R_PART
	VALUES (32,
	158,
	159,
	0,
	1,
	'has');
INSERT INTO O_RTIDA
	VALUES (156,
	32,
	0,
	158,
	159);
INSERT INTO R_RTO
	VALUES (32,
	158,
	159,
	0);
INSERT INTO R_OIR
	VALUES (32,
	158,
	159,
	33);
INSERT INTO R_FORM
	VALUES (136,
	158,
	160,
	1,
	1,
	'is type of');
INSERT INTO R_RGO
	VALUES (136,
	158,
	160);
INSERT INTO R_OIR
	VALUES (136,
	158,
	160,
	0);
INSERT INTO R_SIMP
	VALUES (161);
INSERT INTO R_REL
	VALUES (161,
	823,
	'',
	27);
INSERT INTO R_PART
	VALUES (35,
	161,
	162,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (163,
	35,
	0,
	161,
	162);
INSERT INTO R_RTO
	VALUES (35,
	161,
	162,
	0);
INSERT INTO R_OIR
	VALUES (35,
	161,
	162,
	34);
INSERT INTO R_FORM
	VALUES (129,
	161,
	164,
	1,
	1,
	'is scope for');
INSERT INTO R_RGO
	VALUES (129,
	161,
	164);
INSERT INTO R_OIR
	VALUES (129,
	161,
	164,
	0);
INSERT INTO R_SIMP
	VALUES (165);
INSERT INTO R_REL
	VALUES (165,
	806,
	'',
	27);
INSERT INTO R_FORM
	VALUES (96,
	165,
	166,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (96,
	165,
	166);
INSERT INTO R_OIR
	VALUES (96,
	165,
	166,
	0);
INSERT INTO R_PART
	VALUES (37,
	165,
	167,
	0,
	0,
	'is value of');
INSERT INTO O_RTIDA
	VALUES (168,
	37,
	0,
	165,
	167);
INSERT INTO O_RTIDA
	VALUES (169,
	37,
	0,
	165,
	167);
INSERT INTO R_RTO
	VALUES (37,
	165,
	167,
	0);
INSERT INTO R_OIR
	VALUES (37,
	165,
	167,
	36);
INSERT INTO R_SIMP
	VALUES (170);
INSERT INTO R_REL
	VALUES (170,
	824,
	'',
	27);
INSERT INTO R_PART
	VALUES (39,
	170,
	171,
	0,
	0,
	'has value');
INSERT INTO O_RTIDA
	VALUES (172,
	39,
	0,
	170,
	171);
INSERT INTO R_RTO
	VALUES (39,
	170,
	171,
	0);
INSERT INTO R_OIR
	VALUES (39,
	170,
	171,
	38);
INSERT INTO R_FORM
	VALUES (116,
	170,
	173,
	1,
	1,
	'is value of');
INSERT INTO R_RGO
	VALUES (116,
	170,
	173);
INSERT INTO R_OIR
	VALUES (116,
	170,
	173,
	0);
INSERT INTO R_SIMP
	VALUES (174);
INSERT INTO R_REL
	VALUES (174,
	825,
	'This association is conditional because the value
retrieved from the selected instance is either an attribute
or the result of an operation invocation.
',
	27);
INSERT INTO R_FORM
	VALUES (90,
	174,
	175,
	0,
	1,
	'');
INSERT INTO R_RGO
	VALUES (90,
	174,
	175);
INSERT INTO R_OIR
	VALUES (90,
	174,
	175,
	0);
INSERT INTO R_PART
	VALUES (103,
	174,
	176,
	0,
	1,
	'value');
INSERT INTO O_RTIDA
	VALUES (177,
	103,
	0,
	174,
	176);
INSERT INTO R_RTO
	VALUES (103,
	174,
	176,
	0);
INSERT INTO R_OIR
	VALUES (103,
	174,
	176,
	0);
INSERT INTO R_SIMP
	VALUES (178);
INSERT INTO R_REL
	VALUES (178,
	826,
	'',
	27);
INSERT INTO R_PART
	VALUES (35,
	178,
	179,
	0,
	0,
	'has scope');
INSERT INTO O_RTIDA
	VALUES (163,
	35,
	0,
	178,
	179);
INSERT INTO R_RTO
	VALUES (35,
	178,
	179,
	0);
INSERT INTO R_OIR
	VALUES (35,
	178,
	179,
	40);
INSERT INTO R_FORM
	VALUES (70,
	178,
	180,
	1,
	1,
	'defines scope of');
INSERT INTO R_RGO
	VALUES (70,
	178,
	180);
INSERT INTO R_OIR
	VALUES (70,
	178,
	180,
	0);
INSERT INTO R_SIMP
	VALUES (181);
INSERT INTO R_REL
	VALUES (181,
	817,
	'',
	27);
INSERT INTO R_PART
	VALUES (86,
	181,
	182,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (183,
	86,
	0,
	181,
	182);
INSERT INTO R_RTO
	VALUES (86,
	181,
	182,
	0);
INSERT INTO R_OIR
	VALUES (86,
	181,
	182,
	0);
INSERT INTO R_FORM
	VALUES (68,
	181,
	184,
	1,
	1,
	'has');
INSERT INTO R_RGO
	VALUES (68,
	181,
	184);
INSERT INTO R_OIR
	VALUES (68,
	181,
	184,
	0);
INSERT INTO R_SIMP
	VALUES (185);
INSERT INTO R_REL
	VALUES (185,
	810,
	'',
	27);
INSERT INTO R_PART
	VALUES (92,
	185,
	186,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (187,
	92,
	0,
	185,
	186);
INSERT INTO R_RTO
	VALUES (92,
	185,
	186,
	0);
INSERT INTO R_OIR
	VALUES (92,
	185,
	186,
	0);
INSERT INTO R_FORM
	VALUES (68,
	185,
	188,
	1,
	1,
	'has');
INSERT INTO R_RGO
	VALUES (68,
	185,
	188);
INSERT INTO R_OIR
	VALUES (68,
	185,
	188,
	0);
INSERT INTO R_SIMP
	VALUES (189);
INSERT INTO R_REL
	VALUES (189,
	811,
	'',
	27);
INSERT INTO R_PART
	VALUES (103,
	189,
	190,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (177,
	103,
	0,
	189,
	190);
INSERT INTO R_RTO
	VALUES (103,
	189,
	190,
	0);
INSERT INTO R_OIR
	VALUES (103,
	189,
	190,
	0);
INSERT INTO R_FORM
	VALUES (68,
	189,
	191,
	1,
	1,
	'has');
INSERT INTO R_RGO
	VALUES (68,
	189,
	191);
INSERT INTO R_OIR
	VALUES (68,
	189,
	191,
	0);
INSERT INTO R_SIMP
	VALUES (192);
INSERT INTO R_REL
	VALUES (192,
	827,
	'',
	27);
INSERT INTO R_FORM
	VALUES (86,
	192,
	193,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (86,
	192,
	193);
INSERT INTO R_OIR
	VALUES (86,
	192,
	193,
	0);
INSERT INTO R_PART
	VALUES (8,
	192,
	194,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (11,
	8,
	0,
	192,
	194);
INSERT INTO R_RTO
	VALUES (8,
	192,
	194,
	0);
INSERT INTO R_OIR
	VALUES (8,
	192,
	194,
	41);
INSERT INTO R_SIMP
	VALUES (195);
INSERT INTO R_REL
	VALUES (195,
	828,
	'',
	27);
INSERT INTO R_FORM
	VALUES (92,
	195,
	196,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (92,
	195,
	196);
INSERT INTO R_OIR
	VALUES (92,
	195,
	196,
	0);
INSERT INTO R_PART
	VALUES (6,
	195,
	197,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (16,
	6,
	0,
	195,
	197);
INSERT INTO R_RTO
	VALUES (6,
	195,
	197,
	0);
INSERT INTO R_OIR
	VALUES (6,
	195,
	197,
	44);
INSERT INTO R_SIMP
	VALUES (198);
INSERT INTO R_REL
	VALUES (198,
	829,
	'',
	27);
INSERT INTO R_FORM
	VALUES (103,
	198,
	199,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (103,
	198,
	199);
INSERT INTO R_OIR
	VALUES (103,
	198,
	199,
	0);
INSERT INTO R_PART
	VALUES (43,
	198,
	200,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (201,
	43,
	0,
	198,
	200);
INSERT INTO R_RTO
	VALUES (43,
	198,
	200,
	0);
INSERT INTO R_OIR
	VALUES (43,
	198,
	200,
	42);
INSERT INTO R_SIMP
	VALUES (202);
INSERT INTO R_REL
	VALUES (202,
	816,
	'',
	27);
INSERT INTO R_PART
	VALUES (68,
	202,
	203,
	0,
	1,
	'precedes');
INSERT INTO O_RTIDA
	VALUES (204,
	68,
	0,
	202,
	203);
INSERT INTO R_RTO
	VALUES (68,
	202,
	203,
	0);
INSERT INTO R_OIR
	VALUES (68,
	202,
	203,
	0);
INSERT INTO R_FORM
	VALUES (68,
	202,
	205,
	0,
	1,
	'succeeds');
INSERT INTO R_RGO
	VALUES (68,
	202,
	205);
INSERT INTO R_OIR
	VALUES (68,
	202,
	205,
	0);
INSERT INTO R_SIMP
	VALUES (206);
INSERT INTO R_REL
	VALUES (206,
	830,
	'',
	27);
INSERT INTO R_FORM
	VALUES (103,
	206,
	207,
	1,
	1,
	'variable');
INSERT INTO R_RGO
	VALUES (103,
	206,
	207);
INSERT INTO R_OIR
	VALUES (103,
	206,
	207,
	0);
INSERT INTO R_PART
	VALUES (129,
	206,
	208,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	206,
	208);
INSERT INTO R_RTO
	VALUES (129,
	206,
	208,
	0);
INSERT INTO R_OIR
	VALUES (129,
	206,
	208,
	0);
INSERT INTO R_SIMP
	VALUES (209);
INSERT INTO R_REL
	VALUES (209,
	831,
	'',
	27);
INSERT INTO R_PART
	VALUES (46,
	209,
	210,
	0,
	1,
	'is a value of');
INSERT INTO O_RTIDA
	VALUES (211,
	46,
	0,
	209,
	210);
INSERT INTO R_RTO
	VALUES (46,
	209,
	210,
	0);
INSERT INTO R_OIR
	VALUES (46,
	209,
	210,
	45);
INSERT INTO R_FORM
	VALUES (88,
	209,
	212,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (88,
	209,
	212);
INSERT INTO R_OIR
	VALUES (88,
	209,
	212,
	0);
INSERT INTO R_SIMP
	VALUES (213);
INSERT INTO R_REL
	VALUES (213,
	832,
	'',
	27);
INSERT INTO R_PART
	VALUES (48,
	213,
	214,
	0,
	1,
	'is a value of');
INSERT INTO O_RTIDA
	VALUES (215,
	48,
	0,
	213,
	214);
INSERT INTO R_RTO
	VALUES (48,
	213,
	214,
	0);
INSERT INTO R_OIR
	VALUES (48,
	213,
	214,
	47);
INSERT INTO R_FORM
	VALUES (88,
	213,
	216,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (88,
	213,
	216);
INSERT INTO R_OIR
	VALUES (88,
	213,
	216,
	0);
INSERT INTO R_SIMP
	VALUES (217);
INSERT INTO R_REL
	VALUES (217,
	833,
	'',
	27);
INSERT INTO R_PART
	VALUES (50,
	217,
	218,
	0,
	1,
	'is a value of');
INSERT INTO O_RTIDA
	VALUES (219,
	50,
	0,
	217,
	218);
INSERT INTO R_RTO
	VALUES (50,
	217,
	218,
	0);
INSERT INTO R_OIR
	VALUES (50,
	217,
	218,
	49);
INSERT INTO R_FORM
	VALUES (88,
	217,
	220,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (88,
	217,
	220);
INSERT INTO R_OIR
	VALUES (88,
	217,
	220,
	0);
INSERT INTO R_SIMP
	VALUES (221);
INSERT INTO R_REL
	VALUES (221,
	835,
	'',
	27);
INSERT INTO R_PART
	VALUES (129,
	221,
	222,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	221,
	222);
INSERT INTO R_RTO
	VALUES (129,
	221,
	222,
	0);
INSERT INTO R_OIR
	VALUES (129,
	221,
	222,
	0);
INSERT INTO R_FORM
	VALUES (223,
	221,
	224,
	1,
	0,
	'');
INSERT INTO R_RGO
	VALUES (223,
	221,
	224);
INSERT INTO R_OIR
	VALUES (223,
	221,
	224,
	0);
INSERT INTO R_SIMP
	VALUES (225);
INSERT INTO R_REL
	VALUES (225,
	812,
	'',
	27);
INSERT INTO R_FORM
	VALUES (90,
	225,
	226,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (90,
	225,
	226);
INSERT INTO R_OIR
	VALUES (90,
	225,
	226,
	0);
INSERT INTO R_PART
	VALUES (37,
	225,
	227,
	0,
	1,
	'member');
INSERT INTO O_RTIDA
	VALUES (168,
	37,
	0,
	225,
	227);
INSERT INTO O_RTIDA
	VALUES (169,
	37,
	0,
	225,
	227);
INSERT INTO R_RTO
	VALUES (37,
	225,
	227,
	0);
INSERT INTO R_OIR
	VALUES (37,
	225,
	227,
	53);
INSERT INTO R_SIMP
	VALUES (228);
INSERT INTO R_REL
	VALUES (228,
	836,
	'',
	27);
INSERT INTO R_FORM
	VALUES (118,
	228,
	229,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (118,
	228,
	229);
INSERT INTO R_OIR
	VALUES (118,
	228,
	229,
	0);
INSERT INTO R_PART
	VALUES (55,
	228,
	230,
	0,
	0,
	'is value of');
INSERT INTO O_RTIDA
	VALUES (231,
	55,
	0,
	228,
	230);
INSERT INTO O_RTIDA
	VALUES (232,
	55,
	0,
	228,
	230);
INSERT INTO R_RTO
	VALUES (55,
	228,
	230,
	0);
INSERT INTO R_OIR
	VALUES (55,
	228,
	230,
	54);
INSERT INTO R_SIMP
	VALUES (233);
INSERT INTO R_REL
	VALUES (233,
	837,
	'',
	27);
INSERT INTO R_FORM
	VALUES (118,
	233,
	234,
	0,
	1,
	'is root for');
INSERT INTO R_RGO
	VALUES (118,
	233,
	234);
INSERT INTO R_OIR
	VALUES (118,
	233,
	234,
	0);
INSERT INTO R_PART
	VALUES (70,
	233,
	235,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (72,
	70,
	0,
	233,
	235);
INSERT INTO R_RTO
	VALUES (70,
	233,
	235,
	0);
INSERT INTO R_OIR
	VALUES (70,
	233,
	235,
	0);
INSERT INTO R_SIMP
	VALUES (236);
INSERT INTO R_REL
	VALUES (236,
	807,
	'',
	27);
INSERT INTO R_FORM
	VALUES (96,
	236,
	237,
	0,
	1,
	'is root for');
INSERT INTO R_RGO
	VALUES (96,
	236,
	237);
INSERT INTO R_OIR
	VALUES (96,
	236,
	237,
	0);
INSERT INTO R_PART
	VALUES (70,
	236,
	238,
	0,
	0,
	'has root');
INSERT INTO O_RTIDA
	VALUES (72,
	70,
	0,
	236,
	238);
INSERT INTO R_RTO
	VALUES (70,
	236,
	238,
	0);
INSERT INTO R_OIR
	VALUES (70,
	236,
	238,
	0);
INSERT INTO R_SIMP
	VALUES (239);
INSERT INTO R_REL
	VALUES (239,
	838,
	'',
	27);
INSERT INTO R_PART
	VALUES (70,
	239,
	240,
	0,
	0,
	'has root');
INSERT INTO O_RTIDA
	VALUES (72,
	70,
	0,
	239,
	240);
INSERT INTO R_RTO
	VALUES (70,
	239,
	240,
	0);
INSERT INTO R_OIR
	VALUES (70,
	239,
	240,
	0);
INSERT INTO R_FORM
	VALUES (120,
	239,
	241,
	0,
	1,
	'is root for');
INSERT INTO R_RGO
	VALUES (120,
	239,
	241);
INSERT INTO R_OIR
	VALUES (120,
	239,
	241,
	0);
INSERT INTO R_SIMP
	VALUES (242);
INSERT INTO R_REL
	VALUES (242,
	839,
	'',
	27);
INSERT INTO R_FORM
	VALUES (120,
	242,
	243,
	0,
	1,
	'provides index of');
INSERT INTO R_RGO
	VALUES (120,
	242,
	243);
INSERT INTO R_OIR
	VALUES (120,
	242,
	243,
	0);
INSERT INTO R_PART
	VALUES (70,
	242,
	244,
	0,
	0,
	'has index');
INSERT INTO O_RTIDA
	VALUES (72,
	70,
	0,
	242,
	244);
INSERT INTO R_RTO
	VALUES (70,
	242,
	244,
	0);
INSERT INTO R_OIR
	VALUES (70,
	242,
	244,
	0);
INSERT INTO R_SIMP
	VALUES (245);
INSERT INTO R_REL
	VALUES (245,
	840,
	'',
	27);
INSERT INTO R_FORM
	VALUES (122,
	245,
	246,
	0,
	1,
	'has length returned by');
INSERT INTO R_RGO
	VALUES (122,
	245,
	246);
INSERT INTO R_OIR
	VALUES (122,
	245,
	246,
	0);
INSERT INTO R_PART
	VALUES (70,
	245,
	247,
	0,
	0,
	'returns length of');
INSERT INTO O_RTIDA
	VALUES (72,
	70,
	0,
	245,
	247);
INSERT INTO R_RTO
	VALUES (70,
	245,
	247,
	0);
INSERT INTO R_OIR
	VALUES (70,
	245,
	247,
	0);
INSERT INTO R_SIMP
	VALUES (248);
INSERT INTO R_REL
	VALUES (248,
	842,
	'',
	27);
INSERT INTO R_PART
	VALUES (124,
	248,
	249,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (250,
	124,
	0,
	248,
	249);
INSERT INTO R_RTO
	VALUES (124,
	248,
	249,
	0);
INSERT INTO R_OIR
	VALUES (124,
	248,
	249,
	0);
INSERT INTO R_FORM
	VALUES (68,
	248,
	251,
	1,
	1,
	'has');
INSERT INTO R_RGO
	VALUES (68,
	248,
	251);
INSERT INTO R_OIR
	VALUES (68,
	248,
	251,
	0);
INSERT INTO R_SIMP
	VALUES (252);
INSERT INTO R_REL
	VALUES (252,
	843,
	'',
	27);
INSERT INTO R_PART
	VALUES (57,
	252,
	253,
	0,
	1,
	'is a value of');
INSERT INTO O_RTIDA
	VALUES (254,
	57,
	0,
	252,
	253);
INSERT INTO R_RTO
	VALUES (57,
	252,
	253,
	0);
INSERT INTO R_OIR
	VALUES (57,
	252,
	253,
	56);
INSERT INTO R_FORM
	VALUES (88,
	252,
	255,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (88,
	252,
	255);
INSERT INTO R_OIR
	VALUES (88,
	252,
	255,
	0);
INSERT INTO R_SIMP
	VALUES (256);
INSERT INTO R_REL
	VALUES (256,
	844,
	'',
	27);
INSERT INTO R_PART
	VALUES (136,
	256,
	257,
	0,
	1,
	'specifies occurrences of');
INSERT INTO O_RTIDA
	VALUES (258,
	136,
	0,
	256,
	257);
INSERT INTO R_RTO
	VALUES (136,
	256,
	257,
	0);
INSERT INTO R_OIR
	VALUES (136,
	256,
	257,
	0);
INSERT INTO R_FORM
	VALUES (59,
	256,
	259,
	1,
	1,
	'may have');
INSERT INTO R_RGO
	VALUES (59,
	256,
	259);
INSERT INTO R_OIR
	VALUES (59,
	256,
	259,
	58);
INSERT INTO R_SIMP
	VALUES (260);
INSERT INTO R_REL
	VALUES (260,
	841,
	'',
	27);
INSERT INTO R_FORM
	VALUES (124,
	260,
	261,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (124,
	260,
	261);
INSERT INTO R_OIR
	VALUES (124,
	260,
	261,
	0);
INSERT INTO R_PART
	VALUES (61,
	260,
	262,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (263,
	61,
	0,
	260,
	262);
INSERT INTO R_RTO
	VALUES (61,
	260,
	262,
	0);
INSERT INTO R_OIR
	VALUES (61,
	260,
	262,
	60);
INSERT INTO R_SIMP
	VALUES (264);
INSERT INTO R_REL
	VALUES (264,
	845,
	'',
	27);
INSERT INTO R_FORM
	VALUES (124,
	264,
	265,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (124,
	264,
	265);
INSERT INTO R_OIR
	VALUES (124,
	264,
	265,
	0);
INSERT INTO R_PART
	VALUES (63,
	264,
	266,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (267,
	63,
	0,
	264,
	266);
INSERT INTO R_RTO
	VALUES (63,
	264,
	266,
	0);
INSERT INTO R_OIR
	VALUES (63,
	264,
	266,
	62);
INSERT INTO R_SIMP
	VALUES (268);
INSERT INTO R_REL
	VALUES (268,
	834,
	'',
	27);
INSERT INTO R_PART
	VALUES (107,
	268,
	269,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (270,
	107,
	0,
	268,
	269);
INSERT INTO R_RTO
	VALUES (107,
	268,
	269,
	0);
INSERT INTO R_OIR
	VALUES (107,
	268,
	269,
	0);
INSERT INTO R_FORM
	VALUES (271,
	268,
	272,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (271,
	268,
	272);
INSERT INTO R_OIR
	VALUES (271,
	268,
	272,
	0);
INSERT INTO R_SIMP
	VALUES (273);
INSERT INTO R_REL
	VALUES (273,
	846,
	'',
	27);
INSERT INTO R_FORM
	VALUES (271,
	273,
	274,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (271,
	273,
	274);
INSERT INTO R_OIR
	VALUES (271,
	273,
	274,
	0);
INSERT INTO R_PART
	VALUES (52,
	273,
	275,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (276,
	52,
	0,
	273,
	275);
INSERT INTO O_RTIDA
	VALUES (277,
	52,
	0,
	273,
	275);
INSERT INTO R_RTO
	VALUES (52,
	273,
	275,
	0);
INSERT INTO R_OIR
	VALUES (52,
	273,
	275,
	51);
INSERT INTO R_SIMP
	VALUES (278);
INSERT INTO R_REL
	VALUES (278,
	847,
	'',
	27);
INSERT INTO R_FORM
	VALUES (271,
	278,
	279,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (271,
	278,
	279);
INSERT INTO R_OIR
	VALUES (271,
	278,
	279,
	0);
INSERT INTO R_PART
	VALUES (57,
	278,
	280,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (254,
	57,
	0,
	278,
	280);
INSERT INTO R_RTO
	VALUES (57,
	278,
	280,
	0);
INSERT INTO R_OIR
	VALUES (57,
	278,
	280,
	64);
INSERT INTO R_SIMP
	VALUES (281);
INSERT INTO R_REL
	VALUES (281,
	848,
	'',
	27);
INSERT INTO R_PART
	VALUES (32,
	281,
	282,
	0,
	0,
	'has');
INSERT INTO O_RTIDA
	VALUES (156,
	32,
	0,
	281,
	282);
INSERT INTO R_RTO
	VALUES (32,
	281,
	282,
	0);
INSERT INTO R_OIR
	VALUES (32,
	281,
	282,
	33);
INSERT INTO R_FORM
	VALUES (129,
	281,
	283,
	1,
	1,
	'is type of');
INSERT INTO R_RGO
	VALUES (129,
	281,
	283);
INSERT INTO R_OIR
	VALUES (129,
	281,
	283,
	0);
INSERT INTO R_SIMP
	VALUES (284);
INSERT INTO R_REL
	VALUES (284,
	849,
	'',
	27);
INSERT INTO R_FORM
	VALUES (59,
	284,
	285,
	1,
	1,
	'may have');
INSERT INTO R_RGO
	VALUES (59,
	284,
	285);
INSERT INTO R_OIR
	VALUES (59,
	284,
	285,
	58);
INSERT INTO R_PART
	VALUES (129,
	284,
	286,
	0,
	1,
	'specifies occurrences of');
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	284,
	286);
INSERT INTO R_RTO
	VALUES (129,
	284,
	286,
	0);
INSERT INTO R_OIR
	VALUES (129,
	284,
	286,
	0);
INSERT INTO R_SIMP
	VALUES (287);
INSERT INTO R_REL
	VALUES (287,
	850,
	'',
	27);
INSERT INTO R_FORM
	VALUES (126,
	287,
	288,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (126,
	287,
	288);
INSERT INTO R_OIR
	VALUES (126,
	287,
	288,
	0);
INSERT INTO R_PART
	VALUES (66,
	287,
	289,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (290,
	66,
	0,
	287,
	289);
INSERT INTO O_RTIDA
	VALUES (291,
	66,
	0,
	287,
	289);
INSERT INTO R_RTO
	VALUES (66,
	287,
	289,
	0);
INSERT INTO R_OIR
	VALUES (66,
	287,
	289,
	65);
INSERT INTO R_SIMP
	VALUES (292);
INSERT INTO R_REL
	VALUES (292,
	851,
	'',
	27);
INSERT INTO R_FORM
	VALUES (124,
	292,
	293,
	1,
	1,
	'is target of');
INSERT INTO R_RGO
	VALUES (124,
	292,
	293);
INSERT INTO R_OIR
	VALUES (124,
	292,
	293,
	0);
INSERT INTO R_PART
	VALUES (70,
	292,
	294,
	0,
	1,
	'has target');
INSERT INTO O_RTIDA
	VALUES (72,
	70,
	0,
	292,
	294);
INSERT INTO R_RTO
	VALUES (70,
	292,
	294,
	0);
INSERT INTO R_OIR
	VALUES (70,
	292,
	294,
	0);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (223,
	'Variable Location',
	824,
	'V_LOC',
	'A location in the activity where the variable appears.  VariableLocations
can be either l-values or r-values.  The variable which this location
applies to is either an instance of the Variable class (R835), or a by 
reference parameter acting as an l-value (R688).  Parameters acting as
r-values are captured by R835.',
	27);
INSERT INTO O_NBATTR
	VALUES (295,
	223);
INSERT INTO O_BATTR
	VALUES (295,
	223);
INSERT INTO O_ATTR
	VALUES (295,
	223,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	296,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (297,
	223);
INSERT INTO O_BATTR
	VALUES (297,
	223);
INSERT INTO O_ATTR
	VALUES (297,
	223,
	295,
	'LineNumber',
	'The line in the activity for this variable location.',
	'',
	'LineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (299,
	223);
INSERT INTO O_BATTR
	VALUES (299,
	223);
INSERT INTO O_ATTR
	VALUES (299,
	223,
	297,
	'StartPosition',
	'The column in the activity at which this variable location starts.',
	'',
	'StartPosition',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (300,
	223);
INSERT INTO O_BATTR
	VALUES (300,
	223);
INSERT INTO O_ATTR
	VALUES (300,
	223,
	299,
	'EndPosition',
	'The column in the activity at which this variable location ends.',
	'',
	'EndPosition',
	0,
	298,
	'',
	'');
INSERT INTO O_REF
	VALUES (223,
	129,
	0,
	131,
	221,
	224,
	222,
	301,
	302,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R835');
INSERT INTO O_RATTR
	VALUES (301,
	223,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (301,
	223,
	300,
	'Var_ID',
	'',
	'',
	'Var_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	223);
INSERT INTO O_OIDA
	VALUES (295,
	223,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	223);
INSERT INTO O_ID
	VALUES (2,
	223);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (129,
	'Variable',
	815,
	'V_VAR',
	'This class represents a temporary variable or an instance.',
	27);
INSERT INTO O_TFR
	VALUES (303,
	129,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	304);
INSERT INTO O_TFR
	VALUES (305,
	129,
	'migrate_to_int',
	'During parsing, all variables are initially created with a Transient Var (V_TRN) subtype.  If it is determined at a later point the Variable instance should have a subtype of Instance (V_INT), this function is called to migrate the V_TRN subtype instance to a V_INT instance.
--------------------------------------------------------------------------------
Bridge:ALS',
	19,
	1,
	'select one trn related by self->V_TRN[R814];
if ( not_empty trn )
  // need to migrate to V_INT
  unrelate self from trn across R814;
  delete object instance trn;
  create object instance inst_ref of V_INT;
  relate inst_ref to self across R814;
end if;
',
	1,
	'',
	306);
INSERT INTO O_TFR
	VALUES (306,
	129,
	'migrate_to_ins',
	'During parsing, all variables are initially created with a Transient Var (V_TRN) subtype.  If it is determined at a later point the Variable instance should have a subtype of Instance Set (V_INS), this function is called to migrate the V_TRN subtype instance to a V_INS instance.
--------------------------------------------------------------------------------
Bridge:ALS',
	19,
	1,
	'select one trn related by self->V_TRN[R814];
if ( not_empty trn )
  // need to migrate to V_INS
  unrelate self from trn across R814;
  delete object instance trn;
  create object instance inst_ref of V_INS;
  relate inst_ref to self across R814;
end if;
',
	1,
	'',
	307);
INSERT INTO O_TFR
	VALUES (308,
	129,
	'addLocation',
	'',
	19,
	1,
	'create object instance loc of V_LOC;
loc.LineNumber = param.line;
loc.StartPosition = param.col;
loc.EndPosition = loc.StartPosition + GD::strlen(s: self.Name) - 1;
relate loc to self across R835;',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (309,
	308,
	'line',
	298,
	0,
	'',
	310,
	'');
INSERT INTO O_TPARM
	VALUES (310,
	308,
	'col',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (311,
	129,
	'getDimensionsCnt',
	'',
	298,
	1,
	'select many dims related by self->S_DIM[R849];
dimensions = cardinality dims;
return dimensions;',
	1,
	'',
	303);
INSERT INTO O_TFR
	VALUES (312,
	129,
	'resizeDimensions',
	'',
	19,
	1,
	'// If the number of dimensions has increased then add dimensions
while (param.numDimensions > self.getDimensionsCnt())
  create object instance dim of S_DIM;
  dim.dimensionCount = self.getDimensionsCnt();
  relate dim to self across R849;
end while;

// If the number of dimensions has decreased then remove dimensions
while (param.numDimensions < self.getDimensionsCnt())
  select any dim related by self->S_DIM[R849] where (selected.dimensionCount == (self.getDimensionsCnt()-1));
  unrelate dim from self across R849;
  delete object instance dim;
end while;

// Update the specific dimension that was passed-in if its elementCount has
// changed.
if (param.numDimensions > 0)
  select any dim related by self->S_DIM[R849] where (selected.dimensionCount == param.dimension);
  if (dim.elementCount != param.elementCount)
    dim.elementCount = param.elementCount;
  end if;
end if;',
	1,
	'',
	305);
INSERT INTO O_TPARM
	VALUES (313,
	312,
	'dimension',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (314,
	312,
	'elementCount',
	298,
	0,
	'',
	313,
	'');
INSERT INTO O_TPARM
	VALUES (315,
	312,
	'numDimensions',
	298,
	0,
	'',
	314,
	'');
INSERT INTO O_TFR
	VALUES (307,
	129,
	'isReferringToDefaultDataType',
	'',
	316,
	1,
	'select one dt related by self->S_DT[R848];
elementType = Util::getSimpleClassName(element:self.convertToInstance());
if(dt.Name == S_DT::getDefaultDataTypeName(elementType:elementType))
  return true;
end if;
return false;',
	1,
	'',
	311);
INSERT INTO O_TFR
	VALUES (304,
	129,
	'convertToInstance',
	'Translate:native',
	317,
	1,
	'return this;',
	0,
	'',
	318);
INSERT INTO O_TFR
	VALUES (318,
	129,
	'canReferToDataType',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one body related by self->ACT_BLK[R823]->ACT_ACT[R601];
isInGenericPackage = body.associateWithContainer();
if isInGenericPackage
  select one dt related by self->S_DT[R848];
  if (not_empty dt)
    select one containingElem related by body->ACT_BIE[R640]->PE_PE[R640];
    return containingElem.canReferToDataType(dtID:dt.DT_ID, dtName:dt.Name);
  end if;
  return false;
else
  select one dt related by self->S_DT[R848];
  if(not_empty dt)
    select one dtPkg related by dt->S_DIP[R39]->S_DPK[R39];
    body.associateWithOwningComponent();
    select one component related by body->ACT_BIC[R694]->C_C[R694];
    if(not_empty component)
      select one reqSig related by body->ACT_RSB[R698];
      select one reqOp related by body->ACT_ROB[R698];
      select one proSig related by body->ACT_PSB[R698];
      select one proOp related by body->ACT_POB[R698];
      // if any of the following is not empty
      // then the dt must live at the system level
      if(not_empty reqSig)
        if(dtPkg.isDomainLevel())
          return false;
        else
          return true;
        end if;  
      elif(not_empty reqOp)
        select one dtPkg related by dt->S_DIP[R39]->S_DPK[R39];
        if(dtPkg.isDomainLevel())
          return false;
        else
          return true;
        end if;    
      elif(not_empty proSig)
        select one dtPkg related by dt->S_DIP[R39]->S_DPK[R39];
        if(dtPkg.isDomainLevel())
          return false;
        else
          return true;
        end if;  
      elif(not_empty proOp)
        select one dtPkg related by dt->S_DIP[R39]->S_DPK[R39];
        if(dtPkg.isDomainLevel())
          return false;
        else
          return true;
        end if;
      else
        select any domain from instances of S_DOM;
        if(not dtPkg.isDomainLevel())
          return true;
        else
          select one dtDomain related by dt->S_DOM[R14];
          if(dtDomain == domain)
            return true;
          end if;
        end if;
      end if;
    else
      select any domain from instances of S_DOM;
      if(dtPkg.isDomainLevel())
        select one dtDomain related by dt->S_DOM[R14];
        if(domain == dtDomain)
          return true;
        end if;
      else
        return true;
      end if;
    end if;
  end if;
  return false;
end if;',
	1,
	'',
	308);
INSERT INTO O_NBATTR
	VALUES (131,
	129);
INSERT INTO O_BATTR
	VALUES (131,
	129);
INSERT INTO O_ATTR
	VALUES (131,
	129,
	0,
	'Var_ID',
	'

',
	'',
	'Var_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_REF
	VALUES (129,
	35,
	0,
	163,
	161,
	164,
	162,
	319,
	320,
	0,
	0,
	'',
	'Block',
	'Block_ID',
	'R823');
INSERT INTO O_RATTR
	VALUES (319,
	129,
	163,
	35,
	1,
	'Block_ID');
INSERT INTO O_ATTR
	VALUES (319,
	129,
	131,
	'Block_ID',
	'

',
	'',
	'Block_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (321,
	129);
INSERT INTO O_BATTR
	VALUES (321,
	129);
INSERT INTO O_ATTR
	VALUES (321,
	129,
	319,
	'Name',
	'This string represents the name a variable.',
	'',
	'Name',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (323,
	129);
INSERT INTO O_BATTR
	VALUES (323,
	129);
INSERT INTO O_ATTR
	VALUES (323,
	129,
	321,
	'Declared',
	'This attribute is true if the variable has been fully declared. During parsing, there is a span of time between when the variable is first parsed and when we know what the data type of the variable is.  During this time Declared is false.  Once the type of the variable is assigned, Declared is set to true.
--------------------------------------------------------------------------------
Bridge:ALS',
	'',
	'Declared',
	0,
	316,
	'',
	'');
INSERT INTO O_REF
	VALUES (129,
	32,
	0,
	156,
	281,
	283,
	282,
	324,
	325,
	0,
	0,
	'',
	'Data Type',
	'DT_ID',
	'R848.''has''');
INSERT INTO O_RATTR
	VALUES (324,
	129,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (324,
	129,
	323,
	'DT_ID',
	'',
	'',
	'Element_ID',
	2,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	129);
INSERT INTO O_OIDA
	VALUES (131,
	129,
	0,
	'Var_ID');
INSERT INTO O_ID
	VALUES (1,
	129);
INSERT INTO O_ID
	VALUES (2,
	129);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (70,
	'Value',
	800,
	'V_VAL',
	'A value (r-value) may be assigned to a variable, attribute or parameter
(l-values). There are many different kinds of value in a model. This class
captures this observation in a supertype.',
	27);
INSERT INTO O_TFR
	VALUES (326,
	70,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.
',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	327);
INSERT INTO O_TFR
	VALUES (328,
	70,
	'setEndPosition',
	'',
	19,
	1,
	'select one body related by self->ACT_BLK[R826]->ACT_ACT[R601];
if ( self.StartPosition == -1 )
  self.EndPosition = -1;
else
  select one lin related by self->V_LIN[R801];
  if ( not_empty lin )
    self.EndPosition = self.StartPosition + GD::strlen(s: lin.Value) - 1;
    return;
  end if;

  select one lbo related by self->V_LBO[R801];
  if ( not_empty lbo )
    self.EndPosition = self.StartPosition + GD::strlen(s: lbo.Value) - 1;
    return;
  end if;

  select one lst related by self->V_LST[R801];
  if ( not_empty lst )
    self.EndPosition = self.StartPosition + GD::strlen(s: lst.Value); // + 1 - 1
    return;
  end if;

  select one lrl related by self->V_LRL[R801];
  if ( not_empty lrl )
    self.EndPosition = self.StartPosition + GD::strlen(s: lrl.Value) - 1;
    return;
  end if;

  select one bin related by self->V_BIN[R801];
  if ( not_empty bin )
    select one lop related by bin->V_VAL[R802];
    select one rop related by bin->V_VAL[R803];
    self.StartPosition = lop.StartPosition;
    self.EndPosition = rop.EndPosition;
    return;
  end if;

  select one unary related by self->V_UNY[R801];
  if ( not_empty unary )
    select one op related by unary->V_VAL[R804];
    self.EndPosition = op.EndPosition;
    return;
  end if;

  select one len related by self->V_LEN[R801];
  if ( not_empty len )
    select one enum related by len->S_ENUM[R824];
    self.EndPosition = self.StartPosition + GD::strlen(s: enum.Name) - 1;
    return;
  end if;

  select one scv related by self->V_SCV[R801];
  if ( not_empty scv )
    self.EndPosition = self.StartPosition + GD::strlen(s: self.Text) - 1;
    return;
  end if;
                             
  select one irf related by self->V_IRF[R801];
  if ( not_empty irf )
    select one var related by irf->V_VAR[R808];
    self.EndPosition = self.StartPosition + GD::strlen(s: var.Name) - 1;
    return;
  end if;

  select one isr related by self->V_ISR[R801];
  if ( not_empty isr )
    select one var related by isr->V_VAR[R809];
    self.EndPosition = self.StartPosition + GD::strlen(s: var.Name) - 1;
    return;
  end if;

  select one slr related by self->V_SLR[R801];
  if ( not_empty slr )
    // selected references are ignored
    return;
  end if;

  select one fnc related by self->V_FNV[R801];
  if ( not_empty fnc )
    // Function Values are not represented by any text in the OAL, therefore
    // they are ignored here.
    return;
  end if;

  select one brv related by self->V_BRV[R801];
  if ( not_empty brv )
    // Bridge Values are not represented by any text in the OAL, therefore
    // they are ignored here.
    return;
  end if;

  select one trv related by self->V_TRV[R801];
  if ( not_empty trv )
    // Operation Values are not represented by any text in the OAL, therefore
    // they are ignored here.
    return;
  end if;

  select one var related by self->V_TVL[R801]->V_VAR[R805];
  if ( not_empty var )
    self.EndPosition = self.StartPosition + GD::strlen(s: var.Name) - 1;
    return;
  end if;

  // Since all referenced parameters will have
  // the same name, just pick the first one.
  select any evtParmRef related by self->V_EDV[R801]->V_EPR[R834];
  if not_empty evtParmRef
    select one edi related by evtParmRef->SM_EVTDI[R846];
    if ( not_empty edi )
      self.EndPosition = self.StartPosition + GD::strlen(s: edi.Name) - 1;
      return;
    else
      select one propParm related by evtParmRef->C_PP[R847];
      if not_empty propParm
        self.EndPosition = self.StartPosition +
                                               GD::strlen(s: propParm.Name) - 1;
        return;
      end if;
    end if;
  end if;
  select one attr related by self->V_AVL[R801]->O_ATTR[R806];
  if ( not_empty attr )
    self.EndPosition = self.StartPosition + GD::strlen(s: attr.Name) - 1;
    return;
  end if;

  select one parm related by self->V_PVL[R801];
  if ( not_empty parm )
    select one bparm related by parm->S_BPARM[R831];
    if ( not_empty bparm )
      self.EndPosition = self.StartPosition + GD::strlen(s: bparm.Name) - 1;
      return;
    end if;
    select one sparm related by parm->S_SPARM[R832];
    if ( not_empty sparm )
      self.EndPosition = self.StartPosition + GD::strlen(s: sparm.Name) - 1;
      return;
    end if;
    select one tparm related by parm->O_TPARM[R833];
    if ( not_empty tparm )
      self.EndPosition = self.StartPosition + GD::strlen(s: tparm.Name) - 1;
      return;
    end if;
    select one pparm related by parm->C_PP[R843];
    if ( not_empty pparm )
      self.EndPosition = self.StartPosition + GD::strlen(s: pparm.Name) - 1;
      return;
    end if;
    // unknown parameter type
    self.StartPosition = -1;
    self.EndPosition = -1;
    pathMsg = "<No Path Available - Empty instance>";
    if (not_empty body)
      pathMsg = body.getPath();
    end if;
	USER::logError(msg: "Unknown parameter subtype",path:pathMsg);
    return;
  end if;
  select one memberVal related by self->V_MVL[R801];
  if (not_empty memberVal)
    select one member related by memberVal->S_MBR[R836];
    self.EndPosition = self.StartPosition + GD::strlen(s: member.Name) - 1;
    return;
  end if;
  select one aer related by self->V_AER[R801];
  if ( not_empty aer )
    // TODO
    return;
  end if;
  select one alv related by self->V_ALV[R801];
  if ( not_empty alv )
    self.EndPosition = self.StartPosition + 5; // strlen("length") - 1
    return;
  end if;
  select one msv related by self->V_MSV[R801];
  if not_empty msv
    select one message related by msv->SPR_PEP[R841]->C_EP[R4501];
    if(empty message)
      select one message related by msv->SPR_REP[R845]->C_EP[R4500];
    end if;
    if empty message
      pathMsg = "<No Path Available - Empty instance>";
    if (not_empty body)
      pathMsg = body.getPath();
    end if;
	USER::logError(msg: "setEndPosition: No message found",path:pathMsg);
    else
      select one sig related by message->C_AS[R4004];
      if not_empty sig
        self.EndPosition = self.StartPosition + GD::strlen(s: sig.Name);
        return;
      else
        select one op related by message->C_IO[R4004];
        if not_empty op
          self.EndPosition = self.StartPosition + GD::strlen(s: op.Name);
          return;
        else
          pathMsg = "<No Path Available - Empty instance>";
    if (not_empty body)
      pathMsg = body.getPath();
    end if;
	USER::logError(msg: "setEndPosition: Unknown message subtype",path:pathMsg);
        end if;
      end if;
    end if;
    self.StartPosition = -1;
    self.EndPosition = -1;
    return;
  end if;
  // unknown subtype of V_VAL
  self.StartPosition = -1;
  self.EndPosition = -1;
  pathMsg = "<No Path Available - Empty instance>";
    if (not_empty body)
      pathMsg = body.getPath();
    end if;
	USER::logError(msg: "Unknown value subtype",path:pathMsg);
end if;',
	1,
	'',
	329);
INSERT INTO O_TFR
	VALUES (330,
	70,
	'computeValue',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	331);
INSERT INTO O_TPARM
	VALUES (332,
	330,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (333,
	70,
	'setValue',
	'Note: Setting values is only supported for assigning values of invocation
parameters passed by reference.',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	334);
INSERT INTO O_TPARM
	VALUES (335,
	333,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (336,
	333,
	'value',
	317,
	0,
	'',
	335,
	'');
INSERT INTO O_TPARM
	VALUES (337,
	333,
	'member_id',
	296,
	0,
	'',
	336,
	'');
INSERT INTO O_TFR
	VALUES (338,
	70,
	'getValue',
	'',
	317,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return GD::NULL_INSTANCE();',
	1,
	'',
	339);
INSERT INTO O_TPARM
	VALUES (340,
	338,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (341,
	70,
	'hasSubtype',
	'',
	316,
	1,
	'select one lin related by self->V_LIN[R801];
if ( not_empty lin )
  return true;
end if;
select one lbo related by self->V_LBO[R801];
if ( not_empty lbo )
  return true;
end if;
select one lst related by self->V_LST[R801];
if ( not_empty lst )
  return true;
end if;
select one lrl related by self->V_LRL[R801];
if ( not_empty lrl )
  return true;
end if;
select one bin related by self->V_BIN[R801];
if ( not_empty bin )
  return true;
end if;
select one unary related by self->V_UNY[R801];
if ( not_empty unary )
  return true;
end if;
select one len related by self->V_LEN[R801];
if ( not_empty len )
  return true;
end if;
select one irf related by self->V_IRF[R801];
if ( not_empty irf )
  return true;
end if;
select one isr related by self->V_ISR[R801];
if ( not_empty isr )
  return true;
end if;
select one slr related by self->V_SLR[R801];
if ( not_empty slr )
  return true;
end if;
select one fnc related by self->V_FNV[R801];
if ( not_empty fnc )
  return true;
end if;
select one brv related by self->V_BRV[R801];
if ( not_empty brv )
  return true;
end if;
select one trv related by self->V_TRV[R801];
if ( not_empty trv )
  return true;
end if;
select one tvl related by self->V_TVL[R801];
if ( not_empty tvl )
  return true;
end if;
select one edv related by self->V_EDV[R801];
if ( not_empty edv )
  return true;
end if;
select one avl related by self->V_AVL[R801];
if ( not_empty avl )
  return true;
end if;
select one parm related by self->V_PVL[R801];
if ( not_empty parm )
  return true;
end if;
select one memberVal related by self->V_MVL[R801];
if (not_empty memberVal)
  return true;
end if;
return false;',
	1,
	'',
	338);
INSERT INTO O_TFR
	VALUES (339,
	70,
	'getRuntimeValue',
	'',
	296,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return GD::NULL_UNIQUE_ID();
',
	1,
	'',
	342);
INSERT INTO O_TPARM
	VALUES (343,
	339,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (344,
	70,
	'isLeaf',
	'',
	316,
	1,
	'// Value.isLeaf()
select one mvlRef related by self->V_MVL[R837];
select one arrayRef related by self->V_AER[R838];
return empty mvlRef and empty arrayRef;',
	1,
	'',
	341);
INSERT INTO O_TFR
	VALUES (334,
	70,
	'setRank',
	'',
	296,
	1,
	'// Value.setRank
select one tvl related by self->V_TVL[R801];
select one aer related by self->V_AER[R801];
varID = GD::NULL_UNIQUE_ID();
if not_empty tvl
  select one vvar related by tvl->V_VAR[R805];
  if not_empty vvar
    varID = vvar.Var_ID;

    select any rval from instances of V_VAL where param.rval_id == selected.Value_ID;
    rvalNumDimensions = rval.getDimensions();
    totalLvarDims = rvalNumDimensions + param.dimension;
    while ( rvalNumDimensions > 0 )
      // Resize each dimension
      elementCount = rval.getArrayLength(dimension:rvalNumDimensions-1);
      create object instance dim of S_DIM;
      // We may be deep into recursion.  As we unwind the aer dimensions will
      // be added.  Therefore, this dimension is "rvalNumDimensions + param.dimension".
      // If we are not in recursion then param.dimension will be 0;
      dim.dimensionCount = (rvalNumDimensions + param.dimension) - 1; // subtract 1 to make it 0 based
      dim.elementCount = elementCount;
      relate vvar to dim across R849;
      rvalNumDimensions = rvalNumDimensions - 1;
    end while;
  end if;
elif not_empty aer
  select one rootVal related by aer->V_VAL[R838];
  varID = rootVal.setRank(dimension:param.dimension+1, rval_id:param.rval_id);
  select any vvar from instances of V_VAR where selected.Var_ID == varID;
  if (not_empty vvar)
    //TODO: When we support values other then literals this will
    //      need to be parsed.  Until then, we use dynamic sizing (indicated
    //      with a value of 0) when a literal integer is not specified.
    elementCount = 0;

    select one lin related by aer->V_VAL[R839]->V_LIN[R801];
    if (not_empty lin)
      // Add 1 to the value because in this case, this was specified as an
      // array index.
      elementCount = lin.getInteger() + 1;
    end if;

    create object instance dim of S_DIM;
     select many numberOfDims related by vvar->S_DIM[R849]; 
    dim.dimensionCount = cardinality numberOfDims;
    dim.elementCount = elementCount;
    relate vvar to dim across R849;
  end if;
end if;
return varID;
',
	1,
	'',
	328);
INSERT INTO O_TPARM
	VALUES (345,
	334,
	'dimension',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (346,
	334,
	'rval_id',
	296,
	0,
	'',
	345,
	'');
INSERT INTO O_TFR
	VALUES (342,
	70,
	'getDimensions',
	'',
	298,
	1,
	'// Value.getDimensions()
select one memberRef related by self->V_MVL[R801];
select one attrValRef related by self->V_AVL[R801];
select one tranValRef related by self->V_TVL[R801];
select one arrayElemRef related by self->V_AER[R801];
select one funcReturnVal related by self->V_FNV[R801];
select one opReturnVal related by self->V_TRV[R801];
select one brReturnVal related by self->V_BRV[R801];
select one parmVal related by self->V_PVL[R801];
select one evtDatVal related by self->V_EDV[R801];
select one msgVal related by self->V_MSV[R801];
select one instRef related by self->V_IRF[R801];
if not_empty memberRef
  select one member related by memberRef->S_MBR[R836];
  return member.getDimensionsCnt();
elif not_empty instRef
	select one var related by instRef->V_VAR[R808];
	return var.getDimensionsCnt();
elif not_empty attrValRef
  select one attr related by attrValRef->O_ATTR[R806];
  return attr.getDimensionsCnt();
elif not_empty tranValRef
  select one tran related by tranValRef->V_VAR[R805];
  return tran.getDimensionsCnt();
elif not_empty arrayElemRef
  select one rootVal related by arrayElemRef->V_VAL[R838];
  cnt = rootVal.getDimensions() - 1;
  if cnt < 0
    // No action here, but note that this may indicate too many
    // array indices were specified.  We return the negative value
    // here for the caller to handle.  This rountine is most-often
    // called by the parser, and when this is a parse error we want
    // it reported as such.
    // Additionally, note that this behavior is critcal in
    // allowing the parser to determine our position in a multidimensional
    // array.  Through the recursion above, we find the root of the chain and
    // the stack unwinds back to the current position giving us the correct
    // position in a multidimensional array.
  end if;
  return cnt;
elif not_empty funcReturnVal
  select one func related by funcReturnVal->S_SYNC[R827];
  return func.getReturnDimensionsCnt();
elif not_empty opReturnVal
  select one op related by opReturnVal->O_TFR[R829];
  return op.getReturnDimensionsCnt();
elif not_empty brReturnVal
  select one br related by brReturnVal->S_BRG[R828];
  return br.getReturnDimensionsCnt();
elif not_empty parmVal
  select one fnParm related by parmVal->S_SPARM[R832];
  select one opParm related by parmVal->O_TPARM[R833];
  select one brParm related by parmVal->S_BPARM[R831];
  select one ppParm related by parmVal->C_PP[R843];
  if not_empty fnParm
    return fnParm.getDimensionsCnt();
  elif not_empty opParm
    return opParm.getDimensionsCnt();
  elif not_empty brParm
    return brParm.getDimensionsCnt();
  elif(not_empty ppParm)
    return ppParm.getDimensionsCnt();
  else
    // Cannot happen - required to satisfy parser
    return 0;
  end if;
elif not_empty evtDatVal
  // Since all referenced parameters will have
  // the same name, just pick the first one.
  select any evtParmRef related by evtDatVal->V_EPR[R834];
  select one evtdi related by evtParmRef->SM_EVTDI[R846];
  if not_empty evtdi
    return evtdi.getDimensionsCnt();
  else
    select one propParm related by evtParmRef->C_PP[R847];
    return propParm.getDimensionsCnt();
  end if;
elif not_empty msgVal
  select one io related by msgVal->SPR_REP[R845]->C_EP[R4500]->C_IO[R4004];
  if(empty io)
    select one io related by msgVal->SPR_PEP[R841]->C_EP[R4501]->C_IO[R4004];
  end if;
  if not_empty io
    return io.getReturnDimensionsCnt();
  else
    return 0;
  end if;
else
  return 0;
end if;',
	1,
	'',
	347);
INSERT INTO O_TFR
	VALUES (347,
	70,
	'getArrayLength',
	'Return the number of elements allowed in the specified dimension.  A value of
0 indicates that the array is dynamically sized.  A return value of -1 
indicates that the specfied dimension is invalid.   The specified dimension 
parameter is 0-based.',
	298,
	1,
	'// Value.getArrayLength()
select one memberRef related by self->V_MVL[R801];
select one attrValRef related by self->V_AVL[R801];
select one tranValRef related by self->V_TVL[R801];
select one arrayElemRef related by self->V_AER[R801];
select one funcReturnVal related by self->V_FNV[R801];
select one opReturnVal related by self->V_TRV[R801];
select one brReturnVal related by self->V_BRV[R801];
select one parmVal related by self->V_PVL[R801];
select one evtDatVal related by self->V_EDV[R801];
select one msgVal related by self->V_MSV[R801];
select one instRef related by self->V_IRF[R801];
select any dim from instances of S_DIM where selected.DIM_ID==GD::NULL_UNIQUE_ID();
dimensionSize = -1;

if not_empty memberRef
  select any dim related by memberRef->S_MBR[R836]->S_DIM[R53] where (selected.dimensionCount == param.dimension);
elif not_empty instRef
  select any dim related by instRef->V_VAR[R808]->S_DIM[R849] where (selected.dimensionCount == param.dimension);
elif not_empty attrValRef
  select any dim related by attrValRef->O_ATTR[R806]->S_DIM[R120] where (selected.dimensionCount == param.dimension);
elif not_empty tranValRef
  select any dim related by tranValRef->V_VAR[R805]->S_DIM[R849] where (selected.dimensionCount == param.dimension);
elif not_empty arrayElemRef
  select one rootVal related by arrayElemRef->V_VAL[R838];
  return rootVal.getArrayLength(dimension:param.dimension);
elif not_empty funcReturnVal
  select any dim related by funcReturnVal->S_SYNC[R827]->S_DIM[R51] where (selected.dimensionCount == param.dimension);
elif not_empty opReturnVal
  select any dim related by opReturnVal->O_TFR[R829]->S_DIM[R122] where (selected.dimensionCount == param.dimension);
elif not_empty brReturnVal
  select any dim related by brReturnVal->S_BRG[R828]->S_DIM[R50] where (selected.dimensionCount == param.dimension);
elif not_empty parmVal
  select one fnParm related by parmVal->S_SPARM[R832];
  select one opParm related by parmVal->O_TPARM[R833];
  select one brParm related by parmVal->S_BPARM[R831];
  select one prParm related by parmVal->C_PP[R843];
  if not_empty fnParm
    select any dim related by fnParm->S_DIM[R52] where (selected.dimensionCount == param.dimension);
  elif not_empty opParm
    select any dim related by opParm->S_DIM[R121] where (selected.dimensionCount == param.dimension);
  elif not_empty brParm
    select any dim related by brParm->S_DIM[R49] where (selected.dimensionCount == param.dimension);
  elif not_empty prParm
    select any dim related by prParm->S_DIM[R4017] where (selected.dimensionCount == param.dimension);
  else
    // Cannot happen - required to satisfy parser
  end if;
elif not_empty evtDatVal
  select any dim related by evtDatVal->V_EPR[R834]->SM_EVTDI[R846]->S_DIM[R531] where (selected.dimensionCount == param.dimension);
  if empty dim
    // it could be a signal event
    select any dim related by evtDatVal->V_EPR[R834]->C_PP[R847]->S_DIM[R4017]
                             where (selected.dimensionCount == param.dimension);
  end if;
elif not_empty msgVal
  select any dim related by msgVal->SPR_REP[R845]->C_EP[R4500]->C_IO[R4004]->S_DIM[R4018] where (selected.dimensionCount == param.dimension);
  if(empty dim)
    select any dim related by msgVal->SPR_PEP[R841]->C_EP[R4501]->C_IO[R4004]->S_DIM[R4018] where (selected.dimensionCount == param.dimension);
  end if;
end if;

if (not_empty dim)
  dimensionSize = dim.elementCount;
end if;
return dimensionSize;',
	1,
	'',
	326);
INSERT INTO O_TPARM
	VALUES (348,
	347,
	'dimension',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (349,
	70,
	'isElementCountValid',
	'This operation checks to see if the dimension value specified is withing bounds
of the actual declaration of the value.  For example:
foo[10] = "";  
foo[15] = "";
In the above example, the first line is a declaration statement (because it is
the first time this variable is used).  The element count of dimension 1 of 
this array is declared to be 11 elements (because it is an assignment and the
array is 0-based).  On the second line, an attempt is made to assign something 
to element 16 in the array.  This is an error (Array out of bounds), and it 
is the kind of problem this operation checks for.  This operation returns true
if the element count is valid and false if it is not.

             ',
	316,
	1,
	'isValid = true;

// Work up the array chain and find the root
select one aer related by self->V_AER[R801];
tempAER = aer;
while not_empty tempAER
  select one tempAER related by aer->V_VAL[R838]->V_AER[R801]; 
  if (not_empty tempAER)
    aer = tempAER;
  end if;
end while;

// We are now at the root of the array, so spin down through the chain and 
// check each dimension size.
dimension = 0;

while (isValid and not_empty aer)
  specifiedDimension = -1;
  // At some point BridgePoint will allow constants and even expressions as
  // an index, but right now we only allow integers.
  select one lin related by aer->V_VAL[R839]->V_LIN[R801];
  if (not_empty lin)
    specifiedDimension = lin.getInteger();
  end if;
  
  actualSize = self.getArrayLength(dimension:dimension);
  actualSizeIsDynamic = true;
  if (actualSize > 0)
    actualSizeIsDynamic = false;
  end if;
  if ( (not actualSizeIsDynamic) and (specifiedDimension >= actualSize) ) 
    isValid = false;
  end if;
  select one aer related by aer->V_VAL[R801]->V_AER[R838]; 
  dimension = dimension + 1;
end while;

return isValid;',
	1,
	'',
	333);
INSERT INTO O_TFR
	VALUES (329,
	70,
	'isReferringToDefaultDataType',
	'',
	316,
	1,
	'select one dt related by self->S_DT[R820];
elementType = Util::getSimpleClassName(element:self.convertToInstance());
if(dt.Name == S_DT::getDefaultDataTypeName(elementType:elementType))
  return true;
end if;
return false;',
	1,
	'',
	344);
INSERT INTO O_TFR
	VALUES (327,
	70,
	'convertToInstance',
	'Translate:native',
	317,
	1,
	'return this;',
	0,
	'',
	330);
INSERT INTO O_TFR
	VALUES (331,
	70,
	'canReferToDataType',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one body related by self->ACT_BLK[R826]->ACT_ACT[R601];
isInGenericPackage = body.associateWithContainer();
if isInGenericPackage
  select one dt related by self->S_DT[R820];
  if(not_empty dt)
    select one containingElem related by body->ACT_BIE[R640]->PE_PE[R640];
    return containingElem.canReferToDataType(dtID:dt.DT_ID, dtName:dt.Name);
  end if;
  return false;
else
  select one dt related by self->S_DT[R820];
  if(not_empty dt)
    select one dtPkg related by dt->S_DIP[R39]->S_DPK[R39];
    body.associateWithOwningComponent();
    select one component related by body->ACT_BIC[R694]->C_C[R694];
    if(not_empty component)
      select one reqSig related by body->ACT_RSB[R698];
      select one reqOp related by body->ACT_ROB[R698];
      select one proSig related by body->ACT_PSB[R698];
      select one proOp related by body->ACT_POB[R698];
      // if any of the following is not empty
      // then the dt must live at the system level
      if(not_empty reqSig)
        if(dtPkg.isDomainLevel())
          return false;
        else
          return true;
        end if;  
      elif(not_empty reqOp)
        select one dtPkg related by dt->S_DIP[R39]->S_DPK[R39];
        if(dtPkg.isDomainLevel())
          return false;
        else
          return true;
        end if;    
      elif(not_empty proSig)
        select one dtPkg related by dt->S_DIP[R39]->S_DPK[R39];
        if(dtPkg.isDomainLevel())
          return false;
        else
          return true;
        end if;  
      elif(not_empty proOp)
        select one dtPkg related by dt->S_DIP[R39]->S_DPK[R39];
        if(dtPkg.isDomainLevel())
          return false;
        else
          return true;
        end if;
      else
        select any domain from instances of S_DOM;
        if(not dtPkg.isDomainLevel())
          return true;
        else
          select one dtDomain related by dt->S_DOM[R14];
          if(dtDomain == domain)
            return true;
          end if;
        end if;
      end if;
    else
      select any domain from instances of S_DOM;
      if(dtPkg.isDomainLevel())
        select one dtDomain related by dt->S_DOM[R14];
        if(domain == dtDomain)
          return true;
        end if;
      else
        return true;
      end if;
    end if;
  end if;
  return false;
end if;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (350,
	70,
	'isElementCountCompatible',
	'This operation checks to see if each dimension''s actual element count value 
is withing bounds of the element count of the variable being assigned.
For example:
foo[10] = "";  
foobar[15] = "";
foo = foobar;
In the above example, the assignment of foobar to foo should not be allowed
because the dimension element counts are not compatible.  Each dimension''s 
element count must match.
   ',
	316,
	1,
	'// Note that this value (self) is the lval and the paramater pased-in is the
// rval (see the operation description for more information)
//
 
isValid = true;
select any rval from instances of V_VAL where (selected.Value_ID == param.rVal);
if (empty rval)
  return false;
end if;

// Work up the array chain and find the root
select one l_aer related by self->V_AER[R801];
select one r_aer related by rval->V_AER[R801];
l_tempAER = l_aer;
r_tempAER = r_aer;
while ((not_empty l_tempAER and not_empty r_tempAER) and isValid)
  select one l_tempAER related by l_aer->V_VAL[R838]->V_AER[R801]; 
  select one r_tempAER related by r_aer->V_VAL[R838]->V_AER[R801]; 
  if (not_empty l_tempAER)
    l_aer = l_tempAER;
    if (not_empty r_tempAER)
	  l_aer = l_tempAER;
    else
      isValid = false;
    end if;
  else
    if (not_empty r_tempAER)
      isValid = false;
    end if;
  end if;
end while;

// We are now at the root of the array, so spin down through the chain and 
// check each dimension size.
dimension = 0;
while ((not_empty l_aer and not_empty r_aer) and isValid)
  l_actualSize = self.getArrayLength(dimension:dimension);
  r_actualSize = rval.getArrayLength(dimension:dimension);
  if ( l_actualSize != r_actualSize ) 
    isValid = false;
    break;
  end if;
  select one l_aer related by l_aer->V_VAL[R801]->V_AER[R838]; 
  select one r_aer related by r_aer->V_VAL[R801]->V_AER[R838]; 
  dimension = dimension + 1;
end while;

return isValid;',
	1,
	'',
	349);
INSERT INTO O_TPARM
	VALUES (351,
	350,
	'rVal',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_NBATTR
	VALUES (72,
	70);
INSERT INTO O_BATTR
	VALUES (72,
	70);
INSERT INTO O_ATTR
	VALUES (72,
	70,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_REF
	VALUES (70,
	35,
	0,
	163,
	178,
	180,
	179,
	352,
	353,
	0,
	0,
	'',
	'Block',
	'Block_ID',
	'R826.''has scope''');
INSERT INTO O_RATTR
	VALUES (352,
	70,
	163,
	35,
	1,
	'Block_ID');
INSERT INTO O_ATTR
	VALUES (352,
	70,
	354,
	'Block_ID',
	'

',
	'',
	'Block_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (355,
	70);
INSERT INTO O_BATTR
	VALUES (355,
	70);
INSERT INTO O_ATTR
	VALUES (355,
	70,
	356,
	'LineNumber',
	'The line in the activity at which this value resides. It has a default 
value of -1, indicating that the location is not known.
                        
Not_participating_value: -1',
	'',
	'LineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (357,
	70);
INSERT INTO O_BATTR
	VALUES (357,
	70);
INSERT INTO O_ATTR
	VALUES (357,
	70,
	355,
	'StartPosition',
	'The column in the activity at which this value starts. It has a default 
value of -1, indicating that the location is not known.
                        
Not_participating_value: -1
',
	'',
	'StartPosition',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (358,
	70);
INSERT INTO O_BATTR
	VALUES (358,
	70);
INSERT INTO O_ATTR
	VALUES (358,
	70,
	357,
	'EndPosition',
	'The column in the activity at which this value ends. It has
a default value of -1, indicating that the location is not known.
                        
Not_participating_value: -1',
	'',
	'EndPosition',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (359,
	70);
INSERT INTO O_BATTR
	VALUES (359,
	70);
INSERT INTO O_ATTR
	VALUES (359,
	70,
	358,
	'firstParameterLabelLineNumber',
	'A scratchpad value employed while determining the textual position of any
parameter labels that are part of the composition of this value.
',
	'',
	'firstParameterLabelLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (360,
	70);
INSERT INTO O_BATTR
	VALUES (360,
	70);
INSERT INTO O_ATTR
	VALUES (360,
	70,
	359,
	'firstParameterLabelColumn',
	'See currentLabelLine.',
	'',
	'firstParameterLabelColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (361,
	70);
INSERT INTO O_BATTR
	VALUES (361,
	70);
INSERT INTO O_ATTR
	VALUES (361,
	70,
	360,
	'currentLaterParameterLabelLineNumber',
	'',
	'',
	'currentLaterParameterLabelLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (362,
	70);
INSERT INTO O_BATTR
	VALUES (362,
	70);
INSERT INTO O_ATTR
	VALUES (362,
	70,
	361,
	'currentLaterParameterLabelColumn',
	'',
	'',
	'currentLaterParameterLabelColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (363,
	70);
INSERT INTO O_BATTR
	VALUES (363,
	70);
INSERT INTO O_ATTR
	VALUES (363,
	70,
	72,
	'isLValue',
	'',
	'',
	'isLValue',
	0,
	316,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (356,
	70);
INSERT INTO O_BATTR
	VALUES (356,
	70);
INSERT INTO O_ATTR
	VALUES (356,
	70,
	363,
	'isImplicit',
	'',
	'',
	'isImplicit',
	0,
	316,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (364,
	70);
INSERT INTO O_BATTR
	VALUES (364,
	70);
INSERT INTO O_ATTR
	VALUES (364,
	70,
	352,
	'Text',
	'Persistent:false',
	'',
	'Text',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (70,
	32,
	0,
	156,
	154,
	157,
	155,
	354,
	365,
	0,
	0,
	'',
	'Data Type',
	'DT_ID',
	'R820.''has type''');
INSERT INTO O_RATTR
	VALUES (354,
	70,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (354,
	70,
	362,
	'DT_ID',
	'',
	'',
	'Element_ID',
	2,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	70);
INSERT INTO O_OIDA
	VALUES (72,
	70,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	70);
INSERT INTO O_ID
	VALUES (2,
	70);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (75,
	'Unary Operation',
	809,
	'V_UNY',
	'Like binary operators, unary operators modify the value in some way, but in this case only a single value is needed. One example is - (unary minus) which negates any numeric value. However other unary operators include the empty and not_empty set operators.',
	27);
INSERT INTO O_TFR
	VALUES (366,
	75,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one op related by self->V_VAL[R804];
if ( not_empty op )
  unrelate op from self across R804;
  op.dispose();
end if;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (367,
	75,
	'getValue',
	'Performs Unary Operation and returns the value.',
	317,
	1,
	'//Value: Unary Operation.getValue()
select one body related by self->V_VAL[R801]->ACT_BLK[R826]->ACT_ACT[R601];
select one dt related by self->V_VAL[R801]->S_DT[R820];
coreDataTypeName = dt.getCoreDataTypeName();
if (coreDataTypeName == "boolean")
  return GD::boolean_to_instance(value:self.getBoolean(stack_frame_id: param.stack_frame_id));
elif (coreDataTypeName == "integer")
  return GD::int_to_instance(value:self.getInteger(stack_frame_id: param.stack_frame_id));
elif (coreDataTypeName == "real")
  return GD::real_to_instance(value:self.getReal(stack_frame_id: param.stack_frame_id));         
else
  error_message = "Error: Did not find a supported data type " + coreDataTypeName + " in attempt to retrieve value in unary operation.";
  USER::logError(msg:error_message,path:body.getPath() );
end if;
  
return GD::string_to_instance(value:"Error");',
	1,
	'',
	368);
INSERT INTO O_TPARM
	VALUES (369,
	367,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (370,
	75,
	'getBoolean',
	'',
	316,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return false;',
	1,
	'',
	366);
INSERT INTO O_TPARM
	VALUES (371,
	370,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (372,
	75,
	'getInteger',
	'',
	298,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return 0;',
	1,
	'',
	370);
INSERT INTO O_TPARM
	VALUES (373,
	372,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (368,
	75,
	'getReal',
	'',
	374,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return 0.0;',
	1,
	'',
	372);
INSERT INTO O_TPARM
	VALUES (375,
	368,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (75,
	70,
	0,
	72,
	84,
	102,
	85,
	376,
	377,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (376,
	75,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (376,
	75,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (75,
	70,
	0,
	72,
	73,
	76,
	74,
	378,
	379,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R804.''has operand''');
INSERT INTO O_RATTR
	VALUES (378,
	75,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (378,
	75,
	376,
	'Operand_Value_ID',
	'',
	'Operand_',
	'Value_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (380,
	75);
INSERT INTO O_BATTR
	VALUES (380,
	75);
INSERT INTO O_ATTR
	VALUES (380,
	75,
	378,
	'Operator',
	'Full Name: Unary Mathematical Operator
The character or string representing the operation.',
	'',
	'Operator',
	0,
	322,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	75);
INSERT INTO O_OIDA
	VALUES (376,
	75,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	75);
INSERT INTO O_ID
	VALUES (2,
	75);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (136,
	'Transient Var',
	818,
	'V_TRN',
	'A variable that is created within a block of an action.
It has visibility equal to the scope of the block. Once
execution has passed out of the block in which the
transient is first assigned a value, the variable no longer
exists.',
	27);
INSERT INTO O_TFR
	VALUES (381,
	136,
	'getDimensionsCnt',
	'',
	298,
	1,
	'select many dims related by self->S_DIM[R844];
dimensions = cardinality dims;
return dimensions;
',
	1,
	'',
	382);
INSERT INTO O_TFR
	VALUES (383,
	136,
	'resizeDimensions',
	'',
	19,
	1,
	'// If the number of dimensions has increased then add dimensions
while (param.numDimensions > self.getDimensionsCnt())
  create object instance dim of S_DIM;
  dim.dimensionCount = self.getDimensionsCnt();
  relate dim to self across R844;
end while;

// If the number of dimensions has decreased then remove dimensions
while (param.numDimensions < self.getDimensionsCnt())
  select any dim related by self->S_DIM[R844] where (selected.dimensionCount == (self.getDimensionsCnt()-1));
  unrelate dim from self across R844;
  delete object instance dim;
end while;

// Update the specific dimension that was passed-in if its elementCount has 
// changed.
if (param.numDimensions > 0) 
  select any dim related by self->S_DIM[R844] where (selected.dimensionCount == param.dimension);
  if (dim.elementCount != param.elementCount)
    dim.elementCount = param.elementCount;
  end if;
end if;
',
	1,
	'',
	384);
INSERT INTO O_TPARM
	VALUES (385,
	383,
	'numDimensions',
	298,
	0,
	'',
	386,
	'');
INSERT INTO O_TPARM
	VALUES (387,
	383,
	'dimension',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (386,
	383,
	'elementCount',
	298,
	0,
	'',
	387,
	'');
INSERT INTO O_TFR
	VALUES (384,
	136,
	'isReferringToDefaultDataType',
	'',
	316,
	1,
	'select one dt related by self->S_DT[R821];
elementType = Util::getSimpleClassName(element:self.convertToInstance());
if(dt.Name == S_DT::getDefaultDataTypeName(elementType:elementType))
  return true;
end if;
return false;',
	1,
	'',
	381);
INSERT INTO O_TFR
	VALUES (382,
	136,
	'convertToInstance',
	'Translate:native',
	317,
	1,
	'return this;',
	0,
	'',
	388);
INSERT INTO O_TFR
	VALUES (388,
	136,
	'canReferToDataType',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one body related by self->V_VAR[R814]->ACT_BLK[R823]->ACT_ACT[R601];
isInGenericPackage = body.associateWithContainer();
if isInGenericPackage
  select one dt related by self->S_DT[R821];
  if (not_empty dt)
    select one containingElem related by body->ACT_BIE[R640]->PE_PE[R640];
    return containingElem.canReferToDataType(dtID:dt.DT_ID, dtName:dt.Name);
  end if;
  return false;
else
  select one dt related by self->S_DT[R821];
  if(not_empty dt)
    select one dtPkg related by dt->S_DIP[R39]->S_DPK[R39];
    body.associateWithOwningComponent();
    select one component related by body->ACT_BIC[R694]->C_C[R694];
    if(not_empty component)
      select one reqSig related by body->ACT_RSB[R698];
      select one reqOp related by body->ACT_ROB[R698];
      select one proSig related by body->ACT_PSB[R698];
      select one proOp related by body->ACT_POB[R698];
      // if any of the following is not empty
      // then the dt must live at the system level
      if(not_empty reqSig)
        if(dtPkg.isDomainLevel())
          return false;
        else
          return true;
        end if;  
      elif(not_empty reqOp)
        select one dtPkg related by dt->S_DIP[R39]->S_DPK[R39];
        if(dtPkg.isDomainLevel())
          return false;
        else
          return true;
        end if;    
      elif(not_empty proSig)
        select one dtPkg related by dt->S_DIP[R39]->S_DPK[R39];
        if(dtPkg.isDomainLevel())
          return false;
        else
          return true;
        end if;  
      elif(not_empty proOp)
        select one dtPkg related by dt->S_DIP[R39]->S_DPK[R39];
        if(dtPkg.isDomainLevel())
          return false;
        else
          return true;
        end if;
      else
        select any domain from instances of S_DOM;
        if(not dtPkg.isDomainLevel())
          return true;
        else
          select one dtDomain related by dt->S_DOM[R14];
          if(dtDomain == domain)
            return true;
          end if;
        end if;
      end if;
    else
      select any domain from instances of S_DOM;
      if(dtPkg.isDomainLevel())
        select one dtDomain related by dt->S_DOM[R14];
        if(domain == dtDomain)
          return true;
        end if;
      else
        return true;
      end if;
    end if;
  end if;
  return false;
end if;',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (136,
	129,
	0,
	131,
	128,
	137,
	130,
	258,
	389,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R814');
INSERT INTO O_RATTR
	VALUES (258,
	136,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (258,
	136,
	0,
	'Var_ID',
	'

',
	'',
	'Var_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (390,
	136);
INSERT INTO O_BATTR
	VALUES (390,
	136);
INSERT INTO O_ATTR
	VALUES (390,
	136,
	391,
	'Dimensions',
	'This attribute is not used and will always be empty.
This attribute was deprecated when fixed-length
arrays were introduced.  It was left in-place simply for 
consistency/orthagonality with the other places in the meta-model that have 
dimensions.  All other places in the Meta-model do use this field.  It is 
used for user-entry of the the dimension string.  V_TRN.Dimensions is different 
because the user never enters a dimension string for a transient.  A transient 
gets its dimensions based on the rvalue that it is assigned from.',
	'',
	'Dimensions',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (136,
	32,
	0,
	156,
	158,
	160,
	159,
	391,
	392,
	0,
	0,
	'',
	'Data Type',
	'DT_ID',
	'R821');
INSERT INTO O_RATTR
	VALUES (391,
	136,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (391,
	136,
	258,
	'DT_ID',
	'',
	'',
	'Element_ID',
	2,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	136);
INSERT INTO O_OIDA
	VALUES (258,
	136,
	0,
	'Var_ID');
INSERT INTO O_ID
	VALUES (1,
	136);
INSERT INTO O_ID
	VALUES (2,
	136);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (109,
	'Transient Value Reference',
	805,
	'V_TVL',
	'This class represents a value held in a local variable being used on the right hand side of an assignment or an expression.',
	27);
INSERT INTO O_TFR
	VALUES (393,
	109,
	'getValue',
	'',
	317,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return GD::NULL_INSTANCE();',
	1,
	'',
	394);
INSERT INTO O_TPARM
	VALUES (395,
	393,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (396,
	109,
	'setValue',
	'Attempts to find the Local Value created for the transient reference and
assigns the passed in value to it.',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	393);
INSERT INTO O_TPARM
	VALUES (397,
	396,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (398,
	396,
	'value',
	317,
	0,
	'',
	397,
	'');
INSERT INTO O_TPARM
	VALUES (399,
	396,
	'member_id',
	296,
	0,
	'',
	398,
	'');
INSERT INTO O_TFR
	VALUES (394,
	109,
	'getRuntimeValue',
	'',
	296,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return GD::NULL_UNIQUE_ID();',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (400,
	394,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (109,
	70,
	0,
	72,
	84,
	110,
	85,
	401,
	402,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (401,
	109,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (401,
	109,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (109,
	129,
	0,
	131,
	138,
	140,
	139,
	403,
	404,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R805.''references''');
INSERT INTO O_RATTR
	VALUES (403,
	109,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (403,
	109,
	401,
	'Var_ID',
	'

',
	'',
	'Var_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	109);
INSERT INTO O_OIDA
	VALUES (401,
	109,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	109);
INSERT INTO O_ID
	VALUES (2,
	109);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (126,
	'Symbolic Constant Value',
	831,
	'V_SCV',
	'',
	27);
INSERT INTO O_TFR
	VALUES (405,
	126,
	'dispose',
	'',
	19,
	1,
	'select one syc related by self->CNST_SYC[R850];
if ( not_empty syc )
  unrelate self from syc across R850;
end if;

delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (126,
	70,
	0,
	72,
	84,
	127,
	85,
	406,
	407,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (406,
	126,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (406,
	126,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (126,
	66,
	0,
	290,
	287,
	288,
	289,
	408,
	409,
	0,
	0,
	'',
	'Symbolic Constant',
	'Const_ID',
	'R850');
INSERT INTO O_RATTR
	VALUES (408,
	126,
	290,
	66,
	1,
	'Const_ID');
INSERT INTO O_ATTR
	VALUES (408,
	126,
	406,
	'Const_ID',
	'',
	'',
	'Const_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (126,
	66,
	0,
	291,
	287,
	288,
	289,
	410,
	411,
	0,
	0,
	'',
	'Symbolic Constant',
	'DT_ID',
	'R850');
INSERT INTO O_RATTR
	VALUES (410,
	126,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (410,
	126,
	408,
	'DT_ID',
	'',
	'',
	'DT_ID',
	2,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	126);
INSERT INTO O_OIDA
	VALUES (406,
	126,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	126);
INSERT INTO O_ID
	VALUES (2,
	126);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (90,
	'Selected Reference',
	820,
	'V_SLR',
	'Similar to an attribute value but the instance in this case is the ''selected''
variable of a where clause.',
	27);
INSERT INTO O_TFR
	VALUES (412,
	90,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one attr related by self->O_ATTR[R812];
if ( not_empty attr )
  unrelate self from attr across R812;
end if;

select one trv related by self->V_TRV[R825];
if ( not_empty trv )
  unrelate self from trv across R825;
  select one val related by trv->V_VAL[R801];
  val.dispose();
end if;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (413,
	90,
	'getValue',
	'Returns a value of a Selected Reference',
	317,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return GD::NULL_INSTANCE();',
	1,
	'',
	412);
INSERT INTO O_TPARM
	VALUES (414,
	413,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (90,
	70,
	0,
	72,
	84,
	91,
	85,
	415,
	416,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (415,
	90,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (415,
	90,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (90,
	103,
	0,
	177,
	174,
	175,
	176,
	417,
	418,
	0,
	0,
	'',
	'Operation Value',
	'Value_ID',
	'R825.''value''');
INSERT INTO O_RATTR
	VALUES (417,
	90,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (417,
	90,
	419,
	'Op_Value_ID',
	'

',
	'Op_',
	'Value_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (90,
	37,
	0,
	168,
	225,
	226,
	227,
	419,
	420,
	0,
	0,
	'',
	'Attribute',
	'Attr_ID',
	'R812.''member''');
INSERT INTO O_RATTR
	VALUES (419,
	90,
	168,
	37,
	1,
	'Attr_ID');
INSERT INTO O_ATTR
	VALUES (419,
	90,
	421,
	'Attr_ID',
	'',
	'',
	'Attr_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (90,
	37,
	0,
	169,
	225,
	226,
	227,
	421,
	422,
	0,
	0,
	'',
	'Attribute',
	'Obj_ID',
	'R812.''member''');
INSERT INTO O_RATTR
	VALUES (421,
	90,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (421,
	90,
	415,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	90);
INSERT INTO O_OIDA
	VALUES (415,
	90,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	90);
INSERT INTO O_ID
	VALUES (2,
	90);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (88,
	'Parameter Value',
	821,
	'V_PVL',
	'This class represents the value of a parameter.',
	27);
INSERT INTO O_TFR
	VALUES (423,
	88,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one bparm related by self->S_BPARM[R831];
if not_empty bparm
  unrelate self from bparm across R831;
end if;
select one sparm related by self->S_SPARM[R832];
if not_empty sparm
  unrelate self from sparm across R832;
end if;
select one tparm related by self->O_TPARM[R833];
if not_empty tparm
  unrelate self from tparm across R833;
end if;
select one pparm related by self->C_PP[R843];
if not_empty pparm
  unrelate self from pparm across R843;
end if;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (424,
	88,
	'getValue',
	'Returns a value of a Parameter Value.',
	317,
	1,
	'// Value: Parameter Value.getValue()

select one function_parameter related by self->S_SPARM[R832];
select one operation_parameter related by self->O_TPARM[R833];
select one bridge_parameter related by self->S_BPARM[R831];
select one property_parameter related by self->C_PP[R843];

if (not_empty function_parameter)
  return function_parameter.getValue(stack_frame_id: param.stack_frame_id);     
elif (not_empty operation_parameter)
  return operation_parameter.getValue(stack_frame_id: param.stack_frame_id);
elif (not_empty bridge_parameter)
  return bridge_parameter.getValue(stack_frame_id: param.stack_frame_id);
elif(not_empty property_parameter)
  return property_parameter.getValue(stack_frame_id: param.stack_frame_id);
else
select one value related by self->V_VAL[R801];
select one block related by value->ACT_BLK[R826];
select one body related by block->ACT_ACT[R601];
  pathMsg = "<No Path Available - Empty instance>";
    if (not_empty body)
      pathMsg = body.getPath();
    end if;
	USER::logError(msg:"Error in Parameter Value.getValue: Did not find a local "+ "value.",path:pathMsg);
end if;
return GD::string_to_instance(value:"Error");',
	1,
	'',
	425);
INSERT INTO O_TPARM
	VALUES (426,
	424,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (427,
	88,
	'setValue',
	'Attempts to find the Local Value created for the parameter and assigns the
passed in value to it.',
	19,
	1,
	'// Value: Parameter Value.setValue()
select one body related by self->V_VAL[R801]->ACT_BLK[R826]->ACT_ACT[R601];
select one function_parameter related by self->S_SPARM[R832];
select one operation_parameter related by self->O_TPARM[R833];
select one bridge_parameter related by self->S_BPARM[R831];
select one property_parameter related by self->C_PP[R843];
if (not_empty function_parameter)
  function_parameter.setValue(stack_frame_id: param.stack_frame_id,
  value: param.value, member_id:param.member_id);     
elif (not_empty operation_parameter)
  operation_parameter.setValue(stack_frame_id: param.stack_frame_id,
  value: param.value, member_id:param.member_id);     
elif (not_empty bridge_parameter)
  bridge_parameter.setValue(stack_frame_id: param.stack_frame_id,
  value: param.value, member_id:param.member_id);     
elif(not_empty property_parameter)
  property_parameter.setValue(stack_frame_id: param.stack_frame_id,
  value: param.value, member_id:param.member_id);
else
  pathMsg = "<No Path Available - Empty instance>";
    if (not_empty body)
      pathMsg = body.getPath();
    end if;
	USER::logError(msg:"Error in Parameter Value.setValue:" +
                                                " Did not find a local value.",path:pathMsg);
end if;',
	1,
	'',
	424);
INSERT INTO O_TPARM
	VALUES (428,
	427,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (429,
	427,
	'value',
	317,
	0,
	'',
	428,
	'');
INSERT INTO O_TPARM
	VALUES (430,
	427,
	'member_id',
	296,
	0,
	'',
	429,
	'');
INSERT INTO O_TFR
	VALUES (425,
	88,
	'getRuntimeValue',
	'',
	296,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return GD::NULL_UNIQUE_ID();',
	1,
	'',
	423);
INSERT INTO O_TPARM
	VALUES (431,
	425,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (88,
	70,
	0,
	72,
	84,
	89,
	85,
	432,
	433,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (432,
	88,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (432,
	88,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (88,
	46,
	0,
	211,
	209,
	212,
	210,
	434,
	435,
	0,
	0,
	'',
	'Bridge Parameter',
	'BParm_ID',
	'R831.''is a value of''');
INSERT INTO O_RATTR
	VALUES (434,
	88,
	211,
	46,
	1,
	'BParm_ID');
INSERT INTO O_ATTR
	VALUES (434,
	88,
	432,
	'BParm_ID',
	'',
	'',
	'BParm_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (88,
	48,
	0,
	215,
	213,
	216,
	214,
	436,
	437,
	0,
	0,
	'',
	'Function Parameter',
	'SParm_ID',
	'R832.''is a value of''');
INSERT INTO O_RATTR
	VALUES (436,
	88,
	215,
	48,
	1,
	'SParm_ID');
INSERT INTO O_ATTR
	VALUES (436,
	88,
	434,
	'SParm_ID',
	'',
	'',
	'SParm_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (88,
	50,
	0,
	219,
	217,
	220,
	218,
	438,
	439,
	0,
	0,
	'',
	'Operation Parameter',
	'TParm_ID',
	'R833.''is a value of''');
INSERT INTO O_RATTR
	VALUES (438,
	88,
	219,
	50,
	1,
	'TParm_ID');
INSERT INTO O_ATTR
	VALUES (438,
	88,
	436,
	'TParm_ID',
	'',
	'',
	'TParm_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (88,
	57,
	0,
	254,
	252,
	255,
	253,
	440,
	441,
	0,
	0,
	'',
	'Property Parameter',
	'PP_Id',
	'R843.''is a value of''');
INSERT INTO O_RATTR
	VALUES (440,
	88,
	254,
	57,
	1,
	'PP_Id');
INSERT INTO O_ATTR
	VALUES (440,
	88,
	438,
	'PP_Id',
	'',
	'',
	'Id',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	88);
INSERT INTO O_OIDA
	VALUES (432,
	88,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	88);
INSERT INTO O_ID
	VALUES (2,
	88);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (103,
	'Operation Value',
	808,
	'V_TRV',
	'This class represents the value returned by an operation invocation.
--------------------------------------------------------------------------------
Bridge:ALS',
	27);
INSERT INTO O_TFR
	VALUES (442,
	103,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one tfr related by self->O_TFR[R829];
if ( not_empty tfr )
  unrelate self from tfr across R829;
end if;

select one var related by self->V_VAR[R830];
if ( not_empty var )
  unrelate self from var across R830;
end if;

select many parm_set related by self->V_PAR[R811];
for each parm in parm_set 
  unrelate self from parm across R811;
  parm.dispose();
end for;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (443,
	103,
	'getValue',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	442);
INSERT INTO O_TPARM
	VALUES (444,
	443,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (445,
	103,
	'setupParameterValues',
	'Create a new local value for each parameter within the stack frame of the operation we are going to execute.',
	316,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return false;',
	1,
	'',
	443);
INSERT INTO O_TPARM
	VALUES (446,
	445,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (103,
	70,
	0,
	72,
	84,
	104,
	85,
	177,
	447,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (177,
	103,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (177,
	103,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (103,
	43,
	0,
	201,
	198,
	199,
	200,
	448,
	449,
	0,
	0,
	'',
	'Operation',
	'Tfr_ID',
	'R829');
INSERT INTO O_RATTR
	VALUES (448,
	103,
	201,
	43,
	1,
	'Tfr_ID');
INSERT INTO O_ATTR
	VALUES (448,
	103,
	177,
	'Tfr_ID',
	'
',
	'',
	'Tfr_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (103,
	129,
	0,
	131,
	206,
	207,
	208,
	450,
	451,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R830');
INSERT INTO O_RATTR
	VALUES (450,
	103,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (450,
	103,
	448,
	'Var_ID',
	'

',
	'',
	'Var_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (452,
	103);
INSERT INTO O_BATTR
	VALUES (452,
	103);
INSERT INTO O_ATTR
	VALUES (452,
	103,
	450,
	'ParmListOK',
	'This attribute is true if there were no errors in parsing the operation invocation''s parameter list.
---------------------------------------------------------------------
Bridge:ALS',
	'',
	'ParmListOK',
	0,
	316,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (453,
	103);
INSERT INTO O_BATTR
	VALUES (453,
	103);
INSERT INTO O_ATTR
	VALUES (453,
	103,
	452,
	'modelClassKeyLettersLineNumber',
	'',
	'',
	'modelClassKeyLettersLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (454,
	103);
INSERT INTO O_BATTR
	VALUES (454,
	103);
INSERT INTO O_ATTR
	VALUES (454,
	103,
	453,
	'modelClassKeyLettersColumn',
	'',
	'',
	'modelClassKeyLettersColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	103);
INSERT INTO O_OIDA
	VALUES (177,
	103,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	103);
INSERT INTO O_ID
	VALUES (2,
	103);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (124,
	'Message Value',
	829,
	'V_MSV',
	'',
	27);
INSERT INTO O_TFR
	VALUES (455,
	124,
	'dispose',
	'',
	19,
	1,
	'// Message Value.dispose()
select one proExProp related by self->SPR_PEP[R841];
if not_empty proExProp
  unrelate self from proExProp across R841;
end if;
select one reqExProp related by self->SPR_REP[R845];
if(not_empty reqExProp)
  unrelate self from reqExProp across R845;
end if;
select many parm_set related by self->V_PAR[R842];
for each parm in parm_set 
  unrelate self from parm across R842;
  parm.dispose();
end for;
select one targetVal related by self->V_VAL[R851];
if not_empty targetVal
  unrelate self from targetVal across R851;
  targetVal.dispose();
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (456,
	124,
	'getValue',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	455);
INSERT INTO O_TPARM
	VALUES (457,
	456,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (458,
	124,
	'setupParameterValues',
	'',
	316,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return false;',
	1,
	'',
	456);
INSERT INTO O_TPARM
	VALUES (459,
	458,
	'stack_frame_id',
	296,
	0,
	'',
	460,
	'');
INSERT INTO O_TPARM
	VALUES (461,
	458,
	'executeRemotely',
	316,
	0,
	'',
	459,
	'');
INSERT INTO O_TPARM
	VALUES (462,
	458,
	'channel_id',
	296,
	0,
	'',
	461,
	'');
INSERT INTO O_TPARM
	VALUES (460,
	458,
	'ee_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (124,
	70,
	0,
	72,
	84,
	125,
	85,
	250,
	463,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (250,
	124,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (250,
	124,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (464,
	124);
INSERT INTO O_BATTR
	VALUES (464,
	124);
INSERT INTO O_ATTR
	VALUES (464,
	124,
	465,
	'ParmListOK',
	'',
	'',
	'ParmListOK',
	0,
	316,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (466,
	124);
INSERT INTO O_BATTR
	VALUES (466,
	124);
INSERT INTO O_ATTR
	VALUES (466,
	124,
	464,
	'ownerNameLineNumber',
	'',
	'',
	'ownerNameLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (467,
	124);
INSERT INTO O_BATTR
	VALUES (467,
	124);
INSERT INTO O_ATTR
	VALUES (467,
	124,
	466,
	'ownerNameColumn',
	'',
	'',
	'ownerNameColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_REF
	VALUES (124,
	63,
	0,
	267,
	264,
	265,
	266,
	465,
	468,
	0,
	0,
	'',
	'Required Executable Property',
	'Id',
	'R845');
INSERT INTO O_RATTR
	VALUES (465,
	124,
	267,
	63,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (465,
	124,
	469,
	'REP_Id',
	'',
	'REP_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (124,
	61,
	0,
	263,
	260,
	261,
	262,
	469,
	470,
	0,
	0,
	'',
	'Provided Executable Property',
	'Id',
	'R841');
INSERT INTO O_RATTR
	VALUES (469,
	124,
	263,
	61,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (469,
	124,
	250,
	'PEP_Id',
	'',
	'PEP_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (124,
	70,
	0,
	72,
	292,
	293,
	294,
	471,
	472,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R851.''has target''');
INSERT INTO O_RATTR
	VALUES (471,
	124,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (471,
	124,
	467,
	'Target_Value_ID',
	'',
	'Target_',
	'Value_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	124);
INSERT INTO O_OIDA
	VALUES (250,
	124,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	124);
INSERT INTO O_ID
	VALUES (2,
	124);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (118,
	'Member Value Reference',
	825,
	'V_MVL',
	'',
	27);
INSERT INTO O_TFR
	VALUES (473,
	118,
	'dispose',
	'',
	19,
	1,
	'select one member related by self->S_MBR[R836];
if (not_empty member)
  unrelate self from member across R836;
end if;

select one value related by self->V_VAL[R837];
if (not_empty value)
  unrelate self from value across R837;
end if;

delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (474,
	118,
	'getValue',
	'',
	317,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return GD::NULL_INSTANCE();',
	1,
	'',
	475);
INSERT INTO O_TPARM
	VALUES (476,
	474,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (477,
	118,
	'setValue',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	474);
INSERT INTO O_TPARM
	VALUES (478,
	477,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (479,
	477,
	'value',
	317,
	0,
	'',
	478,
	'');
INSERT INTO O_TPARM
	VALUES (480,
	477,
	'member_id',
	296,
	0,
	'',
	479,
	'');
INSERT INTO O_TFR
	VALUES (475,
	118,
	'getRuntimeValue',
	'',
	296,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return GD::NULL_UNIQUE_ID();',
	1,
	'',
	473);
INSERT INTO O_TPARM
	VALUES (481,
	475,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (118,
	70,
	0,
	72,
	84,
	119,
	85,
	482,
	483,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (482,
	118,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (482,
	118,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (118,
	70,
	0,
	72,
	233,
	234,
	235,
	484,
	485,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R837');
INSERT INTO O_RATTR
	VALUES (484,
	118,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (484,
	118,
	482,
	'Root_Value_ID',
	'',
	'Root_',
	'Value_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (118,
	55,
	0,
	231,
	228,
	229,
	230,
	486,
	487,
	0,
	0,
	'',
	'Structure Member',
	'Member_ID',
	'R836.''is value of''');
INSERT INTO O_RATTR
	VALUES (486,
	118,
	231,
	55,
	1,
	'Member_ID');
INSERT INTO O_ATTR
	VALUES (486,
	118,
	484,
	'Member_ID',
	'',
	'',
	'Member_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (118,
	55,
	0,
	232,
	228,
	229,
	230,
	488,
	489,
	0,
	0,
	'',
	'Structure Member',
	'Parent_DT_DT_ID',
	'R836.''is value of''');
INSERT INTO O_RATTR
	VALUES (488,
	118,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (488,
	118,
	486,
	'DT_DT_ID',
	'',
	'DT_',
	'Parent_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	118);
INSERT INTO O_OIDA
	VALUES (482,
	118,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	118);
INSERT INTO O_ID
	VALUES (2,
	118);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (100,
	'Literal String',
	810,
	'V_LST',
	'This class represents a literal string, may take any sequence of characters as a value.',
	27);
INSERT INTO O_TFR
	VALUES (490,
	100,
	'getString',
	'',
	322,
	1,
	'return self.Value;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (491,
	100,
	'removeQuotes',
	'Translate:native',
	322,
	1,
	'//  Value:Literal String.removeQuotes(s: string)

String out = p_S;

//  Remove the beginning and ending quotes
if (out.startsWith("\"")) {
	out = out.substring(1);
}
if (out.endsWith("\"")) {
	out = out.substring(0, out.length() - 1);
}

//  Now replace all double double quotes in the string with single double quotes
out = out.replaceAll("\"\"", "\"");

return out;

',
	0,
	'',
	490);
INSERT INTO O_TPARM
	VALUES (492,
	491,
	's',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (100,
	70,
	0,
	72,
	84,
	101,
	85,
	493,
	494,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (493,
	100,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (493,
	100,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (495,
	100);
INSERT INTO O_BATTR
	VALUES (495,
	100);
INSERT INTO O_ATTR
	VALUES (495,
	100,
	493,
	'Value',
	'Full Name: Literal String Value
The actual value of the literal.',
	'',
	'Value',
	0,
	322,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	100);
INSERT INTO O_OIDA
	VALUES (493,
	100,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	100);
INSERT INTO O_ID
	VALUES (2,
	100);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (111,
	'Literal Real',
	804,
	'V_LRL',
	'This class represents a literal real, may be a sequence of numeric characters with a decimal point appearing once somewhere in the sequence.',
	27);
INSERT INTO O_TFR
	VALUES (496,
	111,
	'getReal',
	'',
	374,
	1,
	'return GD::string_to_real(value:self.Value);',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (111,
	70,
	0,
	72,
	84,
	112,
	85,
	497,
	498,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (497,
	111,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (497,
	111,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (499,
	111);
INSERT INTO O_BATTR
	VALUES (499,
	111);
INSERT INTO O_ATTR
	VALUES (499,
	111,
	497,
	'Value',
	'Full Name: Literal Real Value
The actual value of the literal.',
	'',
	'Value',
	0,
	322,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	111);
INSERT INTO O_OIDA
	VALUES (497,
	111,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	111);
INSERT INTO O_ID
	VALUES (2,
	111);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (98,
	'Literal Integer',
	811,
	'V_LIN',
	'This class represents a literal integer, represented by a sequence of numeric characters.',
	27);
INSERT INTO O_TFR
	VALUES (500,
	98,
	'getInteger',
	'',
	298,
	1,
	'return GD::string_to_int(value:self.Value);',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (98,
	70,
	0,
	72,
	84,
	99,
	85,
	501,
	502,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (501,
	98,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (501,
	98,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (503,
	98);
INSERT INTO O_BATTR
	VALUES (503,
	98);
INSERT INTO O_ATTR
	VALUES (503,
	98,
	501,
	'Value',
	'Full Name: Literal Integer Value
The actual value of the literal.',
	'',
	'Value',
	0,
	322,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	98);
INSERT INTO O_OIDA
	VALUES (501,
	98,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	98);
INSERT INTO O_ID
	VALUES (2,
	98);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (116,
	'Literal Enumerator',
	823,
	'V_LEN',
	'This class represents a literal enumerated value.',
	27);
INSERT INTO O_TFR
	VALUES (504,
	116,
	'getValue',
	'',
	317,
	1,
	'//Literal Enumerator.getValue()
select one enum related by self->S_ENUM[R824];
select one edt related by enum->S_EDT[R27]->S_DT[R17];
return GD::string_to_instance(value:edt.Name + "::" + enum.Name);',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (116,
	70,
	0,
	72,
	84,
	117,
	85,
	505,
	506,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (505,
	116,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (505,
	116,
	0,
	'Value_ID',
	'

',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (116,
	39,
	0,
	172,
	170,
	173,
	171,
	507,
	508,
	0,
	0,
	'',
	'Enumerator',
	'Enum_ID',
	'R824');
INSERT INTO O_RATTR
	VALUES (507,
	116,
	172,
	39,
	1,
	'Enum_ID');
INSERT INTO O_ATTR
	VALUES (507,
	116,
	505,
	'Enum_ID',
	'

',
	'',
	'Enum_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (509,
	116);
INSERT INTO O_BATTR
	VALUES (509,
	116);
INSERT INTO O_ATTR
	VALUES (509,
	116,
	507,
	'dataTypeNameLineNumber',
	'',
	'',
	'dataTypeNameLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (510,
	116);
INSERT INTO O_BATTR
	VALUES (510,
	116);
INSERT INTO O_ATTR
	VALUES (510,
	116,
	509,
	'dataTypeNameColumn',
	'',
	'',
	'dataTypeNameColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	116);
INSERT INTO O_OIDA
	VALUES (505,
	116,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	116);
INSERT INTO O_ID
	VALUES (2,
	116);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (113,
	'Literal Boolean',
	803,
	'V_LBO',
	'This class represents a literal boolean, may take the values true or false only.',
	27);
INSERT INTO O_TFR
	VALUES (511,
	113,
	'getBoolean',
	'',
	316,
	1,
	'if self.Value == "TRUE"
  return true;
else
  return false;
end if;',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (113,
	70,
	0,
	72,
	84,
	114,
	85,
	512,
	513,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (512,
	113,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (512,
	113,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (514,
	113);
INSERT INTO O_BATTR
	VALUES (514,
	113);
INSERT INTO O_ATTR
	VALUES (514,
	113,
	512,
	'Value',
	'Full Name: Literal Boolean Value
The actual value of the literal.',
	'',
	'Value',
	0,
	322,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	113);
INSERT INTO O_OIDA
	VALUES (512,
	113,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	113);
INSERT INTO O_ID
	VALUES (2,
	113);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (105,
	'Instance Set Reference',
	807,
	'V_ISR',
	'This class represents a set of instance references, the result of a select many statement.',
	27);
INSERT INTO O_TFR
	VALUES (515,
	105,
	'getRuntimeValue',
	'',
	296,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return GD::NULL_UNIQUE_ID(); ',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (516,
	515,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (105,
	70,
	0,
	72,
	84,
	106,
	85,
	517,
	518,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (517,
	105,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (517,
	105,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (105,
	129,
	0,
	131,
	144,
	146,
	145,
	519,
	520,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R809.''refers to''');
INSERT INTO O_RATTR
	VALUES (519,
	105,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (519,
	105,
	517,
	'Var_ID',
	'

',
	'',
	'Var_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	105);
INSERT INTO O_OIDA
	VALUES (517,
	105,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	105);
INSERT INTO O_ID
	VALUES (2,
	105);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (134,
	'Instance Set',
	817,
	'V_INS',
	'This class represents a set of instances.',
	27);
INSERT INTO O_TFR
	VALUES (521,
	134,
	'isEmpty',
	'',
	316,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return true; ',
	1,
	'',
	522);
INSERT INTO O_TPARM
	VALUES (523,
	521,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (522,
	134,
	'getCardinality',
	'',
	298,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return 0; ',
	1,
	'',
	524);
INSERT INTO O_TPARM
	VALUES (525,
	522,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (524,
	134,
	'dispose',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (134,
	129,
	0,
	131,
	128,
	135,
	130,
	526,
	527,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R814');
INSERT INTO O_RATTR
	VALUES (526,
	134,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (526,
	134,
	0,
	'Var_ID',
	'

',
	'',
	'Var_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (134,
	30,
	0,
	150,
	151,
	152,
	153,
	528,
	529,
	0,
	0,
	'',
	'Model Class',
	'Obj_ID',
	'R819.''refers to''');
INSERT INTO O_RATTR
	VALUES (528,
	134,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (528,
	134,
	526,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	134);
INSERT INTO O_OIDA
	VALUES (526,
	134,
	0,
	'Var_ID');
INSERT INTO O_ID
	VALUES (1,
	134);
INSERT INTO O_ID
	VALUES (2,
	134);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (94,
	'Instance Reference',
	813,
	'V_IRF',
	'This class represents an instance reference, the result of a select one or select any statement.',
	27);
INSERT INTO O_TFR
	VALUES (530,
	94,
	'getRuntimeValue',
	'',
	296,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return GD::NULL_UNIQUE_ID(); ',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (531,
	530,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (532,
	94,
	'setValue',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	530);
INSERT INTO O_TPARM
	VALUES (533,
	532,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (534,
	532,
	'value',
	317,
	0,
	'',
	533,
	'');
INSERT INTO O_TPARM
	VALUES (535,
	532,
	'member_id',
	296,
	0,
	'',
	534,
	'');
INSERT INTO O_REF
	VALUES (94,
	70,
	0,
	72,
	84,
	95,
	85,
	536,
	537,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (536,
	94,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (536,
	94,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (94,
	129,
	0,
	131,
	141,
	143,
	142,
	538,
	539,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R808.''refers to''');
INSERT INTO O_RATTR
	VALUES (538,
	94,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (538,
	94,
	536,
	'Var_ID',
	'

',
	'',
	'Var_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	94);
INSERT INTO O_OIDA
	VALUES (536,
	94,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	94);
INSERT INTO O_ID
	VALUES (2,
	94);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (132,
	'Instance Handle',
	816,
	'V_INT',
	'This class represents an instance.',
	27);
INSERT INTO O_TFR
	VALUES (540,
	132,
	'isEmpty',
	'',
	316,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return true; ',
	1,
	'',
	541);
INSERT INTO O_TPARM
	VALUES (542,
	540,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (543,
	132,
	'dispose',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (541,
	132,
	'getCardinality',
	'',
	298,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return 0; ',
	1,
	'',
	543);
INSERT INTO O_TPARM
	VALUES (544,
	541,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (132,
	129,
	0,
	131,
	128,
	133,
	130,
	545,
	546,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R814');
INSERT INTO O_RATTR
	VALUES (545,
	132,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (545,
	132,
	0,
	'Var_ID',
	'

',
	'',
	'Var_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (547,
	132);
INSERT INTO O_BATTR
	VALUES (547,
	132);
INSERT INTO O_ATTR
	VALUES (547,
	132,
	545,
	'IsImplicitInFor',
	'This attribute is true if the inst_ref variable was declared implicitly by a for each statement.
--------------------------------------------------------------------------------
Bridge:ALS',
	'',
	'IsImplicitInFor',
	0,
	316,
	'',
	'');
INSERT INTO O_REF
	VALUES (132,
	30,
	0,
	150,
	147,
	148,
	149,
	548,
	549,
	0,
	0,
	'',
	'Model Class',
	'Obj_ID',
	'R818.''refers to''');
INSERT INTO O_RATTR
	VALUES (548,
	132,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (548,
	132,
	547,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	132);
INSERT INTO O_OIDA
	VALUES (545,
	132,
	0,
	'Var_ID');
INSERT INTO O_ID
	VALUES (1,
	132);
INSERT INTO O_ID
	VALUES (2,
	132);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (86,
	'Function Value',
	822,
	'V_FNV',
	'This class represents the value returned by a function invocation.',
	27);
INSERT INTO O_TFR
	VALUES (550,
	86,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one sync related by self->S_SYNC[R827];
if ( not empty sync )
  unrelate self from sync across R827;
end if;

select many parm_set related by self->V_PAR[R817];
for each parm in parm_set 
  unrelate self from parm across R817;
  parm.dispose();
end for;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (551,
	86,
	'getValue',
	'Executes a function and returns a result.',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	550);
INSERT INTO O_TPARM
	VALUES (552,
	551,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (553,
	86,
	'setupParameterValues',
	'Initializes the parameters passing to a function.',
	316,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return false; ',
	1,
	'',
	551);
INSERT INTO O_TPARM
	VALUES (554,
	553,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (86,
	70,
	0,
	72,
	84,
	87,
	85,
	183,
	555,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (183,
	86,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (183,
	86,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (556,
	86);
INSERT INTO O_BATTR
	VALUES (556,
	86);
INSERT INTO O_ATTR
	VALUES (556,
	86,
	557,
	'ParmListOK',
	'This attribute is true if there were no errors in parsing the function invocation''s parameter list.
--------------------------------------------------------------------------------
Bridge:ALS',
	'',
	'ParmListOK',
	0,
	316,
	'',
	'');
INSERT INTO O_REF
	VALUES (86,
	8,
	0,
	11,
	192,
	193,
	194,
	557,
	558,
	0,
	0,
	'',
	'Function',
	'Sync_ID',
	'R827');
INSERT INTO O_RATTR
	VALUES (557,
	86,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (557,
	86,
	183,
	'Sync_ID',
	'

',
	'',
	'Sync_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	86);
INSERT INTO O_OIDA
	VALUES (183,
	86,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	86);
INSERT INTO O_ID
	VALUES (2,
	86);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (271,
	'Event Parameter Reference',
	830,
	'V_EPR',
	'',
	27);
INSERT INTO O_TFR
	VALUES (559,
	271,
	'dispose',
	'',
	19,
	1,
	'// Event Parameter Reference.dispose()
select one evtDataVal related by self->V_EDV[R834];
if not_empty evtDataVal
  unrelate self from evtDataVal across R834;
end if;
select one evtdi related by self->SM_EVTDI[R846];
if not_empty evtdi
  unrelate self from evtdi across R846;
end if;
select one propParm related by self->C_PP[R847];
if not_empty propParm
  unrelate self from propParm across R847;
end if;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (271,
	107,
	0,
	270,
	268,
	272,
	269,
	560,
	561,
	0,
	0,
	'',
	'Event Datum Value',
	'Value_ID',
	'R834');
INSERT INTO O_RATTR
	VALUES (560,
	271,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (560,
	271,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (271,
	52,
	0,
	276,
	273,
	274,
	275,
	562,
	563,
	0,
	0,
	'',
	'State Machine Event Data Item',
	'SM_ID',
	'R846');
INSERT INTO O_RATTR
	VALUES (562,
	271,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (562,
	271,
	560,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (271,
	52,
	0,
	277,
	273,
	274,
	275,
	566,
	567,
	0,
	0,
	'',
	'State Machine Event Data Item',
	'SMedi_ID',
	'R846');
INSERT INTO O_RATTR
	VALUES (566,
	271,
	277,
	52,
	1,
	'SMedi_ID');
INSERT INTO O_ATTR
	VALUES (566,
	271,
	562,
	'SMedi_ID',
	'',
	'',
	'SMedi_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (271,
	57,
	0,
	254,
	278,
	279,
	280,
	568,
	569,
	0,
	0,
	'',
	'Property Parameter',
	'PP_Id',
	'R847');
INSERT INTO O_RATTR
	VALUES (568,
	271,
	254,
	57,
	1,
	'PP_Id');
INSERT INTO O_ATTR
	VALUES (568,
	271,
	566,
	'PP_Id',
	'',
	'',
	'PP_Id',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	271);
INSERT INTO O_OIDA
	VALUES (560,
	271,
	0,
	'Value_ID');
INSERT INTO O_OIDA
	VALUES (562,
	271,
	0,
	'SM_ID');
INSERT INTO O_OIDA
	VALUES (566,
	271,
	0,
	'SMedi_ID');
INSERT INTO O_OIDA
	VALUES (568,
	271,
	0,
	'PP_Id');
INSERT INTO O_ID
	VALUES (1,
	271);
INSERT INTO O_ID
	VALUES (2,
	271);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (107,
	'Event Datum Value',
	806,
	'V_EDV',
	'This class represents the value of an event datum.',
	27);
INSERT INTO O_TFR
	VALUES (570,
	107,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'// Event Datum Value.dipose()
select many eprs related by self->V_EPR[R834];
for each epr in eprs
  epr.dispose();
end for;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (571,
	107,
	'getValue',
	'Return value for Event Datum Value',
	317,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return GD::NULL_INSTANCE(); ',
	1,
	'',
	572);
INSERT INTO O_TFR
	VALUES (572,
	107,
	'getRuntimeValue',
	'',
	296,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return GD::NULL_UNIQUE_ID(); ',
	1,
	'',
	570);
INSERT INTO O_TPARM
	VALUES (573,
	572,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (107,
	70,
	0,
	72,
	84,
	108,
	85,
	270,
	574,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (270,
	107,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (270,
	107,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	107);
INSERT INTO O_OIDA
	VALUES (270,
	107,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	107);
INSERT INTO O_ID
	VALUES (2,
	107);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (92,
	'Bridge Value',
	814,
	'V_BRV',
	'This class represents the value returned by a bridge invocation.',
	27);
INSERT INTO O_TFR
	VALUES (575,
	92,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one brg related by self->S_BRG[R828];
if ( not empty brg )
  unrelate self from brg across R828;
end if;

select many parm_set related by self->V_PAR[R810];
for each parm in parm_set 
  unrelate self from parm across R810;
  parm.dispose();
end for;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (576,
	92,
	'getValue',
	'Executes its bridge function and returns the result.',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	575);
INSERT INTO O_TPARM
	VALUES (577,
	576,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (578,
	92,
	'setupParameterValues',
	'',
	316,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return false; ',
	1,
	'',
	576);
INSERT INTO O_TPARM
	VALUES (579,
	578,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (580,
	578,
	'target_stack_frame_id',
	296,
	0,
	'',
	579,
	'');
INSERT INTO O_REF
	VALUES (92,
	70,
	0,
	72,
	84,
	93,
	85,
	187,
	581,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (187,
	92,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (187,
	92,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (582,
	92);
INSERT INTO O_BATTR
	VALUES (582,
	92);
INSERT INTO O_ATTR
	VALUES (582,
	92,
	583,
	'ParmListOK',
	'This attribute is true if there were no errors in parsing the bridge invocation''s parameter list.
--------------------------------------------------------------------------------
Bridge:ALS',
	'',
	'ParmListOK',
	0,
	316,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (584,
	92);
INSERT INTO O_BATTR
	VALUES (584,
	92);
INSERT INTO O_ATTR
	VALUES (584,
	92,
	582,
	'externalEntityKeyLettersLineNumber',
	'',
	'',
	'externalEntityKeyLettersLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (585,
	92);
INSERT INTO O_BATTR
	VALUES (585,
	92);
INSERT INTO O_ATTR
	VALUES (585,
	92,
	584,
	'externalEntityKeyLettersColumn',
	'',
	'',
	'externalEntityKeyLettersColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_REF
	VALUES (92,
	6,
	0,
	16,
	195,
	196,
	197,
	583,
	586,
	0,
	0,
	'',
	'Bridge',
	'Brg_ID',
	'R828');
INSERT INTO O_RATTR
	VALUES (583,
	92,
	16,
	6,
	1,
	'Brg_ID');
INSERT INTO O_ATTR
	VALUES (583,
	92,
	187,
	'Brg_ID',
	'
',
	'',
	'Brg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	92);
INSERT INTO O_OIDA
	VALUES (187,
	92,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	92);
INSERT INTO O_ID
	VALUES (2,
	92);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (79,
	'Binary Operation',
	802,
	'V_BIN',
	'Values are yielded by simple or compound expressions. Compound expressions are made up of nested binary operations. This class represents such as binary operations. The operator attribute contains the string identifier of the operation to be carried out.',
	27);
INSERT INTO O_TFR
	VALUES (587,
	79,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one lop related by self->V_VAL[R802];
if ( not_empty lop )
  unrelate lop from self across R802;
  lop.dispose();
end if;
select one rop related by self->V_VAL[R803];
if ( not_empty rop )
  unrelate rop from self across R803;
  rop.dispose();
end if;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (588,
	79,
	'getValue',
	'Performs Binary Operation and returns the value.
',
	317,
	1,
	'//Value: Binary Operation.getValue()
select one body related by self->V_VAL[R801]->ACT_BLK[R826]->ACT_ACT[R601];
select one dt related by self->V_VAL[R801]->S_DT[R820];
coreDataTypeName = dt.getCoreDataTypeName();
if (coreDataTypeName == "boolean")
  return GD::boolean_to_instance(value:self.getBoolean(stack_frame_id: param.stack_frame_id));
elif (coreDataTypeName == "integer")
  return GD::int_to_instance(value:self.getInteger(stack_frame_id: param.stack_frame_id));
elif (coreDataTypeName == "real")
  return GD::real_to_instance(value:self.getReal(stack_frame_id: param.stack_frame_id));
elif (coreDataTypeName == "string")
  return GD::string_to_instance(value:self.getString(stack_frame_id: param.stack_frame_id));
else
  error_message = "Error: Did not find a supported data type " + coreDataTypeName + " in attempt to retrieve value in binary operation.";
  USER::logError(msg:error_message,path:body.getPath());
end if;

return GD::string_to_instance(value:"Error");',
	1,
	'',
	589);
INSERT INTO O_TPARM
	VALUES (590,
	588,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (591,
	79,
	'getBoolean',
	'Performs Binary Operation and returns the boolean value.',
	316,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return false;',
	1,
	'',
	587);
INSERT INTO O_TPARM
	VALUES (592,
	591,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (589,
	79,
	'getString',
	'',
	322,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return "";',
	1,
	'',
	593);
INSERT INTO O_TPARM
	VALUES (594,
	589,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (595,
	79,
	'getInteger',
	'',
	298,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return 0;',
	1,
	'',
	591);
INSERT INTO O_TPARM
	VALUES (596,
	595,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (593,
	79,
	'getReal',
	'',
	374,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return 0.0;',
	1,
	'',
	595);
INSERT INTO O_TPARM
	VALUES (597,
	593,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (598,
	79,
	'compareInstRefSets',
	'Translate:native',
	316,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return false;',
	0,
	'',
	588);
INSERT INTO O_TPARM
	VALUES (599,
	598,
	'rRtVal',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (600,
	598,
	'lRtVal',
	296,
	0,
	'',
	599,
	'');
INSERT INTO O_REF
	VALUES (79,
	70,
	0,
	72,
	84,
	115,
	85,
	601,
	602,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (601,
	79,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (601,
	79,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (79,
	70,
	0,
	72,
	77,
	80,
	78,
	603,
	604,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R803.''has right''');
INSERT INTO O_RATTR
	VALUES (603,
	79,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (603,
	79,
	601,
	'Right_Value_ID',
	'',
	'Right_',
	'Value_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (79,
	70,
	0,
	72,
	81,
	83,
	82,
	605,
	606,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R802.''has left''');
INSERT INTO O_RATTR
	VALUES (605,
	79,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (605,
	79,
	603,
	'Left_Value_ID',
	'',
	'Left_',
	'Value_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (607,
	79);
INSERT INTO O_BATTR
	VALUES (607,
	79);
INSERT INTO O_ATTR
	VALUES (607,
	79,
	605,
	'Operator',
	'Full Name: Mathematical Operator
Data Domain: The character or string representing the operation. These include but are not limited to +, -, / and *.',
	'',
	'Operator',
	0,
	322,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	79);
INSERT INTO O_OIDA
	VALUES (601,
	79,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	79);
INSERT INTO O_ID
	VALUES (2,
	79);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (96,
	'Attribute Value Reference',
	812,
	'V_AVL',
	'This class represents a value held in an attribute of an instance being used on the right hand side of an assignment or an expression.',
	27);
INSERT INTO O_TFR
	VALUES (608,
	96,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one attr related by self->O_ATTR[R806];
if ( not_empty attr )
  unrelate self from attr across R806;
end if;

select one instRef related by self->V_VAL[R807];
if ( not_empty instRef )
  unrelate self from instRef across R807;
end if;
                    
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (609,
	96,
	'getValue',
	'',
	317,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return GD::NULL_INSTANCE();',
	1,
	'',
	610);
INSERT INTO O_TPARM
	VALUES (611,
	609,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (612,
	96,
	'setValue',
	'Attempts to find the Local Value created for the attribute reference and
assigns the passed in value to it.',
	19,
	1,
	'// Attribute Value Reference.setValue
select one body related by self->V_VAL[R801]->ACT_BLK[R826]->ACT_ACT[R601];


select one val related by self->V_VAL[R807];
select one instReference related by val->V_IRF[R801];
select one paramValue related by val->V_PVL[R801];

// get the attribute instance which represnet the left hand side of assigment expr
select one target related by self->O_ATTR[R806];
if not_empty instReference
    instReference.setValue(stack_frame_id: param.stack_frame_id,
                                  value: param.value, member_id:target.Attr_ID);   
    return;
elif not_empty paramValue
    paramValue.setValue(stack_frame_id: param.stack_frame_id,
                                  value: param.value, member_id:target.Attr_ID);
    return;
end if; 


// Did not find a supported value data type.
pathMsg = "<No Path Available - Empty instance>";
    if (not_empty body)
      pathMsg = body.getPath();
    end if;
	USER::logError(msg:"Value:AttributeValueReference.setValue() error, data type not supported.",path:pathMsg);',
	1,
	'',
	609);
INSERT INTO O_TPARM
	VALUES (613,
	612,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (614,
	612,
	'value',
	317,
	0,
	'',
	613,
	'');
INSERT INTO O_TPARM
	VALUES (615,
	612,
	'member_id',
	296,
	0,
	'',
	614,
	'');
INSERT INTO O_TFR
	VALUES (616,
	96,
	'setupSelf',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	612);
INSERT INTO O_TPARM
	VALUES (617,
	616,
	'body_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (618,
	616,
	'stack_frame_id',
	296,
	0,
	'',
	617,
	'');
INSERT INTO O_TFR
	VALUES (610,
	96,
	'getRuntimeValue',
	'',
	296,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return GD::NULL_UNIQUE_ID();
',
	1,
	'',
	608);
INSERT INTO O_TPARM
	VALUES (619,
	610,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (96,
	70,
	0,
	72,
	84,
	97,
	85,
	620,
	621,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (620,
	96,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (620,
	96,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (96,
	37,
	0,
	168,
	165,
	166,
	167,
	622,
	623,
	0,
	0,
	'',
	'Attribute',
	'Attr_ID',
	'R806.''is value of''');
INSERT INTO O_RATTR
	VALUES (622,
	96,
	168,
	37,
	1,
	'Attr_ID');
INSERT INTO O_ATTR
	VALUES (622,
	96,
	624,
	'Attr_ID',
	'

',
	'',
	'Attr_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (96,
	70,
	0,
	72,
	236,
	237,
	238,
	625,
	626,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R807.''has root''');
INSERT INTO O_RATTR
	VALUES (625,
	96,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (625,
	96,
	620,
	'Root_Value_ID',
	'',
	'Root_',
	'Value_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (96,
	37,
	0,
	169,
	165,
	166,
	167,
	624,
	627,
	0,
	0,
	'',
	'Attribute',
	'Obj_ID',
	'R806.''is value of''');
INSERT INTO O_RATTR
	VALUES (624,
	96,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (624,
	96,
	625,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	96);
INSERT INTO O_OIDA
	VALUES (620,
	96,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	96);
INSERT INTO O_ID
	VALUES (2,
	96);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (122,
	'Array Length Value',
	828,
	'V_ALV',
	'',
	27);
INSERT INTO O_TFR
	VALUES (628,
	122,
	'dispose',
	'',
	19,
	1,
	'// Array Element Reference.dispose()
select one value related by self->V_VAL[R840];
if (not_empty value)
  unrelate self from value across R840;
end if;

delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (122,
	70,
	0,
	72,
	84,
	123,
	85,
	629,
	630,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (629,
	122,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (629,
	122,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (122,
	70,
	0,
	72,
	245,
	246,
	247,
	631,
	632,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R840');
INSERT INTO O_RATTR
	VALUES (631,
	122,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (631,
	122,
	629,
	'Array_Value_ID',
	'',
	'Array_',
	'Value_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	122);
INSERT INTO O_OIDA
	VALUES (629,
	122,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	122);
INSERT INTO O_ID
	VALUES (2,
	122);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (120,
	'Array Element Reference',
	826,
	'V_AER',
	'',
	27);
INSERT INTO O_TFR
	VALUES (633,
	120,
	'dispose',
	'',
	19,
	1,
	'// Array Element Reference.dispose()
select one value related by self->V_VAL[R838];
if (not_empty value)
  unrelate self from value across R838;
end if;

select one value related by self->V_VAL[R839];
if (not_empty value)
  unrelate self from value across R839;
end if;

delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (634,
	120,
	'getRuntimeValue',
	'',
	296,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return GD::NULL_UNIQUE_ID();
',
	1,
	'',
	633);
INSERT INTO O_TPARM
	VALUES (635,
	634,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (636,
	120,
	'setValue',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	634);
INSERT INTO O_TPARM
	VALUES (637,
	636,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (638,
	636,
	'value',
	317,
	0,
	'',
	637,
	'');
INSERT INTO O_TPARM
	VALUES (639,
	636,
	'member_id',
	296,
	0,
	'',
	638,
	'');
INSERT INTO O_REF
	VALUES (120,
	70,
	0,
	72,
	84,
	121,
	85,
	640,
	641,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R801');
INSERT INTO O_RATTR
	VALUES (640,
	120,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (640,
	120,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (120,
	70,
	0,
	72,
	239,
	241,
	240,
	642,
	643,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R838.''has root''');
INSERT INTO O_RATTR
	VALUES (642,
	120,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (642,
	120,
	640,
	'Root_Value_ID',
	'',
	'Root_',
	'Value_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (120,
	70,
	0,
	72,
	242,
	243,
	244,
	644,
	645,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R839.''has index''');
INSERT INTO O_RATTR
	VALUES (644,
	120,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (644,
	120,
	642,
	'Index_Value_ID',
	'',
	'Index_',
	'Value_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	120);
INSERT INTO O_OIDA
	VALUES (640,
	120,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	120);
INSERT INTO O_ID
	VALUES (2,
	120);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (68,
	'Actual Parameter',
	801,
	'V_PAR',
	'This class represents the actual parameter value passed to a Function, Bridge or an Operation.',
	27);
INSERT INTO O_TFR
	VALUES (646,
	68,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one val related by self->V_VAL[R800];
if ( not_empty val )
  unrelate self from val across R800;
  val.dispose();
end if;
select one next_parm related by self->V_PAR[R816.''precedes''];
select one prior_parm related by self->V_PAR[R816.''succeeds''];
if ( not_empty next_parm and not_empty prior_parm )
  // in the middle of the chain
  unrelate self from next_parm across R816.''precedes'';
  unrelate prior_parm from self across R816.''precedes'';
  relate prior_parm to next_parm across R816.''precedes'';
else
  if ( not_empty prior_parm and empty next_parm )
    // we''re last in list
    unrelate prior_parm from self across R816.''precedes'';
  else
    // we''re first in list
    unrelate self from next_parm across R816.''precedes'';
  end if;
end if;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (68,
	70,
	0,
	72,
	67,
	69,
	71,
	204,
	647,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R800');
INSERT INTO O_RATTR
	VALUES (204,
	68,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (204,
	68,
	0,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (68,
	648,
	0,
	649,
	650,
	651,
	652,
	653,
	654,
	0,
	0,
	'',
	'Operation Invocation',
	'Statement_ID',
	'R627');
INSERT INTO O_REF
	VALUES (68,
	655,
	0,
	656,
	657,
	658,
	659,
	653,
	660,
	654,
	0,
	'',
	'Bridge Invocation',
	'Statement_ID',
	'R628');
INSERT INTO O_REF
	VALUES (68,
	661,
	0,
	662,
	663,
	664,
	665,
	653,
	666,
	660,
	0,
	'',
	'Function Invocation',
	'Statement_ID',
	'R669');
INSERT INTO O_REF
	VALUES (68,
	667,
	0,
	668,
	669,
	670,
	671,
	653,
	672,
	666,
	0,
	'',
	'Event Specification Statement',
	'Statement_ID',
	'R700');
INSERT INTO O_REF
	VALUES (68,
	673,
	0,
	674,
	675,
	676,
	677,
	653,
	678,
	672,
	0,
	'',
	'Interface Operation Invocation',
	'Statement_ID',
	'R679');
INSERT INTO O_REF
	VALUES (68,
	679,
	0,
	680,
	681,
	682,
	683,
	653,
	684,
	678,
	0,
	'',
	'Signal Invocation',
	'Statement_ID',
	'R662');
INSERT INTO O_RATTR
	VALUES (653,
	68,
	685,
	686,
	1,
	'Statement_ID');
INSERT INTO O_ATTR
	VALUES (653,
	68,
	204,
	'Statement_ID',
	'

',
	'',
	'Statement_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (687,
	68);
INSERT INTO O_BATTR
	VALUES (687,
	68);
INSERT INTO O_ATTR
	VALUES (687,
	68,
	688,
	'Name',
	'The name of the actual parameter value passed to a function. ',
	'',
	'Name',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (68,
	68,
	0,
	204,
	202,
	205,
	203,
	689,
	690,
	0,
	0,
	'',
	'Actual Parameter',
	'Value_ID',
	'R816');
INSERT INTO O_RATTR
	VALUES (689,
	68,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (689,
	68,
	687,
	'Next_Value_ID',
	'

',
	'Next_',
	'Value_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (691,
	68);
INSERT INTO O_BATTR
	VALUES (691,
	68);
INSERT INTO O_ATTR
	VALUES (691,
	68,
	689,
	'labelLineNumber',
	'Stores the line number within the activity text of the label associated with 
this actual parameter.',
	'',
	'labelLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (692,
	68);
INSERT INTO O_BATTR
	VALUES (692,
	68);
INSERT INTO O_ATTR
	VALUES (692,
	68,
	691,
	'labelColumn',
	'Stores the column within the activity text of the label associated with 
this actual parameter.
',
	'',
	'labelColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_REF
	VALUES (68,
	86,
	0,
	183,
	181,
	184,
	182,
	688,
	693,
	694,
	0,
	'',
	'Function Value',
	'Value_ID',
	'R817');
INSERT INTO O_REF
	VALUES (68,
	103,
	0,
	177,
	189,
	191,
	190,
	688,
	694,
	695,
	0,
	'',
	'Operation Value',
	'Value_ID',
	'R811');
INSERT INTO O_REF
	VALUES (68,
	92,
	0,
	187,
	185,
	188,
	186,
	688,
	695,
	0,
	0,
	'',
	'Bridge Value',
	'Value_ID',
	'R810');
INSERT INTO O_REF
	VALUES (68,
	124,
	0,
	250,
	248,
	251,
	249,
	688,
	696,
	693,
	0,
	'',
	'Message Value',
	'Value_ID',
	'R842');
INSERT INTO O_RATTR
	VALUES (688,
	68,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (688,
	68,
	653,
	'Invocation_Value_ID',
	'

',
	'Invocation_',
	'Value_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	68);
INSERT INTO O_OIDA
	VALUES (204,
	68,
	0,
	'Value_ID');
INSERT INTO O_ID
	VALUES (1,
	68);
INSERT INTO O_ID
	VALUES (2,
	68);
-- BP 7.1 content: Subsystem syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SS
	VALUES (697,
	'Use Case',
	'// This is used by schema_gen to ignore this subsystem (for publication)
TRANSLATE_FOR_EXTERNAL_USE:FALSE',
	'UC',
	1200,
	1,
	0);
INSERT INTO S_SID
	VALUES (1,
	697);
INSERT INTO O_IOBJ
	VALUES (698,
	699,
	0,
	697,
	'Domain',
	'S_DOM');
INSERT INTO O_IOBJ
	VALUES (700,
	701,
	0,
	697,
	'Subsystem',
	'S_SS');
INSERT INTO O_IOBJ
	VALUES (702,
	703,
	0,
	697,
	'Interaction Participant',
	'SQ_P');
INSERT INTO O_IOBJ
	VALUES (704,
	705,
	0,
	697,
	'System Model',
	'S_SYS');
INSERT INTO O_IOBJ
	VALUES (706,
	707,
	0,
	697,
	'Component Package',
	'CP_CP');
INSERT INTO O_IOBJ
	VALUES (708,
	709,
	0,
	697,
	'Component',
	'C_C');
INSERT INTO R_SIMP
	VALUES (710);
INSERT INTO R_REL
	VALUES (710,
	1201,
	'',
	697);
INSERT INTO R_PART
	VALUES (699,
	710,
	711,
	0,
	1,
	'can be displayed in');
INSERT INTO O_RTIDA
	VALUES (712,
	699,
	0,
	710,
	711);
INSERT INTO R_RTO
	VALUES (699,
	710,
	711,
	0);
INSERT INTO R_OIR
	VALUES (699,
	710,
	711,
	698);
INSERT INTO R_FORM
	VALUES (713,
	710,
	714,
	1,
	1,
	'can display');
INSERT INTO R_RGO
	VALUES (713,
	710,
	714);
INSERT INTO R_OIR
	VALUES (713,
	710,
	714,
	0);
INSERT INTO R_SIMP
	VALUES (715);
INSERT INTO R_REL
	VALUES (715,
	1202,
	'',
	697);
INSERT INTO R_PART
	VALUES (701,
	715,
	716,
	0,
	1,
	'can be displayed in');
INSERT INTO O_RTIDA
	VALUES (717,
	701,
	0,
	715,
	716);
INSERT INTO R_RTO
	VALUES (701,
	715,
	716,
	0);
INSERT INTO R_OIR
	VALUES (701,
	715,
	716,
	700);
INSERT INTO R_FORM
	VALUES (713,
	715,
	718,
	1,
	1,
	'can display');
INSERT INTO R_RGO
	VALUES (713,
	715,
	718);
INSERT INTO R_OIR
	VALUES (713,
	715,
	718,
	0);
INSERT INTO R_SIMP
	VALUES (719);
INSERT INTO R_REL
	VALUES (719,
	1208,
	'',
	697);
INSERT INTO R_PART
	VALUES (713,
	719,
	720,
	0,
	0,
	'is shown in');
INSERT INTO O_RTIDA
	VALUES (721,
	713,
	0,
	719,
	720);
INSERT INTO R_RTO
	VALUES (713,
	719,
	720,
	0);
INSERT INTO R_OIR
	VALUES (713,
	719,
	720,
	0);
INSERT INTO R_FORM
	VALUES (722,
	719,
	723,
	0,
	1,
	'can show');
INSERT INTO R_RGO
	VALUES (722,
	719,
	723);
INSERT INTO R_OIR
	VALUES (722,
	719,
	723,
	0);
INSERT INTO R_SIMP
	VALUES (724);
INSERT INTO R_REL
	VALUES (724,
	1209,
	'',
	697);
INSERT INTO R_PART
	VALUES (722,
	724,
	725,
	0,
	1,
	'is connection to parent');
INSERT INTO O_RTIDA
	VALUES (726,
	722,
	0,
	724,
	725);
INSERT INTO R_RTO
	VALUES (722,
	724,
	725,
	0);
INSERT INTO R_OIR
	VALUES (722,
	724,
	725,
	0);
INSERT INTO R_FORM
	VALUES (713,
	724,
	727,
	1,
	1,
	'has children');
INSERT INTO R_RGO
	VALUES (713,
	724,
	727);
INSERT INTO R_OIR
	VALUES (713,
	724,
	727,
	0);
INSERT INTO R_SUBSUP
	VALUES (728);
INSERT INTO R_REL
	VALUES (728,
	1210,
	'',
	697);
INSERT INTO R_SUPER
	VALUES (729,
	728,
	730);
INSERT INTO O_RTIDA
	VALUES (731,
	729,
	0,
	728,
	730);
INSERT INTO R_RTO
	VALUES (729,
	728,
	730,
	0);
INSERT INTO R_OIR
	VALUES (729,
	728,
	730,
	0);
INSERT INTO R_SUB
	VALUES (732,
	728,
	733);
INSERT INTO R_RGO
	VALUES (732,
	728,
	733);
INSERT INTO R_OIR
	VALUES (732,
	728,
	733,
	0);
INSERT INTO R_SUB
	VALUES (734,
	728,
	735);
INSERT INTO R_RGO
	VALUES (734,
	728,
	735);
INSERT INTO R_OIR
	VALUES (734,
	728,
	735,
	0);
INSERT INTO R_SUB
	VALUES (736,
	728,
	737);
INSERT INTO R_RGO
	VALUES (736,
	728,
	737);
INSERT INTO R_OIR
	VALUES (736,
	728,
	737,
	0);
INSERT INTO R_SUB
	VALUES (738,
	728,
	739);
INSERT INTO R_RGO
	VALUES (738,
	728,
	739);
INSERT INTO R_OIR
	VALUES (738,
	728,
	739,
	0);
INSERT INTO R_ASSOC
	VALUES (740);
INSERT INTO R_REL
	VALUES (740,
	1203,
	'',
	697);
INSERT INTO R_AONE
	VALUES (713,
	740,
	741,
	0,
	1,
	'is displayed in');
INSERT INTO O_RTIDA
	VALUES (721,
	713,
	0,
	740,
	741);
INSERT INTO R_RTO
	VALUES (713,
	740,
	741,
	0);
INSERT INTO R_OIR
	VALUES (713,
	740,
	741,
	0);
INSERT INTO R_AOTH
	VALUES (703,
	740,
	742,
	1,
	1,
	'can display');
INSERT INTO O_RTIDA
	VALUES (743,
	703,
	0,
	740,
	742);
INSERT INTO R_RTO
	VALUES (703,
	740,
	742,
	0);
INSERT INTO R_OIR
	VALUES (703,
	740,
	742,
	702);
INSERT INTO R_ASSR
	VALUES (744,
	740,
	745,
	0);
INSERT INTO R_RGO
	VALUES (744,
	740,
	745);
INSERT INTO R_OIR
	VALUES (744,
	740,
	745,
	0);
INSERT INTO R_SIMP
	VALUES (746);
INSERT INTO R_REL
	VALUES (746,
	1206,
	'',
	697);
INSERT INTO R_PART
	VALUES (703,
	746,
	747,
	0,
	0,
	'starts at');
INSERT INTO O_RTIDA
	VALUES (743,
	703,
	0,
	746,
	747);
INSERT INTO R_RTO
	VALUES (703,
	746,
	747,
	0);
INSERT INTO R_OIR
	VALUES (703,
	746,
	747,
	702);
INSERT INTO R_FORM
	VALUES (729,
	746,
	748,
	1,
	1,
	'is source');
INSERT INTO R_RGO
	VALUES (729,
	746,
	748);
INSERT INTO R_OIR
	VALUES (729,
	746,
	748,
	0);
INSERT INTO R_SIMP
	VALUES (749);
INSERT INTO R_REL
	VALUES (749,
	1207,
	'',
	697);
INSERT INTO R_FORM
	VALUES (729,
	749,
	750,
	1,
	1,
	'is destination');
INSERT INTO R_RGO
	VALUES (729,
	749,
	750);
INSERT INTO R_OIR
	VALUES (729,
	749,
	750,
	0);
INSERT INTO R_PART
	VALUES (703,
	749,
	751,
	0,
	0,
	'ends at');
INSERT INTO O_RTIDA
	VALUES (743,
	703,
	0,
	749,
	751);
INSERT INTO R_RTO
	VALUES (703,
	749,
	751,
	0);
INSERT INTO R_OIR
	VALUES (703,
	749,
	751,
	702);
INSERT INTO R_SIMP
	VALUES (752);
INSERT INTO R_REL
	VALUES (752,
	1211,
	'',
	697);
INSERT INTO R_PART
	VALUES (705,
	752,
	753,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (754,
	705,
	0,
	752,
	753);
INSERT INTO R_RTO
	VALUES (705,
	752,
	753,
	0);
INSERT INTO R_OIR
	VALUES (705,
	752,
	753,
	704);
INSERT INTO R_FORM
	VALUES (713,
	752,
	755,
	1,
	1,
	'can display');
INSERT INTO R_RGO
	VALUES (713,
	752,
	755);
INSERT INTO R_OIR
	VALUES (713,
	752,
	755,
	0);
INSERT INTO R_SIMP
	VALUES (756);
INSERT INTO R_REL
	VALUES (756,
	1212,
	'',
	697);
INSERT INTO R_PART
	VALUES (707,
	756,
	757,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (758,
	707,
	0,
	756,
	757);
INSERT INTO R_RTO
	VALUES (707,
	756,
	757,
	0);
INSERT INTO R_OIR
	VALUES (707,
	756,
	757,
	706);
INSERT INTO R_FORM
	VALUES (713,
	756,
	759,
	1,
	1,
	'can display');
INSERT INTO R_RGO
	VALUES (713,
	756,
	759);
INSERT INTO R_OIR
	VALUES (713,
	756,
	759,
	0);
INSERT INTO R_SIMP
	VALUES (760);
INSERT INTO R_REL
	VALUES (760,
	1213,
	'',
	697);
INSERT INTO R_PART
	VALUES (709,
	760,
	761,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (762,
	709,
	0,
	760,
	761);
INSERT INTO R_RTO
	VALUES (709,
	760,
	761,
	0);
INSERT INTO R_OIR
	VALUES (709,
	760,
	761,
	708);
INSERT INTO R_FORM
	VALUES (713,
	760,
	763,
	1,
	1,
	'can display');
INSERT INTO R_RGO
	VALUES (713,
	760,
	763);
INSERT INTO R_OIR
	VALUES (713,
	760,
	763,
	0);
INSERT INTO R_SIMP
	VALUES (764);
INSERT INTO R_REL
	VALUES (764,
	1214,
	'',
	697);
INSERT INTO R_PART
	VALUES (713,
	764,
	765,
	0,
	0,
	'contained in');
INSERT INTO O_RTIDA
	VALUES (721,
	713,
	0,
	764,
	765);
INSERT INTO R_RTO
	VALUES (713,
	764,
	765,
	0);
INSERT INTO R_OIR
	VALUES (713,
	764,
	765,
	0);
INSERT INTO R_FORM
	VALUES (766,
	764,
	767,
	1,
	1,
	'contains');
INSERT INTO R_RGO
	VALUES (766,
	764,
	767);
INSERT INTO R_OIR
	VALUES (766,
	764,
	767,
	0);
INSERT INTO R_SIMP
	VALUES (768);
INSERT INTO R_REL
	VALUES (768,
	1215,
	'',
	697);
INSERT INTO R_FORM
	VALUES (766,
	768,
	769,
	0,
	1,
	'contained through');
INSERT INTO R_RGO
	VALUES (766,
	768,
	769);
INSERT INTO R_OIR
	VALUES (766,
	768,
	769,
	0);
INSERT INTO R_PART
	VALUES (729,
	768,
	770,
	0,
	0,
	'provides containment');
INSERT INTO O_RTIDA
	VALUES (731,
	729,
	0,
	768,
	770);
INSERT INTO R_RTO
	VALUES (729,
	768,
	770,
	0);
INSERT INTO R_OIR
	VALUES (729,
	768,
	770,
	0);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (722,
	'Use Case in Use Case',
	1205,
	'UC_UIU',
	'',
	697);
INSERT INTO O_REF
	VALUES (722,
	713,
	0,
	721,
	719,
	723,
	720,
	726,
	771,
	0,
	0,
	'',
	'Use Case Diagram',
	'Package_ID',
	'R1208');
INSERT INTO O_RATTR
	VALUES (726,
	722,
	772,
	773,
	1,
	'Package_ID');
INSERT INTO O_ATTR
	VALUES (726,
	722,
	0,
	'Package_ID',
	'',
	'',
	'SpecificationPackage_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	722);
INSERT INTO O_OIDA
	VALUES (726,
	722,
	0,
	'Package_ID');
INSERT INTO O_ID
	VALUES (1,
	722);
INSERT INTO O_ID
	VALUES (2,
	722);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (713,
	'Use Case Diagram',
	1200,
	'UC_UCC',
	'',
	697);
INSERT INTO O_TFR
	VALUES (774,
	713,
	'get_compartment_text',
	'',
	322,
	1,
	'result = "";
if (param.at == Justification::Center_in_X)
  result = "«use case»";
elif (param.at == Justification::Center)
  result = self.Name;
end if;
return result;',
	1,
	'',
	775);
INSERT INTO O_TPARM
	VALUES (776,
	774,
	'comp_num',
	298,
	0,
	'',
	777,
	'');
INSERT INTO O_TPARM
	VALUES (778,
	774,
	'ent_num',
	298,
	0,
	'',
	776,
	'');
INSERT INTO O_TPARM
	VALUES (777,
	774,
	'at',
	779,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (780,
	713,
	'get_compartments',
	'',
	298,
	1,
	'return 1;',
	1,
	'',
	774);
INSERT INTO O_TFR
	VALUES (781,
	713,
	'get_entries',
	'',
	298,
	1,
	'return 1;',
	1,
	'',
	780);
INSERT INTO O_TPARM
	VALUES (782,
	781,
	'comp_num',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (783,
	713,
	'get_text_style',
	'',
	784,
	1,
	'return Style::None;',
	1,
	'',
	785);
INSERT INTO O_TPARM
	VALUES (786,
	783,
	'comp_num',
	298,
	0,
	'',
	787,
	'');
INSERT INTO O_TPARM
	VALUES (788,
	783,
	'ent_num',
	298,
	0,
	'',
	786,
	'');
INSERT INTO O_TPARM
	VALUES (787,
	783,
	'at',
	779,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (785,
	713,
	'get_style',
	'',
	784,
	1,
	'return Style::Folder;',
	1,
	'',
	789);
INSERT INTO O_TFR
	VALUES (789,
	713,
	'get_ooa_id',
	'',
	296,
	1,
	'return self.Package_ID;',
	1,
	'',
	781);
INSERT INTO O_TFR
	VALUES (790,
	713,
	'newUseCase',
	'',
	19,
	1,
	'create object instance uc of IA_UCP;
create object instance part of SQ_P;
create object instance piuc of UC_PIUC;
relate uc to part across R930;
relate part to self across R1203 using piuc;
uc.initialize();',
	1,
	'',
	791);
INSERT INTO O_TFR
	VALUES (792,
	713,
	'newUseCasePackage',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
create object instance ucc of UC_UCC;
create object instance sp of EP_SPKG;
relate ucc to sp across R1402;
select one ucinuc related by self->UC_UIU[R1208];
if(empty ucinuc)
  create object instance ucinuc of UC_UIU;
  relate self to ucinuc across R1208;
end if;
relate ucinuc to ucc across R1209;
ucc.initialize();',
	1,
	'',
	790);
INSERT INTO O_TFR
	VALUES (793,
	713,
	'initialize',
	'',
	19,
	1,
	'self.Name = ::getUniqueInitialName( 
    instance: self.convertToInstance(), 
    candidateName: "Unnamed Use Case Diagram");',
	1,
	'',
	783);
INSERT INTO O_TFR
	VALUES (794,
	713,
	'newActor',
	'',
	19,
	1,
	'create object instance actor of SQ_AP;
create object instance part of SQ_P;
create object instance piuc of UC_PIUC;
relate self to part across R1203 using piuc;
relate actor to part across R930;
actor.initialize();',
	1,
	'',
	793);
INSERT INTO O_TFR
	VALUES (795,
	713,
	'newGeneralization',
	'',
	316,
	1,
	'select any source related by self->UC_PIUC[R1203]->SQ_P[R1203] where (selected.Part_ID == param.from);
select any destination related by self->UC_PIUC[R1203]->SQ_P[R1203] where (selected.Part_ID == param.to);
createAssoc = false;
if((not_empty source) and (not_empty destination) and (source != destination))
  select one sourceUC related by source->IA_UCP[R930];
  select one destUC related by destination->IA_UCP[R930];
  if(not_empty sourceUC and not_empty destUC)
    createAssoc = true;
  else
    select one sourceActor related by source->SQ_AP[R930];
    select one destActor related by destination->SQ_AP[R930];
    if(not_empty sourceActor and not_empty destActor)
      createAssoc = true;
    end if;
  end if;
end if;
if(createAssoc)
  create object instance association of UC_UCA;
  create object instance gen of UC_G;
  create object instance aiuc of UC_AIUC;
  relate association to aiuc across R1215;
  relate self to aiuc across R1214;
  if (not_empty source)
    relate association to source across R1206;
  end if;
  if (not_empty destination)
    relate association to destination across R1207;
  end if;
  relate association to gen across R1210;
  return true;
end if;
return false;',
	1,
	'',
	796);
INSERT INTO O_TPARM
	VALUES (797,
	795,
	'from',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (798,
	795,
	'to',
	296,
	0,
	'',
	799,
	'');
INSERT INTO O_TPARM
	VALUES (799,
	795,
	'fromIsImported',
	316,
	0,
	'',
	797,
	'');
INSERT INTO O_TPARM
	VALUES (800,
	795,
	'toIsImported',
	316,
	0,
	'',
	798,
	'');
INSERT INTO O_TFR
	VALUES (801,
	713,
	'newAssociation',
	'',
	316,
	1,
	'select any sourceActor related by self->UC_PIUC[R1203]->SQ_P[R1203]->SQ_AP[R930] where (selected.Part_ID == param.from);
select any destinationUC related by self->UC_PIUC[R1203]->SQ_P[R1203]->IA_UCP[R930] where (selected.Part_ID == param.to);
if(not_empty sourceActor and not_empty destinationUC)
  create object instance association of UC_UCA;
  create object instance ba of UC_BA;
  create object instance aiuc of UC_AIUC;
  relate association to aiuc across R1215;
  relate self to aiuc across R1214;
  select one sourcePart related by sourceActor->SQ_P[R930];
  select one destPart related by destinationUC->SQ_P[R930];
  relate association to sourcePart across R1206;
  relate association to destPart across R1207;
  relate association to ba across R1210;
  return true;
end if;
return false;',
	1,
	'',
	794);
INSERT INTO O_TPARM
	VALUES (802,
	801,
	'from',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (803,
	801,
	'to',
	296,
	0,
	'',
	804,
	'');
INSERT INTO O_TPARM
	VALUES (804,
	801,
	'fromIsImported',
	316,
	0,
	'',
	802,
	'');
INSERT INTO O_TPARM
	VALUES (805,
	801,
	'toIsImported',
	316,
	0,
	'',
	803,
	'');
INSERT INTO O_TFR
	VALUES (791,
	713,
	'newInclude',
	'',
	316,
	1,
	'select any sourceUC related by self->UC_PIUC[R1203]->SQ_P[R1203]->IA_UCP[R930] where (selected.Part_ID == param.from);
select any destinationUC related by self->UC_PIUC[R1203]->SQ_P[R1203]->IA_UCP[R930] where (selected.Part_ID == param.to);
if(not_empty sourceUC and not_empty destinationUC) and (sourceUC != destinationUC)
  create object instance association of UC_UCA;
  create object instance inc of UC_I;
  create object instance aiuc of UC_AIUC;
  relate association to aiuc across R1215;
  relate self to aiuc across R1214;
  select one source related by sourceUC->SQ_P[R930];
  select one destination related by destinationUC->SQ_P[R930];
  relate association to source across R1206;
  relate association to destination across R1207;
  relate association to inc across R1210;
  return true;
end if;
return false;',
	1,
	'',
	795);
INSERT INTO O_TPARM
	VALUES (806,
	791,
	'from',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (807,
	791,
	'to',
	296,
	0,
	'',
	808,
	'');
INSERT INTO O_TPARM
	VALUES (808,
	791,
	'fromIsImported',
	316,
	0,
	'',
	806,
	'');
INSERT INTO O_TPARM
	VALUES (809,
	791,
	'toIsImported',
	316,
	0,
	'',
	807,
	'');
INSERT INTO O_TFR
	VALUES (796,
	713,
	'newExtend',
	'',
	316,
	1,
	'select any sourceUC related by self->UC_PIUC[R1203]->SQ_P[R1203]->IA_UCP[R930] where (selected.Part_ID == param.from);
select any destinationUC related by self->UC_PIUC[R1203]->SQ_P[R1203]->IA_UCP[R930] where (selected.Part_ID == param.to);
if(not_empty sourceUC and not_empty destinationUC) and (sourceUC != destinationUC)
  create object instance association of UC_UCA;
  create object instance ext of UC_E;
  create object instance aiuc of UC_AIUC;
  relate association to aiuc across R1215;
  relate self to aiuc across R1214;
  select one source related by sourceUC->SQ_P[R930];
  select one destination related by destinationUC->SQ_P[R930];
  relate association to source across R1206;
  relate association to destination across R1207;
  relate association to ext across R1210;
  return true;
end if;
return false;',
	1,
	'',
	801);
INSERT INTO O_TPARM
	VALUES (810,
	796,
	'from',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (811,
	796,
	'to',
	296,
	0,
	'',
	812,
	'');
INSERT INTO O_TPARM
	VALUES (812,
	796,
	'fromIsImported',
	316,
	0,
	'',
	810,
	'');
INSERT INTO O_TPARM
	VALUES (813,
	796,
	'toIsImported',
	316,
	0,
	'',
	811,
	'');
INSERT INTO O_TFR
	VALUES (775,
	713,
	'dispose',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// unrelate from parent
select one ucpInUcp related by self->UC_UIU[R1209];
if(not_empty ucpInUcp)
  unrelate self from ucpInUcp across R1209;
  // are there any other children?
  select any other_child related by ucpInUcp->UC_UCC[R1209];
  if empty other_child
    // no, dispose the use case in use case placeholder
    select one ucc related by ucpInUcp->UC_UCC[R1208];
    if(not_empty ucc)
      unrelate ucc from ucpInUcp across R1208;
    end if;
    delete object instance ucpInUcp;
  end if;
end if;

// delete child use case diagrams
select one ucinuc related by self->UC_UIU[R1208];
select many ucs related by ucinuc->UC_UCC[R1209];
for each uc in ucs
  uc.dispose();
end for;
// last child will delete the ucinuc instance
  
select one domain related by self->S_DOM[R1201];
if(not_empty domain)
  unrelate self from domain across R1201;
end if;
select one ss related by self->S_SS[R1202];
if(not_empty ss)
  unrelate self from ss across R1202;
end if;
select one system related by self->S_SYS[R1211];
if(not_empty system)
  unrelate self from system across R1211;
end if;
select one compPackage related by self->CP_CP[R1212];
if(not_empty compPackage)
  unrelate self from compPackage across R1212;
end if;
select one comp related by self->C_C[R1213];
if(not_empty comp)
  unrelate self from comp across R1213;
end if;
select many piucs related by self->UC_PIUC[R1203];
for each piuc in piucs
  select one participant related by piuc->SQ_P[R1203];
  if (not_empty participant)
    participant.dispose();
  end if;
end for;
// dispose association in use case instances
select many aiucs related by self->UC_AIUC[R1214];
for each aiuc in aiucs
  select one assoc related by aiuc->UC_UCA[R1215];
  unrelate aiuc from assoc across R1215;
  unrelate aiuc from self across R1214;
  assoc.dispose();
end for;
select one specPkg related by self->EP_SPKG[R1402];
if(not_empty specPkg)
  unrelate self from specPkg across R1402;
  specPkg.dispose();
end if;
delete object instance self;',
	1,
	'',
	814);
INSERT INTO O_TFR
	VALUES (815,
	713,
	'convertToInstance',
	'A utility operation to cast an instance of this type to the
instance datatype.

Translate: native',
	317,
	1,
	'// just return this instance as an Object
return this;',
	0,
	'',
	816);
INSERT INTO O_TFR
	VALUES (817,
	713,
	'associateWithPackage',
	'',
	19,
	1,
	'// unhook from current parent
self.deassociateFromParent();
// hook up with package
select any package from instances of EP_PKG
                                     where (selected.Package_ID == param.pkgID);
select one specPkg related by self->EP_SPKG[R1402];
relate specPkg to package across R1400;',
	1,
	'',
	818);
INSERT INTO O_TPARM
	VALUES (819,
	817,
	'pkgID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (820,
	713,
	'associateWithSystem',
	'',
	19,
	1,
	'// unhook from current parent
self.deassociateFromParent();
// hook up with system
select any system from instances of S_SYS
                                         where (selected.Sys_ID == param.sysID);
relate system to self across R1211;',
	1,
	'',
	821);
INSERT INTO O_TPARM
	VALUES (822,
	820,
	'sysID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (821,
	713,
	'associateWithSubsystem',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// unhook from current parent
self.deassociateFromParent();
// hook up with domain
select any ss from instances of S_SS where (selected.SS_ID == param.ssID);
relate ss to self across R1202;',
	1,
	'',
	817);
INSERT INTO O_TPARM
	VALUES (823,
	821,
	'ssID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (818,
	713,
	'associateWithDomain',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// unhook from current parent
self.deassociateFromParent();
// hook up with domain
select any domain from instances of S_DOM
                                         where (selected.Dom_ID == param.domID);
relate domain to self across R1201;',
	1,
	'',
	824);
INSERT INTO O_TPARM
	VALUES (825,
	818,
	'domID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (826,
	713,
	'associateWithComponent',
	'',
	19,
	1,
	'// unhook from current parent
self.deassociateFromParent();
// hook up with component
select any component from instances of C_C
                                    where (selected.Id == param.compID);
relate self to component across R1213;',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (827,
	826,
	'compID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (824,
	713,
	'associateWithComponentPackage',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// unhook from current parent
self.deassociateFromParent();
// hook up with component package
select any cp from instances of CP_CP where (selected.Package_ID == param.cpID);
relate cp to self across R1212;',
	1,
	'',
	826);
INSERT INTO O_TPARM
	VALUES (828,
	824,
	'cpID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (816,
	713,
	'associateWithUseCaseDiagram',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// unhook from current parent
self.deassociateFromParent();
// hook up with communication
select any ucd from instances of UC_UCC
                                     where (selected.Package_ID == param.ucdID);
select one uiu related by ucd->UC_UIU[R1208];
if(empty uiu)
  create object instance uiu of UC_UIU;
  relate ucd to uiu across R1208;
end if;
relate self to uiu across R1209;',
	1,
	'',
	820);
INSERT INTO O_TPARM
	VALUES (829,
	816,
	'ucdID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (814,
	713,
	'deassociateFromParent',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one system related by self->S_SYS[R1211];
if(not_empty system)
  unrelate self from system across R1211;
end if;
select one domain related by self->S_DOM[R1201];
if(not_empty domain)
  unrelate self from domain across R1201;
end if;
select one subsystem related by self->S_SS[R1202];
if(not_empty subsystem)
  unrelate self from subsystem across R1202;
end if;
select one cp related by self->CP_CP[R1212];
if(not_empty cp)
  unrelate self from cp across R1212;
end if;
select one comp related by self->C_C[R1213];
if(not_empty comp)
  unrelate self from comp across R1213;
end if;
select one specPkg related by self->EP_SPKG[R1402];
select one package related by specPkg->EP_PKG[R1400];
if(not_empty package)
  unrelate specPkg from package across R1400;
end if;
select one ucinuc related by self->UC_UIU[R1209];
if(not_empty ucinuc)
  select one ucd related by ucinuc->UC_UCC[R1208];
  unrelate ucinuc from self across R1209;
  select many otherUCs related by ucinuc->UC_UCC[R1209];
  if(empty otherUCs)
    unrelate ucinuc from ucd across R1208;
    delete object instance ucinuc;
  end if;
end if;',
	1,
	'',
	815);
INSERT INTO O_TFR
	VALUES (830,
	713,
	'pasteUseCaseDiagram',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select any ucd from instances of UC_UCC where (selected.Package_ID == param.id);
if(not_empty ucd)
  // guarantee a unique name for the pasted element
  ucd.Name = ::getUniqueInitialNameInParent (instance:ucd.convertToInstance(),
         					    name:ucd.Name, parent:self.convertToInstance());
  ucd.associateWithUseCaseDiagram(ucdID:self.Package_ID);
end if;',
	1,
	'',
	792);
INSERT INTO O_TPARM
	VALUES (831,
	830,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (832,
	713,
	'getUsecaseDiagramCount',
	'',
	298,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select many useCases related by self->UC_UIU[R1208]->UC_UCC[R1209];
return cardinality useCases;',
	1,
	'',
	830);
INSERT INTO O_TFR
	VALUES (833,
	713,
	'getUsecaseDiagramId',
	'',
	296,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
id = GD::NULL_UNIQUE_ID();
select many usecases related by self->UC_UIU[R1208]->UC_UCC[R1209];
// We''re preincrementing the index
count = -1;
for each usecase in usecases
  if (not_empty usecase)
      count = count+1;
  end if;
  if (count == param.index)
      return usecase.get_ooa_id();  
  end if;
end for;
return id;',
	1,
	'',
	832);
INSERT INTO O_TPARM
	VALUES (834,
	833,
	'index',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (835,
	713,
	'getUsecaseCount',
	'',
	298,
	1,
	'select many useCases related by self->SQ_P[R1203]->IA_UCP[R930];
return cardinality useCases;',
	1,
	'',
	833);
INSERT INTO O_TFR
	VALUES (836,
	713,
	'getUsecaseId',
	'',
	296,
	1,
	'id = GD::NULL_UNIQUE_ID();
select many usecases related by self->SQ_P[R1203]->IA_UCP[R930];
// We''re preincrementing the index
count = -1;
for each usecase in usecases
  if (not_empty usecase)
      count = count+1;
  end if;
  if (count == param.index)
      return usecase.get_ooa_id();  
  end if;
end for;
return id;',
	1,
	'',
	835);
INSERT INTO O_TPARM
	VALUES (837,
	836,
	'index',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (838,
	713,
	'getActorCount',
	'',
	298,
	1,
	'select many actors related by self->SQ_P[R1203]->SQ_AP[R930];
return cardinality actors;',
	1,
	'',
	836);
INSERT INTO O_TFR
	VALUES (839,
	713,
	'getActorId',
	'',
	296,
	1,
	'id = GD::NULL_UNIQUE_ID();
select many actors related by self->SQ_P[R1203]->SQ_AP[R930];
// We''re preincrementing the index
count = -1;
for each actor in actors
  if (not_empty actor)
      count = count+1;
  end if;
  if (count == param.index)
      return actor.get_ooa_id();  
  end if;
end for;
return id;',
	1,
	'',
	838);
INSERT INTO O_TPARM
	VALUES (840,
	839,
	'index',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (841,
	713,
	'pasteUseCaseParticipant',
	'',
	19,
	1,
	'select any usecase from instances of IA_UCP
                                           where (selected.Part_ID == param.id);
if(not_empty usecase)
  select one part related by usecase->SQ_P[R930];
  select one existingContainer related by part->UC_PIUC[R1203];
  if(not_empty existingContainer)
    select one ucd related by existingContainer->UC_UCC[R1203];
    if(not_empty ucd)
      unrelate ucd from part across R1203 using existingContainer;
    end if;
  end if;
  create object instance piuc of UC_PIUC;
  relate part to self across R1203 using piuc;
end if;',
	1,
	'',
	839);
INSERT INTO O_TPARM
	VALUES (842,
	841,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (843,
	713,
	'pasteActorParticipant',
	'',
	19,
	1,
	'select any actor from instances of SQ_AP
                                           where (selected.Part_ID == param.id);
if(not_empty actor)
  select one part related by actor->SQ_P[R930];
  select one existingContainer related by part->UC_PIUC[R1203];
  if(not_empty existingContainer)
    select one ucd related by existingContainer->UC_UCC[R1203];
    if(not_empty ucd)
      unrelate ucd from part across R1203 using existingContainer;
    end if;
  end if;
  create object instance piuc of UC_PIUC;
  relate part to self across R1203 using piuc;
end if;',
	1,
	'',
	841);
INSERT INTO O_TPARM
	VALUES (844,
	843,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (713,
	701,
	0,
	717,
	715,
	718,
	716,
	845,
	846,
	0,
	0,
	'',
	'Subsystem',
	'SS_ID',
	'R1202');
INSERT INTO O_RATTR
	VALUES (845,
	713,
	717,
	701,
	1,
	'SS_ID');
INSERT INTO O_ATTR
	VALUES (845,
	713,
	847,
	'SS_ID',
	'',
	'',
	'SS_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (713,
	699,
	0,
	712,
	710,
	714,
	711,
	847,
	848,
	0,
	0,
	'',
	'Domain',
	'Dom_ID',
	'R1201');
INSERT INTO O_RATTR
	VALUES (847,
	713,
	712,
	699,
	1,
	'Dom_ID');
INSERT INTO O_ATTR
	VALUES (847,
	713,
	721,
	'Dom_ID',
	'',
	'',
	'Dom_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (849,
	713);
INSERT INTO O_BATTR
	VALUES (849,
	713);
INSERT INTO O_ATTR
	VALUES (849,
	713,
	850,
	'Name',
	'Full Name: Use Case Diagram Name',
	'',
	'Name',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (851,
	713);
INSERT INTO O_BATTR
	VALUES (851,
	713);
INSERT INTO O_ATTR
	VALUES (851,
	713,
	849,
	'Descrip',
	'DiagFull Name: Use Case Diagram Description
Description: A textual description of this use case.',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (713,
	705,
	0,
	754,
	752,
	755,
	753,
	852,
	853,
	0,
	0,
	'',
	'System Model',
	'Sys_ID',
	'R1211');
INSERT INTO O_RATTR
	VALUES (852,
	713,
	754,
	705,
	1,
	'Sys_ID');
INSERT INTO O_ATTR
	VALUES (852,
	713,
	851,
	'Sys_ID',
	'',
	'',
	'Sys_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (713,
	773,
	0,
	772,
	854,
	855,
	856,
	721,
	857,
	0,
	0,
	'',
	'Specification Package',
	'Package_ID',
	'R1402');
INSERT INTO O_RATTR
	VALUES (721,
	713,
	772,
	773,
	1,
	'Package_ID');
INSERT INTO O_ATTR
	VALUES (721,
	713,
	0,
	'Package_ID',
	'',
	'',
	'Package_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (713,
	707,
	0,
	758,
	756,
	759,
	757,
	858,
	859,
	0,
	0,
	'',
	'Component Package',
	'Package_ID',
	'R1212');
INSERT INTO O_RATTR
	VALUES (858,
	713,
	772,
	773,
	1,
	'Package_ID');
INSERT INTO O_ATTR
	VALUES (858,
	713,
	852,
	'Component_Package_ID',
	'',
	'Component_',
	'Package_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (713,
	722,
	0,
	726,
	724,
	727,
	725,
	850,
	860,
	0,
	0,
	'',
	'Use Case in Use Case',
	'Package_ID',
	'R1209');
INSERT INTO O_RATTR
	VALUES (850,
	713,
	772,
	773,
	1,
	'Package_ID');
INSERT INTO O_ATTR
	VALUES (850,
	713,
	845,
	'Parent_Package_ID',
	'',
	'Parent_',
	'Package_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (713,
	709,
	0,
	762,
	760,
	763,
	761,
	861,
	862,
	0,
	0,
	'',
	'Component',
	'Id',
	'R1213');
INSERT INTO O_RATTR
	VALUES (861,
	713,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (861,
	713,
	858,
	'Component_Id',
	'',
	'Component_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	713);
INSERT INTO O_OIDA
	VALUES (721,
	713,
	0,
	'Package_ID');
INSERT INTO O_ID
	VALUES (1,
	713);
INSERT INTO O_ID
	VALUES (2,
	713);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (729,
	'Use Case Association',
	1201,
	'UC_UCA',
	'',
	697);
INSERT INTO O_TFR
	VALUES (863,
	729,
	'dispose',
	'',
	19,
	1,
	'select one pe related by self->PE_PE[R8001];
if(not_empty pe)
  // PE_PE.dispose() will call back into this function at which time the
  // rest of the activity will execute.
  pe.dispose();
  return;
end if;
select one part related by self->SQ_P[R1206];
if(not_empty part)
  unrelate self from part across R1206;
end if;
select one part related by self->SQ_P[R1207];
if(not_empty part)
  unrelate self from part across R1207;
end if;
select one ba related by self->UC_BA[R1210];
select one gen related by self->UC_G[R1210];
select one inc related by self->UC_I[R1210];
select one ext related by self->UC_E[R1210];
if(not_empty ba)
  unrelate self from ba across R1210;
  ba.dispose();
elif(not_empty gen)
  unrelate self from gen across R1210;
  gen.dispose();
elif(not_empty inc)
  unrelate self from inc across R1210;
  inc.dispose();
elif(not_empty ext)
  unrelate self from ext across R1210;
  ext.dispose();
end if;
select one aiuc related by self->UC_AIUC[R1215];
if(not_empty aiuc)
  select one uc related by aiuc->UC_UCC[R1214];
  unrelate self from aiuc across R1215;
  unrelate aiuc from uc across R1214;
  delete object instance aiuc;
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (729,
	703,
	0,
	743,
	746,
	748,
	747,
	864,
	865,
	0,
	0,
	'',
	'Interaction Participant',
	'Part_ID',
	'R1206');
INSERT INTO O_RATTR
	VALUES (864,
	729,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (864,
	729,
	731,
	'Source_Part_ID',
	'',
	'Source_',
	'Part_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (729,
	703,
	0,
	743,
	749,
	750,
	751,
	866,
	867,
	0,
	0,
	'',
	'Interaction Participant',
	'Part_ID',
	'R1207');
INSERT INTO O_RATTR
	VALUES (866,
	729,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (866,
	729,
	864,
	'Destination_Part_ID',
	'',
	'Destination_',
	'Part_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (729,
	26,
	0,
	25,
	868,
	869,
	870,
	731,
	871,
	0,
	0,
	'',
	'Packageable Element',
	'Element_ID',
	'R8001');
INSERT INTO O_RATTR
	VALUES (731,
	729,
	25,
	26,
	0,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (731,
	729,
	0,
	'Assoc_ID',
	'',
	'',
	'Assoc_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	729);
INSERT INTO O_OIDA
	VALUES (731,
	729,
	0,
	'Assoc_ID');
INSERT INTO O_ID
	VALUES (1,
	729);
INSERT INTO O_ID
	VALUES (2,
	729);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (744,
	'Participant in Use Case',
	1203,
	'UC_PIUC',
	'',
	697);
INSERT INTO O_REF
	VALUES (744,
	713,
	0,
	721,
	740,
	745,
	741,
	872,
	873,
	0,
	0,
	'',
	'Use Case Diagram',
	'Package_ID',
	'R1203');
INSERT INTO O_RATTR
	VALUES (872,
	744,
	772,
	773,
	1,
	'Package_ID');
INSERT INTO O_ATTR
	VALUES (872,
	744,
	0,
	'Package_ID',
	'',
	'',
	'Package_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (744,
	703,
	0,
	743,
	740,
	745,
	742,
	874,
	875,
	0,
	0,
	'',
	'Interaction Participant',
	'Part_ID',
	'R1203');
INSERT INTO O_RATTR
	VALUES (874,
	744,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (874,
	744,
	872,
	'Part_ID',
	'',
	'',
	'Part_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	744);
INSERT INTO O_OIDA
	VALUES (872,
	744,
	0,
	'Package_ID');
INSERT INTO O_OIDA
	VALUES (874,
	744,
	0,
	'Part_ID');
INSERT INTO O_ID
	VALUES (1,
	744);
INSERT INTO O_ID
	VALUES (2,
	744);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (736,
	'Include',
	1208,
	'UC_I',
	'',
	697);
INSERT INTO O_TFR
	VALUES (876,
	736,
	'dispose',
	'',
	19,
	1,
	'select one uca related by self->UC_UCA[R1210];
if(not_empty uca)
  uca.dispose();
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (877,
	736,
	'get_style',
	'',
	784,
	1,
	'if(param.at == End::End)
  return Style::OpenArrow;
elif(param.at == End::Middle)
  return Style::Dash;
else
  return Style::None;
end if;',
	1,
	'',
	878);
INSERT INTO O_TPARM
	VALUES (879,
	877,
	'at',
	880,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (881,
	736,
	'get_connector_text',
	'',
	322,
	1,
	'if(param.at == End::Middle)
  return "«include»";
end if;
return "";',
	1,
	'',
	876);
INSERT INTO O_TPARM
	VALUES (882,
	881,
	'Obj_ID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (883,
	881,
	'Obj_TypeIsImported',
	316,
	0,
	'',
	882,
	'');
INSERT INTO O_TPARM
	VALUES (884,
	881,
	'at',
	880,
	0,
	'',
	883,
	'');
INSERT INTO O_TPARM
	VALUES (885,
	881,
	'parent_ID',
	296,
	0,
	'',
	884,
	'');
INSERT INTO O_TFR
	VALUES (878,
	736,
	'get_ooa_id',
	'',
	296,
	1,
	'return self.Assoc_ID;',
	1,
	'',
	886);
INSERT INTO O_TFR
	VALUES (886,
	736,
	'get_name',
	'',
	322,
	1,
	'return "";',
	1,
	'',
	881);
INSERT INTO O_NBATTR
	VALUES (887,
	736);
INSERT INTO O_BATTR
	VALUES (887,
	736);
INSERT INTO O_ATTR
	VALUES (887,
	736,
	888,
	'Descrip',
	'Full Name: Include Description
Description: A textual description of this include.',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (736,
	729,
	0,
	731,
	728,
	737,
	730,
	888,
	889,
	0,
	0,
	'',
	'Use Case Association',
	'Assoc_ID',
	'R1210');
INSERT INTO O_RATTR
	VALUES (888,
	736,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (888,
	736,
	0,
	'Assoc_ID',
	'',
	'',
	'Element_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	736);
INSERT INTO O_OIDA
	VALUES (888,
	736,
	0,
	'Assoc_ID');
INSERT INTO O_ID
	VALUES (1,
	736);
INSERT INTO O_ID
	VALUES (2,
	736);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (734,
	'Generalization',
	1207,
	'UC_G',
	'',
	697);
INSERT INTO O_TFR
	VALUES (890,
	734,
	'dispose',
	'',
	19,
	1,
	'select one uca related by self->UC_UCA[R1210];
if(not_empty uca)
  uca.dispose();
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (891,
	734,
	'get_style',
	'',
	784,
	1,
	'if(param.at == End::End)
  return Style::Triangle;
elif(param.at == End::Middle)
  return Style::Solid;
else
  return Style::None;
end if;',
	1,
	'',
	892);
INSERT INTO O_TPARM
	VALUES (893,
	891,
	'at',
	880,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (894,
	734,
	'get_connector_text',
	'',
	322,
	1,
	'return "";',
	1,
	'',
	890);
INSERT INTO O_TPARM
	VALUES (895,
	894,
	'Obj_ID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (896,
	894,
	'Obj_TypeIsImported',
	316,
	0,
	'',
	895,
	'');
INSERT INTO O_TPARM
	VALUES (897,
	894,
	'at',
	880,
	0,
	'',
	896,
	'');
INSERT INTO O_TPARM
	VALUES (898,
	894,
	'parent_ID',
	296,
	0,
	'',
	897,
	'');
INSERT INTO O_TFR
	VALUES (892,
	734,
	'get_ooa_id',
	'',
	296,
	1,
	'return self.Assoc_ID;',
	1,
	'',
	899);
INSERT INTO O_TFR
	VALUES (899,
	734,
	'get_name',
	'',
	322,
	1,
	'return "";',
	1,
	'',
	894);
INSERT INTO O_NBATTR
	VALUES (900,
	734);
INSERT INTO O_BATTR
	VALUES (900,
	734);
INSERT INTO O_ATTR
	VALUES (900,
	734,
	901,
	'Descrip',
	'Full Name: Generalization Description
Description: A textual description of this generalization.',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (734,
	729,
	0,
	731,
	728,
	735,
	730,
	901,
	902,
	0,
	0,
	'',
	'Use Case Association',
	'Assoc_ID',
	'R1210');
INSERT INTO O_RATTR
	VALUES (901,
	734,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (901,
	734,
	0,
	'Assoc_ID',
	'',
	'',
	'Element_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	734);
INSERT INTO O_OIDA
	VALUES (901,
	734,
	0,
	'Assoc_ID');
INSERT INTO O_ID
	VALUES (1,
	734);
INSERT INTO O_ID
	VALUES (2,
	734);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (732,
	'Extend',
	1209,
	'UC_E',
	'',
	697);
INSERT INTO O_TFR
	VALUES (903,
	732,
	'dispose',
	'',
	19,
	1,
	'select one uca related by self->UC_UCA[R1210];
if(not_empty uca)
  uca.dispose();
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (904,
	732,
	'get_style',
	'',
	784,
	1,
	'if(param.at == End::End)
  return Style::OpenArrow;
elif(param.at == End::Middle)
  return Style::Dash;
else
  return Style::None;
end if;',
	1,
	'',
	905);
INSERT INTO O_TPARM
	VALUES (906,
	904,
	'at',
	880,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (907,
	732,
	'get_connector_text',
	'',
	322,
	1,
	'if(param.at == End::Middle)
  return "«extend»";
end if;
return "";',
	1,
	'',
	903);
INSERT INTO O_TPARM
	VALUES (908,
	907,
	'Obj_ID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (909,
	907,
	'Obj_TypeIsImported',
	316,
	0,
	'',
	908,
	'');
INSERT INTO O_TPARM
	VALUES (910,
	907,
	'at',
	880,
	0,
	'',
	909,
	'');
INSERT INTO O_TPARM
	VALUES (911,
	907,
	'parent_ID',
	296,
	0,
	'',
	910,
	'');
INSERT INTO O_TFR
	VALUES (905,
	732,
	'get_ooa_id',
	'',
	296,
	1,
	'return self.Assoc_ID;',
	1,
	'',
	912);
INSERT INTO O_TFR
	VALUES (912,
	732,
	'get_name',
	'',
	322,
	1,
	'return "";',
	1,
	'',
	907);
INSERT INTO O_NBATTR
	VALUES (913,
	732);
INSERT INTO O_BATTR
	VALUES (913,
	732);
INSERT INTO O_ATTR
	VALUES (913,
	732,
	914,
	'Descrip',
	'Full Name: Extend Description
Description: A textual description of this extend.',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (732,
	729,
	0,
	731,
	728,
	733,
	730,
	914,
	915,
	0,
	0,
	'',
	'Use Case Association',
	'Assoc_ID',
	'R1210');
INSERT INTO O_RATTR
	VALUES (914,
	732,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (914,
	732,
	0,
	'Assoc_ID',
	'',
	'',
	'Element_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	732);
INSERT INTO O_OIDA
	VALUES (914,
	732,
	0,
	'Assoc_ID');
INSERT INTO O_ID
	VALUES (1,
	732);
INSERT INTO O_ID
	VALUES (2,
	732);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (738,
	'Binary Association',
	1206,
	'UC_BA',
	'',
	697);
INSERT INTO O_TFR
	VALUES (916,
	738,
	'get_style',
	'',
	784,
	1,
	'if(param.at == End::Middle)
  return Style::Solid;
else
  return Style::None;
end if;',
	1,
	'',
	917);
INSERT INTO O_TPARM
	VALUES (918,
	916,
	'at',
	880,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (917,
	738,
	'get_ooa_id',
	'',
	296,
	1,
	'return self.Assoc_ID;',
	1,
	'',
	919);
INSERT INTO O_TFR
	VALUES (920,
	738,
	'get_connector_text',
	'',
	322,
	1,
	'return "";',
	1,
	'',
	921);
INSERT INTO O_TPARM
	VALUES (922,
	920,
	'Obj_ID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (923,
	920,
	'Obj_TypeIsImported',
	316,
	0,
	'',
	922,
	'');
INSERT INTO O_TPARM
	VALUES (924,
	920,
	'at',
	880,
	0,
	'',
	923,
	'');
INSERT INTO O_TPARM
	VALUES (925,
	920,
	'parent_ID',
	296,
	0,
	'',
	924,
	'');
INSERT INTO O_TFR
	VALUES (921,
	738,
	'dispose',
	'',
	19,
	1,
	'select one uca related by self->UC_UCA[R1210];
if(not_empty uca)
  uca.dispose();
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (919,
	738,
	'get_name',
	'',
	322,
	1,
	'return "";',
	1,
	'',
	920);
INSERT INTO O_NBATTR
	VALUES (926,
	738);
INSERT INTO O_BATTR
	VALUES (926,
	738);
INSERT INTO O_ATTR
	VALUES (926,
	738,
	927,
	'Descrip',
	'Full Name: Association Description
Description: A textual description of this association.',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (738,
	729,
	0,
	731,
	728,
	739,
	730,
	927,
	928,
	0,
	0,
	'',
	'Use Case Association',
	'Assoc_ID',
	'R1210');
INSERT INTO O_RATTR
	VALUES (927,
	738,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (927,
	738,
	0,
	'Assoc_ID',
	'',
	'',
	'Element_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	738);
INSERT INTO O_OIDA
	VALUES (927,
	738,
	0,
	'Assoc_ID');
INSERT INTO O_ID
	VALUES (1,
	738);
INSERT INTO O_ID
	VALUES (2,
	738);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (766,
	'Association In Use Case',
	1210,
	'UC_AIUC',
	'',
	697);
INSERT INTO O_REF
	VALUES (766,
	729,
	0,
	731,
	768,
	769,
	770,
	929,
	930,
	0,
	0,
	'',
	'Use Case Association',
	'Assoc_ID',
	'R1215');
INSERT INTO O_RATTR
	VALUES (929,
	766,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (929,
	766,
	0,
	'Assoc_ID',
	'',
	'',
	'Assoc_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (766,
	713,
	0,
	721,
	764,
	767,
	765,
	931,
	932,
	0,
	0,
	'',
	'Use Case Diagram',
	'Package_ID',
	'R1214');
INSERT INTO O_RATTR
	VALUES (931,
	766,
	772,
	773,
	1,
	'Package_ID');
INSERT INTO O_ATTR
	VALUES (931,
	766,
	929,
	'Package_ID',
	'',
	'',
	'Package_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	766);
INSERT INTO O_ID
	VALUES (1,
	766);
INSERT INTO O_ID
	VALUES (2,
	766);
-- BP 7.1 content: Subsystem syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SS
	VALUES (933,
	'System Level Datatypes',
	'// This is used by schema_gen to ignore this subsystem (for publication)
TRANSLATE_FOR_EXTERNAL_USE:FALSE

The System Level Datatypes subsystem exists mainly to setup linking between a
datatype package and a system, as well as datatypes and a system.',
	'SLD',
	4400,
	1,
	0);
INSERT INTO S_SID
	VALUES (1,
	933);
INSERT INTO O_IOBJ
	VALUES (934,
	705,
	0,
	933,
	'System Model',
	'S_SYS');
INSERT INTO O_IOBJ
	VALUES (935,
	936,
	0,
	933,
	'Data Type Package',
	'S_DPK');
INSERT INTO O_IOBJ
	VALUES (937,
	32,
	0,
	933,
	'Data Type',
	'S_DT');
INSERT INTO O_IOBJ
	VALUES (938,
	939,
	0,
	933,
	'Constant Specification',
	'CNST_CSP');
INSERT INTO R_ASSOC
	VALUES (940);
INSERT INTO R_REL
	VALUES (940,
	4400,
	'',
	933);
INSERT INTO R_AONE
	VALUES (705,
	940,
	941,
	0,
	1,
	'is contained in');
INSERT INTO O_RTIDA
	VALUES (754,
	705,
	0,
	940,
	941);
INSERT INTO R_RTO
	VALUES (705,
	940,
	941,
	0);
INSERT INTO R_OIR
	VALUES (705,
	940,
	941,
	934);
INSERT INTO R_AOTH
	VALUES (936,
	940,
	942,
	1,
	1,
	'contains');
INSERT INTO O_RTIDA
	VALUES (943,
	936,
	0,
	940,
	942);
INSERT INTO R_RTO
	VALUES (936,
	940,
	942,
	0);
INSERT INTO R_OIR
	VALUES (936,
	940,
	942,
	935);
INSERT INTO R_ASSR
	VALUES (944,
	940,
	945,
	0);
INSERT INTO R_RGO
	VALUES (944,
	940,
	945);
INSERT INTO R_OIR
	VALUES (944,
	940,
	945,
	0);
INSERT INTO R_ASSOC
	VALUES (946);
INSERT INTO R_REL
	VALUES (946,
	4401,
	'',
	933);
INSERT INTO R_AONE
	VALUES (936,
	946,
	947,
	1,
	1,
	'can show in lower package');
INSERT INTO O_RTIDA
	VALUES (943,
	936,
	0,
	946,
	947);
INSERT INTO R_RTO
	VALUES (936,
	946,
	947,
	0);
INSERT INTO R_OIR
	VALUES (936,
	946,
	947,
	935);
INSERT INTO R_AOTH
	VALUES (32,
	946,
	948,
	1,
	1,
	'may show');
INSERT INTO O_RTIDA
	VALUES (156,
	32,
	0,
	946,
	948);
INSERT INTO R_RTO
	VALUES (32,
	946,
	948,
	0);
INSERT INTO R_OIR
	VALUES (32,
	946,
	948,
	937);
INSERT INTO R_ASSR
	VALUES (949,
	946,
	950,
	0);
INSERT INTO R_RGO
	VALUES (949,
	946,
	950);
INSERT INTO R_OIR
	VALUES (949,
	946,
	950,
	0);
INSERT INTO R_SIMP
	VALUES (951);
INSERT INTO R_REL
	VALUES (951,
	4402,
	'CrossComponent:true',
	933);
INSERT INTO R_FORM
	VALUES (949,
	951,
	952,
	1,
	1,
	'is system of');
INSERT INTO R_RGO
	VALUES (949,
	951,
	952);
INSERT INTO R_OIR
	VALUES (949,
	951,
	952,
	0);
INSERT INTO R_PART
	VALUES (705,
	951,
	953,
	0,
	0,
	'is datatype in');
INSERT INTO O_RTIDA
	VALUES (754,
	705,
	0,
	951,
	953);
INSERT INTO R_RTO
	VALUES (705,
	951,
	953,
	0);
INSERT INTO R_OIR
	VALUES (705,
	951,
	953,
	934);
INSERT INTO R_SIMP
	VALUES (954);
INSERT INTO R_REL
	VALUES (954,
	4404,
	'CrossComponent:true',
	933);
INSERT INTO R_PART
	VALUES (705,
	954,
	955,
	0,
	0,
	'is constant in');
INSERT INTO O_RTIDA
	VALUES (754,
	705,
	0,
	954,
	955);
INSERT INTO R_RTO
	VALUES (705,
	954,
	955,
	0);
INSERT INTO R_OIR
	VALUES (705,
	954,
	955,
	934);
INSERT INTO R_FORM
	VALUES (956,
	954,
	957,
	1,
	1,
	'is system of');
INSERT INTO R_RGO
	VALUES (956,
	954,
	957);
INSERT INTO R_OIR
	VALUES (956,
	954,
	957,
	0);
INSERT INTO R_ASSOC
	VALUES (958);
INSERT INTO R_REL
	VALUES (958,
	4403,
	'',
	933);
INSERT INTO R_AONE
	VALUES (936,
	958,
	959,
	1,
	1,
	'can show in lower package');
INSERT INTO O_RTIDA
	VALUES (943,
	936,
	0,
	958,
	959);
INSERT INTO R_RTO
	VALUES (936,
	958,
	959,
	0);
INSERT INTO R_OIR
	VALUES (936,
	958,
	959,
	935);
INSERT INTO R_AOTH
	VALUES (939,
	958,
	960,
	1,
	1,
	'may show');
INSERT INTO O_RTIDA
	VALUES (961,
	939,
	0,
	958,
	960);
INSERT INTO R_RTO
	VALUES (939,
	958,
	960,
	0);
INSERT INTO R_OIR
	VALUES (939,
	958,
	960,
	938);
INSERT INTO R_ASSR
	VALUES (956,
	958,
	962,
	0);
INSERT INTO R_RGO
	VALUES (956,
	958,
	962);
INSERT INTO R_OIR
	VALUES (956,
	958,
	962,
	0);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (944,
	'System Datatype Package',
	4400,
	'SLD_SDP',
	'',
	933);
INSERT INTO O_REF
	VALUES (944,
	705,
	0,
	754,
	940,
	945,
	941,
	963,
	964,
	0,
	0,
	'',
	'System Model',
	'Sys_ID',
	'R4400');
INSERT INTO O_RATTR
	VALUES (963,
	944,
	754,
	705,
	1,
	'Sys_ID');
INSERT INTO O_ATTR
	VALUES (963,
	944,
	0,
	'Sys_ID',
	'',
	'',
	'Sys_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (944,
	936,
	0,
	943,
	940,
	945,
	942,
	965,
	966,
	0,
	0,
	'',
	'Data Type Package',
	'Package_ID',
	'R4400');
INSERT INTO O_RATTR
	VALUES (965,
	944,
	772,
	773,
	1,
	'Package_ID');
INSERT INTO O_ATTR
	VALUES (965,
	944,
	963,
	'Package_ID',
	'',
	'',
	'Package_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	944);
INSERT INTO O_OIDA
	VALUES (963,
	944,
	0,
	'Sys_ID');
INSERT INTO O_OIDA
	VALUES (965,
	944,
	0,
	'Package_ID');
INSERT INTO O_ID
	VALUES (1,
	944);
INSERT INTO O_ID
	VALUES (2,
	944);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (949,
	'System Datatype in Package',
	4401,
	'SLD_SDINP',
	'',
	933);
INSERT INTO O_REF
	VALUES (949,
	705,
	0,
	754,
	951,
	952,
	953,
	967,
	968,
	0,
	0,
	'',
	'System Model',
	'Sys_ID',
	'R4402');
INSERT INTO O_RATTR
	VALUES (967,
	949,
	754,
	705,
	1,
	'Sys_ID');
INSERT INTO O_ATTR
	VALUES (967,
	949,
	969,
	'Sys_ID',
	'',
	'',
	'Sys_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (949,
	936,
	0,
	943,
	946,
	950,
	947,
	970,
	971,
	0,
	0,
	'',
	'Data Type Package',
	'Package_ID',
	'R4401');
INSERT INTO O_RATTR
	VALUES (970,
	949,
	772,
	773,
	1,
	'Package_ID');
INSERT INTO O_ATTR
	VALUES (970,
	949,
	0,
	'Package_ID',
	'',
	'',
	'Package_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (949,
	32,
	0,
	156,
	946,
	950,
	948,
	969,
	972,
	0,
	0,
	'',
	'Data Type',
	'DT_ID',
	'R4401');
INSERT INTO O_RATTR
	VALUES (969,
	949,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (969,
	949,
	970,
	'DT_ID',
	'',
	'',
	'Element_ID',
	2,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	949);
INSERT INTO O_OIDA
	VALUES (970,
	949,
	0,
	'Package_ID');
INSERT INTO O_OIDA
	VALUES (969,
	949,
	0,
	'DT_ID');
INSERT INTO O_ID
	VALUES (1,
	949);
INSERT INTO O_ID
	VALUES (2,
	949);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (956,
	'System Constant in Package',
	4402,
	'SLD_SCINP',
	'',
	933);
INSERT INTO O_REF
	VALUES (956,
	705,
	0,
	754,
	954,
	957,
	955,
	973,
	974,
	0,
	0,
	'',
	'System Model',
	'Sys_ID',
	'R4404');
INSERT INTO O_RATTR
	VALUES (973,
	956,
	754,
	705,
	1,
	'Sys_ID');
INSERT INTO O_ATTR
	VALUES (973,
	956,
	0,
	'Sys_ID',
	'',
	'',
	'Sys_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (956,
	936,
	0,
	943,
	958,
	962,
	959,
	975,
	976,
	0,
	0,
	'',
	'Data Type Package',
	'Package_ID',
	'R4403');
INSERT INTO O_RATTR
	VALUES (975,
	956,
	772,
	773,
	1,
	'Package_ID');
INSERT INTO O_ATTR
	VALUES (975,
	956,
	973,
	'Package_ID',
	'',
	'',
	'Package_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (956,
	939,
	0,
	961,
	958,
	962,
	960,
	977,
	978,
	0,
	0,
	'',
	'Constant Specification',
	'Constant_Spec_ID',
	'R4403');
INSERT INTO O_RATTR
	VALUES (977,
	956,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (977,
	956,
	975,
	'Constant_Spec_ID',
	'',
	'',
	'Constant_Spec_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	956);
INSERT INTO O_OIDA
	VALUES (975,
	956,
	0,
	'Package_ID');
INSERT INTO O_OIDA
	VALUES (977,
	956,
	0,
	'Constant_Spec_ID');
INSERT INTO O_ID
	VALUES (1,
	956);
INSERT INTO O_ID
	VALUES (2,
	956);
-- BP 7.1 content: Subsystem syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SS
	VALUES (979,
	'Subsystem',
	'A class (O_OBJ)  is an abstraction of a real world thing that has specific attributes (O_ATTR) and, if active, has a lifecycle model as a state machine (SM_SM).  All instances of the class must have the same characteristics and follow the same state behavior.  Classes fall into many categories, some of which are: tangible things, roles, interactions and specifications. ',
	'O',
	101,
	1,
	980);
INSERT INTO S_SID
	VALUES (1,
	979);
INSERT INTO O_IOBJ
	VALUES (981,
	32,
	5,
	979,
	'Data Type',
	'S_DT');
INSERT INTO O_IOBJ
	VALUES (982,
	983,
	5,
	979,
	'Referred To Class in Assoc',
	'R_RTO');
INSERT INTO O_IOBJ
	VALUES (984,
	985,
	5,
	979,
	'Referring Class In Assoc',
	'R_RGO');
INSERT INTO O_IOBJ
	VALUES (986,
	59,
	0,
	979,
	'Dimensions',
	'S_DIM');
INSERT INTO O_IOBJ
	VALUES (987,
	988,
	0,
	979,
	'Instance Reference Data Type',
	'S_IRDT');
INSERT INTO R_SIMP
	VALUES (989);
INSERT INTO R_REL
	VALUES (989,
	117,
	'',
	979);
INSERT INTO R_PART
	VALUES (43,
	989,
	990,
	0,
	0,
	'is part of ');
INSERT INTO O_RTIDA
	VALUES (201,
	43,
	0,
	989,
	990);
INSERT INTO R_RTO
	VALUES (43,
	989,
	990,
	0);
INSERT INTO R_OIR
	VALUES (43,
	989,
	990,
	0);
INSERT INTO R_FORM
	VALUES (50,
	989,
	991,
	1,
	1,
	'contains');
INSERT INTO R_RGO
	VALUES (50,
	989,
	991);
INSERT INTO R_OIR
	VALUES (50,
	989,
	991,
	0);
INSERT INTO R_SIMP
	VALUES (992);
INSERT INTO R_REL
	VALUES (992,
	118,
	'CrossComponent:true',
	979);
INSERT INTO R_PART
	VALUES (32,
	992,
	993,
	0,
	0,
	'is defined by');
INSERT INTO O_RTIDA
	VALUES (156,
	32,
	0,
	992,
	993);
INSERT INTO R_RTO
	VALUES (32,
	992,
	993,
	0);
INSERT INTO R_OIR
	VALUES (32,
	992,
	993,
	981);
INSERT INTO R_FORM
	VALUES (50,
	992,
	994,
	1,
	1,
	'defines the type of ');
INSERT INTO R_RGO
	VALUES (50,
	992,
	994);
INSERT INTO R_OIR
	VALUES (50,
	992,
	994,
	0);
INSERT INTO R_SIMP
	VALUES (995);
INSERT INTO R_REL
	VALUES (995,
	116,
	'CrossComponent:true',
	979);
INSERT INTO R_PART
	VALUES (32,
	995,
	996,
	0,
	0,
	'return code is defined by');
INSERT INTO O_RTIDA
	VALUES (156,
	32,
	0,
	995,
	996);
INSERT INTO R_RTO
	VALUES (32,
	995,
	996,
	0);
INSERT INTO R_OIR
	VALUES (32,
	995,
	996,
	981);
INSERT INTO R_FORM
	VALUES (43,
	995,
	997,
	1,
	1,
	'defines the type of return code');
INSERT INTO R_RGO
	VALUES (43,
	995,
	997);
INSERT INTO R_OIR
	VALUES (43,
	995,
	997,
	0);
INSERT INTO R_SIMP
	VALUES (998);
INSERT INTO R_REL
	VALUES (998,
	115,
	'',
	979);
INSERT INTO R_FORM
	VALUES (43,
	998,
	999,
	1,
	1,
	'may contain');
INSERT INTO R_RGO
	VALUES (43,
	998,
	999);
INSERT INTO R_OIR
	VALUES (43,
	998,
	999,
	0);
INSERT INTO R_PART
	VALUES (30,
	998,
	1000,
	0,
	0,
	'is associated with');
INSERT INTO O_RTIDA
	VALUES (150,
	30,
	0,
	998,
	1000);
INSERT INTO R_RTO
	VALUES (30,
	998,
	1000,
	0);
INSERT INTO R_OIR
	VALUES (30,
	998,
	1000,
	0);
INSERT INTO R_SIMP
	VALUES (1001);
INSERT INTO R_REL
	VALUES (1001,
	102,
	'',
	979);
INSERT INTO R_FORM
	VALUES (37,
	1001,
	1002,
	1,
	1,
	'has characteristics abstracted by');
INSERT INTO R_RGO
	VALUES (37,
	1001,
	1002);
INSERT INTO R_OIR
	VALUES (37,
	1001,
	1002,
	0);
INSERT INTO R_PART
	VALUES (30,
	1001,
	1003,
	0,
	0,
	'abstracts characteristics of');
INSERT INTO O_RTIDA
	VALUES (150,
	30,
	0,
	1001,
	1003);
INSERT INTO R_RTO
	VALUES (30,
	1001,
	1003,
	0);
INSERT INTO R_OIR
	VALUES (30,
	1001,
	1003,
	0);
INSERT INTO R_SIMP
	VALUES (1004);
INSERT INTO R_REL
	VALUES (1004,
	103,
	'This association specifies the order in which a classes attributes appear on the OIM. The instance for which no instance ''preceeds'' is the first (top) class attribute on the OIM. The instance for which no instance ''succeeds'' is the last (bottom) class attribute on the OIM.',
	979);
INSERT INTO R_PART
	VALUES (37,
	1004,
	1005,
	0,
	1,
	'succeeds');
INSERT INTO O_RTIDA
	VALUES (168,
	37,
	0,
	1004,
	1005);
INSERT INTO O_RTIDA
	VALUES (169,
	37,
	0,
	1004,
	1005);
INSERT INTO R_RTO
	VALUES (37,
	1004,
	1005,
	0);
INSERT INTO R_OIR
	VALUES (37,
	1004,
	1005,
	0);
INSERT INTO R_FORM
	VALUES (37,
	1004,
	1006,
	0,
	1,
	'precedes');
INSERT INTO R_RGO
	VALUES (37,
	1004,
	1006);
INSERT INTO R_OIR
	VALUES (37,
	1004,
	1006,
	0);
INSERT INTO R_SIMP
	VALUES (1007);
INSERT INTO R_REL
	VALUES (1007,
	114,
	'CrossComponent:true',
	979);
INSERT INTO R_PART
	VALUES (32,
	1007,
	1008,
	0,
	0,
	'defines type of');
INSERT INTO O_RTIDA
	VALUES (156,
	32,
	0,
	1007,
	1008);
INSERT INTO R_RTO
	VALUES (32,
	1007,
	1008,
	0);
INSERT INTO R_OIR
	VALUES (32,
	1007,
	1008,
	981);
INSERT INTO R_FORM
	VALUES (37,
	1007,
	1009,
	1,
	1,
	'is defined by');
INSERT INTO R_RGO
	VALUES (37,
	1007,
	1009);
INSERT INTO R_OIR
	VALUES (37,
	1007,
	1009,
	0);
INSERT INTO R_SUBSUP
	VALUES (1010);
INSERT INTO R_REL
	VALUES (1010,
	106,
	'',
	979);
INSERT INTO R_SUPER
	VALUES (37,
	1010,
	1011);
INSERT INTO O_RTIDA
	VALUES (168,
	37,
	0,
	1010,
	1011);
INSERT INTO O_RTIDA
	VALUES (169,
	37,
	0,
	1010,
	1011);
INSERT INTO R_RTO
	VALUES (37,
	1010,
	1011,
	0);
INSERT INTO R_OIR
	VALUES (37,
	1010,
	1011,
	0);
INSERT INTO R_SUB
	VALUES (1012,
	1010,
	1013);
INSERT INTO R_RGO
	VALUES (1012,
	1010,
	1013);
INSERT INTO R_OIR
	VALUES (1012,
	1010,
	1013,
	0);
INSERT INTO R_SUB
	VALUES (1014,
	1010,
	1015);
INSERT INTO R_RGO
	VALUES (1014,
	1010,
	1015);
INSERT INTO R_OIR
	VALUES (1014,
	1010,
	1015,
	0);
INSERT INTO R_SIMP
	VALUES (1016);
INSERT INTO R_REL
	VALUES (1016,
	113,
	'CrossComponent:true',
	979);
INSERT INTO R_PART
	VALUES (1012,
	1016,
	1017,
	0,
	0,
	'navigates back to');
INSERT INTO O_RTIDA
	VALUES (1018,
	1012,
	0,
	1016,
	1017);
INSERT INTO O_RTIDA
	VALUES (1019,
	1012,
	0,
	1016,
	1017);
INSERT INTO R_RTO
	VALUES (1012,
	1016,
	1017,
	0);
INSERT INTO R_OIR
	VALUES (1012,
	1016,
	1017,
	0);
INSERT INTO R_FORM
	VALUES (1014,
	1016,
	1020,
	1,
	1,
	'can be the base of');
INSERT INTO R_RGO
	VALUES (1014,
	1016,
	1020);
INSERT INTO R_OIR
	VALUES (1014,
	1016,
	1020,
	0);
INSERT INTO R_SUBSUP
	VALUES (1021);
INSERT INTO R_REL
	VALUES (1021,
	107,
	'',
	979);
INSERT INTO R_SUPER
	VALUES (1012,
	1021,
	1022);
INSERT INTO O_RTIDA
	VALUES (1018,
	1012,
	0,
	1021,
	1022);
INSERT INTO O_RTIDA
	VALUES (1019,
	1012,
	0,
	1021,
	1022);
INSERT INTO R_RTO
	VALUES (1012,
	1021,
	1022,
	0);
INSERT INTO R_OIR
	VALUES (1012,
	1021,
	1022,
	0);
INSERT INTO R_SUB
	VALUES (1023,
	1021,
	1024);
INSERT INTO R_RGO
	VALUES (1023,
	1021,
	1024);
INSERT INTO R_OIR
	VALUES (1023,
	1021,
	1024,
	0);
INSERT INTO R_SUB
	VALUES (1025,
	1021,
	1026);
INSERT INTO R_RGO
	VALUES (1025,
	1021,
	1026);
INSERT INTO R_OIR
	VALUES (1025,
	1021,
	1026,
	0);
INSERT INTO R_SIMP
	VALUES (1027);
INSERT INTO R_REL
	VALUES (1027,
	108,
	'',
	979);
INSERT INTO R_FORM
	VALUES (1028,
	1027,
	1029,
	1,
	0,
	'resolves ');
INSERT INTO R_RGO
	VALUES (1028,
	1027,
	1029);
INSERT INTO R_OIR
	VALUES (1028,
	1027,
	1029,
	0);
INSERT INTO R_PART
	VALUES (1014,
	1027,
	1030,
	0,
	0,
	'is resolved by');
INSERT INTO O_RTIDA
	VALUES (1031,
	1014,
	0,
	1027,
	1030);
INSERT INTO O_RTIDA
	VALUES (1032,
	1014,
	0,
	1027,
	1030);
INSERT INTO R_RTO
	VALUES (1014,
	1027,
	1030,
	0);
INSERT INTO R_OIR
	VALUES (1014,
	1027,
	1030,
	0);
INSERT INTO R_SIMP
	VALUES (1033);
INSERT INTO R_REL
	VALUES (1033,
	112,
	'',
	979);
INSERT INTO R_PART
	VALUES (1028,
	1033,
	1034,
	0,
	1,
	'succeeds');
INSERT INTO O_RTIDA
	VALUES (1035,
	1028,
	1,
	1033,
	1034);
INSERT INTO R_RTO
	VALUES (1028,
	1033,
	1034,
	1);
INSERT INTO R_OIR
	VALUES (1028,
	1033,
	1034,
	0);
INSERT INTO R_FORM
	VALUES (1028,
	1033,
	1036,
	0,
	1,
	'precedes');
INSERT INTO R_RGO
	VALUES (1028,
	1033,
	1036);
INSERT INTO R_OIR
	VALUES (1028,
	1033,
	1036,
	0);
INSERT INTO R_ASSOC
	VALUES (1037);
INSERT INTO R_REL
	VALUES (1037,
	105,
	'',
	979);
INSERT INTO R_AOTH
	VALUES (37,
	1037,
	1038,
	1,
	1,
	'is made up of ');
INSERT INTO O_RTIDA
	VALUES (168,
	37,
	0,
	1037,
	1038);
INSERT INTO O_RTIDA
	VALUES (169,
	37,
	0,
	1037,
	1038);
INSERT INTO R_RTO
	VALUES (37,
	1037,
	1038,
	0);
INSERT INTO R_OIR
	VALUES (37,
	1037,
	1038,
	0);
INSERT INTO R_AONE
	VALUES (1039,
	1037,
	1040,
	1,
	1,
	'is part of ');
INSERT INTO O_RTIDA
	VALUES (1041,
	1039,
	0,
	1037,
	1040);
INSERT INTO O_RTIDA
	VALUES (1042,
	1039,
	0,
	1037,
	1040);
INSERT INTO R_RTO
	VALUES (1039,
	1037,
	1040,
	0);
INSERT INTO R_OIR
	VALUES (1039,
	1037,
	1040,
	0);
INSERT INTO R_ASSR
	VALUES (1043,
	1037,
	1044,
	0);
INSERT INTO R_RGO
	VALUES (1043,
	1037,
	1044);
INSERT INTO R_OIR
	VALUES (1043,
	1037,
	1044,
	0);
INSERT INTO R_SIMP
	VALUES (1045);
INSERT INTO R_REL
	VALUES (1045,
	104,
	'',
	979);
INSERT INTO R_FORM
	VALUES (1039,
	1045,
	1046,
	1,
	1,
	'is identified by');
INSERT INTO R_RGO
	VALUES (1039,
	1045,
	1046);
INSERT INTO R_OIR
	VALUES (1039,
	1045,
	1046,
	0);
INSERT INTO R_PART
	VALUES (30,
	1045,
	1047,
	0,
	0,
	'identifies');
INSERT INTO O_RTIDA
	VALUES (150,
	30,
	0,
	1045,
	1047);
INSERT INTO R_RTO
	VALUES (30,
	1045,
	1047,
	0);
INSERT INTO R_OIR
	VALUES (30,
	1045,
	1047,
	0);
INSERT INTO R_SIMP
	VALUES (1048);
INSERT INTO R_REL
	VALUES (1048,
	101,
	'CrossComponent:true',
	979);
INSERT INTO R_PART
	VALUES (30,
	1048,
	1049,
	0,
	1,
	'represents');
INSERT INTO O_RTIDA
	VALUES (150,
	30,
	0,
	1048,
	1049);
INSERT INTO R_RTO
	VALUES (30,
	1048,
	1049,
	0);
INSERT INTO R_OIR
	VALUES (30,
	1048,
	1049,
	0);
INSERT INTO R_FORM
	VALUES (1050,
	1048,
	1051,
	1,
	1,
	'has presence in other subsystems');
INSERT INTO R_RGO
	VALUES (1050,
	1048,
	1051);
INSERT INTO R_OIR
	VALUES (1050,
	1048,
	1051,
	0);
INSERT INTO R_ASSOC
	VALUES (1052);
INSERT INTO R_REL
	VALUES (1052,
	110,
	'CrossComponent:true',
	979);
INSERT INTO R_AONE
	VALUES (983,
	1052,
	1053,
	1,
	1,
	'identifies for this association');
INSERT INTO O_RTIDA
	VALUES (1054,
	983,
	1,
	1052,
	1053);
INSERT INTO O_RTIDA
	VALUES (1055,
	983,
	1,
	1052,
	1053);
INSERT INTO O_RTIDA
	VALUES (1056,
	983,
	1,
	1052,
	1053);
INSERT INTO O_RTIDA
	VALUES (1057,
	983,
	1,
	1052,
	1053);
INSERT INTO R_RTO
	VALUES (983,
	1052,
	1053,
	1);
INSERT INTO R_OIR
	VALUES (983,
	1052,
	1053,
	982);
INSERT INTO R_AOTH
	VALUES (1043,
	1052,
	1058,
	1,
	0,
	'is identified in this association by');
INSERT INTO O_RTIDA
	VALUES (1059,
	1043,
	0,
	1052,
	1058);
INSERT INTO O_RTIDA
	VALUES (1060,
	1043,
	0,
	1052,
	1058);
INSERT INTO O_RTIDA
	VALUES (1061,
	1043,
	0,
	1052,
	1058);
INSERT INTO R_RTO
	VALUES (1043,
	1052,
	1058,
	0);
INSERT INTO R_OIR
	VALUES (1043,
	1052,
	1058,
	0);
INSERT INTO R_ASSR
	VALUES (1062,
	1052,
	1063,
	0);
INSERT INTO R_RGO
	VALUES (1062,
	1052,
	1063);
INSERT INTO R_OIR
	VALUES (1062,
	1052,
	1063,
	0);
INSERT INTO R_SIMP
	VALUES (1064);
INSERT INTO R_REL
	VALUES (1064,
	109,
	'CrossComponent:true',
	979);
INSERT INTO R_FORM
	VALUES (983,
	1064,
	1065,
	1,
	1,
	'identifies for this association ');
INSERT INTO R_RGO
	VALUES (983,
	1064,
	1065);
INSERT INTO R_OIR
	VALUES (983,
	1064,
	1065,
	982);
INSERT INTO R_PART
	VALUES (1039,
	1064,
	1066,
	0,
	1,
	'is identified in this association by');
INSERT INTO O_RTIDA
	VALUES (1041,
	1039,
	0,
	1064,
	1066);
INSERT INTO O_RTIDA
	VALUES (1042,
	1039,
	0,
	1064,
	1066);
INSERT INTO R_RTO
	VALUES (1039,
	1064,
	1066,
	0);
INSERT INTO R_OIR
	VALUES (1039,
	1064,
	1066,
	0);
INSERT INTO R_ASSOC
	VALUES (1067);
INSERT INTO R_REL
	VALUES (1067,
	111,
	'CrossComponent:true',
	979);
INSERT INTO R_AONE
	VALUES (985,
	1067,
	1068,
	1,
	1,
	'is used to refer class by');
INSERT INTO O_RTIDA
	VALUES (1069,
	985,
	0,
	1067,
	1068);
INSERT INTO O_RTIDA
	VALUES (1070,
	985,
	0,
	1067,
	1068);
INSERT INTO O_RTIDA
	VALUES (1071,
	985,
	0,
	1067,
	1068);
INSERT INTO R_RTO
	VALUES (985,
	1067,
	1068,
	0);
INSERT INTO R_OIR
	VALUES (985,
	1067,
	1068,
	984);
INSERT INTO R_AOTH
	VALUES (1062,
	1067,
	1072,
	1,
	1,
	'refers across association via');
INSERT INTO O_RTIDA
	VALUES (1073,
	1062,
	0,
	1067,
	1072);
INSERT INTO O_RTIDA
	VALUES (1074,
	1062,
	0,
	1067,
	1072);
INSERT INTO O_RTIDA
	VALUES (1075,
	1062,
	0,
	1067,
	1072);
INSERT INTO O_RTIDA
	VALUES (1076,
	1062,
	0,
	1067,
	1072);
INSERT INTO O_RTIDA
	VALUES (1077,
	1062,
	0,
	1067,
	1072);
INSERT INTO R_RTO
	VALUES (1062,
	1067,
	1072,
	0);
INSERT INTO R_OIR
	VALUES (1062,
	1067,
	1072,
	0);
INSERT INTO R_ASSR
	VALUES (1028,
	1067,
	1078,
	0);
INSERT INTO R_RGO
	VALUES (1028,
	1067,
	1078);
INSERT INTO R_OIR
	VALUES (1028,
	1067,
	1078,
	0);
INSERT INTO R_SIMP
	VALUES (1079);
INSERT INTO R_REL
	VALUES (1079,
	119,
	'Notify_Changes:false',
	979);
INSERT INTO R_PART
	VALUES (1080,
	1079,
	1081,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (1082,
	1080,
	0,
	1079,
	1081);
INSERT INTO R_RTO
	VALUES (1080,
	1079,
	1081,
	0);
INSERT INTO R_OIR
	VALUES (1080,
	1079,
	1081,
	0);
INSERT INTO R_FORM
	VALUES (1014,
	1079,
	1083,
	1,
	1,
	'visited');
INSERT INTO R_RGO
	VALUES (1014,
	1079,
	1083);
INSERT INTO R_OIR
	VALUES (1014,
	1079,
	1083,
	0);
INSERT INTO R_SIMP
	VALUES (1084);
INSERT INTO R_REL
	VALUES (1084,
	120,
	'',
	979);
INSERT INTO R_PART
	VALUES (37,
	1084,
	1085,
	0,
	1,
	'specifies occurrences of');
INSERT INTO O_RTIDA
	VALUES (168,
	37,
	0,
	1084,
	1085);
INSERT INTO O_RTIDA
	VALUES (169,
	37,
	0,
	1084,
	1085);
INSERT INTO R_RTO
	VALUES (37,
	1084,
	1085,
	0);
INSERT INTO R_OIR
	VALUES (37,
	1084,
	1085,
	0);
INSERT INTO R_FORM
	VALUES (59,
	1084,
	1086,
	1,
	1,
	'may have');
INSERT INTO R_RGO
	VALUES (59,
	1084,
	1086);
INSERT INTO R_OIR
	VALUES (59,
	1084,
	1086,
	986);
INSERT INTO R_SIMP
	VALUES (1087);
INSERT INTO R_REL
	VALUES (1087,
	121,
	'',
	979);
INSERT INTO R_PART
	VALUES (50,
	1087,
	1088,
	0,
	1,
	'specifies occurrences of');
INSERT INTO O_RTIDA
	VALUES (219,
	50,
	0,
	1087,
	1088);
INSERT INTO R_RTO
	VALUES (50,
	1087,
	1088,
	0);
INSERT INTO R_OIR
	VALUES (50,
	1087,
	1088,
	0);
INSERT INTO R_FORM
	VALUES (59,
	1087,
	1089,
	1,
	1,
	'may have');
INSERT INTO R_RGO
	VALUES (59,
	1087,
	1089);
INSERT INTO R_OIR
	VALUES (59,
	1087,
	1089,
	986);
INSERT INTO R_SIMP
	VALUES (1090);
INSERT INTO R_REL
	VALUES (1090,
	122,
	'',
	979);
INSERT INTO R_PART
	VALUES (43,
	1090,
	1091,
	0,
	1,
	'defines return value dimensions for');
INSERT INTO O_RTIDA
	VALUES (201,
	43,
	0,
	1090,
	1091);
INSERT INTO R_RTO
	VALUES (43,
	1090,
	1091,
	0);
INSERT INTO R_OIR
	VALUES (43,
	1090,
	1091,
	0);
INSERT INTO R_FORM
	VALUES (59,
	1090,
	1092,
	1,
	1,
	'return value may have');
INSERT INTO R_RGO
	VALUES (59,
	1090,
	1092);
INSERT INTO R_OIR
	VALUES (59,
	1090,
	1092,
	986);
INSERT INTO R_SIMP
	VALUES (1093);
INSERT INTO R_REL
	VALUES (1093,
	123,
	'CrossComponent:true',
	979);
INSERT INTO R_PART
	VALUES (30,
	1093,
	1094,
	0,
	0,
	'provides reference datatype for');
INSERT INTO O_RTIDA
	VALUES (150,
	30,
	0,
	1093,
	1094);
INSERT INTO R_RTO
	VALUES (30,
	1093,
	1094,
	0);
INSERT INTO R_OIR
	VALUES (30,
	1093,
	1094,
	0);
INSERT INTO R_FORM
	VALUES (988,
	1093,
	1095,
	1,
	1,
	'is available as a reference by');
INSERT INTO R_RGO
	VALUES (988,
	1093,
	1095);
INSERT INTO R_OIR
	VALUES (988,
	1093,
	1095,
	987);
INSERT INTO R_SIMP
	VALUES (1096);
INSERT INTO R_REL
	VALUES (1096,
	124,
	'',
	979);
INSERT INTO R_PART
	VALUES (50,
	1096,
	1097,
	0,
	1,
	'succeeds');
INSERT INTO O_RTIDA
	VALUES (219,
	50,
	0,
	1096,
	1097);
INSERT INTO R_RTO
	VALUES (50,
	1096,
	1097,
	0);
INSERT INTO R_OIR
	VALUES (50,
	1096,
	1097,
	0);
INSERT INTO R_FORM
	VALUES (50,
	1096,
	1098,
	0,
	1,
	'precedes');
INSERT INTO R_RGO
	VALUES (50,
	1096,
	1098);
INSERT INTO R_OIR
	VALUES (50,
	1096,
	1098,
	0);
INSERT INTO R_SIMP
	VALUES (1099);
INSERT INTO R_REL
	VALUES (1099,
	125,
	'',
	979);
INSERT INTO R_PART
	VALUES (43,
	1099,
	1100,
	0,
	1,
	'succeeds');
INSERT INTO O_RTIDA
	VALUES (201,
	43,
	0,
	1099,
	1100);
INSERT INTO R_RTO
	VALUES (43,
	1099,
	1100,
	0);
INSERT INTO R_OIR
	VALUES (43,
	1099,
	1100,
	0);
INSERT INTO R_FORM
	VALUES (43,
	1099,
	1101,
	0,
	1,
	'precedes');
INSERT INTO R_RGO
	VALUES (43,
	1099,
	1101);
INSERT INTO R_OIR
	VALUES (43,
	1099,
	1101,
	0);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1062,
	'Referred To Identifier Attribute',
	111,
	'O_RTIDA',
	'This class serves a linkage between R# (Attribute Reference in Class ) and the referred to class identifier attribute.',
	979);
INSERT INTO O_TFR
	VALUES (1102,
	1062,
	'dispose',
	'Dispose this O_RTIDA.
',
	19,
	1,
	'select many refs related by self->O_REF[R111];
for each ref in refs
  ref.migrateRefAttrOrDispose();
end for;
select one oida related by self->O_OIDA[R110];
select one rto related by self->R_RTO[R110];
unrelate oida from rto across R110 using self;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (1103,
	1062,
	'get_name',
	'',
	322,
	1,
	'select one cia related by self->O_OIDA[R110];
select one assoc related by self->R_RTO[R110]->R_OIR[R203]->R_REL[R201];
result = cia.localAttributeName + " {R"; 
result = result + GD::int_to_string(value: assoc.Numb);
result = result + "}";
return result;',
	1,
	'',
	1102);
INSERT INTO O_REF
	VALUES (1062,
	1043,
	0,
	1059,
	1052,
	1063,
	1058,
	1073,
	1104,
	0,
	0,
	'',
	'Class Identifier Attribute',
	'Attr_ID',
	'R110');
INSERT INTO O_RATTR
	VALUES (1073,
	1062,
	168,
	37,
	1,
	'Attr_ID');
INSERT INTO O_ATTR
	VALUES (1073,
	1062,
	0,
	'Attr_ID',
	'',
	'',
	'Attr_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1062,
	983,
	1,
	1054,
	1052,
	1063,
	1053,
	1075,
	1105,
	0,
	0,
	'',
	'Referred To Class in Assoc',
	'Oid_ID',
	'R110');
INSERT INTO O_REF
	VALUES (1062,
	1043,
	0,
	1060,
	1052,
	1063,
	1058,
	1075,
	1106,
	1105,
	0,
	'',
	'Class Identifier Attribute',
	'Oid_ID',
	'R110');
INSERT INTO O_RATTR
	VALUES (1075,
	1062,
	1041,
	1039,
	1,
	'Oid_ID');
INSERT INTO O_ATTR
	VALUES (1075,
	1062,
	1076,
	'Oid_ID',
	'',
	'',
	'Oid_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1062,
	983,
	1,
	1055,
	1052,
	1063,
	1053,
	1074,
	1107,
	0,
	0,
	'',
	'Referred To Class in Assoc',
	'OIR_ID',
	'R110');
INSERT INTO O_RATTR
	VALUES (1074,
	1062,
	1108,
	1109,
	1,
	'OIR_ID');
INSERT INTO O_ATTR
	VALUES (1074,
	1062,
	1077,
	'OIR_ID',
	'',
	'',
	'OIR_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1062,
	1043,
	0,
	1061,
	1052,
	1063,
	1058,
	1076,
	1110,
	0,
	0,
	'',
	'Class Identifier Attribute',
	'Obj_ID',
	'R110');
INSERT INTO O_REF
	VALUES (1062,
	983,
	1,
	1056,
	1052,
	1063,
	1053,
	1076,
	1111,
	1110,
	0,
	'',
	'Referred To Class in Assoc',
	'Obj_ID',
	'R110');
INSERT INTO O_RATTR
	VALUES (1076,
	1062,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (1076,
	1062,
	1073,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1062,
	983,
	1,
	1057,
	1052,
	1063,
	1053,
	1077,
	1112,
	0,
	0,
	'',
	'Referred To Class in Assoc',
	'Rel_ID',
	'R110');
INSERT INTO O_RATTR
	VALUES (1077,
	1062,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (1077,
	1062,
	1075,
	'Rel_ID',
	'',
	'',
	'Rel_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1062);
INSERT INTO O_OIDA
	VALUES (1073,
	1062,
	0,
	'Attr_ID');
INSERT INTO O_OIDA
	VALUES (1074,
	1062,
	0,
	'OIR_ID');
INSERT INTO O_OIDA
	VALUES (1075,
	1062,
	0,
	'Oid_ID');
INSERT INTO O_OIDA
	VALUES (1076,
	1062,
	0,
	'Obj_ID');
INSERT INTO O_OIDA
	VALUES (1077,
	1062,
	0,
	'Rel_ID');
INSERT INTO O_ID
	VALUES (1,
	1062);
INSERT INTO O_ID
	VALUES (2,
	1062);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1080,
	'Referential Attribute Visited Recorder',
	114,
	'O_RAVR',
	'A non-persistent instance of this class is created per domain.  The sole 
purpose of this instance is to allow instances of Referential Attribute to 
be related to it across R119 as a way to mark that they have been visited
during a traversal from a referential attribute to its base attribute. 
This marking is performed in order to avoid an infinite loop during the 
traversal caused by any circular referencing that may be present.  

Persistent:false
User_Visible:false
TRANSLATE_FOR_EXTERNAL_USE:FALSE',
	979);
INSERT INTO O_TFR
	VALUES (1113,
	1080,
	'setAllToNotVisited',
	'',
	19,
	1,
	'// for each visited attribute
select many attributes related by self->O_RATTR[R119];
for each attribute in attributes
   	// make this attribute no longer visited
   	unrelate attribute from self across R119;
end for;',
	2,
	'',
	1114);
INSERT INTO O_TFR
	VALUES (1114,
	1080,
	'areAnyVisited',
	'',
	316,
	1,
	'select any attribute related by self->O_RATTR[R119];
return not_empty attribute;',
	1,
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (1082,
	1080);
INSERT INTO O_BATTR
	VALUES (1082,
	1080);
INSERT INTO O_ATTR
	VALUES (1082,
	1080,
	0,
	'recorderId',
	'Persistent:false
User_Visible:false
TRANSLATE_FOR_EXTERNAL_USE:FALSE',
	'',
	'recorderId',
	0,
	296,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1080);
INSERT INTO O_OIDA
	VALUES (1082,
	1080,
	0,
	'recorderId');
INSERT INTO O_ID
	VALUES (1,
	1080);
INSERT INTO O_ID
	VALUES (2,
	1080);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1014,
	'Referential Attribute',
	109,
	'O_RATTR',
	'A referential attribute captures the formalization of an association.  A referential attribute refers to an identifying attribute in the class at the other end of the association which it formalizes.',
	979);
INSERT INTO O_TFR
	VALUES (1115,
	1014,
	'dispose',
	'Dispose of this Referential Attribute.
',
	19,
	1,
	'select one battr related by self->O_BATTR[R113];
if (not_empty battr)
  unrelate self from battr across R113;
end if;
select many refs related by self->O_REF[R108];
for each ref in refs
  unrelate self from ref across R108;
  ref.dispose();
end for;
select one attr related by self->O_ATTR[R106];
if ( not_empty attr )
  unrelate self from attr across R106;
end if;
delete object instance self;',
	1,
	'',
	1116);
INSERT INTO O_TFR
	VALUES (1117,
	1014,
	'migrateToBase',
	'Migrate this Referntial Attribute to a Base Attribute.  This may be neccessary when it no longer refers to anything but is still part of the class identifier.
',
	19,
	1,
	'select one attr related by self->O_ATTR[R106];
unrelate self from attr across R106;
// Make the new base attribute have the same
// data type as the original
select one battr related by self->O_BATTR[R113];
if (not_empty battr)
  unrelate self from battr across R113;
  // Migrate the data type of self to the type of the old referred to attribute
  select one battrType related by battr->O_ATTR[R106]->S_DT[R114];
  select one attrType related by attr->S_DT[R114];
  unrelate attr from attrType across R114;
  relate attr to battrType across R114;
end if;
create object instance battr of O_BATTR;
relate attr to battr across R106;
create object instance nbattr of O_NBATTR;
relate nbattr to battr across R107;
// Now change the base attribute of all referring
// referentials to this new base.
select many rtoRefs related by attr->O_OIDA[R105]->
                             O_RTIDA[R110]->O_REF[R111]->O_RATTR[R108];
for each ref in rtoRefs
  select one oldBattr related by ref->O_BATTR[R113];
  unrelate ref from oldBattr across R113;
  relate ref to battr across R113;
end for;
self.dispose();
',
	1,
	'',
	1118);
INSERT INTO O_TFR
	VALUES (1119,
	1014,
	'get_name',
	'',
	322,
	1,
	'select one attr related by self->O_ATTR[R106];
   result = attr.Name;
   select many ref_set related by self->O_REF[R108];
   for each ref in ref_set
     result = result + " (" + ref.get_text(includeTextPhrase:true) + ")";
   end for;
   return result;',
	1,
	'',
	1115);
INSERT INTO O_TFR
	VALUES (1118,
	1014,
	'isOrphaned',
	'',
	316,
	1,
	'select any rattr_root related by self->O_REF[R108]->O_RTIDA[R111]->O_OIDA[R110]->O_ATTR[R105];
return empty rattr_root;
',
	1,
	'',
	1120);
INSERT INTO O_TFR
	VALUES (1116,
	1014,
	'combine_refs',
	'',
	19,
	1,
	'select any other_attr related by self->O_ATTR[R106]->O_OBJ[R102]->O_ATTR[R102]
       where selected.Attr_ID == param.other_id;
select one other_rattr related by other_attr->O_RATTR[R106];
select many other_ref_set related by other_rattr->O_REF[R108];
   
   // find last O_REF in self''s ref list R112
   select any ref related by self->O_REF[R108];
   select one next_ref related by ref->O_REF[R112.''precedes''];
   while (not_empty next_ref)
     select one next_ref related by ref->O_REF[R112.''precedes''];
     if (not_empty next_ref)
       ref = next_ref;
     end if;
   end while;
   
   for each other_ref in other_ref_set
     unrelate other_ref from other_rattr across R108;
     relate other_ref to self across R108;  
     // add other_ref to self''s ref list R112
     relate other_ref to ref across R112.''succeeds'';
     ref = other_ref;    
   end for;
   select any oida related by other_attr->O_OIDA[R105];
   if ( not_empty oida )  // attribute is identifying
     other_rattr.migrateToBase();
   else
     other_attr.dispose();
   end if;',
	1,
	'',
	1121);
INSERT INTO O_TPARM
	VALUES (1122,
	1116,
	'other_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1123,
	1014,
	'split_refs',
	'',
	19,
	1,
	'select any other_ref related by self->O_REF[R108]
       where selected.ARef_ID == param.other_id;
       
   // remove other_ref from self''s R112 list
   select one next_ref related by other_ref->O_REF[R112.''precedes''];
   select one prev_ref related by other_ref->O_REF[R112.''succeeds''];
   if (empty next_ref)
     unrelate prev_ref from other_ref across R112.''precedes'';  
   elif (empty prev_ref)
     unrelate other_ref from next_ref across R112.''precedes''; 
   else
     unrelate other_ref from next_ref across R112.''precedes''; 
     unrelate prev_ref from other_ref across R112.''precedes''; 
     relate next_ref to prev_ref across R112.''succeeds'';  
   end if; 
    
   unrelate other_ref from self across R108;
   // create referential attribute
   select one mc related by self->O_ATTR[R106]->O_OBJ[R102];
   newAttr_id = mc.newReferentialAttribute(ref_obj_id: other_ref.RObj_ID, 
       ref_oid_id: other_ref.ROid_ID, ref_attr_id: other_ref.RAttr_ID, id: -1 );
   
   select any newRattr related by mc->O_ATTR[R102]->O_RATTR[R106] 
        where selected.Attr_ID == newAttr_id;
   relate other_ref to newRattr across R108;',
	1,
	'',
	1124);
INSERT INTO O_TPARM
	VALUES (1125,
	1123,
	'other_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1121,
	1014,
	'alreadyCombinedWith',
	'',
	316,
	1,
	'select any ref related by self->O_REF[R108]
  where ( selected.Attr_ID == param.id );
return not_empty ref;',
	1,
	'',
	1126);
INSERT INTO O_TPARM
	VALUES (1127,
	1121,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1120,
	1014,
	'get_root_name_internal',
	'',
	322,
	1,
	'if ( self.Ref_Mode == 0 )  // use local root
  select one attr related by self->O_ATTR[R106];
  return attr.Root_Nam;
else
  select many oref_set related by self->O_REF[R108];
  for each oref in oref_set
    select one attr related by oref->O_RTIDA[R111]->O_OIDA[R110]->O_ATTR[R105];
    if ( not_empty attr )
      root_name = attr.get_root();
      if ( root_name != O_RATTR::ROOT_LOOP_STRING() )
        return root_name;
      end if;
    else
      return self.BaseAttrName;
    end if;
  end for;
end if;

// We didn''t find anything
return self.BaseAttrName;
',
	1,
	'',
	1128);
INSERT INTO O_TFR
	VALUES (1129,
	1014,
	'get_prefix_string_internal',
	'',
	322,
	1,
	'select one attr related by self->O_ATTR[R106];
if ( attr.Pfx_Mode == 1 )  // use local prefix
  return attr.Prefix;
elif ( attr.Pfx_Mode == 2 )  // use referred to prefix
  select many oref_set related by self->O_REF[R108];
  for each oref in oref_set
    select one root_attr related by oref->O_RTIDA[R111]->O_OIDA[R110]->O_ATTR[R105];
    if ( not_empty root_attr )
      prefix = root_attr.get_prefix();
      if ( prefix != O_RATTR::PREFIX_LOOP_STRING() )
        return prefix;
      end if;
    else
      return self.BaseAttrName;
    end if;
  end for;
  // We didn''t find anything
  return self.BaseAttrName;
else  // no prefix
  return "";
end if;
',
	1,
	'',
	1130);
INSERT INTO O_TFR
	VALUES (1124,
	1014,
	'setDatatype',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// assure that the datatype is the correct one for
// referential attributes
select one attr related by self->O_ATTR[R106];
select one dt related by attr->S_DT[R114];
if ( not_empty dt )
  if ( dt.Name == "same_as<Base_Attribute>" )
    return;
  else
    unrelate attr from dt across R114;
  end if;
end if;


isInGenericPkg = false;
select one pkg related by attr->O_OBJ[R102]->PE_PE[R8001]->EP_PKG[R8000];
if (not_empty pkg)
  isInGenericPkg = true;
end if;

if (isInGenericPkg)
  select one system related by pkg->S_SYS[R1405];
  dt_id = GD::NULL_UNIQUE_ID();
  if not_empty system
    dt_id = system.getCoreTypeId(name:"same_as<Base_Attribute>");
  end if;
  select any pe from instances of PE_PE where selected.Element_ID == dt_id;
  select one ref_attr_dt related by pe->S_DT[R8001]; 
  if (empty ref_attr_dt)
    USER::logError(msg:
                  "Unable to locate expected data type: same_as<Base_Attribute>",path:"PathNotProvided");
  else
    relate attr to ref_attr_dt across R114;
  end if;
else
  select any dom from instances of S_DOM;
  select any ref_attr_dt related by dom->S_DT[R14] where
                                     selected.Name == "same_as<Base_Attribute>";
  if(empty ref_attr_dt)
    // if the ref attr dt was not found check the system level
    // dts, but only if the domain found is the formal content
    // of a component
    if(dom.participatesInSystem())
      select one system related by dom->CN_DC[R4204]->C_C[R4204]->CP_CP[R4608]
                                                                 ->S_SYS[R4606];
      dt_id = GD::NULL_UNIQUE_ID();
      if not_empty system
        dt_id = system.getCoreTypeId(name:"same_as<Base_Attribute>");
      end if;
      select any pe from instances of PE_PE where selected.Element_ID == dt_id;
      select one ref_attr_dt related by pe->S_DT[R8001]; 
    else
      // this is an error, if the domain is not
      // participating at the system level and
      // we cannot find the type at the domain
      // level we have a problem
      USER::logError(msg:
                  "Unable to locate expected data type: same_as<Base_Attribute>",path:"PathNotProvided");
    end if;
  end if;
  relate attr to ref_attr_dt across R114;
end if;   

',
	1,
	'',
	1117);
INSERT INTO O_TFR
	VALUES (1131,
	1014,
	'get_root',
	'',
	322,
	1,
	'tmp_root = "";

select one recorder related by self->O_RAVR[R119];
if (not_empty recorder)
	tmp_root = O_RATTR::ROOT_LOOP_STRING();
elif ( self.Ref_Mode == 0 )   // Local Attribute
    select one attr related by self->O_ATTR[R106];
	tmp_root = attr.Root_Nam;
elif ( self.Ref_Mode == 1 )  // Referred To Attribute
   	select any recorder from instances of O_RAVR;
   	if(empty recorder)
      create object instance recorder of O_RAVR;
    end if;
   	relate self to recorder across R119;
	tmp_root = self.get_root_name_internal();
   	unrelate self from recorder across R119;
// when calls are all finished, all visited attributes should be false
end if;

return tmp_root ;
',
	1,
	'',
	1129);
INSERT INTO O_TFR
	VALUES (1126,
	1014,
	'ROOT_LOOP_STRING',
	'',
	322,
	0,
	'return "< Name Loop >";',
	1,
	'',
	1132);
INSERT INTO O_TFR
	VALUES (1132,
	1014,
	'PREFIX_LOOP_STRING',
	'',
	322,
	0,
	'return "< Prefix Loop >";
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (1133,
	1014,
	'get_prefix',
	'',
	322,
	1,
	'tmp_prefix = "";
select one recorder related by self->O_RAVR[R119];
if (not_empty recorder)
	tmp_prefix = O_RATTR::PREFIX_LOOP_STRING();
else
  select one attr related by self->O_ATTR[R106];
  if ( attr.Pfx_Mode == 1 )   // Local Prefix
	tmp_prefix = attr.Prefix;
  elif ( attr.Pfx_Mode == 2 )  // Referred To Prefix
   	select any recorder from instances of O_RAVR;
   	if(empty recorder)
      create object instance recorder of O_RAVR;
    end if;
   	
   	relate self to recorder across R119;
	tmp_prefix = self.get_prefix_string_internal();
   	unrelate self from recorder across R119;
    // when calls are all finished, all visited attributes should be false
  end if;
end if;

// no prefix is handled by default
return tmp_prefix ;
',
	1,
	'',
	1119);
INSERT INTO O_TFR
	VALUES (1128,
	1014,
	'get_root_name',
	'',
	322,
	1,
	'select any recorder from instances of O_RAVR;
if(empty recorder)
  create object instance recorder of O_RAVR;
end if;

recorder.setAllToNotVisited();

result = self.get_root_name_internal();
   
// assert that there are no visited referential attributes
if (recorder.areAnyVisited())
   USER::logError(msg:"Assertion failed: get_root_name(): referential attribute is still marked as visited",path:"");
end if;
   
return result;',
	1,
	'',
	1131);
INSERT INTO O_TFR
	VALUES (1130,
	1014,
	'get_prefix_string',
	'',
	322,
	1,
	'select any recorder from instances of O_RAVR;
if(empty recorder)
  create object instance recorder of O_RAVR;
end if;

recorder.setAllToNotVisited();
   
result = self.get_prefix_string_internal();
  
// assert that there are no visited referential attributes
if (recorder.areAnyVisited())
   USER::logError(msg:"Assertion failed: get_prefix_string(): referential attribute is still marked as visited",path:"");
end if;
   
return result;',
	1,
	'',
	1133);
INSERT INTO O_REF
	VALUES (1014,
	37,
	0,
	168,
	1010,
	1015,
	1011,
	1031,
	1134,
	0,
	0,
	'',
	'Attribute',
	'Attr_ID',
	'R106');
INSERT INTO O_RATTR
	VALUES (1031,
	1014,
	168,
	37,
	1,
	'Attr_ID');
INSERT INTO O_ATTR
	VALUES (1031,
	1014,
	0,
	'Attr_ID',
	'',
	'',
	'Attr_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1014,
	1012,
	0,
	1018,
	1016,
	1020,
	1017,
	1135,
	1136,
	0,
	1,
	'',
	'Base Attribute',
	'Attr_ID',
	'R113');
INSERT INTO O_RATTR
	VALUES (1135,
	1014,
	168,
	37,
	1,
	'Attr_ID');
INSERT INTO O_ATTR
	VALUES (1135,
	1014,
	1032,
	'BAttr_ID',
	'Reference IS CONSTRAINED such that Base Attribute related across R113 is same Base Attribute which is found by navigating back through the referred to attributes until Base Attribute is found.',
	'B',
	'Attr_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1137,
	1014);
INSERT INTO O_BATTR
	VALUES (1137,
	1014);
INSERT INTO O_ATTR
	VALUES (1137,
	1014,
	1138,
	'Ref_Mode',
	'Full Name: Referential Attribute Referred to Mode
Description: Indicates how to build the name of the referential attribute.
Data Domain: 0 = use local root, 1 = use referred to root

enum0: Local Attribute
enum1: Referred To Attribute',
	'',
	'Ref_Mode',
	0,
	298,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1139,
	1014,
	'Attribute_c base_attr = Attribute_c.getOneO_ATTROnR106(BaseAttribute_c.getOneO_BATTROnR113(this));
if (base_attr != null){
	m_baseattrname = base_attr.getName();
	return m_baseattrname;
}
else{
	return m_baseattrname;
}',
	0);
INSERT INTO O_BATTR
	VALUES (1139,
	1014);
INSERT INTO O_ATTR
	VALUES (1139,
	1014,
	1137,
	'BaseAttrName',
	'Full Name: Base Attribute Name
Calculate the value of Base Attribute name.
if it is calculated then set it otherwise use the existing cached value.
Translate: native
In Properties: false',
	'',
	'BaseAttrName',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (1014,
	1080,
	0,
	1082,
	1079,
	1083,
	1081,
	1140,
	1141,
	0,
	0,
	'',
	'Referential Attribute Visited Recorder',
	'recorderId',
	'R119');
INSERT INTO O_RATTR
	VALUES (1140,
	1014,
	1082,
	1080,
	1,
	'recorderId');
INSERT INTO O_ATTR
	VALUES (1140,
	1014,
	1139,
	'recorderId',
	'Persistent:false
User_Visible:false
TRANSLATE_FOR_EXTERNAL_USE:FALSE
',
	'',
	'recorderId',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1014,
	1012,
	0,
	1019,
	1016,
	1020,
	1017,
	1138,
	1142,
	0,
	1,
	'',
	'Base Attribute',
	'Obj_ID',
	'R113');
INSERT INTO O_RATTR
	VALUES (1138,
	1014,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (1138,
	1014,
	1135,
	'BObj_ID',
	'',
	'B',
	'Obj_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1014,
	37,
	0,
	169,
	1010,
	1015,
	1011,
	1032,
	1143,
	0,
	0,
	'',
	'Attribute',
	'Obj_ID',
	'R106');
INSERT INTO O_RATTR
	VALUES (1032,
	1014,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (1032,
	1014,
	1031,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1014);
INSERT INTO O_OIDA
	VALUES (1031,
	1014,
	0,
	'Attr_ID');
INSERT INTO O_OIDA
	VALUES (1032,
	1014,
	0,
	'Obj_ID');
INSERT INTO O_ID
	VALUES (1,
	1014);
INSERT INTO O_ID
	VALUES (2,
	1014);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (50,
	'Operation Parameter',
	113,
	'O_TPARM',
	'Each operation (O_TFR) can have one or more parameters (O_TPARM).  A parameter to an operation is called an operation parameter.  Operation parameters are either passed in by value, or by reference.  Operation parameters can be accessed by using the param keyword from within an operation action specification.',
	979);
INSERT INTO O_TFR
	VALUES (1144,
	50,
	'dispose',
	'Dispose this Operation Parameter.
',
	19,
	1,
	'// Operation Parameter.dispose()
//
// Value Subsystem
select many pvs related by self->V_PVL[R833];
for each pv in pvs
  unrelate self from pv across R833;
end for;
//
// Subsystem Subsystem
select one operation related by self->O_TFR[R117];
unrelate self from operation across R117;
select one dt related by self->S_DT[R118];
unrelate self from dt across R118;
//
select one successor related by self->O_TPARM[R124.''precedes''];
select one predecessor related by self->O_TPARM[R124.''succeeds''];
if (not empty successor)
  unrelate self from successor across R124.''precedes'';
end if;
if (not empty predecessor)
  unrelate self from predecessor across R124.''succeeds'';
end if;
if (not_empty successor and not_empty predecessor)
  relate successor to predecessor across R124.''succeeds'';
end if;
// dispose each message argument
// associated with this parm
select many args related by self->MSG_OA[R1015];
for each arg in args
  arg.dispose();
end for;
//
select many dims related by self->S_DIM[R121];
for each dim in dims
  unrelate self from dim across R121;
  delete object instance dim;
end for;
//
// Finally delete self
delete object instance self;',
	1,
	'',
	1145);
INSERT INTO O_TFR
	VALUES (1146,
	50,
	'initialize',
	'Initialize this Operation Parameter.  Set the Name and data type to default values.
',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one system related by self->O_TFR[R117]->O_OBJ[R115]->PE_PE[R8001]->
                                       EP_PKG[R8000]->S_SYS[R1405];
isInGenericPackage = false;                                       
if (not_empty system)
  isInGenericPackage = true;
else
  select one component related by self->O_TFR[R117]->O_OBJ[R115]->PE_PE[R8001]->
                                   C_C[R8003];
  if (not_empty component)
    rootCompIdInPkg = component.getRootComponentId();
    select any rootComponent from instances of C_C where (selected.Id == rootCompIdInPkg);
    select one system related by rootComponent->PE_PE[R8001]->EP_PKG[R8000]->S_SYS[R1405];
  end if;
  if (not_empty system)
    isInGenericPackage = true;
  end if;
end if;                                       
select one operation related by self->O_TFR[R117];
operation.addParameterToOrdering(id:self.TParm_ID);
select any dom from instances of S_DOM;
select any def_dt related by dom->S_DT[R14] where selected.Name == "integer";
if(empty def_dt)
  if (isInGenericPackage)
    // if the integer dt was not found check the system level dts.
    dt_id = GD::NULL_UNIQUE_ID();
    if not_empty system
      dt_id = system.getCoreTypeId(name:"integer");
    end if;
    select any pe from instances of PE_PE where selected.Element_ID == dt_id;
    select one def_dt related by pe->S_DT[R8001]; 
    if empty def_dt
      USER::logError(msg:"Unable to locate expected data type: integer",path:"");
    end if;
  else
    // if the integer dt was not found check the system level
    // dts, but only if the domain found is the formal content
    // of a component
    if(dom.participatesInSystem())
      select one system related by dom->CN_DC[R4204]->C_C[R4204]->CP_CP[R4608]
                                    ->S_SYS[R4606];
      dt_id = GD::NULL_UNIQUE_ID();
      if not_empty system
        dt_id = system.getCoreTypeId(name:"integer");
      end if;
      select any pe from instances of PE_PE where selected.Element_ID == dt_id;
      select one def_dt related by pe->S_DT[R8001]; 
    else
      // this is an error, if the domain is not
      // participating at the system level and
      // we cannot find the type at the domain
      // level we have a problem
      USER::logError(msg:"Unable to locate expected data type: integer",path:"");
    end if;
  end if;
end if;
relate self to def_dt across R118;
name = ::getUniqueInitialName( 
    instance: self.convertToInstance(), 
    candidateName: "Unnamed Parameter");
success = ::getNewElementName(name:name,instance: self.convertToInstance(),validateName:true);    
if ( success!="") 
 self.Name=success;
else 
 self.dispose();   
end if; ',
	1,
	'',
	1147);
INSERT INTO O_TFR
	VALUES (1148,
	50,
	'isAllowedType',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// if this element is at the system level check the
// system level data types, otherwise check the 
// domain
// Operation Parameter.isAllowedType()
select one packageableElem related by self->O_TFR[R117]->
                                                      O_OBJ[R115]->PE_PE[R8001];
select one package related by packageableElem->EP_PKG[R8000];
select one component related by packageableElem->C_C[R8003];
isInGenericPackage = not_empty package or not_empty component;
if isInGenericPackage
  return packageableElem.isAllowedType(isReturnType:false,
                                                       typeName:param.typeName);
else
  select one domain related by self->O_TFR[R117]->O_OBJ[R115]->S_SS[R2]->S_DOM[R1];
  if(not_empty domain)
    select one system related by domain->S_SYS[R28];
    if(not_empty system)
      return S_DT::isAllowedParameterType( typeName: param.typeName,
                                   			dom_id: domain.get_ooa_id() );
    else
      // first check the domain level
      result = S_DT::isAllowedParameterType( typeName: param.typeName,
                                   			dom_id: domain.get_ooa_id() );
      if(not result)
        // if nothing valid check the system level
        select one system related by domain->CN_DC[R4204]->C_C[R4204]
      											   ->CP_CP[R4608]->S_SYS[R4606];
        return Util::isAllowedParameterType(system:system.convertToInstance(),
                                                       typeName:param.typeName);
      else
        return result;
      end if;
    end if;
  end if;
  return false;
end if;',
	1,
	'',
	1146);
INSERT INTO O_TPARM
	VALUES (1149,
	1148,
	'typeName',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1145,
	50,
	'convertToInstance',
	'A utility operation to cast an instance of this type to the
instance datatype.

Translate: native',
	317,
	1,
	'// just return this instance as an Object
return this;',
	0,
	'',
	1150);
INSERT INTO O_TFR
	VALUES (1147,
	50,
	'getValue',
	'',
	317,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return GD::NULL_INSTANCE(); ',
	1,
	'',
	1151);
INSERT INTO O_TPARM
	VALUES (1152,
	1147,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1153,
	50,
	'setValue',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	1154);
INSERT INTO O_TPARM
	VALUES (1155,
	1153,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1156,
	1153,
	'value',
	317,
	0,
	'',
	1155,
	'');
INSERT INTO O_TPARM
	VALUES (1157,
	1153,
	'member_id',
	296,
	0,
	'',
	1156,
	'');
INSERT INTO O_TFR
	VALUES (1154,
	50,
	'resolveDatatype',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one dtProxy related by self->S_DT[R118];
if(not_empty dtProxy and not Util::isProxy(element:self.convertToInstance()))
  name = dtProxy.Name;
  unrelate dtProxy from self across R118;
  
  select one packageableElem related by self->O_TFR[R117]->
                                                      O_OBJ[R115]->PE_PE[R8001];
  select one package related by packageableElem->EP_PKG[R8000];
  select one component related by packageableElem->C_C[R8003];
  isInGenericPackage = not_empty package or not_empty component;
  if isInGenericPackage
    id = packageableElem.resolveDataTypeRelativeToSelf(default_name:"integer",
                                                            expected_name:name);                                                          
    select any resolvedDt related by package->PE_VIS[R8002]->
                         PE_PE[R8002]->S_DT[R8001] where selected.DT_ID == id;
    if (empty resolvedDt)
      select any resolvedDt related by component->PE_CVS[R8004]->
                       PE_PE[R8004]->S_DT[R8001] where selected.DT_ID == id;
    end if;	
    if not_empty resolvedDt
      relate resolvedDt to self across R118;
    end if;
  else
    select one domain related by self->O_TFR[R117]->O_OBJ[R115]->S_SS[R2]
                                                                    ->S_DOM[R1];
    id = domain.resolveDataTypeRelativeToSelf(default_name:"integer",
                                                            expected_name:name);
    // until we have instance reference passing, we search for
    // the data type related to the domain first then to the
    // system
    select any resolvedDT related by domain->S_DT[R14]
                                                   where (selected.DT_ID == id);
    if(empty resolvedDT)
      select one system related by domain->CN_DC[R4204]->C_C[R4204]
                                                   ->CP_CP[R4608]->S_SYS[R4606];
      select any resolvedDT related by system->SLD_SDINP[R4402]->S_DT[R4401]
                                                   where (selected.DT_ID == id);
      if empty resolvedDT and not_empty system and system.useGlobals
        select any resolvedDT related by system->G_EIS[R9100]->PE_PE[R9100]->
                                       S_DT[R8001] where (selected.DT_ID == id);
      end if;
    end if;
    if(not_empty resolvedDT)
      relate resolvedDT to self across R118;
    end if;
  end if;
end if;',
	1,
	'',
	1158);
INSERT INTO O_TFR
	VALUES (1151,
	50,
	'getDimensionsCnt',
	'',
	298,
	1,
	'select many dims related by self->S_DIM[R121];
dimensions = cardinality dims;
return dimensions;
',
	1,
	'',
	1144);
INSERT INTO O_TFR
	VALUES (1158,
	50,
	'resizeDimensions',
	'',
	19,
	1,
	'// If the number of dimensions has increased then add dimensions
while (param.numDimensions > self.getDimensionsCnt())
  create object instance dim of S_DIM;
  dim.dimensionCount = self.getDimensionsCnt();
  relate dim to self across R121;
end while;

// If the number of dimensions has decreased then remove dimensions
while (param.numDimensions < self.getDimensionsCnt())
  select any dim related by self->S_DIM[R121] where (selected.dimensionCount == (self.getDimensionsCnt()-1));
  unrelate dim from self across R121;
  delete object instance dim;
end while;

// Update the specific dimension that was passed-in if its elementCount has 
// changed.
if (param.numDimensions > 0) 
  select any dim related by self->S_DIM[R121] where (selected.dimensionCount == param.dimension);
  if (dim.elementCount != param.elementCount)
    dim.elementCount = param.elementCount;
  end if;
end if;
',
	1,
	'',
	1159);
INSERT INTO O_TPARM
	VALUES (1160,
	1158,
	'elementCount',
	298,
	0,
	'',
	1161,
	'');
INSERT INTO O_TPARM
	VALUES (1161,
	1158,
	'dimension',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1162,
	1158,
	'numDimensions',
	298,
	0,
	'',
	1160,
	'');
INSERT INTO O_TFR
	VALUES (1159,
	50,
	'moveUp',
	'',
	19,
	1,
	'::changeNotificationEnablement(enabled:false);
select one prev_attr related by self->O_TPARM[R124.''succeeds''];
select one prev_prev_attr related by prev_attr->O_TPARM[R124.''succeeds''];
select one next_attr related by self->O_TPARM[R124.''precedes''];

if ( not_empty prev_prev_attr )
  unrelate prev_attr from prev_prev_attr across R124.''succeeds'';
end if;
if ( not_empty next_attr )
  unrelate next_attr from self across R124.''succeeds'';
end if;
unrelate self from prev_attr across R124.''succeeds'';

if ( not_empty prev_prev_attr )
  relate self to prev_prev_attr across R124.''succeeds'';
end if;
// want to enable listeners at the last possible moment
if ( empty next_attr )
  ::changeNotificationEnablement(enabled:true);
end if;
relate prev_attr to self across R124.''succeeds'';
if ( not_empty next_attr )
  ::changeNotificationEnablement(enabled:true);
  relate next_attr to prev_attr across R124.''succeeds'';
end if;
',
	1,
	'',
	1163);
INSERT INTO O_TFR
	VALUES (1163,
	50,
	'moveDown',
	'',
	19,
	1,
	'::changeNotificationEnablement(enabled:false);
select one next_attr related by self->O_TPARM[R124.''precedes''];
select one prev_attr related by self->O_TPARM[R124.''succeeds''];
select one next_next_attr related by next_attr->O_TPARM[R124.''precedes''];

if ( not_empty next_next_attr )
  unrelate next_next_attr from next_attr across R124.''succeeds'';
end if;
if ( not_empty prev_attr )
  unrelate self from prev_attr across R124.''succeeds'';
end if;
unrelate next_attr from self across R124.''succeeds'';

if ( not_empty prev_attr )
  relate next_attr to prev_attr across R124.''succeeds'';
end if;
   
// want to enable listeners at the last possible moment
if ( empty next_next_attr )
  ::changeNotificationEnablement(enabled:true);
end if;
relate self to next_attr across R124.''succeeds'';
if ( not_empty next_next_attr )
  ::changeNotificationEnablement(enabled:true);
  relate next_next_attr to self across R124.''succeeds'';
end if;
',
	1,
	'',
	1164);
INSERT INTO O_TFR
	VALUES (1165,
	50,
	'actionFilter',
	'',
	316,
	1,
	'if (param.name == "can" )
  if ( param.value == "move up" )
    select one prev_attr related by self->O_TPARM[R124.''succeeds''];
    return not_empty prev_attr;
  elif ( param.value == "move down" )
    select one next_attr related by self->O_TPARM[R124.''precedes''];
    return not_empty next_attr;
  end if;
end if;
return false;
',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (1166,
	1165,
	'name',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1167,
	1165,
	'value',
	322,
	0,
	'',
	1166,
	'');
INSERT INTO O_TFR
	VALUES (1168,
	50,
	'canReferToDataType',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// select the dt
select one dt related by self->S_DT[R118];
if(not_empty dt)
  select one packageableElem related by self->O_TFR[R117]->
                                              O_OBJ[R115]->PE_PE[R8001];
  select one package related by packageableElem->EP_PKG[R8000];
  select one component related by packageableElem->C_C[R8003];
  isInGenericPackage = not_empty package or not_empty component;

  if (isInGenericPackage)
    return packageableElem.canReferToDataType(dtID:dt.DT_ID, dtName: dt.Name);
  else
    // if the data type package is at the system
    // level we can use the data type as long as
    // this element belongs to a formal component
    select one domain related by self->O_TFR[R117]->O_OBJ[R115]->S_SS[R2]
            ->S_DOM[R1];
    select one dtPkg related by dt->S_DIP[R39]->S_DPK[R39];
    if(not dtPkg.isDomainLevel())
      if( (not_empty domain) and domain.participatesInSystem())
        return true;
      else
        return false;
      end if;
    else
      // otherwise the DT must be in the same domain
      select one dtDomain related by dt->S_DOM[R14];
      if(dtDomain == domain)
        return true;
      end if;
    end if;
  end if;
end if;
return false;
',
	1,
	'',
	1165);
INSERT INTO O_TFR
	VALUES (1164,
	50,
	'isReferringToDefaultDataType',
	'',
	316,
	1,
	'select one dt related by self->S_DT[R118];
elementType = Util::getSimpleClassName(element:self.convertToInstance());
if(dt.Name == S_DT::getDefaultDataTypeName(elementType:elementType))
  return true;
end if;
return false;
',
	1,
	'',
	1148);
INSERT INTO O_TFR
	VALUES (1150,
	50,
	'canUseDataType',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// Operation Parameter.canUseDataType()
select one packageableElem related by self->O_TFR[R117]->
                                                      O_OBJ[R115]->PE_PE[R8001];
select one package related by packageableElem->EP_PKG[R8000];
select one component related by packageableElem->C_C[R8003];
isInGenericPackage = not_empty package or not_empty component;
if isInGenericPackage
  // Find the previously created visibility list
  select any resultSet related by package->PE_SRS[R8005] where
        selected.Name == "" and selected.Type == ElementTypeConstants::DATATYPE;
  select any dt related by resultSet->PE_VIS[R8006]->
                     PE_PE[R8002]->S_DT[R8001] where selected.DT_ID == param.id;
  if not_empty component
    // Find the previously created visibility list
    select any compResultSet related by component->PE_CRS[R8007] where
        selected.Name == "" and selected.Type == ElementTypeConstants::DATATYPE;
    select any dt related by compResultSet->PE_CVS[R8008]->
                     PE_PE[R8004]->S_DT[R8001] where selected.DT_ID == param.id;
  end if;
  if(not_empty dt)
    if(self.isAllowedType(typeName:dt.Name))
      return true;
    end if;
  end if;
  return false;
else
  select one domain related by self->O_TFR[R117]->O_OBJ[R115]->S_SS[R2]
                                                                    ->S_DOM[R1];
  if(domain.participatesInSystem())
    // system level check both the system
    // and the domain for the dt
    select one system related by domain->CN_DC[R4204]->C_C[R4204]->CP_CP[R4608]
                                                                 ->S_SYS[R4606];
    select any dt related by system->SLD_SDINP[R4402]->S_DT[R4401]
                                             where (selected.DT_ID == param.id);
    if empty dt and not_empty system and system.useGlobals
      select any dt related by system->G_EIS[R9100]->PE_PE[R9100]->S_DT[R8001]
                                             where (selected.DT_ID == param.id);
    end if;
    if(empty dt)
      select any dt related by domain->S_DT[R14]
                                             where (selected.DT_ID == param.id);
    end if;
    if(not_empty dt)
      if(self.isAllowedType(typeName:dt.Name))
        return true;
      end if;
    end if;
  else
    // only check the domain for the dt
    select any dt related by domain->S_DT[R14] where (selected.DT_ID == param.id);
    if(not_empty dt)
      if(self.isAllowedType(typeName:dt.Name))
        return true;
      end if;
    end if;
  end if;
  return false;
end if;',
	1,
	'',
	1168);
INSERT INTO O_TPARM
	VALUES (1169,
	1150,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1170,
	50,
	'checkIntegrity',
	'',
	19,
	1,
	'// check for any operation parameters that have a matching name
// under the parent operation
select one package related by self->O_TFR[R117]
                                     ->O_OBJ[R115]->PE_PE[R8001]->EP_PKG[R8000];
select one system related by package->S_SYS[R1405];
select one operation related by self->O_TFR[R117];
sys_id = GD::NULL_UNIQUE_ID();
if(not_empty system)
 sys_id = system.Sys_ID;
end if;
select many parameters related by operation->O_TPARM[R117];
for each parameter in parameters
  if(parameter != self and parameter.Name == self.Name)
    select one class related by operation->O_OBJ[R115];
	MI_IM::createIssue(sys_id:sys_id, description:
	               "Found another parameter under the same operation " +
	     "with a matching name.", severity:Severity::Error, name:self.Name,
	   path:class.getPath(path:"", includeSelf:true) + "::" + operation.Name +
	      "::" + self.Name, id:self.TParm_ID, element:self.convertToInstance());
  end if;
end for;',
	1,
	'',
	1153);
INSERT INTO O_NBATTR
	VALUES (219,
	50);
INSERT INTO O_BATTR
	VALUES (219,
	50);
INSERT INTO O_ATTR
	VALUES (219,
	50,
	0,
	'TParm_ID',
	'Full Name: Operation Parameter Identifier
Description: Uniquely identifies an operation parameter',
	'',
	'TParm_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_REF
	VALUES (50,
	43,
	0,
	201,
	989,
	991,
	990,
	1171,
	1172,
	0,
	0,
	'',
	'Operation',
	'Tfr_ID',
	'R117.''is part of ''');
INSERT INTO O_RATTR
	VALUES (1171,
	50,
	201,
	43,
	1,
	'Tfr_ID');
INSERT INTO O_ATTR
	VALUES (1171,
	50,
	219,
	'Tfr_ID',
	'',
	'',
	'Tfr_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1173,
	50);
INSERT INTO O_BATTR
	VALUES (1173,
	50);
INSERT INTO O_ATTR
	VALUES (1173,
	50,
	1171,
	'Name',
	'Full Name: Operation Parameter Name
Description: This is the name of the parameter.',
	'',
	'Name',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1174,
	50);
INSERT INTO O_BATTR
	VALUES (1174,
	50);
INSERT INTO O_ATTR
	VALUES (1174,
	50,
	1175,
	'By_Ref',
	'Full Name: By Reference Indicator
Description: Indicates whether or not this parameter is passed by reference
Data Domain: 0 = passed by value, 1 = passed by reference
enum0: By Value
enum1: By Reference',
	'',
	'By_Ref',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1176,
	50);
INSERT INTO O_BATTR
	VALUES (1176,
	50);
INSERT INTO O_ATTR
	VALUES (1176,
	50,
	1174,
	'Dimensions',
	'Full Name: Array Dimensions',
	'',
	'Dimensions',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (50,
	50,
	0,
	219,
	1096,
	1098,
	1097,
	1177,
	1178,
	0,
	0,
	'',
	'Operation Parameter',
	'TParm_ID',
	'R124.''succeeds''');
INSERT INTO O_RATTR
	VALUES (1177,
	50,
	219,
	50,
	1,
	'TParm_ID');
INSERT INTO O_ATTR
	VALUES (1177,
	50,
	1176,
	'Previous_TParm_ID',
	'',
	'Previous_',
	'TParm_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1179,
	50);
INSERT INTO O_BATTR
	VALUES (1179,
	50);
INSERT INTO O_ATTR
	VALUES (1179,
	50,
	1177,
	'Descrip',
	'Full Name: Description
Description:  A textual description of the operation parameter.',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (50,
	32,
	0,
	156,
	992,
	994,
	993,
	1175,
	1180,
	0,
	0,
	'',
	'Data Type',
	'DT_ID',
	'R118.''is defined by''');
INSERT INTO O_RATTR
	VALUES (1175,
	50,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (1175,
	50,
	1173,
	'DT_ID',
	'',
	'',
	'Element_ID',
	2,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	50);
INSERT INTO O_OIDA
	VALUES (219,
	50,
	0,
	'TParm_ID');
INSERT INTO O_ID
	VALUES (1,
	50);
INSERT INTO O_ID
	VALUES (2,
	50);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (43,
	'Operation',
	112,
	'O_TFR',
	'A Operation is a method associated with a class.  Operations can be synchronously called from Action Specifications.  Two types of operations exist.  Class-based operations affect the class as a whole.  Instance-based operations affect only an instance.',
	979);
INSERT INTO O_TFR
	VALUES (1181,
	43,
	'dispose',
	'Dispose this Operation.
',
	19,
	1,
	'// Subsytem Subsystem
select one myClass related by self->O_OBJ[R115];
unrelate self from myClass across R115;
//
select one successor related by self->O_TFR[R125.''precedes''];
select one predecessor related by self->O_TFR[R125.''succeeds''];
if (not empty successor)
  unrelate self from successor across R125.''precedes'';
end if;
if (not empty predecessor)
  unrelate self from predecessor across R125.''succeeds'';
end if;
if (not_empty successor and not_empty predecessor)
  relate successor to predecessor across R125.''succeeds'';
end if;
//
select one dt related by self->S_DT[R116];
unrelate self from dt across R116;
select many oparms related by self->O_TPARM[R117];
for each oparm in oparms
  oparm.dispose();
end for;
//
// Body Subsystem
select one body related by self->ACT_OPB[R696]->ACT_ACT[R698];
if (not_empty body)
  body.dispose();
end if;
//
// Invocation Subsystem
select many invs related by self->ACT_TFM[R673];
for each inv in invs
  unrelate self from inv across R673;
end for;
//
// Value Subsystem
select many oprVals related by self->V_TRV[R829];
for each oprVal in oprVals
  unrelate self from oprVal across R829;
end for;
// for each message that this operation
// is associated with
select many oms related by self->MSG_O[R1011];
for each om in oms
  select one message related by om->MSG_SM[R1020];
  message.unformalize();
end for;
select many dims related by self->S_DIM[R122];
for each dim in dims
  unrelate self from dim across R122;
  delete object instance dim;
end for;
//
// Finally, delete self
delete object instance self;',
	1,
	'',
	1182);
INSERT INTO O_TFR
	VALUES (1183,
	43,
	'initialize',
	'Initialize this Operation.  Set Name and return type to default values.
',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one clazz related by self->O_OBJ[R115];
clazz.addOperationToOrdering(id:self.Tfr_ID);
select any dom from instances of S_DOM;
select any def_dt related by dom->S_DT[R14] where selected.Name == "void";
if not_empty dom
  if(empty def_dt)
    // if the void dt was not found check the system level
    // dts, but only if the domain found is the formal content
    // of a component
    if(dom.participatesInSystem())
      select one system related by dom->CN_DC[R4204]->C_C[R4204]->CP_CP[R4608]
                                                                 ->S_SYS[R4606];
      dt_id = GD::NULL_UNIQUE_ID();
      if not_empty system
        dt_id = system.getCoreTypeId(name:"void");
      end if;
      select any pe from instances of PE_PE where selected.Element_ID == dt_id;
      select one def_dt related by pe->S_DT[R8001];
    else
      // this is an error, if the domain is not
      // participating at the system level and
      // we cannot find the type at the domain
      // level we have a problem
      USER::logError(msg:"Unable to locate expected data type: void",path:"");
    end if;
  end if;
else
  // Owning Class is in a package . . . 
  select one system related by self->O_OBJ[R115]->PE_PE[R8001]->
                                                    EP_PKG[R8000]->S_SYS[R1405];
  if not_empty system
    dt_id = system.getCoreTypeId(name:"void");
    select any pe from instances of PE_PE where selected.Element_ID == dt_id;
    select one def_dt related by pe->S_DT[R8001];
  else
    // this is an error, if the system is not
    // found we cannot find the core type
    USER::logError(msg:"Unable to locate system root for data type: void",path:"");
  end if;
end if;
relate self to def_dt across R116;
name = ::getUniqueInitialName( 
    instance: self.convertToInstance(), 
    candidateName: "Unnamed Operation");
success = ::getNewElementName(name:name,instance: self.convertToInstance(),validateName:true);    
if ( success!="") 
 self.Name=success;
else 
 self.dispose();   
end if;   
self.Instance_Based = Scope::Instance;
self.Suc_Pars = ParseStatus::parseInitial;
',
	1,
	'',
	1184);
INSERT INTO O_TFR
	VALUES (1185,
	43,
	'newParameter',
	'Create a new parameter for this operation.',
	19,
	1,
	'create object instance parm of O_TPARM;
relate self to parm across R117;
parm.initialize();
self.createParameterInInteractions(id:parm.TParm_ID);',
	1,
	'',
	1186);
INSERT INTO O_TFR
	VALUES (1187,
	43,
	'isAllowedReturnType',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one packageableElem related by self->O_OBJ[R115]->PE_PE[R8001];
select one package related by packageableElem->EP_PKG[R8000];
select one component related by packageableElem->C_C[R8003];
isInGenericPackage = not_empty package or not_empty component;
if isInGenericPackage
  if self.getReturnDimensionsCnt() != 0 and param.typeName == "void"
    return false;
  else
    // TODO Need to implement datatype namespacing here or in the Util call
    return packageableElem.isAllowedType(isReturnType:true,
                                                       typeName:param.typeName);
  end if;
else
  if self.getReturnDimensionsCnt() != 0 and param.typeName == "void"
    return false;
  else
    // if this element is at the system level check the
    // system level data types, otherwise check the 
    // domain
    select one domain related by self->O_OBJ[R115]->S_SS[R2]->S_DOM[R1];
    if(not_empty domain)
      select one system related by domain->S_SYS[R28];
      if(not_empty system)
        return S_DT::isAllowedReturnType( typeName: param.typeName,
                                   		dom_id: domain.get_ooa_id() );
      else
        // first check the domain level
        result = S_DT::isAllowedReturnType( typeName: param.typeName,
                                   			dom_id: domain.get_ooa_id() );
        if(not result)
          // if nothing valid check the system level
          select one system related by domain->CN_DC[R4204]->C_C[R4204]
      											   ->CP_CP[R4608]->S_SYS[R4606];
          return Util::isAllowedReturnType(system:system.convertToInstance(),
                                                       typeName:param.typeName);
        else
          return result;
        end if;
      end if;
    else
      // Owning class is in a package . . .
      // TODO Need to implement datatype namespacing here or in the Util call
      select one system related by self->O_OBJ[R115]->PE_PE[R8001]->
                                                    EP_PKG[R8000]->S_SYS[R1405];
      if not_empty system
        return Util::isAllowedReturnType(system:system.convertToInstance(),
                                                       typeName:param.typeName);
      else
        // this is an error, if the system is not
        // found we cannot sheck the core types
        USER::logError(msg:"Unable to locate system root for data type check.",path:"");
        return false;
      end if;
    end if;
  end if;
end if;',
	1,
	'',
	1188);
INSERT INTO O_TPARM
	VALUES (1189,
	1187,
	'typeName',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1182,
	43,
	'convertToInstance',
	'A utility operation to cast an instance of this type to the
instance datatype.

Translate: native',
	317,
	1,
	'// just return this instance as an Object
return this;',
	0,
	'',
	1190);
INSERT INTO O_TFR
	VALUES (1184,
	43,
	'get_ooa_id',
	'',
	296,
	1,
	'return self.Tfr_ID;',
	1,
	'',
	1191);
INSERT INTO O_TFR
	VALUES (1192,
	43,
	'resolveDatatype',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one dtProxy related by self->S_DT[R116];
if(not_empty dtProxy and not Util::isProxy(element:self.convertToInstance()))
  name = dtProxy.Name;
  unrelate dtProxy from self across R116;
  
  select one packageableElem related by self->O_OBJ[R115]->PE_PE[R8001];
  select one package related by packageableElem->EP_PKG[R8000];
  select one component related by packageableElem->C_C[R8003];
  isInGenericPkg = not_empty package or not_empty component;
  if (isInGenericPkg)
    id = packageableElem.resolveDataTypeRelativeToSelf(default_name:"void",
                                                            expected_name:name);                                                          
    select any resolvedDT related by package->PE_VIS[R8002]->
                         PE_PE[R8002]->S_DT[R8001] where selected.DT_ID == id;
    if (empty resolvedDT)
      select any resolvedDt related by component->PE_CVS[R8004]->
                       PE_PE[R8004]->S_DT[R8001] where selected.DT_ID == id;
    end if;	
    if(not_empty resolvedDT)
      relate resolvedDT to self across R116;
    end if;
  else
    select one domain related by self->O_OBJ[R115]->S_SS[R2]->S_DOM[R1];
    id = domain.resolveDataTypeRelativeToSelf(default_name:"void",
  													        expected_name:name);
    // until we have instance reference passing, we search for
    // the data type related to the domain first then to the
    // system
    select any resolvedDT related by domain->S_DT[R14]
  												   where (selected.DT_ID == id);
    if(empty resolvedDT)
      select one system related by domain->CN_DC[R4204]->C_C[R4204]
    				                               ->CP_CP[R4608]->S_SYS[R4606];
      select any resolvedDT related by system->SLD_SDINP[R4402]->S_DT[R4401]
    				 						       where (selected.DT_ID == id);
      if empty resolvedDT and not_empty system and system.useGlobals
        select any resolvedDT related by system->G_EIS[R9100]->PE_PE[R9100]->
                                       S_DT[R8001] where (selected.DT_ID == id);
    end if;
    end if;
    if(not_empty resolvedDT)
      relate resolvedDT to self across R116;
    end if;
  end if;     
end if;',
	1,
	'',
	1193);
INSERT INTO O_TFR
	VALUES (1194,
	43,
	'isVoid',
	'',
	316,
	1,
	'select one dt related by self->S_DT[R116];
return dt.Name == "void";',
	1,
	'',
	1195);
INSERT INTO O_TFR
	VALUES (1191,
	43,
	'getReturnDimensionsCnt',
	'',
	298,
	1,
	'select many dims related by self->S_DIM[R122];
dimensions = cardinality dims;
return dimensions;',
	1,
	'',
	1181);
INSERT INTO O_TFR
	VALUES (1193,
	43,
	'resizeReturn_Dimensions',
	'',
	19,
	1,
	'// If the number of dimensions has increased then add dimensions
while (param.numDimensions > self.getReturnDimensionsCnt())
  create object instance dim of S_DIM;
  dim.dimensionCount = self.getReturnDimensionsCnt();
  relate dim to self across R122;
end while;

// If the number of dimensions has decreased then remove dimensions
while (param.numDimensions < self.getReturnDimensionsCnt())
  select any dim related by self->S_DIM[R122] where (selected.dimensionCount == (self.getReturnDimensionsCnt()-1));
  unrelate dim from self across R122;
  delete object instance dim;
end while;

// Update the specific dimension that was passed-in if its elementCount has 
// changed.
if (param.numDimensions > 0) 
  select any dim related by self->S_DIM[R122] where (selected.dimensionCount == param.dimension);
  if (dim.elementCount != param.elementCount)
    dim.elementCount = param.elementCount;
  end if;
end if;
',
	1,
	'',
	1185);
INSERT INTO O_TPARM
	VALUES (1196,
	1193,
	'elementCount',
	298,
	0,
	'',
	1197,
	'');
INSERT INTO O_TPARM
	VALUES (1198,
	1193,
	'numDimensions',
	298,
	0,
	'',
	1196,
	'');
INSERT INTO O_TPARM
	VALUES (1197,
	1193,
	'dimension',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1186,
	43,
	'moveUp',
	'',
	19,
	1,
	'::changeNotificationEnablement(enabled:false);
select one prev_attr related by self->O_TFR[R125.''succeeds''];
select one prev_prev_attr related by prev_attr->O_TFR[R125.''succeeds''];
select one next_attr related by self->O_TFR[R125.''precedes''];

if ( not_empty prev_prev_attr )
  unrelate prev_attr from prev_prev_attr across R125.''succeeds'';
end if;
if ( not_empty next_attr )
  unrelate next_attr from self across R125.''succeeds'';
end if;
unrelate self from prev_attr across R125.''succeeds'';

if ( not_empty prev_prev_attr )
  relate self to prev_prev_attr across R125.''succeeds'';
end if;
// want to enable listeners at the last possible moment
if ( empty next_attr )
  ::changeNotificationEnablement(enabled:true);
end if;
relate prev_attr to self across R125.''succeeds'';
if ( not_empty next_attr )
  ::changeNotificationEnablement(enabled:true);
  relate next_attr to prev_attr across R125.''succeeds'';
end if;
',
	1,
	'',
	1199);
INSERT INTO O_TFR
	VALUES (1199,
	43,
	'moveDown',
	'',
	19,
	1,
	'::changeNotificationEnablement(enabled:false);
select one next_attr related by self->O_TFR[R125.''precedes''];
select one prev_attr related by self->O_TFR[R125.''succeeds''];
select one next_next_attr related by next_attr->O_TFR[R125.''precedes''];

if ( not_empty next_next_attr )
  unrelate next_next_attr from next_attr across R125.''succeeds'';
end if;
if ( not_empty prev_attr )
  unrelate self from prev_attr across R125.''succeeds'';
end if;
unrelate next_attr from self across R125.''succeeds'';

if ( not_empty prev_attr )
  relate next_attr to prev_attr across R125.''succeeds'';
end if;
   
// want to enable listeners at the last possible moment
if ( empty next_next_attr )
  ::changeNotificationEnablement(enabled:true);
end if;
relate self to next_attr across R125.''succeeds'';
if ( not_empty next_next_attr )
  ::changeNotificationEnablement(enabled:true);
  relate next_next_attr to self across R125.''succeeds'';
end if;
',
	1,
	'',
	1194);
INSERT INTO O_TFR
	VALUES (1200,
	43,
	'actionFilter',
	'',
	316,
	1,
	'if (param.name == "can" )
  if ( param.value == "move up" )
    select one prev_attr related by self->O_TFR[R125.''succeeds''];
    return not_empty prev_attr;
  elif ( param.value == "move down" )
    select one next_attr related by self->O_TFR[R125.''precedes''];
    return not_empty next_attr;
  end if;
end if;
return false;
',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (1201,
	1200,
	'name',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1202,
	1200,
	'value',
	322,
	0,
	'',
	1201,
	'');
INSERT INTO O_TFR
	VALUES (1188,
	43,
	'initializeOrder',
	'',
	19,
	1,
	'// Alpha-sort the O_TPARM elements if they have not yet been ordered
select many peers related by self->O_TPARM[R117];
if (cardinality peers > 1)
    initialOrderingCheckPerformed = false;
	select any head related by self->O_TPARM[R117] where (selected.Tfr_ID == GD::NULL_UNIQUE_ID());
	endOfList = head;
	loopCnt = 0;
	for each peer in peers
	  if ( not initialOrderingCheckPerformed)
	    select one predecessor related by peer->O_TPARM[R124.''precedes''];
	    select one successor related by peer->O_TPARM[R124.''succeeds''];
	    initialOrderingCheckPerformed = true;
	    if (not_empty  predecessor or not_empty  successor)
	      // Already ordered
	      break;
	    end if;
	    head = peer;
	    endOfList = peer;
	  end if;
	  
      if (loopCnt == 1)
        if (peer.Name < head.Name)
          relate peer to head across R124.''precedes'';
          endOfList = peer;
        else
          relate head to peer across R124.''precedes'';
          head = peer;
        end if;
      elif (loopCnt > 1)
        insertPoint = head;
        select one next related by head->O_TPARM[R124.''succeeds''];
        while (not_empty next)
          if (next.Name < peer.Name)
            break;
          else
            insertPoint = next;          
            select one next related by next->O_TPARM[R124.''succeeds''];
          end if;
        end while;
        
        if (empty next)
          // New end of list
          relate peer to endOfList across R124.''precedes'';   
          endOfList = peer;       
        else
          if ((insertPoint == head) and (peer.Name > head.Name))
            // New head
            relate head to peer across R124.''precedes'';
            head = peer;
          else
            unrelate next from insertPoint across R124.''precedes'';
            relate peer to insertPoint across R124.''precedes'';
            relate next to peer across R124.''precedes'';
          end if;          
        end if;
      end if;
      
      loopCnt = loopCnt + 1;
	end for;
end if;',
	1,
	'',
	1183);
INSERT INTO O_TFR
	VALUES (1190,
	43,
	'canReferToDataType',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// select the dt
select one dt related by self->S_DT[R116];
if(not_empty dt)
  select one packageableElem related by self->O_OBJ[R115]->PE_PE[R8001];
  select one package related by packageableElem->EP_PKG[R8000];
  select one component related by packageableElem->C_C[R8003];
  isInGenericPackage = not_empty package or not_empty component;

  if (isInGenericPackage)
    return packageableElem.canReferToDataType(dtID:dt.DT_ID, dtName: dt.Name);
  else
    // if the data type package is at the system
    // level we can use the data type as long as
    // this element belongs to a formal component
    select one domain related by self->O_OBJ[R115]->S_SS[R2]->S_DOM[R1];
    select one dtPkg related by dt->S_DIP[R39]->S_DPK[R39];
    if(not dtPkg.isDomainLevel())
      if(domain.participatesInSystem())
        return true;
      else
        return false;
      end if;
    else
      // otherwise the DT must be in the same domain
      select one dtDomain related by dt->S_DOM[R14];
      if(dtDomain == domain)
        return true;
      end if;
    end if;
  end if;
end if;
return false;
',
	1,
	'',
	1200);
INSERT INTO O_TFR
	VALUES (1195,
	43,
	'isReferringToDefaultDataType',
	'',
	316,
	1,
	'select one dt related by self->S_DT[R116];
elementType = Util::getSimpleClassName(element:self.convertToInstance());
if(dt.Name == S_DT::getDefaultDataTypeName(elementType:elementType))
  return true;
end if;
return false;
',
	1,
	'',
	1187);
INSERT INTO O_TFR
	VALUES (1203,
	43,
	'getContainingComponentId',
	'',
	296,
	1,
	'select one clazz related by self->O_OBJ[R115];
return clazz.getContainingComponentId();
',
	1,
	'',
	1192);
INSERT INTO O_TFR
	VALUES (1204,
	43,
	'canUseDataType',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// Operation::canUseDataType()
select one packageableElem related by self->O_OBJ[R115]->PE_PE[R8001];
select one package related by packageableElem->EP_PKG[R8000];
select one component related by packageableElem->C_C[R8003];
isInGenericPackage = not_empty package or not_empty component;
if isInGenericPackage
  // Find the previously created visibility list
  select any resultSet related by package->PE_SRS[R8005] where
        selected.Name == "" and selected.Type == ElementTypeConstants::DATATYPE;
  select any dt related by resultSet->PE_VIS[R8006]->
                     PE_PE[R8002]->S_DT[R8001] where selected.DT_ID == param.id;
  if not_empty component
    // Find the previously created visibility list
    select any compResultSet related by component->PE_CRS[R8007] where
        selected.Name == "" and selected.Type == ElementTypeConstants::DATATYPE;
    select any dt related by compResultSet->PE_CVS[R8008]->
                     PE_PE[R8004]->S_DT[R8001] where selected.DT_ID == param.id;
  end if;
  if(not_empty dt)
    if(self.isAllowedReturnType(typeName:dt.Name))
      return true;
    end if;
  end if;
  return false;
else
  select one domain related by self->O_OBJ[R115]->S_SS[R2]->S_DOM[R1];
  if not_empty domain
    if(domain.participatesInSystem())
      // system level check both the system
      // and the domain for the dt
      select one system related by domain->CN_DC[R4204]->C_C[R4204]->
                                                     CP_CP[R4608]->S_SYS[R4606];
      select any dt related by system->SLD_SDINP[R4402]->S_DT[R4401]
                                             where (selected.DT_ID == param.id);
      if empty dt and not_empty system and system.useGlobals
        select any dt related by system->G_EIS[R9100]->PE_PE[R9100]->S_DT[R8001]
                                             where (selected.DT_ID == param.id);
      end if;
      if(empty dt)
        select any dt related by domain->S_DT[R14]
                                             where (selected.DT_ID == param.id);
      end if;
      if(not_empty dt)
        if(self.isAllowedReturnType(typeName:dt.Name))
          return true;
        end if;
      end if;
    else
      // only check the domain for the dt
      select any dt related by domain->S_DT[R14] where
                                                   (selected.DT_ID == param.id);
      if(not_empty dt)
        if(self.isAllowedReturnType(typeName:dt.Name))
          return true;
        end if;
      end if;
    end if;
  else
    select one system related by self->O_OBJ[R115]->PE_PE[R8001]->
                                                    EP_PKG[R8000]->S_SYS[R1405];
      select any dt related by system->SLD_SDINP[R4402]->S_DT[R4401]
                                             where (selected.DT_ID == param.id);
      if empty dt and not_empty system and system.useGlobals
        select any dt related by system->G_EIS[R9100]->PE_PE[R9100]->S_DT[R8001]
                                             where (selected.DT_ID == param.id);
      end if;
      if not_empty dt
        if self.isAllowedReturnType(typeName:dt.Name)
          return true;
        end if;
      end if; 
  end if;
  return false;
end if;',
	1,
	'',
	1203);
INSERT INTO O_TPARM
	VALUES (1205,
	1204,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1206,
	43,
	'getContainerId',
	'',
	296,
	1,
	'// Operation.getContainerId
select one clazz related by self->O_OBJ[R115];
return clazz.getContainerId();',
	1,
	'',
	1204);
INSERT INTO O_TFR
	VALUES (1207,
	43,
	'pasteOperationParameter',
	'',
	19,
	1,
	'select any opParm from instances of O_TPARM
                                          where (selected.TParm_ID == param.id);
if(not_empty opParm)
  select one existingOperation related by opParm->O_TFR[R117];
  if(not_empty existingOperation)
    unrelate existingOperation from opParm across R117;
  end if;
  relate opParm to self across R117;
  self.addParameterToOrdering(id:opParm.TParm_ID);
  opParm.Name = ::getUniqueInitialNameInParent(instance:opParm.convertToInstance(),
  						name:opParm.Name, parent:self.convertToInstance());
  self.createParameterInInteractions(id:opParm.TParm_ID);
end if;',
	1,
	'',
	1206);
INSERT INTO O_TPARM
	VALUES (1208,
	1207,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1209,
	43,
	'createParameterInInteractions',
	'',
	19,
	1,
	'// for each message associated with this bridge
// create a message argument
select any parm from instances of O_TPARM where (selected.TParm_ID == param.id);
select many messages related by self->MSG_O[R1011]->MSG_SM[R1020]->MSG_M[R1018];
for each message in messages
  create object instance arg of MSG_A;
  create object instance oa of MSG_OA;
  relate oa to parm across R1015;
  relate oa to arg across R1013;
  relate message to arg across R1001;
end for;
',
	1,
	'',
	1207);
INSERT INTO O_TPARM
	VALUES (1210,
	1209,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1211,
	43,
	'addParameterToOrdering',
	'',
	19,
	1,
	'select any parameter from instances of O_TPARM
                                          where (selected.TParm_ID == param.id);
if(not_empty parameter)
  ::changeNotificationEnablement(enabled:false);
  select many peers related by self->O_TPARM[R117];
  for each peer in peers
    if (peer != parameter)
      select one predecessor related by peer->O_TPARM[R124.''precedes''];
      if (empty predecessor)
        relate parameter to peer across R124.''succeeds'';
      end if;
    end if;
  end for;
  ::changeNotificationEnablement(enabled:true);
end if;',
	1,
	'',
	1209);
INSERT INTO O_TPARM
	VALUES (1212,
	1211,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1213,
	43,
	'checkIntegrity',
	'',
	19,
	1,
	'// check for any operations that have a matching signature
select one package related by self->O_OBJ[R115]->PE_PE[R8001]->EP_PKG[R8000];
select many operations related by self->O_OBJ[R115]->O_TFR[R115];
for each operation in operations
  if(operation != self and operation.getSignature() == self.getSignature())
    select one system related by package->S_SYS[R1405];
    sys_id = GD::NULL_UNIQUE_ID();
    if(not_empty system)
      sys_id = system.Sys_ID;
    end if;
    select one class related by self->O_OBJ[R115];
	MI_IM::createIssue(sys_id:sys_id, description:
	               "Found another operation under the same class " +
	     "with a matching signature." + GD::newline() + GD::newline()
	            + "Signature: " + self.getSignature(), severity:Severity::Error,
	                                                             name:self.Name,
	   path:class.getPath(path:self.Name, includeSelf:true), id:self.Tfr_ID,
	                                          element:self.convertToInstance());
  end if;
end for;',
	1,
	'',
	1211);
INSERT INTO O_TFR
	VALUES (1214,
	43,
	'getSignature',
	'',
	322,
	1,
	'/**
 *  Return a string representation of this functions signature
 */
signature = self.Name;
count = 0;
select many parameters related by self->O_TPARM[R117];
paramLength = cardinality parameters;
if(paramLength > 0)
  signature = signature + "(";
end if;
for each parameter in parameters
  select one type related by parameter->S_DT[R118];
  if(count > 0 and count != paramLength - 1)
    signature = signature + ", ";
  end if;
  signature = signature + type.Name;
  count = count + 1;
end for;
if(paramLength > 0)
  signature = signature + ")";
end if;
return signature;',
	1,
	'',
	1213);
INSERT INTO O_NBATTR
	VALUES (201,
	43);
INSERT INTO O_BATTR
	VALUES (201,
	43);
INSERT INTO O_ATTR
	VALUES (201,
	43,
	0,
	'Tfr_ID',
	'Full Name: Operation Identifier',
	'',
	'Tfr_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1215,
	43);
INSERT INTO O_BATTR
	VALUES (1215,
	43);
INSERT INTO O_ATTR
	VALUES (1215,
	43,
	1216,
	'Name',
	'Full Name: Operation Name
Description: The name of this operation.',
	'',
	'Name',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1217,
	43);
INSERT INTO O_BATTR
	VALUES (1217,
	43);
INSERT INTO O_ATTR
	VALUES (1217,
	43,
	1215,
	'Descrip',
	'Full Name: Operation Description
Description: A textual description of this operation.',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1218,
	43);
INSERT INTO O_BATTR
	VALUES (1218,
	43);
INSERT INTO O_ATTR
	VALUES (1218,
	43,
	1219,
	'Instance_Based',
	'Full Name: Instance Based Indicator
Description: Indicates whether the operation is instance-based or class-based.
Data Domain: 0 = class-based, 1 = instance-based
',
	'',
	'Instance_Based',
	0,
	1220,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1221,
	43,
	'self.Action_Semantics = ::convertRelocatableTags(in:self.Action_Semantics_internal);
',
	1);
INSERT INTO O_BATTR
	VALUES (1221,
	43);
INSERT INTO O_ATTR
	VALUES (1221,
	43,
	1218,
	'Action_Semantics',
	'Full Name: Action Semantics Field
Description: Defines the action semantics for the operation
Persistent:false
',
	'',
	'Action_Semantics',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1222,
	43);
INSERT INTO O_BATTR
	VALUES (1222,
	43);
INSERT INTO O_ATTR
	VALUES (1222,
	43,
	1223,
	'Suc_Pars',
	'Full Name: Successful Parse Indicator
Description: Indicates the status of the parse for the operation action described in the attribute Action_Semantics
Data Domain: 0=not parsed, 1 = parse successful, 2 = parse unsuccessful, 3 = parse on apply set but never been parsed
',
	'',
	'Suc_Pars',
	0,
	1224,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1223,
	43);
INSERT INTO O_BATTR
	VALUES (1223,
	43);
INSERT INTO O_ATTR
	VALUES (1223,
	43,
	1221,
	'Action_Semantics_internal',
	'User_Visible:false',
	'',
	'Action_Semantics_internal',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1225,
	43);
INSERT INTO O_BATTR
	VALUES (1225,
	43);
INSERT INTO O_ATTR
	VALUES (1225,
	43,
	1222,
	'Return_Dimensions',
	'Full Name: Return Array Dimensions
DynamicReadOnly:isVoid',
	'',
	'Return_Dimensions',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (43,
	43,
	0,
	201,
	1099,
	1101,
	1100,
	1226,
	1227,
	0,
	0,
	'',
	'Operation',
	'Tfr_ID',
	'R125');
INSERT INTO O_RATTR
	VALUES (1226,
	43,
	201,
	43,
	1,
	'Tfr_ID');
INSERT INTO O_ATTR
	VALUES (1226,
	43,
	1225,
	'Previous_Tfr_ID',
	'',
	'Previous_',
	'Tfr_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (43,
	32,
	0,
	156,
	995,
	997,
	996,
	1219,
	1228,
	0,
	0,
	'',
	'Data Type',
	'DT_ID',
	'R116');
INSERT INTO O_RATTR
	VALUES (1219,
	43,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (1219,
	43,
	1217,
	'DT_ID',
	'',
	'',
	'Element_ID',
	2,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (43,
	30,
	0,
	150,
	998,
	999,
	1000,
	1216,
	1229,
	0,
	0,
	'',
	'Model Class',
	'Obj_ID',
	'R115');
INSERT INTO O_RATTR
	VALUES (1216,
	43,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (1216,
	43,
	201,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	43);
INSERT INTO O_OIDA
	VALUES (201,
	43,
	0,
	'Tfr_ID');
INSERT INTO O_ID
	VALUES (1,
	43);
INSERT INTO O_ID
	VALUES (2,
	43);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1025,
	'New Base Attribute',
	108,
	'O_NBATTR',
	'A New Base Attribute is a non-derived base attribute.',
	979);
INSERT INTO O_TFR
	VALUES (1230,
	1025,
	'dispose',
	'Dispose this New Base Attribute.
',
	19,
	1,
	'select one battr related by self->O_BATTR[R107];
unrelate self from battr across R107;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (1231,
	1025,
	'get_name',
	'',
	322,
	1,
	'return "as New Base Attribute";',
	1,
	'',
	1230);
INSERT INTO O_REF
	VALUES (1025,
	1012,
	0,
	1018,
	1021,
	1026,
	1022,
	1232,
	1233,
	0,
	0,
	'',
	'Base Attribute',
	'Attr_ID',
	'R107');
INSERT INTO O_RATTR
	VALUES (1232,
	1025,
	168,
	37,
	1,
	'Attr_ID');
INSERT INTO O_ATTR
	VALUES (1232,
	1025,
	0,
	'Attr_ID',
	'',
	'',
	'Attr_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1025,
	1012,
	0,
	1019,
	1021,
	1026,
	1022,
	1234,
	1235,
	0,
	0,
	'',
	'Base Attribute',
	'Obj_ID',
	'R107');
INSERT INTO O_RATTR
	VALUES (1234,
	1025,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (1234,
	1025,
	1232,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1025);
INSERT INTO O_OIDA
	VALUES (1232,
	1025,
	0,
	'Attr_ID');
INSERT INTO O_OIDA
	VALUES (1234,
	1025,
	0,
	'Obj_ID');
INSERT INTO O_ID
	VALUES (1,
	1025);
INSERT INTO O_ID
	VALUES (2,
	1025);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (30,
	'Model Class',
	101,
	'O_OBJ',
	'A model class represents an abstraction of a real world thing.  All instances of a class have the same characteristics and conform to the same set of rules.  The characteristics of a class are captured as attributes.  Each class within a domain are assigned a unique name, number, and keyletter.',
	979);
INSERT INTO O_TFR
	VALUES (1236,
	30,
	'get_compartments',
	'A Class has three compartments for the name, attributes and
operations.
-----------------------------------------------------------------------------------
Bridge:GD',
	298,
	1,
	'return 3;',
	1,
	'',
	1237);
INSERT INTO O_TFR
	VALUES (1238,
	30,
	'get_entries',
	'This operation returns the number of entries in each compartment.
-----------------------------------------------------------------------------------
Bridge:GD',
	298,
	1,
	'if (param.comp_num == 1)
 return 2;
end if;
if (param.comp_num == 2)
  select many attrs related by self->O_ATTR[R102];
  return cardinality attrs;
end if;
if (param.comp_num == 3)
  select many tfrs related by self->O_TFR[R115];
  return cardinality tfrs;
end if;
return 0;',
	1,
	'',
	1236);
INSERT INTO O_TPARM
	VALUES (1239,
	1238,
	'comp_num',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1240,
	30,
	'get_style',
	'A Class is shown as a box.
-----------------------------------------------------------------------------------
Bridge:GD',
	784,
	1,
	'return Style::Box;',
	1,
	'',
	1241);
INSERT INTO O_TFR
	VALUES (1237,
	30,
	'get_compartment_text',
	'This class returns text from a given compartment and location.
-----------------------------------------------------------------------------------
Bridge:GD',
	322,
	1,
	'result = "";
//
// Compartment 1
//
if (param.comp_num == 1)
  if (param.ent_num == 1)
    if (param.at == Justification::Center_in_X)
      result = self.Name;
      select one pe related by self->PE_PE[R8001];
      if not_empty pe
        result = pe.getVisibilityAdornment() + result;
      end if;
    end if;
  elif (param.ent_num == 2)
    if (param.at == Justification::Right)
      result = "{" + GD::int_to_string(value:self.Numb) + "," + self.Key_Lett + "}";
    end if;
  end if;
//
// Compartment 2
//
elif (param.comp_num == 2)
  select any attr related by self->O_ATTR[R102] where (selected.PAttr_ID == GD::NULL_UNIQUE_ID());
  if (param.at != Justification::Center)
    cursor = param.ent_num;
    while (not_empty attr AND cursor > 1)
      select one attr related by attr->O_ATTR[R103.''precedes''];
      cursor = cursor - 1;
    end while;
    if (empty attr) 
      return "";
    end if;
  end if;
  if (param.at == Justification::Left)
    select one dt related by attr->S_DT[R114];
    select one rattr related by attr->O_RATTR[R106];
    if (not_empty rattr)
      select one dt related by rattr->O_BATTR[R113]->O_ATTR[R106]->S_DT[R114];
    end if;
    result = attr.Name;
    result = result + attr.Dimensions;
    result = result + ":";
    if ( not_empty dt )
      result = result + dt.Name;
    else
      result = result + ::getOrphanedElementName();
    end if;
  elif (param.at == Justification::Right)
    tag_sep = "";
    // make sure the identifier tags are output in increasing order
    id_num_loop = 0;
    select many ids related by attr->O_ID[R105];    
    while ( id_num_loop < 3 )
      for each id in ids
        if ( id.Oid_ID == id_num_loop )
          result = result + tag_sep + "I";
          if (id.Oid_ID > 0)
            idnum = id.Oid_ID + 1;
            result = result + GD::int_to_string(value:idnum);
          end if;
          tag_sep = ",";
        end if;
      end for;
      id_num_loop = id_num_loop + 1;
    end while;
    select many refs related by attr->O_RATTR[R106]->O_REF[R108];
    if (not_empty refs)
      //
      // Find the first in the list of references
      //
      select any ref related by attr->O_RATTR[R106]->O_REF[R108] where (selected.PARef_ID == GD::NULL_UNIQUE_ID());
      //
      // Traverse reference list and add reference to text
      //
      while (not_empty ref)
        result =  result + tag_sep + ref.get_text(includeTextPhrase:false);
        tag_sep = ",";
        select one ref related by ref->O_REF[R112.''precedes''];
      end while;
    end if;
    //
    // Add Mathematically derived marker
    //
    select one derived_attr related by attr->O_BATTR[R106]->O_DBATTR[R107];
    if (not_empty derived_attr)
      result = result + tag_sep + "M";
      tag_sep = ",";
    end if;
    if (result != "")
      result = "{" + result + "}";
    end if;
  end if;
//
// Compartment 3
//
elif (param.comp_num == 3)
  if (param.at == Justification::Left)
    cursor = 1;
    select any op related by self->O_TFR[R115] where (selected.Previous_Tfr_ID == GD::NULL_UNIQUE_ID());
    line_separator = "";
    while (not_empty op)
      if (cursor == param.ent_num)
        result = result + line_separator;
        result = result + op.Name + "(";
        select any parm related by op->O_TPARM[R117]  where (selected.Previous_TParm_ID == GD::NULL_UNIQUE_ID());
        parm_separator = "";
        while (not_empty parm)
          result = result + parm_separator;
          result = result + parm.Name;
          result = result + parm.Dimensions;
          result = result + ":";
          select one dt related by parm->S_DT[R118];
          if ( not_empty dt )
            result = result + dt.Name;
          else
            result = result + ::getOrphanedElementName();
          end if;
          parm_separator = ", ";
          select one parm related by parm->O_TPARM[R124.''precedes''];
        end while;
        result = result + ")";
        result = result + op.Return_Dimensions;
        result = result + ":";
        select one dt related by op->S_DT[R116];
        if ( not_empty dt )
          result = result + dt.Name;
        else
          result = result + ::getOrphanedElementName();
        end if;
      end if;
      cursor = cursor + 1;
      select one op related by op->O_TFR[R125.''precedes''];
    end while;
  end if;
end if;
return result;
',
	1,
	'',
	1242);
INSERT INTO O_TPARM
	VALUES (1243,
	1237,
	'comp_num',
	298,
	0,
	'',
	1244,
	'');
INSERT INTO O_TPARM
	VALUES (1245,
	1237,
	'ent_num',
	298,
	0,
	'',
	1243,
	'');
INSERT INTO O_TPARM
	VALUES (1244,
	1237,
	'at',
	779,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1246,
	30,
	'get_text_style',
	'Most entries have no special formatting, but in the case of a class
based operation, the name should be underlined.
-----------------------------------------------------------------------------------
Bridge:GD',
	784,
	1,
	'//
// Compartment 3
//
if (param.comp_num == 3)
  if (param.at == Justification::Left)
    cursor = 1;
    select many ops related by self->O_TFR[R115];
    for each op in ops
      if (cursor == param.ent_num)
        if (op.Instance_Based == Scope::Instance)
          return Style::None;
        else
          return Style::Underlined;
        end if;
      end if;
      cursor = cursor + 1;
    end for;
  end if;
end if;
return Style::None;',
	1,
	'',
	1240);
INSERT INTO O_TPARM
	VALUES (1247,
	1246,
	'comp_num',
	298,
	0,
	'',
	1248,
	'');
INSERT INTO O_TPARM
	VALUES (1249,
	1246,
	'ent_num',
	298,
	0,
	'',
	1247,
	'');
INSERT INTO O_TPARM
	VALUES (1248,
	1246,
	'at',
	779,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1241,
	30,
	'get_ooa_id',
	'The ooa_id of a Class is it''s Obj_ID
-----------------------------------------------------------------------------------
Bridge:GD',
	296,
	1,
	'return self.Obj_ID;',
	1,
	'',
	1238);
INSERT INTO O_TFR
	VALUES (1250,
	30,
	'initialize',
	'Initialize a new Class instance.',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
name = ::getUniqueInitialName(
    instance: self.convertToInstance(),
    candidateName: "Unnamed Class");
success = ::getNewElementName(name:name,instance: self.convertToInstance(),validateName:true);    
if ( success!="") 
 self.Name=success;
else 
 self.dispose();
end if;    


select one packageableElem related by self->PE_PE[R8001];
select one package related by packageableElem->EP_PKG[R8000];
select one component related by packageableElem->C_C[R8003];
isInGenericPackage = not_empty package or not_empty component;

// Note that this is here just to get the variable classes into context.
select many classes related by package->PE_PE[R8000]->O_OBJ[R8001];

if (isInGenericPackage)
  if (not_empty package)
    // we''re in a package, get the classes in the package and set the class number
    select many classes related by package->PE_PE[R8000]->O_OBJ[R8001];
    if ( package.Num_Rng == 0 )
      self.Numb = 1;
    else
      self.Numb = package.Num_Rng;
    end if;
  else
    rootCompIdInPkg = component.getRootComponentId();
    select any rootComponent from instances of C_C where (selected.Id == rootCompIdInPkg);
    select one package related by rootComponent->PE_PE[R8001]->EP_PKG[R8000];
    
    if ( package.Num_Rng == 0 )
      self.Numb = 1;
    else
      self.Numb = package.Num_Rng;
    end if;
  end if;
else
  // this model-class''s default number is either one or
  // the starting value in the number range of its owning subsystem
  // if the range is not zero
  select one ss related by self->S_SS[R2];
  select many classes related by ss->O_OBJ[R2];
  if not_empty ss
    if ( ss.Num_Rng == 0 )
      self.Numb = 1;
    else
      self.Numb = ss.Num_Rng;
    end if;
    if (ss.Prefix != "")
      self.Key_Lett = ss.Prefix + "_";
    end if;
  end if;  
end if;

// for each model-class associated with this model-class''s
// owning subsystem or package
for each clazz in classes
  // if this class equals self, skip it
  if (clazz.Obj_ID == self.Obj_ID) continue; end if;

  // if this other class''s number is greater than this model-class''s number
  if (clazz.Numb >= self.Numb)
    // have this model-class''s number be just greater
    // than this other class''s number
    self.Numb = clazz.Numb + 1;
  end if;
end for;

self.Key_Lett = OS::remove_spaces(s:name);
self.addIdentifiers();

// create an instance state machine id and a class state machine
// id
self.Ism_ID = Util::getUniqueStateMachineId(classId:self.Obj_ID, type:"i");
self.Csm_ID = Util::getUniqueStateMachineId(classId:self.Obj_ID, type:"c");',
	1,
	'',
	1246);
INSERT INTO O_TFR
	VALUES (1251,
	30,
	'dispose',
	'The Model Class dispose function.',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// Association Subsystem
select many assocs related by self->R_REL[R201];
for each assoc in assocs
   if ( self.isEssentialToAssoc( id: assoc.Rel_ID ) )
     assoc.dispose();
   end if;
end for;
select many oirs related by self->R_OIR[R201];
for each oir in oirs
  oir.dispose();
end for;
//
// Subsystem Subsystem
select many iobjs related by self->O_IOBJ[R101];
for each iobj in iobjs
  iobj.dispose();
end for;
select many oids related by self->O_ID[R104];
for each oid in oids
  oid.dispose();
end for;
select many attrs related by self->O_ATTR[R102];
for each attr in attrs
  attr.dispose();
end for;
select many tfrs related by self->O_TFR[R115];
for each tfr in tfrs
  tfr.dispose();
end for;
//
// Domain Subsystem
select one ss related by self->S_SS[R2];
if (not_empty ss)
  unrelate self from ss across R2;
end if;
//   In the Domain SS, datatype disposals are initiated through S_DT.dispose().
//   So, for the inst_ref and inst_ref_set, call the supertype S_DT.dispose()
//   and it will clean up all the associations and the S_IRDT subtypes.
select many irdts related by self->S_IRDT[R123];
for each irdt in irdts
  unrelate self from irdt across R123;
  select one dt related by irdt->S_DT[R17];
  dt.dispose();
end for;
//
// State Machine Subsystem
select one ism related by self->SM_ISM[R518];
if (not_empty ism)
  select one sm related by ism->SM_SM[R517];
  sm.dispose();
  unrelate self from ism across R518;
end if;
select one asm related by self->SM_ASM[R519];
if (not_empty asm)
  select one sm related by asm->SM_SM[R517];
  sm.dispose();
  unrelate self from asm across R519;
end if;
//
// Communication and Access Subsystem
select many accpaths related by self->CA_SMOA[R417]->CA_ACC[R415];
for each accpath in accpaths
  accpath.dispose();
end for;
//
// Body Subsystem
select many forstmts related by self->ACT_FOR[R670];
for each forstmt in forstmts
  unrelate self from forstmt across R670;
end for;
//
// Instance Access Subsystem
select many crs related by self->ACT_CR[R671];
for each cr in crs
  unrelate self from cr across R671;
end for;
select many cnvs related by self->ACT_CNV[R672];
for each cnv in cnvs
  unrelate self from cnv across R672;
end for;
//
// Selection Subsystem
select many selws related by self->ACT_FIW[R676];
for each selw in selws
  unrelate self from selw across R676;
end for;
select many sfms related by self->ACT_FIO[R677];
for each sfm in sfms
  unrelate self from sfm across R677;
end for;
select many links related by self->ACT_LNK[R678];
for each link in links
  unrelate self from link across R678;
end for;
//
// Value Subsystem
select many vinsts related by self->V_INT[R818];
for each vinst in vinsts
  unrelate self from vinst across R818;
end for;
select many vinsets related by self->V_INS[R819];
for each vinset in vinsets
  unrelate self from vinset across R819;
end for;
//
// Instance Subsystem
//
// For each sequence participant this class is associated with
select many cps related by self->SQ_CP[R939];
for each cp in cps
  // unformalize the participant
  cp.unformalize();
end for;
select many cips related by self->SQ_CIP[R934];
for each cip in cips
  // unformalize the participant
  cip.unformalize();
end for;
select one pe related by self->PE_PE[R8001];
if (not_empty pe)
  unrelate self from pe across R8001;
  pe.dispose();
end if;
//
// Finally, delete self
delete object instance self;
',
	1,
	'',
	1252);
INSERT INTO O_TFR
	VALUES (1252,
	30,
	'create_sm',
	'Create a related ISM or ASM depending on the value of the sm_type parameter.
Check if a sm of that type already exists.  If so, return false.
If not, create the ism or asm and return true.',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
if (param.sm_type == "ISM")
  select one ism related by self->SM_ISM[R518];
  if (not_empty ism)
    return FALSE;
  else
    // in order to use the already created ism id
    // we must use a bridge function which allows
    // setting the SM_ID, the SM_ISM and SM_SM
    // instances must be created natively
    Util::createInstanceStateMachine(class:self.convertToInstance());
    select one ism related by self->SM_ISM[R518];
    select one sm related by ism->SM_SM[R517];
    create object instance moore of SM_MOORE;
    relate sm to moore across R510;
    // add current state attribute
    newAttr_id = self.newAttribute();
    //
    // Find the attribute we just created
    //
    select any attr related by self->O_ATTR[R102] where selected.Attr_ID == 
                                                                     newAttr_id;
    attr.Root_Nam = "current_state";
    select any dom from instances of S_DOM;
    select any dt related by dom->S_DT[R14] where
                                          selected.Name == "state<State_Model>";
    if(empty dt)
      // if the state model dt was not found check the system level
      // dts, traversing through a package or through the domain if it is the
      // formal content of a component.
      select one system related by self->PE_PE[R8001]->
                                                    EP_PKG[R8000]->S_SYS[R1405];
      if(not_empty dom and dom.participatesInSystem())
        select one system related by dom->CN_DC[R4204]->C_C[R4204]->CP_CP[R4608]
                                                                 ->S_SYS[R4606];
      end if;
      dt_id = GD::NULL_UNIQUE_ID();
      if not_empty system
        dt_id = system.getCoreTypeId(name:"state<State_Model>");
      end if;
      select any pe from instances of PE_PE where selected.Element_ID == dt_id;
      select one dt related by pe->S_DT[R8001];
    end if;
    if (not_empty dt)
      select one oldDT related by attr->S_DT[R114];
      unrelate attr from oldDT across R114;
      relate attr to dt across R114;
    else
      USER::logError(msg:
                     "Unable to locate expected data type: state<State_Model>",path:self.getPath(path:self.Name,includeSelf:true));
    end if;
  end if;
elif (param.sm_type == "ASM")
  select one asm related by self->SM_ASM[R519];
  if(not_empty asm)
    return FALSE;
  else
    Util::createClassStateMachine(class:self.convertToInstance());
    select one csm related by self->SM_ASM[R519];
    select one sm related by csm->SM_SM[R517];
    create object instance moore of SM_MOORE;
    relate sm to moore across R510;
  end if;
else
  return FALSE;
end if;
return TRUE;',
	1,
	'',
	1253);
INSERT INTO O_TPARM
	VALUES (1254,
	1252,
	'sm_type',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1255,
	30,
	'newAttribute',
	'',
	296,
	1,
	'//
// Find the last attribute currently in the list
//
create object instance newAttr of O_ATTR;
self.addAttributeToOrdering(id:newAttr.Attr_ID);
select many cips related by self->SQ_CIP[R934];
// For each sequence instance this class is associated with
for each cip in cips
  // add an attribute value to the instance for the new attribute
  create object instance attrValue of SQ_AV;
  create object instance fav of SQ_FAV;
  relate attrValue to cip across R937;
  relate attrValue to newAttr across R938;
  relate fav to attrValue across R948;
end for;
relate self to newAttr across R102;
newAttr.initialize();
return newAttr.Attr_ID;
',
	1,
	'',
	1256);
INSERT INTO O_TFR
	VALUES (1257,
	30,
	'newOperation',
	'Create a new operation for this class.
',
	19,
	1,
	'create object instance operation of O_TFR;
relate self to operation across R115;
operation.initialize();
',
	1,
	'',
	1258);
INSERT INTO O_TFR
	VALUES (1259,
	30,
	'isEssentialToAssoc',
	'Finding and clearing associative associations first is essential to cleanly disposing of a Model
Class. ',
	316,
	1,
	'retval = true;
select many oir_set related by self->R_OIR[R201] where ( selected.Rel_ID == param.id ); 
for each oir in oir_set
   select one rgo related by oir->R_RGO[R203];
   select one sub related by rgo->R_SUB[R205];
   if ( not_empty sub )
     retval = false;
     break;
   end if;
   select one link related by rgo->R_ASSR[R205];
   if ( not_empty link )
     retval = false;
     break;
   end if;
end for;
return retval;
',
	1,
	'',
	1260);
INSERT INTO O_TPARM
	VALUES (1261,
	1259,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1262,
	30,
	'addIdentifiers',
	'This operation ensures that there are three identifiers defined for the class.
',
	19,
	1,
	'select any oid1 related by self->O_ID[R104] where ( selected.Oid_ID == 0 );
if ( empty oid1 )
  create object instance oid1 of O_ID;
  oid1.Oid_ID = 0;
  relate oid1 to self across R104;
end if;
select any oid2 related by self->O_ID[R104] where ( selected.Oid_ID == 1 );
if ( empty oid2 )
  create object instance oid2 of O_ID;
  oid2.Oid_ID = 1;
  relate oid2 to self across R104;
end if;
select any oid3 related by self->O_ID[R104] where ( selected.Oid_ID == 2 );
if ( empty oid3 )
  create object instance oid3 of O_ID;
  oid3.Oid_ID = 2;
  relate oid3 to self across R104;
end if;

',
	1,
	'',
	1263);
INSERT INTO O_TFR
	VALUES (1264,
	30,
	'findUnusedIdentifier',
	'Find an identifier for the class that is not in use.  I.e., there are no attributes related
to it.   Return either the Oid_ID if one is found, or -1 if all are in use.
',
	298,
	1,
	'select many oid_set related by self->O_ID[R104];
for each oid in oid_set
  select any oida related by oid->O_OIDA[R105];
  if ( empty oida );
    return oid.Oid_ID;
  end if;
end for;
return -1;
',
	1,
	'',
	1265);
INSERT INTO O_TFR
	VALUES (1266,
	30,
	'newReferentialAttribute',
	'',
	296,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.

select any ref_obj related by self->S_SS[R2]->S_DOM[R1]->S_SS[R1]->O_OBJ[R2]
      where selected.Obj_ID == param.ref_obj_id;

// check for isInGenericPackage
if (empty ref_obj)
  select any ref_obj related by self->PE_PE[R8001]->EP_PKG[R8000]->S_SYS[R1405]->EP_PKG[R1405]->PE_PE[R8000]->O_OBJ[R8001]
      where selected.Obj_ID == param.ref_obj_id;
end if;
    
select any ref_oid related by ref_obj->O_ID[R104] 
    where selected.Oid_ID == param.ref_oid_id;
select any ref_oida related by ref_oid->O_OIDA[R105] 
    where selected.Attr_ID == param.ref_attr_id;

select one id_attr related by ref_oida->O_ATTR[R105];

select one base_attr related by id_attr->O_BATTR[R106];
if ( empty base_attr )
  select one base_attr related by id_attr->O_RATTR[R106]->O_BATTR[R113];
end if;

newAttr_id = self.newAttribute();
select any attr related by self->O_ATTR[R102] where selected.Attr_ID == newAttr_id;
attr.migrateBaseToReferential();
attr.Root_Nam = id_attr.Name;

select one ref_attr related by attr->O_RATTR[R106];
relate ref_attr to base_attr across R113;

if ( param.id != -1 )
  select any assr_id related by self->O_ID[R104] where selected.Oid_ID == param.id;
  create object instance assr_oida of O_OIDA;
   relate attr to assr_id across R105 using assr_oida;
end if;
return newAttr_id;
',
	1,
	'',
	1257);
INSERT INTO O_TPARM
	VALUES (1267,
	1266,
	'ref_obj_id',
	296,
	0,
	'',
	1268,
	'');
INSERT INTO O_TPARM
	VALUES (1269,
	1266,
	'ref_oid_id',
	298,
	0,
	'',
	1267,
	'');
INSERT INTO O_TPARM
	VALUES (1268,
	1266,
	'ref_attr_id',
	296,
	0,
	'',
	1270,
	'');
INSERT INTO O_TPARM
	VALUES (1270,
	1266,
	'id',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1263,
	30,
	'actionFilter',
	'Bridge: UI',
	316,
	1,
	'if (param.name == "can")
  if (param.value == "instanceStateChart")
    select one ism related by self->SM_ISM[R518];
    return empty ism;
  elif (param.value == "classStateChart")
    select one asm related by self->SM_ASM[R519];
    return empty asm;
  elif (param.value == "publishRefs")
    prefEnableInstanceReferences = "bridgepoint_prefs_enable_instance_references";
    if (PREF::getBoolean( name:prefEnableInstanceReferences) == true)
      select any ir related by self->S_IRDT[R123] where selected.isSet == false;
      select any irs related by self->S_IRDT[R123] where selected.isSet == true;
      if ((empty ir) or (empty irs))
        return true;
      end if;
    end if;
  elif param.value == "make public"
    select one pe related by self->PE_PE[R8001];
    select one pkg related by pe->EP_PKG[R8000];
    if not_empty pkg
      if not_empty pe 
        return pe.Visibility != Visibility::Public;
      end if;
    end if;
  elif param.value == "make protected"
    select one pe related by self->PE_PE[R8001];
    select one pkg related by pe->EP_PKG[R8000];
    if not_empty pkg
      if not_empty pe 
        return pe.Visibility != Visibility::Protected;
      end if;
    end if;
  elif param.value == "make private"
    select one pe related by self->PE_PE[R8001];
    select one pkg related by pe->EP_PKG[R8000];
    if not_empty pkg
      if not_empty pe 
        return pe.Visibility != Visibility::Private;
      end if;
    end if;
  end if;
end if;
return false;',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (1271,
	1263,
	'name',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1272,
	1263,
	'value',
	322,
	0,
	'',
	1271,
	'');
INSERT INTO O_TFR
	VALUES (1256,
	30,
	'isSupertypeOf',
	'',
	316,
	1,
	'/*
Returns whether this class is a supertype of the one whose ID is given.
*/

// for each supertype of the given class
select any givenClass from instances of O_OBJ
	where selected.Obj_ID == param.classId;
select many supertypes related by givenClass->R_OIR[R201]->R_RGO[R203]
	->R_SUB[R205]->R_SUBSUP[R213]->R_SUPER[R212]
	->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201];
for each supertype in supertypes
	// if this supertype is self, or a recursive call to this operation says 
	// that some supertype of this supertype is self
	if (supertype == self or self.isSupertypeOf(classId:supertype.Obj_ID)) 
		// this class is a supertype of the one given
		return true;
	end if;
end for;

return false;',
	1,
	'',
	1259);
INSERT INTO O_TPARM
	VALUES (1273,
	1256,
	'classId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1242,
	30,
	'getPath',
	'',
	322,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
path = "";
if(param.includeSelf)
  path = self.Name;
end if;
if(param.path != "")
  path = path + "::" + param.path;
end if;

isInGenericPkg = false;
select one pkg related by self->PE_PE[R8001]->EP_PKG[R8000];
if (not_empty pkg)
  isInGenericPkg = true;
end if;

if (isInGenericPkg)
  return pkg.getPath(path:path);
else
  select one ss related by self->S_SS[R2];
  if(not_empty ss)
    return ss.getPath(path:path);
  else
    return "";
  end if;
end if;   
',
	1,
	'',
	1274);
INSERT INTO O_TPARM
	VALUES (1275,
	1242,
	'path',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1276,
	1242,
	'includeSelf',
	316,
	0,
	'',
	1275,
	'');
INSERT INTO O_TFR
	VALUES (1277,
	30,
	'eventIsClassBased',
	'',
	316,
	1,
	'/*
This operation only exists because of a bug in MC-Java where an operation may 
not be called on the selected item in the where clause of a select statement.
*/

select any event from instances of SM_EVT 
	where selected.SMevt_ID == param.eventId 
	and (selected.SM_ID == param.instanceStateMachineId
	or selected.SM_ID == param.classStateMachineId);
return event.isClassBased();',
	1,
	'',
	1278);
INSERT INTO O_TPARM
	VALUES (1279,
	1277,
	'eventId',
	296,
	0,
	'',
	1280,
	'');
INSERT INTO O_TPARM
	VALUES (1281,
	1277,
	'instanceStateMachineId',
	296,
	0,
	'',
	1279,
	'');
INSERT INTO O_TPARM
	VALUES (1280,
	1277,
	'classStateMachineId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1274,
	30,
	'getNumCompartmentIconSlots',
	'',
	298,
	1,
	'/*
Returns how many icon slots there are within the given compartment of a 
model-class''s representative shape.
*/
                                      
// there are the two state machine icons in the first compartment
if (param.compartmentNum == 1) 
  return 2;
end if;
                                   
return 0;',
	1,
	'',
	1264);
INSERT INTO O_TPARM
	VALUES (1282,
	1274,
	'compartmentNum',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1283,
	30,
	'shouldCompartmentIconBeDrawn',
	'',
	316,
	1,
	'/*
Returns whether the icon of the given slot within the given compartment of
this model-class''s representative shape should be drawn. 
*/
                                   
// if the first compartment is being considered
if (param.compartmentNum == 1)
  // the first slot corresponds to this class''s instance state machine
  if (param.slotNum == 0) 
    select one machine related by self->SM_ISM[R518];
    return not_empty machine;
  end if;
                                   
  // the second slot corresponds to this class''s class state machine
  if (param.slotNum == 1) 
    select one machine related by self->SM_ASM[R519];
    return not_empty machine;
  end if;
end if;
                                   
return false;',
	1,
	'',
	1284);
INSERT INTO O_TPARM
	VALUES (1285,
	1283,
	'compartmentNum',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1286,
	1283,
	'slotNum',
	298,
	0,
	'',
	1285,
	'');
INSERT INTO O_TFR
	VALUES (1253,
	30,
	'convertToInstance',
	'A utility operation to cast an instance of this type to the
instance datatype.

Translate: native',
	317,
	1,
	'// just return this instance as an Object
return this;',
	0,
	'',
	1262);
INSERT INTO O_TFR
	VALUES (1287,
	30,
	'pasteAttribute',
	'',
	19,
	1,
	'select any attribute from instances of O_ATTR
                                           where (selected.Attr_ID == param.id);
if(not_empty attribute)
  // remove any incomplete referentials
  result = self.removeIncompleteReferential(id:attribute.Attr_ID);
  if(not result)
    // otherwise hook this attribute up with the class
    select one existingClass related by attribute->O_OBJ[R102];
    if(not_empty existingClass)
      unrelate existingClass from attribute across R102;
    end if;
    // set up ordering
    self.addAttributeToOrdering(id:attribute.Attr_ID);
    relate self to attribute across R102;
    // configure the name
    attribute.Root_Nam = ::getUniqueInitialNameInParent(instance:
                                                  attribute.convertToInstance(),
  						  name:attribute.Root_Nam, parent:self.convertToInstance());
  end if;
end if;',
	1,
	'',
	1266);
INSERT INTO O_TPARM
	VALUES (1288,
	1287,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1289,
	30,
	'removeIncompleteNonLocalEvents',
	'',
	19,
	1,
	'// for each state machine remove all non-local events
// if the inherited event was not copied as well, or if
// the association between the supertype/subtype association
// was not copied
select one asm related by self->SM_ASM[R519]->SM_SM[R517];
if(not_empty asm)
  asm.removeIncompleteNonLocalEvents();
end if;
select one ism related by self->SM_ISM[R518]->SM_SM[R517];
if(not_empty ism)
  ism.removeIncompleteNonLocalEvents();
end if;',
	1,
	'',
	1287);
INSERT INTO O_TFR
	VALUES (1265,
	30,
	'findImportedSupertypeClass',
	'',
	296,
	1,
	'/*
Find the imported class that actually provides the supertype association
to the supertype class for the given class.
*/
// for each supertype of the given class
select any expectedSuper from instances of O_OBJ
	where selected.Obj_ID == param.supertypeClassId;
	   if(empty expectedSuper)
	     select any expectedImportedSuper from instances of O_IOBJ
	 	    where selected.Obj_ID == param.supertypeClassId;
	 	      if(not_empty expectedImportedSuper)
	 	         select one expectedSuper related by expectedImportedSuper->O_OBJ[R101];
	 	      end if;
	   end if;
select many oirs related by self->R_OIR[R201]->R_RGO[R203]
	->R_SUB[R205]->R_SUBSUP[R213]->R_SUPER[R212]
	->R_RTO[R204]->R_OIR[R203];
for each oir in oirs
  select one supertype related by oir->O_OBJ[R201];
  if (supertype == expectedSuper)
    select one iobj related by oir->O_IOBJ[R202];
    if(not_empty iobj)
      return iobj.IObj_ID;
    end if;
  else
    // the supertype may exist further up the hierarchy
    // make a recursive call
    id = supertype.findImportedSupertypeClass(supertypeClassId:param.supertypeClassId);
    if(id != GD::NULL_UNIQUE_ID())
      return id;
    end if;
  end if;
end for;
return GD::NULL_UNIQUE_ID();',
	1,
	'',
	1277);
INSERT INTO O_TPARM
	VALUES (1290,
	1265,
	'supertypeClassId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1278,
	30,
	'disposeLowerNonLocalEvents',
	'',
	19,
	1,
	'select any originalClass from instances of O_OBJ where (selected.Obj_ID == param.originalId);
if(not_empty originalClass)
  select any supertypeClass from instances of O_OBJ where (selected.Obj_ID == param.originalSupertypeId);
  // if the event''s class is a supertype of the original class
  // remove the non-local events
  if(self != originalClass or param.disposeSelfEvents)
    select one machine related by self->SM_ISM[R518]->SM_SM[R517];
    if(not_empty machine)
      select many nlevts related by machine->SM_EVT[R502]->SM_SEVT[R525]
    	  ->SM_NLEVT[R526];
      for each nlevt in nlevts
        select one poly related by nlevt->SM_PEVT[R527];
        if empty poly
          select one evt related by nlevt->SM_SEVT[R526]->SM_EVT[R525];
          if not empty evt
            evt.dispose(); 
            Util::logError(message: "An orphaned polymorphic event was found"+ 
            "and removed while deleting the owning class.");
          end if;
          continue;
        end if;
        select one polyClass related by poly->SM_EVT[R525]->SM_SM[R502]
        		->SM_ISM[R517]->O_OBJ[R518];
        disposeEvent = not polyClass.isSupertypeOf(classId:self.Obj_ID);
        if(param.polyId != GD::NULL_UNIQUE_ID())
          if(polyClass.isSupertypeOf(classId:originalClass.Obj_ID))
            select any polyEvt from instances of SM_EVT where (selected.SMevt_ID == param.polyId);
            if(not_empty polyEvt)
              select one pe related by polyEvt->SM_PEVT[R525];
              disposeEvent = poly == pe;
            end if;
          end if;
        end if;
        if(disposeEvent)
          select one evt related by nlevt->SM_SEVT[R526]->SM_EVT[R525];
          evt.dispose();
          poly.migrateToLocalEvent();
        end if;
      end for;
    end if;
  end if;
  // select all subtypes of the supertype class
  select many subtypes related by self->R_OIR[R201]->R_RTO[R203]
  		->R_SUPER[R204]->R_SUBSUP[R212]->R_SUB[R213]->R_RGO[R205]->R_OIR[R203]
  		->O_OBJ[R201];
  for each subtype in subtypes
    subtype.disposeLowerNonLocalEvents(originalId:param.originalId, disposeSelfEvents:param.disposeSelfEvents, polyId:param.polyId, originalSupertypeId:param.originalSupertypeId);
  end for;
end if;',
	1,
	'',
	1251);
INSERT INTO O_TPARM
	VALUES (1291,
	1278,
	'originalId',
	296,
	0,
	'',
	1292,
	'');
INSERT INTO O_TPARM
	VALUES (1293,
	1278,
	'polyId',
	296,
	0,
	'',
	1294,
	'');
INSERT INTO O_TPARM
	VALUES (1292,
	1278,
	'disposeSelfEvents',
	316,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1294,
	1278,
	'originalSupertypeId',
	296,
	0,
	'',
	1291,
	'');
INSERT INTO O_TFR
	VALUES (1295,
	30,
	'removeInconsistentSubtypeIgnores',
	'',
	19,
	1,
	'/*
Traverse down the supertype/subtype hierarchy until we find
one event ignored.  At which point we dispose all lower non-local
events.
*/
select many subtypes related by self->R_OIR[R201]->R_RTO[R203]->R_SUPER[R204]
  ->R_SUBSUP[R212]->R_SUB[R213]->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201];
for each subtype in subtypes
  select many nlevts related by subtype->SM_ISM[R518]->SM_SM[R517]
    ->SM_EVT[R502]->SM_SEVT[R525]->SM_NLEVT[R526];
  for each nlevt in nlevts
    select any ignore related by nlevt->SM_SEVT[R526]->SM_SEME[R503]
      ->SM_EIGN[R504];
    select any transition related by nlevt->SM_SEVT[R526]->SM_SEME[R503]
      ->SM_NSTXN[R504];
    if(not_empty ignore) and (empty transition)
      // if there is an ignore and no transition, remove all non-local events
      // used below this subtype
      select one poly related by nlevt->SM_PEVT[R527]->SM_EVT[R525];
      subtype.disposeLowerNonLocalEvents(disposeSelfEvents:false, originalId:subtype.Obj_ID, polyId:poly.SMevt_ID, originalSupertypeId:self.Obj_ID);
    else
      // recurse to the any subtypes of this subtype
      subtype.removeInconsistentSubtypeIgnores();
    end if;
  end for;
end for;',
	1,
	'',
	1289);
INSERT INTO O_TFR
	VALUES (1284,
	30,
	'rename',
	'Rename the class and the instance reference and instance reference set datatypes
associated with this class.',
	19,
	1,
	'if(OS::remove_spaces(s:self.Name) == self.Key_Lett)
  self.Key_Lett = OS::remove_spaces(s:param.new_name);
end if;
self.Name = param.new_name;

select any ir related by self->S_IRDT[R123] where selected.isSet == false;
if (not_empty ir)
  ir.rename(new_name: "inst_ref<" + param.new_name + ">");
end if;

select any irs related by self->S_IRDT[R123] where selected.isSet == true;
if (not_empty irs)
  irs.rename(new_name: "inst_ref_set<" + param.new_name + ">");
end if;',
	1,
	'',
	1295);
INSERT INTO O_TPARM
	VALUES (1296,
	1284,
	'new_name',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1258,
	30,
	'newInstanceReferenceDataType',
	'This function creates two new S_IRDT datatypes.  These are instance reference
datatypes that are associated with a model class.  One is inst_ref<classname>,
the other is inst_ref_set<classname>.',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// Model Class::newInstanceReferenceDataType()
select one packageableElem related by self->PE_PE[R8001];
select one package related by packageableElem->EP_PKG[R8000];
select one component related by packageableElem->C_C[R8003];
isInGenericPackage = not_empty package or not_empty component;
if (isInGenericPackage)
  // Make sure the IRDTs don''t already exist before creating new ones.  Check
  // the single and set version and create whatever does not exist.
  select any existing_irdt related by self->S_IRDT[R123] where selected.isSet == false;
  if (empty existing_irdt)
    create object instance pe of PE_PE;
    relate pe to package across R8000;
    pe.initialize();
    pe.type = ElementTypeConstants::DATATYPE;
    create object instance dt of S_DT;
    relate pe to dt across R8001;
    create object instance irdt of S_IRDT;
    irdt.isSet = false;
    relate dt to irdt across R17;

    dt.initialize(newname:"inst_ref<" + self.Name + ">");
    relate self to irdt across R123;
  end if;

  select any existing_irdt_set related by self->S_IRDT[R123] where selected.isSet == true;
  if (empty existing_irdt_set)
    create object instance pe of PE_PE;
    relate pe to package across R8000;
    pe.initialize();
    pe.type = ElementTypeConstants::DATATYPE;
    create object instance dt2 of S_DT;
    relate pe to dt2 across R8001;
    create object instance irsdt of S_IRDT;
    irsdt.isSet = true;
    relate irsdt to dt2 across R17;
  
    dt2.initialize(newname:"inst_ref_set<" + self.Name + ">");
    relate self to irsdt across R123;
  end if;  
  return;
end if;

// Below this point is for the case where this O_OBJ is not in a generic package

select one dom related by self->S_SS[R2]->S_DOM[R1];
select any dtp related by dom->S_DPK[R40] where selected.Name == "Datatypes";

if (empty dtp)
  // Note: this code would ideally call Domain.newDatatypePackage(), but that
  // does not return the UUID of the newly created package (or an inst_ref to
  // the new package).  If possible, change the function and call it from here.
  create object instance dtp of S_DPK;
  dtp.Name = "Datatypes";
  relate dtp to dom across R40;
end if;

// Make sure the IRDTs don''t already exist before creating new ones.  Check
// the single and set version and create whatever does not exist.
select any existing_irdt related by self->S_IRDT[R123] where selected.isSet == false;
if (empty existing_irdt)
  create object instance dt of S_DT;
  create object instance irdt of S_IRDT;
  irdt.isSet = false;
  relate dt to irdt across R17;

  create object instance dip of S_DIP;
  relate dt to dtp across R39 using dip;

  dt.initialize(newname:"inst_ref<" + self.Name + ">");
  dtp.associateNewDTWithDomainOrSystem(dt_id:dt.DT_ID);
  relate self to irdt across R123;
end if;

select any existing_irdt_set related by self->S_IRDT[R123] where selected.isSet == true;
if (empty existing_irdt_set)
  create object instance dt2 of S_DT;
  create object instance irsdt of S_IRDT;
  irsdt.isSet = true;
  relate irsdt to dt2 across R17;

  create object instance dip of S_DIP;
  relate dt2 to dtp across R39 using dip;

  dt2.initialize(newname:"inst_ref_set<" + self.Name + ">");
  dtp.associateNewDTWithDomainOrSystem(dt_id:dt2.DT_ID);
  relate self to irsdt across R123;
end if;',
	1,
	'',
	1255);
INSERT INTO O_TFR
	VALUES (1260,
	30,
	'initializeOrder',
	'',
	19,
	1,
	'// Alpha-sort the O_TFR elements if they have not yet been ordered
select many peers related by self->O_TFR[R115];
if (cardinality peers > 1)
    initialOrderingCheckPerformed = false;
	select any head related by self->O_TFR[R115] where (selected.Obj_ID == GD::NULL_UNIQUE_ID());
	endOfList = head;
	loopCnt = 0;
	for each peer in peers
	  if ( not initialOrderingCheckPerformed)
	    select one predecessor related by peer->O_TFR[R125.''precedes''];
	    select one successor related by peer->O_TFR[R125.''succeeds''];
	    initialOrderingCheckPerformed = true;
	    if (not_empty  predecessor or not_empty  successor)
	      // Already ordered
	      break;
	    end if;
	    head = peer;
	    endOfList = peer;
	  end if;
	  
      if (loopCnt == 1)
        if (peer.Name < head.Name)
          relate peer to head across R125.''precedes'';
          endOfList = peer;
        else
          relate head to peer across R125.''precedes'';
          head = peer;
        end if;
      elif (loopCnt > 1)
        insertPoint = head;
        select one next related by head->O_TFR[R125.''succeeds''];
        while (not_empty next)
          if (next.Name < peer.Name)
            break;
          else
            insertPoint = next;          
            select one next related by next->O_TFR[R125.''succeeds''];
          end if;
        end while;
        
        if (empty next)
          // New end of list
          relate peer to endOfList across R125.''precedes'';   
          endOfList = peer;       
        else
          if ((insertPoint == head) and (peer.Name > head.Name))
            // New head
            relate head to peer across R125.''precedes'';
            head = peer;
          else
            unrelate next from insertPoint across R125.''precedes'';
            relate peer to insertPoint across R125.''precedes'';
            relate next to peer across R125.''precedes'';
          end if;          
        end if;
      end if;
      
      loopCnt = loopCnt + 1;
	end for;
end if;
',
	1,
	'',
	1250);
INSERT INTO O_TFR
	VALUES (1297,
	30,
	'getContainingComponentId',
	'',
	296,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// Model Class.getContainingComponentId()
isInGenericPkg = false;
select one pkg related by self->PE_PE[R8001]->EP_PKG[R8000];
if (not_empty pkg)
  isInGenericPkg = true;
end if;
if (isInGenericPkg)
  select one component related by self->PE_PE[R8001]->C_C[R8003];
  if(not_empty component)
    return component.Id;
  end if;
  if not_empty pkg
    return pkg.getContainingComponentId();
  end if;
  USER::logError(msg:
               "Class has no parent in Model Class.getContainingComponentId()",path:self.getPath(path:self.Name,includeSelf:true));
else
  select one subsystem related by self->S_SS[R2];
  if not_empty subsystem
    return subsystem.getContainingComponentId();
  end if;
end if;   
return GD::NULL_UNIQUE_ID();

',
	1,
	'',
	1283);
INSERT INTO O_TFR
	VALUES (1298,
	30,
	'getContainerId',
	'',
	296,
	1,
	'// Model Class.getContainerId()
select one component related by self->PE_PE[R8001]->C_C[R8003];
if not_empty component
  return component.Id;
else
  select one package related by self->PE_PE[R8001]->EP_PKG[R8000];
  if not_empty package
    return package.Package_ID;
  end if;
end if;
return GD::NULL_UNIQUE_ID();',
	1,
	'',
	1297);
INSERT INTO O_TFR
	VALUES (1299,
	30,
	'pasteOperation',
	'',
	19,
	1,
	'select any operation from instances of O_TFR
                                            where (selected.Tfr_ID == param.id);
if(not_empty operation)
  select one existingObj related by operation->O_OBJ[R115];
  if(not_empty existingObj)
    unrelate operation from existingObj across R115;
  end if;
  relate operation to self across R115;  
  operation.Name = ::getUniqueInitialNameInParent(instance:operation.convertToInstance(),
  						name:operation.Name, parent:self.convertToInstance());
  self.addOperationToOrdering(id:operation.Tfr_ID);
end if;',
	1,
	'',
	1298);
INSERT INTO O_TPARM
	VALUES (1300,
	1299,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1301,
	30,
	'addAttributeToOrdering',
	'',
	19,
	1,
	'select any newAttr from instances of O_ATTR
                                           where (selected.Attr_ID == param.id);
select many attrs related by self->O_ATTR[R102];
for each attr in attrs
 select one nextAttr related by attr->O_ATTR[R103.''precedes''];
  if (empty nextAttr)
    break;
  end if;
end for;
if (not_empty attr)
  //
  // If there was a previous last attribute link this one to the end . . .
  // We need to disable the listeners because the ordering change
  // causes a NPE when the display updates before R102 is formalized
  ::changeNotificationEnablement(enabled:false);
  relate attr to newAttr across R103.''precedes'';
  ::changeNotificationEnablement(enabled:true);
end if;
',
	1,
	'',
	1299);
INSERT INTO O_TPARM
	VALUES (1302,
	1301,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1303,
	30,
	'removeIncompleteReferential',
	'',
	316,
	1,
	'select any attribute from instances of O_ATTR
                                           where (selected.Attr_ID == param.id);
if(not_empty attribute)
  select one refAttr related by attribute->O_RATTR[R106];
  if(not_empty refAttr)
    select any referredToAttr related by refAttr->O_REF[R108]->O_RTIDA[R111];
    select one identAttr related by referredToAttr->O_OIDA[R110];
    select one rto related by referredToAttr->R_RTO[R110];
    if(empty identAttr or empty rto)
      attribute.dispose();
      return true;
    end if;
  end if;
end if;
return false;',
	1,
	'',
	1301);
INSERT INTO O_TPARM
	VALUES (1304,
	1303,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1305,
	30,
	'addOperationToOrdering',
	'',
	19,
	1,
	'select any operation from instances of O_TFR
                                            where (selected.Tfr_ID == param.id);
if(not_empty operation)
  ::changeNotificationEnablement(enabled:false);
  select many peers related by self->O_TFR[R115];
  for each peer in peers
    if (peer != operation)
      select one predecessor related by peer->O_TFR[R125.''precedes''];
      if (empty predecessor)
        relate operation to peer across R125.''succeeds'';
      end if;
    end if;
  end for;
  ::changeNotificationEnablement(enabled:true);
end if;',
	1,
	'',
	1303);
INSERT INTO O_TPARM
	VALUES (1306,
	1305,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1307,
	30,
	'canCopyAttribute',
	'',
	316,
	1,
	'select any attribute related by self->O_ATTR[R102]
                                           where (selected.Attr_ID == param.id);
if(not_empty attribute)
  select one refAttr related by attribute->O_RATTR[R106];
  if(not_empty refAttr)
    return false;
  end if;
else
  return false;
end if;
return true;',
	1,
	'',
	1305);
INSERT INTO O_TPARM
	VALUES (1308,
	1307,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1309,
	30,
	'removeIncompleteSignalEvents',
	'',
	19,
	1,
	'// for each state machine remove all non-local events
// if the inherited event was not copied as well, or if
// the association between the supertype/subtype association
// was not copied
select one asm related by self->SM_ASM[R519]->SM_SM[R517];
if(not_empty asm)
  asm.removeIncompleteSignalEvents();
end if;
select one ism related by self->SM_ISM[R518]->SM_SM[R517];
if(not_empty ism)
  ism.removeIncompleteSignalEvents();
end if;',
	1,
	'',
	1307);
INSERT INTO O_TFR
	VALUES (1310,
	30,
	'checkIntegrity',
	'',
	19,
	1,
	'// check for any classes with the same key letters that are
// also in scope
select one package related by self->PE_PE[R8001]->EP_PKG[R8000];
select many objs related by package->PE_PE[R8000]->O_OBJ[R8001];
for each obj in objs
  if(obj.Key_Lett == self.Key_Lett and obj != self)
    select one system related by package->S_SYS[R1405];
    sys_id = GD::NULL_UNIQUE_ID();
    if(not_empty system)
      sys_id = system.Sys_ID;
    end if;
	MI_IM::createIssue(sys_id:sys_id, description:
	              "Another class within the same package has been found " +
	     "with the same key letters.", severity:Severity::Error, name:self.Name,
	   path:self.getPath(path:self.Name, includeSelf:true), id:self.Obj_ID,
	                                          element:self.convertToInstance());
  end if;
  // also check for duplicate numbers
  if(obj.Numb == self.Numb and obj != self)
    select one system related by package->S_SYS[R1405];
    sys_id = GD::NULL_UNIQUE_ID();
    if(not_empty system)
      sys_id = system.Sys_ID;
    end if;
	MI_IM::createIssue(sys_id:sys_id, description:
	              "Another class within the same package has been found " +
	   "with the same number.", severity:Severity::Warning, name:self.Name,
	   path:self.getPath(path:self.Name, includeSelf:true), id:self.Obj_ID,
	                                          element:self.convertToInstance());
  end if;
end for;',
	1,
	'',
	1309);
INSERT INTO O_NBATTR
	VALUES (1311,
	30);
INSERT INTO O_BATTR
	VALUES (1311,
	30);
INSERT INTO O_ATTR
	VALUES (1311,
	30,
	150,
	'Name',
	'Full Name: Class Name
Description: Name of the class as entered in the model.',
	'',
	'Name',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1312,
	30);
INSERT INTO O_BATTR
	VALUES (1312,
	30);
INSERT INTO O_ATTR
	VALUES (1312,
	30,
	1311,
	'Numb',
	'Full Name: Class Number
Description: Number of the class as it appears in the model.
min_value: 0
max_value: 9999
',
	'',
	'Numb',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1313,
	30);
INSERT INTO O_BATTR
	VALUES (1313,
	30);
INSERT INTO O_ATTR
	VALUES (1313,
	30,
	1312,
	'Key_Lett',
	'Full Name: Class Key Letters
Description: Key letters of the class as they appear in the model.',
	'',
	'Key_Lett',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1314,
	30);
INSERT INTO O_BATTR
	VALUES (1314,
	30);
INSERT INTO O_ATTR
	VALUES (1314,
	30,
	1313,
	'Descrip',
	'Full Name: Class Description
Description: This is a description of the class as entered by the user.',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (30,
	701,
	0,
	717,
	1315,
	1316,
	1317,
	1318,
	1319,
	0,
	0,
	'',
	'Subsystem',
	'SS_ID',
	'R2.''is contained in''');
INSERT INTO O_RATTR
	VALUES (1318,
	30,
	717,
	701,
	1,
	'SS_ID');
INSERT INTO O_ATTR
	VALUES (1318,
	30,
	1314,
	'SS_ID',
	'',
	'',
	'SS_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (30,
	26,
	0,
	25,
	868,
	1320,
	870,
	150,
	1321,
	0,
	0,
	'',
	'Packageable Element',
	'Element_ID',
	'R8001');
INSERT INTO O_RATTR
	VALUES (150,
	30,
	25,
	26,
	0,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (150,
	30,
	0,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1322,
	30);
INSERT INTO O_BATTR
	VALUES (1322,
	30);
INSERT INTO O_ATTR
	VALUES (1322,
	30,
	1318,
	'Ism_ID',
	'',
	'',
	'Ism_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1323,
	30);
INSERT INTO O_BATTR
	VALUES (1323,
	30);
INSERT INTO O_ATTR
	VALUES (1323,
	30,
	1322,
	'Csm_ID',
	'',
	'',
	'Csm_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	30);
INSERT INTO O_OIDA
	VALUES (150,
	30,
	0,
	'Obj_ID');
INSERT INTO O_ID
	VALUES (1,
	30);
INSERT INTO O_ID
	VALUES (2,
	30);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1050,
	'Imported Class',
	102,
	'O_IOBJ',
	'Classes can have interactions with classes in other subsystems.  In order to capture these spanning interactions, Classes can be imported into another subsystem.  Spanning interactions can be associations, event communications, or data accesses and are captured in class diagram, communication diagram, and synchronous communication diagram, respectively.  Spanning interactions provide the data for derivation of the subsystem association model, subsystem communication model, and subsystem access model.',
	979);
INSERT INTO O_TFR
	VALUES (1324,
	1050,
	'get_style',
	'An Imported Class looks the same as regular Class, except it''s back-
ground color is different. The background is set as a user preference
and is not controlled here.
-----------------------------------------------------------------------------------
Bridge:GD',
	784,
	1,
	'select one cl related by self->O_OBJ[R101];
if (not_empty cl)
  return cl.get_style();
else
  // Something went wrong
  return Style::None;
end if;',
	1,
	'',
	1325);
INSERT INTO O_TFR
	VALUES (1326,
	1050,
	'get_compartments',
	'An Imported Class has the same number of compartments as the Class
it represents.
-----------------------------------------------------------------------------------
Bridge:GD',
	298,
	1,
	'select one cl related by self->O_OBJ[R101];
if (not_empty cl)
  return cl.get_compartments();
else
  // Imported Class is Unassigned
  return 1;
end if;',
	1,
	'',
	1327);
INSERT INTO O_TFR
	VALUES (1327,
	1050,
	'get_compartment_text',
	'An Imported Class has the same text as the Class it represents, except
that it adds the stereotype "<<Imported>>" to the name compartment.
-----------------------------------------------------------------------------------
Bridge:GD',
	322,
	1,
	'select one cl related by self->O_OBJ[R101];
if (not_empty cl)
  if (param.comp_num == 1)
    if (param.ent_num == 1)
      if (param.at == Justification::Center_in_X)
        return cl.getPath(path:"", includeSelf:true);
      end if;
    end if;
  end if;
  return cl.get_compartment_text(comp_num:param.comp_num,
                                                    ent_num:param.ent_num,
                                                    at:param.at);
else
  // Imported Object is Unassigned
  if (param.comp_num == 1)
    if (param.ent_num == 1)
      if (param.at == Justification::Center_in_X)
        return "Unassigned Imported Class";
      end if;
    end if;
  end if;
  return "";
end if;',
	1,
	'',
	1328);
INSERT INTO O_TPARM
	VALUES (1329,
	1327,
	'comp_num',
	298,
	0,
	'',
	1330,
	'');
INSERT INTO O_TPARM
	VALUES (1331,
	1327,
	'ent_num',
	298,
	0,
	'',
	1329,
	'');
INSERT INTO O_TPARM
	VALUES (1330,
	1327,
	'at',
	779,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1332,
	1050,
	'get_entries',
	'An Imported Class has the same number of entries as the Class it
represents, except for the first compartment in which it adds the
stereotype, "<<Imported>>".
-----------------------------------------------------------------------------------
Bridge:GD',
	298,
	1,
	'select one cl related by self->O_OBJ[R101];
if (not_empty cl)
  entries = cl.get_entries(comp_num:param.comp_num);
  if (param.comp_num == 1)
    entries = entries + 1;
  end if;
  return entries;
else
  // Imported Class is Unassigned
  return 1;
end if;
',
	1,
	'',
	1326);
INSERT INTO O_TPARM
	VALUES (1333,
	1332,
	'comp_num',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1334,
	1050,
	'get_text_style',
	'An Imported Class has the same text style as the class it represents.
-----------------------------------------------------------------------------------
Bridge:GD',
	784,
	1,
	'select one cl related by self->O_OBJ[R101];
if (not_empty cl)
  return cl.get_text_style(comp_num:param.comp_num, ent_num:param.ent_num, at:param.at);
else
  // Imported Class is Unassigned
  return Style::None;
end if;',
	1,
	'',
	1324);
INSERT INTO O_TPARM
	VALUES (1335,
	1334,
	'comp_num',
	298,
	0,
	'',
	1336,
	'');
INSERT INTO O_TPARM
	VALUES (1337,
	1334,
	'ent_num',
	298,
	0,
	'',
	1335,
	'');
INSERT INTO O_TPARM
	VALUES (1336,
	1334,
	'at',
	779,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1325,
	1050,
	'get_ooa_id',
	'The ooa_id of an Imported Class is it''s IObj_ID
-----------------------------------------------------------------------------------
Bridge:GD',
	296,
	1,
	'return self.IObj_ID;',
	1,
	'',
	1338);
INSERT INTO O_TFR
	VALUES (1339,
	1050,
	'dispose',
	'The dispose operation for an Imported Class.',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// Subsystem Subsystem
select one realObj related by self->O_OBJ[R101];
if (not_empty realObj)
  unrelate self from realObj across R101;
end if;  
// Association Subsystem
select many oirs related by self->R_OIR[R202];
for each oir in oirs
  select one assoc related by oir->R_REL[R201];
  if not_empty assoc
    if realObj.isEssentialToAssoc(id: assoc.Rel_ID)
      assoc.dispose();
    else
      oir.dispose();
    end if;
  else
    oir.dispose();
  end if;
end for;
//
// Domain Subsystem
select one ss related by self->S_SS[R3];
if (not_empty ss)
  unrelate self from ss across R3;
end if;
//
// Communication and Access Subsystem
select many oaps related by self->CA_ACC[R425];
for each oap in oaps
  oap.dispose();
end for;
select many daps related by self->CA_SMOA[R420]->CA_ACC[R415];
for each dap in daps
  dap.dispose();
end for;
select many dcps related by self->CA_SMSMC[R414]->CA_COMM[R401];
for each dcp in dcps
  dcp.dispose();
end for;
select many ocps related by self->CA_SMSMC[R424]->CA_COMM[R401];
for each ocp in ocps
  ocp.dispose();
end for;
select one pe related by self->PE_PE[R8001];
if (not_empty pe)
  unrelate self from pe across R8001;
  pe.dispose();
end if;
//
// Finally, delete self
delete object instance self;',
	1,
	'',
	1340);
INSERT INTO O_TFR
	VALUES (1338,
	1050,
	'get_name',
	'',
	322,
	1,
	'select one obj related by self->O_OBJ[R101];
if (not_empty obj)
return obj.Name;
else 
return "Unassigned Imported Class";
end if;
',
	1,
	'',
	1332);
INSERT INTO O_TFR
	VALUES (1341,
	1050,
	'actionFilter',
	'Bridge: UI
',
	316,
	1,
	'if (param.name == "unassigned" )
  // See if it is already assigned and if it is return false
  select one obj related by self->O_OBJ[R101];
  if (not_empty obj) 
    return false;
  end if;
  
  select one packageableElem related by self->PE_PE[R8001];
  select one package related by packageableElem->EP_PKG[R8000];
  select one component related by packageableElem->C_C[R8003];
  isInGenericPackage = not_empty package or not_empty component;
  
  if (param.value =="generic pkg" )
    if(not isInGenericPackage)
      return false;
    end if;
    // collect visible classes, and return true if any
    // are available
    if(not_empty package)
      // should never be empty until we support
      // classes directly on the component diagram
      package.clearScope();
      package.collectVisibleElementsForName(name:"",
                         type:ElementTypeConstants::CLASS, descending:false,
                                      originatingContainerID:package.Package_ID,
                                          delegatingPkgID:GD::NULL_UNIQUE_ID(),
                                                         collectGlobally:false);
      select many srs related by package->PE_SRS[R8005]
                           where (selected.Type == ElementTypeConstants::CLASS);
      select many pes related by srs->PE_VIS[R8006]->PE_PE[R8002];
      return cardinality pes != 0;
    end if;
  elif (param.value =="spec pkg")
    return (not isInGenericPackage);
  end if;
end if;
return false;
',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (1342,
	1341,
	'name',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1343,
	1341,
	'value',
	322,
	0,
	'',
	1342,
	'');
INSERT INTO O_TFR
	VALUES (1328,
	1050,
	'getElideCompartmentTextAtEnd',
	'',
	316,
	1,
	'// elide at the front if the given compartment/entry corresponds to
// the class''s path (and name), and a class has been assigned to this instance 
select one clazz related by self->O_OBJ[R101];
elideAtFront = false;	// necessary due to bug with boolean expressions
elideAtFront = param.compartmentNum == 1 and param.entryNum == 1 
	and not_empty clazz;
return not elideAtFront;',
	1,
	'',
	1339);
INSERT INTO O_TPARM
	VALUES (1344,
	1328,
	'compartmentNum',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1345,
	1328,
	'entryNum',
	298,
	0,
	'',
	1344,
	'');
INSERT INTO O_TFR
	VALUES (1346,
	1050,
	'resolveModelClass',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one proxyClass related by self->O_OBJ[R101];
if(not_empty proxyClass and not Util::isProxy(element:self.convertToInstance()))
  select one packageableElem related by self->PE_PE[R8001];
  select one package related by packageableElem->EP_PKG[R8000];
  select one component related by packageableElem->C_C[R8003];
  isInGenericPackage = not_empty package or not_empty component;

  if (isInGenericPackage)
    clazz = proxyClass;
    if (empty package)
      rootCompIdInPkg = component.getRootComponentId();
      select any rootComponent from instances of C_C where (selected.Id == rootCompIdInPkg);      
      select one package related by rootComponent->PE_PE[R8001]->EP_PKG[R8000]; 
    end if;
    // first try to resolve to referred to class by key letters and name
    select any clazz related by package->S_SYS[R1405]->EP_PKG[R1405]->PE_PE[R8000]->O_OBJ[R8001]
         where (selected.Key_Lett == proxyClass.Key_Lett and selected.Name == proxyClass.Name);
    if(empty clazz)
      // if no class was found try to resolve it by key_letters alone
      select any clazz related by package->S_SYS[R1405]->EP_PKG[R1405]->PE_PE[R8000]->O_OBJ[R8001]
           where (selected.Key_Lett == proxyClass.Key_Lett);
      if(empty clazz)
        // if still no class was found try to resolve on the name alone
        select any clazz related by package->S_SYS[R1405]->EP_PKG[R1405]->PE_PE[R8000]->O_OBJ[R8001]
             where (selected.Name == proxyClass.Name);
      end if;
    end if;
    classResolved = not_empty clazz;
    if(classResolved)
      relate self to clazz across R101;
      // update any class in associations
      select many cias related by self->R_OIR[R202];
      for each cia in cias
        select one existingClass related by cia->O_OBJ[R201];
        select one assoc related by cia->R_REL[R201];
        if(existingClass != clazz)
          unrelate existingClass from assoc across R201 using cia;
          relate clazz to assoc across R201 using cia;
        end if;
      end for;
      // unformalize any associations connected to this imported class
      select many assocs related by self->R_OIR[R202]->R_REL[R201];
      for each assoc in assocs
        // only unformalize if this association has not already been
        // unformalized
        if(assoc.isFormalized())
          assoc.unformalize();
        end if;
      end for;      
    else
      // dispose any associations connected to this imported class
      select many assocs related by self->R_OIR[R202]->R_REL[R201];
      for each assoc in assocs
        assoc.dispose();
      end for;
    end if;
    return;
  end if;  // end isInGenericPackage
  
  //////////////////////////////////////////////////////////////////////
  // Note: Everything below this point is for the case when we are using 
  //       specialized packages.
  //////////////////////////////////////////////////////////////////////
  
  // if a subsystem is resolved by the proxy class
  // then this imported class has already been
  // resolved or does not need to be as the referred to
  // class is contained in the copy
  select one ss related by proxyClass->S_SS[R2];
  if(empty ss or Util::isProxy(element:ss.convertToInstance()))
    name = proxyClass.Name;
    key_letters = proxyClass.Key_Lett;
    unrelate self from proxyClass across R101;
    select one otherSS related by self->S_SS[R3];
    // this is safe as there will only ever be one
    // domain
    select any domain from instances of S_DOM;
    // first try to resolve to referred to class by key letters and name
    select any clazz related by domain->S_SS[R1]->O_OBJ[R2]
         where (selected.Key_Lett == key_letters and selected.Name == name and selected.SS_ID != otherSS.SS_ID);
    if(empty clazz)
      // if no class was found try to resolve it by key_letters alone
      select any clazz related by domain->S_SS[R1]->O_OBJ[R2]
           where (selected.Key_Lett == key_letters and selected.SS_ID != otherSS.SS_ID);
      if(empty clazz)
        // if still no class was found try to resolve on the name alone
        select any clazz related by domain->S_SS[R1]->O_OBJ[R2]
             where (selected.Name == name and selected.SS_ID != otherSS.SS_ID);
      end if;
    end if;
    classResolved = not_empty clazz;
    select one ss related by clazz->S_SS[R2];
    if(ss == otherSS)
      // do not allow import resolution to a class
      // that is in the same subsystem as the imported
      // class
      classResolved = false;
    end if;
    if(classResolved)
      relate self to clazz across R101;
      // update any class in associations
      select many cias related by self->R_OIR[R202];
      for each cia in cias
        select one existingClass related by cia->O_OBJ[R201];
        select one assoc related by cia->R_REL[R201];
        if(existingClass != clazz)
          unrelate existingClass from assoc across R201 using cia;
          relate clazz to assoc across R201 using cia;
        end if;
      end for;
      // unformalize any associations connected to this imported class
      select many assocs related by self->R_OIR[R202]->R_REL[R201];
      for each assoc in assocs
        // only unformalize if this association has not already been
        // unformalized
        if(assoc.isFormalized())
          assoc.unformalize();
        end if;
      end for;      
    else
      // no class could be resolved
      message = ::getMissingClassMessage();
      // add message to a list that will display in a warning dialog at
      // the end of the paste operation
      Util::addPastedElementToProblemList(elementName:self.Obj_Name + "::" + self.Obj_KL, message:message);
      // dispose any associations connected to this imported class
      select many assocs related by self->R_OIR[R202]->R_REL[R201];
      for each assoc in assocs
        assoc.dispose();
      end for;
    end if;
  end if;
end if;
',
	1,
	'',
	1334);
INSERT INTO O_TFR
	VALUES (1340,
	1050,
	'convertToInstance',
	'Translate:native',
	317,
	1,
	'return this;',
	0,
	'',
	1341);
INSERT INTO O_TFR
	VALUES (1347,
	1050,
	'canAssignToClass',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one packageableElem related by self->PE_PE[R8001];
select one package related by packageableElem->EP_PKG[R8000];
if (empty package)
  select one rootComponent related by packageableElem->C_C[R8003];
  if (not_empty rootComponent)
    rootCompIdInPkg = rootComponent.getRootComponentId();
    select any rootComponent from instances of C_C where (selected.Id == rootCompIdInPkg);
    select one package related by rootComponent->PE_PE[R8001]->EP_PKG[R8000];
  end if;
end if;
isInGenericPackage = not_empty package;

if (isInGenericPackage)
  select any candidatePe from instances of PE_PE where
                                                selected.Element_ID == param.Id;
  if not_empty candidatePe
    select one candidatePkg related by candidatePe->EP_PKG[R8000];
    if (empty candidatePkg)
      select one candidateComp related by candidatePe->C_C[R8003];
      if (not_empty candidateComp)
        rootCompIdInPkg = candidateComp.getRootComponentId();
        select any rootCandidateComponent from instances of C_C where (selected.Id == rootCompIdInPkg);
        select one candidatePkg related by rootCandidateComponent->PE_PE[R8001]->EP_PKG[R8000];
      end if;
    end if;
    if not_empty package and not_empty candidatePkg
      return package != candidatePkg;
    end if;
    return true;
  end if;
else
  // Below this is for when we are NOT under a generic package
  select any candidateClass from instances of O_OBJ where
                                                    selected.Obj_ID == param.Id;
  select one subsystem related by self->S_SS[R3];
  select one candidateContainerSS related by candidateClass->S_SS[R2];
  if not_empty subsystem and not_empty candidateContainerSS
    return subsystem != candidateContainerSS;
  end if;
end if;
return false;
',
	1,
	'',
	1346);
INSERT INTO O_TPARM
	VALUES (1348,
	1347,
	'Id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1349,
	1050,
	'getConfigurationInheritanceElementId',
	'',
	317,
	1,
	'select one importedClass related by self->O_OBJ[R101];
if(not_empty importedClass)
  return importedClass.convertToInstance();
end if;
return self.convertToInstance();',
	1,
	'',
	1347);
INSERT INTO O_NBATTR
	VALUES (1350,
	1050);
INSERT INTO O_BATTR
	VALUES (1350,
	1050);
INSERT INTO O_ATTR
	VALUES (1350,
	1050,
	1351,
	'Modl_Typ',
	'Full Name: Model Type
Description: Indicates what type of model the Imported Class is in.
Data Domain: 5 indicates Class Diagram, 6 indicates Communication Diagram, 7 indicates Synchronous Communication Diagram
enum5: Class Diagram
enum6: Communication Diagram
enum7: Synchronous Communication Diagram
impl_detail: true
readonly: true
User_Visible: false',
	'',
	'Modl_Typ',
	0,
	298,
	'',
	'');
INSERT INTO O_REF
	VALUES (1050,
	701,
	0,
	717,
	1352,
	1353,
	1354,
	1355,
	1356,
	0,
	0,
	'',
	'Subsystem',
	'SS_ID',
	'R3');
INSERT INTO O_RATTR
	VALUES (1355,
	1050,
	717,
	701,
	1,
	'SS_ID');
INSERT INTO O_ATTR
	VALUES (1355,
	1050,
	1350,
	'SS_ID',
	'',
	'',
	'SS_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1357,
	1050,
	'select one model_class related by self->O_OBJ[R101];
if ( empty model_class )
   self.Obj_Name = "Unassigned Imported Class";
else
   self.Obj_Name = model_class.Name;
end if;

',
	1);
INSERT INTO O_BATTR
	VALUES (1357,
	1050);
INSERT INTO O_ATTR
	VALUES (1357,
	1050,
	1355,
	'Obj_Name',
	'Full Name: Class Name
Description:  This attribute provides identifying information for the Class related to this Imported Class.  This is used to associate the Imported Class to its related Class when importing a subsystem containing the Imported Class into a new/different domain.

',
	'',
	'Obj_Name',
	0,
	322,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1358,
	1050,
	'select one model_class related by self->O_OBJ[R101];
if ( empty model_class )
   self.Obj_KL = ::getOrphanedElementKL();
else
   self.Obj_KL = model_class.Key_Lett;
end if;

',
	1);
INSERT INTO O_BATTR
	VALUES (1358,
	1050);
INSERT INTO O_ATTR
	VALUES (1358,
	1050,
	1357,
	'Obj_KL',
	'Full Name: Class Key Letter
Description:  This attribute provides identifying information for the Class related to this Imported class.  This is used to associate the Imported Class to its related class when importing a  subsystem containing the Imported Class into a new/different domain.

',
	'',
	'Obj_KL',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (1050,
	30,
	0,
	150,
	1048,
	1051,
	1049,
	1351,
	1359,
	0,
	0,
	'',
	'Model Class',
	'Obj_ID',
	'R101');
INSERT INTO O_RATTR
	VALUES (1351,
	1050,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (1351,
	1050,
	1360,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1050,
	26,
	0,
	25,
	868,
	1361,
	870,
	1360,
	1362,
	0,
	0,
	'',
	'Packageable Element',
	'Element_ID',
	'R8001');
INSERT INTO O_RATTR
	VALUES (1360,
	1050,
	25,
	26,
	0,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (1360,
	1050,
	0,
	'IObj_ID',
	'Full Name: Imported Class Identifier
Description: Uniquely identifies an instance of imported class',
	'',
	'IObj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1050);
INSERT INTO O_OIDA
	VALUES (1360,
	1050,
	0,
	'IObj_ID');
INSERT INTO O_ID
	VALUES (1,
	1050);
INSERT INTO O_ID
	VALUES (2,
	1050);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1023,
	'Derived Base Attribute',
	107,
	'O_DBATTR',
	'A Derived Attribute is the result of an algorithm used to derive the value. A derived based attribute is said to be mathematically-dependent since is value is derived from other data in the model.  The action for the derived base attribute is used to set the value of the attribute by using the self keyword.',
	979);
INSERT INTO O_TFR
	VALUES (1363,
	1023,
	'dispose',
	'Dispose this Derived Base Attribute.
',
	19,
	1,
	'select one battr related by self->O_BATTR[R107];
unrelate self from battr across R107;
//Body Subsystem
select one body related by self->ACT_DAB[R693]->ACT_ACT[R698];
if (not_empty body)
  body.dispose();
end if;
//
// Finally delete self
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (1364,
	1023,
	'get_name',
	'',
	322,
	1,
	'select one attr related by self->O_BATTR[R107]->O_ATTR[R106];
if (empty attr)
  return ::getOrphanedElementName();
else
  return attr.Name;
end if;',
	1,
	'',
	1363);
INSERT INTO O_TFR
	VALUES (1365,
	1023,
	'convertToInstance',
	'A utility operation to cast an instance of this type to the
instance datatype.

Translate: native
',
	317,
	1,
	'// just return this instance as an Object
return this;
',
	0,
	'',
	1364);
INSERT INTO O_REF
	VALUES (1023,
	1012,
	0,
	1018,
	1021,
	1024,
	1022,
	1366,
	1367,
	0,
	0,
	'',
	'Base Attribute',
	'Attr_ID',
	'R107');
INSERT INTO O_RATTR
	VALUES (1366,
	1023,
	168,
	37,
	1,
	'Attr_ID');
INSERT INTO O_ATTR
	VALUES (1366,
	1023,
	0,
	'Attr_ID',
	'',
	'',
	'Attr_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1368,
	1023,
	'self.Action_Semantics = ::convertRelocatableTags(in:self.Action_Semantics_internal);
',
	1);
INSERT INTO O_BATTR
	VALUES (1368,
	1023);
INSERT INTO O_ATTR
	VALUES (1368,
	1023,
	1369,
	'Action_Semantics',
	'Full Name: Action Semantics Field
Description: This attribute contains the action semantics for the mathematically-dependent attribute.
Persistent:false',
	'',
	'Action_Semantics',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1370,
	1023);
INSERT INTO O_BATTR
	VALUES (1370,
	1023);
INSERT INTO O_ATTR
	VALUES (1370,
	1023,
	1371,
	'Suc_Pars',
	'Full Name: Successful Parse Indicator
Description: Indicates the status of the parse for the derived base attribute action specification in the attribute Action_Semantics
Data Domain: 0=not parsed, 1 = parse successful, 2 = parse unsuccessful, 3 = parse on apply set but never been parsed
',
	'',
	'Suc_Pars',
	0,
	1224,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1371,
	1023);
INSERT INTO O_BATTR
	VALUES (1371,
	1023);
INSERT INTO O_ATTR
	VALUES (1371,
	1023,
	1368,
	'Action_Semantics_internal',
	'User_Visible:false',
	'',
	'Action_Semantics_internal',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (1023,
	1012,
	0,
	1019,
	1021,
	1024,
	1022,
	1369,
	1372,
	0,
	0,
	'',
	'Base Attribute',
	'Obj_ID',
	'R107');
INSERT INTO O_RATTR
	VALUES (1369,
	1023,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (1369,
	1023,
	1366,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1023);
INSERT INTO O_OIDA
	VALUES (1366,
	1023,
	0,
	'Attr_ID');
INSERT INTO O_OIDA
	VALUES (1369,
	1023,
	0,
	'Obj_ID');
INSERT INTO O_ID
	VALUES (1,
	1023);
INSERT INTO O_ID
	VALUES (2,
	1023);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1043,
	'Class Identifier Attribute',
	105,
	'O_OIDA',
	'An attribute that is part of a class identifier is a class identifier attribute.',
	979);
INSERT INTO O_TFR
	VALUES (1373,
	1043,
	'dispose',
	'Dispose this Class Identifier Attribute.
',
	19,
	1,
	'select one attr related by self->O_ATTR[R105];
select one id related by self->O_ID[R105];
unrelate attr from id across R105 using self;
select many rtidas related by self->O_RTIDA[R110];
for each rtida in rtidas
  rtida.dispose();
end for;
delete object instance self;',
	1,
	'',
	1374);
INSERT INTO O_TFR
	VALUES (1374,
	1043,
	'addReference',
	'',
	296,
	1,
	'select any rel from instances of R_REL where selected.Rel_ID == param.rel_id;
select any rgo related by rel->R_OIR[R201]->R_RGO[R203] 
    where selected.Obj_ID == param.rgo_obj_id and selected.OIR_ID == param.rgo_oir_id;
select one rgo_obj related by rgo->R_OIR[R203]->O_OBJ[R201];

newAttr_id = rgo_obj.newReferentialAttribute(ref_obj_id: self.Obj_ID, 
    ref_oid_id: self.Oid_ID, ref_attr_id: self.Attr_ID, id: param.id );

select any ref_attr related by rgo_obj->O_ATTR[R102]->O_RATTR[R106]
    where selected.Attr_ID == newAttr_id;

select any rto related by rel->R_OIR[R201]->R_RTO[R203] 
    where selected.Obj_ID == param.rto_obj_id and selected.OIR_ID == param.rto_oir_id;

// An rtida instance may already exist if we''re adding 
// the second (or subsequent) subtype to an inheritance 
// association
select any rtida related by self->O_RTIDA[R110] 
    where selected.Rel_ID == param.rel_id and selected.OIR_ID == param.rto_oir_id;
if ( empty rtida )
  create object instance rtida of O_RTIDA;
  relate self to rto across R110 using rtida;
end if;

create object instance ref of O_REF;
relate ref to ref_attr across R108;
relate rtida to rgo across R111 using ref;

return newAttr_id;
',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (1375,
	1374,
	'rel_id',
	296,
	0,
	'',
	1376,
	'');
INSERT INTO O_TPARM
	VALUES (1377,
	1374,
	'rto_obj_id',
	296,
	0,
	'',
	1378,
	'');
INSERT INTO O_TPARM
	VALUES (1379,
	1374,
	'rto_oir_id',
	296,
	0,
	'',
	1377,
	'');
INSERT INTO O_TPARM
	VALUES (1380,
	1374,
	'rgo_obj_id',
	296,
	0,
	'',
	1375,
	'');
INSERT INTO O_TPARM
	VALUES (1378,
	1374,
	'rgo_oir_id',
	296,
	0,
	'',
	1380,
	'');
INSERT INTO O_TPARM
	VALUES (1376,
	1374,
	'id',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1381,
	1043,
	'get_name',
	'',
	322,
	1,
	'return "*" + GD::int_to_string(value:self.Oid_ID+1);
',
	1,
	'',
	1373);
INSERT INTO O_TFR
	VALUES (1382,
	1043,
	'getCachedLocalAttributeName',
	'Translate:native',
	322,
	1,
	'	return m_localattributename;',
	0,
	'',
	1381);
INSERT INTO O_TFR
	VALUES (1383,
	1043,
	'setCachedLocalAttributeName',
	'Translate:native',
	19,
	1,
	'	m_localattributename = p_Value;',
	0,
	'',
	1382);
INSERT INTO O_TPARM
	VALUES (1384,
	1383,
	'value',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (1043,
	37,
	0,
	168,
	1037,
	1044,
	1038,
	1059,
	1385,
	0,
	0,
	'',
	'Attribute',
	'Attr_ID',
	'R105');
INSERT INTO O_RATTR
	VALUES (1059,
	1043,
	168,
	37,
	1,
	'Attr_ID');
INSERT INTO O_ATTR
	VALUES (1059,
	1043,
	0,
	'Attr_ID',
	'',
	'',
	'Attr_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1043,
	1039,
	0,
	1041,
	1037,
	1044,
	1040,
	1060,
	1386,
	0,
	0,
	'',
	'Class Identifier',
	'Oid_ID',
	'R105');
INSERT INTO O_RATTR
	VALUES (1060,
	1043,
	1041,
	1039,
	1,
	'Oid_ID');
INSERT INTO O_ATTR
	VALUES (1060,
	1043,
	1061,
	'Oid_ID',
	'Not_participating_value: -1',
	'',
	'Oid_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1043,
	1039,
	0,
	1042,
	1037,
	1044,
	1040,
	1061,
	1387,
	0,
	0,
	'',
	'Class Identifier',
	'Obj_ID',
	'R105');
INSERT INTO O_REF
	VALUES (1043,
	37,
	0,
	169,
	1037,
	1044,
	1038,
	1061,
	1388,
	1387,
	0,
	'',
	'Attribute',
	'Obj_ID',
	'R105');
INSERT INTO O_RATTR
	VALUES (1061,
	1043,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (1061,
	1043,
	1059,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1389,
	1043,
	'select one attribute related by self->O_ATTR[R105];
if(not_empty attribute)
  self.setCachedLocalAttributeName(value: attribute.Name);
  self.localAttributeName = attribute.Name;
else
  self.localAttributeName = self.getCachedLocalAttributeName();
end if;',
	1);
INSERT INTO O_BATTR
	VALUES (1389,
	1043);
INSERT INTO O_ATTR
	VALUES (1389,
	1043,
	1060,
	'localAttributeName',
	'User_Visible:false',
	'',
	'localAttributeName',
	0,
	322,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1043);
INSERT INTO O_OIDA
	VALUES (1059,
	1043,
	0,
	'Attr_ID');
INSERT INTO O_OIDA
	VALUES (1060,
	1043,
	0,
	'Oid_ID');
INSERT INTO O_OIDA
	VALUES (1061,
	1043,
	0,
	'Obj_ID');
INSERT INTO O_ID
	VALUES (1,
	1043);
INSERT INTO O_ID
	VALUES (2,
	1043);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1039,
	'Class Identifier',
	104,
	'O_ID',
	'A set of one or more Attributes which uniquely distinguishes each instance of a class is a class identifier.  A class may have several identifiers.',
	979);
INSERT INTO O_TFR
	VALUES (1390,
	1039,
	'dispose',
	'Dispose this Class Identifier.
',
	19,
	1,
	'select one obj related by self->O_OBJ[R104];
  unrelate self from obj across R104;
select many rtos related by self->R_RTO[R109];
for each rto in rtos
  rto.dispose();
end for;
select many oidas related by self->O_OIDA[R105];
for each oida in oidas
  oida.dispose();
end for;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (1391,
	1039,
	'get_name',
	'',
	322,
	1,
	'return "*" + GD::int_to_string(value:self.Oid_ID+1);
',
	1,
	'',
	1390);
INSERT INTO O_TFR
	VALUES (1392,
	1039,
	'hasAttributes',
	'This is a class based operation because instance based operations are
not allowed on the selected variable in a where clause. which is where we
need to use this operation.  Adding this operation as an MDA was avoided to
prevent a schema change.

',
	316,
	0,
	'select any oid from instances of O_ID where selected.Obj_ID == param.obj_id
  and selected.Oid_ID == param.oid_id;

select any oida related by oid->O_OIDA[R105];
return not_empty oida;
',
	1,
	'',
	1391);
INSERT INTO O_TPARM
	VALUES (1393,
	1392,
	'obj_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1394,
	1392,
	'oid_id',
	298,
	0,
	'',
	1393,
	'');
INSERT INTO O_NBATTR
	VALUES (1041,
	1039);
INSERT INTO O_BATTR
	VALUES (1041,
	1039);
INSERT INTO O_ATTR
	VALUES (1041,
	1039,
	0,
	'Oid_ID',
	'Full Name: Class Identifier Identifier
Description: The identifying attribute set number.
Data Domain: 0 = Primary Identifer Set (e.g., *), 1 = Secondary Identifier Set (e.g., *2), 2 = Third Identifier Set (e.g., *3)
enum0: *1
enum1: *2
enum2: *3
impl_detail: true
readonly: true
',
	'',
	'Oid_ID',
	0,
	298,
	'',
	'');
INSERT INTO O_REF
	VALUES (1039,
	30,
	0,
	150,
	1045,
	1046,
	1047,
	1042,
	1395,
	0,
	0,
	'',
	'Model Class',
	'Obj_ID',
	'R104');
INSERT INTO O_RATTR
	VALUES (1042,
	1039,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (1042,
	1039,
	1041,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1039);
INSERT INTO O_OIDA
	VALUES (1041,
	1039,
	0,
	'Oid_ID');
INSERT INTO O_OIDA
	VALUES (1042,
	1039,
	0,
	'Obj_ID');
INSERT INTO O_ID
	VALUES (1,
	1039);
INSERT INTO O_ID
	VALUES (2,
	1039);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1012,
	'Base Attribute',
	106,
	'O_BATTR',
	'A Base attribute is a non-referential attribute.  Base attributes are either derived base attributes (O_DBATTR) or non-derived base attributes (O_NBATTR).',
	979);
INSERT INTO O_TFR
	VALUES (1396,
	1012,
	'dispose',
	'Dispose this Base Attribute.
',
	19,
	1,
	'select one dbattr related by self->O_DBATTR[R107];
if (not_empty dbattr)
  dbattr.dispose();
else
  select one nbattr related by self->O_NBATTR[R107];
  if (not_empty nbattr)
    nbattr.dispose();
  end if;
end if;
select many rattrs related by self->O_RATTR[R113];
for each rattr in rattrs
  unrelate self from rattr across R113;
end for;
select one attr related by self->O_ATTR[R106];
if (not_empty attr)
  unrelate self from attr across R106;
end if;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (1012,
	37,
	0,
	168,
	1010,
	1013,
	1011,
	1018,
	1397,
	0,
	0,
	'',
	'Attribute',
	'Attr_ID',
	'R106');
INSERT INTO O_RATTR
	VALUES (1018,
	1012,
	168,
	37,
	1,
	'Attr_ID');
INSERT INTO O_ATTR
	VALUES (1018,
	1012,
	0,
	'Attr_ID',
	'',
	'',
	'Attr_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1012,
	37,
	0,
	169,
	1010,
	1013,
	1011,
	1019,
	1398,
	0,
	0,
	'',
	'Attribute',
	'Obj_ID',
	'R106');
INSERT INTO O_RATTR
	VALUES (1019,
	1012,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (1019,
	1012,
	1018,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1012);
INSERT INTO O_OIDA
	VALUES (1018,
	1012,
	0,
	'Attr_ID');
INSERT INTO O_OIDA
	VALUES (1019,
	1012,
	0,
	'Obj_ID');
INSERT INTO O_ID
	VALUES (1,
	1012);
INSERT INTO O_ID
	VALUES (2,
	1012);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1028,
	'Attribute Reference in Class',
	110,
	'O_REF',
	'The class represents an association number (R#) which follows a referential attribute.',
	979);
INSERT INTO O_TFR
	VALUES (1399,
	1028,
	'get_name',
	'Creates a string containing a descriptive name for the instance.',
	322,
	1,
	'select one rel related by self->R_RGO[R111]->R_OIR[R203]->R_REL[R201];
if empty rel 
  return self.RObj_Name + "." + self.RAttr_Name + "(" + self.Rel_Name + ")";
else
  select one attr related by self->O_RTIDA[R111]->O_OIDA[R110]->O_ATTR[R105];
	if(not_empty attr)
	  select one obj related by attr->O_OBJ[R102];
      txt_phrase = self.get_referential_phrase();
	  if not_empty attr and not_empty obj
	    if(txt_phrase == "") 
		  return obj.Name + "." + attr.Name + "(" + rel.get_name() + ")";
		else
		  return obj.Name + "." + attr.Name + "(" + rel.get_name() + "." + Util::getTic() 
		                                               + txt_phrase + Util::getTic() + ")";
		end if;
	  else
	// during import may not be related yet
	    return self.RObj_Name + "." + self.RAttr_Name + "(" + self.Rel_Name + ")";
	  end if;
    else 
	  return self.RObj_Name + "." + self.RAttr_Name + "(" + self.Rel_Name + ")";
    end if;
end if;',
	1,
	'',
	1400);
INSERT INTO O_TFR
	VALUES (1400,
	1028,
	'dispose',
	'Dispose this O_REF.
',
	19,
	1,
	'select one next_ref related by self->O_REF[R112.''precedes''];
select one prior_ref related by self->O_REF[R112.''succeeds''];
if ( not_empty next_ref and not_empty prior_ref )
  // in the middle of the chain
  unrelate self from next_ref across R112.''precedes'';
  unrelate prior_ref from self across R112.''precedes'';
  relate prior_ref to next_ref across R112.''precedes'';
else
  if ( not_empty prior_ref and empty next_ref )
    // we''re last in list
    unrelate prior_ref from self across R112.''precedes'';
  else
    // we''re first in list
    unrelate self from next_ref across R112.''precedes'';
  end if;
end if;
select one owningReferential related by self->O_RATTR[R108];
if not_empty owningReferential
 unrelate self from owningReferential across R108;
end if;
select one rtida related by self->O_RTIDA[R111];
select one rgo related by self->R_RGO[R111];
select one rto related by rtida->R_RTO[R110];
unrelate rtida from rgo across R111 using self;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (1401,
	1028,
	'get_text',
	'',
	322,
	1,
	'result = "R???";
select one rel related by self->R_RGO[R111]->R_OIR[R203]->R_REL[R201];
if ( not_empty rel )
  txt_phrase = self.get_referential_phrase();
  if(txt_phrase == "" or not param.includeTextPhrase)
    result = rel.get_name();
  else
    result = rel.get_name() + "." + Util::getTic() + txt_phrase
                                                               + Util::getTic();
  end if;
else
  result = self.Rel_Name;	   
end if;
//
// Append constrained marker if required
//
if (self.Is_Cstrd)
  result = result + "c";
end if;
return result;',
	1,
	'',
	1399);
INSERT INTO O_TPARM
	VALUES (1402,
	1401,
	'includeTextPhrase',
	316,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1403,
	1028,
	'migrateRefAttrOrDispose',
	'',
	19,
	1,
	'select many siblings related by self->O_RATTR[R108]->O_REF[R108];
if (cardinality siblings == 1)
  // This referential is not going to refer to anything after this . . . 
  select one rattr related by self->O_RATTR[R108];
  select any idattr related by rattr->O_ATTR[R106]->O_OIDA[R105];
  if (empty idattr)
    // this referential has no references left and it''s not part of an identifier
    // it should be removed
    select one attr related by rattr->O_ATTR[R106];
    attr.dispose();
  else
    select any rattr_ref related by idattr->O_RTIDA[R110];
    if ( not_empty rattr_ref )
      // rattr''s identifier is used to formalize another relationship
      // we need to keep it as a base attribute
      rattr.migrateToBase();
    else
      select one attr related by rattr->O_ATTR[R106];
      attr.dispose();
    end if;
  end if;
else
  self.dispose();
end if;
',
	1,
	'',
	1401);
INSERT INTO O_TFR
	VALUES (1404,
	1028,
	'get_referential_phrase',
	'',
	322,
	1,
	'select one rto related by self->O_RTIDA[R111]->R_RTO[R110];
select one cone related by rto->R_AONE[R204];
select one coth related by rto->R_AOTH[R204];
select one casp related by rto->R_PART[R204];
txt_phrase = "";
if(not_empty cone)
  txt_phrase = cone.Txt_Phrs;
end if;
if(not_empty coth)
  txt_phrase = coth.Txt_Phrs;
end if;
if(not_empty casp)
  txt_phrase = casp.Txt_Phrs;
end if;
return txt_phrase;',
	1,
	'',
	1403);
INSERT INTO O_REF
	VALUES (1028,
	1062,
	0,
	1075,
	1067,
	1078,
	1072,
	1405,
	1406,
	0,
	0,
	'',
	'Referred To Identifier Attribute',
	'Oid_ID',
	'R111');
INSERT INTO O_RATTR
	VALUES (1405,
	1028,
	1041,
	1039,
	1,
	'Oid_ID');
INSERT INTO O_ATTR
	VALUES (1405,
	1028,
	1407,
	'ROid_ID',
	'',
	'R',
	'Oid_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1028,
	1062,
	0,
	1073,
	1067,
	1078,
	1072,
	1408,
	1409,
	0,
	0,
	'',
	'Referred To Identifier Attribute',
	'Attr_ID',
	'R111');
INSERT INTO O_RATTR
	VALUES (1408,
	1028,
	168,
	37,
	1,
	'Attr_ID');
INSERT INTO O_ATTR
	VALUES (1408,
	1028,
	1405,
	'RAttr_ID',
	'',
	'R',
	'Attr_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1028,
	985,
	0,
	1069,
	1067,
	1078,
	1068,
	1410,
	1411,
	0,
	0,
	'',
	'Referring Class In Assoc',
	'OIR_ID',
	'R111');
INSERT INTO O_RATTR
	VALUES (1410,
	1028,
	1108,
	1109,
	1,
	'OIR_ID');
INSERT INTO O_ATTR
	VALUES (1410,
	1028,
	1412,
	'OIR_ID',
	'',
	'',
	'OIR_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1028,
	1062,
	0,
	1074,
	1067,
	1078,
	1072,
	1413,
	1414,
	0,
	0,
	'',
	'Referred To Identifier Attribute',
	'OIR_ID',
	'R111');
INSERT INTO O_RATTR
	VALUES (1413,
	1028,
	1108,
	1109,
	1,
	'OIR_ID');
INSERT INTO O_ATTR
	VALUES (1413,
	1028,
	1410,
	'ROIR_ID',
	'',
	'R',
	'OIR_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1028,
	1014,
	0,
	1031,
	1027,
	1029,
	1030,
	1415,
	1416,
	0,
	0,
	'',
	'Referential Attribute',
	'Attr_ID',
	'R108');
INSERT INTO O_RATTR
	VALUES (1415,
	1028,
	168,
	37,
	1,
	'Attr_ID');
INSERT INTO O_ATTR
	VALUES (1415,
	1028,
	1413,
	'Attr_ID',
	'',
	'',
	'Attr_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1035,
	1028);
INSERT INTO O_BATTR
	VALUES (1035,
	1028);
INSERT INTO O_ATTR
	VALUES (1035,
	1028,
	1415,
	'ARef_ID',
	'Full Name: Attribute Reference In Class Identifier
Description: Secondary Identifier
',
	'',
	'ARef_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_REF
	VALUES (1028,
	1028,
	1,
	1035,
	1033,
	1036,
	1034,
	1417,
	1418,
	0,
	0,
	'',
	'Attribute Reference in Class',
	'ARef_ID',
	'R112');
INSERT INTO O_RATTR
	VALUES (1417,
	1028,
	1035,
	1028,
	1,
	'ARef_ID');
INSERT INTO O_ATTR
	VALUES (1417,
	1028,
	1035,
	'PARef_ID',
	'',
	'P',
	'ARef_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1419,
	1028);
INSERT INTO O_BATTR
	VALUES (1419,
	1028);
INSERT INTO O_ATTR
	VALUES (1419,
	1028,
	1417,
	'Is_Cstrd',
	'Full Name: Is Constrained
Description: Signifies a constrained referential
Data Domain: 0 = not  constrained, 1 = constrained',
	'',
	'Is_Cstrd',
	0,
	316,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1420,
	1028);
INSERT INTO O_BATTR
	VALUES (1420,
	1028);
INSERT INTO O_ATTR
	VALUES (1420,
	1028,
	1419,
	'Descrip',
	'Full Name: Attribute Reference in Class Description
Description: Description of the attribute reference.',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1421,
	1028,
	'ModelClass_c base_class = ModelClass_c
			.getOneO_OBJOnR201(ClassInAssociation_c
				.getOneR_OIROnR203(ReferredToClassInAssoc_c
					.getOneR_RTOOnR110(ReferredToIdentifierAttribute_c
						.getOneO_RTIDAOnR111(this))));

if (base_class != null){
	m_robj_name = base_class.getName();
	return m_robj_name;
}
else{
	return m_robj_name;
}',
	0);
INSERT INTO O_BATTR
	VALUES (1421,
	1028);
INSERT INTO O_ATTR
	VALUES (1421,
	1028,
	1420,
	'RObj_Name',
	'Full Name: Referred To Class
Description: Class Name of referencial Attribute.
Calculate the value of Reffered to Class Name.
if it is calculated then set it otherwise use the existing cached value.
Translate: native
In Properties: false',
	'',
	'RObj_Name',
	0,
	322,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1422,
	1028,
	'Attribute_c base_attribute = Attribute_c
			.getOneO_ATTROnR105(ClassIdentifierAttribute_c
				.getOneO_OIDAOnR110(ReferredToIdentifierAttribute_c
					.getOneO_RTIDAOnR111(this)));
if (base_attribute != null){
	m_rattr_name = base_attribute.getName();
	return m_rattr_name;
}
else{
	return m_rattr_name;
}',
	0);
INSERT INTO O_BATTR
	VALUES (1422,
	1028);
INSERT INTO O_ATTR
	VALUES (1422,
	1028,
	1421,
	'RAttr_Name',
	'Full Name: Referred To Attribute
Description: Attribute Name of referencial Attribute in Referred to class.
Calculate the value of Reffered to Attribute Name.
if it is calculated then set it otherwise use the existing cached value.
Translate: native
In Properties: false',
	'',
	'RAttr_Name',
	0,
	322,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1423,
	1028,
	'Association_c base_association = Association_c
			.getOneR_RELOnR201(ClassInAssociation_c
				.getOneR_OIROnR203(ReferredToClassInAssoc_c
					.getOneR_RTOOnR110(ReferredToIdentifierAttribute_c
						.getOneO_RTIDAOnR111(this))));
if (base_association != null){
		String txt_phrase = Get_referential_phrase();
		if (txt_phrase.equals("")) {
			m_rel_name = base_association.Get_name();
		} else {
			m_rel_name = base_association.Get_name() + ".''" + txt_phrase
					+ "''";
		}
		return m_rel_name;
}
else{
	return m_rel_name;
}',
	0);
INSERT INTO O_BATTR
	VALUES (1423,
	1028);
INSERT INTO O_ATTR
	VALUES (1423,
	1028,
	1422,
	'Rel_Name',
	'Full Name: Referenced Over
Description: Name of relation from which referencial attribute comes.
Calculate the value of Refference Over.
if it is calculated then set it otherwise use the existing cached value.
Translate: native
In Properties: false',
	'',
	'Rel_Name',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (1028,
	1062,
	0,
	1076,
	1067,
	1078,
	1072,
	1407,
	1424,
	0,
	0,
	'',
	'Referred To Identifier Attribute',
	'Obj_ID',
	'R111');
INSERT INTO O_RATTR
	VALUES (1407,
	1028,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (1407,
	1028,
	1425,
	'RObj_ID',
	'',
	'R',
	'Obj_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1028,
	1014,
	0,
	1032,
	1027,
	1029,
	1030,
	1425,
	1426,
	0,
	0,
	'',
	'Referential Attribute',
	'Obj_ID',
	'R108');
INSERT INTO O_REF
	VALUES (1028,
	985,
	0,
	1070,
	1067,
	1078,
	1068,
	1425,
	1427,
	1426,
	0,
	'',
	'Referring Class In Assoc',
	'Obj_ID',
	'R111');
INSERT INTO O_RATTR
	VALUES (1425,
	1028,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (1425,
	1028,
	0,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1028,
	985,
	0,
	1071,
	1067,
	1078,
	1068,
	1412,
	1428,
	0,
	0,
	'',
	'Referring Class In Assoc',
	'Rel_ID',
	'R111');
INSERT INTO O_REF
	VALUES (1028,
	1062,
	0,
	1077,
	1067,
	1078,
	1072,
	1412,
	1429,
	1428,
	0,
	'',
	'Referred To Identifier Attribute',
	'Rel_ID',
	'R111');
INSERT INTO O_RATTR
	VALUES (1412,
	1028,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (1412,
	1028,
	1408,
	'Rel_ID',
	'',
	'',
	'Rel_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1028);
INSERT INTO O_OIDA
	VALUES (1405,
	1028,
	0,
	'ROid_ID');
INSERT INTO O_OIDA
	VALUES (1408,
	1028,
	0,
	'RAttr_ID');
INSERT INTO O_OIDA
	VALUES (1410,
	1028,
	0,
	'OIR_ID');
INSERT INTO O_OIDA
	VALUES (1413,
	1028,
	0,
	'ROIR_ID');
INSERT INTO O_OIDA
	VALUES (1407,
	1028,
	0,
	'RObj_ID');
INSERT INTO O_OIDA
	VALUES (1425,
	1028,
	0,
	'Obj_ID');
INSERT INTO O_OIDA
	VALUES (1412,
	1028,
	0,
	'Rel_ID');
INSERT INTO O_ID
	VALUES (1,
	1028);
INSERT INTO O_OIDA
	VALUES (1035,
	1028,
	1,
	'ARef_ID');
INSERT INTO O_ID
	VALUES (2,
	1028);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (37,
	'Attribute',
	103,
	'O_ATTR',
	'An attribute is an abstraction of a single characteristic possessed by a class.  Usually classes contain a set of attributes to completely capture all pertinent information.  Each attribute is given a unique name within a class.',
	979);
INSERT INTO O_TFR
	VALUES (1430,
	37,
	'dispose',
	'Dispose this Attribute.
',
	19,
	1,
	'// Subsystem Subsystem
select many oidas related by self->O_OIDA[R105];
for each oida in oidas
  oida.dispose();
end for;
select one battr related by self->O_BATTR[R106];
if (not_empty battr)
  battr.dispose();
else
  select one rattr related by self->O_RATTR[R106];
  rattr.dispose();
end if;
select one dt related by self->S_DT[R114];
if ( not_empty dt )
  unrelate self from dt across R114;
end if;
select one owningClass related by self->O_OBJ[R102];
select one nextAttr related by self->O_ATTR[R103.''precedes''];
::changeNotificationEnablement(enabled:false);
if(not_empty nextAttr)
  // We need to disable the listeners because the ordering change
  // causes a NPE when the display updates midstream
  if (self.PAttr_ID == GD::NULL_UNIQUE_ID())
    // this attribute is at the top of the list
    unrelate self from nextAttr across R103.''precedes'';
  else
    // otherwise this attribute is somewhere in the middle
    // or at the end
    select many attrs related by owningClass->O_ATTR[R102];
    for each attr in attrs
      select one thisAttr related by attr->O_ATTR[R103.''precedes''];
      if (self == thisAttr)
        // now tell the next attribute that this is not
        // the attribute that it succeeds anymore
        unrelate self from nextAttr across R103.''precedes'';
        // and tell this attribute that it no longer succeeds
        // any attribute. 
        // *NOTE* this is not really required for deletion but
        // more for restoration
        unrelate self from attr across R103.''succeeds'';
        // finally connect the two attributes that this
        // attribute was between
        relate nextAttr to attr across R103.''succeeds'';
        break;
      end if;
    end for;
  end if;
else
  // we are at the end of the list
  select one priorAttr related by self->O_ATTR[R103.''succeeds''];
  if ( not_empty priorAttr )
    unrelate self from priorAttr across R103.''succeeds'';
  end if;
end if;
::changeNotificationEnablement(enabled:true);
unrelate self from owningClass across R102;
//
// Communication and Access Subsystem
select many smoaas related by self->CA_SMOAA[R419];
for each smoaa in smoaas
  smoaa.dispose();
end for;
//
// Value Subsystem
select many selref_set related by self->V_SLR[R812];
for each selref in selref_set
  unrelate self from selref across R812;
end for;
select many attrvals related by self->V_AVL[R806];
for each attrval in attrvals
  unrelate self from attrval across R806;
end for;
//
// Instance Subsystem
select many avls related by self->I_AVL[R2910];
for each avl in avls
  unrelate self from avl across R2910;
  avl.dispose();
end for;
//
// Sequence subsystem
select many attrValues related by self->SQ_AV[R938];
for each attrValue in attrValues
  attrValue.dispose();
end for;
select many dims related by self->S_DIM[R120];
for each dim in dims
  unrelate self from dim across R120;
  delete object instance dim;
end for;
//
// Finally delete self
delete object instance self;',
	1,
	'',
	1431);
INSERT INTO O_TFR
	VALUES (1432,
	37,
	'initialize',
	'Initialize this new Attribute.
',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
self.Prefix = "";
self.Pfx_Mode = 0;
name = ::getUniqueInitialName( 
    instance: self.convertToInstance(), 
    candidateName: "Unnamed Attribute");
success = ::getNewElementName(name:name,instance: self.convertToInstance(),validateName:true);    
if ( success!="") 
 self.Root_Nam=success;
else 
 self.dispose();
end if;        
select any dom from instances of S_DOM;
select any intdt related by dom->S_DT[R14] where selected.Name == "integer";
if not_empty dom
  if(empty intdt)
    // if the integer dt was not found check the system level
    // dts, but only if the domain found is the formal content
    // of a component
    if(dom.participatesInSystem())
      select one system related by dom->CN_DC[R4204]->C_C[R4204]->CP_CP[R4608]
                                                                 ->S_SYS[R4606];
      dt_id = GD::NULL_UNIQUE_ID();
      if not_empty system
        dt_id = system.getCoreTypeId(name:"integer");
      end if;
      select any pe from instances of PE_PE where selected.Element_ID == dt_id;
      select one intdt related by pe->S_DT[R8001]; 
    else
      // this is an error, if the domain is not
      // participating at the system level and
      // we cannot find the type at the domain
      // level we have a problem
      USER::logError(msg:"Unable to locate expected data type: integer",path:"");
    end if;
  end if;
else
  // Owning Class is in a package . . .
  select one system related by self->O_OBJ[R102]->PE_PE[R8001]->
                                                    EP_PKG[R8000]->S_SYS[R1405];
  if not_empty system
    dt_id = system.getCoreTypeId(name:"integer");
    select any pe from instances of PE_PE where selected.Element_ID == dt_id;
    select one intdt related by pe->S_DT[R8001]; 
  else
    // this is an error, if the system is not
    // found we cannot find the core type
    USER::logError(msg:"Unable to locate system root for data type: integer",path:"");
  end if;
end if;
relate self to intdt across R114;
create object instance ba of O_BATTR;
relate self to ba across R106;
create object instance nba of O_NBATTR;
relate ba to nba across R107;',
	1,
	'',
	1433);
INSERT INTO O_TFR
	VALUES (1434,
	37,
	'isAllowedType',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// Attribute::isAllowedType()
select one packageableElem related by self->O_OBJ[R102]->PE_PE[R8001];
select one package related by packageableElem->EP_PKG[R8000];
select one component related by packageableElem->C_C[R8003];
isInGenericPackage = not_empty package or not_empty component;
if isInGenericPackage
  select any dt related by package->PE_VIS[R8002]->
                PE_PE[R8002]->S_DT[R8001] where selected.Name == param.typeName;
  if not_empty component
    select any dt related by component->PE_CVS[R8004]->
                PE_PE[R8004]->S_DT[R8001] where selected.Name == param.typeName;
  end if;
  if not_empty dt
    select one rattr related by self->O_RATTR[R106];
    if ( not_empty rattr )
      select one base_attr related by rattr->O_BATTR[R113]->O_ATTR[R106];
      if ( empty base_attr )
        return  param.typeName == "same_as<Base_Attribute>";
      else
        select one base_dt related by base_attr->S_DT[R114];
        return param.typeName == base_dt.Name;
      end if;
    else
      if ( dt.isCommonAllowedType() )
        return true;
      elif ( param.typeName == "state<State_Model>"  )
        return true;
      end if;
    end if;
  end if;
  return false;
else
  select one dom related by self->O_OBJ[R102]->S_SS[R2]->S_DOM[R1];
  select any dt related by dom->S_DT[R14] where selected.Name == param.typeName;
  if(empty dt)
    if(dom.participatesInSystem())
      select one system related by dom->CN_DC[R4204]->C_C[R4204]->CP_CP[R4608]
                                                                 ->S_SYS[R4606];
      dt_id = GD::NULL_UNIQUE_ID();
      if not_empty system
        dt_id = system.getCoreTypeId(name:param.typeName);
      end if;
      select any pe from instances of PE_PE where selected.Element_ID == dt_id;
      select one dt related by pe->S_DT[R8001]; 
    else
      // this is an error, if the domain is not
      // participating at the system level and
      // we cannot find the type at the domain
      // level we have a problem
      USER::logError(msg:"Unable to locate expected data type.",path:"");
    end if;
  end if;
  if not_empty dt 
    select one rattr related by self->O_RATTR[R106];
    if ( not_empty rattr )
      select one base_attr related by rattr->O_BATTR[R113]->O_ATTR[R106];
      if ( empty base_attr )
        return  param.typeName == "same_as<Base_Attribute>";
      else
        select one base_dt related by base_attr->S_DT[R114];
        return param.typeName == base_dt.Name;
      end if;
    else
      if ( dt.isCommonAllowedType() )
        return true;
      elif ( param.typeName == "state<State_Model>"  )
        return true;
      end if;
    end if;
  end if;
  return false;
end if;',
	1,
	'',
	1432);
INSERT INTO O_TPARM
	VALUES (1435,
	1434,
	'typeName',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1436,
	37,
	'actionFilter',
	'Bridge: UI
',
	316,
	1,
	'if (param.name == "subtype" )
  if (param.value =="O_NBATTR" )
    select one nba related by self->O_BATTR[R106]->O_NBATTR[R107];
    return not_empty nba;
  elif (param.value == "O_DBATTR" )
    select one dba related by self->O_BATTR[R106]->O_DBATTR[R107];
    return not_empty dba;
  elif (param.value == "O_RATTR" )
    select one ra related by self->O_RATTR[R106];
    return not_empty ra;
  end if;
elif (param.name == "id" )
  select many cia related by self->O_OIDA[R105];
  if ( param.value == "none" )
    return empty cia;
  elif ( param.value == "some" )
    return not_empty cia;
  elif ( param.value == "not all" )
    select many id_set related by self->O_OBJ[R102]->O_ID[R104];
    return cardinality cia != cardinality id_set;
  elif ( param.value == "all" )
    select many id_set related by self->O_OBJ[R102]->O_ID[R104];
    return cardinality cia == cardinality id_set;
  end if;
elif (param.name == "can" )
  if ( param.value == "move up" )
    select one prev_attr related by self->O_ATTR[R103.''succeeds''];
    return not_empty prev_attr;
  elif ( param.value == "move down" )
    select one next_attr related by self->O_ATTR[R103.''precedes''];
    return not_empty next_attr;
  elif ( param.value == "combine" )
     select one rattr related by self->O_RATTR[R106];
       if ( not_empty rattr )
         select one base_attr related by rattr->O_BATTR[R113];
          select many candidate_set related by self->O_OBJ[R102]->O_ATTR[R102]->O_RATTR[R106]
            where selected.BAttr_ID == base_attr.Attr_ID and 
                  selected.BObj_ID == base_attr.Obj_ID;
            for each candidate in candidate_set
             if ( not rattr.alreadyCombinedWith( id: candidate.Attr_ID ) )
               return true;
             end if;
           end for;
       end if;
       return false;
  elif ( param.value == "split" )
   	 select one rattr related by self->O_RATTR[R106];
   	  if ( not_empty rattr )
   	    select many ref_set related by rattr->O_REF[R108];
   	    return cardinality ref_set > 1;
      end if;
      return false;  
  elif(param.value == "SetType")
     select one refAttr related by self->O_RATTR[R106];
     if(not_empty refAttr)
       return false;
     else
       return true;
     end if;
   end if;
end if;
return false;
',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (1437,
	1436,
	'name',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1438,
	1436,
	'value',
	322,
	0,
	'',
	1437,
	'');
INSERT INTO O_TFR
	VALUES (1439,
	37,
	'isPartOfId',
	'',
	316,
	1,
	'select any oida related by self->O_OIDA[R105] where (selected.Oid_ID == param.id );
return not_empty oida;
',
	1,
	'',
	1434);
INSERT INTO O_TPARM
	VALUES (1440,
	1439,
	'id',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1441,
	37,
	'migrateBaseToDerived',
	'',
	19,
	1,
	'select one battr related by self->O_BATTR[R106];
if ( not_empty battr )
  select one nbattr related by battr->O_NBATTR[R107];
  if ( not_empty nbattr )
    create object instance dbattr of O_DBATTR;
    dbattr.Suc_Pars = ParseStatus::parseInitial;
    unrelate battr from nbattr across R107;
    relate battr to dbattr across R107;
    delete object instance nbattr;
  end if;
end if;
',
	1,
	'',
	1442);
INSERT INTO O_TFR
	VALUES (1443,
	37,
	'migrateDerivedToBase',
	'',
	19,
	1,
	'select one battr related by self->O_BATTR[R106];
if ( not_empty battr )
  select one dbattr related by battr->O_DBATTR[R107];
  if ( not_empty dbattr )
    create object instance nbattr of O_NBATTR;
    unrelate battr from dbattr across R107;
    relate battr to nbattr across R107;
    delete object instance dbattr;
  end if;
end if;
',
	1,
	'',
	1444);
INSERT INTO O_TFR
	VALUES (1444,
	37,
	'migrateBaseToReferential',
	'',
	19,
	1,
	'select one battr related by self->O_BATTR[R106];
if ( not_empty battr )
  battr.dispose();
end if;
create object instance rattr of O_RATTR;
rattr.Ref_Mode = 1;  // use referred to attribute name
relate self to rattr across R106;

rattr.setDatatype();
',
	1,
	'',
	1441);
INSERT INTO O_TFR
	VALUES (1445,
	37,
	'moveUp',
	'',
	19,
	1,
	'::changeNotificationEnablement(enabled:false);
select one prev_attr related by self->O_ATTR[R103.''succeeds''];
select one prev_prev_attr related by prev_attr->O_ATTR[R103.''succeeds''];
select one next_attr related by self->O_ATTR[R103.''precedes''];

if ( not_empty prev_prev_attr )
  unrelate prev_attr from prev_prev_attr across R103.''succeeds'';
end if;
if ( not_empty next_attr )
  unrelate next_attr from self across R103.''succeeds'';
end if;
unrelate self from prev_attr across R103.''succeeds'';

if ( not_empty prev_prev_attr )
  relate self to prev_prev_attr across R103.''succeeds'';
end if;
// want to enable listeners at the last possible moment
if ( empty next_attr )
  ::changeNotificationEnablement(enabled:true);
end if;
relate prev_attr to self across R103.''succeeds'';
if ( not_empty next_attr )
  ::changeNotificationEnablement(enabled:true);
  relate next_attr to prev_attr across R103.''succeeds'';
end if;
',
	1,
	'',
	1446);
INSERT INTO O_TFR
	VALUES (1446,
	37,
	'moveDown',
	'',
	19,
	1,
	'::changeNotificationEnablement(enabled:false);
select one next_attr related by self->O_ATTR[R103.''precedes''];
select one prev_attr related by self->O_ATTR[R103.''succeeds''];
select one next_next_attr related by next_attr->O_ATTR[R103.''precedes''];

if ( not_empty next_next_attr )
  unrelate next_next_attr from next_attr across R103.''succeeds'';
end if;
if ( not_empty prev_attr )
  unrelate self from prev_attr across R103.''succeeds'';
end if;
unrelate next_attr from self across R103.''succeeds'';

if ( not_empty prev_attr )
  relate next_attr to prev_attr across R103.''succeeds'';
end if;
   
// want to enable listeners at the last possible moment
if ( empty next_next_attr )
  ::changeNotificationEnablement(enabled:true);
end if;
relate self to next_attr across R103.''succeeds'';
if ( not_empty next_next_attr )
  ::changeNotificationEnablement(enabled:true);
  relate next_next_attr to self across R103.''succeeds'';
end if;',
	1,
	'',
	1443);
INSERT INTO O_TFR
	VALUES (1447,
	37,
	'addToIdentifier',
	'',
	19,
	1,
	'select any oid related by self->O_OBJ[R102]->O_ID[R104]
     where selected.Oid_ID == param.oid;
create object instance oida of O_OIDA;
relate self to oid across R105 using oida;
select many rto_set related by oid->R_RTO[R109];
for each rto in rto_set
  rto.addAttributeToIdentifier( attr_id: self.Attr_ID );
end for;',
	1,
	'',
	1436);
INSERT INTO O_TPARM
	VALUES (1448,
	1447,
	'oid',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1449,
	37,
	'removeFromIdentifier',
	'',
	322,
	1,
	'select any oida related by self->O_OIDA[R105]
    where selected.Oid_ID == param.oid;
select one oid related by oida->O_ID[R105];
select many id_attr_set related by oid->O_OIDA[R105];
if ( cardinality id_attr_set == 1 )
  // if this is the last attribute in this id, make sure it''s not
  // being referenced
  select any rtida related by oida->O_RTIDA[R110];
  if ( not_empty rtida )
    return "Operation not allowed.  Cannot remove the last attribute from an identifying attribute used to formalize an association.";
  end if;
end if;

oida.dispose();

return "";
',
	1,
	'',
	1445);
INSERT INTO O_TPARM
	VALUES (1450,
	1449,
	'oid',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1451,
	37,
	'canDelete',
	'',
	316,
	1,
	'if (self.Name == "current_state")
  select one dt related by self->S_DT[R114];
  if (dt.Name == "state<State_Model>")
    select one ism related by self->O_OBJ[R102]->SM_ISM[R518];
    if (not_empty ism)
      /*Now check if there are other attributes with same name & dt, if there 
      are any let this be deleteable and renameable*/
      select many attrs related by self->O_OBJ[R102]->O_ATTR[R102] where selected.Name == "current_state";
      if (cardinality attrs > 1)
        exist = false;
        for each attr in attrs
          select one adt related by attr->S_DT[R114];
          if (adt.Name == "state<State_Model>" and self != attr)
            exist = true;
          end if;
        end for;
        return exist;
      else
        return false;
      end if;
    end if;
  end if;
else   
  select one refAttr related by self->O_RATTR[R106];
  if (not_empty refAttr)
    return false;
  end if;
end if;
return true;',
	1,
	'',
	1447);
INSERT INTO O_TFR
	VALUES (1452,
	37,
	'canRename',
	'',
	316,
	1,
	'if (self.Name == "current_state")
  select one dt related by self->S_DT[R114];
  if (dt.Name == "state<State_Model>")
    select one ism related by self->O_OBJ[R102]->SM_ISM[R518];
    if (not_empty ism)
      /*Now check if there are other attributes with same name & dt, if there 
      are any let this be deleteable and renameable*/
      select many attrs related by self->O_OBJ[R102]->O_ATTR[R102] where selected.Name == "current_state";
      if (cardinality attrs > 1)
        exist = false;
        for each attr in attrs
          select one adt related by attr->S_DT[R114];
          if (adt.Name == "state<State_Model>" and self != attr)
            exist = true;
          end if;
        end for;
        return exist;
      else
        return false;
      end if;
    end if;
  end if;
else   
  select one refAttr related by self->O_RATTR[R106];
  if (not_empty refAttr)
    if (refAttr.Ref_Mode != 0)
      return false;
    end if;
  end if;
end if;
return true;',
	1,
	'',
	1453);
INSERT INTO O_TFR
	VALUES (1433,
	37,
	'get_root',
	'',
	322,
	1,
	'select one battr related by self->O_BATTR[R106];
if ( not_empty battr )
  return self.Root_Nam;
else
  select one rattr related by self->O_RATTR[R106];
  return rattr.get_root();
end if;',
	1,
	'',
	1454);
INSERT INTO O_TFR
	VALUES (1454,
	37,
	'get_prefix',
	'',
	322,
	1,
	'select one battr related by self->O_BATTR[R106];
if ( not_empty battr )
  if ( self.Pfx_Mode == 1 )  // use local prefix
    return self.Prefix;
  else
    // can''t be referred to prefix, must be no prefix
    return "";
  end if;
else
  select one rattr related by self->O_RATTR[R106];
  return rattr.get_prefix();
end if;',
	1,
	'',
	1455);
INSERT INTO O_TFR
	VALUES (1431,
	37,
	'convertToInstance',
	'A utility operation to cast an instance of this type to the
instance datatype.

Translate: native',
	317,
	1,
	'// just return this instance as an Object
return this;',
	0,
	'',
	1452);
INSERT INTO O_TFR
	VALUES (1455,
	37,
	'get_ooa_id',
	'',
	296,
	1,
	'return self.Attr_ID;',
	1,
	'',
	1456);
INSERT INTO O_TFR
	VALUES (1457,
	37,
	'resolveDatatype',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.

// if this attribute is a proxy do not
// try to resolve the dt, it can be a
// proxy when a supertype model class
// has been exported for state machine
// resolution purposes
if(Util::isProxy(element:self.convertToInstance()))
  return;
end if;

select one dtProxy related by self->S_DT[R114];
if(not_empty dtProxy)
  name = dtProxy.Name;
  unrelate dtProxy from self across R114;
  
  select one packageableElem related by self->O_OBJ[R102]->PE_PE[R8001];
  select one package related by packageableElem->EP_PKG[R8000];
  select one component related by packageableElem->C_C[R8003];
  isInGenericPackage = not_empty package or not_empty component;
  if isInGenericPackage
    id = packageableElem.resolveDataTypeRelativeToSelf(default_name:"integer",
                                                            expected_name:name);                                                          
    select any resolvedDt related by package->PE_VIS[R8002]->
                         PE_PE[R8002]->S_DT[R8001] where selected.DT_ID == id;
    if (empty resolvedDt)
      select any resolvedDt related by component->PE_CVS[R8004]->
                       PE_PE[R8004]->S_DT[R8001] where selected.DT_ID == id;
    end if;	
    if not_empty resolvedDt
      relate resolvedDt to self across R114;
    end if;
  else
    select one domain related by self->O_OBJ[R102]->S_SS[R2]->S_DOM[R1];
    id = domain.resolveDataTypeRelativeToSelf(default_name:"integer",
  													        expected_name:name);
    // until we have instance reference passing, we search for
    // the data type related to the domain first then to the
    // system
    select any resolvedDT related by domain->S_DT[R14]
  												   where (selected.DT_ID == id);
    if(empty resolvedDT)
      select one system related by domain->CN_DC[R4204]->C_C[R4204]
    				                               ->CP_CP[R4608]->S_SYS[R4606];
      select any resolvedDT related by system->SLD_SDINP[R4402]->S_DT[R4401]
    				 						       where (selected.DT_ID == id);
      if empty resolvedDT and not_empty system and system.useGlobals
        select any resolvedDT related by system->G_EIS[R9100]->PE_PE[R9100]->
                                       S_DT[R8001] where (selected.DT_ID == id);
      end if;
    end if;
    if(not_empty resolvedDT)
      relate resolvedDT to self across R114;
    end if;
  end if;
end if;',
	1,
	'',
	1458);
INSERT INTO O_TFR
	VALUES (1456,
	37,
	'getDimensionsCnt',
	'',
	298,
	1,
	'select many dims related by self->S_DIM[R120];
dimensions = cardinality dims;
return dimensions;',
	1,
	'',
	1430);
INSERT INTO O_TFR
	VALUES (1458,
	37,
	'resizeDimensions',
	'',
	19,
	1,
	'// If the number of dimensions has increased then add dimensions
while (param.numDimensions > self.getDimensionsCnt())
  create object instance dim of S_DIM;
  dim.dimensionCount = self.getDimensionsCnt();
  relate dim to self across R120;
end while;

// If the number of dimensions has decreased then remove dimensions
while (param.numDimensions < self.getDimensionsCnt())
  select any dim related by self->S_DIM[R120] where (selected.dimensionCount == (self.getDimensionsCnt()-1));
  unrelate dim from self across R120;
  delete object instance dim;
end while;

// Update the specific dimension that was passed-in if its elementCount has 
// changed.
if (param.numDimensions > 0) 
  select any dim related by self->S_DIM[R120] where (selected.dimensionCount == param.dimension);
  if (dim.elementCount != param.elementCount)
    dim.elementCount = param.elementCount;
  end if;
end if;
',
	1,
	'',
	1449);
INSERT INTO O_TPARM
	VALUES (1459,
	1458,
	'numDimensions',
	298,
	0,
	'',
	1460,
	'');
INSERT INTO O_TPARM
	VALUES (1460,
	1458,
	'elementCount',
	298,
	0,
	'',
	1461,
	'');
INSERT INTO O_TPARM
	VALUES (1461,
	1458,
	'dimension',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1453,
	37,
	'canReferToDataType',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// select the dt
select one dt related by self->S_DT[R114];
if(not_empty dt)
  select one packageableElem related by self->O_OBJ[R102]->PE_PE[R8001];
  select one package related by packageableElem->EP_PKG[R8000];
  select one component related by packageableElem->C_C[R8003];
  isInGenericPackage = not_empty package or not_empty component;

  if (isInGenericPackage)
    return packageableElem.canReferToDataType(dtID:dt.DT_ID, dtName: dt.Name);
  else
    // if the data type package is at the system
    // level we can use the data type as long as
    // this element belongs to a formal component
    select one domain related by self->O_OBJ[R102]->S_SS[R2]->S_DOM[R1];
    select one dtPkg related by dt->S_DIP[R39]->S_DPK[R39];
    if(not dtPkg.isDomainLevel())
      if(domain.participatesInSystem())
        return true;
      else
        return false;
      end if;
    else
      // otherwise the DT must be in the same domain
      select one dtDomain related by dt->S_DOM[R14];
      if(dtDomain == domain)
        return true;
      end if;
    end if;
  end if;   
end if;
return false;',
	1,
	'',
	1451);
INSERT INTO O_TFR
	VALUES (1442,
	37,
	'isReferringToDefaultDataType',
	'',
	316,
	1,
	'select one dt related by self->S_DT[R114];
elementType = Util::getSimpleClassName(element:self.convertToInstance());
if(dt.Name == S_DT::getDefaultDataTypeName(elementType:elementType))
  return true;
end if;
return false;',
	1,
	'',
	1439);
INSERT INTO O_TFR
	VALUES (1462,
	37,
	'canUseDataType',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// Attribute::canUseDataType()
select one packageableElem related by self->O_OBJ[R102]->PE_PE[R8001];
select one package related by packageableElem->EP_PKG[R8000];
select one component related by packageableElem->C_C[R8003];
isInGenericPackage = not_empty package or not_empty component;
if isInGenericPackage
  // Find the previously created visibility list
  select any resultSet related by package->PE_SRS[R8005] where
        selected.Name == "" and selected.Type == ElementTypeConstants::DATATYPE;
  select any dt related by resultSet->PE_VIS[R8006]->
                     PE_PE[R8002]->S_DT[R8001] where selected.DT_ID == param.id;
  if not_empty component
    // Find the previously created visibility list
    select any compResultSet related by component->PE_CRS[R8007] where
        selected.Name == "" and selected.Type == ElementTypeConstants::DATATYPE;
    select any dt related by compResultSet->PE_CVS[R8008]->
                     PE_PE[R8004]->S_DT[R8001] where selected.DT_ID == param.id;
  end if;
  if(not_empty dt)
    if(self.isAllowedType(typeName:dt.Name))
      return true;
    end if;
  end if;
  return false;
else
  select one domain related by self->O_OBJ[R102]->S_SS[R2]->S_DOM[R1];
  if not_empty domain
    if(domain.participatesInSystem())
      // system level check both the system
      // and the domain for the dt
      select one system related by domain->CN_DC[R4204]->C_C[R4204]->
                                                     CP_CP[R4608]->S_SYS[R4606];
      select any dt related by system->SLD_SDINP[R4402]->S_DT[R4401]
                                             where (selected.DT_ID == param.id);
      if empty dt and not_empty system and system.useGlobals
        select any dt related by system->G_EIS[R9100]->PE_PE[R9100]->
                                 S_DT[R8001] where (selected.DT_ID == param.id);
      end if;
      if(empty dt)
        select any dt related by domain->S_DT[R14]
                                             where (selected.DT_ID == param.id);
      end if;
      if(not_empty dt)
        if(self.isAllowedType(typeName:dt.Name))
          return true;
        end if;
      end if;
    else
      // only check the domain for the dt
      select any dt related by domain->S_DT[R14] where (selected.DT_ID == param.id);
      if(not_empty dt)
        if(self.isAllowedType(typeName:dt.Name))
          return true;
        end if;
      end if;
    end if;
  else
    select one system related by self->O_OBJ[R102]->PE_PE[R8001]->
                                                    EP_PKG[R8000]->S_SYS[R1405];
    select any dt related by system->SLD_SDINP[R4402]->S_DT[R4401]
                                             where (selected.DT_ID == param.id);
    if empty dt and not_empty system and system.useGlobals
      select any dt related by system->G_EIS[R9100]->PE_PE[R9100]->
                                 S_DT[R8001] where (selected.DT_ID == param.id);
    end if;
    if not_empty dt
      if self.isAllowedType(typeName:dt.Name)
        return true;
      end if;
    end if;
  end if;
  return false;
end if;',
	1,
	'',
	1457);
INSERT INTO O_TPARM
	VALUES (1463,
	1462,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1464,
	37,
	'checkIntegrity',
	'',
	19,
	1,
	'// check for any attributes with the same name
select one package related by self->O_OBJ[R102]->PE_PE[R8001]->EP_PKG[R8000];
select many attributes related by self->O_OBJ[R102]->O_ATTR[R102];
for each attribute in attributes
  if(attribute != self and attribute.Name == self.Name)
    select one system related by package->S_SYS[R1405];
    sys_id = GD::NULL_UNIQUE_ID();
    if(not_empty system)
      sys_id = system.Sys_ID;
    end if;
    select one class related by self->O_OBJ[R102];
	MI_IM::createIssue(sys_id:sys_id, description:
	               "Found another attribute under the same class " +
	            "with the same name.", severity:Severity::Error, name:self.Name,
	   path:class.getPath(path:self.Name, includeSelf:true), id:self.Attr_ID,
	                                          element:self.convertToInstance());
  end if;
end for;',
	1,
	'',
	1462);
INSERT INTO O_NBATTR
	VALUES (168,
	37);
INSERT INTO O_BATTR
	VALUES (168,
	37);
INSERT INTO O_ATTR
	VALUES (168,
	37,
	0,
	'Attr_ID',
	'Full Name: Attribute Identifier
Description: A unique identifier for an instance of attribute.',
	'',
	'Attr_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_REF
	VALUES (37,
	37,
	0,
	168,
	1004,
	1006,
	1005,
	1465,
	1466,
	0,
	0,
	'',
	'Attribute',
	'Attr_ID',
	'R103');
INSERT INTO O_RATTR
	VALUES (1465,
	37,
	168,
	37,
	1,
	'Attr_ID');
INSERT INTO O_ATTR
	VALUES (1465,
	37,
	169,
	'PAttr_ID',
	'',
	'P',
	'Attr_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1467,
	37,
	'if ( self.Pfx_Mode == 1 )  // use local prefix
  select one rattr related by self->O_RATTR[R106];
  if ( empty rattr )
    self.Name = self.Prefix + self.Root_Nam;
  else
    self.Name = self.Prefix + rattr.get_root_name();
      end if;
elif ( self.Pfx_Mode == 2 )  // use referred to prefix
  select one rattr related by self->O_RATTR[R106];
  if ( empty rattr )
    self.Name = ::getOrphanedElementName();
  else
    self.Name = rattr.get_prefix_string() + rattr.get_root_name();
      end if;
else  // no prefix
  select one rattr related by self->O_RATTR[R106];
  if ( empty rattr )
    self.Name = self.Root_Nam;
  else
    self.Name = rattr.get_root_name();
  end if;
end if;
',
	1);
INSERT INTO O_BATTR
	VALUES (1467,
	37);
INSERT INTO O_ATTR
	VALUES (1467,
	37,
	1465,
	'Name',
	'Full Name: Attribute Name
Description: The name of the class attribute as it appears on the OIM of the application analysis domain.  The name of the class attribute is mathematically derived from ''O_ATTR.Root_Nam'', ''O_ATTR.Prefix'', and ''O_ATTR.Prx_Mode''.',
	'',
	'Name',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1468,
	37);
INSERT INTO O_BATTR
	VALUES (1468,
	37);
INSERT INTO O_ATTR
	VALUES (1468,
	37,
	1467,
	'Descrip',
	'Full Name: Description
Description:  A textual description of the class attribute as specified in the application analysis domain.',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1469,
	37);
INSERT INTO O_BATTR
	VALUES (1469,
	37);
INSERT INTO O_ATTR
	VALUES (1469,
	37,
	1468,
	'Prefix',
	'Full Name: Attribute Name Prefix
Description: Prefix for the attribute.',
	'',
	'Prefix',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1470,
	37);
INSERT INTO O_BATTR
	VALUES (1470,
	37);
INSERT INTO O_ATTR
	VALUES (1470,
	37,
	1469,
	'Root_Nam',
	'Full Name: Attribute Root Name
Description: The root name (name without prefix) of the attribute',
	'',
	'Root_Nam',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1471,
	37);
INSERT INTO O_BATTR
	VALUES (1471,
	37);
INSERT INTO O_ATTR
	VALUES (1471,
	37,
	1470,
	'Pfx_Mode',
	'Full Name: Prefix Mode
Description: Indicates usage of a prefix.
Data Domain: 0 = uses no prefix, 1 = uses local prefix, 2 = uses referred to prefix

enum0: No Prefix
enum1: Prefix
enum2: Referred To Prefix
',
	'',
	'Pfx_Mode',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1472,
	37);
INSERT INTO O_BATTR
	VALUES (1472,
	37);
INSERT INTO O_ATTR
	VALUES (1472,
	37,
	1473,
	'Dimensions',
	'Full Name: Array Dimensions',
	'',
	'Dimensions',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1474,
	37);
INSERT INTO O_BATTR
	VALUES (1474,
	37);
INSERT INTO O_ATTR
	VALUES (1474,
	37,
	1472,
	'DefaultValue',
	'Full Name: Default Value
Description: This attribute holds text representing the initialization value for this attribute upon instance creation.
',
	'',
	'DefaultValue',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (37,
	32,
	0,
	156,
	1007,
	1009,
	1008,
	1473,
	1475,
	0,
	0,
	'',
	'Data Type',
	'DT_ID',
	'R114');
INSERT INTO O_RATTR
	VALUES (1473,
	37,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (1473,
	37,
	1471,
	'DT_ID',
	'',
	'',
	'Element_ID',
	2,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (37,
	30,
	0,
	150,
	1001,
	1002,
	1003,
	169,
	1476,
	0,
	0,
	'',
	'Model Class',
	'Obj_ID',
	'R102');
INSERT INTO O_REF
	VALUES (37,
	37,
	0,
	169,
	1004,
	1006,
	1005,
	169,
	1477,
	1476,
	0,
	'',
	'Attribute',
	'Obj_ID',
	'R103');
INSERT INTO O_RATTR
	VALUES (169,
	37,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (169,
	37,
	168,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	37);
INSERT INTO O_OIDA
	VALUES (168,
	37,
	0,
	'Attr_ID');
INSERT INTO O_OIDA
	VALUES (169,
	37,
	0,
	'Obj_ID');
INSERT INTO O_ID
	VALUES (1,
	37);
INSERT INTO O_ID
	VALUES (2,
	37);
-- BP 7.1 content: Subsystem syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SS
	VALUES (1478,
	'State Machine',
	'Classes (O_OBJ) that have interesting behavior are given lifecycles. These lifecycles are described using state machines (SM_SM). A state machine consists of states, events, transitions and state actions. The state machine exists for each instance of the class for which it has been modeled (SM_ISM). A state machine can also be an assigner state machine (SM_ASM) of which only one can exists for all class instances. The purpose of the assigner state machine is to act as a single point of control through which competing requests are serialized.',
	'SM',
	501,
	1,
	1479);
INSERT INTO S_SID
	VALUES (1,
	1478);
INSERT INTO O_IOBJ
	VALUES (1480,
	32,
	5,
	1478,
	'Data Type',
	'S_DT');
INSERT INTO O_IOBJ
	VALUES (1481,
	30,
	5,
	1478,
	'Model Class',
	'O_OBJ');
INSERT INTO O_IOBJ
	VALUES (1482,
	1483,
	0,
	1478,
	'Provided Signal',
	'SPR_PS');
INSERT INTO O_IOBJ
	VALUES (1484,
	1485,
	0,
	1478,
	'Required Signal',
	'SPR_RS');
INSERT INTO O_IOBJ
	VALUES (1486,
	59,
	0,
	1478,
	'Dimensions',
	'S_DIM');
INSERT INTO R_SIMP
	VALUES (1487);
INSERT INTO R_REL
	VALUES (1487,
	502,
	'',
	1478);
INSERT INTO R_FORM
	VALUES (1488,
	1487,
	1489,
	1,
	1,
	'can be communicated to via');
INSERT INTO R_RGO
	VALUES (1488,
	1487,
	1489);
INSERT INTO R_OIR
	VALUES (1488,
	1487,
	1489,
	0);
INSERT INTO R_PART
	VALUES (565,
	1487,
	1490,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (564,
	565,
	0,
	1487,
	1490);
INSERT INTO R_RTO
	VALUES (565,
	1487,
	1490,
	0);
INSERT INTO R_OIR
	VALUES (565,
	1487,
	1490,
	0);
INSERT INTO R_SIMP
	VALUES (1491);
INSERT INTO R_REL
	VALUES (1491,
	501,
	'',
	1478);
INSERT INTO R_FORM
	VALUES (1492,
	1491,
	1493,
	1,
	1,
	'is decomposed into');
INSERT INTO R_RGO
	VALUES (1492,
	1491,
	1493);
INSERT INTO R_OIR
	VALUES (1492,
	1491,
	1493,
	0);
INSERT INTO R_PART
	VALUES (565,
	1491,
	1494,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (564,
	565,
	0,
	1491,
	1494);
INSERT INTO R_RTO
	VALUES (565,
	1491,
	1494,
	0);
INSERT INTO R_OIR
	VALUES (565,
	1491,
	1494,
	0);
INSERT INTO R_SUBSUP
	VALUES (1495);
INSERT INTO R_REL
	VALUES (1495,
	504,
	'',
	1478);
INSERT INTO R_SUPER
	VALUES (1496,
	1495,
	1497);
INSERT INTO O_RTIDA
	VALUES (1498,
	1496,
	0,
	1495,
	1497);
INSERT INTO O_RTIDA
	VALUES (1499,
	1496,
	0,
	1495,
	1497);
INSERT INTO O_RTIDA
	VALUES (1500,
	1496,
	0,
	1495,
	1497);
INSERT INTO O_RTIDA
	VALUES (1501,
	1496,
	0,
	1495,
	1497);
INSERT INTO R_RTO
	VALUES (1496,
	1495,
	1497,
	0);
INSERT INTO R_OIR
	VALUES (1496,
	1495,
	1497,
	0);
INSERT INTO R_SUB
	VALUES (1502,
	1495,
	1503);
INSERT INTO R_RGO
	VALUES (1502,
	1495,
	1503);
INSERT INTO R_OIR
	VALUES (1502,
	1495,
	1503,
	0);
INSERT INTO R_SUB
	VALUES (1504,
	1495,
	1505);
INSERT INTO R_RGO
	VALUES (1504,
	1495,
	1505);
INSERT INTO R_OIR
	VALUES (1504,
	1495,
	1505,
	0);
INSERT INTO R_SUB
	VALUES (1506,
	1495,
	1507);
INSERT INTO R_RGO
	VALUES (1506,
	1495,
	1507);
INSERT INTO R_OIR
	VALUES (1506,
	1495,
	1507,
	0);
INSERT INTO R_SUBSUP
	VALUES (1508);
INSERT INTO R_REL
	VALUES (1508,
	507,
	'',
	1478);
INSERT INTO R_SUPER
	VALUES (1509,
	1508,
	1510);
INSERT INTO O_RTIDA
	VALUES (1511,
	1509,
	0,
	1508,
	1510);
INSERT INTO O_RTIDA
	VALUES (1512,
	1509,
	0,
	1508,
	1510);
INSERT INTO R_RTO
	VALUES (1509,
	1508,
	1510,
	0);
INSERT INTO R_OIR
	VALUES (1509,
	1508,
	1510,
	0);
INSERT INTO R_SUB
	VALUES (1513,
	1508,
	1514);
INSERT INTO R_RGO
	VALUES (1513,
	1508,
	1514);
INSERT INTO R_OIR
	VALUES (1513,
	1508,
	1514,
	0);
INSERT INTO R_SUB
	VALUES (1515,
	1508,
	1516);
INSERT INTO R_RGO
	VALUES (1515,
	1508,
	1516);
INSERT INTO R_OIR
	VALUES (1515,
	1508,
	1516,
	0);
INSERT INTO R_SUB
	VALUES (1506,
	1508,
	1517);
INSERT INTO R_RGO
	VALUES (1506,
	1508,
	1517);
INSERT INTO R_OIR
	VALUES (1506,
	1508,
	1517,
	0);
INSERT INTO R_SIMP
	VALUES (1518);
INSERT INTO R_REL
	VALUES (1518,
	508,
	'',
	1478);
INSERT INTO R_FORM
	VALUES (1513,
	1518,
	1519,
	1,
	1,
	'is origination of');
INSERT INTO R_RGO
	VALUES (1513,
	1518,
	1519);
INSERT INTO R_OIR
	VALUES (1513,
	1518,
	1519,
	0);
INSERT INTO R_PART
	VALUES (1492,
	1518,
	1520,
	0,
	0,
	'originates from');
INSERT INTO O_RTIDA
	VALUES (1521,
	1492,
	0,
	1518,
	1520);
INSERT INTO O_RTIDA
	VALUES (1522,
	1492,
	0,
	1518,
	1520);
INSERT INTO R_RTO
	VALUES (1492,
	1518,
	1520,
	0);
INSERT INTO R_OIR
	VALUES (1492,
	1518,
	1520,
	0);
INSERT INTO R_SIMP
	VALUES (1523);
INSERT INTO R_REL
	VALUES (1523,
	506,
	'',
	1478);
INSERT INTO R_FORM
	VALUES (1509,
	1523,
	1524,
	1,
	1,
	'is destination of');
INSERT INTO R_RGO
	VALUES (1509,
	1523,
	1524);
INSERT INTO R_OIR
	VALUES (1509,
	1523,
	1524,
	0);
INSERT INTO R_PART
	VALUES (1492,
	1523,
	1525,
	0,
	0,
	'is destined to');
INSERT INTO O_RTIDA
	VALUES (1526,
	1492,
	1,
	1523,
	1525);
INSERT INTO O_RTIDA
	VALUES (1522,
	1492,
	1,
	1523,
	1525);
INSERT INTO O_RTIDA
	VALUES (1521,
	1492,
	1,
	1523,
	1525);
INSERT INTO R_RTO
	VALUES (1492,
	1523,
	1525,
	1);
INSERT INTO R_OIR
	VALUES (1492,
	1523,
	1525,
	0);
INSERT INTO R_SIMP
	VALUES (1527);
INSERT INTO R_REL
	VALUES (1527,
	505,
	'',
	1478);
INSERT INTO R_FORM
	VALUES (1509,
	1527,
	1528,
	1,
	1,
	'contains');
INSERT INTO R_RGO
	VALUES (1509,
	1527,
	1528);
INSERT INTO R_OIR
	VALUES (1509,
	1527,
	1528,
	0);
INSERT INTO R_PART
	VALUES (565,
	1527,
	1529,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (564,
	565,
	0,
	1527,
	1529);
INSERT INTO R_RTO
	VALUES (565,
	1527,
	1529,
	0);
INSERT INTO R_OIR
	VALUES (565,
	1527,
	1529,
	0);
INSERT INTO R_SUBSUP
	VALUES (1530);
INSERT INTO R_REL
	VALUES (1530,
	510,
	'',
	1478);
INSERT INTO R_SUPER
	VALUES (565,
	1530,
	1531);
INSERT INTO O_RTIDA
	VALUES (564,
	565,
	0,
	1530,
	1531);
INSERT INTO R_RTO
	VALUES (565,
	1530,
	1531,
	0);
INSERT INTO R_OIR
	VALUES (565,
	1530,
	1531,
	0);
INSERT INTO R_SUB
	VALUES (1532,
	1530,
	1533);
INSERT INTO R_RGO
	VALUES (1532,
	1530,
	1533);
INSERT INTO R_OIR
	VALUES (1532,
	1530,
	1533,
	0);
INSERT INTO R_SUB
	VALUES (1534,
	1530,
	1535);
INSERT INTO R_RGO
	VALUES (1534,
	1530,
	1535);
INSERT INTO R_OIR
	VALUES (1534,
	1530,
	1535,
	0);
INSERT INTO R_ASSOC
	VALUES (1536);
INSERT INTO R_REL
	VALUES (1536,
	511,
	'',
	1478);
INSERT INTO R_AONE
	VALUES (1534,
	1536,
	1537,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (1538,
	1534,
	0,
	1536,
	1537);
INSERT INTO R_RTO
	VALUES (1534,
	1536,
	1537,
	0);
INSERT INTO R_OIR
	VALUES (1534,
	1536,
	1537,
	0);
INSERT INTO R_AOTH
	VALUES (1492,
	1536,
	1539,
	1,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (1521,
	1492,
	0,
	1536,
	1539);
INSERT INTO O_RTIDA
	VALUES (1522,
	1492,
	0,
	1536,
	1539);
INSERT INTO R_RTO
	VALUES (1492,
	1536,
	1539,
	0);
INSERT INTO R_OIR
	VALUES (1492,
	1536,
	1539,
	0);
INSERT INTO R_ASSR
	VALUES (1540,
	1536,
	1541,
	0);
INSERT INTO R_RGO
	VALUES (1540,
	1536,
	1541);
INSERT INTO R_OIR
	VALUES (1540,
	1536,
	1541,
	0);
INSERT INTO R_ASSOC
	VALUES (1542);
INSERT INTO R_REL
	VALUES (1542,
	512,
	'',
	1478);
INSERT INTO R_AONE
	VALUES (1532,
	1542,
	1543,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (1544,
	1532,
	0,
	1542,
	1543);
INSERT INTO R_RTO
	VALUES (1532,
	1542,
	1543,
	0);
INSERT INTO R_OIR
	VALUES (1532,
	1542,
	1543,
	0);
INSERT INTO R_AOTH
	VALUES (1509,
	1542,
	1545,
	1,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (1511,
	1509,
	0,
	1542,
	1545);
INSERT INTO O_RTIDA
	VALUES (1512,
	1509,
	0,
	1542,
	1545);
INSERT INTO R_RTO
	VALUES (1509,
	1542,
	1545,
	0);
INSERT INTO R_OIR
	VALUES (1509,
	1542,
	1545,
	0);
INSERT INTO R_ASSR
	VALUES (1546,
	1542,
	1547,
	0);
INSERT INTO R_RGO
	VALUES (1546,
	1542,
	1547);
INSERT INTO R_OIR
	VALUES (1546,
	1542,
	1547,
	0);
INSERT INTO R_SUBSUP
	VALUES (1548);
INSERT INTO R_REL
	VALUES (1548,
	513,
	'',
	1478);
INSERT INTO R_SUPER
	VALUES (1549,
	1548,
	1550);
INSERT INTO O_RTIDA
	VALUES (1551,
	1549,
	0,
	1548,
	1550);
INSERT INTO O_RTIDA
	VALUES (1552,
	1549,
	0,
	1548,
	1550);
INSERT INTO R_RTO
	VALUES (1549,
	1548,
	1550,
	0);
INSERT INTO R_OIR
	VALUES (1549,
	1548,
	1550,
	0);
INSERT INTO R_SUB
	VALUES (1540,
	1548,
	1553);
INSERT INTO R_RGO
	VALUES (1540,
	1548,
	1553);
INSERT INTO R_OIR
	VALUES (1540,
	1548,
	1553,
	0);
INSERT INTO R_SUB
	VALUES (1546,
	1548,
	1554);
INSERT INTO R_RGO
	VALUES (1546,
	1548,
	1554);
INSERT INTO R_OIR
	VALUES (1546,
	1548,
	1554,
	0);
INSERT INTO R_SUB
	VALUES (1555,
	1548,
	1556);
INSERT INTO R_RGO
	VALUES (1555,
	1548,
	1556);
INSERT INTO R_OIR
	VALUES (1555,
	1548,
	1556,
	0);
INSERT INTO R_SIMP
	VALUES (1557);
INSERT INTO R_REL
	VALUES (1557,
	514,
	'',
	1478);
INSERT INTO R_FORM
	VALUES (1549,
	1557,
	1558,
	0,
	0,
	'resides in');
INSERT INTO R_RGO
	VALUES (1549,
	1557,
	1558);
INSERT INTO R_OIR
	VALUES (1549,
	1557,
	1558,
	0);
INSERT INTO R_PART
	VALUES (1559,
	1557,
	1560,
	0,
	0,
	'houses');
INSERT INTO O_RTIDA
	VALUES (1561,
	1559,
	0,
	1557,
	1560);
INSERT INTO O_RTIDA
	VALUES (1562,
	1559,
	0,
	1557,
	1560);
INSERT INTO R_RTO
	VALUES (1559,
	1557,
	1560,
	0);
INSERT INTO R_OIR
	VALUES (1559,
	1557,
	1560,
	0);
INSERT INTO R_SIMP
	VALUES (1563);
INSERT INTO R_REL
	VALUES (1563,
	515,
	'',
	1478);
INSERT INTO R_FORM
	VALUES (1559,
	1563,
	1564,
	1,
	1,
	'contains');
INSERT INTO R_RGO
	VALUES (1559,
	1563,
	1564);
INSERT INTO R_OIR
	VALUES (1559,
	1563,
	1564,
	0);
INSERT INTO R_PART
	VALUES (565,
	1563,
	1565,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (564,
	565,
	0,
	1563,
	1565);
INSERT INTO R_RTO
	VALUES (565,
	1563,
	1565,
	0);
INSERT INTO R_OIR
	VALUES (565,
	1563,
	1565,
	0);
INSERT INTO R_SUBSUP
	VALUES (1566);
INSERT INTO R_REL
	VALUES (1566,
	517,
	'',
	1478);
INSERT INTO R_SUPER
	VALUES (565,
	1566,
	1567);
INSERT INTO O_RTIDA
	VALUES (564,
	565,
	0,
	1566,
	1567);
INSERT INTO R_RTO
	VALUES (565,
	1566,
	1567,
	0);
INSERT INTO R_OIR
	VALUES (565,
	1566,
	1567,
	0);
INSERT INTO R_SUB
	VALUES (1568,
	1566,
	1569);
INSERT INTO R_RGO
	VALUES (1568,
	1566,
	1569);
INSERT INTO R_OIR
	VALUES (1568,
	1566,
	1569,
	0);
INSERT INTO R_SUB
	VALUES (1570,
	1566,
	1571);
INSERT INTO R_RGO
	VALUES (1570,
	1566,
	1571);
INSERT INTO R_OIR
	VALUES (1570,
	1566,
	1571,
	0);
INSERT INTO R_SIMP
	VALUES (1572);
INSERT INTO R_REL
	VALUES (1572,
	518,
	'',
	1478);
INSERT INTO R_FORM
	VALUES (1568,
	1572,
	1573,
	0,
	1,
	'');
INSERT INTO R_RGO
	VALUES (1568,
	1572,
	1573);
INSERT INTO R_OIR
	VALUES (1568,
	1572,
	1573,
	0);
INSERT INTO R_PART
	VALUES (30,
	1572,
	1574,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (150,
	30,
	0,
	1572,
	1574);
INSERT INTO R_RTO
	VALUES (30,
	1572,
	1574,
	0);
INSERT INTO R_OIR
	VALUES (30,
	1572,
	1574,
	1481);
INSERT INTO R_SIMP
	VALUES (1575);
INSERT INTO R_REL
	VALUES (1575,
	519,
	'',
	1478);
INSERT INTO R_FORM
	VALUES (1570,
	1575,
	1576,
	0,
	1,
	'');
INSERT INTO R_RGO
	VALUES (1570,
	1575,
	1576);
INSERT INTO R_OIR
	VALUES (1570,
	1575,
	1576,
	0);
INSERT INTO R_PART
	VALUES (30,
	1575,
	1577,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (150,
	30,
	0,
	1575,
	1577);
INSERT INTO R_RTO
	VALUES (30,
	1575,
	1577,
	0);
INSERT INTO R_OIR
	VALUES (30,
	1575,
	1577,
	1481);
INSERT INTO R_SIMP
	VALUES (1578);
INSERT INTO R_REL
	VALUES (1578,
	516,
	'',
	1478);
INSERT INTO R_FORM
	VALUES (52,
	1578,
	1579,
	1,
	1,
	'can asynchronously communicate via');
INSERT INTO R_RGO
	VALUES (52,
	1578,
	1579);
INSERT INTO R_OIR
	VALUES (52,
	1578,
	1579,
	0);
INSERT INTO R_PART
	VALUES (565,
	1578,
	1580,
	0,
	0,
	'is carried on events into');
INSERT INTO O_RTIDA
	VALUES (564,
	565,
	0,
	1578,
	1580);
INSERT INTO R_RTO
	VALUES (565,
	1578,
	1580,
	0);
INSERT INTO R_OIR
	VALUES (565,
	1578,
	1580,
	0);
INSERT INTO R_SIMP
	VALUES (1581);
INSERT INTO R_REL
	VALUES (1581,
	521,
	'This association is deprecated.
                              
Events now locate their data across simple association R532.',
	1478);
INSERT INTO R_FORM
	VALUES (1492,
	1581,
	1582,
	1,
	1,
	'is delivered by received event to');
INSERT INTO R_RGO
	VALUES (1492,
	1581,
	1582);
INSERT INTO R_OIR
	VALUES (1492,
	1581,
	1582,
	0);
INSERT INTO R_PART
	VALUES (1583,
	1581,
	1584,
	0,
	1,
	'receives asynchronous data via');
INSERT INTO O_RTIDA
	VALUES (1585,
	1583,
	0,
	1581,
	1584);
INSERT INTO O_RTIDA
	VALUES (1586,
	1583,
	0,
	1581,
	1584);
INSERT INTO R_RTO
	VALUES (1583,
	1581,
	1584,
	0);
INSERT INTO R_OIR
	VALUES (1583,
	1581,
	1584,
	0);
INSERT INTO R_SIMP
	VALUES (1587);
INSERT INTO R_REL
	VALUES (1587,
	520,
	'This association is deprecated.
                              
Events now locate their data across simple association R532.',
	1478);
INSERT INTO R_FORM
	VALUES (1488,
	1587,
	1588,
	1,
	0,
	'defines signature of');
INSERT INTO R_RGO
	VALUES (1488,
	1587,
	1588);
INSERT INTO R_OIR
	VALUES (1488,
	1587,
	1588,
	0);
INSERT INTO R_PART
	VALUES (1583,
	1587,
	1589,
	0,
	1,
	'carries');
INSERT INTO O_RTIDA
	VALUES (1585,
	1583,
	0,
	1587,
	1589);
INSERT INTO O_RTIDA
	VALUES (1586,
	1583,
	0,
	1587,
	1589);
INSERT INTO R_RTO
	VALUES (1583,
	1587,
	1589,
	0);
INSERT INTO R_OIR
	VALUES (1583,
	1587,
	1589,
	0);
INSERT INTO R_ASSOC
	VALUES (1590);
INSERT INTO R_REL
	VALUES (1590,
	522,
	'This association is deprecated.
                              
Events now locate their data across simple association R532.',
	1478);
INSERT INTO R_AONE
	VALUES (1583,
	1590,
	1591,
	1,
	1,
	'makes up');
INSERT INTO O_RTIDA
	VALUES (1585,
	1583,
	0,
	1590,
	1591);
INSERT INTO O_RTIDA
	VALUES (1586,
	1583,
	0,
	1590,
	1591);
INSERT INTO R_RTO
	VALUES (1583,
	1590,
	1591,
	0);
INSERT INTO R_OIR
	VALUES (1583,
	1590,
	1591,
	0);
INSERT INTO R_AOTH
	VALUES (52,
	1590,
	1592,
	1,
	1,
	'is made up of');
INSERT INTO O_RTIDA
	VALUES (276,
	52,
	0,
	1590,
	1592);
INSERT INTO O_RTIDA
	VALUES (277,
	52,
	0,
	1590,
	1592);
INSERT INTO R_RTO
	VALUES (52,
	1590,
	1592,
	0);
INSERT INTO R_OIR
	VALUES (52,
	1590,
	1592,
	0);
INSERT INTO R_ASSR
	VALUES (1593,
	1590,
	1594,
	0);
INSERT INTO R_RGO
	VALUES (1593,
	1590,
	1594);
INSERT INTO R_OIR
	VALUES (1593,
	1590,
	1594,
	0);
INSERT INTO R_SIMP
	VALUES (1595);
INSERT INTO R_REL
	VALUES (1595,
	523,
	'',
	1478);
INSERT INTO R_FORM
	VALUES (1583,
	1595,
	1596,
	1,
	1,
	'contains');
INSERT INTO R_RGO
	VALUES (1583,
	1595,
	1596);
INSERT INTO R_OIR
	VALUES (1583,
	1595,
	1596,
	0);
INSERT INTO R_PART
	VALUES (565,
	1595,
	1597,
	0,
	0,
	'is assigned to');
INSERT INTO O_RTIDA
	VALUES (564,
	565,
	0,
	1595,
	1597);
INSERT INTO R_RTO
	VALUES (565,
	1595,
	1597,
	0);
INSERT INTO R_OIR
	VALUES (565,
	1595,
	1597,
	0);
INSERT INTO R_SIMP
	VALUES (1598);
INSERT INTO R_REL
	VALUES (1598,
	524,
	'Association Description:

Purpose of Abstraction:

CrossComponent:true',
	1478);
INSERT INTO R_PART
	VALUES (32,
	1598,
	1599,
	0,
	0,
	'is defined by');
INSERT INTO O_RTIDA
	VALUES (156,
	32,
	0,
	1598,
	1599);
INSERT INTO R_RTO
	VALUES (32,
	1598,
	1599,
	0);
INSERT INTO R_OIR
	VALUES (32,
	1598,
	1599,
	1480);
INSERT INTO R_FORM
	VALUES (52,
	1598,
	1600,
	1,
	1,
	'defines the type of');
INSERT INTO R_RGO
	VALUES (52,
	1598,
	1600);
INSERT INTO R_OIR
	VALUES (52,
	1598,
	1600,
	0);
INSERT INTO R_SUBSUP
	VALUES (1601);
INSERT INTO R_REL
	VALUES (1601,
	525,
	'',
	1478);
INSERT INTO R_SUPER
	VALUES (1488,
	1601,
	1602);
INSERT INTO O_RTIDA
	VALUES (1603,
	1488,
	1,
	1601,
	1602);
INSERT INTO O_RTIDA
	VALUES (1604,
	1488,
	1,
	1601,
	1602);
INSERT INTO O_RTIDA
	VALUES (1605,
	1488,
	1,
	1601,
	1602);
INSERT INTO R_RTO
	VALUES (1488,
	1601,
	1602,
	1);
INSERT INTO R_OIR
	VALUES (1488,
	1601,
	1602,
	0);
INSERT INTO R_SUB
	VALUES (1606,
	1601,
	1607);
INSERT INTO R_RGO
	VALUES (1606,
	1601,
	1607);
INSERT INTO R_OIR
	VALUES (1606,
	1601,
	1607,
	0);
INSERT INTO R_SUB
	VALUES (1608,
	1601,
	1609);
INSERT INTO R_RGO
	VALUES (1608,
	1601,
	1609);
INSERT INTO R_OIR
	VALUES (1608,
	1601,
	1609,
	0);
INSERT INTO R_ASSOC
	VALUES (1610);
INSERT INTO R_REL
	VALUES (1610,
	503,
	'',
	1478);
INSERT INTO R_AONE
	VALUES (1492,
	1610,
	1611,
	1,
	1,
	'is received by');
INSERT INTO O_RTIDA
	VALUES (1521,
	1492,
	0,
	1610,
	1611);
INSERT INTO O_RTIDA
	VALUES (1522,
	1492,
	0,
	1610,
	1611);
INSERT INTO R_RTO
	VALUES (1492,
	1610,
	1611,
	0);
INSERT INTO R_OIR
	VALUES (1492,
	1610,
	1611,
	0);
INSERT INTO R_AOTH
	VALUES (1606,
	1610,
	1612,
	1,
	1,
	'receives');
INSERT INTO O_RTIDA
	VALUES (1613,
	1606,
	0,
	1610,
	1612);
INSERT INTO O_RTIDA
	VALUES (1614,
	1606,
	0,
	1610,
	1612);
INSERT INTO O_RTIDA
	VALUES (1615,
	1606,
	0,
	1610,
	1612);
INSERT INTO R_RTO
	VALUES (1606,
	1610,
	1612,
	0);
INSERT INTO R_OIR
	VALUES (1606,
	1610,
	1612,
	0);
INSERT INTO R_ASSR
	VALUES (1496,
	1610,
	1616,
	0);
INSERT INTO R_RGO
	VALUES (1496,
	1610,
	1616);
INSERT INTO R_OIR
	VALUES (1496,
	1610,
	1616,
	0);
INSERT INTO R_SUBSUP
	VALUES (1617);
INSERT INTO R_REL
	VALUES (1617,
	526,
	'',
	1478);
INSERT INTO R_SUPER
	VALUES (1606,
	1617,
	1618);
INSERT INTO O_RTIDA
	VALUES (1613,
	1606,
	0,
	1617,
	1618);
INSERT INTO O_RTIDA
	VALUES (1614,
	1606,
	0,
	1617,
	1618);
INSERT INTO O_RTIDA
	VALUES (1615,
	1606,
	0,
	1617,
	1618);
INSERT INTO R_RTO
	VALUES (1606,
	1617,
	1618,
	0);
INSERT INTO R_OIR
	VALUES (1606,
	1617,
	1618,
	0);
INSERT INTO R_SUB
	VALUES (1619,
	1617,
	1620);
INSERT INTO R_RGO
	VALUES (1619,
	1617,
	1620);
INSERT INTO R_OIR
	VALUES (1619,
	1617,
	1620,
	0);
INSERT INTO R_SUB
	VALUES (1621,
	1617,
	1622);
INSERT INTO R_RGO
	VALUES (1621,
	1617,
	1622);
INSERT INTO R_OIR
	VALUES (1621,
	1617,
	1622,
	0);
INSERT INTO R_SUB
	VALUES (1623,
	1617,
	1624);
INSERT INTO R_RGO
	VALUES (1623,
	1617,
	1624);
INSERT INTO R_OIR
	VALUES (1623,
	1617,
	1624,
	0);
INSERT INTO R_SIMP
	VALUES (1625);
INSERT INTO R_REL
	VALUES (1625,
	509,
	'',
	1478);
INSERT INTO R_FORM
	VALUES (1515,
	1625,
	1626,
	0,
	1,
	'has assigned to it');
INSERT INTO R_RGO
	VALUES (1515,
	1625,
	1626);
INSERT INTO R_OIR
	VALUES (1515,
	1625,
	1626,
	0);
INSERT INTO R_PART
	VALUES (1621,
	1625,
	1627,
	0,
	1,
	'is assigned to');
INSERT INTO O_RTIDA
	VALUES (1628,
	1621,
	0,
	1625,
	1627);
INSERT INTO O_RTIDA
	VALUES (1629,
	1621,
	0,
	1625,
	1627);
INSERT INTO R_RTO
	VALUES (1621,
	1625,
	1627,
	0);
INSERT INTO R_OIR
	VALUES (1621,
	1625,
	1627,
	0);
INSERT INTO R_SIMP
	VALUES (1630);
INSERT INTO R_REL
	VALUES (1630,
	527,
	'CrossComponent:true',
	1478);
INSERT INTO R_PART
	VALUES (1608,
	1630,
	1631,
	0,
	0,
	'is defined by');
INSERT INTO O_RTIDA
	VALUES (1632,
	1608,
	0,
	1630,
	1631);
INSERT INTO O_RTIDA
	VALUES (1633,
	1608,
	0,
	1630,
	1631);
INSERT INTO R_RTO
	VALUES (1608,
	1630,
	1631,
	0);
INSERT INTO R_OIR
	VALUES (1608,
	1630,
	1631,
	0);
INSERT INTO R_FORM
	VALUES (1619,
	1630,
	1634,
	1,
	1,
	'is aliased by');
INSERT INTO R_RGO
	VALUES (1619,
	1630,
	1634);
INSERT INTO R_OIR
	VALUES (1619,
	1630,
	1634,
	0);
INSERT INTO R_SIMP
	VALUES (1635);
INSERT INTO R_REL
	VALUES (1635,
	528,
	'CrossComponent:true',
	1478);
INSERT INTO R_PART
	VALUES (1483,
	1635,
	1636,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (1637,
	1483,
	0,
	1635,
	1636);
INSERT INTO R_RTO
	VALUES (1483,
	1635,
	1636,
	0);
INSERT INTO R_OIR
	VALUES (1483,
	1635,
	1636,
	1482);
INSERT INTO R_FORM
	VALUES (1623,
	1635,
	1638,
	0,
	1,
	'');
INSERT INTO R_RGO
	VALUES (1623,
	1635,
	1638);
INSERT INTO R_OIR
	VALUES (1623,
	1635,
	1638,
	0);
INSERT INTO R_SIMP
	VALUES (1639);
INSERT INTO R_REL
	VALUES (1639,
	529,
	'CrossComponent:true',
	1478);
INSERT INTO R_PART
	VALUES (1485,
	1639,
	1640,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (1641,
	1485,
	0,
	1639,
	1640);
INSERT INTO R_RTO
	VALUES (1485,
	1639,
	1640,
	0);
INSERT INTO R_OIR
	VALUES (1485,
	1639,
	1640,
	1484);
INSERT INTO R_FORM
	VALUES (1623,
	1639,
	1642,
	0,
	1,
	'');
INSERT INTO R_RGO
	VALUES (1623,
	1639,
	1642);
INSERT INTO R_OIR
	VALUES (1623,
	1639,
	1642,
	0);
INSERT INTO R_SIMP
	VALUES (1643);
INSERT INTO R_REL
	VALUES (1643,
	530,
	'',
	1478);
INSERT INTO R_FORM
	VALUES (1555,
	1643,
	1644,
	0,
	1,
	'houses action for');
INSERT INTO R_RGO
	VALUES (1555,
	1643,
	1644);
INSERT INTO R_OIR
	VALUES (1555,
	1643,
	1644,
	0);
INSERT INTO R_PART
	VALUES (1509,
	1643,
	1645,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (1511,
	1509,
	0,
	1643,
	1645);
INSERT INTO O_RTIDA
	VALUES (1512,
	1509,
	0,
	1643,
	1645);
INSERT INTO R_RTO
	VALUES (1509,
	1643,
	1645,
	0);
INSERT INTO R_OIR
	VALUES (1509,
	1643,
	1645,
	0);
INSERT INTO R_SIMP
	VALUES (1646);
INSERT INTO R_REL
	VALUES (1646,
	531,
	'',
	1478);
INSERT INTO R_PART
	VALUES (52,
	1646,
	1647,
	0,
	1,
	'specifies occurrences of');
INSERT INTO O_RTIDA
	VALUES (276,
	52,
	0,
	1646,
	1647);
INSERT INTO O_RTIDA
	VALUES (277,
	52,
	0,
	1646,
	1647);
INSERT INTO R_RTO
	VALUES (52,
	1646,
	1647,
	0);
INSERT INTO R_OIR
	VALUES (52,
	1646,
	1647,
	0);
INSERT INTO R_FORM
	VALUES (59,
	1646,
	1648,
	1,
	1,
	'may have');
INSERT INTO R_RGO
	VALUES (59,
	1646,
	1648);
INSERT INTO R_OIR
	VALUES (59,
	1646,
	1648,
	1486);
INSERT INTO R_SIMP
	VALUES (1649);
INSERT INTO R_REL
	VALUES (1649,
	532,
	'',
	1478);
INSERT INTO R_PART
	VALUES (1488,
	1649,
	1650,
	0,
	0,
	'carried by');
INSERT INTO O_RTIDA
	VALUES (1604,
	1488,
	0,
	1649,
	1650);
INSERT INTO R_RTO
	VALUES (1488,
	1649,
	1650,
	0);
INSERT INTO R_OIR
	VALUES (1488,
	1649,
	1650,
	0);
INSERT INTO R_FORM
	VALUES (52,
	1649,
	1651,
	1,
	1,
	'carries');
INSERT INTO R_RGO
	VALUES (52,
	1649,
	1651);
INSERT INTO R_OIR
	VALUES (52,
	1649,
	1651,
	0);
INSERT INTO R_SIMP
	VALUES (1652);
INSERT INTO R_REL
	VALUES (1652,
	533,
	'',
	1478);
INSERT INTO R_PART
	VALUES (52,
	1652,
	1653,
	0,
	1,
	'succeeds');
INSERT INTO O_RTIDA
	VALUES (276,
	52,
	0,
	1652,
	1653);
INSERT INTO O_RTIDA
	VALUES (277,
	52,
	0,
	1652,
	1653);
INSERT INTO R_RTO
	VALUES (52,
	1652,
	1653,
	0);
INSERT INTO R_OIR
	VALUES (52,
	1652,
	1653,
	0);
INSERT INTO R_FORM
	VALUES (52,
	1652,
	1654,
	0,
	1,
	'precedes');
INSERT INTO R_RGO
	VALUES (52,
	1652,
	1654);
INSERT INTO R_OIR
	VALUES (52,
	1652,
	1654,
	0);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1555,
	'Transition Action Home',
	529,
	'SM_TAH',
	'',
	1478);
INSERT INTO O_TFR
	VALUES (1655,
	1555,
	'dispose',
	'',
	19,
	1,
	'// Note: let SM_AH.dispose call this
select one trans related by self->SM_TXN[R530];
unrelate self from trans across R530;
select one ah related by self->SM_AH[R513];
unrelate self from ah across R513;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (1555,
	1549,
	0,
	1551,
	1548,
	1556,
	1550,
	1656,
	1657,
	0,
	0,
	'',
	'Action Home',
	'Act_ID',
	'R513');
INSERT INTO O_RATTR
	VALUES (1656,
	1555,
	1562,
	1559,
	1,
	'Act_ID');
INSERT INTO O_ATTR
	VALUES (1656,
	1555,
	0,
	'Act_ID',
	'',
	'',
	'Act_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1555,
	1549,
	0,
	1552,
	1548,
	1556,
	1550,
	1658,
	1659,
	0,
	0,
	'',
	'Action Home',
	'SM_ID',
	'R513');
INSERT INTO O_REF
	VALUES (1555,
	1509,
	0,
	1512,
	1643,
	1644,
	1645,
	1658,
	1660,
	1659,
	0,
	'',
	'Transition',
	'SM_ID',
	'R530');
INSERT INTO O_RATTR
	VALUES (1658,
	1555,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1658,
	1555,
	1656,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1555,
	1509,
	0,
	1511,
	1643,
	1644,
	1645,
	1661,
	1662,
	0,
	0,
	'',
	'Transition',
	'Trans_ID',
	'R530');
INSERT INTO O_RATTR
	VALUES (1661,
	1555,
	1511,
	1509,
	1,
	'Trans_ID');
INSERT INTO O_ATTR
	VALUES (1661,
	1555,
	1658,
	'Trans_ID',
	'',
	'',
	'Trans_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1555);
INSERT INTO O_OIDA
	VALUES (1656,
	1555,
	0,
	'Act_ID');
INSERT INTO O_OIDA
	VALUES (1658,
	1555,
	0,
	'SM_ID');
INSERT INTO O_ID
	VALUES (1,
	1555);
INSERT INTO O_ID
	VALUES (2,
	1555);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1509,
	'Transition',
	508,
	'SM_TXN',
	'A transition represents a change in state of an instance.  It is represented by a line between to states (SM_NETXN and SM_NSTXN), or a line into a single state (SM_CRTXN).  Transitions are labeled with a single event (SM_EVT).',
	1478);
INSERT INTO O_TFR
	VALUES (1663,
	1509,
	'get_connector_text',
	'Returns the empty string for all ends except the Middle. In this case,
it selects the subtype and delegates the call.
-----------------------------------------------------------------------------------
Bridge:GD
',
	322,
	1,
	'result = "";
if (param.at == End::Middle)
  select one nst related by self->SM_NSTXN[R507];
  if (not_empty nst)
    result = nst.get_connector_text();
  end if;
  select one net related by self->SM_NETXN[R507];
  if (not_empty net)
    result = net.get_connector_text();
  end if;
  select one action related by self->SM_TAH[R530]->SM_AH[R513]->SM_ACT[R514];
  if not_empty action and action.Action_Semantics != ""
    result = result + "/";
    if PREF::getBoolean(name:"bridgepoint_prefs_show_transition_actions")
      result = result + GD::newline() + action.Action_Semantics;
    else
      result = result + "...";
    end if;
  end if;
end if;
return result;',
	1,
	'',
	1664);
INSERT INTO O_TPARM
	VALUES (1665,
	1663,
	'OOA_ID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1666,
	1663,
	'OOA_TypeIsImportedClass',
	316,
	0,
	'',
	1665,
	'');
INSERT INTO O_TPARM
	VALUES (1667,
	1663,
	'at',
	880,
	0,
	'',
	1666,
	'');
INSERT INTO O_TPARM
	VALUES (1668,
	1663,
	'parent_ID',
	296,
	0,
	'',
	1667,
	'');
INSERT INTO O_TFR
	VALUES (1669,
	1509,
	'get_style',
	'Most Transitions have an arrow at the end and no adornment at the
start. The exception is the Creation Transition which has it''s own
get_style operation, called from here when necessary.
-----------------------------------------------------------------------------------
Bridge:GD',
	784,
	1,
	'select one crt related by self->SM_CRTXN[R507];
if (not_empty crt)
  return crt.get_style(at:param.at);
else
  if (param.at == End::End)
    return Style::OpenArrow;
  else
    return Style::None;
  end if;
end if;',
	1,
	'',
	1670);
INSERT INTO O_TPARM
	VALUES (1671,
	1669,
	'at',
	880,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1664,
	1509,
	'dispose',
	'Dispose this Transition.',
	19,
	1,
	'select one nstxn related by self->SM_NSTXN[R507];
if (not_empty nstxn)
  select one sig related by nstxn->SM_SEME[R504]->SM_SEVT[R503]->SM_SGEVT[R526];
  if (not_empty sig)
    self.removeSignal();
  else
    // migrate to a No Event Transition (SM_NETXN)
    // which will be deleted below
    self.removeEvent();
  end if;
end if;
                                   
select one crtxn related by self->SM_CRTXN[R507];
if (not_empty crtxn)
  self.removeEvent();
  unrelate self from crtxn across R507;
  delete object instance crtxn;
end if; 
select one netxn related by self->SM_NETXN[R507];
if (not_empty netxn)
  unrelate self from netxn across R507;
  select one state related by netxn->SM_STATE[R508];
  unrelate netxn from state across R508;
  delete object instance netxn;
end if;
                                   
select one sm related by self->SM_SM[R505];
unrelate self from sm across R505;
select one state related by self->SM_STATE[R506];
unrelate self from state across R506;
select one act related by self->SM_TAH[R530]->SM_AH[R513]->SM_ACT[R514];
if (not_empty act )
  act.dispose();
else
  // the dispose unit tests don''t populate everything
  select one meah related by self->SM_MEAH[R512];
  if ( not_empty meah )
    select one mealy related by meah->SM_MEALY[R512];
    unrelate mealy from self across R512 using meah;
  end if;
end if;
select many insts related by self->I_INS[R2953];
for each inst in insts
  unrelate self from inst across R2953;
end for;
delete object instance self;',
	1,
	'',
	1672);
INSERT INTO O_TFR
	VALUES (1670,
	1509,
	'get_ooa_id',
	'The ooa_id of a Transition is its Trans_ID
-----------------------------------------------------------
Bridge:GD',
	296,
	1,
	'return self.Trans_ID;',
	1,
	'',
	1673);
INSERT INTO O_TFR
	VALUES (1674,
	1509,
	'actionFilter',
	'Bridge: UI
',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
if (param.name == "event" )
  
  if (param.value == "exists spec pkg" ) or (param.value == "exists generic pkg" )
  
    select one cls related by self->SM_SM[R505]->SM_ASM[R517]->O_OBJ[R519];
    if (empty cls)
      select one cls related by self->SM_SM[R505]->SM_ISM[R517]->O_OBJ[R518];
    end if;
    select one packageableElem related by cls->PE_PE[R8001];
    select one package related by packageableElem->EP_PKG[R8000];
    select one cc related by packageableElem->C_C[R8003];
    isInGenericPackage = not_empty package or not_empty cc;
    if ((param.value == "exists spec pkg") and (isInGenericPackage))
      return false;
    end if;
    if ((param.value == "exists generic pkg") and (not isInGenericPackage))
      return false;
    end if;
      
    // might want to enforce data set consistency here
    // i.e. events only exist if they match the state''s data set
    select one net related by self->SM_NETXN[R507];
    select one nst related by self->SM_NSTXN[R507];
    select one ct related by self->SM_CRTXN[R507];
    select one stateMachine related by self->SM_SM[R505];
    select many selfTypeEvents related by stateMachine->SM_EVT[R502];
    
	// if this transition belongs to an instance state machine, and is not
	// a creation transition
	select one instanceStateMachine related by stateMachine->SM_ISM[R517];
	numSupertypeEvents = 0;
	numSelfTypeEvents = cardinality selfTypeEvents;
	if (not_empty instanceStateMachine and empty ct)
		// for each event in the domain
		select many events from instances of SM_EVT;
		for each event in events
			// if this event does not belong to this transition''s state machine,
			// but is assignable to this transition''s state machine
			if (event.SM_ID != self.SM_ID 
				and event.isAssignableToStateMachine(
					assignToMachineId:self.SM_ID, isCreationTransition:false))
				// there is one more supertype event which might possibly
				// be assigned to this transition
				numSupertypeEvents = numSupertypeEvents + 1;
			end if;
		end for;	
		
		// for each event that belongs to this transition''s state machine
	    select many events related by stateMachine->SM_EVT[R502]; 
		for each event in events
			// if this event is assigned in a subtype state machine
			if (event.isAssignedInSubtypeStateMachine(
				supertypeId:instanceStateMachine.Obj_ID))
				// there is one less self-type event which might possibly
				// be assigned to this transition 			
				numSelfTypeEvents = numSelfTypeEvents - 1;
			end if;
		end for;
    else	
      select many events related by stateMachine->SM_EVT[R502]; 
	  for each event in events
	    // if this event is a signal event
	    select one sigEvt related by event->SM_SEVT[R525]->SM_SGEVT[R526];
	    if not_empty sigEvt
          // there is one less self-type event which might possibly
          // be assigned to this transition 			
          numSelfTypeEvents = numSelfTypeEvents - 1;
		end if;
	  end for;
	end if;

    if (not_empty net)
      select one state related by net->SM_STATE[R508];
      select many newStateTransitions related by state->
                                                  SM_SEME[R503]->SM_NSTXN[R504];
      // We discounted signals above, so we need to
      // discount transitions with signals here.
      select many signalDrivers related by newStateTransitions->
                                   SM_SEME[R504]->SM_SEVT[R503]->SM_SGEVT[R526];
      eventDrivenNewStateTransitions = cardinality newStateTransitions -
                                                      cardinality signalDrivers;
      return numSelfTypeEvents + numSupertypeEvents >
                                                 eventDrivenNewStateTransitions;
    elif (not_empty nst)
      select one state related by nst->SM_SEME[R504]->SM_STATE[R503];    
      select many newStateTransitions related by state->
                                                  SM_SEME[R503]->SM_NSTXN[R504];
      // discount signal driven transitions.
      select many signalDrivers related by newStateTransitions->
                                   SM_SEME[R504]->SM_SEVT[R503]->SM_SGEVT[R526];
      eventDrivenNewStateTransitions = cardinality newStateTransitions -
                                                      cardinality signalDrivers;
      return numSelfTypeEvents + numSupertypeEvents >
                                                 eventDrivenNewStateTransitions;
    elif (not_empty ct)
      select one state related by self->SM_STATE[R506];          
      select many creationTransitionsAssigned related by selfTypeEvents
      	                         ->SM_SEVT[R525]->SM_LEVT[R526]->SM_CRTXN[R509];
      return numSelfTypeEvents > cardinality creationTransitionsAssigned;
    end if;  

  elif (param.value == "assigned" )
    select one levt related by self->SM_NSTXN[R507]->SM_SEME[R504]->
                                                   SM_SEVT[R503]->SM_LEVT[R526];
    if empty levt
      select one levt related by self->SM_CRTXN[R507]->SM_LEVT[R509];
    end if;
    return not_empty levt;
  end if;
elif param.name == "signal"
  if (param.value == "exists spec pkg") or (param.value == "exists generic pkg") 
    select one cls related by self->SM_SM[R505]->SM_ASM[R517]->O_OBJ[R519];
    if (empty cls)
      select one cls related by self->SM_SM[R505]->SM_ISM[R517]->O_OBJ[R518];
    end if;
    select one packageableElem related by cls->PE_PE[R8001];
    select one package related by packageableElem->EP_PKG[R8000];
    // Currently component will always be null, but this may change
    select one component related by packageableElem->C_C[R8003];
    if not_empty package
      compId = package.getContainingComponentId();
      select any component from instances of C_C where (selected.Id == compId);
    end if;
    isInGenericPackage = not_empty package or not_empty component;
    // if there is no containing component, then this action should be
    // filtered
    if(isInGenericPackage and empty component)
      return false;
    end if;
    if ((param.value == "exists spec pkg") and (isInGenericPackage))
      return false;
    end if;
    if ((param.value == "exists generic pkg") and (not isInGenericPackage))
      return false;
    end if;
      
    if (not isInGenericPackage)   
      select one component related by self->SM_SM[R505]->SM_ASM[R517]->
                     O_OBJ[R519]->S_SS[R2]->S_DOM[R1]->CN_DC[R4204]->C_C[R4204];
    end if;
      
    select many provisions related by component->
                                           C_PO[R4010]->C_IR[R4016]->C_P[R4009];
    for each provision in provisions
      if provision.hasAvailableSignalsFor(transition_id:self.Trans_ID)
        return true;
      end if;
    end for;
    select many requirements related by component->
                                           C_PO[R4010]->C_IR[R4016]->C_R[R4009];
    for each requirement in requirements
      if requirement.hasAvailableSignalsFor(transition_id:self.Trans_ID)
        return true;
      end if;
    end for;
  elif param.value == "assigned"
    select one sgEvt related by self->SM_NSTXN[R507]->SM_SEME[R504]->
                                                  SM_SEVT[R503]->SM_SGEVT[R526];
    return not_empty sgEvt;
  end if;
end if;
return false;',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (1675,
	1674,
	'name',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1676,
	1674,
	'value',
	322,
	0,
	'',
	1675,
	'');
INSERT INTO O_TFR
	VALUES (1677,
	1509,
	'addEvent',
	'',
	19,
	1,
	'// find the event corresponding to the one given that is associated with 
// this transition''s state machine, which in fact may be the one given, or not
// if the given event is polymorphic
select any event from instances of SM_EVT 
	where selected.SMevt_ID == param.eventId
		and selected.SM_ID == param.eventStateMachineId;
select one sm related by self->SM_SM[R505];
eventId = event.getAssociatedEventForStateMachine(stateMachineId:sm.SM_ID);
select any event from instances of SM_EVT where selected.SMevt_ID == eventId;
 		
 select one no_evt_txn related by self->SM_NETXN[R507];
 if ( not_empty no_evt_txn )
   select one orig_state related by no_evt_txn->SM_STATE[R508];
   unrelate no_evt_txn from orig_state across R508;
   unrelate no_evt_txn from self across R507;
   delete object instance no_evt_txn;
   create object instance ns_txn of SM_NSTXN;
   relate self to ns_txn across R507;
   
   select any seme related by orig_state->SM_SEME[R503] 
       where selected.SMevt_ID == event.SMevt_ID;
   seme.disposeChOrEi();
   relate ns_txn to seme across R504;
 else
   select one ns_txn related by self->SM_NSTXN[R507];
   if ( not_empty ns_txn )
     select one seme related by ns_txn->SM_SEME[R504];
     select one orig_state related by seme->SM_STATE[R503];

	 // change SEME caused by old event to be cant happen
	 create object instance ch of SM_CH;
     unrelate ns_txn from seme across R504;
     relate seme to ch across R504;
     
     // find SEME caused by new event
     select any new_seme related by orig_state->SM_SEME[R503] 
         where selected.SMevt_ID == event.SMevt_ID;
     new_seme.disposeChOrEi();
     relate new_seme to ns_txn across R504;
     // state supplemental dataset should be unchanged
   else
     select one cr_txn related by self->SM_CRTXN[R507];
     select one levt related by cr_txn->SM_LEVT[R509];
     if ( not_empty levt )
       unrelate cr_txn from levt across R509;
     end if;
     select one new_evt related by event->SM_SEVT[R525]->SM_LEVT[R526];         
     relate cr_txn to new_evt across R509;
   end if;
 end if;

',
	1,
	'',
	1674);
INSERT INTO O_TPARM
	VALUES (1678,
	1677,
	'eventId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1679,
	1677,
	'eventStateMachineId',
	296,
	0,
	'',
	1678,
	'');
INSERT INTO O_TFR
	VALUES (1680,
	1509,
	'removeEvent',
	'',
	19,
	1,
	'select one ns_txn related by self->SM_NSTXN[R507];
if ( not_empty ns_txn )
 
  select one seme related by ns_txn->SM_SEME[R504];
  create object instance ch of SM_CH;
  unrelate ns_txn from seme across R504;
  relate seme to ch across R504;

  create object instance ne_txn of SM_NETXN;
  unrelate ns_txn from self across R507;
  relate self to ne_txn across R507;
  delete object instance ns_txn;
  select one orig_state related by seme->SM_STATE[R503];
  relate ne_txn to orig_state across R508;
  select one dest_state related by self->SM_STATE[R506];
else
  select one cr_txn related by self->SM_CRTXN[R507];
  select one levt related by cr_txn->SM_LEVT[R509];
  if ( not_empty levt )
    unrelate cr_txn from levt across R509;
    select one st related by self->SM_STATE[R506];
  else
    // transition doesn''t have an event assigned -- UI prevents this from happening
  end if;
end if;',
	1,
	'',
	1681);
INSERT INTO O_TFR
	VALUES (1682,
	1509,
	'updateAssignedEvent',
	'',
	19,
	1,
	'// Transition.updateAssignedEvent()
select one stateMachine related by self->SM_SM[R505];
select one evt related by self->SM_NSTXN[R507]->SM_SEME[R504]->
                                                    SM_SEVT[R503]->SM_EVT[R525];
select one sm related by self->SM_SM[R505];
select one creationTrans related by self->SM_CRTXN[R507];
select any polyClass from instances of O_OBJ where
                                        selected.Obj_ID == GD::NULL_UNIQUE_ID();
isPoly = false;
if(not_empty evt)
  // if the copied event is a poly, convert it to a local event
  select one nlevt related by evt->SM_SEVT[R525]->SM_NLEVT[R526];
  if(not_empty nlevt)
    isPoly = true;
  end if;
end if;
creation = false;
if(not_empty creationTrans)
  creation = true;
  select one evt related by creationTrans->SM_LEVT[R509]->
                                                    SM_SEVT[R526]->SM_EVT[R525];
end if;
// there was no event previously assigned, nothing to do.
if(empty evt)
  return;
end if;
select many dataItems related by evt->SM_EVTDI[R532];
eventID = sm.findMatchingEvent(id:evt.SMevt_ID,
                                       isCreation:creation, machineID:sm.SM_ID);
select any existingEvt related by sm->SM_EVT[R502] where
                                                   selected.SMevt_ID == eventID;
if not_empty existingEvt
  // remove the currently assigned event
  self.removeEvent();
  // if a match was found then
  //   - remove any pasted data items already assigned to the existing event.
  //   - move any new data items to the existing event and
  //   - dispose the pasted event instance.
  warnings = ""; sep = "";
  for each dataItem in dataItems
    select one pastedDIDatatype related by dataItem->S_DT[R524];
    select any existingDataItem related by existingEvt->SM_EVTDI[R532] where
                                                 selected.Name == dataItem.Name;
    select one existingDIDatatype related by existingDataItem->S_DT[R524];
    if not_empty existingDataItem and
                  existingDIDatatype.Name == pastedDIDatatype.Name and
                         OS::remove_spaces(s:existingDataItem.Dimensions) ==
                                        OS::remove_spaces(s:dataItem.Dimensions)
      dataItem.dispose();
    else
      // Report that event parameters were added to the target
      if empty existingDataItem 
        warnings = warnings + sep + "Event parameter " + dataItem.Name +
                                                                   " was added";
      else  // not_empty existingDataItem and
        warnType = "";
        if existingDIDatatype.Name != pastedDIDatatype.Name
          // Report that an added event parameter type conflict exists
          warnType = " a type conflict ";
        else
          // Report that a dimension declaration incompatibility exists
          warnType = " an array incompatibility ";
        end if;
        warnings = warnings + sep + "An existing event parameter " +
        dataItem.Name + " was found, but has" + warnType + "with the pasted " +
        "parameter. The paste has been executed as an additional parameter " +
        "with the same name. You will need to combine the two parameters or " +
        "rename one.";
      end if;
      sep = ", ";
      unrelate dataItem from evt across R532;
      relate dataItem to existingEvt across R532;
      select one pasteSM related by dataItem->SM_SM[R516];
      if not_empty pasteSM
        unrelate dataItem from pasteSM across R516;
      end if;
      relate dataItem to sm across R516;
    end if;
  end for;
  if warnings != ""
    // we must relate the event to the state machine to allow for the
    // get_name operation to work correctly for the error report.
    select one pasteSM related by evt->SM_SM[R502];
    if empty pasteSM
      relate evt to sm across R502;
    end if;
    Util::addPastedElementToProblemList(elementName:evt.get_name(),
      		                                                  message:warnings);
  end if;
  evt.dispose();
  // and now associate the pasted transition with the match
  self.addEvent(eventId:existingEvt.SMevt_ID, eventStateMachineId:sm.SM_ID);
else // existing event was not found in this state machine
  // if the copied event is a polymorphic event and we didn''t find
  // a match above we need to try and find a matching one within
  // the hierarchy
  relateToSM = true;
  if(isPoly)
    polyId = self.locateMatchingPolymorphicEvent(id:evt.SMevt_ID);
    if(polyId != GD::NULL_UNIQUE_ID())
      select any polyEvt from instances of SM_EVT where
                                                    selected.SMevt_ID == polyId;
      if(not_empty polyEvt)
        select one poly related by polyEvt->SM_PEVT[R525];
        if(empty poly)
          // the instance will not exist unless another
          // transition has the poly assigned so we create
          // it here
          create object instance poly of SM_PEVT;
          select one matrixEvent related by polyEvt->SM_SEVT[R525];
          matrixEvent.dispose();
          relate poly to polyEvt across R525;
        end if;
        select one nlevt related by evt->SM_SEVT[R525]->SM_NLEVT[R526];
        relate nlevt to poly across R527;
      else
        evt.dispose();
        relateToSM = false;
      end if;
    else
      // we must relate the event to the state machine to allow for the
      // get_name operation to work correctly for the error report.
      relate evt to sm across R502;
      message = ::getMissingInheritedEventMessage(missingInheritedEvent:false);
      Util::addPastedElementToProblemList(elementName:evt.get_name(),
      		message:message);
      evt.dispose();
      relateToSM = false;
    end if;
  end if;
  if(relateToSM)
    // otherwise hook up the copied event and data items if any
    relate evt to sm across R502;
    for each dataItem in dataItems
      relate dataItem to sm across R516;
    end for;
    select one sevt related by evt->SM_SEVT[R525];
    if not_empty sevt
      // create SEM entry instances
      //
      select many states related by sm->SM_STATE[R501];
      for each state in states
        select any existingEvt related by state->SM_SEME[R503]->
              SM_SEVT[R503]->SM_EVT[R525] where selected.Drv_Lbl == evt.Drv_Lbl;
        if empty existingEvt
          create object instance seme of SM_SEME;
          relate sevt to state across R503 using seme;
        end if;
      end for;
    else
      pathMsg = "<No Path Available - Empty instance>";
    if (not_empty stateMachine)
      pathMsg = stateMachine.getPath();
    end if;
	USER::logError(msg:"Internal Error in updateAssignedEvent:" +
               " No State Event Matrix Event instance found for pasted event.",path:pathMsg);
    end if;
    // guarantee a unique number for the event
    evt.setUniqueNumber(checkForDuplicate:true);
  end if;
end if;',
	1,
	'',
	1683);
INSERT INTO O_TFR
	VALUES (1681,
	1509,
	'locateMatchingPolymorphicEvent',
	'',
	296,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
/*
Recursively checks the hierarchy tree, to find a polymorpic event that
matches the copied polymorphic event.
*/
select one stateMachine related by self->SM_SM[R505];
select one asm related by self->SM_SM[R505]->SM_ASM[R517];
isClassBased = not_empty asm;
select one mclass related by asm->O_OBJ[R519];
if(empty mclass)
  select one mclass related by self->SM_SM[R505]->SM_ISM[R517]->O_OBJ[R518];
end if;
select many machines related by mclass->S_SS[R2]->S_DOM[R1]->S_SS[R1]
     ->O_OBJ[R2]->SM_ISM[R518]->SM_SM[R517];
if(isClassBased)
  select many machines related by mclass->S_SS[R2]->S_DOM[R1]->S_SS[R1]
     ->O_OBJ[R2]->SM_ASM[R519]->SM_SM[R517];  
end if;

select one packageableElem related by mclass->PE_PE[R8001];
select one package related by packageableElem->EP_PKG[R8000];
select one component related by packageableElem->C_C[R8003];
isInGenericPackage = not_empty package or not_empty component;
if (isInGenericPackage)
  if (not_empty package)
    select many machines related by package->S_SYS[R1405]->EP_PKG[R1405]->PE_PE[R8000]->O_OBJ[R8001]
           ->SM_ASM[R519]->SM_SM[R517];
  else
    rootCompIdInPkg = component.getRootComponentId();
    select any rootComponent from instances of C_C where (selected.Id == rootCompIdInPkg);
    select many machines related by rootComponent->PE_PE[R8001]->EP_PKG[R8000]
           ->S_SYS[R1405]->EP_PKG[R1405]->PE_PE[R8000]->O_OBJ[R8001]->SM_ASM[R519]->SM_SM[R517];
  end if;
end if;
select many events related by machines->SM_EVT[R502];
select one copiedEvt related by self->SM_NSTXN[R507]->SM_SEME[R504]->SM_SEVT[R503]->SM_EVT[R525];
// for all of the possible events see if any match
for each evt in events
  // ignore the copied event
  if(copiedEvt == evt)
    continue;
  end if;
  // do not look for non-local events
  select one nlevt related by evt->SM_SEVT[R525]->SM_NLEVT[R526];
  if(not_empty nlevt)
    continue;
  end if;
  // do not use any event that is within the same machine
  select one sm related by evt->SM_SM[R502];
  if(sm == stateMachine)
    continue;
  end if;
  if(stateMachine.canAssignEvent(eventId:evt.SMevt_ID, eventStateMachineId:evt.SM_ID, isCreationTransition:false))
    eventID = sm.findMatchingEvent(id:copiedEvt.SMevt_ID, isCreation:false, machineID:stateMachine.SM_ID);
    if(eventID != GD::NULL_UNIQUE_ID())
      return eventID;
    end if;
  end if;
end for;
return GD::NULL_UNIQUE_ID();',
	1,
	'',
	1684);
INSERT INTO O_TPARM
	VALUES (1685,
	1681,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1672,
	1509,
	'addSignal',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// find the signal for the passed id
select any signal related by self->SM_SM[R505]->SM_ASM[R517]->O_OBJ[R519]->
                 S_SS[R2]->S_DOM[R1]->CN_DC[R4204]->C_C[R4204]->C_PO[R4010]->
                                           C_IR[R4016]->C_I[R4012]->C_EP[R4003]
                                          where(selected.Id == param.signal_id);
// check for isInGenericPackage
if (empty signal)
  select one pe related by self->SM_SM[R505]->SM_ASM[R517]->O_OBJ[R519]
                                                                 ->PE_PE[R8001];
  if(not_empty pe)
    select one package related by pe->EP_PKG[R8000];
    // the next call can return a null id, however
    // the UI code will prevent us from ever getting
    // here unless a container component exists
    compId = package.getContainingComponentId();
    select any component from instances of C_C where (selected.Id == compId);
    if(not_empty component)
      select any signal related by component->C_PO[R4010]->C_IR[R4016]
               ->C_I[R4012]->C_EP[R4003] where (selected.Id == param.signal_id);
    end if;
  end if;
end if;                                          
select any reqEP related by signal->SPR_REP[R4500]
                     where (selected.ExecutableProperty_Id == param.signal_id
                             and selected.Requirement_Id == param.interface_id);
select one reqSignal related by reqEP->SPR_RS[R4502];
select any provEP related by signal->SPR_PEP[R4501]
                     where (selected.ExecutableProperty_Id == param.signal_id
                               and selected.Provision_Id == param.interface_id);
select one provSignal related by provEP->SPR_PS[R4503];
select one sm related by self->SM_SM[R505];
select one signalEvent related by provSignal->SM_SGEVT[R528];
if empty signalEvent
  select one signalEvent related by reqSignal->SM_SGEVT[R529];
end if;
if empty signalEvent
  create object instance signalEvent of SM_SGEVT;
  create object instance semEvt of SM_SEVT;
  relate semEvt to signalEvent across R526;
  name = "";
  if not_empty provSignal
    relate signalEvent to provSignal across R528;
    name = provSignal.Name;
  else
    relate signalEvent to reqSignal across R529;
    name = reqSignal.Name;
  end if;
  create object instance evt of SM_EVT;
  relate evt to semEvt across R525;
  relate evt to sm across R502;
  evt.Mning = name;
  evt.Numb = 1;
  evt.setUniqueNumber(checkForDuplicate:false);
  semEvt.createDefaultMatrixEntries();
end if;
select one no_evt_txn related by self->SM_NETXN[R507];
if ( not_empty no_evt_txn )
  select one orig_state related by no_evt_txn->SM_STATE[R508];
  unrelate no_evt_txn from orig_state across R508;
  unrelate no_evt_txn from self across R507;
  delete object instance no_evt_txn;
  create object instance ns_txn of SM_NSTXN;
  relate self to ns_txn across R507;
  select any seme related by orig_state->SM_SEME[R503]
                                where selected.SMevt_ID == signalEvent.SMevt_ID;
  seme.disposeChOrEi();
  relate ns_txn to seme across R504;
else
  select one ns_txn related by self->SM_NSTXN[R507];
  if ( not_empty ns_txn )
    select one seme related by ns_txn->SM_SEME[R504];
    select one orig_state related by seme->SM_STATE[R503];
                             
    // change SEME caused by old event to be cant happen
    create object instance ch of SM_CH;
    unrelate ns_txn from seme across R504;
    relate seme to ch across R504;
                             
    // find SEME caused by new event
    select any new_seme related by orig_state->SM_SEME[R503]
                                where selected.SMevt_ID == signalEvent.SMevt_ID;
    new_seme.disposeChOrEi();
    relate new_seme to ns_txn across R504;
  end if;
end if;',
	1,
	'',
	1677);
INSERT INTO O_TPARM
	VALUES (1686,
	1672,
	'signal_id',
	296,
	0,
	'',
	1687,
	'');
INSERT INTO O_TPARM
	VALUES (1687,
	1672,
	'interface_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1683,
	1509,
	'removeSignal',
	'',
	19,
	1,
	'// Transition::removeSignal()
select one ns_txn related by self->SM_NSTXN[R507];
if ( not_empty ns_txn )
  select one seme related by ns_txn->SM_SEME[R504];
  create object instance ch of SM_CH;
  unrelate ns_txn from seme across R504;
  relate seme to ch across R504;
  create object instance ne_txn of SM_NETXN;
  unrelate ns_txn from self across R507;
  relate self to ne_txn across R507;
  delete object instance ns_txn;
  select one orig_state related by seme->SM_STATE[R503];
  relate ne_txn to orig_state across R508;
  select one sevt related by seme->SM_SEVT[R503];
  select many chs related by sevt->SM_SEME[R503]->SM_CH[R504];
  select many states related by sevt->SM_STATE[R503];
  if cardinality chs == cardinality states
    // There are no consumers of this signal left, dispose it.
    select one evt related by sevt->SM_EVT[R525];
    evt.dispose();    
  end if;
end if;',
	1,
	'',
	1680);
INSERT INTO O_TFR
	VALUES (1684,
	1509,
	'initialize',
	'',
	19,
	1,
	'// Transition.initialize()
// Create the action home
create object instance ah of SM_AH;
create object instance tah of SM_TAH;
relate ah to tah across R513;
select one sm related by self->SM_SM[R505];  
create object instance act of SM_ACT;
act.Suc_Pars = ParseStatus::parseInitial;
relate act to ah across R514;
relate act to sm across R515;
relate self to tah across R530;
',
	1,
	'',
	1669);
INSERT INTO O_TFR
	VALUES (1673,
	1509,
	'get_name',
	'',
	322,
	1,
	'// Transition.get_name()
result = "";
select one nst related by self->SM_NSTXN[R507];
if not_empty nst
  result = nst.get_name();
end if;
select one net related by self->SM_NETXN[R507];
if not_empty net
  result = net.get_connector_text();
end if;
select one ctxn related by self->SM_CRTXN[R507];
if(not_empty ctxn)
  select one evt related by ctxn->SM_LEVT[R509]->SM_SEVT[R526]
                                                                                              ->SM_EVT[R525];
  if(not_empty evt)
    result = evt.get_event_text();
  else
    result = "No Event Assigned";
  end if;
end if;
return result;',
	1,
	'',
	1663);
INSERT INTO O_TFR
	VALUES (1688,
	1509,
	'updateAssignedSignal',
	'',
	19,
	1,
	'select one evt related by self->SM_NSTXN[R507]->SM_SEME[R504]->SM_SEVT[R503];
select one machine related by self->SM_SM[R505];
// note the selection from instances of will work below as we are contained in
// the same model root as the component
componentId = machine.getContainingComponentId();
select any component from instances of C_C where (selected.Id == componentId);
if(not_empty component)
  select one signalEvt related by evt->SM_SGEVT[R526];
  select one proSignal related by signalEvt->SPR_PS[R528];
  select many interfaces related by component->C_PO[R4010]->C_IR[R4016]
                                                                   ->C_I[R4012];
  if(not_empty proSignal and Util::isProxy(element:proSignal.convertToInstance()))
    signalId = self.locateMatchingProvidedSignal();
    select any matchingSignal related by interfaces->C_EP[R4003]
                ->SPR_PEP[R4501]->SPR_PS[R4503] where (selected.Id == signalId);
    if(not_empty matchingSignal)
      self.removeSignal();
      select one pep related by matchingSignal->SPR_PEP[R4503];
      self.addSignal(interface_id: pep.Provision_Id,
                                          signal_id: pep.ExecutableProperty_Id);
    else
      // look for a matching required signal
      signalId = self.locateMatchingRequiredSignal();
      select any matchingReqSignal related by interfaces->C_EP[R4003]
                ->SPR_REP[R4500]->SPR_RS[R4502] where (selected.Id == signalId);
      if(not_empty matchingReqSignal)
        self.removeSignal();
        select one rep related by matchingReqSignal->SPR_REP[R4502];
        self.addSignal(interface_id: rep.Requirement_Id,
                                          signal_id: rep.ExecutableProperty_Id);
      else
        // indicate to the user that no matching signal was
        // found in the destination
        message = "Matching signals for the following were not found in the ";
        message = message + "destination.";
        Util::addPastedElementToProblemList(
                      elementName:signalEvt.get_event_text(), message: message);
        self.removeSignal();
      end if;
    end if;
  end if;
  select one reqSignal related by signalEvt->SPR_RS[R529];
  if(not_empty reqSignal and Util::isProxy(element:reqSignal.convertToInstance()))
    signalId = self.locateMatchingRequiredSignal();
    select any matchingSignal related by interfaces->C_EP[R4003]
                ->SPR_REP[R4500]->SPR_RS[R4502] where (selected.Id == signalId);
    if(not_empty matchingSignal)
      self.removeSignal();
      select one rep related by matchingSignal->SPR_REP[R4502];
      self.addSignal(interface_id: rep.Requirement_Id,
                                          signal_id: rep.ExecutableProperty_Id);
    else
      // look for a matching provided signal
      signalId = self.locateMatchingProvidedSignal();
      select any matchingProSignal related by interfaces->C_EP[R4003]
                ->SPR_PEP[R4501]->SPR_PS[R4503] where (selected.Id == signalId);
      if(not_empty matchingProSignal)
        self.removeSignal();
        select one pep related by matchingProSignal->SPR_PEP[R4503];
        self.addSignal(interface_id: pep.Provision_Id,
                                          signal_id: pep.ExecutableProperty_Id);
      else
        // indicate to the user that no matching signal was
        // found in the destination
        message = "Matching signals for the following were not found in the ";
        message = message + "destination.";
        Util::addPastedElementToProblemList(
                      elementName:signalEvt.get_event_text(), message: message);
        self.removeSignal();
      end if;
    end if;
  end if;
end if;',
	1,
	'',
	1682);
INSERT INTO O_TFR
	VALUES (1689,
	1509,
	'updateAssignedEventOrSignal',
	'',
	19,
	1,
	'select one creationTrans related by self->SM_CRTXN[R507];
if(not_empty creationTrans)
  self.updateAssignedEvent();
  return;
end if;
select one evt related by self->SM_NSTXN[R507]->SM_SEME[R504]->SM_SEVT[R503];
if(not_empty evt)
  select one signalEvent related by evt->SM_SGEVT[R526];
  if(not_empty signalEvent)
    self.updateAssignedSignal();
  else
    self.updateAssignedEvent();
  end if;
end if;',
	1,
	'',
	1688);
INSERT INTO O_TFR
	VALUES (1690,
	1509,
	'locateMatchingProvidedSignal',
	'',
	296,
	1,
	'select one stateMachine related by self->SM_SM[R505];
select one evt related by self->SM_NSTXN[R507]->SM_SEME[R504]->SM_SEVT[R503];
select one signalEvt related by evt->SM_SGEVT[R526];
select one proSignal related by signalEvt->SPR_PS[R528];

name = "";
direction = IFDirectionType::ClientServer;
select any ep from instances of C_EP
                                    where (selected.Id == GD::NULL_UNIQUE_ID());
if(not_empty proSignal)
  name = proSignal.Name;
  select one ep related by proSignal->SPR_PEP[R4503]->C_EP[R4501];
  select one sig related by ep->C_AS[R4004];
  direction = sig.Direction;
else
  select one reqSignal related by signalEvt->SPR_RS[R529];
  if(not_empty reqSignal)
    name = reqSignal.Name;
    direction = IFDirectionType::ClientServer;
    select one ep related by reqSignal->SPR_REP[R4502]->C_EP[R4500];
  else
    pathMsg = "<No Path Available - Empty instance>";
    if (not_empty stateMachine)
      pathMsg = stateMachine.getPath();
    end if;
	USER::logError(msg:"Signal Event had no associated signal.",path:pathMsg);
    return GD::NULL_UNIQUE_ID();
  end if;
end if;
select one machine related by self->SM_SM[R505];
// note the selection from instances of will work below as we are contained in
// the same model root as the component
componentId = machine.getContainingComponentId();
select any component from instances of C_C where (selected.Id == componentId);
select many interfaces related by component->C_PO[R4010]->C_IR[R4016]
                                                                   ->C_I[R4012];
select many testParameters related by ep->C_PP[R4006];
select any matchingSignal from instances of SPR_PS
                                    where (selected.Id == GD::NULL_UNIQUE_ID());
select many existingProSignals related by interfaces->C_EP[R4003]
                                                ->SPR_PEP[R4501]->SPR_PS[R4503];
for each existingSignal in existingProSignals
  select one existingAS related by existingSignal->SPR_PEP[R4503]->C_EP[R4501]
                                                                  ->C_AS[R4004];
  if(existingSignal.Name == name and existingAS.Direction == direction)
    select many parameters related by existingSignal->SPR_PEP[R4503]
                                                     ->C_EP[R4501]->C_PP[R4006];
    index = 0;
    matchNotFound = false; 
    for each testParm in testParameters
      internalIndex = 0;
      select one testType related by testParm->S_DT[R4007];
      for each parameter in parameters
        if(internalIndex == index)
          // param to test
          if(testParm.Name != parameter.Name)
            matchNotFound = true;
            break;
          end if;
          select one type related by parameter->S_DT[R4007];
          if(testType.Name != type.Name)
            matchNotFound = true;
            break;
          end if;
        end if;
        internalIndex = internalIndex + 1;
      end for;
      if(matchNotFound)
        break;
      end if;
      index = index + 1;
      if(cardinality parameters < cardinality testParameters)
        // this is not OK, the existing signal will not satisfy
        // the copied signal
        matchNotFound = true;
        break;
      end if;
    end for;
    if(not matchNotFound)
      // ask the signal if it can be allocated to this
      // transition
      if(existingSignal.isAvailableForAllocationTo(transition_id:self.Trans_ID))
        matchingSignal = existingSignal;
        break;
      end if;
    end if;
  end if;
end for;
if(not_empty matchingSignal)
  return matchingSignal.Id;
else
  return GD::NULL_UNIQUE_ID();
end if;',
	1,
	'',
	1689);
INSERT INTO O_TFR
	VALUES (1691,
	1509,
	'locateMatchingRequiredSignal',
	'',
	296,
	1,
	'select one evt related by self->SM_NSTXN[R507]->SM_SEME[R504]->SM_SEVT[R503];
select one signalEvt related by evt->SM_SGEVT[R526];
select one reqSignal related by signalEvt->SPR_RS[R529];
select one machine related by self->SM_SM[R505];
name = "";
direction = IFDirectionType::ServerClient;
select any ep from instances of C_EP
                                    where (selected.Id == GD::NULL_UNIQUE_ID());
if(not_empty reqSignal)
  name = reqSignal.Name;
  select one ep related by reqSignal->SPR_REP[R4502]->C_EP[R4500];
  select one sig related by ep->C_AS[R4004];
  direction = sig.Direction;
else
  select one proSignal related by signalEvt->SPR_PS[R528];
  if(not_empty proSignal)
    name = proSignal.Name;
    direction = IFDirectionType::ServerClient;
    select one ep related by proSignal->SPR_PEP[R4503]->C_EP[R4501];
  else
    pathMsg = "<No Path Available - Empty instance>";
    if (not_empty machine)
      pathMsg = machine.getPath();
    end if;
	USER::logError(msg:"Signal Event had no associated signal.",path:pathMsg);
    return GD::NULL_UNIQUE_ID();
  end if;
end if;
// note the selection from instances of will work below as we are contained in
// the same model root as the component
componentId = machine.getContainingComponentId();
select any component from instances of C_C where (selected.Id == componentId);
select many interfaces related by component->C_PO[R4010]->C_IR[R4016]
                                                                   ->C_I[R4012];
select many testParameters related by ep->C_PP[R4006];
select any matchingSignal from instances of SPR_RS
                                    where (selected.Id == GD::NULL_UNIQUE_ID());
select many existingReqSignals related by interfaces->C_EP[R4003]
                                                ->SPR_REP[R4500]->SPR_RS[R4502];
for each existingSignal in existingReqSignals
  select one existingSigAS related by existingSignal->SPR_REP[R4502]
                                                     ->C_EP[R4500]->C_AS[R4004];
  if(existingSignal.Name == name and existingSigAS.Direction == direction)
    select many parameters related by existingSignal->SPR_REP[R4502]
                                                     ->C_EP[R4500]->C_PP[R4006];
    index = 0;
    matchNotFound = false;
    for each testParm in testParameters
      internalIndex = 0;
      select one testType related by testParm->S_DT[R4007];
      for each parameter in parameters
        if(internalIndex == index)
          // param to test
          if(testParm.Name != parameter.Name)
            matchNotFound = true;
            break;
          end if;
          select one type related by parameter->S_DT[R4007];
          if(testType.Name != type.Name)
            matchNotFound = true;
            break;
          end if;
        end if;
        internalIndex = internalIndex + 1;
      end for;
      if(matchNotFound)
        break;
      end if;
      index = index + 1;
      if(cardinality parameters < cardinality testParameters)
        // this is not OK, the existing signal will not satisfy
        // the copied signal
        matchNotFound = true;
        break;
      end if;
    end for;
    if(not matchNotFound)
      // ask the signal if it can be allocated to this
      // transition
      if(existingSignal.isAvailableForAllocationTo(transition_id:self.Trans_ID))
        matchingSignal = existingSignal;
        break;
      end if;
    end if;
  end if;
end for;
if(not_empty matchingSignal)
  return matchingSignal.Id;
else
  return GD::NULL_UNIQUE_ID();
end if; ',
	1,
	'',
	1690);
INSERT INTO O_TFR
	VALUES (1692,
	1509,
	'get_label',
	'',
	322,
	1,
	'// Transition.get_name()
result = "";
select one nst related by self->SM_NSTXN[R507];
if not_empty nst
  result = nst.get_name();
end if;
select one net related by self->SM_NETXN[R507];
if not_empty net
  result = net.get_connector_text();
end if;
select one destState related by self->SM_STATE[R506];
select one srcState related by nst->SM_SEME[R504]->SM_STATE[R503];
if not_empty srcState
  result = result + " in " + srcState.Name + " to " + destState.Name;
else
  result = result + " to creation state: " + destState.Name;
end if;
return result;',
	1,
	'',
	1691);
INSERT INTO O_TFR
	VALUES (1693,
	1509,
	'mergeDispose',
	'',
	19,
	1,
	'select one nstxn related by self->SM_NSTXN[R507];
if (not_empty nstxn)
  unrelate nstxn from self across R507;
  select one seme related by nstxn->SM_SEME[R504];
  if(not_empty seme)
    unrelate nstxn from seme across R504;
  end if;
  delete object instance nstxn;
end if;
                                   
select one crtxn related by self->SM_CRTXN[R507];
if (not_empty crtxn)
  unrelate self from crtxn across R507;
  select one evt related by crtxn->SM_LEVT[R509];
  if(not_empty evt)
    unrelate evt from crtxn across R509;
  end if;
  delete object instance crtxn;
end if; 
select one netxn related by self->SM_NETXN[R507];
if (not_empty netxn)
  unrelate self from netxn across R507;
  select one state related by netxn->SM_STATE[R508];
  unrelate netxn from state across R508;
  delete object instance netxn;
end if;
                                   
select one sm related by self->SM_SM[R505];
unrelate self from sm across R505;
select one state related by self->SM_STATE[R506];
unrelate self from state across R506;
select one act related by self->SM_TAH[R530]->SM_AH[R513]->SM_ACT[R514];
if (not_empty act )
  act.dispose();
else
  // the dispose unit tests don''t populate everything
  select one meah related by self->SM_MEAH[R512];
  if ( not_empty meah )
    select one mealy related by meah->SM_MEALY[R512];
    unrelate mealy from self across R512 using meah;
  end if;
end if;
select many insts related by self->I_INS[R2953];
for each inst in insts
  unrelate self from inst across R2953;
end for;
delete object instance self;',
	1,
	'',
	1692);
INSERT INTO O_TFR
	VALUES (1694,
	1509,
	'checkIntegrity',
	'',
	19,
	1,
	'/**
 *  Create an integrity issue if any other transition a the same source state 
 *  and shares the same assigned event
 */
select one class related by self->SM_SM[R505]->SM_ISM[R517]->O_OBJ[R518];
select one package related by class->PE_PE[R8001]->EP_PKG[R8000];
machineName = "Instance State Machine";
if(empty package)
  select one class related by self->SM_SM[R505]->SM_ASM[R517]->O_OBJ[R519];
  select one package related by class->PE_PE[R8001]->EP_PKG[R8000];
  machineName = "Class State Machine";
end if;
select one state related by self->SM_NSTXN[R507]->SM_SEME[R504]->SM_STATE[R503];
select many transitions related by state->SM_SEME[R503]
                                                 ->SM_NSTXN[R504]->SM_TXN[R507];
for each transition in transitions
  select one selfEvt related by self->SM_NSTXN[R507]->SM_SEME[R504]
                                                                ->SM_SEVT[R503];
  select one otherEvt related by transition->SM_NSTXN[R507]->SM_SEME[R504]
                                                                ->SM_SEVT[R503];                                                                
  if(transition != self and otherEvt == selfEvt)
    select one system related by package->S_SYS[R1405];
    sys_id = GD::NULL_UNIQUE_ID();
    if(not_empty system)
      sys_id = system.Sys_ID;
    end if;
	MI_IM::createIssue(sys_id:sys_id, description:
	               "Found another transition with the same event assignment " +
  "leaving the same state.", severity:Severity::Error, name:self.get_name(),
	                path:class.getPath(path:self.get_name(), includeSelf:true) +
	              "::" + machineName + "::" + self.get_name(), id:self.SMstt_ID,
	                                          element:self.convertToInstance());
  end if;
end for;',
	1,
	'',
	1693);
INSERT INTO O_TFR
	VALUES (1695,
	1509,
	'convertToInstance',
	'A utility operation to cast an instance of this type to the
instance datatype.

Translate: native',
	317,
	1,
	'// just return this instance as an Object
return this;',
	0,
	'',
	1694);
INSERT INTO O_TFR
	VALUES (1696,
	1509,
	'mergeStateMachineEventAssignedLocalEvent',
	'',
	316,
	1,
	'// only process this if it is a removal, which the given UUID will be null
if(param.event_id == GD::NULL_UNIQUE_ID())
  select one ns_txn related by self->SM_NSTXN[R507];
  if ( not_empty ns_txn )
    select one seme related by ns_txn->SM_SEME[R504];
    select one event related by seme->SM_SEVT[R503];
    select one state related by seme->SM_STATE[R503];
    select many existing related by event->SM_SEME[R503]
                                 where (selected.SMevt_ID == event.SMevt_ID and
                                           selected.SMstt_ID == state.SMstt_ID);
    if(cardinality existing == 1)
      create object instance ch of SM_CH;
      relate seme to ch across R504;
    end if;
    unrelate ns_txn from seme across R504;
    create object instance ne_txn of SM_NETXN;
    unrelate ns_txn from self across R507;
    relate self to ne_txn across R507;
    delete object instance ns_txn;
    select one orig_state related by seme->SM_STATE[R503];
    relate ne_txn to orig_state across R508;
    select one dest_state related by self->SM_STATE[R506];
  else
    select one cr_txn related by self->SM_CRTXN[R507];
    select one levt related by cr_txn->SM_LEVT[R509];
    if ( not_empty levt )
      unrelate cr_txn from levt across R509;
    end if;
  end if;
  return true;
end if;
return false;',
	1,
	'',
	1695);
INSERT INTO O_TPARM
	VALUES (1697,
	1696,
	'event_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1698,
	1509,
	'getDescription',
	'',
	322,
	1,
	'select one action related by self->SM_TAH[R530]->SM_AH[R513]
                                                                 ->SM_ACT[R514];
return action.Descrip;',
	1,
	'',
	1696);
INSERT INTO O_NBATTR
	VALUES (1511,
	1509);
INSERT INTO O_BATTR
	VALUES (1511,
	1509);
INSERT INTO O_ATTR
	VALUES (1511,
	1509,
	0,
	'Trans_ID',
	'Full Name: Transition Identifier',
	'',
	'Trans_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_REF
	VALUES (1509,
	565,
	0,
	564,
	1527,
	1528,
	1529,
	1512,
	1699,
	0,
	0,
	'',
	'State Machine',
	'SM_ID',
	'R505');
INSERT INTO O_REF
	VALUES (1509,
	1492,
	1,
	1521,
	1523,
	1524,
	1525,
	1512,
	1700,
	1699,
	0,
	'',
	'State Machine State',
	'SM_ID',
	'R506.''is destined to''');
INSERT INTO O_RATTR
	VALUES (1512,
	1509,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1512,
	1509,
	1511,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1509,
	1492,
	1,
	1522,
	1523,
	1524,
	1525,
	1701,
	1702,
	0,
	0,
	'',
	'State Machine State',
	'SMstt_ID',
	'R506.''is destined to''');
INSERT INTO O_RATTR
	VALUES (1701,
	1509,
	1522,
	1492,
	1,
	'SMstt_ID');
INSERT INTO O_ATTR
	VALUES (1701,
	1509,
	1512,
	'SMstt_ID',
	'',
	'',
	'SMstt_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1509,
	1492,
	1,
	1526,
	1523,
	1524,
	1525,
	1703,
	1704,
	0,
	0,
	'',
	'State Machine State',
	'SMspd_ID',
	'R506.''is destined to''');
INSERT INTO O_RATTR
	VALUES (1703,
	1509,
	1585,
	1583,
	1,
	'SMspd_ID');
INSERT INTO O_ATTR
	VALUES (1703,
	1509,
	1701,
	'SMspd_ID',
	'',
	'',
	'SMspd_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1509);
INSERT INTO O_OIDA
	VALUES (1511,
	1509,
	0,
	'Trans_ID');
INSERT INTO O_OIDA
	VALUES (1512,
	1509,
	0,
	'SM_ID');
INSERT INTO O_ID
	VALUES (1,
	1509);
INSERT INTO O_ID
	VALUES (2,
	1509);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1593,
	'Supplemental Data Items',
	519,
	'SM_SDI',
	'It used to help organize event parameters (SM_EVTDI) into common sets to enforce
the rule that all events (SM_EVT) causing transitions (SM_TXN) into the same
state (SM_STATE) must carry the same data set.

This rule was retired with BridgePoint engineering Job i3208 after customer
requests that transition actions were less useful if this rule is enforced.

Events now locate their data across simple association 2.

Deprecated:true',
	1478);
INSERT INTO O_TFR
	VALUES (1705,
	1593,
	'dispose',
	'Dispose of this SM_SDI.
',
	19,
	1,
	'select one supdt related by self->SM_SUPDT[R522];
select one evtdi related by self->SM_EVTDI[R522];
unrelate supdt from evtdi across R522 using self;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (1706,
	1593,
	'get_name',
	'',
	322,
	1,
	'select one edi related by self->SM_EVTDI[R522];
return edi.Name;
',
	1,
	'',
	1705);
INSERT INTO O_REF
	VALUES (1593,
	52,
	0,
	277,
	1590,
	1594,
	1592,
	1707,
	1708,
	0,
	0,
	'',
	'State Machine Event Data Item',
	'SMedi_ID',
	'R522');
INSERT INTO O_RATTR
	VALUES (1707,
	1593,
	277,
	52,
	1,
	'SMedi_ID');
INSERT INTO O_ATTR
	VALUES (1707,
	1593,
	0,
	'SMedi_ID',
	'',
	'',
	'SMedi_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1593,
	1583,
	0,
	1585,
	1590,
	1594,
	1591,
	1709,
	1710,
	0,
	0,
	'',
	'Event Supplemental Data',
	'SMspd_ID',
	'R522');
INSERT INTO O_RATTR
	VALUES (1709,
	1593,
	1585,
	1583,
	1,
	'SMspd_ID');
INSERT INTO O_ATTR
	VALUES (1709,
	1593,
	1707,
	'SMspd_ID',
	'',
	'',
	'SMspd_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1593,
	52,
	0,
	276,
	1590,
	1594,
	1592,
	1711,
	1712,
	0,
	0,
	'',
	'State Machine Event Data Item',
	'SM_ID',
	'R522');
INSERT INTO O_REF
	VALUES (1593,
	1583,
	0,
	1586,
	1590,
	1594,
	1591,
	1711,
	1713,
	1712,
	0,
	'',
	'Event Supplemental Data',
	'SM_ID',
	'R522');
INSERT INTO O_RATTR
	VALUES (1711,
	1593,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1711,
	1593,
	1709,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1593);
INSERT INTO O_OIDA
	VALUES (1707,
	1593,
	0,
	'SMedi_ID');
INSERT INTO O_OIDA
	VALUES (1709,
	1593,
	0,
	'SMspd_ID');
INSERT INTO O_OIDA
	VALUES (1711,
	1593,
	0,
	'SM_ID');
INSERT INTO O_ID
	VALUES (1,
	1593);
INSERT INTO O_ID
	VALUES (2,
	1593);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1492,
	'State Machine State',
	502,
	'SM_STATE',
	'Represents a state in the state machine.',
	1478);
INSERT INTO O_TFR
	VALUES (1714,
	1492,
	'get_style',
	'A State is shown as a round cornered box.
-----------------------------------------------------------------------------------
Bridge:GD',
	784,
	1,
	'return Style::RoundBox;',
	1,
	'',
	1715);
INSERT INTO O_TFR
	VALUES (1716,
	1492,
	'get_compartments',
	'A State has two compartments, one for the Name and one for the
Action Semantics.
-----------------------------------------------------------------------------------
Bridge:GD',
	298,
	1,
	'return 2;',
	1,
	'',
	1717);
INSERT INTO O_TFR
	VALUES (1717,
	1492,
	'get_compartment_text',
	'Returns the Name or Action Semantics depending on the compartment
requested.
-----------------------------------------------------------------------------------
Bridge:GD',
	322,
	1,
	'result = "";
//
// Compartment 1
//
if (param.comp_num == 1)
  if (param.at == Justification::Left)
    // State number needs leading space to clear
    // rounded corners of state symbol
    result = " " + GD::int_to_string(value:self.Numb) + ". " + self.Name;
  end if;
//
// Compartment 2
//
elif (param.comp_num == 2)
 if (param.at == Justification::Left)
    select one moore_action related by self->SM_MOAH[R511]->SM_AH[R513]->SM_ACT[R514];
    if (not_empty moore_action)
      if (moore_action.Suc_Pars == ParseStatus::parseSuccessful)
        result = "entry/" + GD::newline();
      elif (moore_action.Suc_Pars == ParseStatus::parseUnsuccessful)
        result = "*** PARSE ERROR(S) ***" + GD::newline();
      end if;
      result = result + moore_action.Action_Semantics;
    end if;
  end if;
end if;
return result;',
	1,
	'',
	1718);
INSERT INTO O_TPARM
	VALUES (1719,
	1717,
	'comp_num',
	298,
	0,
	'',
	1720,
	'');
INSERT INTO O_TPARM
	VALUES (1721,
	1717,
	'ent_num',
	298,
	0,
	'',
	1719,
	'');
INSERT INTO O_TPARM
	VALUES (1720,
	1717,
	'at',
	779,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1722,
	1492,
	'get_entries',
	'Both compartments have just one entry.
-----------------------------------------------------------------------------------
Bridge:GD',
	298,
	1,
	'return 1;',
	1,
	'',
	1716);
INSERT INTO O_TPARM
	VALUES (1723,
	1722,
	'comp_num',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1724,
	1492,
	'get_text_style',
	'A State requires no special text style.
-----------------------------------------------------------------------------------
Bridge:GD',
	784,
	1,
	'return Style::None;',
	1,
	'',
	1714);
INSERT INTO O_TPARM
	VALUES (1725,
	1724,
	'comp_num',
	298,
	0,
	'',
	1726,
	'');
INSERT INTO O_TPARM
	VALUES (1727,
	1724,
	'ent_num',
	298,
	0,
	'',
	1725,
	'');
INSERT INTO O_TPARM
	VALUES (1726,
	1724,
	'at',
	779,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1715,
	1492,
	'get_ooa_id',
	'The ooa_id of a State is it''s SMstt_ID.
-----------------------------------------------------------------------------------
Bridge:GD',
	296,
	1,
	'return self.SMstt_ID;',
	1,
	'',
	1722);
INSERT INTO O_TFR
	VALUES (1728,
	1492,
	'initialize',
	'Initialize a new State instance.',
	19,
	1,
	'name = ::getUniqueInitialName( 
    instance: self.convertToInstance(), 
    candidateName: "Unnamed State");
success = ::getNewElementName(name:name,instance: self.convertToInstance(),validateName:true);    
if ( success!="") 
 self.Name=success;
else 
 self.dispose();
end if;    
// set this state''s number to a default value
self.Numb = 1;

// for each state associated with this state''s state machine
select many states related by self->SM_SM[R501]->SM_STATE[R501];
for each state in states
  // if this state equals self, skip it
  if (state.SMstt_ID == self.SMstt_ID) continue; end if;

  // if this other state''s number is greater than this state''s number
  if ( state.Numb >= self.Numb )
    // have this state''s number be just greater than this
    // other state''s number
    self.Numb = state.Numb + 1;
  end if;
end for;

create object instance ah of SM_AH;
create object instance moah of SM_MOAH;
relate ah to moah across R513;
select one sm related by self->SM_SM[R501];
select one msm related by sm->SM_MOORE[R510];
relate self to msm across R511 using moah;
create object instance act of SM_ACT;
act.Suc_Pars = ParseStatus::parseInitial;
relate act to ah across R514;
relate act to sm across R515;
//
// create SEM entry instances
//
select many event_set related by sm->SM_EVT[R502]->SM_SEVT[R525];
for each event in event_set
  create object instance sem of SM_SEME;
  // TODO: get default subtype from preferences
  create object instance ch of SM_CH;
  relate self to event across R503 using sem;
  relate ch to sem across R504;
end for;',
	1,
	'',
	1724);
INSERT INTO O_TFR
	VALUES (1729,
	1492,
	'dispose',
	'Dispose this State Machine State',
	19,
	1,
	'select one sm_sm related by self->SM_SM[R501];
unrelate self from sm_sm across R501;
select many semes related by self->SM_SEME[R503];
for each seme in semes
  seme.dispose();
end for;
// New state xtns become No event xtns.
// No-event-transitions related by R508 are handled in txn.dispose
select many txns related by self->SM_TXN[R506];
for each txn in txns
  txn.dispose();
end for;
select many netxns related by self->SM_NETXN[R508]->SM_TXN[R507];
for each netxn in netxns
  netxn.dispose();
end for;
//
// Instance Subsystem
select many ins_sts related by self->I_INS[R2915];
for each ins_st in ins_sts
  unrelate self from ins_st across R2915;
end for;
//
delete object instance self;
',
	1,
	'',
	1730);
INSERT INTO O_TFR
	VALUES (1731,
	1492,
	'actionFilter',
	'Bridge: UI
',
	316,
	1,
	'if (param.name == "can" )
  if ((param.value =="ch generic pkg" or param.value =="ignore spec pkg") or
      (param.value =="ch spec pkg" or param.value =="ignore generic pkg"))
  
    select one cls related by self->SM_SM[R501]->SM_ASM[R517]->O_OBJ[R519];
    if (empty cls)
      select one cls related by self->SM_SM[R501]->SM_ISM[R517]->O_OBJ[R518];
    end if;
    select one packageableElem related by cls->PE_PE[R8001];
    select one package related by packageableElem->EP_PKG[R8000];
    select one cc related by packageableElem->C_C[R8003];
    isInGenericPackage = not_empty package or not_empty cc;
    
    if (((param.value == "ch spec pkg") or (param.value == "ignore spec pkg")) and (isInGenericPackage))
      return false;
    end if;
    if (((param.value == "ch generic pkg") or (param.value == "ignore generic pkg")) and (not isInGenericPackage))
      return false;
    end if;

	select any event from instances of SM_EVT
		where ::canStateIgnoreOrSayEventCantHappen(
			eventId:selected.SMevt_ID, eventStateMachineId:selected.SM_ID,
    		stateId:self.SMstt_ID, stateStateMachineId:self.SM_ID,
    		considerCantHappen:((param.value == "ch spec pkg") or (param.value == "ch generic pkg")));
    return not_empty event;
  end if;
end if;
return false;
',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (1732,
	1731,
	'name',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1733,
	1731,
	'value',
	322,
	0,
	'',
	1732,
	'');
INSERT INTO O_TFR
	VALUES (1734,
	1492,
	'notAlreadyAssigned',
	'',
	316,
	1,
	'// if the given event is polymorphic and has an non-local event for
// this state''s state machine
select any event from instances of SM_EVT 
	where selected.SMevt_ID == param.eventId 
		and selected.SM_ID == param.eventStateMachineId;
select any nonLocalEvent related by event->SM_PEVT[R525]->SM_NLEVT[R527]->
	SM_SEVT[R526]->SM_EVT[R525] where selected.SM_ID == self.SM_ID;
if (not_empty nonLocalEvent)
	// consider the non-local event instead, since that is the one that would
	// be assigned within this state''s state machine
	event = nonLocalEvent;
end if;

if ( param.crtxn )
  select any crt related by self->SM_SM[R501]->SM_TXN[R505]->SM_CRTXN[R507]
      where selected.SMevt_ID == event.SMevt_ID;
  return empty crt;
else
  select any nst related by self->SM_SEME[R503]->SM_NSTXN[R504]
      where selected.SMevt_ID == event.SMevt_ID;
  return empty nst;
end if;

',
	1,
	'',
	1728);
INSERT INTO O_TPARM
	VALUES (1735,
	1734,
	'eventId',
	296,
	0,
	'',
	1736,
	'');
INSERT INTO O_TPARM
	VALUES (1736,
	1734,
	'crtxn',
	316,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1737,
	1734,
	'eventStateMachineId',
	296,
	0,
	'',
	1735,
	'');
INSERT INTO O_TFR
	VALUES (1738,
	1492,
	'canIgnoreOrSayEventCantHappen',
	'',
	316,
	1,
	'/*
Returns whether the given event may be selected to be marked as ignored by, 
or said to can''t-happen on (as dictated by the considerCantHappen parameter), 
this state.
*/

// if the given event or this state belongs to a class state machine
select any event from instances of SM_EVT 
	where selected.SMevt_ID == param.eventId 
	and selected.SM_ID == param.eventStateMachineId;
if empty event
    return false;
end if;
select one eventClassStateMachine related by event->SM_SM[R502]->SM_ASM[R517];
select one selfStateMachine related by self->SM_SM[R501];
select one selfClassStateMachine related by selfStateMachine->SM_ASM[R517];
if (not_empty eventClassStateMachine or not_empty selfClassStateMachine)
	// if the the given event doesn''t belong to this state''s state machine 
	if (event.SM_ID != self.SM_ID) 
		// this state may not ignore the event or say it can''t happen
		return false;
 	end if;

// otherwise, it belongs to an instance state machine	
else 
	// if the given event is non-local
	select one nonLocalEvent related by event->SM_SEVT[R525]->SM_NLEVT[R526];
	if (not_empty nonLocalEvent) 
		// don''t allow it to be ignored/can''t-happened; during a separate call to 
		// this operation, we''ll consider the associated polymorphic event, 
		// instead, so there aren''t duplicates in the list that is presented to the user
		return false;
	end if;
		
	// if the given event doesn''t belong to this state''s state machine 
	select one selfClass related by selfStateMachine->SM_ISM[R517]->O_OBJ[R518];
	select one eventStateMachine related by event->SM_SM[R502]->SM_ISM[R517];
	if (param.eventStateMachineId != self.SM_ID)
		
		// if the given event doesn''t belong to a supertype of this state''s 
		// owning class
		select one eventClass related by eventStateMachine->O_OBJ[R518];
		if (not eventClass.isSupertypeOf(classId:selfClass.Obj_ID))
			// it can''t be ignored/can''t-happened within this state''s state machine
			return false;
		end if;
		
		// if the given event is assigned (or ignored/can''t-happened) anywhere 
		// on the path from the supertype state machine (inclusive) to this 
		// state''s state machine (exclusive)  
		if (event.isAssignedInSupertypeStateMachine(subtypeId:selfClass.Obj_ID))
			// it can''t be ignored/can''t-happened within this state''s state machine
			return false;
		end if;
		
	end if;
	
	// if the given event is assigned (or ignored/can''t-happened) in any subtype 
	// state machine of this state''s state machine  
	if (event.isAssignedInSubtypeStateMachine(supertypeId:selfClass.Obj_ID))
		// it can''t be ignored/can''t-happened within this state''s state machine
		return false;
	end if;
end if;
	
// if the given event has no associated matrix event
select one matrixEvent related by event->SM_SEVT[R525];
if (empty matrixEvent) 
	// it must be polymorphic, so use the aliasing event''s matrix event, instead
	select any matrixEvent related by event->SM_PEVT[R525]->SM_NLEVT[R527]->SM_SEVT[R526]
		where selected.SM_ID == self.SM_ID;
end if;

// if the matrix event has a matrix entry for this state
select any matrixEntry related by matrixEvent->SM_SEME[R503]
	where selected.SMstt_ID == self.SMstt_ID and selected.SM_ID == self.SM_ID;
if (not_empty matrixEntry) 
	// if we are considering whether the event can be made a can''t happen
	if (param.considerCantHappen)
		// if the matrix entry isn''t an ignore 
		select one ignore related by matrixEntry->SM_EIGN[R504];
		if (empty ignore) 
			// the event can''t be changed to a can''t happen
			return false;
		end if;

	// otherwise, we are considering whether the event can be ignored
	else
		// if the matrix entry isn''t a can''t happen 
		select one cantHappen related by matrixEntry->SM_CH[R504];
		if (empty cantHappen) 
			// the event can''t be changed to being ignored
			return false;
		end if;
	end if;

// otherwise, we''ll consider the lack of an entry to mean the default value, 
// which is can''t-happen 
else 
	// if we are considering whether the event can be made a can''t happen
	if (param.considerCantHappen)
		// the event is already considered to have that status
		return false;
	end if;
end if;

// the given event may be ignored/can''t-happened by this state
return true;',
	1,
	'',
	1731);
INSERT INTO O_TPARM
	VALUES (1739,
	1738,
	'eventId',
	296,
	0,
	'',
	1740,
	'');
INSERT INTO O_TPARM
	VALUES (1741,
	1738,
	'eventStateMachineId',
	296,
	0,
	'',
	1739,
	'');
INSERT INTO O_TPARM
	VALUES (1740,
	1738,
	'considerCantHappen',
	316,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1718,
	1492,
	'getNameWithClass',
	'',
	322,
	1,
	'/*
Returns this state''s name, qualified by the key-letters of its owning class.
*/
select one clazz related by self->SM_SM[R501]->SM_ISM[R517]->O_OBJ[R518];
if (empty clazz) 
	select one clazz related by self->SM_SM[R501]->SM_ASM[R517]->O_OBJ[R519];
end if;	
return clazz.Key_Lett + ": " + self.Name;',
	1,
	'',
	1729);
INSERT INTO O_TFR
	VALUES (1730,
	1492,
	'convertToInstance',
	'A utility operation to cast an instance of this type to the
instance datatype.

Translate: native',
	317,
	1,
	'// just return this instance as an Object
return this;',
	0,
	'',
	1742);
INSERT INTO O_TFR
	VALUES (1742,
	1492,
	'checkBreakpoint',
	'',
	316,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return false;',
	1,
	'',
	1738);
INSERT INTO O_TPARM
	VALUES (1743,
	1742,
	'changeType',
	1744,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1745,
	1492,
	'checkIntegrity',
	'',
	19,
	1,
	'// check for any states with the same state number
select one class related by self->SM_SM[R501]->SM_ISM[R517]->O_OBJ[R518];
select one package related by class->PE_PE[R8001]->EP_PKG[R8000];
machineName = "Instance State Machine";
if(empty package)
  select one class related by self->SM_SM[R501]->SM_ASM[R517]->O_OBJ[R519];
  select one package related by class->PE_PE[R8001]->EP_PKG[R8000];
  machineName = "Class State Machine";
end if;
select one system related by package->S_SYS[R1405];
sys_id = GD::NULL_UNIQUE_ID();
if(not_empty system)
  sys_id = system.Sys_ID;
end if;
select many states related by self->SM_SM[R501]->SM_STATE[R501];
for each state in states
  if(state != self and state.Numb == self.Numb)
	MI_IM::createIssue(sys_id:sys_id, description:
	                   "Found another state under the same state machine " +
 	    "with the same state number.", severity:Severity::Error, name:self.Name,
	                     path:class.getPath(path:self.Name, includeSelf:true) +
	                    "::" + machineName + "::" + self.Name, id:self.SMstt_ID,
	                                          element:self.convertToInstance());
  end if;
  if(state != self and state.Name == self.Name)
	MI_IM::createIssue(sys_id:sys_id, description:
	                   "Found another state under the same state machine " +
 	    "with a matching name.", severity:Severity::Error, name:self.Name,
	                     path:class.getPath(path:self.Name, includeSelf:true) +
	                    "::" + machineName + "::" + self.Name, id:self.SMstt_ID,
	                                          element:self.convertToInstance());  
  end if;
end for;',
	1,
	'',
	1734);
INSERT INTO O_TFR
	VALUES (1746,
	1492,
	'getDescription',
	'',
	322,
	1,
	'select one action related by self->SM_MOAH[R511]->SM_AH[R513]->SM_ACT[R514];
return action.Descrip;',
	1,
	'',
	1745);
INSERT INTO O_NBATTR
	VALUES (1522,
	1492);
INSERT INTO O_BATTR
	VALUES (1522,
	1492);
INSERT INTO O_ATTR
	VALUES (1522,
	1492,
	0,
	'SMstt_ID',
	'Full Name: State Machine State Identifier',
	'',
	'SMstt_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_REF
	VALUES (1492,
	565,
	0,
	564,
	1491,
	1493,
	1494,
	1521,
	1747,
	0,
	0,
	'',
	'State Machine',
	'SM_ID',
	'R501');
INSERT INTO O_REF
	VALUES (1492,
	1583,
	0,
	1586,
	1581,
	1582,
	1584,
	1521,
	1748,
	1747,
	0,
	'',
	'Event Supplemental Data',
	'SM_ID',
	'R521.''receives asynchronous data via''');
INSERT INTO O_RATTR
	VALUES (1521,
	1492,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1521,
	1492,
	1522,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1492,
	1583,
	0,
	1585,
	1581,
	1582,
	1584,
	1526,
	1749,
	0,
	0,
	'',
	'Event Supplemental Data',
	'SMspd_ID',
	'R521.''receives asynchronous data via''');
INSERT INTO O_RATTR
	VALUES (1526,
	1492,
	1585,
	1583,
	1,
	'SMspd_ID');
INSERT INTO O_ATTR
	VALUES (1526,
	1492,
	1521,
	'SMspd_ID',
	'',
	'',
	'SMspd_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1750,
	1492);
INSERT INTO O_BATTR
	VALUES (1750,
	1492);
INSERT INTO O_ATTR
	VALUES (1750,
	1492,
	1526,
	'Name',
	'Full Name: State Name',
	'',
	'Name',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1751,
	1492);
INSERT INTO O_BATTR
	VALUES (1751,
	1492);
INSERT INTO O_ATTR
	VALUES (1751,
	1492,
	1750,
	'Numb',
	'Full Name: State Number
min_value: 0
max_value: 9999
',
	'',
	'Numb',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1752,
	1492);
INSERT INTO O_BATTR
	VALUES (1752,
	1492);
INSERT INTO O_ATTR
	VALUES (1752,
	1492,
	1751,
	'Final',
	'Full Name: Final State Indicator
Description: Indicates whether or not the state is a final state
Data Domain: 0 = not a final state, 1 = final state
enum0: Non-final state
enum1: Final state
',
	'',
	'Final',
	0,
	298,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1492);
INSERT INTO O_OIDA
	VALUES (1521,
	1492,
	0,
	'SM_ID');
INSERT INTO O_OIDA
	VALUES (1522,
	1492,
	0,
	'SMstt_ID');
INSERT INTO O_ID
	VALUES (1,
	1492);
INSERT INTO O_OIDA
	VALUES (1526,
	1492,
	1,
	'SMspd_ID');
INSERT INTO O_OIDA
	VALUES (1522,
	1492,
	1,
	'SMstt_ID');
INSERT INTO O_OIDA
	VALUES (1521,
	1492,
	1,
	'SM_ID');
INSERT INTO O_ID
	VALUES (2,
	1492);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (52,
	'State Machine Event Data Item',
	517,
	'SM_EVTDI',
	'Each state machine (SM_SM) has a pool of event data items that can be used as supplemental data (SM_SUPDT) for the events (SM_EVT) of the state machine.  When an event data item is used as supplemental data for an event an instance of SM_SDI is created.',
	1478);
INSERT INTO O_TFR
	VALUES (1753,
	52,
	'dispose',
	'Dispose this State Machine Event Data Item',
	19,
	1,
	'// State Machine Subsystem
select one sm related by self->SM_SM[R516];
unrelate self from sm across R516;
select one dt related by self->S_DT[R524];
unrelate self from dt across R524;
select many sdis related by self->SM_SDI[R522];
for each sdi in sdis
  sdi.dispose();
end for;
//
select one event related by self->SM_EVT[R532];
if not_empty event
  unrelate self from event across R532;
end if;
//
select one successor related by self->SM_EVTDI[R533.''precedes''];
select one predecessor related by self->SM_EVTDI[R533.''succeeds''];
if (not empty successor)
  unrelate self from successor across R533.''precedes'';
end if;
if (not empty predecessor)
  unrelate self from predecessor across R533.''succeeds'';
end if;
if (not_empty successor and not_empty predecessor)
  relate successor to predecessor across R533.''succeeds'';
end if;
//
// Value Subsystem
select many evdiValRefs related by self->V_EPR[R846];
for each evdiValRef in evdiValRefs
  evdiValRef.dispose();
end for;
//
// Instance Subsystem
select many divs related by self->I_DIV[R2934];
for each div in divs
  unrelate self from div across R2934;
  div.dispose();
end for;
// dispose each message argument
// associated with this parm
select many args related by self->MSG_EA[R1017];
for each arg in args
  arg.dispose();
end for;
select many dims related by self->S_DIM[R531];
for each dim in dims
  unrelate self from dim across R531;
  delete object instance dim;
end for;
//
// Finally, delete self;
delete object instance self;',
	1,
	'',
	1754);
INSERT INTO O_TFR
	VALUES (1755,
	52,
	'initialize',
	'Initialize this SM_EVTDI.  Set the name and data type to default values.',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one stateMachine related by self->SM_SM[R516];
select one evt related by self->SM_EVT[R532];
evt.addDataItemToOrder(id:self.SMedi_ID);
select one packageableElem related by self->SM_SM[R516]->SM_ASM[R517]->O_OBJ[R519]->PE_PE[R8001]; 
if (empty packageableElem)
  select one packageableElem related by self->SM_SM[R516]->SM_ISM[R517]->O_OBJ[R518]->PE_PE[R8001];
end if;
select one package related by packageableElem->EP_PKG[R8000];
select one component related by packageableElem->C_C[R8003];
isInGenericPackage = not_empty package or not_empty component;
if isInGenericPackage
  id = packageableElem.resolveDataTypeRelativeToSelf(default_name:"integer",
                                                          expected_name:"integer");                                                          
  select any dt related by package->PE_VIS[R8002]->
                       PE_PE[R8002]->S_DT[R8001] where selected.DT_ID == id;
  if (empty dt)
    select any dt related by component->PE_CVS[R8004]->
                     PE_PE[R8004]->S_DT[R8001] where selected.DT_ID == id;
  end if;	
  relate self to dt across R524;
  name = ::getUniqueInitialName( 
      instance: self.convertToInstance(), 
      candidateName: "Unnamed Data Item");
       success = ::getNewElementName(name:name,instance: self.convertToInstance(),validateName:true);    
         if ( success!="") 
           self.Name=success;
         else 
           self.dispose();
        end if;  
else
  select any dom from instances of S_DOM;
  select any dt related by dom->S_DT[R14] where selected.Name == "integer";
  if(empty dt)
    // if the integer dt was not found check the system level
    // dts, but only if the domain found is the formal content
    // of a component
    if(dom.participatesInSystem())
      select one system related by dom->CN_DC[R4204]->C_C[R4204]->CP_CP[R4608]
                                                                   ->S_SYS[R4606];
      dt_id = GD::NULL_UNIQUE_ID();
      if not_empty system
        dt_id = system.getCoreTypeId(name:"integer");
      end if;
      select any pe from instances of PE_PE where selected.Element_ID == dt_id;
      select one dt related by pe->S_DT[R8001]; 
    else
      // this is an error, if the domain is not
      // participating at the system level and
      // we cannot find the type at the domain
      // level we have a problem
      pathMsg = "<No Path Available - Empty instance>";
    if (not_empty  stateMachine)
      pathMsg =  stateMachine.getPath();
    end if;
	USER::logError(msg:"Unable to locate expected data type: integer",path:pathMsg);
    end if;
  end if;
  relate self to dt across R524;
  self.Name = ::getUniqueInitialName( 
      instance: self.convertToInstance(), 
      candidateName: "Unnamed Data Item");
end if;',
	1,
	'',
	1756);
INSERT INTO O_TFR
	VALUES (1757,
	52,
	'isAllowedType',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// if this element is at the system level check the
// system level data types, otherwise check the 
// domain
// State Machine Event Data Item.isAllowedType()
select one machine related by self->SM_SM[R516];
select one clazz related by machine->SM_ISM[R517]->O_OBJ[R518];
if(empty clazz)
  select one clazz related by machine->SM_ASM[R517]->O_OBJ[R519];
end if;
select one packageableElem related by clazz->PE_PE[R8001];
select one package related by packageableElem->EP_PKG[R8000];
select one component related by packageableElem->C_C[R8003];
isInGenericPackage = not_empty package or not_empty component;
if isInGenericPackage
  return packageableElem.isAllowedType(isReturnType:false,
                                                       typeName:param.typeName);
else
  select one domain related by clazz->S_SS[R2]->S_DOM[R1];
  if(not_empty domain)
    select one system related by domain->S_SYS[R28];
    if(not_empty system)
      return S_DT::isAllowedParameterType( typeName: param.typeName,
                                  			dom_id: domain.get_ooa_id());
    else
      // first check the domain level
      result = S_DT::isAllowedParameterType( typeName: param.typeName,
                                   			dom_id: domain.get_ooa_id());
      if(not result)
        // if nothing valid check the system level
        select one system related by domain->CN_DC[R4204]->C_C[R4204]
      											   ->CP_CP[R4608]->S_SYS[R4606];
        if(not_empty system)
          return Util::isAllowedParameterType(system:system.convertToInstance(),
                                                       typeName:param.typeName);
        else
          // we should never get here, log an error if we
          // do
          pathMsg = "<No Path Available - Empty instance>";
    if (not_empty machine)
      pathMsg = machine.getPath();
    end if;
	USER::logError(msg:"Unable to locate the system.",path:pathMsg);
        end if;
      else
        return result;
      end if;
    end if;
  end if;
  return false;
end if;',
	1,
	'',
	1755);
INSERT INTO O_TPARM
	VALUES (1758,
	1757,
	'typeName',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1754,
	52,
	'convertToInstance',
	'A utility operation to cast an instance of this type to the
instance datatype.

Translate: native',
	317,
	1,
	'// just return this instance as an Object
return this;',
	0,
	'',
	1759);
INSERT INTO O_TFR
	VALUES (1760,
	52,
	'resolveDatatype',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one dtProxy related by self->S_DT[R524];
if(not_empty dtProxy and not Util::isProxy(element:self.convertToInstance()))
  name = dtProxy.Name;
  unrelate dtProxy from self across R524;
  
  select one packageableElem related by self->SM_SM[R516]->SM_ASM[R517]->O_OBJ[R519]->PE_PE[R8001]; 
  if (empty packageableElem)
    select one packageableElem related by self->SM_SM[R516]->SM_ISM[R517]->O_OBJ[R518]->PE_PE[R8001];
  end if;
  select one package related by packageableElem->EP_PKG[R8000];
  select one component related by packageableElem->C_C[R8003];
  isInGenericPackage = not_empty package or not_empty component;
  if isInGenericPackage
    id = packageableElem.resolveDataTypeRelativeToSelf(default_name:"integer",
                                                            expected_name:name);                                                          
    select any resolvedDt related by package->PE_VIS[R8002]->
                         PE_PE[R8002]->S_DT[R8001] where selected.DT_ID == id;
    if (empty resolvedDt)
      select any resolvedDt related by component->PE_CVS[R8004]->
                       PE_PE[R8004]->S_DT[R8001] where selected.DT_ID == id;
    end if;	
    if not_empty resolvedDt
      relate resolvedDt to self across R524;
    end if;
  else
    select one domain related by self->SM_SM[R516]->SM_ASM[R517]->O_OBJ[R519]
                                                          ->S_SS[R2]->S_DOM[R1];
    if(empty domain)
      select one domain related by self->SM_SM[R516]->SM_ISM[R517]->O_OBJ[R518]
                                                           ->S_SS[R2]->S_DOM[R1];
    end if; 
    id = domain.resolveDataTypeRelativeToSelf(default_name:"integer",
  													        expected_name:name);
    // until we have instance reference passing, we search for
    // the data type related to the domain first then to the
    // system
    select any resolvedDT related by domain->S_DT[R14]
  												   where (selected.DT_ID == id);
    if(empty resolvedDT)
      select one system related by domain->CN_DC[R4204]->C_C[R4204]
    				                               ->CP_CP[R4608]->S_SYS[R4606];
      select any resolvedDT related by system->SLD_SDINP[R4402]->S_DT[R4401]
    				 						       where (selected.DT_ID == id);
      if empty resolvedDT and not_empty system and system.useGlobals
        select any resolvedDT related by system->G_EIS[R9100]->PE_PE[R9100]->
                                       S_DT[R8001] where (selected.DT_ID == id);
      end if;
    end if;  
    if(not_empty resolvedDT)
      relate resolvedDT to self across R524;
    end if;
  end if;
end if;',
	1,
	'',
	1761);
INSERT INTO O_TFR
	VALUES (1762,
	52,
	'resolveExistingDataItem',
	'',
	296,
	1,
	'select any sm from instances of SM_SM where (selected.SM_ID == param.id);
if(not_empty sm)
  foundDI = false;
  select any resolvedDI from instances of SM_EVTDI where (selected.SMedi_ID == GD::NULL_UNIQUE_ID());
  // resolve a data item by name and type
  select many existingDIs related by sm->SM_EVTDI[R516] where (selected.Name == self.Name);
  for each existingDI in existingDIs
    select one dt related by self->S_DT[R524];
    select one otherDt related by existingDI->S_DT[R524];
    if(dt.Name == otherDt.Name)
      foundDI = true;
      resolvedDI = existingDI;
      break;
    end if;
  end for;
  if(foundDI)
    return resolvedDI.SMedi_ID;
  end if;
end if;
return GD::NULL_UNIQUE_ID();',
	1,
	'',
	1760);
INSERT INTO O_TPARM
	VALUES (1763,
	1762,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1761,
	52,
	'resizeDimensions',
	'',
	19,
	1,
	'// If the number of dimensions has increased then add dimensions
while (param.numDimensions > self.getDimensionsCnt())
  create object instance dim of S_DIM;
  dim.dimensionCount = self.getDimensionsCnt();
  relate dim to self across R531;
end while;

// If the number of dimensions has decreased then remove dimensions
while (param.numDimensions < self.getDimensionsCnt())
  select any dim related by self->S_DIM[R531] where (selected.dimensionCount == (self.getDimensionsCnt()-1));
  unrelate dim from self across R531;
  delete object instance dim;
end while;

// Update the specific dimension that was passed-in if its elementCount has 
// changed.
if (param.numDimensions > 0) 
  select any dim related by self->S_DIM[R531] where (selected.dimensionCount == param.dimension);
  if (dim.elementCount != param.elementCount)
    dim.elementCount = param.elementCount;
  end if;
end if;
',
	1,
	'',
	1764);
INSERT INTO O_TPARM
	VALUES (1765,
	1761,
	'elementCount',
	298,
	0,
	'',
	1766,
	'');
INSERT INTO O_TPARM
	VALUES (1766,
	1761,
	'dimension',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1767,
	1761,
	'numDimensions',
	298,
	0,
	'',
	1765,
	'');
INSERT INTO O_TFR
	VALUES (1756,
	52,
	'getDimensionsCnt',
	'',
	298,
	1,
	'select many dims related by self->S_DIM[R531];
dimensions = cardinality dims;
return dimensions;',
	1,
	'',
	1753);
INSERT INTO O_TFR
	VALUES (1764,
	52,
	'moveUp',
	'',
	19,
	1,
	'::changeNotificationEnablement(enabled:false);
select one prev_attr related by self->SM_EVTDI[R533.''succeeds''];
select one prev_prev_attr related by prev_attr->SM_EVTDI[R533.''succeeds''];
select one next_attr related by self->SM_EVTDI[R533.''precedes''];

if ( not_empty prev_prev_attr )
  unrelate prev_attr from prev_prev_attr across R533.''succeeds'';
end if;
if ( not_empty next_attr )
  unrelate next_attr from self across R533.''succeeds'';
end if;
unrelate self from prev_attr across R533.''succeeds'';

if ( not_empty prev_prev_attr )
  relate self to prev_prev_attr across R533.''succeeds'';
end if;
// want to enable listeners at the last possible moment
if ( empty next_attr )
  ::changeNotificationEnablement(enabled:true);
end if;
relate prev_attr to self across R533.''succeeds'';
if ( not_empty next_attr )
  ::changeNotificationEnablement(enabled:true);
  relate next_attr to prev_attr across R533.''succeeds'';
end if;
',
	1,
	'',
	1768);
INSERT INTO O_TFR
	VALUES (1768,
	52,
	'moveDown',
	'',
	19,
	1,
	'::changeNotificationEnablement(enabled:false);
select one next_attr related by self->SM_EVTDI[R533.''precedes''];
select one prev_attr related by self->SM_EVTDI[R533.''succeeds''];
select one next_next_attr related by next_attr->SM_EVTDI[R533.''precedes''];

if ( not_empty next_next_attr )
  unrelate next_next_attr from next_attr across R533.''succeeds'';
end if;
if ( not_empty prev_attr )
  unrelate self from prev_attr across R533.''succeeds'';
end if;
unrelate next_attr from self across R533.''succeeds'';

if ( not_empty prev_attr )
  relate next_attr to prev_attr across R533.''succeeds'';
end if;
   
// want to enable listeners at the last possible moment
if ( empty next_next_attr )
  ::changeNotificationEnablement(enabled:true);
end if;
relate self to next_attr across R533.''succeeds'';
if ( not_empty next_next_attr )
  ::changeNotificationEnablement(enabled:true);
  relate next_next_attr to self across R533.''succeeds'';
end if;
',
	1,
	'',
	1769);
INSERT INTO O_TFR
	VALUES (1770,
	52,
	'actionFilter',
	'',
	316,
	1,
	'if (param.name == "can" )
  if ( param.value == "move up" )
    select one prev_attr related by self->SM_EVTDI[R533.''succeeds''];
    return not_empty prev_attr;
  elif ( param.value == "move down" )
    select one next_attr related by self->SM_EVTDI[R533.''precedes''];
    return not_empty next_attr;
  end if;
end if;
return false;
',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (1771,
	1770,
	'name',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1772,
	1770,
	'value',
	322,
	0,
	'',
	1771,
	'');
INSERT INTO O_TFR
	VALUES (1773,
	52,
	'canReferToDataType',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// select the dt
select one dt related by self->S_DT[R524];
if(not_empty dt)
  select one packageableElem related by self->SM_SM[R516]->SM_ASM[R517]->O_OBJ[R519]->PE_PE[R8001];
  if (empty packageableElem)
    select one packageableElem related by self->SM_SM[R516]->SM_ISM[R517]->O_OBJ[R518]->PE_PE[R8001];
  end if;
  select one package related by packageableElem->EP_PKG[R8000];
  select one component related by packageableElem->C_C[R8003];
  isInGenericPackage = not_empty package or not_empty component;

  if (isInGenericPackage)
    return packageableElem.canReferToDataType(dtID:dt.DT_ID, dtName: dt.Name);
  else
    // if the data type package is at the system
    // level we can use the data type as long as
    // this element belongs to a formal component
    select one clazz related by self->SM_SM[R516]->SM_ISM[R517]->O_OBJ[R518];
    if(empty clazz)
      select one clazz related by self->SM_SM[R516]->SM_ASM[R517]->O_OBJ[R519];
    end if;
    select one domain related by clazz->S_SS[R2]->S_DOM[R1];
    select one dtPkg related by dt->S_DIP[R39]->S_DPK[R39];
    if(not dtPkg.isDomainLevel())
      if(domain.participatesInSystem())
        return true;
      else
        return false;
      end if;
    else
      // otherwise the DT must be in the same domain
      select one dtDomain related by dt->S_DOM[R14];
      if(dtDomain == domain)
        return true;
      end if;
    end if;
  end if;
end if;
return false;
',
	1,
	'',
	1770);
INSERT INTO O_TFR
	VALUES (1769,
	52,
	'isReferringToDefaultDataType',
	'',
	316,
	1,
	'select one dt related by self->S_DT[R524];
elementType = Util::getSimpleClassName(element:self.convertToInstance());
if(dt.Name == S_DT::getDefaultDataTypeName(elementType:elementType))
  return true;
end if;
return false;
',
	1,
	'',
	1757);
INSERT INTO O_TFR
	VALUES (1759,
	52,
	'canUseDataType',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// State Machine Event Data Item.canUseDataType()
select one machine related by self->SM_SM[R516];
select one clazz related by machine->SM_ISM[R517]->O_OBJ[R518];
if(empty clazz)
  select one clazz related by machine->SM_ASM[R517]->O_OBJ[R519];
end if;
select one packageableElem related by clazz->PE_PE[R8001];
select one package related by packageableElem->EP_PKG[R8000];
select one component related by packageableElem->C_C[R8003];
isInGenericPackage = not_empty package or not_empty component;
if isInGenericPackage
  // Find the previously created visibility list
  select any resultSet related by package->PE_SRS[R8005] where
        selected.Name == "" and selected.Type == ElementTypeConstants::DATATYPE;
  select any dt related by resultSet->PE_VIS[R8006]->
                     PE_PE[R8002]->S_DT[R8001] where selected.DT_ID == param.id;
  if not_empty component
    // Find the previously created visibility list
    select any compResultSet related by component->PE_CRS[R8007] where
        selected.Name == "" and selected.Type == ElementTypeConstants::DATATYPE;
    select any dt related by compResultSet->PE_CVS[R8008]->
                     PE_PE[R8004]->S_DT[R8001] where selected.DT_ID == param.id;
  end if;
  if(not_empty dt)
    if(self.isAllowedType(typeName:dt.Name))
      return true;
    end if;
  end if;
  return false;
else
  select one domain related by clazz->S_SS[R2]->S_DOM[R1];
  if(domain.participatesInSystem())
    // system level check both the system
    // and the domain for the dt
    select one system related by domain->CN_DC[R4204]->C_C[R4204]->CP_CP[R4608]
                                                                 ->S_SYS[R4606];
    select any dt related by system->SLD_SDINP[R4402]->S_DT[R4401]
                                             where (selected.DT_ID == param.id);
    if empty dt and not_empty system and system.useGlobals
      select any dt related by system->G_EIS[R9100]->PE_PE[R9100]->S_DT[R8001]
                                             where (selected.DT_ID == param.id);
    end if;
    if(empty dt)
      select any dt related by domain->S_DT[R14]
                                             where (selected.DT_ID == param.id);
    end if;
    if(not_empty dt)
      if(self.isAllowedType(typeName:dt.Name))
        return true;
      end if;
    end if;
  else
    // only check the domain for the dt
    select any dt related by domain->S_DT[R14] where (selected.DT_ID == param.id);
    if(not_empty dt)
      if(self.isAllowedType(typeName:dt.Name))
        return true;
      end if;
    end if;
  end if;
  return false;
end if;',
	1,
	'',
	1773);
INSERT INTO O_TPARM
	VALUES (1774,
	1759,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1775,
	52,
	'checkIntegrity',
	'',
	19,
	1,
	'/**
 *  Create an integrity issue if there are any other parameters in the same
 *  event with a matching name
 */
select one event related by self->SM_EVT[R532];
select one machine related by event->SM_SM[R502];
select one clazz related by machine->SM_ISM[R517]->O_OBJ[R518];
if(empty clazz)
  select one clazz related by machine->SM_ASM[R517]->O_OBJ[R519];
end if;
select one package related by clazz->PE_PE[R8001]->EP_PKG[R8000];
select one system related by package->S_SYS[R1405];
sys_id = GD::NULL_UNIQUE_ID();
if(not_empty system)
  sys_id = system.Sys_ID;
end if;
select many parameters related by event->SM_EVTDI[R532];
for each parameter in parameters
  if(parameter != self and parameter.Name == self.Name)
    MI_IM::createIssue(sys_id:sys_id, description:
         "Found another parameter under the same event with a " +
                                                          "matching name.",
                                      severity:Severity::Error, name:self.Name,
                                     path:event.getPath() + "::" + self.Name,
                    id:self.SMedi_ID, element:self.convertToInstance());
  end if;
end for;',
	1,
	'',
	1762);
INSERT INTO O_NBATTR
	VALUES (277,
	52);
INSERT INTO O_BATTR
	VALUES (277,
	52);
INSERT INTO O_ATTR
	VALUES (277,
	52,
	0,
	'SMedi_ID',
	'Full Name: Event Data Item Identifier',
	'',
	'SMedi_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_REF
	VALUES (52,
	565,
	0,
	564,
	1578,
	1579,
	1580,
	276,
	1776,
	0,
	0,
	'',
	'State Machine',
	'SM_ID',
	'R516');
INSERT INTO O_REF
	VALUES (52,
	52,
	0,
	276,
	1652,
	1654,
	1653,
	276,
	1777,
	1776,
	0,
	'',
	'State Machine Event Data Item',
	'SM_ID',
	'R533');
INSERT INTO O_RATTR
	VALUES (276,
	52,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (276,
	52,
	277,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1778,
	52);
INSERT INTO O_BATTR
	VALUES (1778,
	52);
INSERT INTO O_ATTR
	VALUES (1778,
	52,
	276,
	'Name',
	'Full Name: Event Data Item Name',
	'',
	'Name',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1779,
	52);
INSERT INTO O_BATTR
	VALUES (1779,
	52);
INSERT INTO O_ATTR
	VALUES (1779,
	52,
	1778,
	'Descrip',
	'Full Name: Event Data Item Description',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1780,
	52);
INSERT INTO O_BATTR
	VALUES (1780,
	52);
INSERT INTO O_ATTR
	VALUES (1780,
	52,
	1781,
	'Dimensions',
	'Full Name: Array Dimensions',
	'',
	'Dimensions',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (52,
	1488,
	0,
	1604,
	1649,
	1651,
	1650,
	1782,
	1783,
	0,
	0,
	'',
	'State Machine Event',
	'SMevt_ID',
	'R532');
INSERT INTO O_RATTR
	VALUES (1782,
	52,
	1604,
	1488,
	1,
	'SMevt_ID');
INSERT INTO O_ATTR
	VALUES (1782,
	52,
	1780,
	'SMevt_ID',
	'',
	'',
	'SMevt_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (52,
	52,
	0,
	277,
	1652,
	1654,
	1653,
	1784,
	1785,
	0,
	0,
	'',
	'State Machine Event Data Item',
	'SMedi_ID',
	'R533');
INSERT INTO O_RATTR
	VALUES (1784,
	52,
	277,
	52,
	1,
	'SMedi_ID');
INSERT INTO O_ATTR
	VALUES (1784,
	52,
	1782,
	'Previous_SMedi_ID',
	'',
	'Previous_',
	'SMedi_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (52,
	32,
	0,
	156,
	1598,
	1600,
	1599,
	1781,
	1786,
	0,
	0,
	'',
	'Data Type',
	'DT_ID',
	'R524');
INSERT INTO O_RATTR
	VALUES (1781,
	52,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (1781,
	52,
	1779,
	'DT_ID',
	'',
	'',
	'Element_ID',
	2,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	52);
INSERT INTO O_OIDA
	VALUES (276,
	52,
	0,
	'SM_ID');
INSERT INTO O_OIDA
	VALUES (277,
	52,
	0,
	'SMedi_ID');
INSERT INTO O_ID
	VALUES (1,
	52);
INSERT INTO O_ID
	VALUES (2,
	52);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1488,
	'State Machine Event',
	503,
	'SM_EVT',
	'Represents an event for this state machine.  Events can be either State Event Matrix events (SM_SEVT) or polymorphic events (SM_PEVT).',
	1478);
INSERT INTO O_TFR
	VALUES (1787,
	1488,
	'get_event_text',
	'Gets the text for the Event. It obtains the full formatted text of the
message in the form <KL><EVT_NUM>:<Meaning>( Datum List ).
-----------------------------------------------------------------------------------
Bridge:GD
',
	322,
	1,
	'// Event.get_event_text
result = self.get_name();
select any parameter related by self->SM_EVTDI[R532] 
                     where (selected.Previous_SMedi_ID == GD::NULL_UNIQUE_ID());
select one nl related by self->SM_SEVT[R525]->SM_NLEVT[R526];
// if this event is non-local find the data in the supertype event
if not_empty nl
  select many parameters related by nl->SM_PEVT[R527]->
                                                   SM_EVT[R525]->SM_EVTDI[R532]
                         where (selected.Previous_SMedi_ID == GD::NULL_UNIQUE_ID());
end if;
if PREF::getBoolean(name:"bridgepoint_prefs_show_event_parameters")
  if not_empty parameter
    result = result + "(";
    sep = "";
    while (not_empty parameter)
      result = result + sep + parameter.Name;
      sep = ", ";
      select one parameter related by parameter->SM_EVTDI[R533.''precedes''];
    end while;
    result = result + ")";
  end if;
else
  if not_empty parameter
    result = result + "(...)";
  end if;
end if;
return result;',
	1,
	'',
	1788);
INSERT INTO O_TFR
	VALUES (1789,
	1488,
	'get_name',
	'Creates a string containing a descriptive name for the instance.',
	322,
	1,
	'select one nlevt related by self->SM_SEVT[R525]->SM_NLEVT[R526];
if(not_empty nlevt)
  select one poly related by nlevt->SM_PEVT[R527];
  if(not_empty poly)
    return self.Mning + "::" + poly.localClassName;
  else
    return self.Mning + "::" + ::getOrphanedElementName();
  end if;
else
  select one signalEvt related by self->SM_SEVT[R525]->SM_SGEVT[R526];
  if(not_empty signalEvt)
    return self.Drv_Lbl;
  else
    return self.Drv_Lbl + ": " + self.Mning;
  end if;
end if;',
	1,
	'',
	1787);
INSERT INTO O_TFR
	VALUES (1790,
	1488,
	'dispose',
	'Dispose this State Machine Event.
',
	19,
	1,
	'// State Machine Event.dispose()
select one sm related by self->SM_SM[R502];
unrelate self from sm across R502;
select one sevt related by self->SM_SEVT[R525];
if (not_empty sevt)
  sevt.dispose();
end if;
select one pevt related by self->SM_PEVT[R525];
if (not_empty pevt)
  pevt.dispose();
end if;
select many dis related by self->SM_EVTDI[R532];
for each di in dis
  di.dispose();
end for;
// Communication and Access Subsystem
select many smsmes related by self->CA_SMSME[R409];
for each smsme in smsmes
  smsme.dispose();
end for;
select many eesmes related by self->CA_EESME[R405];
for each eesme in eesmes
  eesme.dispose();
end for;
//Event subsystem
select many csmes related by self->E_CSME[R706];
for each csme in csmes
  unrelate self from csme across R706;
end for;
select many gsmes related by self->E_GSME[R707];
for each gsme in gsmes
  unrelate self from gsme across R707;
end for;
// for each message that this event
// is associated with
select many ems related by self->MSG_E[R1009];
for each em in ems
  select one message related by em->MSG_AM[R1019];
  message.unformalize();
end for;
//
// Instance Subsystem
select many pend_evts related by self->I_EVI[R2906];
for each pend_evt in pend_evts
  unrelate self from pend_evt across R2906;
  pend_evt.dispose();
end for;
//
// Finally, delete self
delete object instance self;',
	1,
	'',
	1791);
INSERT INTO O_TFR
	VALUES (1792,
	1488,
	'initialize',
	'Initialize this State Machine Event.
',
	19,
	1,
	'name = ::getUniqueInitialName( 
    instance: self.convertToInstance(), 
    candidateName: "Unnamed Event");
success = ::getNewElementName(name:name,instance: self.convertToInstance(),validateName:true);    
if ( success!="") 
 self.Mning=success;
else 
 self.dispose();
end if;    
// set this event''s number to a default value
self.Numb = 1;

// give this event a unique number
self.setUniqueNumber(checkForDuplicate:false);

select one sm related by self->SM_SM[R502];                                   
create object instance semEvt of SM_SEVT;
relate self to semEvt across R525;
create object instance locEvt of SM_LEVT;
relate semEvt to locEvt across R526;
//
semEvt.createDefaultMatrixEntries();
',
	1,
	'',
	1793);
INSERT INTO O_TFR
	VALUES (1794,
	1488,
	'actionFilter',
	'Bridge: UI
',
	316,
	1,
	'if (param.name == "subtype" )
  if (param.value =="SM_SEVT" )
    select one sevt related by self->SM_SEVT[R525];
    return not_empty sevt;
  elif (param.value == "SM_PEVT" )
    select one pevt related by self->SM_PEVT[R525];
    return not_empty pevt;
  end if;
elif (param.name == "can" )

  if ((param.value =="ch generic pkg" or param.value =="ignore spec pkg") or
      (param.value =="ch spec pkg" or param.value =="ignore generic pkg"))
    
    select one cls related by self->SM_SM[R502]->SM_ASM[R517]->O_OBJ[R519];
    if (empty cls)
      select one cls related by self->SM_SM[R502]->SM_ISM[R517]->O_OBJ[R518];
    end if;
    select one packageableElem related by cls->PE_PE[R8001];
    select one package related by packageableElem->EP_PKG[R8000];
    select one cc related by packageableElem->C_C[R8003];
    isInGenericPackage = not_empty package or not_empty cc;
    
    if (((param.value == "ch spec pkg") or (param.value == "ignore spec pkg")) and (isInGenericPackage))
      return false;
    end if;
    if (((param.value == "ch generic pkg") or (param.value == "ignore generic pkg")) and (not isInGenericPackage))
      return false;
    end if;
    
	select any state from instances of SM_STATE
		where ::canStateIgnoreOrSayEventCantHappen(
			eventId:self.SMevt_ID, eventStateMachineId:self.SM_ID,
    		stateId:selected.SMstt_ID, stateStateMachineId:selected.SM_ID,
    		considerCantHappen:((param.value == "ch spec pkg") or (param.value == "ch generic pkg")));
    return not_empty state;
  end if;
end if;
return false;
',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (1795,
	1794,
	'name',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1796,
	1794,
	'value',
	322,
	0,
	'',
	1795,
	'');
INSERT INTO O_TFR
	VALUES (1797,
	1488,
	'hasDataItem',
	'',
	316,
	1,
	'select any item related by self->SM_EVTDI[R532] where
                                                  selected.SMedi_ID == param.id;
return not_empty item;
',
	1,
	'',
	1798);
INSERT INTO O_TPARM
	VALUES (1799,
	1797,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1800,
	1488,
	'isAssignableToStateMachine',
	'',
	316,
	1,
	'/*
Returns whether this event is assignable to the state machine of the given ID,
taking into account Bridepoint''s strange rule regarding event polymorphism
where an event may not be assigned at more than one level in a generalization
hierarchy.

param isCreationTransition 	whether the assignment would be to a creation 
							transition
*/
// if this event belongs to a class state machine
select one classStateMachine related by self->SM_SM[R502]->SM_ASM[R517];
if (not_empty classStateMachine)
  // First exclude all signal events from consideration
  select one sigEvt related by self->SM_SEVT[R525]->SM_SGEVT[R526];
  if not_empty sigEvt
    return false;
  end if;
  // else, assignability rests solely on whether the given state machine is
  // the one to which this event belongs
  return param.assignToMachineId == self.SM_ID;
end if;
	
// if this event''s state machine is not the given state machine,
// and this event''s owning class is not a supertype of the given state 
// machine''s class
select one selfClass related by self->SM_SM[R502]->SM_ISM[R517]->O_OBJ[R518];
select any assignToMachine from instances of SM_SM
	where selected.SM_ID == param.assignToMachineId;
select one assignToMachineClass related by 
	assignToMachine->SM_ISM[R517]->O_OBJ[R518];
isSupertype = selfClass.isSupertypeOf(classId:assignToMachineClass.Obj_ID);
if ((param.assignToMachineId != self.SM_ID and not isSupertype) or
		(param.assignToMachineId != self.SM_ID and param.isCreationTransition))
	// this event is not applicable to the given state machine
	return false;
end if;

// if this event is polymorphic
select one polymorphic related by self->SM_PEVT[R525];
if (not empty polymorphic)
	// if any of the given state machine''s subtype state
	// machines have this event assigned to a transition
	if (self.isAssignedInSubtypeStateMachine(
		supertypeId:assignToMachineClass.Obj_ID))
		// this event may not be assigned to the given state machine
		return false;
	end if;
end if;

// if this event is a non-local alias
select one nonLocal related by self->SM_SEVT[R525]->SM_NLEVT[R526];
if (not empty nonLocal)
	// the associated polymorphic event will be the one that is possibly
	// assignable, not this one (to prevent duplicates in the list that is
	// presented to the user)
	return false;
end if;
	
// if this event''s state machine is a supertype machine of the one given,
// and any of the given state machine''s supertype state
// machines have this event assigned to a transition
if (isSupertype and self.isAssignedInSupertypeStateMachine(
	subtypeId:assignToMachineClass.Obj_ID))
	// this event may not be assigned to the given state machine
	return false;
end if;

// this event may be assigned to the given state machine
return true;
	
	
	


',
	1,
	'',
	1801);
INSERT INTO O_TPARM
	VALUES (1802,
	1800,
	'assignToMachineId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1803,
	1800,
	'isCreationTransition',
	316,
	0,
	'',
	1802,
	'');
INSERT INTO O_TFR
	VALUES (1804,
	1488,
	'isAssignedInSubtypeStateMachine',
	'',
	316,
	1,
	'/*
Recursively traverses the subtree of subtypes rooted at the supertype 
of the given ID, returning whether this event is assigned 
(or ignored) in at least one of those subtypes'' state machines.
*/
 
// for each subtype of the given supertype 
select any supertype from instances of O_OBJ
	where selected.Obj_ID == param.supertypeId;
select many subtypes related by supertype->R_OIR[R201]->R_RTO[R203]->R_SUPER[R204]
	->R_SUBSUP[R212]->R_SUB[R213]->R_RGO[R205]->R_OIR[R203]->O_OBJ[R201];
for each subtype in subtypes
	// if this subtype has an instance state machine
	select one subtypeMachine related by subtype->SM_ISM[R518]->SM_SM[R517];
	if (not_empty subtypeMachine)
		// if this event is consumed in this subtype''s state machine, as
		// signalled by its being aliased by a non-local event 
		select any aliasedEvent related by subtypeMachine->SM_EVT[R502]
			->SM_SEVT[R525]->SM_NLEVT[R526]->SM_PEVT[R527]->SM_EVT[R525]
			where selected.SMevt_ID == self.SMevt_ID and selected.SM_ID == self.SM_ID;
		if (not empty aliasedEvent)
			// we have a positive result
			return true;
		end if;
	end if;
	
	// recurse to the next level of subtype state machines
	if (self.isAssignedInSubtypeStateMachine(supertypeId:subtype.Obj_ID))
		return true;
	end if;
end for;		

return false;	
',
	1,
	'',
	1800);
INSERT INTO O_TPARM
	VALUES (1805,
	1804,
	'supertypeId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1806,
	1488,
	'isAssignedInSupertypeStateMachine',
	'',
	316,
	1,
	'/*
Recursively traverses the upwards subtree of supertypes rooted at the 
subtype of the given ID, returning whether this event is assigned 
(or ignored) in at least one of those supertypes'' state machines.
*/
 
// for each supertype of given subtype 
select any subtype from instances of O_OBJ 
	where selected.Obj_ID == param.subtypeId;
select many supertypes related by subtype->R_OIR[R201]->R_RGO[R203]->R_SUB[R205]
	->R_SUBSUP[R213]->R_SUPER[R212]->R_RTO[R204]->R_OIR[R203]->O_OBJ[R201];
for each supertype in supertypes
	// if this supertype has an instance state machine
	select one supertypeMachine related by supertype->SM_ISM[R518]->SM_SM[R517];
	if (not_empty supertypeMachine) 
		// if this event belongs to this supertype''s state machine
		select any event related by supertypeMachine->SM_EVT[R502]
			where selected.SMevt_ID == self.SMevt_ID and selected.SM_ID == self.SM_ID;
		if (not_empty event)
			// if this event is assigned to a transition in this supertype''s state machine 
			select any transition related by event->SM_SEVT[R525]->SM_SEME[R503]
				->SM_NSTXN[R504];
			if (not_empty transition)
				// we have a positive result
				return true;
			end if;
	
			// if this event is ignored by any state in this supertype''s state machine 
			select any ignored related by event->SM_SEVT[R525]->SM_SEME[R503]
				->SM_EIGN[R504];
			if (not_empty ignored)
				// we have a positive result
				return true;
			end if;
		end if;
		
		// if this event is consumed in this supertype''s state machine, as
		// signalled by its being aliased by a non-local event 
		select any aliasedEvent related by supertypeMachine->SM_EVT[R502]
			->SM_SEVT[R525]->SM_NLEVT[R526]->SM_PEVT[R527]->SM_EVT[R525]
			where selected.SMevt_ID == self.SMevt_ID 
				and selected.SM_ID == self.SM_ID;
		if (not_empty aliasedEvent)
			// we have a positive result
			return true;
		end if;
	end if;
	
	// recurse to the next level of supertype state machines
	if (self.isAssignedInSupertypeStateMachine(
		subtypeId:supertype.Obj_ID))
		return true;
	end if;
end for;		

return false;	
',
	1,
	'',
	1804);
INSERT INTO O_TPARM
	VALUES (1807,
	1806,
	'subtypeId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1808,
	1488,
	'canStateIgnoreOrSayCantHappen',
	'',
	316,
	1,
	'/*
This is merely a pass-through operation, meant as a workaround to an MC-Java 
bug where method calls made on the ''selected'' instance in the ''where'' clause of a 
select statement are not generated correctly.  If a handle to an event instance
is available, a call to this operation may be made in some cases to access 
the desired operation on the given state indirectly.
*/
select any state from instances of SM_STATE
	where selected.SMstt_ID == param.stateId 
		and selected.SM_ID == param.stateStateMachineId;
return state.canIgnoreOrSayEventCantHappen(eventId:self.SMevt_ID,
	eventStateMachineId:self.SM_ID, considerCantHappen:param.considerCantHappen);
	',
	1,
	'',
	1809);
INSERT INTO O_TPARM
	VALUES (1810,
	1808,
	'stateId',
	296,
	0,
	'',
	1811,
	'');
INSERT INTO O_TPARM
	VALUES (1812,
	1808,
	'stateStateMachineId',
	296,
	0,
	'',
	1810,
	'');
INSERT INTO O_TPARM
	VALUES (1811,
	1808,
	'considerCantHappen',
	316,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1793,
	1488,
	'ignoreOnState',
	'',
	19,
	1,
	'/*
Has this event (or its relevant subtype alias event) change its matrix entry 
for the given state from a can''t happen to an ignore.  This operation presumes 
that the matrix entry is a can''t happen.
*/
 
// find the event corresponding to the one given that is associated with 
// the given state''s state-machine, which may in fact be this event, or an alias
// (if this event is polymorphic)
select any state from instances of SM_STATE 
	where selected.SMstt_ID == param.stateId 
		and selected.SM_ID == param.stateStateMachineId;
eventId = self.getAssociatedEventForStateMachine(stateMachineId:state.SM_ID);		
select any event from instances of SM_EVT where selected.SMevt_ID == eventId;
		
// change the matrix entry for the event found above from a can''t happen
// to an ignore
select any seme related by event->SM_SEVT[R525]->SM_SEME[R503] 
	where (selected.SMstt_ID == state.SMstt_ID);
seme.migrateChToEi();
',
	1,
	'',
	1797);
INSERT INTO O_TPARM
	VALUES (1813,
	1793,
	'stateId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1814,
	1793,
	'stateStateMachineId',
	296,
	0,
	'',
	1813,
	'');
INSERT INTO O_TFR
	VALUES (1788,
	1488,
	'getAssociatedEventForStateMachine',
	'',
	296,
	1,
	'/*
Returns an event related to this one that applies to the given state
machine.  If the given state machine is the one to which this event belongs,
then this event is returned.  Else, if this event is polymorphic, 
the alias associated with the given state machine is returned (with one being
created if it doesn''t already exist).  Otherwise, this event is made 
polymorphic, and an alias for the given state machine is created and 
returned.
*/

// if this event is directly associated with the given state machine
if (self.SM_ID == param.stateMachineId)
	// return this event
	return self.SMevt_ID;
end if;

// if this event is polymorphic
select any machine from instances of SM_STATE
	where selected.SM_ID == param.stateMachineId;
select one polyEvent related by self->SM_PEVT[R525];
if (not_empty polyEvent)
	// if there is an aliasing non-local event associated
	// with the given state machine
	select any nonLocalEvent related by polyEvent->SM_NLEVT[R527]
		where selected.SM_ID == machine.SM_ID; 		
	if (not_empty nonLocalEvent)
		// return that event
		return nonLocalEvent.SMevt_ID;

 	// otherwise
	else
		// create an aliasing non-local event, and return it
		return polyEvent.createNonLocalEventForStateMachine(stateMachineId:machine.SM_ID);
	end if;
		
// otherwise
else
	// dispose this event''s associated local and event-matrix event instances
	select one matrixEvent related by self->SM_SEVT[R525];
	matrixEvent.dispose();

	// make the event polymorphic
	create object instance polyEvent of SM_PEVT;
	relate polyEvent to self across R525;
 		
	// create a non-local event to alias the above polymorphic event, and return it
	return polyEvent.createNonLocalEventForStateMachine(stateMachineId:machine.SM_ID);
end if;

',
	1,
	'',
	1790);
INSERT INTO O_TPARM
	VALUES (1815,
	1788,
	'stateMachineId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1816,
	1488,
	'sayCantHappenOnState',
	'',
	19,
	1,
	'/*
Has this event change its matrix entry for the given state from an ignore
to a can''t happen.  This operation presumes that the matrix entry is an ignore.
*/
 
// find the event corresponding to the one given that is associated with 
// the given state''s state-machine, which may in fact be this event, or an alias
// (if this event is polymorphic)
select any state from instances of SM_STATE 
	where selected.SMstt_ID == param.stateId 
		and selected.SM_ID == param.stateStateMachineId;
eventId = self.getAssociatedEventForStateMachine(stateMachineId:state.SM_ID);		
select any event from instances of SM_EVT where selected.SMevt_ID == eventId;
		
// change the matrix entry for the event found above from an
// ignore to a can''t happen
select any seme related by event->SM_SEVT[R525]->SM_SEME[R503] 
	where (selected.SMstt_ID == state.SMstt_ID);
seme.migrateEiToCh();
',
	1,
	'',
	1817);
INSERT INTO O_TPARM
	VALUES (1818,
	1816,
	'stateId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1819,
	1816,
	'stateStateMachineId',
	296,
	0,
	'',
	1818,
	'');
INSERT INTO O_TFR
	VALUES (1820,
	1488,
	'isClassBased',
	'',
	316,
	1,
	'result = false;
select one asm related by self->SM_SM[R502]->SM_ASM[R517];
select one creationTransition related by self->SM_SEVT[R525]->SM_LEVT[R526]->SM_CRTXN[R509];
if(not_empty asm) or (not_empty creationTransition)
  result = true;
end if;
return result;',
	1,
	'',
	1806);
INSERT INTO O_TFR
	VALUES (1791,
	1488,
	'convertToInstance',
	'A utility operation to cast an instance of this type to the
instance datatype.

Translate: native',
	317,
	1,
	'// just return this instance as an Object
return this;',
	0,
	'',
	1821);
INSERT INTO O_TFR
	VALUES (1798,
	1488,
	'get_ooa_id',
	'',
	296,
	1,
	'return self.SMevt_ID;',
	1,
	'',
	1789);
INSERT INTO O_TFR
	VALUES (1821,
	1488,
	'checkBreakpoint',
	'',
	316,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return false;',
	1,
	'',
	1808);
INSERT INTO O_TPARM
	VALUES (1822,
	1821,
	'processType',
	1823,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1824,
	1488,
	'setUniqueNumber',
	'',
	19,
	1,
	'// for each event associated with this event''s state machine
select one sm related by self->SM_SM[R502];
select many events related by sm->SM_EVT[R502];
foundDuplicate = false;
originalNumb = self.Numb;
for each event in events
  // if this event is self, skip it
  if (event.SMevt_ID == self.SMevt_ID)  continue;  end if;

  if(event.Numb == self.Numb)
    foundDuplicate = true;
  end if;

  // if this other event''s number is greater than this event''s number
  if (event.Numb >= self.Numb)
    // have this event''s number be just greater than that of 
    // this other event
    self.Numb = event.Numb + 1;
  end if;
end for;
if(not foundDuplicate and param.checkForDuplicate)
  self.Numb = originalNumb;
end if;',
	1,
	'',
	1816);
INSERT INTO O_TPARM
	VALUES (1825,
	1824,
	'checkForDuplicate',
	316,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1809,
	1488,
	'canRename',
	'',
	316,
	1,
	'// we do not allow renaming of non-local events
select one nlevt related by self->SM_SEVT[R525]->SM_NLEVT[R526];
return empty nlevt;',
	1,
	'',
	1794);
INSERT INTO O_TFR
	VALUES (1817,
	1488,
	'newParameter',
	'',
	19,
	1,
	'// State Machine Event.newDataItem()
create object instance newEvtdi of SM_EVTDI;
relate self to newEvtdi across R532;
select one sm related by self->SM_SM[R502];
relate newEvtdi to sm across R516;
newEvtdi.initialize();
self.createMessageArgumentsForParameter(id:newEvtdi.SMedi_ID);',
	1,
	'',
	1820);
INSERT INTO O_TFR
	VALUES (1801,
	1488,
	'initializeOrder',
	'',
	19,
	1,
	'// Alpha-sort the SM_EVTDI elements if they have not yet been ordered
select many peers related by self->SM_EVTDI[R532];
if (cardinality peers > 1)
    initialOrderingCheckPerformed = false;
	select any head related by self->SM_EVTDI[R532] where (selected.SMedi_ID == GD::NULL_UNIQUE_ID());
	endOfList = head;
	loopCnt = 0;
	for each peer in peers
	  if ( not initialOrderingCheckPerformed)
	    select one predecessor related by peer->SM_EVTDI[R533.''precedes''];
	    select one successor related by peer->SM_EVTDI[R533.''succeeds''];
	    initialOrderingCheckPerformed = true;
	    if (not_empty  predecessor or not_empty  successor)
	      // Already ordered
	      break;
	    end if;
	    head = peer;
	    endOfList = peer;
	  end if;
	  
      if (loopCnt == 1)
        if (peer.Name < head.Name)
          relate peer to head across R533.''precedes'';
          endOfList = peer;
        else
          relate head to peer across R533.''precedes'';
          head = peer;
        end if;
      elif (loopCnt > 1)
        insertPoint = head;
        select one next related by head->SM_EVTDI[R533.''succeeds''];
        while (not_empty next)
          if (next.Name < peer.Name)
            break;
          else
            insertPoint = next;          
            select one next related by next->SM_EVTDI[R533.''succeeds''];
          end if;
        end while;
        
        if (empty next)
          // New end of list
          relate peer to endOfList across R533.''precedes'';   
          endOfList = peer;       
        else
          if ((insertPoint == head) and (peer.Name > head.Name))
            // New head
            relate head to peer across R533.''precedes'';
            head = peer;
          else
            unrelate next from insertPoint across R533.''precedes'';
            relate peer to insertPoint across R533.''precedes'';
            relate next to peer across R533.''precedes'';
          end if;          
        end if;
      end if;
      
      loopCnt = loopCnt + 1;
	end for;
end if;',
	1,
	'',
	1792);
INSERT INTO O_TFR
	VALUES (1826,
	1488,
	'pasteStateMachineEventDataItem',
	'',
	19,
	1,
	'select any item from instances of SM_EVTDI
                                          where (selected.SMedi_ID == param.id);
if(not_empty item)
  select one existingSm related by item->SM_SM[R516];
  if(not_empty existingSm)
    unrelate existingSm from item across R516;
  end if;
  select one existingEvt related by item->SM_EVT[R532];
  if(not_empty existingEvt)
    unrelate existingEvt from item across R532;
  end if;
  relate item to self across R532;
  select one machine related by self->SM_SM[R502];
  relate item to machine across R516;
  self.addDataItemToOrder(id:item.SMedi_ID);
  item.Name = ::getUniqueInitialNameInParent( 
      instance: item.convertToInstance(), 
      name: item.Name, parent:self.convertToInstance());
  self.createMessageArgumentsForParameter(id:item.SMedi_ID);
end if;',
	1,
	'',
	1824);
INSERT INTO O_TPARM
	VALUES (1827,
	1826,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1828,
	1488,
	'addDataItemToOrder',
	'',
	19,
	1,
	'select any item from instances of SM_EVTDI
                                          where (selected.SMedi_ID == param.id);
if(not_empty item)
  ::changeNotificationEnablement(enabled:false);
  select many peers related by self->SM_EVTDI[R532];
  for each peer in peers
    if (peer != item)
      select one predecessor related by peer->SM_EVTDI[R533.''precedes''];
      if (empty predecessor)
        relate item to peer across R533.''succeeds'';
      end if;
    end if;
  end for;
  ::changeNotificationEnablement(enabled:true);
end if;',
	1,
	'',
	1826);
INSERT INTO O_TPARM
	VALUES (1829,
	1828,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1830,
	1488,
	'createMessageArgumentsForParameter',
	'',
	19,
	1,
	'select any parameter from instances of SM_EVTDI
                                          where (selected.SMedi_ID == param.id);
if(not_empty parameter)
  // for each message associated with this
  // event, create a message argument.
  select many messages related by self->MSG_E[R1009]->MSG_AM[R1019]
                                                                 ->MSG_M[R1018];
  for each message in messages
    create object instance arg of MSG_A;
    create object instance ea of MSG_EA;
    relate ea to parameter across R1017;
    relate ea to arg across R1013;
    relate message to arg across R1001;
  end for;
end if;
',
	1,
	'',
	1828);
INSERT INTO O_TPARM
	VALUES (1831,
	1830,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1832,
	1488,
	'getPath',
	'',
	322,
	1,
	'result= self.Drv_Lbl;
select one sm related by self ->SM_SM[R502];
select one classSM related by sm->SM_ASM[R517];
select one instSM related by sm->SM_ISM[R517];
if (not_empty classSM)
    select one modelClass related by classSM->O_OBJ[R519];
    result =result+"::Class Based Satate Machine::"+modelClass.getPath(path:modelClass.Name,includeSelf:true);
elif (not_empty instSM)
    select one modelClass related by instSM->O_OBJ[R518];
    result =result+"::Instance Based Satate Machine::"+modelClass.getPath(path:modelClass.Name,includeSelf:true);
end if; 

return result;




',
	1,
	'',
	1830);
INSERT INTO O_TFR
	VALUES (1833,
	1488,
	'getCachedDrv_Lbl',
	'Translate: native',
	322,
	1,
	'	return m_drv_lbl;',
	0,
	'',
	1832);
INSERT INTO O_TFR
	VALUES (1834,
	1488,
	'checkIntegrity',
	'',
	19,
	1,
	'/**
 *  Create integrity issues if there are any other events with a
 *  matching signature or events sharing the same event number
 */
select one machine related by self->SM_SM[R502];
select one clazz related by machine->SM_ISM[R517]->O_OBJ[R518];
if(empty clazz)
  select one clazz related by machine->SM_ASM[R517]->O_OBJ[R519];
end if;
select one package related by clazz->PE_PE[R8001]->EP_PKG[R8000];
select one system related by package->S_SYS[R1405];
sys_id = GD::NULL_UNIQUE_ID();
if(not_empty system)
  sys_id = system.Sys_ID;
end if;
select many events related by machine->SM_EVT[R502];
for each evt in events
  if(evt != self and evt.getSignature() == self.getSignature())
    MI_IM::createIssue(sys_id:sys_id, description:
               "Found another event under the same state machine with a " +
                                                          "matching signature."
          + GD::newline() + GD::newline() + "Signature: " + self.getSignature(),
                                      severity:Severity::Error, name:self.Mning,
                           path:self.getPath(),
                            id:self.SMevt_ID, element:self.convertToInstance());
  end if;
  if(evt != self and evt.Numb == self.Numb)
    MI_IM::createIssue(sys_id:sys_id, description:
               "Found another event under the same state machine with a " +
                                                          "matching number.",
                                      severity:Severity::Error, name:self.Mning,
                           path:self.getPath(),
                            id:self.SMevt_ID, element:self.convertToInstance());    
  end if;
end for;',
	1,
	'',
	1833);
INSERT INTO O_TFR
	VALUES (1835,
	1488,
	'getSignature',
	'',
	322,
	1,
	'/**
 *  Return a string representation of this events signature
 */
signature = self.Mning;
count = 0;
select many parameters related by self->SM_EVTDI[R532];
paramLength = cardinality parameters;
if(paramLength > 0)
  signature = signature + "(";
end if;
for each parameter in parameters
  select one type related by parameter->S_DT[R524];
  if(count > 0 and count != paramLength - 1)
    signature = signature + ", ";
  end if;
  signature = signature + type.Name;
  count = count + 1;
end for;
if(paramLength > 0)
  signature = signature + ")";
end if;
return signature;',
	1,
	'',
	1834);
INSERT INTO O_NBATTR
	VALUES (1604,
	1488);
INSERT INTO O_BATTR
	VALUES (1604,
	1488);
INSERT INTO O_ATTR
	VALUES (1604,
	1488,
	0,
	'SMevt_ID',
	'Full Name: State Machine Event Identifier',
	'',
	'SMevt_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_REF
	VALUES (1488,
	565,
	0,
	564,
	1487,
	1489,
	1490,
	1603,
	1836,
	0,
	0,
	'',
	'State Machine',
	'SM_ID',
	'R502');
INSERT INTO O_REF
	VALUES (1488,
	1583,
	0,
	1586,
	1587,
	1588,
	1589,
	1603,
	1837,
	1836,
	0,
	'',
	'Event Supplemental Data',
	'SM_ID',
	'R520.''carries''');
INSERT INTO O_RATTR
	VALUES (1603,
	1488,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1603,
	1488,
	1604,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1488,
	1583,
	0,
	1585,
	1587,
	1588,
	1589,
	1605,
	1838,
	0,
	0,
	'',
	'Event Supplemental Data',
	'SMspd_ID',
	'R520.''carries''');
INSERT INTO O_RATTR
	VALUES (1605,
	1488,
	1585,
	1583,
	1,
	'SMspd_ID');
INSERT INTO O_ATTR
	VALUES (1605,
	1488,
	1603,
	'SMspd_ID',
	'',
	'',
	'SMspd_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1839,
	1488);
INSERT INTO O_BATTR
	VALUES (1839,
	1488);
INSERT INTO O_ATTR
	VALUES (1839,
	1488,
	1605,
	'Numb',
	'Full Name: Event Number
min_value: 0
max_value: 9999
',
	'',
	'Numb',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1840,
	1488);
INSERT INTO O_BATTR
	VALUES (1840,
	1488);
INSERT INTO O_ATTR
	VALUES (1840,
	1488,
	1839,
	'Mning',
	'Full Name: Event Meaning',
	'',
	'Mning',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1841,
	1488);
INSERT INTO O_BATTR
	VALUES (1841,
	1488);
INSERT INTO O_ATTR
	VALUES (1841,
	1488,
	1840,
	'Is_Lbl_U',
	'Full Name: State Machine Event Label Unique Indicator
Description: This is a flag that indicates whether custom label keyletters are used for the event.
Data Domain: 0 = class keyletters are used, 1 = custom label keyletters are used
enum0: Class Keyletters
enum1: Custom Keyletters
',
	'',
	'Is_Lbl_U',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1842,
	1488);
INSERT INTO O_BATTR
	VALUES (1842,
	1488);
INSERT INTO O_ATTR
	VALUES (1842,
	1488,
	1841,
	'Unq_Lbl',
	'''Full Name: State Machine Event Unique Label
Description: Custom keyletters for the state machine event',
	'',
	'Unq_Lbl',
	0,
	322,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1843,
	1488,
	'If ( self. Is_Lbl_U == 0 )
  select one nlevt related by self->SM_SEVT[R525]->SM_NLEVT[R526];
  if ( not_empty nlevt )
    select one poly related by nlevt->SM_PEVT[R527];
    select one pevt related by poly->SM_EVT[R525];
    if ( not_empty pevt )
      self.Drv_Lbl = pevt.Drv_Lbl + "*";
    else
      if(not_empty poly)
        self.Drv_Lbl = poly.localClassKL + GD::int_to_string(value:self.Numb) + "*";
      else
        self.Drv_Lbl = ::getOrphanedElementKL() +  GD::int_to_string(value:self.Numb) + "*";
      end if;
    end if;
  else
    select one cl related by self->SM_SM[R502]->SM_ISM[R517]->O_OBJ[R518];
    if ( empty cl )
      select one cl related by self->SM_SM[R502]->SM_ASM[R517]->O_OBJ[R519];
      if ( not_empty cl )
        select one signalEvt related by self->SM_SEVT[R525]->SM_SGEVT[R526];
        if(not_empty signalEvt)
          self.Drv_Lbl = signalEvt.get_name();
        else
          self.Drv_Lbl = cl.Key_Lett + "_A" +  GD::int_to_string(value:self.Numb);
        end if;
      else
       // may be orphaned during dispose operation
        self.Drv_Lbl = self.getCachedDrv_Lbl() +  GD::int_to_string(value:self.Numb);
      end if;
    else
      select one signalEvt related by self->SM_SEVT[R525]->SM_SGEVT[R526];
      if(not_empty signalEvt)
        self.Drv_Lbl = signalEvt.get_name();
      else
        self.Drv_Lbl = cl.Key_Lett +  GD::int_to_string(value:self.Numb);
      end if;
    end if;
  end if;
else
  self.Drv_Lbl = self.Unq_Lbl +  GD::int_to_string(value:self.Numb);
end if;',
	1);
INSERT INTO O_BATTR
	VALUES (1843,
	1488);
INSERT INTO O_ATTR
	VALUES (1843,
	1488,
	1842,
	'Drv_Lbl',
	'Full Name: State Machine Event Derived Label
Description: contains  the event label derived by concatenating the keyletters and the event number.
Data Domain: 0 = derived label created by concatenating class keyletters + event number, 1 = derived label created by concatenating Unq_Lbl with event number',
	'',
	'Drv_Lbl',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1844,
	1488);
INSERT INTO O_BATTR
	VALUES (1844,
	1488);
INSERT INTO O_ATTR
	VALUES (1844,
	1488,
	1843,
	'Descrip',
	'Full Name: Description',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1488);
INSERT INTO O_OIDA
	VALUES (1604,
	1488,
	0,
	'SMevt_ID');
INSERT INTO O_ID
	VALUES (1,
	1488);
INSERT INTO O_OIDA
	VALUES (1603,
	1488,
	1,
	'SM_ID');
INSERT INTO O_OIDA
	VALUES (1604,
	1488,
	1,
	'SMevt_ID');
INSERT INTO O_OIDA
	VALUES (1605,
	1488,
	1,
	'SMspd_ID');
INSERT INTO O_ID
	VALUES (2,
	1488);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (565,
	'State Machine',
	501,
	'SM_SM',
	'A State Machine represents the lifecycle of a class in terms of states, transitions, events, and actions.',
	1478);
INSERT INTO O_TFR
	VALUES (1845,
	565,
	'get_name',
	'Creates a string containing a descriptive name for the instance.',
	322,
	1,
	'select one ism related by self->SM_ISM[R517];
if not_empty ism
  return ism.get_name();
else
  select one asm related by self->SM_ASM[R517];
  if not_empty asm
    return asm.get_name();
  else
    // during import, may not be related yet
    return "";
  end if;
end if;
',
	1,
	'',
	1846);
INSERT INTO O_TFR
	VALUES (1847,
	565,
	'newState',
	'Create a new State in this State Machine',
	19,
	1,
	'create object instance st of SM_STATE;
relate self to st across R501;
st.initialize();',
	1,
	'',
	1848);
INSERT INTO O_TFR
	VALUES (1849,
	565,
	'dispose',
	'The dispose operation for this class.
',
	19,
	1,
	'select one ism related by self->SM_ISM[R517];
if (not_empty ism)
  select one ismclass related by ism->O_OBJ[R518];
  select any attr related by ismclass->O_ATTR[R102] where selected.Name == "current_state";
  if (not_empty attr)
    attr.dispose();
  end if;
  unrelate ism from ismclass across R518;
  unrelate self from ism across R517;
  delete object instance ism;
end if;
select one asm related by self->SM_ASM[R517];
if (not_empty asm)
  select one asmclass related by asm->O_OBJ[R519];
  unrelate asm from asmclass across R519;
  unrelate self from asm across R517;
  delete object instance asm;
end if;
select many evts related by self->SM_EVT[R502];
for each evt in evts
  evt.dispose();
end for;
select many evtdis related by self->SM_EVTDI[R516];
for each evtdi in evtdis
  evtdi.dispose();
end for;
select many supdts related by self->SM_SUPDT[R523];
for each supdt in supdts
  supdt.dispose();
end for;
select many states related by self->SM_STATE[R501];
for each state in states
  state.dispose();
end for;
select many trans related by self->SM_TXN[R505];
for each tran in trans
  tran.dispose();
end for;
// moore.dispose will clean up all actions to related to this SM_SM
//select many actions related by self->SM_ACT[R515];
//for each action in actions
//end for;
select one moore related by self->SM_MOORE[R510];
if (not_empty moore)
  moore.dispose();
end if;
//
select many aps related by self->CA_ACC[R416];
for each ap in aps
  ap.dispose();
end for;
select many ecps related by self->CA_EESMC[R403]->CA_COMM[R401];
for each ecp in ecps
  ecp.dispose();
end for;
select many scps related by self->CA_SMSMC[R406]->CA_COMM[R401];
for each scp in scps
  scp.dispose();
end for;
select many ocps related by self->CA_SMSMC[R407]->CA_COMM[R401];
for each ocp in ocps
  ocp.dispose();
end for;
select many secps related by self->CA_SMEEC[R410]->CA_COMM[R401];
for each secp in secps
  secp.dispose();
end for;
delete object instance self;',
	1,
	'',
	1850);
INSERT INTO O_TFR
	VALUES (1848,
	565,
	'newEvent',
	'Create a new Event in this State Machine',
	19,
	1,
	'create object instance newEvent of SM_EVT;
relate self to newEvent across R502;
newEvent.initialize();

',
	1,
	'',
	1851);
INSERT INTO O_TFR
	VALUES (1852,
	565,
	'newTransition',
	'',
	316,
	1,
	'select any fromState related by self->SM_STATE[R501] where (selected.SMstt_ID == param.from);
select any toState related by self->SM_STATE[R501] where (selected.SMstt_ID == param.to);
if (not_empty fromState and not_empty toState)
  create object instance tr of SM_TXN;
  create object instance net of SM_NETXN;
  relate tr to net across R507;
  relate net to fromState across R508;
  relate tr to toState across R506;
  relate self to tr across R505;
  tr.initialize();
  return true;
else
  return false;
end if;',
	1,
	'',
	1847);
INSERT INTO O_TPARM
	VALUES (1853,
	1852,
	'from',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1854,
	1852,
	'to',
	296,
	0,
	'',
	1853,
	'');
INSERT INTO O_TFR
	VALUES (1851,
	565,
	'newCreationTransition',
	'',
	316,
	1,
	'//
// Note: for compatibility with BridgePoint builder, the
// target state ID is passed in the from argument.
//
select any state related by self->SM_STATE[R501] where (selected.SMstt_ID == param.from);
if (not_empty state)
  create object instance tr of SM_TXN;
  create object instance ct of SM_CRTXN;
  relate tr to ct across R507;
  relate tr to state across R506;
  relate self to tr across R505;
  tr.initialize();
  return true;
else
  return false;
end if;',
	1,
	'',
	1855);
INSERT INTO O_TPARM
	VALUES (1856,
	1851,
	'from',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1857,
	1851,
	'to',
	296,
	0,
	'',
	1856,
	'');
INSERT INTO O_TFR
	VALUES (1858,
	565,
	'canAssignEvent',
	'',
	316,
	1,
	'/*
This operation only exists because of a bug in MC-Java where an operation may 
not be called on the selected item in the where clause of a select statement.
There is a function in cme_functions.sql that needs to call 
[State Machine Event].isAssignableToStateMachine() in such a circumstance, 
so it instead calls this, which then makes the desired call.
*/

select any event from instances of SM_EVT 
	where selected.SMevt_ID == param.eventId 
	and selected.SM_ID == param.eventStateMachineId;
if(not_empty event)
  return event.isAssignableToStateMachine(assignToMachineId:self.SM_ID,
	  isCreationTransition:param.isCreationTransition);
end if;
return false;',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (1859,
	1858,
	'eventId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1860,
	1858,
	'eventStateMachineId',
	296,
	0,
	'',
	1859,
	'');
INSERT INTO O_TPARM
	VALUES (1861,
	1858,
	'isCreationTransition',
	316,
	0,
	'',
	1860,
	'');
INSERT INTO O_TFR
	VALUES (1862,
	565,
	'get_ooa_id',
	'',
	296,
	1,
	'return self.SM_ID;',
	1,
	'',
	1845);
INSERT INTO O_TFR
	VALUES (1863,
	565,
	'pasteTransition',
	'',
	19,
	1,
	'select any transition from instances of SM_TXN where
                                                  selected.Trans_ID == param.id;
if(not_empty transition)
  // update the association of the Action to the new state machine
  select one action related by transition->SM_TAH[R530]->
                                                      SM_AH[R513]->SM_ACT[R514];
  if(not_empty action)
    select one prevMachine related by action->SM_SM[R515];
    if(not_empty prevMachine)
      unrelate action from prevMachine across R515;
    end if;
    relate action to self across R515;
  end if;
  select one existingSM related by transition->SM_SM[R505];
  if(not_empty existingSM)
    unrelate transition from existingSM across R505;
  end if;
  relate transition to self across R505;
  transition.updateAssignedEventOrSignal();
end if;',
	1,
	'',
	1864);
INSERT INTO O_TPARM
	VALUES (1865,
	1863,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1864,
	565,
	'pasteStateMachineState',
	'',
	19,
	1,
	'select any state from instances of SM_STATE where (selected.SMstt_ID == param.id);
if(not_empty state)
  // remove any matrix entries where the event is not copied as well
  select many semes related by state->SM_SEME[R503];
  for each seme in semes
    select one semEvt related by seme->SM_SEVT[R503];
    if(empty semEvt)
      seme.dispose();
    end if;
  end for;
  // update the association of the Action to the new state machine
  select one action related by state->SM_MOAH[R511]->SM_AH[R513]->SM_ACT[R514];
  select one prevMachine related by action->SM_SM[R515];
  if(not_empty prevMachine)
    unrelate action from prevMachine across R515;
  end if;
  select one ism related by self->SM_ISM[R517];
  select one asm related by self->SM_ASM[R517];
  relate action to self across R515;
  if(not_empty asm)
    // guarantee unique name
    state.Name = ::getUniqueInitialNameInParent(instance:state.convertToInstance(),
  						name:state.Name, parent:asm.convertToInstance());
  elif(not_empty ism)
    // guarantee unique name
    state.Name = ::getUniqueInitialNameInParent(instance:state.convertToInstance(),
  						name:state.Name, parent:ism.convertToInstance());  
  end if;
  select one mah related by state->SM_MOAH[R511];
  select one prevMooreMachine related by mah->SM_MOORE[R511];
  if(not_empty prevMooreMachine)
    unrelate state from prevMooreMachine across R511 using mah;
  end if;
  select one msm related by self->SM_MOORE[R510];
  relate state to msm across R511 using mah;
  // guarantee unique state number
  select many existingStates related by self->SM_STATE[R501];
  select any sameNumberState related by self->SM_STATE[R501] where (selected.Numb == state.Numb);
  if(not_empty sameNumberState)
    greatestNumb = 1;
    for each existingState in existingStates
      // store the greatest state number
      if(existingState.Numb > greatestNumb)
        greatestNumb = existingState.Numb;
      end if;
    end for;
    state.Numb = greatestNumb + 1;
  end if;
  // create SEM entry instances
  //
  select many event_set related by self->SM_EVT[R502]->SM_SEVT[R525];
  for each event in event_set
    create object instance sem of SM_SEME;
    // TODO: get default subtype from preferences
    create object instance ch of SM_CH;
    relate state to event across R503 using sem;
    relate ch to sem across R504;
  end for;
  relate state to self across R501;
end if;',
	1,
	'',
	1852);
INSERT INTO O_TPARM
	VALUES (1866,
	1864,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1867,
	565,
	'removeIncompleteNonLocalEvents',
	'',
	19,
	1,
	'// for each non-local event in this machine, convert
// it to a local one if necessary
select many evts related by self->SM_EVT[R502];
for each evt in evts
  select one nlevt related by evt->SM_SEVT[R525]->SM_NLEVT[R526];
  if(not_empty nlevt)
    nlevt.resolveInheritedEvent();
  end if;
  select one sigEvt related by evt->SM_SEVT[R525]->SM_SGEVT[R526];
  if(not_empty sigEvt)
    // for all transitions that this event is assigned to
    select many transitions related by evt->SM_SEVT[R525]->SM_SEME[R503]
                                                 ->SM_NSTXN[R504]->SM_TXN[R507];
    for each transition in transitions
      // have the transition update the signal
      transition.updateAssignedSignal();
    end for;
  end if;
end for;',
	1,
	'',
	1863);
INSERT INTO O_TFR
	VALUES (1868,
	565,
	'findMatchingEvent',
	'',
	296,
	1,
	'/*
Find an event within this machine that matches the given event.
The event will match if the name and signature are identical.
*/
foundMatch = false;
select any existingEvt related by self->SM_EVT[R502];
select any evt from instances of SM_EVT where (selected.SMevt_ID == param.id);
if(not_empty evt)
  select one nlevt related by evt->SM_SEVT[R525]->SM_NLEVT[R526];
  isPoly = false;
  if(not_empty nlevt)
    isPoly = true;
  end if;
  name = evt.Mning;
  numb = evt.Numb;
  select many events related by self->SM_EVT[R502];
  for each existingEvent in events
    if(param.isCreation)
      select many creationTransitionsAssigned related by events->
                                   SM_SEVT[R525]->SM_LEVT[R526]->SM_CRTXN[R509];
      if(not (cardinality events > cardinality creationTransitionsAssigned))
        // if all events are used by other creation transitions we
        // cannot use an existing one
        continue;
      else
        select any otherEvt related by self->SM_EVT[R502] where
                                                         selected.Mning == name;
        select one existingCreationTrans related by otherEvt->SM_SEVT[R525]->
                                                  SM_LEVT[R526]->SM_CRTXN[R509];
        if(not_empty existingCreationTrans)
          // if the resolved event is already assigned to a creation transition
          // it cannot be used
          continue;
        end if;
      end if;
    end if;
    if(existingEvent.Mning == name)
      // we cannot use any event that is a polymorphic event and that
      // is referenced by any subtype 
      select one poly related by existingEvent->SM_PEVT[R525];
      if(not_empty poly)
        select any nlevt related by poly->SM_NLEVT[R527];
        if(not_empty nlevt)
          select any evtSM from instances of SM_SM where
                                              selected.SM_ID == param.machineID;
          if(evtSM == self)
            // can''t be used
            continue;
          end if;
        end if;
      end if;
      foundMatch = true;
      existingEvt = existingEvent;
      break;
    end if;
  end for;
end if;
if(foundMatch)
  return existingEvt.SMevt_ID;
end if;
return GD::NULL_UNIQUE_ID();',
	1,
	'',
	1849);
INSERT INTO O_TPARM
	VALUES (1869,
	1868,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1870,
	1868,
	'isCreation',
	316,
	0,
	'',
	1869,
	'');
INSERT INTO O_TPARM
	VALUES (1871,
	1868,
	'machineID',
	296,
	0,
	'',
	1870,
	'');
INSERT INTO O_TFR
	VALUES (1850,
	565,
	'canAssignSignal',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
/* State Machine.canAssignSignal
This operation only exists because of a bug in generator where an operation may
not be called on the selected item in the where clause of a select statement.
There is a function in cme_functions.sql that needs to call
[Required/Provided Signal].canAssignSignal in such a circumstance,
so it instead calls this, which then makes the desired call.
*/
select any interfaceSignal related by self->SM_ASM[R517]->O_OBJ[R519]->S_SS[R2]
     ->S_DOM[R1]->CN_DC[R4204]->C_C[R4204]->C_PO[R4010]->C_IR[R4016]->C_I[R4012]
                           ->C_EP[R4003] where (selected.Id == param.signal_id);

select one packageableElem related by self->SM_ASM[R517]->O_OBJ[R519]->PE_PE[R8001];
select one package related by packageableElem->EP_PKG[R8000];
isInGenericPackage = not_empty package;
if (isInGenericPackage)
  // Check for isInGenericPackage
  select any containingComponent from instances of C_C where
                                            selected.Id == GD::NULL_UNIQUE_ID();
  if not_empty package
    containingComponentId = package.getContainingComponentId();
    select any containingComponent from instances of C_C where
                                           selected.Id == containingComponentId;
  end if;
  select any interfaceSignal related by containingComponent->C_PO[R4010]->
                                        C_IR[R4016]->C_I[R4012]->C_EP[R4003] 
                                         where (selected.Id == param.signal_id);
end if;

select any reqEP related by interfaceSignal->SPR_REP[R4500] where
                               selected.ExecutableProperty_Id == param.signal_id
                              and selected.Requirement_Id == param.interface_id;
if not_empty reqEP
  select one reqSig related by reqEP->SPR_RS[R4502];
  return reqSig.isAvailableForAllocationTo(transition_id:param.transition_id);
else
  select any provEP related by interfaceSignal->SPR_PEP[R4501] where
                               selected.ExecutableProperty_Id == param.signal_id
                                and selected.Provision_Id == param.interface_id;
  if not_empty provEP
    select one provSig related by provEP->SPR_PS[R4503];
    return provSig.isAvailableForAllocationTo(transition_id:
                                                           param.transition_id);
  end if;
end if;
return false;',
	1,
	'',
	1858);
INSERT INTO O_TPARM
	VALUES (1872,
	1850,
	'signal_id',
	296,
	0,
	'',
	1873,
	'');
INSERT INTO O_TPARM
	VALUES (1874,
	1850,
	'transition_id',
	296,
	0,
	'',
	1872,
	'');
INSERT INTO O_TPARM
	VALUES (1873,
	1850,
	'interface_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1855,
	565,
	'hasValidSignals',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// State Machine.hasValidSignals()
select any ifRef related by self->SM_ASM[R517]->O_OBJ[R519]->
           S_SS[R2]->S_DOM[R1]->CN_DC[R4204]->C_C[R4204]->C_PO[R4010]->
                            C_IR[R4016] where selected.Id == param.interface_id;

select one packageableElem related by self->SM_ASM[R517]->O_OBJ[R519]->PE_PE[R8001];
select one package related by packageableElem->EP_PKG[R8000];
isInGenericPackage = not_empty package;
if (isInGenericPackage)
  containingComponentId = package.getContainingComponentId();
  select any containingComponent from instances of C_C where
                                           selected.Id == containingComponentId;
  select any ifRef related by containingComponent->C_PO[R4010]->C_IR[R4016] 
                                        where selected.Id == param.interface_id;
end if;

select many signals related by ifRef->C_I[R4012]->C_EP[R4003]->C_AS[R4004];
for each sig in signals
  if self.canAssignSignal(signal_id:sig.Id, transition_id:param.transition_id,
                                                          interface_id:ifRef.Id)
    return true;
  end if;
end for;
return false;',
	1,
	'',
	1862);
INSERT INTO O_TPARM
	VALUES (1875,
	1855,
	'interface_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (1876,
	1855,
	'transition_id',
	296,
	0,
	'',
	1875,
	'');
INSERT INTO O_TFR
	VALUES (1846,
	565,
	'getContainingComponentId',
	'',
	296,
	1,
	'select one clazz related by self->SM_ASM[R517]->O_OBJ[R519];
if(empty clazz)
  select one clazz related by self->SM_ISM[R517]->O_OBJ[R518];
end if;
return clazz.getContainingComponentId();',
	1,
	'',
	1868);
INSERT INTO O_TFR
	VALUES (1877,
	565,
	'getContainerId',
	'',
	296,
	1,
	'// State Machine.getContainerId()
select one clazz related by self->SM_ASM[R517]->O_OBJ[R519];
if(empty clazz)
  select one clazz related by self->SM_ISM[R517]->O_OBJ[R518];
end if;
return clazz.getContainerId();',
	1,
	'',
	1867);
INSERT INTO O_TFR
	VALUES (1878,
	565,
	'pasteStateMachineEvent',
	'',
	19,
	1,
	'select any evt from instances of SM_EVT where (selected.SMevt_ID == param.id);
if(not_empty evt)
  select one existingMachine related by evt->SM_SM[R502];
  if(not_empty existingMachine)
    unrelate existingMachine from evt across R502;
  end if;
  relate self to evt across R502;
  select one ism related by self->SM_ISM[R517];
  if(not_empty ism)
    evt.Mning = ::getUniqueInitialNameInParent( 
      instance: evt.convertToInstance(), 
      name: evt.Mning, parent:ism.convertToInstance());
  else
    select one asm related by self->SM_ASM[R517];
    evt.Mning = ::getUniqueInitialNameInParent( 
      instance: evt.convertToInstance(), 
      name: evt.Mning, parent:asm.convertToInstance());    
  end if;
  evt.setUniqueNumber(checkForDuplicate:false);
  select one sem related by evt->SM_SEVT[R525];
  sem.createDefaultMatrixEntries();
  // for each data item copied associate it with
  // self
  select many items related by evt->SM_EVTDI[R532];
  for each item in items
    select one existingSm related by item->SM_SM[R516];
    if(not_empty existingSm)
      unrelate item from existingSm across R516;
    end if;
    relate item to self across R516;
  end for;
end if;',
	1,
	'',
	1877);
INSERT INTO O_TPARM
	VALUES (1879,
	1878,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1880,
	565,
	'canCopyStateMachineEvent',
	'',
	316,
	1,
	'select any evt from instances of SM_EVT where (selected.SMevt_ID == param.id);
if(not_empty evt)
  select one poly related by evt->SM_PEVT[R525];
  if(not_empty poly)
    return false;
  end if;
  select one nonlocal related by evt->SM_SEVT[R525]->SM_NLEVT[R526];
  if(not_empty nonlocal)
    return false;
  end if;
else
  return false;
end if;
return true;',
	1,
	'',
	1878);
INSERT INTO O_TPARM
	VALUES (1881,
	1880,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1882,
	565,
	'removeIncompleteSignalEvents',
	'',
	19,
	1,
	'// for each signal event in this machine, convert
// it to a local one if necessary
select many evts related by self->SM_EVT[R502];
for each evt in evts
  select one sigEvt related by evt->SM_SEVT[R525]->SM_SGEVT[R526];
  if(not_empty sigEvt)
    // for all transitions that this event is assigned to
    select many transitions related by evt->SM_SEVT[R525]->SM_SEME[R503]
                                                 ->SM_NSTXN[R504]->SM_TXN[R507];
    for each transition in transitions
      // have the transition update the signal
      transition.updateAssignedSignal();
    end for;
  end if;
end for;',
	1,
	'',
	1880);
INSERT INTO O_TFR
	VALUES (1883,
	565,
	'getPath',
	'',
	322,
	1,
	'result= "";
select one classSM related by self->SM_ASM[R517];
select one instSM related by self->SM_ISM[R517];
if (not_empty classSM)
    select one modelClass related by classSM->O_OBJ[R519];
    result ="::Class Based Satate Machine::"+modelClass.getPath(path:modelClass.Name,includeSelf:true);
elif (not_empty instSM)
    select one modelClass related by instSM->O_OBJ[R518];
    result ="::Instance Based Satate Machine::"+modelClass.getPath(path:modelClass.Name,includeSelf:true);
end if; 

return result;

',
	1,
	'',
	1882);
INSERT INTO O_NBATTR
	VALUES (564,
	565);
INSERT INTO O_BATTR
	VALUES (564,
	565);
INSERT INTO O_ATTR
	VALUES (564,
	565,
	0,
	'SM_ID',
	'Full Name: State Machine Identifier',
	'',
	'SM_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1884,
	565);
INSERT INTO O_BATTR
	VALUES (1884,
	565);
INSERT INTO O_ATTR
	VALUES (1884,
	565,
	564,
	'Descrip',
	'Full Name: Description
User_Visible:false',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1885,
	565);
INSERT INTO O_BATTR
	VALUES (1885,
	565);
INSERT INTO O_ATTR
	VALUES (1885,
	565,
	1884,
	'Config_ID',
	'Full Name: Configuration Identifier
Description: The component ID of  this state machine.
impl_detail: true
min_value: 0
max_value: 510
readonly: true
User_Visible:false
',
	'',
	'Config_ID',
	0,
	298,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	565);
INSERT INTO O_OIDA
	VALUES (564,
	565,
	0,
	'SM_ID');
INSERT INTO O_ID
	VALUES (1,
	565);
INSERT INTO O_ID
	VALUES (2,
	565);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1496,
	'State Event Matrix Entry',
	504,
	'SM_SEME',
	'This class represents an entry in the state event matrix (SEM).  A state event matrix entry describes what happens in each state (SM_STATE) for each event (SM_EVT).  The SEM can be thought of as a two-dimensional array where the states of a state machine  are represented by rows and events are represented by columns.  An entry consists of one of the following: transition to another state, event ignored, event cant happen.',
	1478);
INSERT INTO O_TFR
	VALUES (1886,
	1496,
	'get_name',
	'Creates a string containing a descriptive name for the instance.',
	322,
	1,
	'select one evt related by self->SM_SEVT[R503]->SM_EVT[R525];
if(empty evt)
  return "State Event Matrix Entry (" + ::getOrphanedElementName() + ")";
end if;
return "State Event Matrix Entry (" + evt.get_name() + ")";
',
	1,
	'',
	1887);
INSERT INTO O_TFR
	VALUES (1888,
	1496,
	'dispose',
	'Dispose this SM_SEME.
',
	19,
	1,
	'select one fromState related by self->SM_STATE[R503];
select one event related by self->SM_SEVT[R503];
unrelate fromState from event across R503 using self;
self.disposeChOrEi();
select one nstxn related by self->SM_NSTXN[R504];
if (not_empty nstxn)
  unrelate self from nstxn across R504;
  select one txn related by nstxn->SM_TXN[R507];
  create object instance netxn of SM_NETXN;
  unrelate nstxn from txn across R507;
  relate txn to netxn across R507;
  relate fromState to netxn across R508;
  delete object instance nstxn;
end if;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (1889,
	1496,
	'migrateChToEi',
	'',
	19,
	1,
	'select one ch related by self->SM_CH[R504];
if ( not_empty ch )
  create object instance ei of SM_EIGN;
  unrelate self from ch across R504;
  relate self to ei across R504;
  delete object instance ch;
end if;
',
	1,
	'',
	1886);
INSERT INTO O_TFR
	VALUES (1890,
	1496,
	'migrateEiToCh',
	'',
	19,
	1,
	'select one ei related by self->SM_EIGN[R504];
if ( not_empty ei )
  create object instance ch of SM_CH;
  unrelate self from ei across R504;
  relate self to ch across R504;
  delete object instance ei;
end if;
',
	1,
	'',
	1889);
INSERT INTO O_TFR
	VALUES (1887,
	1496,
	'disposeChOrEi',
	'',
	19,
	1,
	'select one chevt related by self->SM_CH[R504];
if (not_empty chevt)
  unrelate self from chevt across R504;
  delete object instance chevt;
end if;
select one igevt related by self->SM_EIGN[R504];
if (not_empty igevt)
  unrelate self from igevt across R504;
  delete object instance igevt;
end if;
',
	1,
	'',
	1888);
INSERT INTO O_TFR
	VALUES (1891,
	1496,
	'mergeDispose',
	'',
	19,
	1,
	'select one fromState related by self->SM_STATE[R503];
select one event related by self->SM_SEVT[R503];
unrelate fromState from event across R503 using self;
self.disposeChOrEi();
delete object instance self;
',
	1,
	'',
	1890);
INSERT INTO O_REF
	VALUES (1496,
	1492,
	0,
	1522,
	1610,
	1616,
	1611,
	1501,
	1892,
	0,
	0,
	'',
	'State Machine State',
	'SMstt_ID',
	'R503');
INSERT INTO O_RATTR
	VALUES (1501,
	1496,
	1522,
	1492,
	1,
	'SMstt_ID');
INSERT INTO O_ATTR
	VALUES (1501,
	1496,
	0,
	'SMstt_ID',
	'

',
	'',
	'SMstt_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1496,
	1606,
	0,
	1613,
	1610,
	1616,
	1612,
	1499,
	1893,
	0,
	0,
	'',
	'SEM Event',
	'SMevt_ID',
	'R503');
INSERT INTO O_RATTR
	VALUES (1499,
	1496,
	1604,
	1488,
	1,
	'SMevt_ID');
INSERT INTO O_ATTR
	VALUES (1499,
	1496,
	1501,
	'SMevt_ID',
	'

',
	'',
	'SMevt_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1496,
	1492,
	0,
	1521,
	1610,
	1616,
	1611,
	1500,
	1894,
	0,
	0,
	'',
	'State Machine State',
	'SM_ID',
	'R503');
INSERT INTO O_REF
	VALUES (1496,
	1606,
	0,
	1614,
	1610,
	1616,
	1612,
	1500,
	1895,
	1894,
	0,
	'',
	'SEM Event',
	'SM_ID',
	'R503');
INSERT INTO O_RATTR
	VALUES (1500,
	1496,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1500,
	1496,
	1499,
	'SM_ID',
	'

',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1496,
	1606,
	0,
	1615,
	1610,
	1616,
	1612,
	1498,
	1896,
	0,
	0,
	'',
	'SEM Event',
	'SMspd_ID',
	'R503');
INSERT INTO O_RATTR
	VALUES (1498,
	1496,
	1585,
	1583,
	1,
	'SMspd_ID');
INSERT INTO O_ATTR
	VALUES (1498,
	1496,
	1500,
	'SMspd_ID',
	'

',
	'',
	'SMspd_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1496);
INSERT INTO O_OIDA
	VALUES (1498,
	1496,
	0,
	'SMspd_ID');
INSERT INTO O_OIDA
	VALUES (1499,
	1496,
	0,
	'SMevt_ID');
INSERT INTO O_OIDA
	VALUES (1500,
	1496,
	0,
	'SM_ID');
INSERT INTO O_OIDA
	VALUES (1501,
	1496,
	0,
	'SMstt_ID');
INSERT INTO O_ID
	VALUES (1,
	1496);
INSERT INTO O_ID
	VALUES (2,
	1496);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1623,
	'Signal Event',
	528,
	'SM_SGEVT',
	'',
	1478);
INSERT INTO O_TFR
	VALUES (1897,
	1623,
	'dispose',
	'',
	19,
	1,
	'// Signal Event.dispose()
select one provSig related by self->SPR_PS[R528];
if not_empty provSig
  unrelate self from provSig across R528;
end if;
select one reqSig related by self->SPR_RS[R529];
if not_empty reqSig
  unrelate self from reqSig across R529;
end if;
select one sevt related by self->SM_SEVT[R526];
if not_empty sevt
  unrelate self from sevt across R526;
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (1898,
	1623,
	'get_event_text',
	'',
	322,
	1,
	'select one provSig related by self->SPR_PS[R528];
select one reqSig related by self->SPR_RS[R529];
if empty provSig and empty reqSig
  return self.signal_name;
else
  result = self.signal_name;
  select one ifRef related by provSig->SPR_PEP[R4503]->C_P[R4501]
                                                                                                 ->C_IR[R4009];
  if empty ifRef
    select one ifRef related by reqSig->SPR_REP[R4502]->C_R[R4500]
                                                                                                ->C_IR[R4009];
  end if;
  select many parameters related by provSig->SPR_PEP[R4503]->
                                                       C_EP[R4501]->C_PP[R4006];
  if not_empty reqSig
    select many parameters related by reqSig->SPR_REP[R4502]->
                                                                             C_EP[R4500]->C_PP[R4006];
  end if;
  if (not_empty parameters)
    result = result + " (";
    sep = "";
    for each parameter in parameters
      select one dt related by parameter->S_DT[R4007];
      result = result + sep + parameter.Name + ":" + dt.Name;
      sep = ", ";
    end for;
    result = result + ")";
  end if;
  return result;
end if;',
	1,
	'',
	1897);
INSERT INTO O_TFR
	VALUES (1899,
	1623,
	'get_name',
	'',
	322,
	1,
	'//Signal Event.get_name()
return self.signal_name;',
	1,
	'',
	1898);
INSERT INTO O_TFR
	VALUES (1900,
	1623,
	'getCachedSignalName',
	'Translate:native',
	322,
	1,
	'	return m_signal_name;',
	0,
	'',
	1899);
INSERT INTO O_TFR
	VALUES (1901,
	1623,
	'setCachedSignalName',
	'Translate:native',
	19,
	1,
	'	m_signal_name = p_Value;',
	0,
	'',
	1900);
INSERT INTO O_TPARM
	VALUES (1902,
	1901,
	'value',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (1623,
	1606,
	0,
	1613,
	1617,
	1624,
	1618,
	1903,
	1904,
	0,
	0,
	'',
	'SEM Event',
	'SMevt_ID',
	'R526');
INSERT INTO O_RATTR
	VALUES (1903,
	1623,
	1604,
	1488,
	1,
	'SMevt_ID');
INSERT INTO O_ATTR
	VALUES (1903,
	1623,
	0,
	'SMevt_ID',
	'',
	'',
	'SMevt_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1623,
	1606,
	0,
	1614,
	1617,
	1624,
	1618,
	1905,
	1906,
	0,
	0,
	'',
	'SEM Event',
	'SM_ID',
	'R526');
INSERT INTO O_RATTR
	VALUES (1905,
	1623,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1905,
	1623,
	1903,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1623,
	1606,
	0,
	1615,
	1617,
	1624,
	1618,
	1907,
	1908,
	0,
	0,
	'',
	'SEM Event',
	'SMspd_ID',
	'R526');
INSERT INTO O_RATTR
	VALUES (1907,
	1623,
	1585,
	1583,
	1,
	'SMspd_ID');
INSERT INTO O_ATTR
	VALUES (1907,
	1623,
	1905,
	'SMspd_ID',
	'',
	'',
	'SMspd_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1623,
	1483,
	0,
	1637,
	1635,
	1638,
	1636,
	1909,
	1910,
	0,
	0,
	'',
	'Provided Signal',
	'Id',
	'R528');
INSERT INTO O_RATTR
	VALUES (1909,
	1623,
	263,
	61,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (1909,
	1623,
	1907,
	'Provided_Signal_Id',
	'',
	'Provided_Signal_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1623,
	1485,
	0,
	1641,
	1639,
	1642,
	1640,
	1911,
	1912,
	0,
	0,
	'',
	'Required Signal',
	'Id',
	'R529');
INSERT INTO O_RATTR
	VALUES (1911,
	1623,
	267,
	63,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (1911,
	1623,
	1909,
	'Required_Signal_Id',
	'',
	'Required_Signal_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1913,
	1623,
	'/*
 * Get the signal name for the signal or use the cached value if a signal
 * cannot be found
 */
select one proSignal related by self->SPR_PS[R528];
select one reqSignal related by self->SPR_RS[R529];
if(not_empty proSignal or not_empty reqSignal)
  result = "";
  select one ifRef related by proSignal->SPR_PEP[R4503]->C_P[R4501]->C_IR[R4009];
  if empty ifRef
    select one ifRef related by reqSignal->SPR_REP[R4502]->C_R[R4500]->C_IR[R4009];
  end if;
  select one port related by ifRef->C_PO[R4016];
  if not_empty port
    if port.Name != ""
      result = port.Name + "::";
    else
      select one interface related by ifRef->C_I[R4012];
      if not_empty interface
        if interface.Name != "";
          result = interface.Name + "::";
        end if;
      else
        self.signal_name = self.getCachedSignalName();
      end if;
    end if;
    if not_empty proSignal
      result = result + proSignal.Name;
    else
      result = result + reqSignal.Name;
    end if;
    self.setCachedSignalName(value: result);
    self.signal_name = result;
  else
    self.signal_name = self.getCachedSignalName();
  end if;
else
  self.signal_name = self.getCachedSignalName();
end if; 
',
	1);
INSERT INTO O_BATTR
	VALUES (1913,
	1623);
INSERT INTO O_ATTR
	VALUES (1913,
	1623,
	1911,
	'signal_name',
	'User_Visible:false',
	'',
	'signal_name',
	0,
	322,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1623);
INSERT INTO O_OIDA
	VALUES (1903,
	1623,
	0,
	'SMevt_ID');
INSERT INTO O_OIDA
	VALUES (1905,
	1623,
	0,
	'SM_ID');
INSERT INTO O_OIDA
	VALUES (1907,
	1623,
	0,
	'SMspd_ID');
INSERT INTO O_ID
	VALUES (1,
	1623);
INSERT INTO O_ID
	VALUES (2,
	1623);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1606,
	'SEM Event',
	525,
	'SM_SEVT',
	'An SEM (State Event Matrix) event is one that appears in the state event matrix.  Contrast this to a polymorphic event which is defined at the supertype-level but does not appear in the SEM for the super-type.  An SEM event can either be a local event (SM_LEVT), in the case of an event that is defined in the state machine for the class, or a non-local event (SM_NLEVT) which is an alias for a polymorphic event (SM_PEVT) defined in the super-type but accessible via the subtype.',
	1478);
INSERT INTO O_TFR
	VALUES (1914,
	1606,
	'dispose',
	'Dispose this SM_SEVT.',
	19,
	1,
	'select one evt related by self->SM_EVT[R525];
unrelate self from evt across R525;
select many semes related by self->SM_SEME[R503];
for each seme in semes
  seme.dispose();
end for;
select one levt related by self->SM_LEVT[R526];
if (not_empty levt)
  levt.dispose();
end if;
select one nlevt related by self->SM_NLEVT[R526];
if (not_empty nlevt)
  nlevt.dispose();
end if;
select one signalEvt related by self->SM_SGEVT[R526];
if not_empty signalEvt
  signalEvt.dispose();
end if;
delete object instance self;
',
	1,
	'',
	1915);
INSERT INTO O_TFR
	VALUES (1915,
	1606,
	'createDefaultMatrixEntries',
	'',
	19,
	1,
	'/*
Creates a can''t-happen matrix entry for this event for each state in this event''s 
state machine.
*/

// for each state in this event''s state machine
select many states related by self->SM_EVT[R525]->SM_SM[R502]->SM_STATE[R501];
for each state in states
	// create an event-matrix-entry to relate this state to this event
	create object instance entry of SM_SEME;
	relate state to self across R503 using entry;
	
	// create a can''t-happen entry to classify the event-matrix
	// entry created above
	create object instance cantHappen of SM_CH;
	relate cantHappen to entry across R504;
end for;
',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (1606,
	1488,
	1,
	1604,
	1601,
	1607,
	1602,
	1613,
	1916,
	0,
	0,
	'',
	'State Machine Event',
	'SMevt_ID',
	'R525');
INSERT INTO O_RATTR
	VALUES (1613,
	1606,
	1604,
	1488,
	1,
	'SMevt_ID');
INSERT INTO O_ATTR
	VALUES (1613,
	1606,
	0,
	'SMevt_ID',
	'',
	'',
	'SMevt_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1606,
	1488,
	1,
	1603,
	1601,
	1607,
	1602,
	1614,
	1917,
	0,
	0,
	'',
	'State Machine Event',
	'SM_ID',
	'R525');
INSERT INTO O_RATTR
	VALUES (1614,
	1606,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1614,
	1606,
	1613,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1606,
	1488,
	1,
	1605,
	1601,
	1607,
	1602,
	1615,
	1918,
	0,
	0,
	'',
	'State Machine Event',
	'SMspd_ID',
	'R525');
INSERT INTO O_RATTR
	VALUES (1615,
	1606,
	1585,
	1583,
	1,
	'SMspd_ID');
INSERT INTO O_ATTR
	VALUES (1615,
	1606,
	1614,
	'SMspd_ID',
	'',
	'',
	'SMspd_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1606);
INSERT INTO O_OIDA
	VALUES (1613,
	1606,
	0,
	'SMevt_ID');
INSERT INTO O_OIDA
	VALUES (1614,
	1606,
	0,
	'SM_ID');
INSERT INTO O_OIDA
	VALUES (1615,
	1606,
	0,
	'SMspd_ID');
INSERT INTO O_ID
	VALUES (1,
	1606);
INSERT INTO O_ID
	VALUES (2,
	1606);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1608,
	'Polymorphic Event',
	522,
	'SM_PEVT',
	'A polymorphic event (SM_PEVT) is one that is defined in a super-type state machine  and used in one or more sub-type state machines.  Each polymorphic event has one or more aliases (SM_NLEVT) in one or more sub-types.',
	1478);
INSERT INTO O_TFR
	VALUES (1919,
	1608,
	'dispose',
	'',
	19,
	1,
	'select one evt related by self->SM_EVT[R525];
unrelate self from evt across R525;
select many nlevts related by self->SM_NLEVT[R527];
for each nlevt in nlevts
  unrelate self from nlevt across R527;
  nlevt.dispose();
end for;
',
	1,
	'',
	1920);
INSERT INTO O_TFR
	VALUES (1920,
	1608,
	'createNonLocalEventForStateMachine',
	'',
	296,
	1,
	'/*
Creates (and returns the ID of) a non-local event that is an alias of this 
polymorphic event for the given state machine.
*/

// create a non-local event to alias this polymorphic event
create object instance nonlocalEvent of SM_NLEVT;
relate nonlocalEvent to self across R527;

// create the supertype instances of the above non-local event, 
// and copy into them the attribute values of the corresponding
// instances of this polymorphic event
create object instance matrixEvent of SM_SEVT;
relate matrixEvent to nonlocalEvent across R526;
create object instance newEvent of SM_EVT;
relate newEvent to matrixEvent across R525;
select one event related by self->SM_EVT[R525];
newEvent.Numb = event.Numb;
newEvent.Mning = event.Mning;
newEvent.Is_Lbl_U = event.Is_Lbl_U;
newEvent.Unq_Lbl = event.Unq_Lbl;
newEvent.Descrip = event.Descrip;
select any machine from instances of SM_SM
	where selected.SM_ID == param.stateMachineId;
relate newEvent to machine across R502;
matrixEvent.createDefaultMatrixEntries();

return newEvent.SMevt_ID;
',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (1921,
	1920,
	'stateMachineId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1922,
	1608,
	'migrateToLocalEvent',
	'',
	19,
	1,
	'// if there are no more non-local events that are aliasing this
// poly
select many aliases related by self->SM_NLEVT[R527];
if (empty aliases)
  // migrate this polymorphic event back to a local event
  select one event related by self->SM_EVT[R525];
  self.dispose();
  create object instance matrixEvent of SM_SEVT;
  relate matrixEvent to event across R525;
  matrixEvent.createDefaultMatrixEntries();
  create object instance localEvent of SM_LEVT;
  relate localEvent to matrixEvent across R526;
end if;',
	1,
	'',
	1919);
INSERT INTO O_TFR
	VALUES (1923,
	1608,
	'convertToInstance',
	'Translate:native',
	317,
	1,
	'return this;',
	0,
	'',
	1922);
INSERT INTO O_TFR
	VALUES (1924,
	1608,
	'getCachedLocalClassName',
	'Translate:native',
	322,
	1,
	'	return m_localclassname;',
	0,
	'',
	1923);
INSERT INTO O_TFR
	VALUES (1925,
	1608,
	'getCachedLocalClassKL',
	'Translate:native',
	322,
	1,
	'	return m_localclasskl;',
	0,
	'',
	1924);
INSERT INTO O_TFR
	VALUES (1926,
	1608,
	'setCachedLocalClassName',
	'Translate:native',
	19,
	1,
	'	m_localclassname = p_Value;',
	0,
	'',
	1925);
INSERT INTO O_TPARM
	VALUES (1927,
	1926,
	'value',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1928,
	1608,
	'setCachedLocalClassKL',
	'Translate:native',
	19,
	1,
	'	m_localclasskl = p_Value;',
	0,
	'',
	1926);
INSERT INTO O_TPARM
	VALUES (1929,
	1928,
	'value',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (1930,
	1608,
	'get_name',
	'',
	322,
	1,
	'return self.localEventMning;',
	1,
	'',
	1928);
INSERT INTO O_TFR
	VALUES (1931,
	1608,
	'getCachedLocalEventMning',
	'Translate:native',
	322,
	1,
	'	return m_localeventmning;',
	0,
	'',
	1930);
INSERT INTO O_TFR
	VALUES (1932,
	1608,
	'setCachedLocalEventMning',
	'Translate:native',
	19,
	1,
	'	m_localeventmning = p_Value;',
	0,
	'',
	1931);
INSERT INTO O_TPARM
	VALUES (1933,
	1932,
	'value',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (1608,
	1488,
	1,
	1604,
	1601,
	1609,
	1602,
	1633,
	1934,
	0,
	0,
	'',
	'State Machine Event',
	'SMevt_ID',
	'R525');
INSERT INTO O_RATTR
	VALUES (1633,
	1608,
	1604,
	1488,
	1,
	'SMevt_ID');
INSERT INTO O_ATTR
	VALUES (1633,
	1608,
	0,
	'SMevt_ID',
	'',
	'',
	'SMevt_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1608,
	1488,
	1,
	1603,
	1601,
	1609,
	1602,
	1632,
	1935,
	0,
	0,
	'',
	'State Machine Event',
	'SM_ID',
	'R525');
INSERT INTO O_RATTR
	VALUES (1632,
	1608,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1632,
	1608,
	1633,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1608,
	1488,
	1,
	1605,
	1601,
	1609,
	1602,
	1936,
	1937,
	0,
	0,
	'',
	'State Machine Event',
	'SMspd_ID',
	'R525');
INSERT INTO O_RATTR
	VALUES (1936,
	1608,
	1585,
	1583,
	1,
	'SMspd_ID');
INSERT INTO O_ATTR
	VALUES (1936,
	1608,
	1632,
	'SMspd_ID',
	'',
	'',
	'SMspd_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1938,
	1608,
	'select one clazz related by self->SM_EVT[R525]->SM_SM[R502]->SM_ASM[R517]
                                                                  ->O_OBJ[R519];
if(empty clazz)
  select one clazz related by self->SM_EVT[R525]->SM_SM[R502]->SM_ISM[R517]
                                                                  ->O_OBJ[R518];
end if;
if(not_empty clazz)
  self.setCachedLocalClassName(value: clazz.Name);
  self.localClassName = clazz.Name;
else
  self.localClassName = self.getCachedLocalClassName();
end if;',
	1);
INSERT INTO O_BATTR
	VALUES (1938,
	1608);
INSERT INTO O_ATTR
	VALUES (1938,
	1608,
	1936,
	'localClassName',
	'User_Visible:false',
	'',
	'localClassName',
	0,
	322,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1939,
	1608,
	'select one clazz related by self->SM_EVT[R525]->SM_SM[R502]->SM_ASM[R517]
                                                                  ->O_OBJ[R519];
if(empty clazz)
  select one clazz related by self->SM_EVT[R525]->SM_SM[R502]->SM_ISM[R517]
                                                                  ->O_OBJ[R518];
end if;
if(not_empty clazz)
  self.setCachedLocalClassKL(value: clazz.Key_Lett);
  self.localClassKL = clazz.Key_Lett;
else
  self.localClassKL = self.getCachedLocalClassKL();
end if;',
	1);
INSERT INTO O_BATTR
	VALUES (1939,
	1608);
INSERT INTO O_ATTR
	VALUES (1939,
	1608,
	1938,
	'localClassKL',
	'User_Visible:false',
	'',
	'localClassKL',
	0,
	322,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1940,
	1608,
	'select one evt related by self->SM_EVT[R525];
if(not_empty evt)
  self.setCachedLocalEventMning(value: evt.Mning); 
  self.localEventMning = evt.Mning;
else
  self.localEventMning = self.getCachedLocalEventMning();
end if;',
	1);
INSERT INTO O_BATTR
	VALUES (1940,
	1608);
INSERT INTO O_ATTR
	VALUES (1940,
	1608,
	1939,
	'localEventMning',
	'User_Visible:false',
	'',
	'localEventMning',
	0,
	322,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1608);
INSERT INTO O_OIDA
	VALUES (1632,
	1608,
	0,
	'SM_ID');
INSERT INTO O_OIDA
	VALUES (1633,
	1608,
	0,
	'SMevt_ID');
INSERT INTO O_ID
	VALUES (1,
	1608);
INSERT INTO O_ID
	VALUES (2,
	1608);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1619,
	'Non Local Event',
	526,
	'SM_NLEVT',
	'A non-local event is one that is defined in another state machine.  Non-local events represent entries in SEMs for events that are defined in a super-type but used on transitions in the sub-type.',
	1478);
INSERT INTO O_TFR
	VALUES (1941,
	1619,
	'get_name',
	'',
	322,
	1,
	'select one evt related by self->SM_SEVT[R526]->SM_EVT[R525];
return evt.get_name();
',
	1,
	'',
	1942);
INSERT INTO O_TFR
	VALUES (1942,
	1619,
	'dispose',
	'',
	19,
	1,
	'select one sevt related by self->SM_SEVT[R526];
unrelate self from sevt across R526;
select one evt related by sevt->SM_EVT[R525];
if(not_empty evt)
  evt.dispose();
end if;
select one pevt related by self->SM_PEVT[R527];
if (not_empty pevt)
  unrelate self from pevt across R527;
  pevt.migrateToLocalEvent();
end if;
delete object instance self;
',
	1,
	'',
	1943);
INSERT INTO O_TFR
	VALUES (1944,
	1619,
	'checkIfNoLongerAssigned',
	'',
	19,
	1,
	'/*
Checks to see if this non-local event is no longer assigned anywhere in its
state machine, and if so, disposes of it.  Further, if this event is disposed,
then if it was the last alias of its associated polymorphic event, then that
polymorphic event is migrated back to a local event.
*/

// if this transition has the last assignment (or marked-as-ignored status)
// of the non-local event within this transitions''s state machine 
select many assignments related by self->SM_SEVT[R526]->SM_SEME[R503]->SM_NSTXN[R504];
select many ignores related by self->SM_SEVT[R526]->SM_SEME[R503]->SM_EIGN[R504];
if (empty assignments and empty ignores)
	// destroy the non-local event
	select one event related by self->SM_SEVT[R526]->SM_EVT[R525];
	select one polyEvent related by self->SM_PEVT[R527];
	event.dispose();
	
    polyEvent.migrateToLocalEvent();
end if;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (1945,
	1619,
	'resolveInheritedEvent',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one poly related by self->SM_PEVT[R527];
if(not_empty poly and not Util::isProxy(element:self.convertToInstance()))
  remove = false;
  select one evt related by poly->SM_EVT[R525];
  select one nlevt related by self->SM_SEVT[R526]->SM_EVT[R525];
  select one sm related by nlevt->SM_SM[R502];
  select one clazz related by sm->SM_ASM[R517]->O_OBJ[R519];
  if(empty clazz)
    select one clazz related by sm->SM_ISM[R517]->O_OBJ[R518];
  end if;
  select any superClass from instances of O_OBJ where (selected.Obj_ID == GD::NULL_UNIQUE_ID());
  if(not_empty evt)
    select one superSm related by evt->SM_SM[R502];
    select one superClass related by superSm->SM_ASM[R517]->O_OBJ[R519];
    if(empty superClass)
      select one superClass related by superSm->SM_ISM[R517]->O_OBJ[R518];
    end if;
    if(not_empty superClass)
      if(not superClass.isSupertypeOf(classId:clazz.Obj_ID))
        // the supertype was not resolved, the would indicate
        // that the supertype/subtype association was not fully
        // copied
        remove = true;
      else
       if(not Util::isProxy(element:evt.convertToInstance()))
         // if the event is not a proxy it has already been
         // resolved
         return;
        end if;
        // the supertype was resolved, but may actually be imported
        // in which case we need to trigger imported class resolution
        // and determine if the resolved model class has a matching
        // event
        select one originalClass related by evt->SM_SM[R502]->SM_ISM[R517]
      		->O_OBJ[R518];
        iobjID = clazz.findImportedSupertypeClass(supertypeClassId:originalClass.Obj_ID);
        if(iobjID != GD::NULL_UNIQUE_ID())
          // if the imported class was found
          // and is not the same class
          select any iobj from instances of O_IOBJ where (selected.IObj_ID == iobjID);
          // the subsystems should match for both the imported class
          // which represents the supertype and the subtype class
          // if not we are pasting both classes and the imported
          // class has not been related to the new subsystem yet
          // we do that now.
          select one iobjSS related by iobj->S_SS[R3];
          select one clazzSS related by clazz->S_SS[R2];
          if(iobjSS != clazzSS)
            unrelate iobj from iobjSS across R3;
            relate iobj to clazzSS across R3;
          end if;
          iobj.resolveModelClass();
          select one resolvedClass related by iobj->O_OBJ[R101];
          if(empty resolvedClass)
            remove = true;
          else
            if(originalClass != resolvedClass)
              select many otherNLevts related by sm->SM_EVT[R502]->SM_SEVT[R525]->SM_NLEVT[R526];
              for each otherNLevt in otherNLevts
                select one otherSuperSM related by otherNLevt->SM_PEVT[R527]->SM_EVT[R525]->SM_SM[R502];
                if(superSm == otherSuperSM)
                  select one otherEvt related by otherNLevt->SM_SEVT[R526]->SM_EVT[R525];
                  select any transition related by otherEvt->SM_SEVT[R525]->SM_SEME[R503]
            	      ->SM_NSTXN[R504]->SM_TXN[R507]; 
                  id = transition.locateMatchingPolymorphicEvent(id:otherEvt.SMevt_ID);
                  if(id != GD::NULL_UNIQUE_ID())
                    select any resolvedEvent from instances of SM_EVT where (selected.SMevt_ID == id);
                    if(not_empty resolvedEvent)
                      // if the polymorphic instance does not exist for the
                      // resolved event, create it now
                      select one polyEvt related by resolvedEvent->SM_PEVT[R525];
                      if(empty polyEvt)
                        create object instance polyEvt of SM_PEVT;
                        select one matrixEvent related by resolvedEvent->SM_SEVT[R525];
                        matrixEvent.dispose();
                        relate polyEvt to resolvedEvent across R525;
                      end if;
                      unrelate poly from otherNLevt across R527;
                      relate polyEvt to otherNLevt across R527;
                    else
                      // no polymorphic event could be resolved
                      // delete the event
                      message = ::getMissingInheritedEventMessage(missingInheritedEvent:true);
                      // add message to a list that will display in a warning dialog at
                      // the end of the paste operation
                      Util::addPastedElementToProblemList(elementName:evt.get_name(), message:message);
                      otherNLevt.dispose();
                    end if;
                  end if;                
                end if;
              end for;
            end if;
          end if;
        end if;
      end if;
    else
      // the supertype class was not copied as well
      remove = true;
    end if;
  else
    remove = true;
  end if;
  if(remove)
    // no polymorphic event could be resolved
    // delete remove the event from the transition
    // which will also delete the non-local event
    message = ::getMissingInheritedEventMessage(missingInheritedEvent:true);
    evtName = nlevt.get_name();
    if (not_empty evt)
      evtName = evt.get_name();
    end if;
    // add message to a list that will display in a warning dialog at
    // the end of the paste operation
    Util::addPastedElementToProblemList(elementName:evtName, message:message);
    nlevt.dispose();
  end if;
end if;',
	1,
	'',
	1941);
INSERT INTO O_TFR
	VALUES (1943,
	1619,
	'convertToInstance',
	'Translate:native',
	317,
	1,
	'return this;',
	0,
	'',
	1944);
INSERT INTO O_REF
	VALUES (1619,
	1606,
	0,
	1613,
	1617,
	1620,
	1618,
	1946,
	1947,
	0,
	0,
	'',
	'SEM Event',
	'SMevt_ID',
	'R526');
INSERT INTO O_RATTR
	VALUES (1946,
	1619,
	1604,
	1488,
	1,
	'SMevt_ID');
INSERT INTO O_ATTR
	VALUES (1946,
	1619,
	0,
	'SMevt_ID',
	'',
	'',
	'SMevt_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1619,
	1606,
	0,
	1614,
	1617,
	1620,
	1618,
	1948,
	1949,
	0,
	0,
	'',
	'SEM Event',
	'SM_ID',
	'R526');
INSERT INTO O_RATTR
	VALUES (1948,
	1619,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1948,
	1619,
	1946,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1619,
	1606,
	0,
	1615,
	1617,
	1620,
	1618,
	1950,
	1951,
	0,
	0,
	'',
	'SEM Event',
	'SMspd_ID',
	'R526');
INSERT INTO O_RATTR
	VALUES (1950,
	1619,
	1585,
	1583,
	1,
	'SMspd_ID');
INSERT INTO O_ATTR
	VALUES (1950,
	1619,
	1948,
	'SMspd_ID',
	'',
	'',
	'SMspd_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1619,
	1608,
	0,
	1633,
	1630,
	1634,
	1631,
	1952,
	1953,
	0,
	0,
	'',
	'Polymorphic Event',
	'SMevt_ID',
	'R527');
INSERT INTO O_RATTR
	VALUES (1952,
	1619,
	1604,
	1488,
	1,
	'SMevt_ID');
INSERT INTO O_ATTR
	VALUES (1952,
	1619,
	1950,
	'polySMevt_ID',
	'

',
	'poly',
	'SMevt_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1619,
	1608,
	0,
	1632,
	1630,
	1634,
	1631,
	1954,
	1955,
	0,
	0,
	'',
	'Polymorphic Event',
	'SM_ID',
	'R527');
INSERT INTO O_RATTR
	VALUES (1954,
	1619,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1954,
	1619,
	1952,
	'polySM_ID',
	'

',
	'poly',
	'SM_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1956,
	1619);
INSERT INTO O_BATTR
	VALUES (1956,
	1619);
INSERT INTO O_ATTR
	VALUES (1956,
	1619,
	1954,
	'polySMspd_ID',
	'This attribute is only here for backwards compatibility.

',
	'',
	'polySMspd_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1957,
	1619);
INSERT INTO O_BATTR
	VALUES (1957,
	1619);
INSERT INTO O_ATTR
	VALUES (1957,
	1619,
	1956,
	'Local_Meaning',
	'User_Visible:false
Full Name: Non-Local Event Local Meaning
Description: The local meaning of the non-local event.  The meaning can be overridden in the sup-types state machine.',
	'',
	'Local_Meaning',
	0,
	322,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (1958,
	1619,
	'select one evt related by self->SM_SEVT[R526]->SM_EVT[R525];
if(not_empty evt)
  self.Name = evt.get_name();
else
  self.Name = ::getOrphanedElementName();
end if;',
	1);
INSERT INTO O_BATTR
	VALUES (1958,
	1619);
INSERT INTO O_ATTR
	VALUES (1958,
	1619,
	1957,
	'Name',
	'readonly:true
Persistent:false
Full Name: Name',
	'',
	'Name',
	0,
	322,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1619);
INSERT INTO O_OIDA
	VALUES (1950,
	1619,
	0,
	'SMspd_ID');
INSERT INTO O_OIDA
	VALUES (1948,
	1619,
	0,
	'SM_ID');
INSERT INTO O_OIDA
	VALUES (1946,
	1619,
	0,
	'SMevt_ID');
INSERT INTO O_ID
	VALUES (1,
	1619);
INSERT INTO O_ID
	VALUES (2,
	1619);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1513,
	'No Event Transition',
	509,
	'SM_NETXN',
	'A no event transition is a transition between to states to which no event is currently assigned. ',
	1478);
INSERT INTO O_TFR
	VALUES (1959,
	1513,
	'get_connector_text',
	'''No Event Assigned'' is always returned.
-----------------------------------------------------------------------------------
Bridge:GD
',
	322,
	1,
	'return "No Event Assigned";',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (1960,
	1513,
	'get_name',
	'',
	322,
	1,
	'select one initial_state related by self->SM_STATE[R508];
select one final_state related by self->SM_TXN[R507]->SM_STATE[R506];
if ( not_empty initial_state and not_empty final_state )
  return initial_state.Name + "/" + final_state.Name;
else
  // during import may not be related yet
  return "";
end if;
',
	1,
	'',
	1959);
INSERT INTO O_REF
	VALUES (1513,
	1509,
	0,
	1511,
	1508,
	1514,
	1510,
	1961,
	1962,
	0,
	0,
	'',
	'Transition',
	'Trans_ID',
	'R507');
INSERT INTO O_RATTR
	VALUES (1961,
	1513,
	1511,
	1509,
	1,
	'Trans_ID');
INSERT INTO O_ATTR
	VALUES (1961,
	1513,
	0,
	'Trans_ID',
	'

',
	'',
	'Trans_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1513,
	1492,
	0,
	1521,
	1518,
	1519,
	1520,
	1963,
	1964,
	0,
	0,
	'',
	'State Machine State',
	'SM_ID',
	'R508');
INSERT INTO O_REF
	VALUES (1513,
	1509,
	0,
	1512,
	1508,
	1514,
	1510,
	1963,
	1965,
	1964,
	0,
	'',
	'Transition',
	'SM_ID',
	'R507');
INSERT INTO O_RATTR
	VALUES (1963,
	1513,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1963,
	1513,
	1961,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1513,
	1492,
	0,
	1522,
	1518,
	1519,
	1520,
	1966,
	1967,
	0,
	0,
	'',
	'State Machine State',
	'SMstt_ID',
	'R508');
INSERT INTO O_RATTR
	VALUES (1966,
	1513,
	1522,
	1492,
	1,
	'SMstt_ID');
INSERT INTO O_ATTR
	VALUES (1966,
	1513,
	1963,
	'SMstt_ID',
	'',
	'',
	'SMstt_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (1968,
	1513);
INSERT INTO O_BATTR
	VALUES (1968,
	1513);
INSERT INTO O_ATTR
	VALUES (1968,
	1513,
	1966,
	'SMspd_ID',
	'

',
	'',
	'SMspd_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1513);
INSERT INTO O_OIDA
	VALUES (1963,
	1513,
	0,
	'SM_ID');
INSERT INTO O_OIDA
	VALUES (1961,
	1513,
	0,
	'Trans_ID');
INSERT INTO O_ID
	VALUES (1,
	1513);
INSERT INTO O_ID
	VALUES (2,
	1513);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1506,
	'New State Transition',
	505,
	'SM_NSTXN',
	'A new state transition is an entry in the state event matrix (SEM) that  represents a transition from one state to another upon the receipt of an event while in a particular state.',
	1478);
INSERT INTO O_TFR
	VALUES (1969,
	1506,
	'get_connector_text',
	'Gets the text for the Transition. To do this it calls State Machine
Event::get_event_text for the event associated with the Transition.
-----------------------------------------------------------------------------------
Bridge:GD
',
	322,
	1,
	'select one signalEvt related by self->SM_SEME[R504]->
                                                  SM_SEVT[R503]->SM_SGEVT[R526];
if not_empty signalEvt
  return signalEvt.get_event_text();
else
  select one evt related by self->SM_SEME[R504]->SM_SEVT[R503]->SM_EVT[R525];
  if (not_empty evt)
    return evt.get_event_text();
  else
    return ::getOrphanedElementName();
  end if;
end if;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (1970,
	1506,
	'get_name',
	'',
	322,
	1,
	'select one signalEvt related by self->SM_SEME[R504]->
                                                  SM_SEVT[R503]->SM_SGEVT[R526];
if not_empty signalEvt
  return signalEvt.get_name();
else
  select one evt related by self->SM_SEME[R504]->SM_SEVT[R503]->SM_EVT[R525];
  if (not_empty evt)
    return evt.get_name();
  else
    return ::getOrphanedElementName();
  end if;
end if;',
	1,
	'',
	1969);
INSERT INTO O_REF
	VALUES (1506,
	1509,
	0,
	1511,
	1508,
	1517,
	1510,
	1971,
	1972,
	0,
	0,
	'',
	'Transition',
	'Trans_ID',
	'R507');
INSERT INTO O_RATTR
	VALUES (1971,
	1506,
	1511,
	1509,
	1,
	'Trans_ID');
INSERT INTO O_ATTR
	VALUES (1971,
	1506,
	0,
	'Trans_ID',
	'

',
	'',
	'Trans_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1506,
	1496,
	0,
	1500,
	1495,
	1507,
	1497,
	1973,
	1974,
	0,
	0,
	'',
	'State Event Matrix Entry',
	'SM_ID',
	'R504');
INSERT INTO O_REF
	VALUES (1506,
	1509,
	0,
	1512,
	1508,
	1517,
	1510,
	1973,
	1975,
	1974,
	0,
	'',
	'Transition',
	'SM_ID',
	'R507');
INSERT INTO O_RATTR
	VALUES (1973,
	1506,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1973,
	1506,
	1971,
	'SM_ID',
	'

',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1506,
	1496,
	0,
	1501,
	1495,
	1507,
	1497,
	1976,
	1977,
	0,
	0,
	'',
	'State Event Matrix Entry',
	'SMstt_ID',
	'R504');
INSERT INTO O_RATTR
	VALUES (1976,
	1506,
	1522,
	1492,
	1,
	'SMstt_ID');
INSERT INTO O_ATTR
	VALUES (1976,
	1506,
	1973,
	'SMstt_ID',
	'

',
	'',
	'SMstt_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1506,
	1496,
	0,
	1499,
	1495,
	1507,
	1497,
	1978,
	1979,
	0,
	0,
	'',
	'State Event Matrix Entry',
	'SMevt_ID',
	'R504');
INSERT INTO O_RATTR
	VALUES (1978,
	1506,
	1604,
	1488,
	1,
	'SMevt_ID');
INSERT INTO O_ATTR
	VALUES (1978,
	1506,
	1976,
	'SMevt_ID',
	'

',
	'',
	'SMevt_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1506,
	1496,
	0,
	1498,
	1495,
	1507,
	1497,
	1980,
	1981,
	0,
	0,
	'',
	'State Event Matrix Entry',
	'SMspd_ID',
	'R504');
INSERT INTO O_RATTR
	VALUES (1980,
	1506,
	1585,
	1583,
	1,
	'SMspd_ID');
INSERT INTO O_ATTR
	VALUES (1980,
	1506,
	1978,
	'SMspd_ID',
	'

',
	'',
	'SMspd_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1506);
INSERT INTO O_OIDA
	VALUES (1978,
	1506,
	0,
	'SMevt_ID');
INSERT INTO O_OIDA
	VALUES (1976,
	1506,
	0,
	'SMstt_ID');
INSERT INTO O_OIDA
	VALUES (1980,
	1506,
	0,
	'SMspd_ID');
INSERT INTO O_OIDA
	VALUES (1973,
	1506,
	0,
	'SM_ID');
INSERT INTO O_ID
	VALUES (1,
	1506);
INSERT INTO O_OIDA
	VALUES (1973,
	1506,
	1,
	'SM_ID');
INSERT INTO O_OIDA
	VALUES (1971,
	1506,
	1,
	'Trans_ID');
INSERT INTO O_ID
	VALUES (2,
	1506);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1534,
	'Moore State Machine',
	511,
	'SM_MOORE',
	'A Moore state machine is one in which actions (SM_ACT) are assigned to states (SM_STATE).  The state action is executed upon entry into the state.',
	1478);
INSERT INTO O_TFR
	VALUES (1982,
	1534,
	'dispose',
	'Dispose of this Moore State Machine',
	19,
	1,
	'select many actions related by self->SM_MOAH[R511]->SM_AH[R513]->SM_ACT[R514];
for each action in actions
  action.dispose();
end for;
select one sm related by self->SM_SM[R510];
if (not_empty sm)
  unrelate self from sm across R510;
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (1534,
	565,
	0,
	564,
	1530,
	1535,
	1531,
	1538,
	1983,
	0,
	0,
	'',
	'State Machine',
	'SM_ID',
	'R510');
INSERT INTO O_RATTR
	VALUES (1538,
	1534,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1538,
	1534,
	0,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1534);
INSERT INTO O_OIDA
	VALUES (1538,
	1534,
	0,
	'SM_ID');
INSERT INTO O_ID
	VALUES (1,
	1534);
INSERT INTO O_ID
	VALUES (2,
	1534);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1540,
	'Moore Action Home',
	513,
	'SM_MOAH',
	'A Moore action home represents the home for a Moore action.',
	1478);
INSERT INTO O_TFR
	VALUES (1984,
	1540,
	'dispose',
	'Dispose this Moore Action Home. 
',
	19,
	1,
	'// Note: let SM_ACT.dispose call this
select one moore related by self->SM_MOORE[R511];
select one state related by self->SM_STATE[R511];
unrelate moore from state across R511 using self;
select one ah related by self->SM_AH[R513];
unrelate self from ah across R513;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (1540,
	1549,
	0,
	1551,
	1548,
	1553,
	1550,
	1985,
	1986,
	0,
	0,
	'',
	'Action Home',
	'Act_ID',
	'R513');
INSERT INTO O_RATTR
	VALUES (1985,
	1540,
	1562,
	1559,
	1,
	'Act_ID');
INSERT INTO O_ATTR
	VALUES (1985,
	1540,
	0,
	'Act_ID',
	'',
	'',
	'Act_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1540,
	1549,
	0,
	1552,
	1548,
	1553,
	1550,
	1987,
	1988,
	0,
	0,
	'',
	'Action Home',
	'SM_ID',
	'R513');
INSERT INTO O_REF
	VALUES (1540,
	1534,
	0,
	1538,
	1536,
	1541,
	1537,
	1987,
	1989,
	1988,
	0,
	'',
	'Moore State Machine',
	'SM_ID',
	'R511');
INSERT INTO O_REF
	VALUES (1540,
	1492,
	0,
	1521,
	1536,
	1541,
	1539,
	1987,
	1990,
	1989,
	0,
	'',
	'State Machine State',
	'SM_ID',
	'R511');
INSERT INTO O_RATTR
	VALUES (1987,
	1540,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1987,
	1540,
	1985,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1540,
	1492,
	0,
	1522,
	1536,
	1541,
	1539,
	1991,
	1992,
	0,
	0,
	'',
	'State Machine State',
	'SMstt_ID',
	'R511');
INSERT INTO O_RATTR
	VALUES (1991,
	1540,
	1522,
	1492,
	1,
	'SMstt_ID');
INSERT INTO O_ATTR
	VALUES (1991,
	1540,
	1987,
	'SMstt_ID',
	'',
	'',
	'SMstt_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1540);
INSERT INTO O_OIDA
	VALUES (1987,
	1540,
	0,
	'SM_ID');
INSERT INTO O_OIDA
	VALUES (1991,
	1540,
	0,
	'SMstt_ID');
INSERT INTO O_ID
	VALUES (1,
	1540);
INSERT INTO O_OIDA
	VALUES (1985,
	1540,
	1,
	'Act_ID');
INSERT INTO O_OIDA
	VALUES (1987,
	1540,
	1,
	'SM_ID');
INSERT INTO O_ID
	VALUES (2,
	1540);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1532,
	'Mealy State Machine',
	512,
	'SM_MEALY',
	'A Mealy state machine is one in which actions (SM_ACT) are assigned to transitions (SM_TXN).  The action is executed during the transition from one state to another.  Support for mealy state machines is currently absent from the tool.',
	1478);
INSERT INTO O_REF
	VALUES (1532,
	565,
	0,
	564,
	1530,
	1533,
	1531,
	1544,
	1993,
	0,
	0,
	'',
	'State Machine',
	'SM_ID',
	'R510');
INSERT INTO O_RATTR
	VALUES (1544,
	1532,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1544,
	1532,
	0,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1532);
INSERT INTO O_OIDA
	VALUES (1544,
	1532,
	0,
	'SM_ID');
INSERT INTO O_ID
	VALUES (1,
	1532);
INSERT INTO O_ID
	VALUES (2,
	1532);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1546,
	'Mealy Action Home',
	514,
	'SM_MEAH',
	'A Mealy action home represents the home for a Mealy action.',
	1478);
INSERT INTO O_TFR
	VALUES (1994,
	1546,
	'dispose',
	'',
	19,
	1,
	'// Note: let SM_ACT.dispose call this
select one mealy related by self->SM_MEALY[R512];
select one trans related by self->SM_TXN[R512];
unrelate mealy from trans across R512 using self;
select one ah related by self->SM_AH[R513];
unrelate self from ah across R513;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (1546,
	1549,
	0,
	1551,
	1548,
	1554,
	1550,
	1995,
	1996,
	0,
	0,
	'',
	'Action Home',
	'Act_ID',
	'R513');
INSERT INTO O_RATTR
	VALUES (1995,
	1546,
	1562,
	1559,
	1,
	'Act_ID');
INSERT INTO O_ATTR
	VALUES (1995,
	1546,
	0,
	'Act_ID',
	'',
	'',
	'Act_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1546,
	1549,
	0,
	1552,
	1548,
	1554,
	1550,
	1997,
	1998,
	0,
	0,
	'',
	'Action Home',
	'SM_ID',
	'R513');
INSERT INTO O_REF
	VALUES (1546,
	1532,
	0,
	1544,
	1542,
	1547,
	1543,
	1997,
	1999,
	1998,
	0,
	'',
	'Mealy State Machine',
	'SM_ID',
	'R512');
INSERT INTO O_REF
	VALUES (1546,
	1509,
	0,
	1512,
	1542,
	1547,
	1545,
	1997,
	2000,
	1999,
	0,
	'',
	'Transition',
	'SM_ID',
	'R512');
INSERT INTO O_RATTR
	VALUES (1997,
	1546,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1997,
	1546,
	1995,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1546,
	1509,
	0,
	1511,
	1542,
	1547,
	1545,
	2001,
	2002,
	0,
	0,
	'',
	'Transition',
	'Trans_ID',
	'R512');
INSERT INTO O_RATTR
	VALUES (2001,
	1546,
	1511,
	1509,
	1,
	'Trans_ID');
INSERT INTO O_ATTR
	VALUES (2001,
	1546,
	1997,
	'Trans_ID',
	'',
	'',
	'Trans_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1546);
INSERT INTO O_OIDA
	VALUES (2001,
	1546,
	0,
	'Trans_ID');
INSERT INTO O_OIDA
	VALUES (1997,
	1546,
	0,
	'SM_ID');
INSERT INTO O_ID
	VALUES (1,
	1546);
INSERT INTO O_OIDA
	VALUES (1997,
	1546,
	1,
	'SM_ID');
INSERT INTO O_OIDA
	VALUES (1995,
	1546,
	1,
	'Act_ID');
INSERT INTO O_ID
	VALUES (2,
	1546);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1621,
	'Local Event',
	527,
	'SM_LEVT',
	'A local event is one that is defined in the state machine.  Contrast this to a non-local event which is defined in a different state machine (that of the super-type) than the one in which it is used.',
	1478);
INSERT INTO O_TFR
	VALUES (2003,
	1621,
	'dispose',
	'Dispose this SM_LEVT.
',
	19,
	1,
	'select one sevt related by self->SM_SEVT[R526];
unrelate self from sevt across R526;
select one crtxn related by self->SM_CRTXN[R509];
if (not_empty crtxn)
  unrelate self from crtxn across R509;
end if;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (2004,
	1621,
	'get_name',
	'Return the meaning of this local event.',
	322,
	1,
	'select one evt related by self->SM_SEVT[R526]->SM_EVT[R525];
if (empty evt)
  return ::getOrphanedElementName();
else
  return evt.get_name();
end if;
',
	1,
	'',
	2003);
INSERT INTO O_REF
	VALUES (1621,
	1606,
	0,
	1613,
	1617,
	1622,
	1618,
	1629,
	2005,
	0,
	0,
	'',
	'SEM Event',
	'SMevt_ID',
	'R526');
INSERT INTO O_RATTR
	VALUES (1629,
	1621,
	1604,
	1488,
	1,
	'SMevt_ID');
INSERT INTO O_ATTR
	VALUES (1629,
	1621,
	0,
	'SMevt_ID',
	'',
	'',
	'SMevt_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1621,
	1606,
	0,
	1614,
	1617,
	1622,
	1618,
	1628,
	2006,
	0,
	0,
	'',
	'SEM Event',
	'SM_ID',
	'R526');
INSERT INTO O_RATTR
	VALUES (1628,
	1621,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1628,
	1621,
	1629,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1621,
	1606,
	0,
	1615,
	1617,
	1622,
	1618,
	2007,
	2008,
	0,
	0,
	'',
	'SEM Event',
	'SMspd_ID',
	'R526');
INSERT INTO O_RATTR
	VALUES (2007,
	1621,
	1585,
	1583,
	1,
	'SMspd_ID');
INSERT INTO O_ATTR
	VALUES (2007,
	1621,
	1628,
	'SMspd_ID',
	'',
	'',
	'SMspd_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1621);
INSERT INTO O_OIDA
	VALUES (1628,
	1621,
	0,
	'SM_ID');
INSERT INTO O_OIDA
	VALUES (1629,
	1621,
	0,
	'SMevt_ID');
INSERT INTO O_ID
	VALUES (1,
	1621);
INSERT INTO O_ID
	VALUES (2,
	1621);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1568,
	'Instance State Machine',
	520,
	'SM_ISM',
	'An instance state machine is a state machine for an instance of a class.  Each instance of a class can be thought of as executing its own private version of the state machine.  This is in contrast to an assigner state machine (SM_ASM) which is a state machine for the entire class.',
	1478);
INSERT INTO O_TFR
	VALUES (2009,
	1568,
	'get_name',
	'This operation returns the name of the class it belongs to.
----------------------------------------------------------------------------------------------------------
Bridge:GD,TEXT
',
	322,
	1,
	'select one obj related by self->O_OBJ[R518];
if ( not_empty obj )
  return obj.Name;
else
  return ::getOrphanedElementName();
end if;',
	1,
	'',
	2010);
INSERT INTO O_TFR
	VALUES (2011,
	1568,
	'newState',
	'',
	19,
	1,
	'select one sm related by self->SM_SM[R517];
sm.newState();

',
	1,
	'',
	2012);
INSERT INTO O_TFR
	VALUES (2012,
	1568,
	'newEvent',
	'',
	19,
	1,
	'select one sm related by self->SM_SM[R517];
sm.newEvent();

',
	1,
	'',
	2013);
INSERT INTO O_TFR
	VALUES (2014,
	1568,
	'newTransition',
	'',
	316,
	1,
	'select one sm related by self->SM_SM[R517];
return sm.newTransition(from:param.from, to:param.to);',
	1,
	'',
	2011);
INSERT INTO O_TPARM
	VALUES (2015,
	2014,
	'from',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2016,
	2014,
	'to',
	296,
	0,
	'',
	2017,
	'');
INSERT INTO O_TPARM
	VALUES (2017,
	2014,
	'fromTypeIsImportedClass',
	316,
	0,
	'',
	2015,
	'');
INSERT INTO O_TPARM
	VALUES (2018,
	2014,
	'toTypeIsImportedClass',
	316,
	0,
	'',
	2016,
	'');
INSERT INTO O_TFR
	VALUES (2013,
	1568,
	'newCreationTransition',
	'',
	316,
	1,
	'select one sm related by self->SM_SM[R517];
return sm.newCreationTransition(from:param.from, to:param.to);',
	1,
	'',
	2019);
INSERT INTO O_TPARM
	VALUES (2020,
	2013,
	'from',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2021,
	2013,
	'to',
	296,
	0,
	'',
	2022,
	'');
INSERT INTO O_TPARM
	VALUES (2022,
	2013,
	'fromTypeIsImportedClass',
	316,
	0,
	'',
	2020,
	'');
INSERT INTO O_TPARM
	VALUES (2023,
	2013,
	'toTypeIsImportedClass',
	316,
	0,
	'',
	2021,
	'');
INSERT INTO O_TFR
	VALUES (2019,
	1568,
	'get_ooa_id',
	'The ooa_id of a State Machine is it''''s SM_ID.
-----------------------------------------------------------------------------------
Bridge:GD',
	296,
	1,
	'return self.SM_ID;',
	1,
	'',
	2009);
INSERT INTO O_TFR
	VALUES (2010,
	1568,
	'dispose',
	'',
	19,
	1,
	'select one sm related by self->SM_SM[R517];
sm.dispose();',
	1,
	'',
	2024);
INSERT INTO O_TFR
	VALUES (2025,
	1568,
	'pasteStateMachineState',
	'',
	19,
	1,
	'select one sm related by self->SM_SM[R517];
sm.pasteStateMachineState(id:param.id);',
	1,
	'',
	2026);
INSERT INTO O_TPARM
	VALUES (2027,
	2025,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2024,
	1568,
	'convertToInstance',
	'// return an instance representation of self
Translate:native',
	317,
	1,
	'return this;',
	0,
	'',
	0);
INSERT INTO O_TFR
	VALUES (2028,
	1568,
	'pasteTransition',
	'',
	19,
	1,
	'select one sm related by self->SM_SM[R517];
sm.pasteTransition(id:param.id);',
	1,
	'',
	2025);
INSERT INTO O_TPARM
	VALUES (2029,
	2028,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2026,
	1568,
	'pasteCreationTransition',
	'',
	19,
	1,
	'select one sm related by self->SM_SM[R517];
sm.pasteTransition(id:param.id);',
	1,
	'',
	2014);
INSERT INTO O_TPARM
	VALUES (2030,
	2026,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2031,
	1568,
	'getStateCount',
	'',
	298,
	1,
	'select many states related by self->SM_SM[R517]->SM_STATE[R501];
return cardinality states;',
	1,
	'',
	2028);
INSERT INTO O_TFR
	VALUES (2032,
	1568,
	'getStateId',
	'',
	296,
	1,
	'id = GD::NULL_UNIQUE_ID();
select many states related by self->SM_SM[R517]->SM_STATE[R501];
// We''re preincrementing the index
count = -1;
for each state in states
  if (not_empty state)
      count = count+1;
  end if;
  if (count == param.index)
      return state.get_ooa_id();  
  end if;
end for;
return id;',
	1,
	'',
	2031);
INSERT INTO O_TPARM
	VALUES (2033,
	2032,
	'index',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2034,
	1568,
	'pasteStateMachineEvent',
	'',
	19,
	1,
	'select one sm related by self->SM_SM[R517];
sm.pasteStateMachineEvent(id:param.id);',
	1,
	'',
	2032);
INSERT INTO O_TPARM
	VALUES (2035,
	2034,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (1568,
	565,
	0,
	564,
	1566,
	1569,
	1567,
	2036,
	2037,
	0,
	0,
	'',
	'State Machine',
	'SM_ID',
	'R517');
INSERT INTO O_RATTR
	VALUES (2036,
	1568,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (2036,
	1568,
	0,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1568,
	30,
	0,
	150,
	1572,
	1573,
	1574,
	2038,
	2039,
	0,
	0,
	'',
	'Model Class',
	'Obj_ID',
	'R518');
INSERT INTO O_RATTR
	VALUES (2038,
	1568,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2038,
	1568,
	2036,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1568);
INSERT INTO O_OIDA
	VALUES (2036,
	1568,
	0,
	'SM_ID');
INSERT INTO O_ID
	VALUES (1,
	1568);
INSERT INTO O_ID
	VALUES (2,
	1568);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1583,
	'Event Supplemental Data',
	518,
	'SM_SUPDT',
	'Each event (SM_EVT) may carry supplemental event data defined by state machine event data items (SM_EVTDI).  The supplemental data items for the event are defined by instances of supplemental data items (SM_SDI).

Events now locate their data across simple association R532.

Deprecated:true',
	1478);
INSERT INTO O_TFR
	VALUES (2040,
	1583,
	'dispose',
	'Dispose of this SM_SUPDT.
',
	19,
	1,
	'select many states related by self->SM_STATE[R521];
for each state in states
  unrelate self from state across R521;
end for;
select one sm related by self->SM_SM[R523];
if(not_empty sm)
  unrelate self from sm across R523;
end if;
select many sdis related by self->SM_SDI[ R522];
for each sdi in sdis
  sdi.dispose();
end for;
select many events related by self->SM_EVT[R520];
for each event in events
  unrelate self from event across R520;
end for;
delete object instance self;


',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (2041,
	1583,
	'get_name',
	'',
	322,
	1,
	'select many edi_set related by self->SM_EVTDI[R522];
if ( self.Non_Local )
  select any nlevt related by self->SM_EVT[R520]->SM_SEVT[R525]->SM_NLEVT[R526];
  select one pevtdi related by nlevt->SM_PEVT[R527]->SM_EVT[R525]->SM_SUPDT[R520];;
  select many edi_set related by pevtdi->SM_EVTDI[R522];
end if;
result = "(";
first = true;
for each edi in edi_set
  if ( not first )
    result = result + ",";
  end if;
  result = result + edi.Name;
  first = false;
end for;
return result + ")";
',
	1,
	'',
	2042);
INSERT INTO O_TFR
	VALUES (2042,
	1583,
	'findWithChangedData',
	'',
	296,
	1,
	'select many my_sdi related by self->SM_SDI[R522];
select many other_supdt_set related by self->SM_SM[R523]->SM_SUPDT[R523]
    where selected.SMspd_ID != self.SMspd_ID;
if ( param.addToSet )
  for each other_supdt in other_supdt_set
    select many other_sdi_set related by other_supdt->SM_SDI[R522];
    if ( cardinality other_sdi_set - 1 == cardinality my_sdi )
      found_all = true;
      for each other_sdi in other_sdi_set
        found = false;
        for each sdi in my_sdi
          if ( other_sdi.SMedi_ID == sdi.SMedi_ID )
            found = true;
            break;
          end if;
        end for;  // for each sdi 
        if ( not found )
          if ( other_sdi.SMedi_ID != param.data )
            found_all = false;
            break;
          end if;
        end if;
      end for;  // for each other_sdi
      if ( found_all )
        return other_supdt.SMspd_ID;
      end if;
    end if;
  end for;
else
  for each other_supdt in other_supdt_set
    select many other_sdi_set related by other_supdt->SM_SDI[R522];
    if ( cardinality other_sdi_set + 1 == cardinality my_sdi )
      found_all = true;
      for each sdi in my_sdi
        found = false;
        for each other_sdi in other_sdi_set
          if ( other_sdi.SMedi_ID == sdi.SMedi_ID )
            found = true;
            break;
          end if;
        end for;  // for each other_sdi
        if ( not found )
          if ( sdi.SMedi_ID != param.data )
            found_all = false;
            break;
          end if;
        end if;
      end for;  // for each sdi
      if ( found_all )
        return other_supdt.SMspd_ID;
      end if;
    end if;
  end for;
end if;
return GD::NULL_UNIQUE_ID();
',
	1,
	'',
	2040);
INSERT INTO O_TPARM
	VALUES (2043,
	2042,
	'data',
	296,
	0,
	'',
	2044,
	'');
INSERT INTO O_TPARM
	VALUES (2044,
	2042,
	'addToSet',
	316,
	0,
	'',
	0,
	'');
INSERT INTO O_NBATTR
	VALUES (1585,
	1583);
INSERT INTO O_BATTR
	VALUES (1585,
	1583);
INSERT INTO O_ATTR
	VALUES (1585,
	1583,
	0,
	'SMspd_ID',
	'Full Name: Event Supplemental Data Identifier',
	'',
	'SMspd_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_REF
	VALUES (1583,
	565,
	0,
	564,
	1595,
	1596,
	1597,
	1586,
	2045,
	0,
	0,
	'',
	'State Machine',
	'SM_ID',
	'R523');
INSERT INTO O_RATTR
	VALUES (1586,
	1583,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1586,
	1583,
	1585,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (2046,
	1583,
	'select any nlevt related by self->SM_EVT[R520]->SM_SEVT[R525]->SM_NLEVT[R526];
self.Non_Local = not_empty nlevt;
',
	1);
INSERT INTO O_BATTR
	VALUES (2046,
	1583);
INSERT INTO O_ATTR
	VALUES (2046,
	1583,
	1586,
	'Non_Local',
	'Full Name: Non local event indicator
Description: This attribute captures that the event supplemental data is for a non-local event.
User_Visible:false',
	'',
	'Non_Local',
	0,
	316,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1583);
INSERT INTO O_OIDA
	VALUES (1585,
	1583,
	0,
	'SMspd_ID');
INSERT INTO O_OIDA
	VALUES (1586,
	1583,
	0,
	'SM_ID');
INSERT INTO O_ID
	VALUES (1,
	1583);
INSERT INTO O_ID
	VALUES (2,
	1583);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1502,
	'Event Ignored',
	506,
	'SM_EIGN',
	'An event ignored is an entry in the state event matrix (SEM) specifying that the event (SM_EVT) is ignored when received in the state SM_STATE.  When the analyst asserts that the event is ignored he is saying that the event is expected, but the state machine should not transition on the event, but ignore it.  ',
	1478);
INSERT INTO O_TFR
	VALUES (2047,
	1502,
	'get_name',
	'Creates a string containing a descriptive name for the instance.',
	322,
	1,
	'return "Event Ignored";',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (2048,
	1502,
	'get_label',
	'',
	322,
	1,
	'select one seme related by self->SM_SEME[R504];
if not_empty seme
  select one event related by seme->SM_SEVT[R503]->SM_EVT[R525];
  select one state related by seme->SM_STATE[R503];
  if ( not_empty state and not_empty event )
    return event.Drv_Lbl + "/" + state.Name;
  else
    // during import may not be related yet
    return "";
  end if;
else
  // during import may not be related yet
  return "";
end if;',
	1,
	'',
	2047);
INSERT INTO O_REF
	VALUES (1502,
	1496,
	0,
	1501,
	1495,
	1503,
	1497,
	2049,
	2050,
	0,
	0,
	'',
	'State Event Matrix Entry',
	'SMstt_ID',
	'R504');
INSERT INTO O_RATTR
	VALUES (2049,
	1502,
	1522,
	1492,
	1,
	'SMstt_ID');
INSERT INTO O_ATTR
	VALUES (2049,
	1502,
	0,
	'SMstt_ID',
	'

',
	'',
	'SMstt_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1502,
	1496,
	0,
	1499,
	1495,
	1503,
	1497,
	2051,
	2052,
	0,
	0,
	'',
	'State Event Matrix Entry',
	'SMevt_ID',
	'R504');
INSERT INTO O_RATTR
	VALUES (2051,
	1502,
	1604,
	1488,
	1,
	'SMevt_ID');
INSERT INTO O_ATTR
	VALUES (2051,
	1502,
	2049,
	'SMevt_ID',
	'

',
	'',
	'SMevt_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1502,
	1496,
	0,
	1500,
	1495,
	1503,
	1497,
	2053,
	2054,
	0,
	0,
	'',
	'State Event Matrix Entry',
	'SM_ID',
	'R504');
INSERT INTO O_RATTR
	VALUES (2053,
	1502,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (2053,
	1502,
	2051,
	'SM_ID',
	'

',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1502,
	1496,
	0,
	1498,
	1495,
	1503,
	1497,
	2055,
	2056,
	0,
	0,
	'',
	'State Event Matrix Entry',
	'SMspd_ID',
	'R504');
INSERT INTO O_RATTR
	VALUES (2055,
	1502,
	1585,
	1583,
	1,
	'SMspd_ID');
INSERT INTO O_ATTR
	VALUES (2055,
	1502,
	2053,
	'SMspd_ID',
	'

',
	'',
	'SMspd_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2057,
	1502);
INSERT INTO O_BATTR
	VALUES (2057,
	1502);
INSERT INTO O_ATTR
	VALUES (2057,
	1502,
	2055,
	'Descrip',
	'Full Name: Description
Description: An explanation of why the event can be ignored if received in this state.',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1502);
INSERT INTO O_OIDA
	VALUES (2051,
	1502,
	0,
	'SMevt_ID');
INSERT INTO O_OIDA
	VALUES (2053,
	1502,
	0,
	'SM_ID');
INSERT INTO O_OIDA
	VALUES (2055,
	1502,
	0,
	'SMspd_ID');
INSERT INTO O_OIDA
	VALUES (2049,
	1502,
	0,
	'SMstt_ID');
INSERT INTO O_ID
	VALUES (1,
	1502);
INSERT INTO O_ID
	VALUES (2,
	1502);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1515,
	'Creation Transition',
	510,
	'SM_CRTXN',
	'A creation transition is a transition into a state from no other state.  ',
	1478);
INSERT INTO O_TFR
	VALUES (2058,
	1515,
	'get_connector_text',
	'Gets the text for the Transition. If an Event is associated with this
Transition, it calls State Machine Event::get_event_text on that Event
associated with the Transition. If no Event is associated, ''No Event
Assigned'' is returned.
-----------------------------------------------------------------------------------
Bridge:GD
',
	322,
	1,
	'// Creation Transition.get_connector_text()
result = "";
if (param.at == End::Middle)
  select one evt related by self->SM_LEVT[R509]->SM_SEVT[R526]->SM_EVT[R525];
  if (not_empty evt)
    result = evt.get_event_text();
  else
    result = "No Event Assigned";
  end if;
  select one action related by self->SM_TXN[R507]->SM_TAH[R530]->
                                                      SM_AH[R513]->SM_ACT[R514];
  if not_empty action and action.Action_Semantics != ""
    result = result + "/";
    if PREF::getBoolean(name:"bridgepoint_prefs_show_transition_actions")
      result = result + GD::newline() + action.Action_Semantics;
    else
      result = result + "...";
    end if;
  end if;
end if;
return result;',
	1,
	'',
	2059);
INSERT INTO O_TPARM
	VALUES (2060,
	2058,
	'OOA_ID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2061,
	2058,
	'OOA_TypeIsImportedClass',
	316,
	0,
	'',
	2060,
	'');
INSERT INTO O_TPARM
	VALUES (2062,
	2058,
	'at',
	880,
	0,
	'',
	2061,
	'');
INSERT INTO O_TPARM
	VALUES (2063,
	2058,
	'parent_ID',
	296,
	0,
	'',
	2062,
	'');
INSERT INTO O_TFR
	VALUES (2064,
	1515,
	'get_style',
	'A Creation Transition has a filled circle at the end and an arrow at the
start (notice that it is back to front).
-----------------------------------------------------------------------------------
Bridge:GD',
	784,
	1,
	'if (param.at == End::End)
  return Style::FilledCircle;
elif (param.at == End::Start)
  return Style::OpenArrow;
else
  return Style::None;
end if;',
	1,
	'',
	2065);
INSERT INTO O_TPARM
	VALUES (2066,
	2064,
	'at',
	880,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2065,
	1515,
	'get_ooa_id',
	'The ooa_id of a Creation Transition is its Trans_ID
-----------------------------------------------------------
Bridge:GD',
	296,
	1,
	'return self.Trans_ID;',
	1,
	'',
	2067);
INSERT INTO O_TFR
	VALUES (2059,
	1515,
	'actionFilter',
	'',
	316,
	1,
	'select one trans related by self->SM_TXN[R507];
return trans.actionFilter(name:param.name, value:param.value);',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (2068,
	2059,
	'name',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2069,
	2059,
	'value',
	322,
	0,
	'',
	2068,
	'');
INSERT INTO O_TFR
	VALUES (2067,
	1515,
	'get_name',
	'',
	322,
	1,
	'// Creation Transition.get_name()
result = "No Event Assigned";
select one evt related by self->SM_LEVT[R509]->SM_SEVT[R526]->SM_EVT[R525];
if not_empty evt
  result = evt.get_name();
end if;
result = result + " to creation state";
select one destState related by self->SM_TXN[R507]->SM_STATE[R506];
if not_empty destState
  result = result + ": " + destState.Name;
end if;
return result;',
	1,
	'',
	2058);
INSERT INTO O_TFR
	VALUES (2070,
	1515,
	'mergeStateMachineEventCreationEvent',
	'',
	316,
	1,
	'select one transition related by self->SM_TXN[R507];
return 
    transition.mergeStateMachineEventAssignedLocalEvent(event_id:param.eventId);',
	1,
	'',
	2064);
INSERT INTO O_TPARM
	VALUES (2071,
	2070,
	'eventId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2072,
	1515,
	'getDescription',
	'',
	322,
	1,
	'select one transition related by self->SM_TXN[R507];
return transition.getDescription();',
	1,
	'',
	2070);
INSERT INTO O_REF
	VALUES (1515,
	1509,
	0,
	1511,
	1508,
	1516,
	1510,
	2073,
	2074,
	0,
	0,
	'',
	'Transition',
	'Trans_ID',
	'R507');
INSERT INTO O_RATTR
	VALUES (2073,
	1515,
	1511,
	1509,
	1,
	'Trans_ID');
INSERT INTO O_ATTR
	VALUES (2073,
	1515,
	0,
	'Trans_ID',
	'

',
	'',
	'Trans_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1515,
	1509,
	0,
	1512,
	1508,
	1516,
	1510,
	2075,
	2076,
	0,
	0,
	'',
	'Transition',
	'SM_ID',
	'R507');
INSERT INTO O_REF
	VALUES (1515,
	1621,
	0,
	1628,
	1625,
	1626,
	1627,
	2075,
	2077,
	2076,
	0,
	'',
	'Local Event',
	'SM_ID',
	'R509.''is assigned to''');
INSERT INTO O_RATTR
	VALUES (2075,
	1515,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (2075,
	1515,
	2073,
	'SM_ID',
	'

',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1515,
	1621,
	0,
	1629,
	1625,
	1626,
	1627,
	2078,
	2079,
	0,
	0,
	'',
	'Local Event',
	'SMevt_ID',
	'R509.''is assigned to''');
INSERT INTO O_RATTR
	VALUES (2078,
	1515,
	1604,
	1488,
	1,
	'SMevt_ID');
INSERT INTO O_ATTR
	VALUES (2078,
	1515,
	2075,
	'SMevt_ID',
	'

',
	'',
	'SMevt_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2080,
	1515);
INSERT INTO O_BATTR
	VALUES (2080,
	1515);
INSERT INTO O_ATTR
	VALUES (2080,
	1515,
	2078,
	'SMspd_ID',
	'

',
	'',
	'SMspd_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1515);
INSERT INTO O_OIDA
	VALUES (2075,
	1515,
	0,
	'SM_ID');
INSERT INTO O_OIDA
	VALUES (2073,
	1515,
	0,
	'Trans_ID');
INSERT INTO O_ID
	VALUES (1,
	1515);
INSERT INTO O_ID
	VALUES (2,
	1515);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1570,
	'Class State Machine',
	521,
	'SM_ASM',
	'An assigner state machine is a state machine for a class.  This is in contrast to an instance state machine (SM_ISM) which is a state machine for an instance.',
	1478);
INSERT INTO O_TFR
	VALUES (2081,
	1570,
	'get_name',
	'This operation returns the name of the class it belongs to.
----------------------------------------------------------------------------------------------------------
Bridge:GD, TEXT
',
	322,
	1,
	'select one obj related by self->O_OBJ[R519];
if ( not_empty obj )
  return obj.Name;
else
  return ::getOrphanedElementName();
end if;
',
	1,
	'',
	2082);
INSERT INTO O_TFR
	VALUES (2083,
	1570,
	'newState',
	'',
	19,
	1,
	'select one sm related by self->SM_SM[R517];
sm.newState();',
	1,
	'',
	2084);
INSERT INTO O_TFR
	VALUES (2084,
	1570,
	'newEvent',
	'',
	19,
	1,
	'select one sm related by self->SM_SM[R517];
sm.newEvent();

',
	1,
	'',
	2085);
INSERT INTO O_TFR
	VALUES (2086,
	1570,
	'newTransition',
	'',
	316,
	1,
	'select one sm related by self->SM_SM[R517];
return sm.newTransition(from:param.from, to:param.to);',
	1,
	'',
	2083);
INSERT INTO O_TPARM
	VALUES (2087,
	2086,
	'from',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2088,
	2086,
	'to',
	296,
	0,
	'',
	2089,
	'');
INSERT INTO O_TPARM
	VALUES (2089,
	2086,
	'fromTypeIsImportedClass',
	316,
	0,
	'',
	2087,
	'');
INSERT INTO O_TPARM
	VALUES (2090,
	2086,
	'toTypeIsImportedClass',
	316,
	0,
	'',
	2088,
	'');
INSERT INTO O_TFR
	VALUES (2085,
	1570,
	'newCreationTransition',
	'',
	316,
	1,
	'select one sm related by self->SM_SM[R517];
return sm.newCreationTransition(from:param.from, to:param.to);',
	1,
	'',
	2091);
INSERT INTO O_TPARM
	VALUES (2092,
	2085,
	'from',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2093,
	2085,
	'to',
	296,
	0,
	'',
	2094,
	'');
INSERT INTO O_TPARM
	VALUES (2094,
	2085,
	'fromTypeIsImportedClass',
	316,
	0,
	'',
	2092,
	'');
INSERT INTO O_TPARM
	VALUES (2095,
	2085,
	'toTypeIsImportedClass',
	316,
	0,
	'',
	2093,
	'');
INSERT INTO O_TFR
	VALUES (2091,
	1570,
	'get_ooa_id',
	'The ooa_id of a State Machine is it''''s SM_ID.
-----------------------------------------------------------------------------------
Bridge:GD',
	296,
	1,
	'return self.SM_ID;',
	1,
	'',
	2081);
INSERT INTO O_TFR
	VALUES (2082,
	1570,
	'dispose',
	'',
	19,
	1,
	'select one sm related by self->SM_SM[R517];
sm.dispose();',
	1,
	'',
	2096);
INSERT INTO O_TFR
	VALUES (2096,
	1570,
	'convertToInstance',
	'// return this as an instance
Translate:native',
	317,
	1,
	'return this;',
	0,
	'',
	0);
INSERT INTO O_TFR
	VALUES (2097,
	1570,
	'pasteTransition',
	'',
	19,
	1,
	'select one sm related by self->SM_SM[R517];
sm.pasteTransition(id:param.id);',
	1,
	'',
	2098);
INSERT INTO O_TPARM
	VALUES (2099,
	2097,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2098,
	1570,
	'pasteStateMachineState',
	'',
	19,
	1,
	'select one sm related by self->SM_SM[R517];
sm.pasteStateMachineState(id:param.id);',
	1,
	'',
	2086);
INSERT INTO O_TPARM
	VALUES (2100,
	2098,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2101,
	1570,
	'getStateCount',
	'',
	298,
	1,
	'select many states related by self->SM_SM[R517]->SM_STATE[R501];
return cardinality states;',
	1,
	'',
	2097);
INSERT INTO O_TFR
	VALUES (2102,
	1570,
	'getStateId',
	'',
	296,
	1,
	'id = GD::NULL_UNIQUE_ID();
select many states related by self->SM_SM[R517]->SM_STATE[R501];
// We''re preincrementing the index
count = -1;
for each state in states
  if (not_empty state)
      count = count+1;
  end if;
  if (count == param.index)
      return state.get_ooa_id();  
  end if;
end for;
return id;',
	1,
	'',
	2101);
INSERT INTO O_TPARM
	VALUES (2103,
	2102,
	'index',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2104,
	1570,
	'pasteStateMachineEvent',
	'',
	19,
	1,
	'select one sm related by self->SM_SM[R517];
sm.pasteStateMachineEvent(id:param.id);',
	1,
	'',
	2102);
INSERT INTO O_TPARM
	VALUES (2105,
	2104,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (1570,
	565,
	0,
	564,
	1566,
	1571,
	1567,
	2106,
	2107,
	0,
	0,
	'',
	'State Machine',
	'SM_ID',
	'R517');
INSERT INTO O_RATTR
	VALUES (2106,
	1570,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (2106,
	1570,
	0,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1570,
	30,
	0,
	150,
	1575,
	1576,
	1577,
	2108,
	2109,
	0,
	0,
	'',
	'Model Class',
	'Obj_ID',
	'R519');
INSERT INTO O_RATTR
	VALUES (2108,
	1570,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2108,
	1570,
	2106,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1570);
INSERT INTO O_OIDA
	VALUES (2106,
	1570,
	0,
	'SM_ID');
INSERT INTO O_ID
	VALUES (1,
	1570);
INSERT INTO O_ID
	VALUES (2,
	1570);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1504,
	'Cant Happen',
	507,
	'SM_CH',
	'A cant happen is an entry in the state event matrix (SEM) specifying that the event (SM_EVT) should never happen under normal circumstances when received in the state SM_STATE.  When the analyst asserts that the event cant happen in the state he is saying that the event is not expected and an error should be flagged.  ',
	1478);
INSERT INTO O_TFR
	VALUES (2110,
	1504,
	'get_name',
	'Translate:native',
	322,
	1,
	'	return "Can''t Happen";',
	0,
	'',
	0);
INSERT INTO O_TFR
	VALUES (2111,
	1504,
	'dispose',
	'',
	19,
	1,
	'select one seme related by self->SM_SEME[R504];
if(not_empty seme)
  unrelate self from seme across R504;
end if;
delete object instance self;',
	1,
	'',
	2110);
INSERT INTO O_TFR
	VALUES (2112,
	1504,
	'get_label',
	'',
	322,
	1,
	'select one seme related by self->SM_SEME[R504];
if not_empty seme
  select one event related by seme->SM_SEVT[R503]->SM_EVT[R525];
  select one state related by seme->SM_STATE[R503];
  if ( not_empty state and not_empty event )
    return event.Drv_Lbl + "/" + state.Name;
  else
    // during import may not be related yet
    return "";
  end if;
else
  // during import may not be related yet
  return "";
end if;
',
	1,
	'',
	2111);
INSERT INTO O_REF
	VALUES (1504,
	1496,
	0,
	1501,
	1495,
	1505,
	1497,
	2113,
	2114,
	0,
	0,
	'',
	'State Event Matrix Entry',
	'SMstt_ID',
	'R504');
INSERT INTO O_RATTR
	VALUES (2113,
	1504,
	1522,
	1492,
	1,
	'SMstt_ID');
INSERT INTO O_ATTR
	VALUES (2113,
	1504,
	0,
	'SMstt_ID',
	'

',
	'',
	'SMstt_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1504,
	1496,
	0,
	1499,
	1495,
	1505,
	1497,
	2115,
	2116,
	0,
	0,
	'',
	'State Event Matrix Entry',
	'SMevt_ID',
	'R504');
INSERT INTO O_RATTR
	VALUES (2115,
	1504,
	1604,
	1488,
	1,
	'SMevt_ID');
INSERT INTO O_ATTR
	VALUES (2115,
	1504,
	2113,
	'SMevt_ID',
	'

',
	'',
	'SMevt_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1504,
	1496,
	0,
	1500,
	1495,
	1505,
	1497,
	2117,
	2118,
	0,
	0,
	'',
	'State Event Matrix Entry',
	'SM_ID',
	'R504');
INSERT INTO O_RATTR
	VALUES (2117,
	1504,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (2117,
	1504,
	2115,
	'SM_ID',
	'

',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1504,
	1496,
	0,
	1498,
	1495,
	1505,
	1497,
	2119,
	2120,
	0,
	0,
	'',
	'State Event Matrix Entry',
	'SMspd_ID',
	'R504');
INSERT INTO O_RATTR
	VALUES (2119,
	1504,
	1585,
	1583,
	1,
	'SMspd_ID');
INSERT INTO O_ATTR
	VALUES (2119,
	1504,
	2117,
	'SMspd_ID',
	'

',
	'',
	'SMspd_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2121,
	1504);
INSERT INTO O_BATTR
	VALUES (2121,
	1504);
INSERT INTO O_ATTR
	VALUES (2121,
	1504,
	2119,
	'Descrip',
	'Full Name: Description
Description: An explanation of why the event cant happen while the instance is in this state.',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1504);
INSERT INTO O_OIDA
	VALUES (2119,
	1504,
	0,
	'SMspd_ID');
INSERT INTO O_OIDA
	VALUES (2115,
	1504,
	0,
	'SMevt_ID');
INSERT INTO O_OIDA
	VALUES (2117,
	1504,
	0,
	'SM_ID');
INSERT INTO O_OIDA
	VALUES (2113,
	1504,
	0,
	'SMstt_ID');
INSERT INTO O_ID
	VALUES (1,
	1504);
INSERT INTO O_ID
	VALUES (2,
	1504);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1549,
	'Action Home',
	515,
	'SM_AH',
	'An action (SM_ACT) resides in an action home, either a Moore action home (SM_MOAH) or a Mealy action home (SM_MEAH).',
	1478);
INSERT INTO O_TFR
	VALUES (2122,
	1549,
	'dispose',
	'Dispose this SM_AH.',
	19,
	1,
	'select one moah related by self->SM_MOAH[R513];
if (not_empty moah)
  moah.dispose();
end if;
select one meah related by self->SM_MEAH[R513];
if (not_empty meah)
  meah.dispose();
end if;
select one tah related by self->SM_TAH[R513];
if (not_empty tah)
  tah.dispose();
end if;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (1549,
	1559,
	0,
	1562,
	1557,
	1558,
	1560,
	1551,
	2123,
	0,
	0,
	'',
	'Action',
	'Act_ID',
	'R514');
INSERT INTO O_RATTR
	VALUES (1551,
	1549,
	1562,
	1559,
	1,
	'Act_ID');
INSERT INTO O_ATTR
	VALUES (1551,
	1549,
	0,
	'Act_ID',
	'',
	'',
	'Act_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (1549,
	1559,
	0,
	1561,
	1557,
	1558,
	1560,
	1552,
	2124,
	0,
	0,
	'',
	'Action',
	'SM_ID',
	'R514');
INSERT INTO O_RATTR
	VALUES (1552,
	1549,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1552,
	1549,
	1551,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1549);
INSERT INTO O_OIDA
	VALUES (1551,
	1549,
	0,
	'Act_ID');
INSERT INTO O_OIDA
	VALUES (1552,
	1549,
	0,
	'SM_ID');
INSERT INTO O_ID
	VALUES (1,
	1549);
INSERT INTO O_ID
	VALUES (2,
	1549);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (1559,
	'Action',
	516,
	'SM_ACT',
	'An action defines the action language that gets executed upon arrival into the state (SM_STATE) that is related to the action.  An action may have both action language (SM_ACT.Action_Semantics)  and a description (SM_ACT.Descrip).',
	1478);
INSERT INTO O_TFR
	VALUES (2125,
	1559,
	'dispose',
	'Delete this Action.',
	19,
	1,
	'select one sm related by self->SM_SM[R515];
unrelate self from sm across R515;
select one ah related by self->SM_AH[R514];
unrelate self from ah across R514;
ah.dispose();
// Body Subsystem
select one body related by self->ACT_SAB[R691]->ACT_ACT[R698];
if empty body
  select one body related by self->ACT_TAB[R688]->ACT_ACT[R698];
end if;
if (not_empty body)
  body.dispose();
end if;
//
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (2126,
	1559,
	'get_name',
	'',
	322,
	1,
	'select one st related by self->SM_AH[R514]->SM_MOAH[R513]->SM_STATE[R511];
select one transition related by self->SM_AH[R514]->SM_TAH[R513]->SM_TXN[R530];
if (not_empty st)
  return "State Action";
else;
  if(not_empty transition)
    return "Transition Action";
  end if;
  return ::getOrphanedElementName();
end if;

',
	1,
	'',
	2125);
INSERT INTO O_TFR
	VALUES (2127,
	1559,
	'convertToInstance',
	'A utility operation to cast an instance of this type to the
instance datatype.

Translate: native',
	317,
	1,
	'// just return this instance as an Object
return this;',
	0,
	'',
	2126);
INSERT INTO O_NBATTR
	VALUES (1562,
	1559);
INSERT INTO O_BATTR
	VALUES (1562,
	1559);
INSERT INTO O_ATTR
	VALUES (1562,
	1559,
	0,
	'Act_ID',
	'Full Name: Action Identifier',
	'',
	'Act_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_REF
	VALUES (1559,
	565,
	0,
	564,
	1563,
	1564,
	1565,
	1561,
	2128,
	0,
	0,
	'',
	'State Machine',
	'SM_ID',
	'R515');
INSERT INTO O_RATTR
	VALUES (1561,
	1559,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (1561,
	1559,
	1562,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2129,
	1559);
INSERT INTO O_BATTR
	VALUES (2129,
	1559);
INSERT INTO O_ATTR
	VALUES (2129,
	1559,
	1561,
	'Suc_Pars',
	'Full Name: Successful Parse Indicator
Description: Indicates the status of the parse for the state action specification in the attribute Action_Semantics
Data Domain: 0=not parsed, 1 = parse successful, 2 = parse unsuccessful, 3 = parse on apply set but never been parsed
',
	'',
	'Suc_Pars',
	0,
	1224,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (2130,
	1559,
	'self.Action_Semantics = ::convertRelocatableTags(in:self.Action_Semantics_internal);
',
	1);
INSERT INTO O_BATTR
	VALUES (2130,
	1559);
INSERT INTO O_ATTR
	VALUES (2130,
	1559,
	2129,
	'Action_Semantics',
	'Full Name: Action Semantics Field
Description: Action Semantics for the state action
Persistent:false',
	'',
	'Action_Semantics',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2131,
	1559);
INSERT INTO O_BATTR
	VALUES (2131,
	1559);
INSERT INTO O_ATTR
	VALUES (2131,
	1559,
	2132,
	'Descrip',
	'Full Name: Description
Description: Optional description for the state action.',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2132,
	1559);
INSERT INTO O_BATTR
	VALUES (2132,
	1559);
INSERT INTO O_ATTR
	VALUES (2132,
	1559,
	2130,
	'Action_Semantics_internal',
	'User_Visible:false',
	'',
	'Action_Semantics_internal',
	0,
	322,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	1559);
INSERT INTO O_OIDA
	VALUES (1561,
	1559,
	0,
	'SM_ID');
INSERT INTO O_OIDA
	VALUES (1562,
	1559,
	0,
	'Act_ID');
INSERT INTO O_ID
	VALUES (1,
	1559);
INSERT INTO O_ID
	VALUES (2,
	1559);
-- BP 7.1 content: Subsystem syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SS
	VALUES (2133,
	'Sequence',
	'// This is used by schema_gen to ignore this subsystem (for publication)
TRANSLATE_FOR_EXTERNAL_USE:FALSE',
	'SQ',
	900,
	1,
	0);
INSERT INTO S_SID
	VALUES (1,
	2133);
INSERT INTO O_IOBJ
	VALUES (2134,
	701,
	0,
	2133,
	'Subsystem',
	'S_SS');
INSERT INTO O_IOBJ
	VALUES (2135,
	699,
	0,
	2133,
	'Domain',
	'S_DOM');
INSERT INTO O_IOBJ
	VALUES (2136,
	703,
	0,
	2133,
	'Interaction Participant',
	'SQ_P');
INSERT INTO O_IOBJ
	VALUES (2137,
	705,
	0,
	2133,
	'System Model',
	'S_SYS');
INSERT INTO O_IOBJ
	VALUES (2138,
	707,
	0,
	2133,
	'Component Package',
	'CP_CP');
INSERT INTO O_IOBJ
	VALUES (2139,
	709,
	0,
	2133,
	'Component',
	'C_C');
INSERT INTO O_IOBJ
	VALUES (2140,
	2141,
	0,
	2133,
	'Message',
	'MSG_M');
INSERT INTO R_SIMP
	VALUES (2142);
INSERT INTO R_REL
	VALUES (2142,
	913,
	'',
	2133);
INSERT INTO R_PART
	VALUES (699,
	2142,
	2143,
	0,
	1,
	'is shown in');
INSERT INTO O_RTIDA
	VALUES (712,
	699,
	0,
	2142,
	2143);
INSERT INTO R_RTO
	VALUES (699,
	2142,
	2143,
	0);
INSERT INTO R_OIR
	VALUES (699,
	2142,
	2143,
	2135);
INSERT INTO R_FORM
	VALUES (2144,
	2142,
	2145,
	1,
	1,
	'can show');
INSERT INTO R_RGO
	VALUES (2144,
	2142,
	2145);
INSERT INTO R_OIR
	VALUES (2144,
	2142,
	2145,
	0);
INSERT INTO R_SIMP
	VALUES (2146);
INSERT INTO R_REL
	VALUES (2146,
	914,
	'',
	2133);
INSERT INTO R_PART
	VALUES (701,
	2146,
	2147,
	0,
	1,
	'is shown in');
INSERT INTO O_RTIDA
	VALUES (717,
	701,
	0,
	2146,
	2147);
INSERT INTO R_RTO
	VALUES (701,
	2146,
	2147,
	0);
INSERT INTO R_OIR
	VALUES (701,
	2146,
	2147,
	2134);
INSERT INTO R_FORM
	VALUES (2144,
	2146,
	2148,
	1,
	1,
	'can show');
INSERT INTO R_RGO
	VALUES (2144,
	2146,
	2148);
INSERT INTO R_OIR
	VALUES (2144,
	2146,
	2148,
	0);
INSERT INTO R_SIMP
	VALUES (2149);
INSERT INTO R_REL
	VALUES (2149,
	928,
	'',
	2133);
INSERT INTO R_FORM
	VALUES (2144,
	2149,
	2150,
	1,
	1,
	'has children');
INSERT INTO R_RGO
	VALUES (2144,
	2149,
	2150);
INSERT INTO R_OIR
	VALUES (2144,
	2149,
	2150,
	0);
INSERT INTO R_PART
	VALUES (2151,
	2149,
	2152,
	0,
	1,
	'is displayed in');
INSERT INTO O_RTIDA
	VALUES (2153,
	2151,
	0,
	2149,
	2152);
INSERT INTO R_RTO
	VALUES (2151,
	2149,
	2152,
	0);
INSERT INTO R_OIR
	VALUES (2151,
	2149,
	2152,
	0);
INSERT INTO R_SIMP
	VALUES (2154);
INSERT INTO R_REL
	VALUES (2154,
	911,
	'',
	2133);
INSERT INTO R_PART
	VALUES (2144,
	2154,
	2155,
	0,
	0,
	'is shown in');
INSERT INTO O_RTIDA
	VALUES (2156,
	2144,
	0,
	2154,
	2155);
INSERT INTO R_RTO
	VALUES (2144,
	2154,
	2155,
	0);
INSERT INTO R_OIR
	VALUES (2144,
	2154,
	2155,
	0);
INSERT INTO R_FORM
	VALUES (2151,
	2154,
	2157,
	0,
	1,
	'can show');
INSERT INTO R_RGO
	VALUES (2151,
	2154,
	2157);
INSERT INTO R_OIR
	VALUES (2151,
	2154,
	2157,
	0);
INSERT INTO R_SIMP
	VALUES (2158);
INSERT INTO R_REL
	VALUES (2158,
	929,
	'',
	2133);
INSERT INTO R_PART
	VALUES (2144,
	2158,
	2159,
	0,
	1,
	'participates in');
INSERT INTO O_RTIDA
	VALUES (2156,
	2144,
	0,
	2158,
	2159);
INSERT INTO R_RTO
	VALUES (2144,
	2158,
	2159,
	0);
INSERT INTO R_OIR
	VALUES (2144,
	2158,
	2159,
	0);
INSERT INTO R_FORM
	VALUES (703,
	2158,
	2160,
	1,
	1,
	'contains');
INSERT INTO R_RGO
	VALUES (703,
	2158,
	2160);
INSERT INTO R_OIR
	VALUES (703,
	2158,
	2160,
	2136);
INSERT INTO R_SIMP
	VALUES (2161);
INSERT INTO R_REL
	VALUES (2161,
	950,
	'',
	2133);
INSERT INTO R_PART
	VALUES (705,
	2161,
	2162,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (754,
	705,
	0,
	2161,
	2162);
INSERT INTO R_RTO
	VALUES (705,
	2161,
	2162,
	0);
INSERT INTO R_OIR
	VALUES (705,
	2161,
	2162,
	2137);
INSERT INTO R_FORM
	VALUES (2144,
	2161,
	2163,
	1,
	1,
	'can show');
INSERT INTO R_RGO
	VALUES (2144,
	2161,
	2163);
INSERT INTO R_OIR
	VALUES (2144,
	2161,
	2163,
	0);
INSERT INTO R_SIMP
	VALUES (2164);
INSERT INTO R_REL
	VALUES (2164,
	951,
	'',
	2133);
INSERT INTO R_PART
	VALUES (707,
	2164,
	2165,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (758,
	707,
	0,
	2164,
	2165);
INSERT INTO R_RTO
	VALUES (707,
	2164,
	2165,
	0);
INSERT INTO R_OIR
	VALUES (707,
	2164,
	2165,
	2138);
INSERT INTO R_FORM
	VALUES (2144,
	2164,
	2166,
	1,
	1,
	'can show');
INSERT INTO R_RGO
	VALUES (2144,
	2164,
	2166);
INSERT INTO R_OIR
	VALUES (2144,
	2164,
	2166,
	0);
INSERT INTO R_SIMP
	VALUES (2167);
INSERT INTO R_REL
	VALUES (2167,
	952,
	'',
	2133);
INSERT INTO R_PART
	VALUES (709,
	2167,
	2168,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (762,
	709,
	0,
	2167,
	2168);
INSERT INTO R_RTO
	VALUES (709,
	2167,
	2168,
	0);
INSERT INTO R_OIR
	VALUES (709,
	2167,
	2168,
	2139);
INSERT INTO R_FORM
	VALUES (2144,
	2167,
	2169,
	1,
	1,
	'can show');
INSERT INTO R_RGO
	VALUES (2144,
	2167,
	2169);
INSERT INTO R_OIR
	VALUES (2144,
	2167,
	2169,
	0);
INSERT INTO R_SIMP
	VALUES (2170);
INSERT INTO R_REL
	VALUES (2170,
	953,
	'',
	2133);
INSERT INTO R_PART
	VALUES (2144,
	2170,
	2171,
	0,
	0,
	'contained in');
INSERT INTO O_RTIDA
	VALUES (2156,
	2144,
	0,
	2170,
	2171);
INSERT INTO R_RTO
	VALUES (2144,
	2170,
	2171,
	0);
INSERT INTO R_OIR
	VALUES (2144,
	2170,
	2171,
	0);
INSERT INTO R_FORM
	VALUES (2172,
	2170,
	2173,
	1,
	1,
	'contains');
INSERT INTO R_RGO
	VALUES (2172,
	2170,
	2173);
INSERT INTO R_OIR
	VALUES (2172,
	2170,
	2173,
	0);
INSERT INTO R_SIMP
	VALUES (2174);
INSERT INTO R_REL
	VALUES (2174,
	954,
	'',
	2133);
INSERT INTO R_FORM
	VALUES (2172,
	2174,
	2175,
	0,
	1,
	'contained through');
INSERT INTO R_RGO
	VALUES (2172,
	2174,
	2175);
INSERT INTO R_OIR
	VALUES (2172,
	2174,
	2175,
	0);
INSERT INTO R_PART
	VALUES (2141,
	2174,
	2176,
	0,
	0,
	'provides containment');
INSERT INTO O_RTIDA
	VALUES (2177,
	2141,
	0,
	2174,
	2176);
INSERT INTO R_RTO
	VALUES (2141,
	2174,
	2176,
	0);
INSERT INTO R_OIR
	VALUES (2141,
	2174,
	2176,
	2140);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2151,
	'Sequence in Sequence',
	906,
	'SQ_SIS',
	'',
	2133);
INSERT INTO O_REF
	VALUES (2151,
	2144,
	0,
	2156,
	2154,
	2157,
	2155,
	2153,
	2178,
	0,
	0,
	'',
	'Sequence',
	'Package_ID',
	'R911');
INSERT INTO O_RATTR
	VALUES (2153,
	2151,
	772,
	773,
	1,
	'Package_ID');
INSERT INTO O_ATTR
	VALUES (2153,
	2151,
	0,
	'Package_ID',
	'',
	'',
	'SpecificationPackage_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2151);
INSERT INTO O_OIDA
	VALUES (2153,
	2151,
	0,
	'Package_ID');
INSERT INTO O_ID
	VALUES (1,
	2151);
INSERT INTO O_ID
	VALUES (2,
	2151);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2144,
	'Sequence',
	900,
	'SQ_S',
	'',
	2133);
INSERT INTO O_TFR
	VALUES (2179,
	2144,
	'get_compartments',
	'',
	298,
	1,
	'// The sequence package symbol only contains its name
return 1;',
	1,
	'',
	2180);
INSERT INTO O_TFR
	VALUES (2181,
	2144,
	'get_entries',
	'',
	298,
	1,
	'// The sequence package symbol only contains its name
return 1;',
	1,
	'',
	2179);
INSERT INTO O_TPARM
	VALUES (2182,
	2181,
	'comp_num',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2180,
	2144,
	'get_compartment_text',
	'',
	322,
	1,
	'// The sequence package symbol only contains its name
// appended by the sequence stereotype
result = "";
if (param.at == Justification::Center_in_X)
  result = "«sequence»";
elif (param.at == Justification::Center)
  result = self.Name;
end if;
return result;',
	1,
	'',
	2183);
INSERT INTO O_TPARM
	VALUES (2184,
	2180,
	'comp_num',
	298,
	0,
	'',
	2185,
	'');
INSERT INTO O_TPARM
	VALUES (2186,
	2180,
	'ent_num',
	298,
	0,
	'',
	2184,
	'');
INSERT INTO O_TPARM
	VALUES (2185,
	2180,
	'at',
	779,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2187,
	2144,
	'get_text_style',
	'',
	784,
	1,
	'return Style::None;',
	1,
	'',
	2188);
INSERT INTO O_TPARM
	VALUES (2189,
	2187,
	'comp_num',
	298,
	0,
	'',
	2190,
	'');
INSERT INTO O_TPARM
	VALUES (2191,
	2187,
	'ent_num',
	298,
	0,
	'',
	2189,
	'');
INSERT INTO O_TPARM
	VALUES (2190,
	2187,
	'at',
	779,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2188,
	2144,
	'get_style',
	'',
	784,
	1,
	'return Style::Folder;',
	1,
	'',
	2192);
INSERT INTO O_TFR
	VALUES (2192,
	2144,
	'get_ooa_id',
	'',
	296,
	1,
	'return self.Package_ID;',
	1,
	'',
	2181);
INSERT INTO O_TFR
	VALUES (2193,
	2144,
	'initialize',
	'',
	19,
	1,
	'self.Name = ::getUniqueInitialName( 
    instance: self.convertToInstance(), 
    candidateName: "Unnamed Sequence");',
	1,
	'',
	2187);
INSERT INTO O_TFR
	VALUES (2194,
	2144,
	'newLifeSpan',
	'',
	316,
	1,
	'select any part from instances of SQ_P where (selected.Part_ID == param.from);
select any partTo from instances of SQ_P where (selected.Part_ID == param.to);
// if the element that this lifespan is drawn to is
// the instance, we must switch it so that it is the
// element from which the lifespan is drawn from 
// so that the logic below works
if(empty part) and (not_empty partTo)
  inst = partTo;
end if;
if(not_empty part)
  // dont allow more that one lifeline per
  // element
  select one otherLifeSpan related by part->SQ_LS[R940];
  if(not_empty otherLifeSpan)
    return false;
  end if;
  // otherwise create the lifespan on this instance
  create object instance lifeSpanPart of SQ_P;
  create object instance lifespan of SQ_LS;
  relate lifespan to part across R940;
  relate lifespan to lifeSpanPart across R930;
  relate lifeSpanPart to self across R929;
  return true;
end if;
return false;',
	1,
	'',
	2195);
INSERT INTO O_TPARM
	VALUES (2196,
	2194,
	'from',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2197,
	2194,
	'to',
	296,
	0,
	'',
	2198,
	'');
INSERT INTO O_TPARM
	VALUES (2198,
	2194,
	'fromIsImported',
	316,
	0,
	'',
	2196,
	'');
INSERT INTO O_TPARM
	VALUES (2199,
	2194,
	'toIsImported',
	316,
	0,
	'',
	2197,
	'');
INSERT INTO O_TFR
	VALUES (2200,
	2144,
	'newClassInstance',
	'',
	19,
	1,
	'create object instance participant of SQ_P;
create object instance inst of SQ_CIP;
relate participant to inst across R930;
relate participant to self across R929;
inst.initialize();',
	1,
	'',
	2201);
INSERT INTO O_TFR
	VALUES (2202,
	2144,
	'newClassParticipant',
	'',
	19,
	1,
	'create object instance participant of SQ_P;
create object instance cp of SQ_CP;
relate participant to cp across R930;
relate participant to self across R929;
cp.initialize();',
	1,
	'',
	2200);
INSERT INTO O_TFR
	VALUES (2203,
	2144,
	'newSequence',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
create object instance sequence of SQ_S;
create object instance sp of EP_SPKG;
relate sequence to sp across R1402;
select one sis related by self->SQ_SIS[R911];
if(empty sis)
  create object instance sis of SQ_SIS;
  relate self to sis across R911;
end if;
relate sis to sequence across R928;
sequence.initialize();',
	1,
	'',
	2204);
INSERT INTO O_TFR
	VALUES (2205,
	2144,
	'newTimingMark',
	'',
	316,
	1,
	'select any lifespan from instances of SQ_LS where (selected.Part_ID == param.from);
if(not_empty lifespan)
  create object instance mark of SQ_TM;
  relate mark to lifespan across R931;
  return true;
end if;
return false;',
	1,
	'',
	2206);
INSERT INTO O_TPARM
	VALUES (2207,
	2205,
	'from',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2208,
	2205,
	'to',
	296,
	0,
	'',
	2209,
	'');
INSERT INTO O_TPARM
	VALUES (2209,
	2205,
	'fromIsImported',
	316,
	0,
	'',
	2207,
	'');
INSERT INTO O_TPARM
	VALUES (2210,
	2205,
	'toIsImported',
	316,
	0,
	'',
	2208,
	'');
INSERT INTO O_TFR
	VALUES (2206,
	2144,
	'newTimeSpan',
	'',
	316,
	1,
	'select any mark from instances of SQ_TM where (selected.Mark_ID == param.from);
if(not_empty mark)
  select any otherMark from instances of SQ_TM where (selected.Mark_ID == param.to);
  if(not_empty otherMark)
    create object instance span of SQ_TS;
    relate span to mark across R941;
    relate span to otherMark across R942;
    return true;
  end if;
end if;
return false;',
	1,
	'',
	2211);
INSERT INTO O_TPARM
	VALUES (2212,
	2206,
	'from',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2213,
	2206,
	'to',
	296,
	0,
	'',
	2214,
	'');
INSERT INTO O_TPARM
	VALUES (2214,
	2206,
	'fromIsImported',
	316,
	0,
	'',
	2212,
	'');
INSERT INTO O_TPARM
	VALUES (2215,
	2206,
	'toIsImported',
	316,
	0,
	'',
	2213,
	'');
INSERT INTO O_TFR
	VALUES (2216,
	2144,
	'dispose',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one dom related by self->S_DOM[R913];
select one ss related by self->S_SS[R914];
select one sis related by self->SQ_SIS[R928];
select one system related by self->S_SYS[R950];
select one compPackage related by self->CP_CP[R951];
select one comp related by self->C_C[R952];
if(not_empty comp)
  unrelate self from comp across R952;
end if;
if(not_empty compPackage)
  unrelate self from compPackage across R951;
end if;
if(not_empty system)
  unrelate self from system across R950;
end if;
if(not_empty dom)
  unrelate self from dom across R913;
end if;
if(not_empty ss)
  unrelate self from ss across R914;
end if;

// unrelate from parent
select one sis related by self->SQ_SIS[R928];
if(not_empty sis)
  unrelate self from sis across R928;
  // are there any other children?
  select any other_child related by sis->SQ_S[R928];
  if empty other_child
    // no, dispose the sequence in sequence placeholder
    select one parent related by sis->SQ_S[R911];
    if(not_empty parent)
      unrelate sis from parent across R911;
    end if;
    delete object instance sis;
  end if;
end if;

//delete child sequences
select one sis related by self->SQ_SIS[R911];
select many sequences related by sis->SQ_S[R928];
for each sequence in sequences
  sequence.dispose();
end for;
// last child will delete the sis instance

select many participants related by self->SQ_P[R929];
for each participant in participants
  unrelate self from participant across R929;
  participant.dispose();
end for;

select one specPkg related by self->EP_SPKG[R1402];

if(not_empty specPkg)
  unrelate self from specPkg across R1402;
  specPkg.dispose();
end if;
select many miss related by self->SQ_MIS[R953];
for each mis in miss
  select one message related by mis->MSG_M[R954];
  unrelate mis from self across R953;
  unrelate mis from message across R954;
  message.dispose();
end for;
delete object instance self;',
	1,
	'',
	2217);
INSERT INTO O_TFR
	VALUES (2218,
	2144,
	'newExternalEntityParticipant',
	'',
	19,
	1,
	'create object instance participant of SQ_P;
create object instance eep of SQ_EEP;
relate participant to eep across R930;
relate participant to self across R929;
eep.initialize();',
	1,
	'',
	2219);
INSERT INTO O_TFR
	VALUES (2211,
	2144,
	'newSyncMessage',
	'',
	316,
	1,
	'select any fromParticipant from instances of SQ_P where (selected.Part_ID == param.from);
select any toParticipant from instances of SQ_P where (selected.Part_ID == param.to);
// it only matters that there is a toParticipant
if(not_empty toParticipant)
  create object instance message of MSG_M;
  create object instance mis of SQ_MIS;
  relate message to mis across R954;
  relate mis to self across R953;
  relate message to toParticipant across R1007;
  if(not_empty fromParticipant)
    relate message to fromParticipant across R1008;
  end if;
  create object instance sm of MSG_SM;
  relate message to sm across R1018;
  sm.initialize();
  return true;
end if;
return false;',
	1,
	'',
	2203);
INSERT INTO O_TPARM
	VALUES (2220,
	2211,
	'from',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2221,
	2211,
	'to',
	296,
	0,
	'',
	2222,
	'');
INSERT INTO O_TPARM
	VALUES (2222,
	2211,
	'fromIsImported',
	316,
	0,
	'',
	2220,
	'');
INSERT INTO O_TPARM
	VALUES (2223,
	2211,
	'toIsImported',
	316,
	0,
	'',
	2221,
	'');
INSERT INTO O_TFR
	VALUES (2224,
	2144,
	'newASyncMessage',
	'',
	316,
	1,
	'select any fromParticipant from instances of SQ_P where (selected.Part_ID == param.from);
select any toParticipant from instances of SQ_P where (selected.Part_ID == param.to);
// it only matters that there is a toParticipant
if(not_empty toParticipant)
  create object instance message of MSG_M;
  create object instance mis of SQ_MIS;
  relate message to mis across R954;
  relate mis to self across R953;
  relate message to toParticipant across R1007;
  if(not_empty fromParticipant)
    relate message to fromParticipant across R1008;
  end if;
  create object instance am of MSG_AM;
  relate message to am across R1018;
  am.initialize();
  return true;
end if;
return false;',
	1,
	'',
	2193);
INSERT INTO O_TPARM
	VALUES (2225,
	2224,
	'from',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2226,
	2224,
	'to',
	296,
	0,
	'',
	2227,
	'');
INSERT INTO O_TPARM
	VALUES (2227,
	2224,
	'fromIsImported',
	316,
	0,
	'',
	2225,
	'');
INSERT INTO O_TPARM
	VALUES (2228,
	2224,
	'toIsImported',
	316,
	0,
	'',
	2226,
	'');
INSERT INTO O_TFR
	VALUES (2195,
	2144,
	'newFunctionPackageParticipant',
	'',
	19,
	1,
	'create object instance participant of SQ_P;
create object instance fpp of SQ_FPP;
relate participant to fpp across R930;
relate participant to self across R929;
fpp.initialize();',
	1,
	'',
	2218);
INSERT INTO O_TFR
	VALUES (2204,
	2144,
	'newReturnMessage',
	'',
	316,
	1,
	'select any fromParticipant from instances of SQ_P where (selected.Part_ID == param.from);
select any toParticipant from instances of SQ_P where (selected.Part_ID == param.to);
// it only matters that there is a toParticipant
if(not_empty toParticipant)
  create object instance message of MSG_M;
  relate message to toParticipant across R1007;
  create object instance mis of SQ_MIS;
  relate message to mis across R954;
  relate mis to self across R953;
  if(not_empty fromParticipant)
    relate message to fromParticipant across R1008;
  end if;
  create object instance rm of MSG_R;
  relate rm to message across R1018;
  rm.initialize();
  return true;
end if;
return false;',
	1,
	'',
	2194);
INSERT INTO O_TPARM
	VALUES (2229,
	2204,
	'from',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2230,
	2204,
	'to',
	296,
	0,
	'',
	2231,
	'');
INSERT INTO O_TPARM
	VALUES (2231,
	2204,
	'fromIsImported',
	316,
	0,
	'',
	2229,
	'');
INSERT INTO O_TPARM
	VALUES (2232,
	2204,
	'toIsImported',
	316,
	0,
	'',
	2230,
	'');
INSERT INTO O_TFR
	VALUES (2201,
	2144,
	'newActor',
	'',
	19,
	1,
	'create object instance actor of SQ_AP;
create object instance participant of SQ_P;
relate actor to participant across R930;
relate participant to self across R929;
actor.initialize();',
	1,
	'',
	2224);
INSERT INTO O_TFR
	VALUES (2183,
	2144,
	'getPath',
	'',
	322,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one domain related by self->S_DOM[R913];
domainName = "";
result = self.Name;
if(empty domain)
  select one ss related by self->S_SS[R914];
  if(not_empty ss)
    select one domain related by ss->S_DOM[R1];
    // check subsystems
    if(not_empty domain)
      result = ss.getPath(path:"") + "::" + result;
      domainName = domain.Name;
    end if;
  else
    // check sequences in sequences
    select one sis related by self->SQ_SIS[R928]->SQ_S[R911];
    while (not_empty sis)
      result = sis.Name + "::" + result;
      prev = sis;
      select one sis related by sis->SQ_SIS[R928]->SQ_S[R911];
      if(empty sis)
        if(param.domainNameOnly)
          return prev.getPath(domainNameOnly:true);
        else
          result = prev.getPath(domainNameOnly:param.domainNameOnly) + result;
        end if;
      end if;
    end while;
  end if;
else
  domainName = domain.Name;
  result = domainName + "::" + result;
end if;
if(param.domainNameOnly and (not_empty domain))
  return domain.Name;
else
  return result;
end if;
',
	1,
	'',
	2216);
INSERT INTO O_TPARM
	VALUES (2233,
	2183,
	'domainNameOnly',
	316,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2234,
	2144,
	'convertToInstance',
	'A utility operation to cast an instance of this type to the
instance datatype.

Translate: native',
	317,
	1,
	'// just return this instance as an Object
return this;',
	0,
	'',
	2235);
INSERT INTO O_TFR
	VALUES (2219,
	2144,
	'newComponentParticipant',
	'',
	19,
	1,
	'create object instance participant of SQ_P;
create object instance cp of SQ_COP;
relate participant to cp across R930;
relate participant to self across R929;
cp.initialize();',
	1,
	'',
	2202);
INSERT INTO O_TFR
	VALUES (2236,
	2144,
	'associateWithPackage',
	'',
	19,
	1,
	'// unhook from current parent
self.deassociateFromParent();
// hook up with package
select any package from instances of EP_PKG
                                     where (selected.Package_ID == param.pkgID);
select one specPkg related by self->EP_SPKG[R1402];
relate specPkg to package across R1400;',
	1,
	'',
	2237);
INSERT INTO O_TPARM
	VALUES (2238,
	2236,
	'pkgID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2217,
	2144,
	'deassociateFromParent',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one system related by self->S_SYS[R950];
if(not_empty system)
  unrelate self from system across R950;
end if;
select one domain related by self->S_DOM[R913];
if(not_empty domain)
  unrelate self from domain across R913;
end if;
select one subsystem related by self->S_SS[R914];
if(not_empty subsystem)
  unrelate self from subsystem across R914;
end if;
select one cp related by self->CP_CP[R951];
if(not_empty cp)
  unrelate self from cp across R951;
end if;
select one comp related by self->C_C[R952];
if(not_empty comp)
  unrelate self from comp across R952;
end if;
select one specPkg related by self->EP_SPKG[R1402];
select one package related by specPkg->EP_PKG[R1400];
if(not_empty package)
  unrelate specPkg from package across R1400;
end if;
select one sis related by self->SQ_SIS[R928];
if(not_empty sis)
  select one sequence related by sis->SQ_S[R911];
  unrelate sis from self across R928;
  select many otherSeqs related by sis->SQ_S[R928];
  if(empty otherSeqs)
    unrelate sis from sequence across R911;
    delete object instance sis;
  end if;
end if;',
	1,
	'',
	2234);
INSERT INTO O_TFR
	VALUES (2235,
	2144,
	'associateWithSystem',
	'',
	19,
	1,
	'// unhook from current parent
self.deassociateFromParent();
// hook up with system
select any system from instances of S_SYS
                                         where (selected.Sys_ID == param.sysID);
relate system to self across R950;',
	1,
	'',
	2239);
INSERT INTO O_TPARM
	VALUES (2240,
	2235,
	'sysID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2241,
	2144,
	'associateWithComponent',
	'',
	19,
	1,
	'// unhook from current parent
self.deassociateFromParent();
// hook up with component
select any component from instances of C_C
                                    where (selected.Id == param.compID);
relate self to component across R952;',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (2242,
	2241,
	'compID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2243,
	2144,
	'associateWithComponentPackage',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// unhook from current parent
self.deassociateFromParent();
// hook up with component package
select any cp from instances of CP_CP where (selected.Package_ID == param.cpID);
relate cp to self across R951;',
	1,
	'',
	2241);
INSERT INTO O_TPARM
	VALUES (2244,
	2243,
	'cpID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2237,
	2144,
	'associateWithDomain',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// unhook from current parent
self.deassociateFromParent();
// hook up with domain
select any domain from instances of S_DOM
                                         where (selected.Dom_ID == param.domID);
relate domain to self across R913;',
	1,
	'',
	2243);
INSERT INTO O_TPARM
	VALUES (2245,
	2237,
	'domID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2239,
	2144,
	'associateWithSubsystem',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// unhook from current parent
self.deassociateFromParent();
// hook up with domain
select any ss from instances of S_SS where (selected.SS_ID == param.ssID);
relate ss to self across R914;',
	1,
	'',
	2246);
INSERT INTO O_TPARM
	VALUES (2247,
	2239,
	'ssID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2246,
	2144,
	'associateWithSequence',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// unhook from current parent
self.deassociateFromParent();
// hook up with communication
select any seq from instances of SQ_S
                                     where (selected.Package_ID == param.seqID);
select one sis related by seq->SQ_SIS[R911];
if(empty sis)
  create object instance sis of SQ_SIS;
  relate seq to sis across R911;
end if;
relate self to sis across R928;',
	1,
	'',
	2236);
INSERT INTO O_TPARM
	VALUES (2248,
	2246,
	'seqID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2249,
	2144,
	'pasteSequence',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select any seq from instances of SQ_S where (selected.Package_ID == param.id);
if(not_empty seq)
  // guarantee a unique name for the pasted element
  seq.Name = ::getUniqueInitialNameInParent (instance:seq.convertToInstance(),
         					    name:seq.Name, parent:self.convertToInstance());
  seq.associateWithSequence(seqID:self.Package_ID);
end if;',
	1,
	'',
	2205);
INSERT INTO O_TPARM
	VALUES (2250,
	2249,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2251,
	2144,
	'getSequenceCount',
	'',
	298,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select many sequences related by self->SQ_SIS[R911]->SQ_S[R928];
return cardinality sequences;',
	1,
	'',
	2249);
INSERT INTO O_TFR
	VALUES (2252,
	2144,
	'getSequenceId',
	'',
	296,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
id = GD::NULL_UNIQUE_ID();
select many sequences related by self->SQ_SIS[R911]->SQ_S[R928];
// We''re preincrementing the index
count = -1;
for each sequence in sequences
  if (not_empty sequence)
      count = count+1;
  end if;
  if (count == param.index)
      return sequence.get_ooa_id();  
  end if;
end for;
return id;',
	1,
	'',
	2251);
INSERT INTO O_TPARM
	VALUES (2253,
	2252,
	'index',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2254,
	2144,
	'getComponentCount',
	'',
	298,
	1,
	'select many components related by self->SQ_P[R929]->SQ_COP[R930];
return cardinality components;',
	1,
	'',
	2252);
INSERT INTO O_TFR
	VALUES (2255,
	2144,
	'getComponentId',
	'',
	296,
	1,
	'id = GD::NULL_UNIQUE_ID();
select many components related by self->SQ_P[R929]->SQ_COP[R930];
// We''re preincrementing the index
count = -1;
for each component in components
  if (not_empty component)
      count = count+1;
  end if;
  if (count == param.index)
      return component.get_ooa_id();  
  end if;
end for;
return id;',
	1,
	'',
	2254);
INSERT INTO O_TPARM
	VALUES (2256,
	2255,
	'index',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2257,
	2144,
	'getInstanceCount',
	'',
	298,
	1,
	'select many classInstances related by self->SQ_P[R929]->SQ_CIP[R930];
return cardinality classInstances;',
	1,
	'',
	2255);
INSERT INTO O_TFR
	VALUES (2258,
	2144,
	'getInstanceId',
	'',
	296,
	1,
	'id = GD::NULL_UNIQUE_ID();
select many classInstances related by self->SQ_P[R929]->SQ_CIP[R930];
// We''re preincrementing the index
count = -1;
for each classInstance in classInstances
  if (not_empty classInstance)
      count = count+1;
  end if;
  if (count == param.index)
      return classInstance.get_ooa_id();  
  end if;
end for;
return id;',
	1,
	'',
	2257);
INSERT INTO O_TPARM
	VALUES (2259,
	2258,
	'index',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2260,
	2144,
	'getActorCount',
	'',
	298,
	1,
	'select many actors related by self->SQ_P[R929]->SQ_AP[R930];
return cardinality actors;',
	1,
	'',
	2258);
INSERT INTO O_TFR
	VALUES (2261,
	2144,
	'getActorId',
	'',
	296,
	1,
	'id = GD::NULL_UNIQUE_ID();
select many actors related by self->SQ_P[R929]->SQ_AP[R930];
// We''re preincrementing the index
count = -1;
for each actor in actors
  if (not_empty actor)
      count = count+1;
  end if;
  if (count == param.index)
      return actor.get_ooa_id();  
  end if;
end for;
return id;',
	1,
	'',
	2260);
INSERT INTO O_TPARM
	VALUES (2262,
	2261,
	'index',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2263,
	2144,
	'getExternalEntityCount',
	'',
	298,
	1,
	'select many externalEntities related by self->SQ_P[R929]->SQ_EEP[R930];
return cardinality externalEntities;',
	1,
	'',
	2261);
INSERT INTO O_TFR
	VALUES (2264,
	2144,
	'getExternalEntityId',
	'',
	296,
	1,
	'id = GD::NULL_UNIQUE_ID();
select many externalEntities related by self->SQ_P[R929]->SQ_EEP[R930];
// We''re preincrementing the index
count = -1;
for each externalEntity in externalEntities
  if (not_empty externalEntity)
      count = count+1;
  end if;
  if (count == param.index)
      return externalEntity.get_ooa_id();  
  end if;
end for;
return id;',
	1,
	'',
	2263);
INSERT INTO O_TPARM
	VALUES (2265,
	2264,
	'index',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2266,
	2144,
	'getClassCount',
	'',
	298,
	1,
	'select many classes related by self->SQ_P[R929]->SQ_CP[R930];
return cardinality classes;',
	1,
	'',
	2264);
INSERT INTO O_TFR
	VALUES (2267,
	2144,
	'getClassId',
	'',
	296,
	1,
	'id = GD::NULL_UNIQUE_ID();
select many classes related by self->SQ_P[R929]->SQ_CP[R930];
// We''re preincrementing the index
count = -1;
for each classParticipant in classes
  if (not_empty classParticipant)
      count = count+1;
  end if;
  if (count == param.index)
      return classParticipant.get_ooa_id();  
  end if;
end for;
return id;',
	1,
	'',
	2266);
INSERT INTO O_TPARM
	VALUES (2268,
	2267,
	'index',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2269,
	2144,
	'getFunctionPckgCount',
	'',
	298,
	1,
	'select many functionPckgs related by self->SQ_P[R929]->SQ_FPP[R930];
return cardinality functionPckgs;',
	1,
	'',
	2267);
INSERT INTO O_TFR
	VALUES (2270,
	2144,
	'getFunctionPckgId',
	'',
	296,
	1,
	'id = GD::NULL_UNIQUE_ID();
select many functionPckgs related by self->SQ_P[R929]->SQ_FPP[R930];
// We''re preincrementing the index
count = -1;
for each functionPckg in functionPckgs
  if (not_empty functionPckg)
      count = count+1;
  end if;
  if (count == param.index)
      return functionPckg.get_ooa_id();  
  end if;
end for;
return id;',
	1,
	'',
	2269);
INSERT INTO O_TPARM
	VALUES (2271,
	2270,
	'index',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2272,
	2144,
	'getSystemId',
	'',
	296,
	1,
	'// Sequence.getSystemId()
select one system related by self->S_SYS[R950];
if not_empty system
  return system.Sys_ID;
end if;
select one compPkg related by self->CP_CP[R951];
if not_empty compPkg
  return compPkg.getSystemId();
end if;
select one component related by self->C_C[R952];
if not_empty compPkg
  return component.getSystemId();
end if;
select one parentSeq related by self->SQ_SIS[R928]->SQ_S[R911];
if not_empty parentSeq
  return parentSeq.getSystemId();
end if;
select one domain related by self->S_DOM[R913];
if not_empty domain
  return domain.getSystemId();
end if;
select one subsystem related by self->S_SS[R914];
if not_empty subsystem
  return subsystem.getSystemId();
end if;
USER::logError(msg:"getSystemId()::No parent found for sequence",path:"");
return GD::NULL_UNIQUE_ID();',
	1,
	'',
	2270);
INSERT INTO O_TFR
	VALUES (2273,
	2144,
	'pasteActorParticipant',
	'',
	19,
	1,
	'select any actor from instances of SQ_AP
                                           where (selected.Part_ID == param.id);
if(not_empty actor)
  select one part related by actor->SQ_P[R930];
  select one existingContainer related by part->SQ_S[R929];
  if(not_empty existingContainer)
    unrelate part from existingContainer across R929;
  end if;
  relate part to self across R929;
end if;',
	1,
	'',
	2272);
INSERT INTO O_TPARM
	VALUES (2274,
	2273,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2275,
	2144,
	'pasteClassParticipant',
	'',
	19,
	1,
	'select any cp from instances of SQ_CP where (selected.Part_ID == param.id);
if(not_empty cp)
  select one part related by cp->SQ_P[R930];
  select one existingContainer related by part->SQ_S[R929];
  if(not_empty existingContainer)
    unrelate part from existingContainer across R929;
  end if;
  relate part to self across R929;
end if;',
	1,
	'',
	2273);
INSERT INTO O_TPARM
	VALUES (2276,
	2275,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2277,
	2144,
	'pasteClassInstanceParticipant',
	'',
	19,
	1,
	'select any cip from instances of SQ_CIP where (selected.Part_ID == param.id);
if(not_empty cip)
  select one part related by cip->SQ_P[R930];
  select one existingContainer related by part->SQ_S[R929];
  if(not_empty existingContainer)
    unrelate part from existingContainer across R929;
  end if;
  relate part to self across R929;
end if;',
	1,
	'',
	2275);
INSERT INTO O_TPARM
	VALUES (2278,
	2277,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2279,
	2144,
	'pasteExternalEntityParticipant',
	'',
	19,
	1,
	'select any eep from instances of SQ_EEP where (selected.Part_ID == param.id);
if(not_empty eep)
  select one part related by eep->SQ_P[R930];
  select one existingContainer related by part->SQ_S[R929];
  if(not_empty existingContainer)
    unrelate part from existingContainer across R929;
  end if;
  relate part to self across R929;
end if;',
	1,
	'',
	2277);
INSERT INTO O_TPARM
	VALUES (2280,
	2279,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2281,
	2144,
	'pasteComponentParticipant',
	'',
	19,
	1,
	'select any comp from instances of SQ_COP where (selected.Part_ID == param.id);
if(not_empty comp)
  select one part related by comp->SQ_P[R930];
  select one existingContainer related by part->SQ_S[R929];
  if(not_empty existingContainer)
    unrelate part from existingContainer across R929;
  end if;
  relate part to self across R929;
end if;',
	1,
	'',
	2279);
INSERT INTO O_TPARM
	VALUES (2282,
	2281,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2283,
	2144,
	'pasteFunctionPackageParticipant',
	'',
	19,
	1,
	'select any fpp from instances of SQ_FPP where (selected.Part_ID == param.id);
if(not_empty fpp)
  select one part related by fpp->SQ_P[R930];
  select one existingContainer related by part->SQ_S[R929];
  if(not_empty existingContainer)
    unrelate part from existingContainer across R929;
  end if;
  relate part to self across R929;
end if;',
	1,
	'',
	2281);
INSERT INTO O_TPARM
	VALUES (2284,
	2283,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2285,
	2144,
	'pasteSynchronousMessage',
	'',
	19,
	1,
	'// this method does not need to do anything, just exist
// so that the menu is enabled',
	1,
	'',
	2283);
INSERT INTO O_TPARM
	VALUES (2286,
	2285,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2287,
	2144,
	'pasteAsynchronousMessage',
	'',
	19,
	1,
	'// this method does not need to do anything, just exist
// so that the menu is enabled',
	1,
	'',
	2285);
INSERT INTO O_TPARM
	VALUES (2288,
	2287,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2289,
	2144,
	'pasteReturnMessage',
	'',
	19,
	1,
	'// this method does not need to do anything, just exist
// so that the menu is enabled',
	1,
	'',
	2287);
INSERT INTO O_TPARM
	VALUES (2290,
	2289,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2291,
	2144,
	'pasteLifespan',
	'',
	19,
	1,
	'select any lifespan from instances of SQ_LS where (selected.Part_ID == param.id);
if(not_empty lifespan)
  select one part related by lifespan->SQ_P[R930];
  relate part to self across R929;
end if;',
	1,
	'',
	2289);
INSERT INTO O_TPARM
	VALUES (2292,
	2291,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2293,
	2144,
	'pasteTimingMark',
	'',
	19,
	1,
	'// this method does not need to do anything, just exist
// so that the menu is enabled',
	1,
	'',
	2291);
INSERT INTO O_TPARM
	VALUES (2294,
	2293,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2295,
	2144,
	'pasteTimeSpan',
	'',
	19,
	1,
	'// this method does not need to do anything, just exist
// so that the menu is enabled',
	1,
	'',
	2293);
INSERT INTO O_TPARM
	VALUES (2296,
	2295,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (2144,
	699,
	0,
	712,
	2142,
	2145,
	2143,
	2297,
	2298,
	0,
	0,
	'',
	'Domain',
	'Dom_ID',
	'R913');
INSERT INTO O_RATTR
	VALUES (2297,
	2144,
	712,
	699,
	1,
	'Dom_ID');
INSERT INTO O_ATTR
	VALUES (2297,
	2144,
	2156,
	'Dom_ID',
	'',
	'',
	'Dom_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2299,
	2144);
INSERT INTO O_BATTR
	VALUES (2299,
	2144);
INSERT INTO O_ATTR
	VALUES (2299,
	2144,
	2297,
	'Name',
	'Full Name: Sequence Name',
	'',
	'Name',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (2144,
	701,
	0,
	717,
	2146,
	2148,
	2147,
	2300,
	2301,
	0,
	0,
	'',
	'Subsystem',
	'SS_ID',
	'R914');
INSERT INTO O_RATTR
	VALUES (2300,
	2144,
	717,
	701,
	1,
	'SS_ID');
INSERT INTO O_ATTR
	VALUES (2300,
	2144,
	2299,
	'SS_ID',
	'',
	'',
	'SS_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2302,
	2144);
INSERT INTO O_BATTR
	VALUES (2302,
	2144);
INSERT INTO O_ATTR
	VALUES (2302,
	2144,
	2303,
	'Descrip',
	'Full Name: Sequence Description
Description: A textual description of this sequence.',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (2144,
	705,
	0,
	754,
	2161,
	2163,
	2162,
	2304,
	2305,
	0,
	0,
	'',
	'System Model',
	'Sys_ID',
	'R950');
INSERT INTO O_RATTR
	VALUES (2304,
	2144,
	754,
	705,
	1,
	'Sys_ID');
INSERT INTO O_ATTR
	VALUES (2304,
	2144,
	2302,
	'Sys_ID',
	'',
	'',
	'Sys_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2144,
	773,
	0,
	772,
	854,
	2306,
	856,
	2156,
	2307,
	0,
	0,
	'',
	'Specification Package',
	'Package_ID',
	'R1402');
INSERT INTO O_RATTR
	VALUES (2156,
	2144,
	772,
	773,
	1,
	'Package_ID');
INSERT INTO O_ATTR
	VALUES (2156,
	2144,
	0,
	'Package_ID',
	'',
	'',
	'Package_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2144,
	707,
	0,
	758,
	2164,
	2166,
	2165,
	2308,
	2309,
	0,
	0,
	'',
	'Component Package',
	'Package_ID',
	'R951');
INSERT INTO O_RATTR
	VALUES (2308,
	2144,
	772,
	773,
	1,
	'Package_ID');
INSERT INTO O_ATTR
	VALUES (2308,
	2144,
	2304,
	'Component_Package_ID',
	'',
	'Component_',
	'Package_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2144,
	2151,
	0,
	2153,
	2149,
	2150,
	2152,
	2303,
	2310,
	0,
	0,
	'',
	'Sequence in Sequence',
	'Package_ID',
	'R928');
INSERT INTO O_RATTR
	VALUES (2303,
	2144,
	772,
	773,
	1,
	'Package_ID');
INSERT INTO O_ATTR
	VALUES (2303,
	2144,
	2300,
	'Prev_Package_ID',
	'',
	'Prev_',
	'Package_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2144,
	709,
	0,
	762,
	2167,
	2169,
	2168,
	2311,
	2312,
	0,
	0,
	'',
	'Component',
	'Id',
	'R952');
INSERT INTO O_RATTR
	VALUES (2311,
	2144,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2311,
	2144,
	2308,
	'Component_Id',
	'',
	'Component_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2144);
INSERT INTO O_OIDA
	VALUES (2156,
	2144,
	0,
	'Package_ID');
INSERT INTO O_ID
	VALUES (1,
	2144);
INSERT INTO O_ID
	VALUES (2,
	2144);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2172,
	'Message In Sequence',
	907,
	'SQ_MIS',
	'',
	2133);
INSERT INTO O_REF
	VALUES (2172,
	2141,
	0,
	2177,
	2174,
	2175,
	2176,
	2313,
	2314,
	0,
	0,
	'',
	'Message',
	'Msg_ID',
	'R954');
INSERT INTO O_RATTR
	VALUES (2313,
	2172,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2313,
	2172,
	0,
	'Msg_ID',
	'',
	'',
	'Msg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2172,
	2144,
	0,
	2156,
	2170,
	2173,
	2171,
	2315,
	2316,
	0,
	0,
	'',
	'Sequence',
	'Package_ID',
	'R953');
INSERT INTO O_RATTR
	VALUES (2315,
	2172,
	772,
	773,
	1,
	'Package_ID');
INSERT INTO O_ATTR
	VALUES (2315,
	2172,
	2313,
	'Package_ID',
	'',
	'',
	'Package_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2172);
INSERT INTO O_OIDA
	VALUES (2313,
	2172,
	0,
	'Msg_ID');
INSERT INTO O_OIDA
	VALUES (2315,
	2172,
	0,
	'Package_ID');
INSERT INTO O_ID
	VALUES (1,
	2172);
INSERT INTO O_ID
	VALUES (2,
	2172);
-- BP 7.1 content: Subsystem syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SS
	VALUES (2317,
	'Selection',
	'This subsystem captures concepts related to selections of instances across associations. Association chain, where and instance extent selections are also covered.
Notify_Changes:false
Persistent:false
// This is used by schema_gen to ignore this subsystem (for publication)
TRANSLATE_FOR_EXTERNAL_USE:FALSE
',
	'ACT',
	600,
	1,
	2318);
INSERT INTO S_SID
	VALUES (1,
	2317);
INSERT INTO O_IOBJ
	VALUES (2319,
	70,
	5,
	2317,
	'Value',
	'V_VAL');
INSERT INTO O_IOBJ
	VALUES (2320,
	129,
	5,
	2317,
	'Variable',
	'V_VAR');
INSERT INTO O_IOBJ
	VALUES (2321,
	2322,
	5,
	2317,
	'Association',
	'R_REL');
INSERT INTO O_IOBJ
	VALUES (2323,
	30,
	5,
	2317,
	'Model Class',
	'O_OBJ');
INSERT INTO O_IOBJ
	VALUES (2324,
	30,
	5,
	2317,
	'Model Class',
	'O_OBJ');
INSERT INTO O_IOBJ
	VALUES (2325,
	70,
	5,
	2317,
	'Value',
	'V_VAL');
INSERT INTO R_SIMP
	VALUES (2326);
INSERT INTO R_REL
	VALUES (2326,
	604,
	'',
	2317);
INSERT INTO R_PART
	VALUES (2327,
	2326,
	2328,
	0,
	1,
	'precedes');
INSERT INTO O_RTIDA
	VALUES (2329,
	2327,
	0,
	2326,
	2328);
INSERT INTO R_RTO
	VALUES (2327,
	2326,
	2328,
	0);
INSERT INTO R_OIR
	VALUES (2327,
	2326,
	2328,
	0);
INSERT INTO R_FORM
	VALUES (2327,
	2326,
	2330,
	0,
	1,
	'succeeds');
INSERT INTO R_RGO
	VALUES (2327,
	2326,
	2330);
INSERT INTO R_OIR
	VALUES (2327,
	2326,
	2330,
	0);
INSERT INTO R_SUBSUP
	VALUES (2331);
INSERT INTO R_REL
	VALUES (2331,
	664,
	'',
	2317);
INSERT INTO R_SUPER
	VALUES (2332,
	2331,
	2333);
INSERT INTO O_RTIDA
	VALUES (2334,
	2332,
	0,
	2331,
	2333);
INSERT INTO R_RTO
	VALUES (2332,
	2331,
	2333,
	0);
INSERT INTO R_OIR
	VALUES (2332,
	2331,
	2333,
	0);
INSERT INTO R_SUB
	VALUES (2335,
	2331,
	2336);
INSERT INTO R_RGO
	VALUES (2335,
	2331,
	2336);
INSERT INTO R_OIR
	VALUES (2335,
	2331,
	2336,
	0);
INSERT INTO R_SUB
	VALUES (2337,
	2331,
	2338);
INSERT INTO R_RGO
	VALUES (2337,
	2331,
	2338);
INSERT INTO R_OIR
	VALUES (2337,
	2331,
	2338,
	0);
INSERT INTO R_SIMP
	VALUES (2339);
INSERT INTO R_REL
	VALUES (2339,
	610,
	'',
	2317);
INSERT INTO R_FORM
	VALUES (2340,
	2339,
	2341,
	0,
	1,
	'');
INSERT INTO R_RGO
	VALUES (2340,
	2339,
	2341);
INSERT INTO R_OIR
	VALUES (2340,
	2339,
	2341,
	0);
INSERT INTO R_PART
	VALUES (70,
	2339,
	2342,
	0,
	0,
	'where clause');
INSERT INTO O_RTIDA
	VALUES (72,
	70,
	0,
	2339,
	2342);
INSERT INTO R_RTO
	VALUES (70,
	2339,
	2342,
	0);
INSERT INTO R_OIR
	VALUES (70,
	2339,
	2342,
	2319);
INSERT INTO R_SIMP
	VALUES (2343);
INSERT INTO R_REL
	VALUES (2343,
	611,
	'',
	2317);
INSERT INTO R_FORM
	VALUES (2335,
	2343,
	2344,
	0,
	1,
	'');
INSERT INTO R_RGO
	VALUES (2335,
	2343,
	2344);
INSERT INTO R_OIR
	VALUES (2335,
	2343,
	2344,
	0);
INSERT INTO R_PART
	VALUES (70,
	2343,
	2345,
	0,
	0,
	'where clause');
INSERT INTO O_RTIDA
	VALUES (72,
	70,
	0,
	2343,
	2345);
INSERT INTO R_RTO
	VALUES (70,
	2343,
	2345,
	0);
INSERT INTO R_OIR
	VALUES (70,
	2343,
	2345,
	2319);
INSERT INTO R_SIMP
	VALUES (2346);
INSERT INTO R_REL
	VALUES (2346,
	665,
	'',
	2317);
INSERT INTO R_FORM
	VALUES (2340,
	2346,
	2347,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (2340,
	2346,
	2347);
INSERT INTO R_OIR
	VALUES (2340,
	2346,
	2347,
	0);
INSERT INTO R_PART
	VALUES (129,
	2346,
	2348,
	0,
	0,
	'result');
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	2346,
	2348);
INSERT INTO R_RTO
	VALUES (129,
	2346,
	2348,
	0);
INSERT INTO R_OIR
	VALUES (129,
	2346,
	2348,
	2320);
INSERT INTO R_SIMP
	VALUES (2349);
INSERT INTO R_REL
	VALUES (2349,
	639,
	'',
	2317);
INSERT INTO R_FORM
	VALUES (2350,
	2349,
	2351,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (2350,
	2349,
	2351);
INSERT INTO R_OIR
	VALUES (2350,
	2349,
	2351,
	0);
INSERT INTO R_PART
	VALUES (129,
	2349,
	2352,
	0,
	0,
	'selection');
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	2349,
	2352);
INSERT INTO R_RTO
	VALUES (129,
	2349,
	2352,
	0);
INSERT INTO R_OIR
	VALUES (129,
	2349,
	2352,
	2320);
INSERT INTO R_SIMP
	VALUES (2353);
INSERT INTO R_REL
	VALUES (2353,
	638,
	'',
	2317);
INSERT INTO R_FORM
	VALUES (2332,
	2353,
	2354,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (2332,
	2353,
	2354);
INSERT INTO R_OIR
	VALUES (2332,
	2353,
	2354,
	0);
INSERT INTO R_PART
	VALUES (129,
	2353,
	2355,
	0,
	0,
	'selection');
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	2353,
	2355);
INSERT INTO R_RTO
	VALUES (129,
	2353,
	2355,
	0);
INSERT INTO R_OIR
	VALUES (129,
	2353,
	2355,
	2320);
INSERT INTO R_SIMP
	VALUES (2356);
INSERT INTO R_REL
	VALUES (2356,
	676,
	'',
	2317);
INSERT INTO R_FORM
	VALUES (2340,
	2356,
	2357,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (2340,
	2356,
	2357);
INSERT INTO R_OIR
	VALUES (2340,
	2356,
	2357,
	0);
INSERT INTO R_PART
	VALUES (30,
	2356,
	2358,
	0,
	1,
	'from extent of');
INSERT INTO O_RTIDA
	VALUES (150,
	30,
	0,
	2356,
	2358);
INSERT INTO R_RTO
	VALUES (30,
	2356,
	2358,
	0);
INSERT INTO R_OIR
	VALUES (30,
	2356,
	2358,
	2323);
INSERT INTO R_SIMP
	VALUES (2359);
INSERT INTO R_REL
	VALUES (2359,
	677,
	'',
	2317);
INSERT INTO R_FORM
	VALUES (2350,
	2359,
	2360,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (2350,
	2359,
	2360);
INSERT INTO R_OIR
	VALUES (2350,
	2359,
	2360,
	0);
INSERT INTO R_PART
	VALUES (30,
	2359,
	2361,
	0,
	1,
	'from extent of');
INSERT INTO O_RTIDA
	VALUES (150,
	30,
	0,
	2359,
	2361);
INSERT INTO R_RTO
	VALUES (30,
	2359,
	2361,
	0);
INSERT INTO R_OIR
	VALUES (30,
	2359,
	2361,
	2323);
INSERT INTO R_SIMP
	VALUES (2362);
INSERT INTO R_REL
	VALUES (2362,
	678,
	'',
	2317);
INSERT INTO R_FORM
	VALUES (2327,
	2362,
	2363,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (2327,
	2362,
	2363);
INSERT INTO R_OIR
	VALUES (2327,
	2362,
	2363,
	0);
INSERT INTO R_PART
	VALUES (30,
	2362,
	2364,
	0,
	0,
	'specifies instances of');
INSERT INTO O_RTIDA
	VALUES (150,
	30,
	0,
	2362,
	2364);
INSERT INTO R_RTO
	VALUES (30,
	2362,
	2364,
	0);
INSERT INTO R_OIR
	VALUES (30,
	2362,
	2364,
	2324);
INSERT INTO R_SIMP
	VALUES (2365);
INSERT INTO R_REL
	VALUES (2365,
	681,
	'',
	2317);
INSERT INTO R_FORM
	VALUES (2327,
	2365,
	2366,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (2327,
	2365,
	2366);
INSERT INTO R_OIR
	VALUES (2327,
	2365,
	2366,
	0);
INSERT INTO R_PART
	VALUES (2322,
	2365,
	2367,
	0,
	0,
	'specifies traversal of');
INSERT INTO O_RTIDA
	VALUES (2368,
	2322,
	0,
	2365,
	2367);
INSERT INTO R_RTO
	VALUES (2322,
	2365,
	2367,
	0);
INSERT INTO R_OIR
	VALUES (2322,
	2365,
	2367,
	2321);
INSERT INTO R_SIMP
	VALUES (2369);
INSERT INTO R_REL
	VALUES (2369,
	637,
	'',
	2317);
INSERT INTO R_PART
	VALUES (2332,
	2369,
	2370,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (2334,
	2332,
	0,
	2369,
	2370);
INSERT INTO R_RTO
	VALUES (2332,
	2369,
	2370,
	0);
INSERT INTO R_OIR
	VALUES (2332,
	2369,
	2370,
	0);
INSERT INTO R_FORM
	VALUES (2327,
	2369,
	2371,
	0,
	0,
	'starts with');
INSERT INTO R_RGO
	VALUES (2327,
	2369,
	2371);
INSERT INTO R_OIR
	VALUES (2327,
	2369,
	2371,
	0);
INSERT INTO R_SIMP
	VALUES (2372);
INSERT INTO R_REL
	VALUES (2372,
	613,
	'This association captures the variable used to start the navigation chain.
Note that the Value we are related to always has a subtype of either 
Instance Reference or Instance Set Reference, which will point to the variable 
that starts the navigation change.',
	2317);
INSERT INTO R_FORM
	VALUES (2332,
	2372,
	2373,
	0,
	1,
	'');
INSERT INTO R_RGO
	VALUES (2332,
	2372,
	2373);
INSERT INTO R_OIR
	VALUES (2332,
	2372,
	2373,
	0);
INSERT INTO R_PART
	VALUES (70,
	2372,
	2374,
	0,
	0,
	'starting point');
INSERT INTO O_RTIDA
	VALUES (72,
	70,
	0,
	2372,
	2374);
INSERT INTO R_RTO
	VALUES (70,
	2372,
	2374,
	0);
INSERT INTO R_OIR
	VALUES (70,
	2372,
	2374,
	2325);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2335,
	'Select Related Where',
	604,
	'ACT_SRW',
	'This class represents a statement that selects a set of instances related across one or more associations with the support of a where clause.  The where clause consists of a boolean expression containing the special instance handle ''selected''. If the expression evaluates to true, the instance represented by ''selected '' is added to the result set of the statement.
',
	2317);
INSERT INTO O_TFR
	VALUES (2375,
	2335,
	'execute',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (2376,
	2375,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (2335,
	2332,
	0,
	2334,
	2331,
	2336,
	2333,
	2377,
	2378,
	0,
	0,
	'',
	'Select',
	'Statement_ID',
	'R664');
INSERT INTO O_RATTR
	VALUES (2377,
	2335,
	685,
	686,
	1,
	'Statement_ID');
INSERT INTO O_ATTR
	VALUES (2377,
	2335,
	0,
	'Statement_ID',
	'

',
	'',
	'Statement_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2335,
	70,
	0,
	72,
	2343,
	2344,
	2345,
	2379,
	2380,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R611.''where clause''');
INSERT INTO O_RATTR
	VALUES (2379,
	2335,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (2379,
	2335,
	2377,
	'Where_Clause_Value_ID',
	'',
	'Where_Clause_',
	'Value_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2335);
INSERT INTO O_OIDA
	VALUES (2377,
	2335,
	0,
	'Statement_ID');
INSERT INTO O_ID
	VALUES (1,
	2335);
INSERT INTO O_ID
	VALUES (2,
	2335);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2337,
	'Select Related By',
	623,
	'ACT_SR',
	'This class represents a statement that selects a set of instances related across one or more associations.',
	2317);
INSERT INTO O_REF
	VALUES (2337,
	2332,
	0,
	2334,
	2331,
	2338,
	2333,
	2381,
	2382,
	0,
	0,
	'',
	'Select',
	'Statement_ID',
	'R664');
INSERT INTO O_RATTR
	VALUES (2381,
	2337,
	685,
	686,
	1,
	'Statement_ID');
INSERT INTO O_ATTR
	VALUES (2381,
	2337,
	0,
	'Statement_ID',
	'

',
	'',
	'Statement_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2337);
INSERT INTO O_OIDA
	VALUES (2381,
	2337,
	0,
	'Statement_ID');
INSERT INTO O_ID
	VALUES (1,
	2337);
INSERT INTO O_ID
	VALUES (2,
	2337);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2340,
	'Select From Instances Where',
	611,
	'ACT_FIW',
	'This class represents a statement that selects a set of  instances from a class extent with the support of a where clause.  The where clause consists of a boolean expression containing the special instance handle ''selected''. If the expression evaluates to true, the instance represented by ''selected '' is added to the result set of the statement.
',
	2317);
INSERT INTO O_TFR
	VALUES (2383,
	2340,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one obj related by self->O_OBJ[R676];
if ( not_empty obj )
  unrelate self from obj across R676;
end if;

select one var related by self->V_VAR[R665];
if ( not_empty var )
  unrelate self from var across R665;
  if ( not var.Declared )
    var.dispose();
  end if;
end if;

select one val related by self->V_VAL[R610];
if ( not_empty val )
  unrelate self from val across R610;
  val.dispose();
end if;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (2384,
	2340,
	'execute',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	2383);
INSERT INTO O_TPARM
	VALUES (2385,
	2384,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (2340,
	686,
	0,
	685,
	2386,
	2387,
	2388,
	2389,
	2390,
	0,
	0,
	'',
	'Statement',
	'Statement_ID',
	'R603');
INSERT INTO O_RATTR
	VALUES (2389,
	2340,
	685,
	686,
	1,
	'Statement_ID');
INSERT INTO O_ATTR
	VALUES (2389,
	2340,
	0,
	'Statement_ID',
	'

',
	'',
	'Statement_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2340,
	129,
	0,
	131,
	2346,
	2347,
	2348,
	2391,
	2392,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R665.''result''');
INSERT INTO O_RATTR
	VALUES (2391,
	2340,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (2391,
	2340,
	2389,
	'Var_ID',
	'

',
	'',
	'Var_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2393,
	2340);
INSERT INTO O_BATTR
	VALUES (2393,
	2340);
INSERT INTO O_ATTR
	VALUES (2393,
	2340,
	2391,
	'is_implicit',
	'Full Name: Is Implicit
Specifies whether the resulting instance handle found is being used for the first time in this scope or not.',
	'',
	'is_implicit',
	0,
	316,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2394,
	2340);
INSERT INTO O_BATTR
	VALUES (2394,
	2340);
INSERT INTO O_ATTR
	VALUES (2394,
	2340,
	2393,
	'cardinality',
	'Full Name: Selection Cardinality
Specifies whether the selection produces a set or an instance as a result.    The cardinality value can be one of the following: one, any, or many. ',
	'',
	'cardinality',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (2340,
	70,
	0,
	72,
	2339,
	2341,
	2342,
	2395,
	2396,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R610.''where clause''');
INSERT INTO O_RATTR
	VALUES (2395,
	2340,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (2395,
	2340,
	2394,
	'Where_Clause_Value_ID',
	'

',
	'Where_Clause_',
	'Value_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2397,
	2340);
INSERT INTO O_BATTR
	VALUES (2397,
	2340);
INSERT INTO O_ATTR
	VALUES (2397,
	2340,
	2398,
	'extentLineNumber',
	'',
	'',
	'extentLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2399,
	2340);
INSERT INTO O_BATTR
	VALUES (2399,
	2340);
INSERT INTO O_ATTR
	VALUES (2399,
	2340,
	2397,
	'extentColumn',
	'',
	'',
	'extentColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_REF
	VALUES (2340,
	30,
	0,
	150,
	2356,
	2357,
	2358,
	2398,
	2400,
	0,
	0,
	'',
	'Model Class',
	'Obj_ID',
	'R676.''from extent of''');
INSERT INTO O_RATTR
	VALUES (2398,
	2340,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2398,
	2340,
	2395,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2340);
INSERT INTO O_OIDA
	VALUES (2389,
	2340,
	0,
	'Statement_ID');
INSERT INTO O_ID
	VALUES (1,
	2340);
INSERT INTO O_ID
	VALUES (2,
	2340);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2350,
	'Select From Instances',
	612,
	'ACT_FIO',
	'This class represents a statement that selects a set of  instances from a class extent.',
	2317);
INSERT INTO O_TFR
	VALUES (2401,
	2350,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one obj related by self->O_OBJ[R677];
if ( not_empty obj )
  unrelate self from obj across R677;
end if;

select one var related by self->V_VAR[R639];
if ( not_empty var )
  unrelate self from var across R639;
  if ( not var.Declared )
    var.dispose();
  end if;
end if;
delete object instance self;

',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (2402,
	2350,
	'execute',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	2401);
INSERT INTO O_TPARM
	VALUES (2403,
	2402,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (2350,
	686,
	0,
	685,
	2386,
	2404,
	2388,
	2405,
	2406,
	0,
	0,
	'',
	'Statement',
	'Statement_ID',
	'R603');
INSERT INTO O_RATTR
	VALUES (2405,
	2350,
	685,
	686,
	1,
	'Statement_ID');
INSERT INTO O_ATTR
	VALUES (2405,
	2350,
	0,
	'Statement_ID',
	'

',
	'',
	'Statement_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2350,
	129,
	0,
	131,
	2349,
	2351,
	2352,
	2407,
	2408,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R639.''selection''');
INSERT INTO O_RATTR
	VALUES (2407,
	2350,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (2407,
	2350,
	2405,
	'Var_ID',
	'

',
	'',
	'Var_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2409,
	2350);
INSERT INTO O_BATTR
	VALUES (2409,
	2350);
INSERT INTO O_ATTR
	VALUES (2409,
	2350,
	2407,
	'is_implicit',
	'Full Name: Is Implicit
Specifies whether the resulting instance handle found is being used for the first time in this scope or not.',
	'',
	'is_implicit',
	0,
	316,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2410,
	2350);
INSERT INTO O_BATTR
	VALUES (2410,
	2350);
INSERT INTO O_ATTR
	VALUES (2410,
	2350,
	2409,
	'cardinality',
	'Full Name: Selection Cardinality
Specifies whether the selection produces a set or an instance as a result.    The cardinality value can be one of the following: one, any, or many.',
	'',
	'cardinality',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2411,
	2350);
INSERT INTO O_BATTR
	VALUES (2411,
	2350);
INSERT INTO O_ATTR
	VALUES (2411,
	2350,
	2412,
	'extentLineNumber',
	'',
	'',
	'extentLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2413,
	2350);
INSERT INTO O_BATTR
	VALUES (2413,
	2350);
INSERT INTO O_ATTR
	VALUES (2413,
	2350,
	2411,
	'extentColumn',
	'',
	'',
	'extentColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_REF
	VALUES (2350,
	30,
	0,
	150,
	2359,
	2360,
	2361,
	2412,
	2414,
	0,
	0,
	'',
	'Model Class',
	'Obj_ID',
	'R677.''from extent of''');
INSERT INTO O_RATTR
	VALUES (2412,
	2350,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2412,
	2350,
	2410,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2350);
INSERT INTO O_OIDA
	VALUES (2405,
	2350,
	0,
	'Statement_ID');
INSERT INTO O_ID
	VALUES (1,
	2350);
INSERT INTO O_ID
	VALUES (2,
	2350);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2332,
	'Select',
	605,
	'ACT_SEL',
	'This class represents a statement that selects a set of  instances.',
	2317);
INSERT INTO O_TFR
	VALUES (2415,
	2332,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one sr related by self->ACT_SR[R664];
if ( not_empty sr )
  unrelate self from sr across R664;
  delete object instance sr;
end if;

select one srw related by self->ACT_SRW[R664];
if ( not_empty srw )
  unrelate self from srw across R664;
  select one val related by srw->V_VAL[R611];
  if ( not_empty val )
    unrelate srw from val across R611;
    val.dispose();
  end if;
  delete object instance srw;
end if;

select one var related by self->V_VAR[R638];
if ( not_empty var )
  unrelate self from var across R638;
  if ( not var.Declared )
    var.dispose();
  end if;
end if;

select one val related by self->V_VAL[R613];
if ( not_empty val )
  unrelate self from val across R613;
  val.dispose();
end if;

select one link related by self->ACT_LNK[R637];
if ( not_empty link )
  unrelate self from link across R637;
  while ( not_empty link )
    this_link = link;
    select one link related by this_link->ACT_LNK[R604.''precedes''];
    this_link.dispose();
  end while;
end if;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (2416,
	2332,
	'execute',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	2415);
INSERT INTO O_TPARM
	VALUES (2417,
	2416,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (2332,
	686,
	0,
	685,
	2386,
	2418,
	2388,
	2334,
	2419,
	0,
	0,
	'',
	'Statement',
	'Statement_ID',
	'R603');
INSERT INTO O_RATTR
	VALUES (2334,
	2332,
	685,
	686,
	1,
	'Statement_ID');
INSERT INTO O_ATTR
	VALUES (2334,
	2332,
	0,
	'Statement_ID',
	'

',
	'',
	'Statement_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2332,
	129,
	0,
	131,
	2353,
	2354,
	2355,
	2420,
	2421,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R638.''selection''');
INSERT INTO O_RATTR
	VALUES (2420,
	2332,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (2420,
	2332,
	2334,
	'Var_ID',
	'

',
	'',
	'Var_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2422,
	2332);
INSERT INTO O_BATTR
	VALUES (2422,
	2332);
INSERT INTO O_ATTR
	VALUES (2422,
	2332,
	2420,
	'is_implicit',
	'Full Name: Is Implicit
Specifies whether the resulting instance handle found by traversing
R638 is being used for the first time in this scope or not.',
	'',
	'is_implicit',
	0,
	316,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2423,
	2332);
INSERT INTO O_BATTR
	VALUES (2423,
	2332);
INSERT INTO O_ATTR
	VALUES (2423,
	2332,
	2422,
	'cardinality',
	'Full Name: Selection Cardinality
Specifies whether the selection produces a set or an instance as a result.  The cardinality value can be one of the following: one, any, or many.',
	'',
	'cardinality',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (2332,
	70,
	0,
	72,
	2372,
	2373,
	2374,
	2424,
	2425,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R613.''starting point''');
INSERT INTO O_RATTR
	VALUES (2424,
	2332,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (2424,
	2332,
	2423,
	'Value_ID',
	'

',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2332);
INSERT INTO O_OIDA
	VALUES (2334,
	2332,
	0,
	'Statement_ID');
INSERT INTO O_ID
	VALUES (1,
	2332);
INSERT INTO O_ID
	VALUES (2,
	2332);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2327,
	'Chain Link',
	627,
	'ACT_LNK',
	'This class represents a link in an association chain. In the string "self->O_OND[R5]->D_D[R7]", there are two chain links, one from the current instance to an instance (or set) of the class with keyletters "D_OND" found by traversing association "R5" and from there to an instance or set of the class with keyletters "D_D", crossing "R7". Each link is captured as an instance of this meta-model class. The target class is captured for each link, as is the association used for the traversal. The order of traversal is significant and is also captured.',
	2317);
INSERT INTO O_TFR
	VALUES (2426,
	2327,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one obj related by self->O_OBJ[R678];
if ( not_empty obj )
  unrelate self from obj across R678;
end if;
select one rel related by self->R_REL[R681];
if ( not_empty rel )
  unrelate self from rel across R681;
end if;
select one selection related by self->ACT_SEL[R637];
if (not_empty selection)
  unrelate self from selection across R637;
end if;
select one next_link related by self->ACT_LNK[R604.''precedes''];
select one prior_link related by self->ACT_LNK[R604.''succeeds''];
if ( not_empty next_link and not_empty prior_link )
  // in the middle of the chain
  unrelate self from next_link across R604.''precedes'';
  unrelate prior_link from self across R604.''precedes'';
  relate prior_link to next_link across R604.''precedes'';
else
  if ( not_empty prior_link and empty next_link )
    // we''re last in list
    unrelate prior_link from self across R604.''precedes'';
  else
    // we''re first in list
    unrelate self from next_link across R604.''precedes'';
  end if;
end if;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (2329,
	2327);
INSERT INTO O_BATTR
	VALUES (2329,
	2327);
INSERT INTO O_ATTR
	VALUES (2329,
	2327,
	0,
	'Link_ID',
	'',
	'',
	'Link_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2427,
	2327);
INSERT INTO O_BATTR
	VALUES (2427,
	2327);
INSERT INTO O_ATTR
	VALUES (2427,
	2327,
	2329,
	'Rel_Phrase',
	'Full Name: Relationship Phrase
Specifies the relationship phrase at the target end of the association.
Essential for disambiguating the navigation direction across the link.',
	'',
	'Rel_Phrase',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (2327,
	2332,
	0,
	2334,
	2369,
	2371,
	2370,
	2428,
	2429,
	0,
	0,
	'',
	'Select',
	'Statement_ID',
	'R637');
INSERT INTO O_RATTR
	VALUES (2428,
	2327,
	685,
	686,
	1,
	'Statement_ID');
INSERT INTO O_ATTR
	VALUES (2428,
	2327,
	2427,
	'Statement_ID',
	'

',
	'',
	'Statement_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2327,
	2327,
	0,
	2329,
	2326,
	2330,
	2328,
	2430,
	2431,
	0,
	0,
	'',
	'Chain Link',
	'Link_ID',
	'R604');
INSERT INTO O_RATTR
	VALUES (2430,
	2327,
	2329,
	2327,
	1,
	'Link_ID');
INSERT INTO O_ATTR
	VALUES (2430,
	2327,
	2432,
	'Next_Link_ID',
	'',
	'Next_',
	'Link_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2433,
	2327);
INSERT INTO O_BATTR
	VALUES (2433,
	2327);
INSERT INTO O_ATTR
	VALUES (2433,
	2327,
	2430,
	'Mult',
	'This attribute has the value "one" if following this link 
results in a single instance, or "many" if following this
link can result in multiple instances.

',
	'',
	'Mult',
	0,
	2434,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2435,
	2327);
INSERT INTO O_BATTR
	VALUES (2435,
	2327);
INSERT INTO O_ATTR
	VALUES (2435,
	2327,
	2436,
	'modelClassKeyLettersLineNumber',
	'',
	'',
	'modelClassKeyLettersLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2437,
	2327);
INSERT INTO O_BATTR
	VALUES (2437,
	2327);
INSERT INTO O_ATTR
	VALUES (2437,
	2327,
	2435,
	'modelClassKeyLettersColumn',
	'',
	'',
	'modelClassKeyLettersColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2438,
	2327);
INSERT INTO O_BATTR
	VALUES (2438,
	2327);
INSERT INTO O_ATTR
	VALUES (2438,
	2327,
	2437,
	'associationNumberLineNumber',
	'',
	'',
	'associationNumberLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2439,
	2327);
INSERT INTO O_BATTR
	VALUES (2439,
	2327);
INSERT INTO O_ATTR
	VALUES (2439,
	2327,
	2438,
	'associationNumberColumn',
	'',
	'',
	'associationNumberColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2440,
	2327);
INSERT INTO O_BATTR
	VALUES (2440,
	2327);
INSERT INTO O_ATTR
	VALUES (2440,
	2327,
	2439,
	'phraseLineNumber',
	'',
	'',
	'phraseLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2441,
	2327);
INSERT INTO O_BATTR
	VALUES (2441,
	2327);
INSERT INTO O_ATTR
	VALUES (2441,
	2327,
	2440,
	'phraseColumn',
	'',
	'',
	'phraseColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_REF
	VALUES (2327,
	30,
	0,
	150,
	2362,
	2363,
	2364,
	2436,
	2442,
	0,
	0,
	'',
	'Model Class',
	'Obj_ID',
	'R678');
INSERT INTO O_RATTR
	VALUES (2436,
	2327,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2436,
	2327,
	2433,
	'Obj_ID',
	'',
	'',
	'Obj_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2327,
	2322,
	0,
	2368,
	2365,
	2366,
	2367,
	2432,
	2443,
	0,
	0,
	'',
	'Association',
	'Rel_ID',
	'R681');
INSERT INTO O_RATTR
	VALUES (2432,
	2327,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2432,
	2327,
	2428,
	'Rel_ID',
	'

',
	'',
	'Rel_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2327);
INSERT INTO O_OIDA
	VALUES (2329,
	2327,
	0,
	'Link_ID');
INSERT INTO O_ID
	VALUES (1,
	2327);
INSERT INTO O_ID
	VALUES (2,
	2327);
-- BP 7.1 content: Subsystem syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SS
	VALUES (2444,
	'Search',
	'',
	'SE',
	0,
	1,
	0);
INSERT INTO S_SID
	VALUES (1,
	2444);
-- BP 7.1 content: Subsystem syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SS
	VALUES (2445,
	'Result',
	'',
	'SR',
	9800,
	1,
	0);
INSERT INTO O_IOBJ
	VALUES (2446,
	2447,
	0,
	2445,
	'Search Participant',
	'SP_SP');
INSERT INTO R_SIMP
	VALUES (2448);
INSERT INTO R_REL
	VALUES (2448,
	9800,
	'',
	2445);
INSERT INTO R_PART
	VALUES (2449,
	2448,
	2450,
	0,
	0,
	'provides for');
INSERT INTO O_RTIDA
	VALUES (2451,
	2449,
	0,
	2448,
	2450);
INSERT INTO R_RTO
	VALUES (2449,
	2448,
	2450,
	0);
INSERT INTO R_OIR
	VALUES (2449,
	2448,
	2450,
	0);
INSERT INTO R_FORM
	VALUES (2452,
	2448,
	2453,
	1,
	1,
	'consists of');
INSERT INTO R_RGO
	VALUES (2452,
	2448,
	2453);
INSERT INTO R_OIR
	VALUES (2452,
	2448,
	2453,
	0);
INSERT INTO R_SUBSUP
	VALUES (2454);
INSERT INTO R_REL
	VALUES (2454,
	9801,
	'',
	2445);
INSERT INTO R_SUPER
	VALUES (2452,
	2454,
	2455);
INSERT INTO O_RTIDA
	VALUES (2456,
	2452,
	0,
	2454,
	2455);
INSERT INTO R_RTO
	VALUES (2452,
	2454,
	2455,
	0);
INSERT INTO R_OIR
	VALUES (2452,
	2454,
	2455,
	0);
INSERT INTO R_SUB
	VALUES (2457,
	2454,
	2458);
INSERT INTO R_RGO
	VALUES (2457,
	2454,
	2458);
INSERT INTO R_OIR
	VALUES (2457,
	2454,
	2458,
	0);
INSERT INTO R_SUB
	VALUES (2459,
	2454,
	2460);
INSERT INTO R_RGO
	VALUES (2459,
	2454,
	2460);
INSERT INTO R_OIR
	VALUES (2459,
	2454,
	2460,
	0);
INSERT INTO R_SIMP
	VALUES (2461);
INSERT INTO R_REL
	VALUES (2461,
	9802,
	'',
	2445);
INSERT INTO R_FORM
	VALUES (2449,
	2461,
	2462,
	0,
	1,
	'');
INSERT INTO R_RGO
	VALUES (2449,
	2461,
	2462);
INSERT INTO R_OIR
	VALUES (2449,
	2461,
	2462,
	0);
INSERT INTO R_PART
	VALUES (2447,
	2461,
	2463,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (2464,
	2447,
	0,
	2461,
	2463);
INSERT INTO R_RTO
	VALUES (2447,
	2461,
	2463,
	0);
INSERT INTO R_OIR
	VALUES (2447,
	2461,
	2463,
	2446);
INSERT INTO S_SIS
	VALUES (2444,
	2445);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2449,
	'Search Result',
	9800,
	'SR_SR',
	'',
	2445);
INSERT INTO O_TFR
	VALUES (2465,
	2449,
	'dispose',
	'',
	19,
	1,
	'select many matches related by self->SR_M[R9800];
for each match in matches
  match.dispose();
end for;
select one participant related by self->SP_SP[R9802];
if(not_empty participant)
  unrelate self from participant across R9802;
end if;
select one engine related by self->SEN_E[R9503];
if(not_empty engine)
  unrelate self from engine across R9503;
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (2451,
	2449);
INSERT INTO O_BATTR
	VALUES (2451,
	2449);
INSERT INTO O_ATTR
	VALUES (2451,
	2449,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	296,
	'',
	'');
INSERT INTO O_REF
	VALUES (2449,
	2466,
	0,
	2467,
	2468,
	2469,
	2470,
	2471,
	2472,
	0,
	0,
	'',
	'Search Engine',
	'Id',
	'R9503');
INSERT INTO O_RATTR
	VALUES (2471,
	2449,
	2467,
	2466,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (2471,
	2449,
	2451,
	'Engine_Id',
	'',
	'Engine_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2449,
	2447,
	0,
	2464,
	2461,
	2462,
	2463,
	2473,
	2474,
	0,
	0,
	'',
	'Search Participant',
	'Id',
	'R9802');
INSERT INTO O_RATTR
	VALUES (2473,
	2449,
	2464,
	2447,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (2473,
	2449,
	2471,
	'MatchedParticipant_Id',
	'',
	'MatchedParticipant_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2449);
INSERT INTO O_OIDA
	VALUES (2451,
	2449,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2449);
INSERT INTO O_ID
	VALUES (2,
	2449);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2457,
	'Name Match',
	9803,
	'SR_NM',
	'',
	2445);
INSERT INTO O_NBATTR
	VALUES (2475,
	2457);
INSERT INTO O_BATTR
	VALUES (2475,
	2457);
INSERT INTO O_ATTR
	VALUES (2475,
	2457,
	2476,
	'Unnamed Attribute',
	'',
	'',
	'Unnamed Attribute',
	0,
	298,
	'',
	'');
INSERT INTO O_REF
	VALUES (2457,
	2452,
	0,
	2456,
	2454,
	2458,
	2455,
	2476,
	2477,
	0,
	0,
	'',
	'Match',
	'Id',
	'R9801');
INSERT INTO O_RATTR
	VALUES (2476,
	2457,
	2456,
	2452,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (2476,
	2457,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2457);
INSERT INTO O_OIDA
	VALUES (2476,
	2457,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2457);
INSERT INTO O_ID
	VALUES (2,
	2457);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2452,
	'Match',
	9801,
	'SR_M',
	'',
	2445);
INSERT INTO O_TFR
	VALUES (2478,
	2452,
	'dispose',
	'',
	19,
	1,
	'select one contentMatch related by self->SR_CM[R9801];
if(not_empty contentMatch)
  unrelate self from contentMatch across R9801;
  delete object instance contentMatch;
end if;
select one nameMatch related by self->SR_NM[R9801];
if(not_empty nameMatch)
  unrelate self from nameMatch across R9801;
  delete object instance nameMatch;
end if;
select one result related by self->SR_SR[R9800];
if(not_empty result)
  unrelate self from result across R9800;
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (2479,
	2452,
	'convertToInstance',
	'Translate:native',
	317,
	1,
	'	return this;',
	0,
	'',
	2478);
INSERT INTO O_NBATTR
	VALUES (2456,
	2452);
INSERT INTO O_BATTR
	VALUES (2456,
	2452);
INSERT INTO O_ATTR
	VALUES (2456,
	2452,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	296,
	'',
	'');
INSERT INTO O_REF
	VALUES (2452,
	2449,
	0,
	2451,
	2448,
	2453,
	2450,
	2480,
	2481,
	0,
	0,
	'',
	'Search Result',
	'Id',
	'R9800');
INSERT INTO O_RATTR
	VALUES (2480,
	2452,
	2451,
	2449,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (2480,
	2452,
	2456,
	'Result_Id',
	'',
	'Result_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2452);
INSERT INTO O_OIDA
	VALUES (2456,
	2452,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2452);
INSERT INTO O_ID
	VALUES (2,
	2452);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2482,
	'Content Match Result',
	9804,
	'SR_CMR',
	'',
	2445);
INSERT INTO O_NBATTR
	VALUES (2483,
	2482);
INSERT INTO O_BATTR
	VALUES (2483,
	2482);
INSERT INTO O_ATTR
	VALUES (2483,
	2482,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	296,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2484,
	2482);
INSERT INTO O_BATTR
	VALUES (2484,
	2482);
INSERT INTO O_ATTR
	VALUES (2484,
	2482,
	2483,
	'startPosition',
	'',
	'',
	'startPosition',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2485,
	2482);
INSERT INTO O_BATTR
	VALUES (2485,
	2482);
INSERT INTO O_ATTR
	VALUES (2485,
	2482,
	2484,
	'length',
	'',
	'',
	'length',
	0,
	298,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2482);
INSERT INTO O_OIDA
	VALUES (2483,
	2482,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2482);
INSERT INTO O_ID
	VALUES (2,
	2482);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2459,
	'Content Match',
	9802,
	'SR_CM',
	'',
	2445);
INSERT INTO O_NBATTR
	VALUES (2486,
	2459);
INSERT INTO O_BATTR
	VALUES (2486,
	2459);
INSERT INTO O_ATTR
	VALUES (2486,
	2459,
	2487,
	'startPosition',
	'',
	'',
	'startPosition',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2488,
	2459);
INSERT INTO O_BATTR
	VALUES (2488,
	2459);
INSERT INTO O_ATTR
	VALUES (2488,
	2459,
	2486,
	'matchLength',
	'',
	'',
	'matchLength',
	0,
	298,
	'',
	'');
INSERT INTO O_REF
	VALUES (2459,
	2452,
	0,
	2456,
	2454,
	2460,
	2455,
	2487,
	2489,
	0,
	0,
	'',
	'Match',
	'Id',
	'R9801');
INSERT INTO O_RATTR
	VALUES (2487,
	2459,
	2456,
	2452,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (2487,
	2459,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2459);
INSERT INTO O_OIDA
	VALUES (2487,
	2459,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2459);
INSERT INTO O_ID
	VALUES (2,
	2459);
-- BP 7.1 content: Subsystem syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SS
	VALUES (2490,
	'Query',
	'',
	'SQU',
	9600,
	1,
	0);
INSERT INTO R_SUBSUP
	VALUES (2491);
INSERT INTO R_REL
	VALUES (2491,
	9600,
	'',
	2490);
INSERT INTO R_SUPER
	VALUES (2492,
	2491,
	2493);
INSERT INTO O_RTIDA
	VALUES (2494,
	2492,
	0,
	2491,
	2493);
INSERT INTO R_RTO
	VALUES (2492,
	2491,
	2493,
	0);
INSERT INTO R_OIR
	VALUES (2492,
	2491,
	2493,
	0);
INSERT INTO R_SUB
	VALUES (2495,
	2491,
	2496);
INSERT INTO R_RGO
	VALUES (2495,
	2491,
	2496);
INSERT INTO R_OIR
	VALUES (2495,
	2491,
	2496,
	0);
INSERT INTO R_SUB
	VALUES (2497,
	2491,
	2498);
INSERT INTO R_RGO
	VALUES (2497,
	2491,
	2498);
INSERT INTO R_OIR
	VALUES (2497,
	2491,
	2498,
	0);
INSERT INTO R_SUB
	VALUES (2499,
	2491,
	2500);
INSERT INTO R_RGO
	VALUES (2499,
	2491,
	2500);
INSERT INTO R_OIR
	VALUES (2499,
	2491,
	2500,
	0);
INSERT INTO R_SUB
	VALUES (2501,
	2491,
	2502);
INSERT INTO R_RGO
	VALUES (2501,
	2491,
	2502);
INSERT INTO R_OIR
	VALUES (2501,
	2491,
	2502,
	0);
INSERT INTO S_SIS
	VALUES (2444,
	2490);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2497,
	'References Query',
	9602,
	'SQU_R',
	'',
	2490);
INSERT INTO O_REF
	VALUES (2497,
	2492,
	0,
	2494,
	2491,
	2498,
	2493,
	2503,
	2504,
	0,
	0,
	'',
	'Query',
	'Id',
	'R9600');
INSERT INTO O_RATTR
	VALUES (2503,
	2497,
	2494,
	2492,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (2503,
	2497,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2497);
INSERT INTO O_OIDA
	VALUES (2503,
	2497,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2497);
INSERT INTO O_ID
	VALUES (2,
	2497);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2492,
	'Query',
	9600,
	'SQU_Q',
	'',
	2490);
INSERT INTO O_TFR
	VALUES (2505,
	2492,
	'run',
	'',
	316,
	1,
	'// get the engine associated and have it process this query
select one engine related by self->SEN_E[R9500];
engine.processQuery(queryId:self.Id, monitor:param.monitor);
select any result related by engine->SR_SR[R9503];
if(not_empty result)
  return true;
end if;
return false;
',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (2506,
	2505,
	'monitor',
	317,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2507,
	2492,
	'createDeclarationQuery',
	'',
	296,
	0,
	'// create a declaration query
create object instance query of SQU_Q;
create object instance declarationQuery of SQU_D;
relate query to declarationQuery across R9600;
// create an engine to process this query, note
// there is only one for all of the types associated
select any declarationEngine from instances of SEN_DCE;
if(empty declarationEngine)
  create object instance declarationEngine of SEN_DCE;
end if;
select one engine related by declarationEngine->SEN_E[R9501];
relate query to engine across R9500;
query.pattern = param.pattern;
query.regEx = param.regEx;
query.caseSensitive = param.caseSensitive;
query.scope = param.scope;
return query.Id;',
	1,
	'',
	2505);
INSERT INTO O_TPARM
	VALUES (2508,
	2507,
	'pattern',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2509,
	2507,
	'regEx',
	316,
	0,
	'',
	2508,
	'');
INSERT INTO O_TPARM
	VALUES (2510,
	2507,
	'caseSensitive',
	316,
	0,
	'',
	2509,
	'');
INSERT INTO O_TPARM
	VALUES (2511,
	2507,
	'scope',
	2512,
	0,
	'',
	2510,
	'');
INSERT INTO O_TFR
	VALUES (2513,
	2492,
	'createReferencesQuery',
	'',
	296,
	0,
	'// create a declaration query
create object instance query of SQU_Q;
create object instance referencesQuery of SQU_R;
relate query to referencesQuery across R9600;
// create an engine to process this query, note
// there is only one for all of the types associated
select any referencesEngine from instances of SEN_RE;
if(empty referencesEngine)
  create object instance referencesEngine of SEN_RE;
end if;
select one engine related by referencesEngine->SEN_E[R9501];
relate query to engine across R9500;
query.pattern = param.pattern;
query.regEx = param.regEx;
query.caseSensitive = param.caseSensitive;
query.scope = param.scope;
return query.Id;',
	1,
	'',
	2507);
INSERT INTO O_TPARM
	VALUES (2514,
	2513,
	'pattern',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2515,
	2513,
	'regEx',
	316,
	0,
	'',
	2514,
	'');
INSERT INTO O_TPARM
	VALUES (2516,
	2513,
	'caseSensitive',
	316,
	0,
	'',
	2515,
	'');
INSERT INTO O_TPARM
	VALUES (2517,
	2513,
	'scope',
	2512,
	0,
	'',
	2516,
	'');
INSERT INTO O_TFR
	VALUES (2518,
	2492,
	'createActionLanguageQuery',
	'',
	296,
	0,
	'// create a declaration query
create object instance query of SQU_Q;
create object instance actionLanguageQuery of SQU_A;
relate query to actionLanguageQuery across R9600;
// create an engine to process this query
create object instance actionLanguageEngine of SEN_ALE;
create object instance engine of SEN_E;
relate engine to actionLanguageEngine across R9501;
relate query to engine across R9500;
query.pattern = param.pattern;
query.regEx = param.regEx;
query.caseSensitive = param.caseSensitive;
query.scope = param.scope;
return query.Id;',
	1,
	'',
	2513);
INSERT INTO O_TPARM
	VALUES (2519,
	2518,
	'pattern',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2520,
	2518,
	'regEx',
	316,
	0,
	'',
	2519,
	'');
INSERT INTO O_TPARM
	VALUES (2521,
	2518,
	'caseSensitive',
	316,
	0,
	'',
	2520,
	'');
INSERT INTO O_TPARM
	VALUES (2522,
	2518,
	'scope',
	2512,
	0,
	'',
	2521,
	'');
INSERT INTO O_TFR
	VALUES (2523,
	2492,
	'createDescriptionQuery',
	'',
	296,
	0,
	'// create a declaration query
create object instance query of SQU_Q;
create object instance descriptionQuery of SQU_DE;
relate query to descriptionQuery across R9600;
// create an engine to process this query
create object instance descriptionEngine of SEN_DE;
create object instance engine of SEN_E;
relate engine to descriptionEngine across R9501;
relate query to engine across R9500;
query.pattern = param.pattern;
query.regEx = param.regEx;
query.caseSensitive = param.caseSensitive;
query.scope = param.scope;
return query.Id;',
	1,
	'',
	2518);
INSERT INTO O_TPARM
	VALUES (2524,
	2523,
	'pattern',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2525,
	2523,
	'regEx',
	316,
	0,
	'',
	2524,
	'');
INSERT INTO O_TPARM
	VALUES (2526,
	2523,
	'caseSensitive',
	316,
	0,
	'',
	2525,
	'');
INSERT INTO O_TPARM
	VALUES (2527,
	2523,
	'scope',
	2512,
	0,
	'',
	2526,
	'');
INSERT INTO O_TFR
	VALUES (2528,
	2492,
	'configureParticipants',
	'',
	19,
	1,
	'// pass the participant gathering to the subtypes
// as they will filter some of the participants available
select one actionLanguageQuery related by self->SQU_A[R9600];
if(not_empty actionLanguageQuery)
  actionLanguageQuery.configureParticipants(monitor:param.monitor);
end if;
select one descriptionQuery related by self->SQU_DE[R9600];
if(not_empty descriptionQuery)
  descriptionQuery.configureParticipants(monitor:param.monitor);
end if;',
	1,
	'',
	2523);
INSERT INTO O_TPARM
	VALUES (2529,
	2528,
	'monitor',
	317,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2530,
	2492,
	'dispose',
	'',
	19,
	1,
	'select one alq related by self->SQU_A[R9600];
select one decq related by self->SQU_D[R9600];
select one descq related by self->SQU_DE[R9600];
select one rq related by self->SQU_R[R9600];
if(not_empty alq)
  unrelate alq from self across R9600;
  delete object instance alq;
end if;
if(not_empty decq)
  unrelate decq from self across R9600;
  delete object instance decq;
end if;
if(not_empty descq)
  unrelate descq from self across R9600;
  delete object instance descq;
end if;
if(not_empty rq)
  unrelate rq from self across R9600;
  delete object instance rq;
end if;
select one engine related by self->SEN_E[R9500];
if(not_empty engine)
  unrelate self from engine across R9500;
end if;
delete object instance self;',
	1,
	'',
	2528);
INSERT INTO O_TFR
	VALUES (2531,
	2492,
	'createParticipant',
	'',
	19,
	1,
	'select one actionLanguageQuery related by self->SQU_A[R9600];
if(not_empty actionLanguageQuery)
  actionLanguageQuery.createParticipant(modelRootId:param.modelRootId,
                           elementId:param.elementId, className:param.className,
                                         searchableValue:param.searchableValue);
end if;
select one descriptionQuery related by self->SQU_DE[R9600];
if(not_empty descriptionQuery)
  descriptionQuery.createParticipant(modelRootId:param.modelRootId,
                           elementId:param.elementId, className:param.className,
                                         searchableValue:param.searchableValue);
end if;',
	1,
	'',
	2530);
INSERT INTO O_TPARM
	VALUES (2532,
	2531,
	'modelRootId',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2533,
	2531,
	'elementId',
	317,
	0,
	'',
	2532,
	'');
INSERT INTO O_TPARM
	VALUES (2534,
	2531,
	'className',
	322,
	0,
	'',
	2533,
	'');
INSERT INTO O_TPARM
	VALUES (2535,
	2531,
	'searchableValue',
	322,
	0,
	'',
	2534,
	'');
INSERT INTO O_TFR
	VALUES (2536,
	2492,
	'configureScope',
	'',
	19,
	0,
	'// pass on to the Search bridge
Search::configureScope(scope:param.scope, monitor:param.monitor);',
	1,
	'',
	2531);
INSERT INTO O_TPARM
	VALUES (2537,
	2536,
	'scope',
	2512,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2538,
	2536,
	'monitor',
	317,
	0,
	'',
	2537,
	'');
INSERT INTO O_NBATTR
	VALUES (2494,
	2492);
INSERT INTO O_BATTR
	VALUES (2494,
	2492);
INSERT INTO O_ATTR
	VALUES (2494,
	2492,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	296,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2539,
	2492);
INSERT INTO O_BATTR
	VALUES (2539,
	2492);
INSERT INTO O_ATTR
	VALUES (2539,
	2492,
	2540,
	'pattern',
	'',
	'',
	'pattern',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2541,
	2492);
INSERT INTO O_BATTR
	VALUES (2541,
	2492);
INSERT INTO O_ATTR
	VALUES (2541,
	2492,
	2539,
	'regEx',
	'',
	'',
	'regEx',
	0,
	316,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2542,
	2492);
INSERT INTO O_BATTR
	VALUES (2542,
	2492);
INSERT INTO O_ATTR
	VALUES (2542,
	2492,
	2541,
	'caseSensitive',
	'',
	'',
	'caseSensitive',
	0,
	316,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2543,
	2492);
INSERT INTO O_BATTR
	VALUES (2543,
	2492);
INSERT INTO O_ATTR
	VALUES (2543,
	2492,
	2542,
	'scope',
	'',
	'',
	'scope',
	0,
	2512,
	'',
	'');
INSERT INTO O_REF
	VALUES (2492,
	2466,
	0,
	2467,
	2544,
	2545,
	2546,
	2540,
	2547,
	0,
	0,
	'',
	'Search Engine',
	'Id',
	'R9500');
INSERT INTO O_RATTR
	VALUES (2540,
	2492,
	2467,
	2466,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (2540,
	2492,
	2494,
	'Engine_Id',
	'',
	'Engine_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2492);
INSERT INTO O_OIDA
	VALUES (2494,
	2492,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2492);
INSERT INTO O_ID
	VALUES (2,
	2492);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2499,
	'Description Query',
	9603,
	'SQU_DE',
	'',
	2490);
INSERT INTO O_TFR
	VALUES (2548,
	2499,
	'configureParticipants',
	'',
	19,
	1,
	'// considering the configured parameters of this query
// locate the elements which participate
select one query related by self->SQU_Q[R9600];
Search::gatherParticipants(queryId:query.Id, monitor:param.monitor);',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (2549,
	2548,
	'monitor',
	317,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2550,
	2499,
	'createParticipant',
	'',
	19,
	1,
	'create object instance participant of SP_SP;
create object instance searchable of SP_SE;
create object instance descriptionParticipant of SP_DS;
relate searchable to participant across R9700;
searchable.modelRootId = param.modelRootId;
searchable.elementId = param.elementId;
searchable.className = param.className;
descriptionParticipant.searchableValue = param.searchableValue;
relate descriptionParticipant to searchable across R9702;
select one engine related by self->SQU_Q[R9600]->SEN_E[R9500];
relate engine to participant across R9502;',
	1,
	'',
	2548);
INSERT INTO O_TPARM
	VALUES (2551,
	2550,
	'modelRootId',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2552,
	2550,
	'elementId',
	317,
	0,
	'',
	2551,
	'');
INSERT INTO O_TPARM
	VALUES (2553,
	2550,
	'className',
	322,
	0,
	'',
	2552,
	'');
INSERT INTO O_TPARM
	VALUES (2554,
	2550,
	'searchableValue',
	322,
	0,
	'',
	2553,
	'');
INSERT INTO O_REF
	VALUES (2499,
	2492,
	0,
	2494,
	2491,
	2500,
	2493,
	2555,
	2556,
	0,
	0,
	'',
	'Query',
	'Id',
	'R9600');
INSERT INTO O_RATTR
	VALUES (2555,
	2499,
	2494,
	2492,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (2555,
	2499,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2499);
INSERT INTO O_OIDA
	VALUES (2555,
	2499,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2499);
INSERT INTO O_ID
	VALUES (2,
	2499);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2495,
	'Declaration Query',
	9601,
	'SQU_D',
	'',
	2490);
INSERT INTO O_REF
	VALUES (2495,
	2492,
	0,
	2494,
	2491,
	2496,
	2493,
	2557,
	2558,
	0,
	0,
	'',
	'Query',
	'Id',
	'R9600');
INSERT INTO O_RATTR
	VALUES (2557,
	2495,
	2494,
	2492,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (2557,
	2495,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2495);
INSERT INTO O_OIDA
	VALUES (2557,
	2495,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2495);
INSERT INTO O_ID
	VALUES (2,
	2495);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2501,
	'Action Language Query',
	9604,
	'SQU_A',
	'',
	2490);
INSERT INTO O_TFR
	VALUES (2559,
	2501,
	'configureParticipants',
	'',
	19,
	1,
	'// considering the configured parameters of this query
// locate the elements which participate
select one query related by self->SQU_Q[R9600];
Search::gatherParticipants(queryId:query.Id, monitor:param.monitor);',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (2560,
	2559,
	'monitor',
	317,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2561,
	2501,
	'createParticipant',
	'',
	19,
	1,
	'create object instance participant of SP_SP;
create object instance searchable of SP_SE;
create object instance actionLanguageParticipant of SP_ALS;
relate searchable to participant across R9700;
searchable.modelRootId = param.modelRootId;
searchable.elementId = param.elementId;
searchable.className = param.className;
actionLanguageParticipant.searchableValue = param.searchableValue;
relate actionLanguageParticipant to searchable across R9702;
select one engine related by self->SQU_Q[R9600]->SEN_E[R9500];
relate engine to participant across R9502;',
	1,
	'',
	2559);
INSERT INTO O_TPARM
	VALUES (2562,
	2561,
	'modelRootId',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2563,
	2561,
	'elementId',
	317,
	0,
	'',
	2562,
	'');
INSERT INTO O_TPARM
	VALUES (2564,
	2561,
	'className',
	322,
	0,
	'',
	2563,
	'');
INSERT INTO O_TPARM
	VALUES (2565,
	2561,
	'searchableValue',
	322,
	0,
	'',
	2564,
	'');
INSERT INTO O_REF
	VALUES (2501,
	2492,
	0,
	2494,
	2491,
	2502,
	2493,
	2566,
	2567,
	0,
	0,
	'',
	'Query',
	'Id',
	'R9600');
INSERT INTO O_RATTR
	VALUES (2566,
	2501,
	2494,
	2492,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (2566,
	2501,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2501);
INSERT INTO O_OIDA
	VALUES (2566,
	2501,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2501);
INSERT INTO O_ID
	VALUES (2,
	2501);
-- BP 7.1 content: Subsystem syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SS
	VALUES (2568,
	'Participation',
	'',
	'SP',
	9700,
	1,
	0);
INSERT INTO R_SIMP
	VALUES (2569);
INSERT INTO R_REL
	VALUES (2569,
	9700,
	'',
	2568);
INSERT INTO R_PART
	VALUES (2447,
	2569,
	2570,
	0,
	0,
	'participates as');
INSERT INTO O_RTIDA
	VALUES (2464,
	2447,
	0,
	2569,
	2570);
INSERT INTO R_RTO
	VALUES (2447,
	2569,
	2570,
	0);
INSERT INTO R_OIR
	VALUES (2447,
	2569,
	2570,
	0);
INSERT INTO R_FORM
	VALUES (2571,
	2569,
	2572,
	0,
	0,
	'provides participation for');
INSERT INTO R_RGO
	VALUES (2571,
	2569,
	2572);
INSERT INTO R_OIR
	VALUES (2571,
	2569,
	2572,
	0);
INSERT INTO R_SUBSUP
	VALUES (2573);
INSERT INTO R_REL
	VALUES (2573,
	9702,
	'',
	2568);
INSERT INTO R_SUPER
	VALUES (2571,
	2573,
	2574);
INSERT INTO O_RTIDA
	VALUES (2575,
	2571,
	0,
	2573,
	2574);
INSERT INTO R_RTO
	VALUES (2571,
	2573,
	2574,
	0);
INSERT INTO R_OIR
	VALUES (2571,
	2573,
	2574,
	0);
INSERT INTO R_SUB
	VALUES (2576,
	2573,
	2577);
INSERT INTO R_RGO
	VALUES (2576,
	2573,
	2577);
INSERT INTO R_OIR
	VALUES (2576,
	2573,
	2577,
	0);
INSERT INTO R_SUB
	VALUES (2578,
	2573,
	2579);
INSERT INTO R_RGO
	VALUES (2578,
	2573,
	2579);
INSERT INTO R_OIR
	VALUES (2578,
	2573,
	2579,
	0);
INSERT INTO R_SUB
	VALUES (2580,
	2573,
	2581);
INSERT INTO R_RGO
	VALUES (2580,
	2573,
	2581);
INSERT INTO R_OIR
	VALUES (2580,
	2573,
	2581,
	0);
INSERT INTO S_SIS
	VALUES (2444,
	2568);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2571,
	'Searchable Element',
	9701,
	'SP_SE',
	'',
	2568);
INSERT INTO O_TFR
	VALUES (2582,
	2571,
	'dispose',
	'',
	19,
	1,
	'select one descriptionSearchable related by self->SP_DS[R9702];
if(not_empty descriptionSearchable)
  unrelate self from descriptionSearchable across R9702;
  delete object instance descriptionSearchable;
end if;
select one actionLanguageSearchable related by self->SP_ALS[R9702];
if(not_empty actionLanguageSearchable)
  unrelate self from actionLanguageSearchable across R9702;
  delete object instance actionLanguageSearchable;
end if;
select one namedSearchable related by self->SP_NS[R9702];
if(not_empty namedSearchable)
  unrelate self from namedSearchable across R9702;
  delete object instance namedSearchable;
end if;
select one searchParticipant related by self->SP_SP[R9700];
if(not_empty searchParticipant)
  unrelate self from searchParticipant across R9700;
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (2571,
	2447,
	0,
	2464,
	2569,
	2572,
	2570,
	2583,
	2584,
	0,
	0,
	'',
	'Search Participant',
	'Id',
	'R9700');
INSERT INTO O_RATTR
	VALUES (2583,
	2571,
	2464,
	2447,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (2583,
	2571,
	2575,
	'Participant_Id',
	'',
	'Participant_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2575,
	2571);
INSERT INTO O_BATTR
	VALUES (2575,
	2571);
INSERT INTO O_ATTR
	VALUES (2575,
	2571,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	296,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2585,
	2571);
INSERT INTO O_BATTR
	VALUES (2585,
	2571);
INSERT INTO O_ATTR
	VALUES (2585,
	2571,
	2583,
	'modelRootId',
	'',
	'',
	'modelRootId',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2586,
	2571);
INSERT INTO O_BATTR
	VALUES (2586,
	2571);
INSERT INTO O_ATTR
	VALUES (2586,
	2571,
	2585,
	'className',
	'',
	'',
	'className',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2587,
	2571);
INSERT INTO O_BATTR
	VALUES (2587,
	2571);
INSERT INTO O_ATTR
	VALUES (2587,
	2571,
	2586,
	'elementId',
	'',
	'',
	'elementId',
	0,
	317,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2571);
INSERT INTO O_OIDA
	VALUES (2575,
	2571,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2571);
INSERT INTO O_ID
	VALUES (2,
	2571);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2447,
	'Search Participant',
	9700,
	'SP_SP',
	'',
	2568);
INSERT INTO O_TFR
	VALUES (2588,
	2447,
	'dispose',
	'',
	19,
	1,
	'select one searchableElement related by self->SP_SE[R9700];
if(not_empty searchableElement)
  unrelate self from searchableElement across R9700;
  searchableElement.dispose();
end if;
select one engine related by self->SEN_E[R9502];
if(not_empty engine)
  unrelate self from engine across R9502;
end if;
select one searchResult related by self->SR_SR[R9802];
if(not_empty searchResult)
  unrelate self from searchResult across R9802;
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (2464,
	2447);
INSERT INTO O_BATTR
	VALUES (2464,
	2447);
INSERT INTO O_ATTR
	VALUES (2464,
	2447,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	296,
	'',
	'');
INSERT INTO O_REF
	VALUES (2447,
	2466,
	0,
	2467,
	2589,
	2590,
	2591,
	2592,
	2593,
	0,
	0,
	'',
	'Search Engine',
	'Id',
	'R9502');
INSERT INTO O_RATTR
	VALUES (2592,
	2447,
	2467,
	2466,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (2592,
	2447,
	2464,
	'Engine_Id',
	'',
	'Engine_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2447);
INSERT INTO O_OIDA
	VALUES (2464,
	2447,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2447);
INSERT INTO O_ID
	VALUES (2,
	2447);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2576,
	'Named Searchable',
	9702,
	'SP_NS',
	'',
	2568);
INSERT INTO O_TFR
	VALUES (2594,
	2576,
	'getSearchableValue',
	'',
	322,
	1,
	'return "";',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (2576,
	2571,
	0,
	2575,
	2573,
	2577,
	2574,
	2595,
	2596,
	0,
	0,
	'',
	'Searchable Element',
	'Id',
	'R9702');
INSERT INTO O_RATTR
	VALUES (2595,
	2576,
	2575,
	2571,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (2595,
	2576,
	0,
	'Id',
	'',
	'',
	'Element_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2597,
	2576);
INSERT INTO O_BATTR
	VALUES (2597,
	2576);
INSERT INTO O_ATTR
	VALUES (2597,
	2576,
	2595,
	'searchableValue',
	'',
	'',
	'searchableValue',
	0,
	322,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2576);
INSERT INTO O_OIDA
	VALUES (2595,
	2576,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2576);
INSERT INTO O_ID
	VALUES (2,
	2576);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2580,
	'Description Searchable',
	9702,
	'SP_DS',
	'',
	2568);
INSERT INTO O_TFR
	VALUES (2598,
	2580,
	'getSearchableValue',
	'',
	322,
	1,
	'return "";',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (2580,
	2571,
	0,
	2575,
	2573,
	2581,
	2574,
	2599,
	2600,
	0,
	0,
	'',
	'Searchable Element',
	'Id',
	'R9702');
INSERT INTO O_RATTR
	VALUES (2599,
	2580,
	2575,
	2571,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (2599,
	2580,
	0,
	'Id',
	'',
	'',
	'Element_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2601,
	2580);
INSERT INTO O_BATTR
	VALUES (2601,
	2580);
INSERT INTO O_ATTR
	VALUES (2601,
	2580,
	2599,
	'searchableValue',
	'',
	'',
	'searchableValue',
	0,
	322,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2580);
INSERT INTO O_OIDA
	VALUES (2599,
	2580,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2580);
INSERT INTO O_ID
	VALUES (2,
	2580);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2578,
	'Action Language Searchable',
	9702,
	'SP_ALS',
	'',
	2568);
INSERT INTO O_TFR
	VALUES (2602,
	2578,
	'getSearchableValue',
	'',
	322,
	1,
	'return "";',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (2578,
	2571,
	0,
	2575,
	2573,
	2579,
	2574,
	2603,
	2604,
	0,
	0,
	'',
	'Searchable Element',
	'Id',
	'R9702');
INSERT INTO O_RATTR
	VALUES (2603,
	2578,
	2575,
	2571,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (2603,
	2578,
	0,
	'Id',
	'',
	'',
	'Element_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2605,
	2578);
INSERT INTO O_BATTR
	VALUES (2605,
	2578);
INSERT INTO O_ATTR
	VALUES (2605,
	2578,
	2603,
	'searchableValue',
	'',
	'',
	'searchableValue',
	0,
	322,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2578);
INSERT INTO O_OIDA
	VALUES (2603,
	2578,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2578);
INSERT INTO O_ID
	VALUES (2,
	2578);
-- BP 7.1 content: Subsystem syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SS
	VALUES (2606,
	'Engine',
	'',
	'SEN',
	9500,
	1,
	0);
INSERT INTO O_IOBJ
	VALUES (2607,
	2492,
	0,
	2606,
	'Query',
	'SQU_Q');
INSERT INTO O_IOBJ
	VALUES (2608,
	2447,
	0,
	2606,
	'Search Participant',
	'SP_SP');
INSERT INTO O_IOBJ
	VALUES (2609,
	2449,
	0,
	2606,
	'Search Result',
	'SR_SR');
INSERT INTO R_SIMP
	VALUES (2544);
INSERT INTO R_REL
	VALUES (2544,
	9500,
	'',
	2606);
INSERT INTO R_PART
	VALUES (2466,
	2544,
	2546,
	0,
	1,
	'processed by');
INSERT INTO O_RTIDA
	VALUES (2467,
	2466,
	0,
	2544,
	2546);
INSERT INTO R_RTO
	VALUES (2466,
	2544,
	2546,
	0);
INSERT INTO R_OIR
	VALUES (2466,
	2544,
	2546,
	0);
INSERT INTO R_FORM
	VALUES (2492,
	2544,
	2545,
	0,
	0,
	'processes');
INSERT INTO R_RGO
	VALUES (2492,
	2544,
	2545);
INSERT INTO R_OIR
	VALUES (2492,
	2544,
	2545,
	2607);
INSERT INTO R_SUBSUP
	VALUES (2610);
INSERT INTO R_REL
	VALUES (2610,
	9501,
	'',
	2606);
INSERT INTO R_SUPER
	VALUES (2466,
	2610,
	2611);
INSERT INTO O_RTIDA
	VALUES (2467,
	2466,
	0,
	2610,
	2611);
INSERT INTO R_RTO
	VALUES (2466,
	2610,
	2611,
	0);
INSERT INTO R_OIR
	VALUES (2466,
	2610,
	2611,
	0);
INSERT INTO R_SUB
	VALUES (2612,
	2610,
	2613);
INSERT INTO R_RGO
	VALUES (2612,
	2610,
	2613);
INSERT INTO R_OIR
	VALUES (2612,
	2610,
	2613,
	0);
INSERT INTO R_SUB
	VALUES (2614,
	2610,
	2615);
INSERT INTO R_RGO
	VALUES (2614,
	2610,
	2615);
INSERT INTO R_OIR
	VALUES (2614,
	2610,
	2615,
	0);
INSERT INTO R_SUB
	VALUES (2616,
	2610,
	2617);
INSERT INTO R_RGO
	VALUES (2616,
	2610,
	2617);
INSERT INTO R_OIR
	VALUES (2616,
	2610,
	2617,
	0);
INSERT INTO R_SUB
	VALUES (2618,
	2610,
	2619);
INSERT INTO R_RGO
	VALUES (2618,
	2610,
	2619);
INSERT INTO R_OIR
	VALUES (2618,
	2610,
	2619,
	0);
INSERT INTO R_SIMP
	VALUES (2589);
INSERT INTO R_REL
	VALUES (2589,
	9502,
	'',
	2606);
INSERT INTO R_FORM
	VALUES (2447,
	2589,
	2590,
	1,
	1,
	'searches against');
INSERT INTO R_RGO
	VALUES (2447,
	2589,
	2590);
INSERT INTO R_OIR
	VALUES (2447,
	2589,
	2590,
	2608);
INSERT INTO R_PART
	VALUES (2466,
	2589,
	2591,
	0,
	0,
	'searched for by');
INSERT INTO O_RTIDA
	VALUES (2467,
	2466,
	0,
	2589,
	2591);
INSERT INTO R_RTO
	VALUES (2466,
	2589,
	2591,
	0);
INSERT INTO R_OIR
	VALUES (2466,
	2589,
	2591,
	0);
INSERT INTO R_SIMP
	VALUES (2468);
INSERT INTO R_REL
	VALUES (2468,
	9503,
	'',
	2606);
INSERT INTO R_FORM
	VALUES (2449,
	2468,
	2469,
	1,
	1,
	'determines');
INSERT INTO R_RGO
	VALUES (2449,
	2468,
	2469);
INSERT INTO R_OIR
	VALUES (2449,
	2468,
	2469,
	2609);
INSERT INTO R_PART
	VALUES (2466,
	2468,
	2470,
	0,
	0,
	'is determined by');
INSERT INTO O_RTIDA
	VALUES (2467,
	2466,
	0,
	2468,
	2470);
INSERT INTO R_RTO
	VALUES (2466,
	2468,
	2470,
	0);
INSERT INTO R_OIR
	VALUES (2466,
	2468,
	2470,
	0);
INSERT INTO S_SIS
	VALUES (2444,
	2606);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2466,
	'Search Engine',
	9500,
	'SEN_E',
	'',
	2606);
INSERT INTO O_TFR
	VALUES (2620,
	2466,
	'processQuery',
	'',
	19,
	1,
	'// ask the subtype to process this query
select one actionLanguageEngine related by self->SEN_ALE[R9501];
if(not_empty actionLanguageEngine)
  actionLanguageEngine.processQuery(queryId:param.queryId, 
                                                         monitor:param.monitor);
end if;
select one descriptionEngine related by self->SEN_DE[R9501];
if(not_empty descriptionEngine)
  descriptionEngine.processQuery(queryId:param.queryId, monitor:param.monitor);
end if;',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (2621,
	2620,
	'queryId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2622,
	2620,
	'monitor',
	317,
	0,
	'',
	2621,
	'');
INSERT INTO O_TFR
	VALUES (2623,
	2466,
	'dispose',
	'',
	19,
	1,
	'select one actionLanguageEngine related by self->SEN_ALE[R9501];
if(not_empty actionLanguageEngine)
  unrelate self from actionLanguageEngine across R9501;
  delete object instance actionLanguageEngine;
end if;
select one declarationsLanguageEngine related by self->SEN_DCE[R9501];
if(not_empty declarationsLanguageEngine)
  unrelate self from declarationsLanguageEngine across R9501;
  delete object instance declarationsLanguageEngine;
end if;
select one referencesLanguageEngine related by self->SEN_RE[R9501];
if(not_empty referencesLanguageEngine)
  unrelate self from referencesLanguageEngine across R9501;
  delete object instance referencesLanguageEngine;
end if;
select one descriptionEngine related by self->SEN_DE[R9501];
if(not_empty descriptionEngine)
  unrelate self from descriptionEngine across R9501;
  delete object instance descriptionEngine;
end if;
select many participants related by self->SP_SP[R9502];
for each participant in participants
  unrelate self from participant across R9502;
  participant.dispose();
end for;
select many results related by self->SR_SR[R9503];
for each result in results
 unrelate self from result across R9503;
 result.dispose();
end for;
select one query related by self->SQU_Q[R9500];
if(not_empty query)
  unrelate self from query across R9500;
end if;
delete object instance self;',
	1,
	'',
	2620);
INSERT INTO O_NBATTR
	VALUES (2467,
	2466);
INSERT INTO O_BATTR
	VALUES (2467,
	2466);
INSERT INTO O_ATTR
	VALUES (2467,
	2466,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	296,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2466);
INSERT INTO O_OIDA
	VALUES (2467,
	2466,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2466);
INSERT INTO O_ID
	VALUES (2,
	2466);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2618,
	'References Engine',
	9504,
	'SEN_RE',
	'',
	2606);
INSERT INTO O_REF
	VALUES (2618,
	2466,
	0,
	2467,
	2610,
	2619,
	2611,
	2624,
	2625,
	0,
	0,
	'',
	'Search Engine',
	'Id',
	'R9501');
INSERT INTO O_RATTR
	VALUES (2624,
	2618,
	2467,
	2466,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (2624,
	2618,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2618);
INSERT INTO O_OIDA
	VALUES (2624,
	2618,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2618);
INSERT INTO O_ID
	VALUES (2,
	2618);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2614,
	'Description Engine',
	9502,
	'SEN_DE',
	'',
	2606);
INSERT INTO O_TFR
	VALUES (2626,
	2614,
	'processQuery',
	'',
	19,
	1,
	'// for each participant associated we apply the given pattern
// for any matches we create the necessary results
select any query from instances of SQU_Q where (selected.Id == param.queryId);
select one engine related by self->SEN_E[R9501];
select many participants related by engine->SP_SP[R9502];
for each participant in participants
  select one descriptionParticipant related by participant->SP_SE[R9700]
                                                                 ->SP_DS[R9702];
  if(not_empty descriptionParticipant)
    // cache a variable for the singleton result
    // used for this participant
    select any searchResult from instances of SR_SR 
                                    where (selected.Id == GD::NULL_UNIQUE_ID());
    // should not be empty, but no harm in checking
    contents = descriptionParticipant.searchableValue;
    // process this call in a while loop, the call will return
    // a negative value when no more matches exist
    result = 0;
    while(result >= 0)
      matchResultId = Search::locateContentResults(pattern:query.pattern,
                        contents:contents, isCaseSensitive:query.caseSensitive);
      select any matchResult from instances of SR_CMR
                                           where (selected.Id == matchResultId);
      if(not_empty matchResult)
        result = matchResult.startPosition;
        if(result >= 0)
          // create a search result
          if(empty searchResult)
            create object instance searchResult of SR_SR;
            relate searchResult to engine across R9503;
            relate searchResult to participant across R9802;
          end if;
          // create a match
          create object instance match of SR_M;
          create object instance contentMatch of SR_CM;
          relate match to contentMatch across R9801;
          relate searchResult to match across R9800;
          contentMatch.startPosition = matchResult.startPosition;
          contentMatch.matchLength = matchResult.length;
          delete object instance matchResult;
          // send creation notification
          Search::matchCreated(match:match.convertToInstance());
        end if;
      else
        // no match found set result to -1
        result = -1;
      end if;
      // if the passed in progress monitor indicates
      // that the user has cancelled this search, then
      // end all processing
      if(Search::monitorCanceled(monitor:param.monitor))
        Search::clearQueryData();
        return;
      end if;
    end while;
    Search::clearQueryData();
  end if;
end for;',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (2627,
	2626,
	'queryId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2628,
	2626,
	'monitor',
	317,
	0,
	'',
	2627,
	'');
INSERT INTO O_REF
	VALUES (2614,
	2466,
	0,
	2467,
	2610,
	2615,
	2611,
	2629,
	2630,
	0,
	0,
	'',
	'Search Engine',
	'Id',
	'R9501');
INSERT INTO O_RATTR
	VALUES (2629,
	2614,
	2467,
	2466,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (2629,
	2614,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2614);
INSERT INTO O_OIDA
	VALUES (2629,
	2614,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2614);
INSERT INTO O_ID
	VALUES (2,
	2614);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2616,
	'Declarations Engine',
	9503,
	'SEN_DCE',
	'',
	2606);
INSERT INTO O_REF
	VALUES (2616,
	2466,
	0,
	2467,
	2610,
	2617,
	2611,
	2631,
	2632,
	0,
	0,
	'',
	'Search Engine',
	'Id',
	'R9501');
INSERT INTO O_RATTR
	VALUES (2631,
	2616,
	2467,
	2466,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (2631,
	2616,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2616);
INSERT INTO O_OIDA
	VALUES (2631,
	2616,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2616);
INSERT INTO O_ID
	VALUES (2,
	2616);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2612,
	'Action Language Engine',
	9501,
	'SEN_ALE',
	'',
	2606);
INSERT INTO O_TFR
	VALUES (2633,
	2612,
	'processQuery',
	'',
	19,
	1,
	'// for each participant associated we apply the given pattern
// for any matches we create the necessary results
select any query from instances of SQU_Q where (selected.Id == param.queryId);
select one engine related by self->SEN_E[R9501];
select many participants related by engine->SP_SP[R9502];
for each participant in participants
  select one actionLanguageParticipant related by participant->SP_SE[R9700]
                                                                ->SP_ALS[R9702];
  if(not_empty actionLanguageParticipant)
    // cache a variable for the singleton result
    // used for this participant
    select any searchResult from instances of SR_SR 
                                    where (selected.Id == GD::NULL_UNIQUE_ID());
    // should not be empty, but no harm in checking
    contents = actionLanguageParticipant.searchableValue;
    // process this call in a while loop, the call will return
    // a negative value when no more matches exist
    result = 0;
    while(result >= 0)
      matchResultId = Search::locateContentResults(pattern:query.pattern,
                        contents:contents, isCaseSensitive:query.caseSensitive);
      select any matchResult from instances of SR_CMR
                                           where (selected.Id == matchResultId);
      if(not_empty matchResult)
        result = matchResult.startPosition;
        if(result >= 0)
          // create a search result
          if(empty searchResult)
            create object instance searchResult of SR_SR;
            relate searchResult to engine across R9503;
            relate searchResult to participant across R9802;
          end if;
          // create a match
          create object instance match of SR_M;
          create object instance contentMatch of SR_CM;
          relate match to contentMatch across R9801;
          relate searchResult to match across R9800;
          contentMatch.startPosition = matchResult.startPosition;
          contentMatch.matchLength = matchResult.length;
          delete object instance matchResult;
          // send creation notification
          Search::matchCreated(match:match.convertToInstance());
        end if;
      else
        // no match found, set result to -1
        result = -1;
      end if;
      // if the passed in progress monitor indicates
      // that the user has cancelled this search, then
      // end all processing
      if(Search::monitorCanceled(monitor:param.monitor))
        Search::clearQueryData();
        return;
      end if;
    end while;
    Search::clearQueryData();
  end if;
end for;',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (2634,
	2633,
	'queryId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2635,
	2633,
	'monitor',
	317,
	0,
	'',
	2634,
	'');
INSERT INTO O_REF
	VALUES (2612,
	2466,
	0,
	2467,
	2610,
	2613,
	2611,
	2636,
	2637,
	0,
	0,
	'',
	'Search Engine',
	'Id',
	'R9501');
INSERT INTO O_RATTR
	VALUES (2636,
	2612,
	2467,
	2466,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (2636,
	2612,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2612);
INSERT INTO O_OIDA
	VALUES (2636,
	2612,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2612);
INSERT INTO O_ID
	VALUES (2,
	2612);
-- BP 7.1 content: Subsystem syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SS
	VALUES (2638,
	'Relate And Unrelate',
	'Captures  the concepts of relating instances together. Also captures
unrelate and covers relations with link classes.
Notify_Changes:false
Persistent:false
// This is used by schema_gen to ignore this subsystem (for publication)
TRANSLATE_FOR_EXTERNAL_USE:FALSE
',
	'ACT',
	600,
	1,
	2639);
INSERT INTO S_SID
	VALUES (1,
	2638);
INSERT INTO O_IOBJ
	VALUES (2640,
	129,
	5,
	2638,
	'Variable',
	'V_VAR');
INSERT INTO O_IOBJ
	VALUES (2641,
	2322,
	5,
	2638,
	'Association',
	'R_REL');
INSERT INTO R_SIMP
	VALUES (2642);
INSERT INTO R_REL
	VALUES (2642,
	615,
	'',
	2638);
INSERT INTO R_FORM
	VALUES (2643,
	2642,
	2644,
	1,
	1,
	'is one variable');
INSERT INTO R_RGO
	VALUES (2643,
	2642,
	2644);
INSERT INTO R_OIR
	VALUES (2643,
	2642,
	2644,
	0);
INSERT INTO R_PART
	VALUES (129,
	2642,
	2645,
	0,
	0,
	'one');
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	2642,
	2645);
INSERT INTO R_RTO
	VALUES (129,
	2642,
	2645,
	0);
INSERT INTO R_OIR
	VALUES (129,
	2642,
	2645,
	2640);
INSERT INTO R_SIMP
	VALUES (2646);
INSERT INTO R_REL
	VALUES (2646,
	616,
	'',
	2638);
INSERT INTO R_FORM
	VALUES (2643,
	2646,
	2647,
	1,
	1,
	'is other variable');
INSERT INTO R_RGO
	VALUES (2643,
	2646,
	2647);
INSERT INTO R_OIR
	VALUES (2643,
	2646,
	2647,
	0);
INSERT INTO R_PART
	VALUES (129,
	2646,
	2648,
	0,
	0,
	'other');
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	2646,
	2648);
INSERT INTO R_RTO
	VALUES (129,
	2646,
	2648,
	0);
INSERT INTO R_OIR
	VALUES (129,
	2646,
	2648,
	2640);
INSERT INTO R_SIMP
	VALUES (2649);
INSERT INTO R_REL
	VALUES (2649,
	617,
	'',
	2638);
INSERT INTO R_FORM
	VALUES (2650,
	2649,
	2651,
	1,
	1,
	'is one variable');
INSERT INTO R_RGO
	VALUES (2650,
	2649,
	2651);
INSERT INTO R_OIR
	VALUES (2650,
	2649,
	2651,
	0);
INSERT INTO R_PART
	VALUES (129,
	2649,
	2652,
	0,
	0,
	'one');
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	2649,
	2652);
INSERT INTO R_RTO
	VALUES (129,
	2649,
	2652,
	0);
INSERT INTO R_OIR
	VALUES (129,
	2649,
	2652,
	2640);
INSERT INTO R_SIMP
	VALUES (2653);
INSERT INTO R_REL
	VALUES (2653,
	618,
	'',
	2638);
INSERT INTO R_FORM
	VALUES (2650,
	2653,
	2654,
	1,
	1,
	'is other variable');
INSERT INTO R_RGO
	VALUES (2650,
	2653,
	2654);
INSERT INTO R_OIR
	VALUES (2650,
	2653,
	2654,
	0);
INSERT INTO R_PART
	VALUES (129,
	2653,
	2655,
	0,
	0,
	'other');
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	2653,
	2655);
INSERT INTO R_RTO
	VALUES (129,
	2653,
	2655,
	0);
INSERT INTO R_OIR
	VALUES (129,
	2653,
	2655,
	2640);
INSERT INTO R_SIMP
	VALUES (2656);
INSERT INTO R_REL
	VALUES (2656,
	619,
	'',
	2638);
INSERT INTO R_FORM
	VALUES (2650,
	2656,
	2657,
	1,
	1,
	'is using variable');
INSERT INTO R_RGO
	VALUES (2650,
	2656,
	2657);
INSERT INTO R_OIR
	VALUES (2650,
	2656,
	2657,
	0);
INSERT INTO R_PART
	VALUES (129,
	2656,
	2658,
	0,
	0,
	'using');
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	2656,
	2658);
INSERT INTO R_RTO
	VALUES (129,
	2656,
	2658,
	0);
INSERT INTO R_OIR
	VALUES (129,
	2656,
	2658,
	2640);
INSERT INTO R_SIMP
	VALUES (2659);
INSERT INTO R_REL
	VALUES (2659,
	620,
	'',
	2638);
INSERT INTO R_FORM
	VALUES (2660,
	2659,
	2661,
	1,
	1,
	'is one variable');
INSERT INTO R_RGO
	VALUES (2660,
	2659,
	2661);
INSERT INTO R_OIR
	VALUES (2660,
	2659,
	2661,
	0);
INSERT INTO R_PART
	VALUES (129,
	2659,
	2662,
	0,
	0,
	'one');
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	2659,
	2662);
INSERT INTO R_RTO
	VALUES (129,
	2659,
	2662,
	0);
INSERT INTO R_OIR
	VALUES (129,
	2659,
	2662,
	2640);
INSERT INTO R_SIMP
	VALUES (2663);
INSERT INTO R_REL
	VALUES (2663,
	621,
	'',
	2638);
INSERT INTO R_FORM
	VALUES (2660,
	2663,
	2664,
	1,
	1,
	'is other variable');
INSERT INTO R_RGO
	VALUES (2660,
	2663,
	2664);
INSERT INTO R_OIR
	VALUES (2660,
	2663,
	2664,
	0);
INSERT INTO R_PART
	VALUES (129,
	2663,
	2665,
	0,
	0,
	'other');
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	2663,
	2665);
INSERT INTO R_RTO
	VALUES (129,
	2663,
	2665,
	0);
INSERT INTO R_OIR
	VALUES (129,
	2663,
	2665,
	2640);
INSERT INTO R_SIMP
	VALUES (2666);
INSERT INTO R_REL
	VALUES (2666,
	622,
	'',
	2638);
INSERT INTO R_FORM
	VALUES (2667,
	2666,
	2668,
	1,
	1,
	'is one variable');
INSERT INTO R_RGO
	VALUES (2667,
	2666,
	2668);
INSERT INTO R_OIR
	VALUES (2667,
	2666,
	2668,
	0);
INSERT INTO R_PART
	VALUES (129,
	2666,
	2669,
	0,
	0,
	'one');
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	2666,
	2669);
INSERT INTO R_RTO
	VALUES (129,
	2666,
	2669,
	0);
INSERT INTO R_OIR
	VALUES (129,
	2666,
	2669,
	2640);
INSERT INTO R_SIMP
	VALUES (2670);
INSERT INTO R_REL
	VALUES (2670,
	623,
	'',
	2638);
INSERT INTO R_FORM
	VALUES (2667,
	2670,
	2671,
	1,
	1,
	'is other variable');
INSERT INTO R_RGO
	VALUES (2667,
	2670,
	2671);
INSERT INTO R_OIR
	VALUES (2667,
	2670,
	2671,
	0);
INSERT INTO R_PART
	VALUES (129,
	2670,
	2672,
	0,
	0,
	'other');
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	2670,
	2672);
INSERT INTO R_RTO
	VALUES (129,
	2670,
	2672,
	0);
INSERT INTO R_OIR
	VALUES (129,
	2670,
	2672,
	2640);
INSERT INTO R_SIMP
	VALUES (2673);
INSERT INTO R_REL
	VALUES (2673,
	624,
	'',
	2638);
INSERT INTO R_FORM
	VALUES (2667,
	2673,
	2674,
	1,
	1,
	'is using variable');
INSERT INTO R_RGO
	VALUES (2667,
	2673,
	2674);
INSERT INTO R_OIR
	VALUES (2667,
	2673,
	2674,
	0);
INSERT INTO R_PART
	VALUES (129,
	2673,
	2675,
	0,
	0,
	'using');
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	2673,
	2675);
INSERT INTO R_RTO
	VALUES (129,
	2673,
	2675,
	0);
INSERT INTO R_OIR
	VALUES (129,
	2673,
	2675,
	2640);
INSERT INTO R_SIMP
	VALUES (2676);
INSERT INTO R_REL
	VALUES (2676,
	653,
	'',
	2638);
INSERT INTO R_PART
	VALUES (2322,
	2676,
	2677,
	0,
	0,
	'creates');
INSERT INTO O_RTIDA
	VALUES (2368,
	2322,
	0,
	2676,
	2677);
INSERT INTO R_RTO
	VALUES (2322,
	2676,
	2677,
	0);
INSERT INTO R_OIR
	VALUES (2322,
	2676,
	2677,
	2641);
INSERT INTO R_FORM
	VALUES (2643,
	2676,
	2678,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (2643,
	2676,
	2678);
INSERT INTO R_OIR
	VALUES (2643,
	2676,
	2678,
	0);
INSERT INTO R_SIMP
	VALUES (2679);
INSERT INTO R_REL
	VALUES (2679,
	654,
	'',
	2638);
INSERT INTO R_PART
	VALUES (2322,
	2679,
	2680,
	0,
	0,
	'creates');
INSERT INTO O_RTIDA
	VALUES (2368,
	2322,
	0,
	2679,
	2680);
INSERT INTO R_RTO
	VALUES (2322,
	2679,
	2680,
	0);
INSERT INTO R_OIR
	VALUES (2322,
	2679,
	2680,
	2641);
INSERT INTO R_FORM
	VALUES (2650,
	2679,
	2681,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (2650,
	2679,
	2681);
INSERT INTO R_OIR
	VALUES (2650,
	2679,
	2681,
	0);
INSERT INTO R_SIMP
	VALUES (2682);
INSERT INTO R_REL
	VALUES (2682,
	655,
	'',
	2638);
INSERT INTO R_PART
	VALUES (2322,
	2682,
	2683,
	0,
	0,
	'destroys');
INSERT INTO O_RTIDA
	VALUES (2368,
	2322,
	0,
	2682,
	2683);
INSERT INTO R_RTO
	VALUES (2322,
	2682,
	2683,
	0);
INSERT INTO R_OIR
	VALUES (2322,
	2682,
	2683,
	2641);
INSERT INTO R_FORM
	VALUES (2660,
	2682,
	2684,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (2660,
	2682,
	2684);
INSERT INTO R_OIR
	VALUES (2660,
	2682,
	2684,
	0);
INSERT INTO R_SIMP
	VALUES (2685);
INSERT INTO R_REL
	VALUES (2685,
	656,
	'',
	2638);
INSERT INTO R_PART
	VALUES (2322,
	2685,
	2686,
	0,
	0,
	'destroys');
INSERT INTO O_RTIDA
	VALUES (2368,
	2322,
	0,
	2685,
	2686);
INSERT INTO R_RTO
	VALUES (2322,
	2685,
	2686,
	0);
INSERT INTO R_OIR
	VALUES (2322,
	2685,
	2686,
	2641);
INSERT INTO R_FORM
	VALUES (2667,
	2685,
	2687,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (2667,
	2685,
	2687);
INSERT INTO R_OIR
	VALUES (2667,
	2685,
	2687,
	0);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2667,
	'Unrelate Using',
	616,
	'ACT_URU',
	'This class represents a statement that unrelates two instances that were related together, using a third as a link class instance.',
	2638);
INSERT INTO O_TFR
	VALUES (2688,
	2667,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one one_var related by self->V_VAR[R622];
if ( not_empty one_var )
  unrelate self from one_var across R622;
end if;
select one other_var related by self->V_VAR[R623];
if ( not_empty other_var )
  unrelate self from other_var across R623;
end if;
select one assoc_var related by self->V_VAR[R624];
if ( not_empty assoc_var )
  unrelate self from assoc_var across R624;
end if;
select one rel related by self->R_REL[R656];
if ( not_empty rel )
  unrelate self from rel across R656;
end if;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (2689,
	2667,
	'execute',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	2688);
INSERT INTO O_TPARM
	VALUES (2690,
	2689,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (2667,
	686,
	0,
	685,
	2386,
	2691,
	2388,
	2692,
	2693,
	0,
	0,
	'',
	'Statement',
	'Statement_ID',
	'R603');
INSERT INTO O_RATTR
	VALUES (2692,
	2667,
	685,
	686,
	1,
	'Statement_ID');
INSERT INTO O_ATTR
	VALUES (2692,
	2667,
	0,
	'Statement_ID',
	'

',
	'',
	'Statement_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2667,
	129,
	0,
	131,
	2666,
	2668,
	2669,
	2694,
	2695,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R622.''one''');
INSERT INTO O_RATTR
	VALUES (2694,
	2667,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (2694,
	2667,
	2692,
	'One_Side_Var_ID',
	'

',
	'One_Side_',
	'Var_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2667,
	129,
	0,
	131,
	2670,
	2671,
	2672,
	2696,
	2697,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R623.''other''');
INSERT INTO O_RATTR
	VALUES (2696,
	2667,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (2696,
	2667,
	2694,
	'Other_Side_Var_ID',
	'

',
	'Other_Side_',
	'Var_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2667,
	129,
	0,
	131,
	2673,
	2674,
	2675,
	2698,
	2699,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R624.''using''');
INSERT INTO O_RATTR
	VALUES (2698,
	2667,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (2698,
	2667,
	2696,
	'Associative_Var_ID',
	'

',
	'Associative_',
	'Var_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2700,
	2667);
INSERT INTO O_BATTR
	VALUES (2700,
	2667);
INSERT INTO O_ATTR
	VALUES (2700,
	2667,
	2698,
	'relationship_phrase',
	'Full Name: Relationship Phrase
Specifies the relationship phrase at the target end of the association.
Essential for disambiguating the navigation direction of reflexive
associations.',
	'',
	'relationship_phrase',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2701,
	2667);
INSERT INTO O_BATTR
	VALUES (2701,
	2667);
INSERT INTO O_ATTR
	VALUES (2701,
	2667,
	2702,
	'associationNumberLineNumber',
	'',
	'',
	'associationNumberLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2703,
	2667);
INSERT INTO O_BATTR
	VALUES (2703,
	2667);
INSERT INTO O_ATTR
	VALUES (2703,
	2667,
	2701,
	'associationNumberColumn',
	'',
	'',
	'associationNumberColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2704,
	2667);
INSERT INTO O_BATTR
	VALUES (2704,
	2667);
INSERT INTO O_ATTR
	VALUES (2704,
	2667,
	2703,
	'associationPhraseLineNumber',
	'',
	'',
	'associationPhraseLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2705,
	2667);
INSERT INTO O_BATTR
	VALUES (2705,
	2667);
INSERT INTO O_ATTR
	VALUES (2705,
	2667,
	2704,
	'associationPhraseColumn',
	'',
	'',
	'associationPhraseColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_REF
	VALUES (2667,
	2322,
	0,
	2368,
	2685,
	2687,
	2686,
	2702,
	2706,
	0,
	0,
	'',
	'Association',
	'Rel_ID',
	'R656.''destroys''');
INSERT INTO O_RATTR
	VALUES (2702,
	2667,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2702,
	2667,
	2700,
	'Rel_ID',
	'

',
	'',
	'Rel_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2667);
INSERT INTO O_OIDA
	VALUES (2692,
	2667,
	0,
	'Statement_ID');
INSERT INTO O_ID
	VALUES (1,
	2667);
INSERT INTO O_ID
	VALUES (2,
	2667);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2660,
	'Unrelate',
	609,
	'ACT_UNR',
	'This class represents a statement that unrelates two instances that were related together.',
	2638);
INSERT INTO O_TFR
	VALUES (2707,
	2660,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one one_var related by self->V_VAR[R620];
if ( not_empty one_var )
  unrelate self from one_var across R620;
end if;
select one other_var related by self->V_VAR[R621];
if ( not_empty other_var )
  unrelate self from other_var across R621;
end if;
select one rel related by self->R_REL[R655];
if ( not_empty rel )
  unrelate self from rel across R655;
end if;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (2708,
	2660,
	'execute',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	2707);
INSERT INTO O_TPARM
	VALUES (2709,
	2708,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (2660,
	686,
	0,
	685,
	2386,
	2710,
	2388,
	2711,
	2712,
	0,
	0,
	'',
	'Statement',
	'Statement_ID',
	'R603');
INSERT INTO O_RATTR
	VALUES (2711,
	2660,
	685,
	686,
	1,
	'Statement_ID');
INSERT INTO O_ATTR
	VALUES (2711,
	2660,
	0,
	'Statement_ID',
	'

',
	'',
	'Statement_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2660,
	129,
	0,
	131,
	2659,
	2661,
	2662,
	2713,
	2714,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R620.''one''');
INSERT INTO O_RATTR
	VALUES (2713,
	2660,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (2713,
	2660,
	2711,
	'One_Side_Var_ID',
	'

',
	'One_Side_',
	'Var_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2660,
	129,
	0,
	131,
	2663,
	2664,
	2665,
	2715,
	2716,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R621.''other''');
INSERT INTO O_RATTR
	VALUES (2715,
	2660,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (2715,
	2660,
	2713,
	'Other_Side_Var_ID',
	'

',
	'Other_Side_',
	'Var_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2717,
	2660);
INSERT INTO O_BATTR
	VALUES (2717,
	2660);
INSERT INTO O_ATTR
	VALUES (2717,
	2660,
	2715,
	'relationship_phrase',
	'Full Name: Relationship Phrase
Specifies the relationship phrase at the target end of the association.
Essential for disambiguating the navigation direction of reflexive
associations.',
	'',
	'relationship_phrase',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2718,
	2660);
INSERT INTO O_BATTR
	VALUES (2718,
	2660);
INSERT INTO O_ATTR
	VALUES (2718,
	2660,
	2719,
	'associationNumberLineNumber',
	'',
	'',
	'associationNumberLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2720,
	2660);
INSERT INTO O_BATTR
	VALUES (2720,
	2660);
INSERT INTO O_ATTR
	VALUES (2720,
	2660,
	2718,
	'associationNumberColumn',
	'',
	'',
	'associationNumberColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2721,
	2660);
INSERT INTO O_BATTR
	VALUES (2721,
	2660);
INSERT INTO O_ATTR
	VALUES (2721,
	2660,
	2720,
	'associationPhraseLineNumber',
	'',
	'',
	'associationPhraseLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2722,
	2660);
INSERT INTO O_BATTR
	VALUES (2722,
	2660);
INSERT INTO O_ATTR
	VALUES (2722,
	2660,
	2721,
	'associationPhraseColumn',
	'',
	'',
	'associationPhraseColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_REF
	VALUES (2660,
	2322,
	0,
	2368,
	2682,
	2684,
	2683,
	2719,
	2723,
	0,
	0,
	'',
	'Association',
	'Rel_ID',
	'R655.''destroys''');
INSERT INTO O_RATTR
	VALUES (2719,
	2660,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2719,
	2660,
	2717,
	'Rel_ID',
	'

',
	'',
	'Rel_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2660);
INSERT INTO O_OIDA
	VALUES (2711,
	2660,
	0,
	'Statement_ID');
INSERT INTO O_ID
	VALUES (1,
	2660);
INSERT INTO O_ID
	VALUES (2,
	2660);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2650,
	'Relate Using',
	615,
	'ACT_RU',
	'This class represents a statement that relates two instances together, using a third as a link class instance.',
	2638);
INSERT INTO O_TFR
	VALUES (2724,
	2650,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one one_var related by self->V_VAR[R617];
if ( not_empty one_var )
  unrelate self from one_var across R617;
end if;
select one other_var related by self->V_VAR[R618];
if ( not_empty other_var )
  unrelate self from other_var across R618;
end if;
select one assoc_var related by self->V_VAR[R619];
if ( not_empty assoc_var )
  unrelate self from assoc_var across R619;
end if;
select one rel related by self->R_REL[R654];
if ( not_empty rel )
  unrelate self from rel across R654;
end if;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (2725,
	2650,
	'execute',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	2724);
INSERT INTO O_TPARM
	VALUES (2726,
	2725,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (2650,
	686,
	0,
	685,
	2386,
	2727,
	2388,
	2728,
	2729,
	0,
	0,
	'',
	'Statement',
	'Statement_ID',
	'R603');
INSERT INTO O_RATTR
	VALUES (2728,
	2650,
	685,
	686,
	1,
	'Statement_ID');
INSERT INTO O_ATTR
	VALUES (2728,
	2650,
	0,
	'Statement_ID',
	'

',
	'',
	'Statement_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2650,
	129,
	0,
	131,
	2649,
	2651,
	2652,
	2730,
	2731,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R617.''one''');
INSERT INTO O_RATTR
	VALUES (2730,
	2650,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (2730,
	2650,
	2728,
	'One_Side_Var_ID',
	'

',
	'One_Side_',
	'Var_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2650,
	129,
	0,
	131,
	2653,
	2654,
	2655,
	2732,
	2733,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R618.''other''');
INSERT INTO O_RATTR
	VALUES (2732,
	2650,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (2732,
	2650,
	2730,
	'Other_Side_Var_ID',
	'

',
	'Other_Side_',
	'Var_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2650,
	129,
	0,
	131,
	2656,
	2657,
	2658,
	2734,
	2735,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R619.''using''');
INSERT INTO O_RATTR
	VALUES (2734,
	2650,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (2734,
	2650,
	2732,
	'Associative_Var_ID',
	'

',
	'Associative_',
	'Var_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2736,
	2650);
INSERT INTO O_BATTR
	VALUES (2736,
	2650);
INSERT INTO O_ATTR
	VALUES (2736,
	2650,
	2734,
	'relationship_phrase',
	'Full Name: Relationship Phrase
Specifies the relationship phrase at the target end of the association.
Essential for disambiguating the navigation direction of reflexive
associations.',
	'',
	'relationship_phrase',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2737,
	2650);
INSERT INTO O_BATTR
	VALUES (2737,
	2650);
INSERT INTO O_ATTR
	VALUES (2737,
	2650,
	2738,
	'associationNumberLineNumber',
	'',
	'',
	'associationNumberLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2739,
	2650);
INSERT INTO O_BATTR
	VALUES (2739,
	2650);
INSERT INTO O_ATTR
	VALUES (2739,
	2650,
	2737,
	'associationNumberColumn',
	'',
	'',
	'associationNumberColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2740,
	2650);
INSERT INTO O_BATTR
	VALUES (2740,
	2650);
INSERT INTO O_ATTR
	VALUES (2740,
	2650,
	2739,
	'associationPhraseLineNumber',
	'',
	'',
	'associationPhraseLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2741,
	2650);
INSERT INTO O_BATTR
	VALUES (2741,
	2650);
INSERT INTO O_ATTR
	VALUES (2741,
	2650,
	2740,
	'associationPhraseColumn',
	'',
	'',
	'associationPhraseColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_REF
	VALUES (2650,
	2322,
	0,
	2368,
	2679,
	2681,
	2680,
	2738,
	2742,
	0,
	0,
	'',
	'Association',
	'Rel_ID',
	'R654.''creates''');
INSERT INTO O_RATTR
	VALUES (2738,
	2650,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2738,
	2650,
	2736,
	'Rel_ID',
	'

',
	'',
	'Rel_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2650);
INSERT INTO O_OIDA
	VALUES (2728,
	2650,
	0,
	'Statement_ID');
INSERT INTO O_ID
	VALUES (1,
	2650);
INSERT INTO O_ID
	VALUES (2,
	2650);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2643,
	'Relate',
	608,
	'ACT_REL',
	'This class represents a statement that relates two instances together.',
	2638);
INSERT INTO O_TFR
	VALUES (2743,
	2643,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one one_var related by self->V_VAR[R615];
if ( not_empty one_var )
  unrelate self from one_var across R615;
end if;
select one other_var related by self->V_VAR[R616];
if ( not_empty other_var )
  unrelate self from other_var across R616;
end if;
select one rel related by self->R_REL[R653];
if ( not_empty rel )
  unrelate self from rel across R653;
end if;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (2744,
	2643,
	'execute',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	2743);
INSERT INTO O_TPARM
	VALUES (2745,
	2744,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (2643,
	686,
	0,
	685,
	2386,
	2746,
	2388,
	2747,
	2748,
	0,
	0,
	'',
	'Statement',
	'Statement_ID',
	'R603');
INSERT INTO O_RATTR
	VALUES (2747,
	2643,
	685,
	686,
	1,
	'Statement_ID');
INSERT INTO O_ATTR
	VALUES (2747,
	2643,
	0,
	'Statement_ID',
	'

',
	'',
	'Statement_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2643,
	129,
	0,
	131,
	2642,
	2644,
	2645,
	2749,
	2750,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R615.''one''');
INSERT INTO O_RATTR
	VALUES (2749,
	2643,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (2749,
	2643,
	2747,
	'One_Side_Var_ID',
	'

',
	'One_Side_',
	'Var_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2643,
	129,
	0,
	131,
	2646,
	2647,
	2648,
	2751,
	2752,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R616.''other''');
INSERT INTO O_RATTR
	VALUES (2751,
	2643,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (2751,
	2643,
	2749,
	'Other_Side_Var_ID',
	'

',
	'Other_Side_',
	'Var_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2753,
	2643);
INSERT INTO O_BATTR
	VALUES (2753,
	2643);
INSERT INTO O_ATTR
	VALUES (2753,
	2643,
	2751,
	'relationship_phrase',
	'Full Name: Relationship Phrase
Specifies the relationship phrase at the target end of the association.
Essential for disambiguating the navigation direction of reflexive
associations.',
	'',
	'relationship_phrase',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2754,
	2643);
INSERT INTO O_BATTR
	VALUES (2754,
	2643);
INSERT INTO O_ATTR
	VALUES (2754,
	2643,
	2755,
	'associationNumberLineNumber',
	'',
	'',
	'associationNumberLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2756,
	2643);
INSERT INTO O_BATTR
	VALUES (2756,
	2643);
INSERT INTO O_ATTR
	VALUES (2756,
	2643,
	2754,
	'associationNumberColumn',
	'',
	'',
	'associationNumberColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2757,
	2643);
INSERT INTO O_BATTR
	VALUES (2757,
	2643);
INSERT INTO O_ATTR
	VALUES (2757,
	2643,
	2756,
	'associationPhraseLineNumber',
	'',
	'',
	'associationPhraseLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2758,
	2643);
INSERT INTO O_BATTR
	VALUES (2758,
	2643);
INSERT INTO O_ATTR
	VALUES (2758,
	2643,
	2757,
	'associationPhraseColumn',
	'',
	'',
	'associationPhraseColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_REF
	VALUES (2643,
	2322,
	0,
	2368,
	2676,
	2678,
	2677,
	2755,
	2759,
	0,
	0,
	'',
	'Association',
	'Rel_ID',
	'R653.''creates''');
INSERT INTO O_RATTR
	VALUES (2755,
	2643,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2755,
	2643,
	2753,
	'Rel_ID',
	'

',
	'',
	'Rel_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2643);
INSERT INTO O_OIDA
	VALUES (2747,
	2643,
	0,
	'Statement_ID');
INSERT INTO O_ID
	VALUES (1,
	2643);
INSERT INTO O_ID
	VALUES (2,
	2643);
-- BP 7.1 content: Subsystem syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SS
	VALUES (2760,
	'Persistence Associations',
	'This subsystem contains associations required to allow correct persistence
locations.

Once the infrastructure is fixed to correctly allow multiple traversals between
export items, this subsystem shall be removed.

// This is used by schema_gen to ignore this subsystem (for publication)
TRANSLATE_FOR_EXTERNAL_USE:FALSE

Persistent:false',
	'',
	9000,
	1,
	0);
INSERT INTO S_SID
	VALUES (1,
	2760);
INSERT INTO O_IOBJ
	VALUES (2761,
	2762,
	0,
	2760,
	'Delegation',
	'C_DG');
INSERT INTO O_IOBJ
	VALUES (2763,
	707,
	0,
	2760,
	'Component Package',
	'CP_CP');
INSERT INTO O_IOBJ
	VALUES (2764,
	2765,
	0,
	2760,
	'Satisfaction',
	'C_SF');
INSERT INTO O_IOBJ
	VALUES (2766,
	709,
	0,
	2760,
	'Component',
	'C_C');
INSERT INTO R_ASSOC
	VALUES (2767);
INSERT INTO R_REL
	VALUES (2767,
	9002,
	'',
	2760);
INSERT INTO R_ASSR
	VALUES (2768,
	2767,
	2769,
	0);
INSERT INTO R_RGO
	VALUES (2768,
	2767,
	2769);
INSERT INTO R_OIR
	VALUES (2768,
	2767,
	2769,
	0);
INSERT INTO R_AOTH
	VALUES (2762,
	2767,
	2770,
	1,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (2771,
	2762,
	0,
	2767,
	2770);
INSERT INTO R_RTO
	VALUES (2762,
	2767,
	2770,
	0);
INSERT INTO R_OIR
	VALUES (2762,
	2767,
	2770,
	2761);
INSERT INTO R_AONE
	VALUES (709,
	2767,
	2772,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (762,
	709,
	0,
	2767,
	2772);
INSERT INTO R_RTO
	VALUES (709,
	2767,
	2772,
	0);
INSERT INTO R_OIR
	VALUES (709,
	2767,
	2772,
	2766);
INSERT INTO R_ASSOC
	VALUES (2773);
INSERT INTO R_REL
	VALUES (2773,
	9001,
	'',
	2760);
INSERT INTO R_ASSR
	VALUES (2774,
	2773,
	2775,
	0);
INSERT INTO R_RGO
	VALUES (2774,
	2773,
	2775);
INSERT INTO R_OIR
	VALUES (2774,
	2773,
	2775,
	0);
INSERT INTO R_AOTH
	VALUES (707,
	2773,
	2776,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (758,
	707,
	0,
	2773,
	2776);
INSERT INTO R_RTO
	VALUES (707,
	2773,
	2776,
	0);
INSERT INTO R_OIR
	VALUES (707,
	2773,
	2776,
	2763);
INSERT INTO R_AONE
	VALUES (2765,
	2773,
	2777,
	1,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (2778,
	2765,
	0,
	2773,
	2777);
INSERT INTO R_RTO
	VALUES (2765,
	2773,
	2777,
	0);
INSERT INTO R_OIR
	VALUES (2765,
	2773,
	2777,
	2764);
INSERT INTO R_ASSOC
	VALUES (2779);
INSERT INTO R_REL
	VALUES (2779,
	9000,
	'',
	2760);
INSERT INTO R_ASSR
	VALUES (2780,
	2779,
	2781,
	0);
INSERT INTO R_RGO
	VALUES (2780,
	2779,
	2781);
INSERT INTO R_OIR
	VALUES (2780,
	2779,
	2781,
	0);
INSERT INTO R_AOTH
	VALUES (2765,
	2779,
	2782,
	1,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (2778,
	2765,
	0,
	2779,
	2782);
INSERT INTO R_RTO
	VALUES (2765,
	2779,
	2782,
	0);
INSERT INTO R_OIR
	VALUES (2765,
	2779,
	2782,
	2764);
INSERT INTO R_AONE
	VALUES (709,
	2779,
	2783,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (762,
	709,
	0,
	2779,
	2783);
INSERT INTO R_RTO
	VALUES (709,
	2779,
	2783,
	0);
INSERT INTO R_OIR
	VALUES (709,
	2779,
	2783,
	2766);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2774,
	'Satisfaction In Component Package',
	9001,
	'PA_SICP',
	'User_Visible:false',
	2760);
INSERT INTO O_REF
	VALUES (2774,
	707,
	0,
	758,
	2773,
	2775,
	2776,
	2784,
	2785,
	0,
	0,
	'',
	'Component Package',
	'Package_ID',
	'R9001');
INSERT INTO O_RATTR
	VALUES (2784,
	2774,
	772,
	773,
	1,
	'Package_ID');
INSERT INTO O_ATTR
	VALUES (2784,
	2774,
	0,
	'ComponentPackage_ID',
	'',
	'Component',
	'Package_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2774,
	2765,
	0,
	2778,
	2773,
	2775,
	2777,
	2786,
	2787,
	0,
	0,
	'',
	'Satisfaction',
	'Id',
	'R9001');
INSERT INTO O_RATTR
	VALUES (2786,
	2774,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2786,
	2774,
	2784,
	'Satisfaction_Id',
	'',
	'Satisfaction_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (2,
	2774);
INSERT INTO O_ID
	VALUES (1,
	2774);
INSERT INTO O_ID
	VALUES (0,
	2774);
INSERT INTO O_OIDA
	VALUES (2784,
	2774,
	0,
	'ComponentPackage_ID');
INSERT INTO O_OIDA
	VALUES (2786,
	2774,
	0,
	'Satisfaction_Id');
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2780,
	'Satisfaction In Component',
	9000,
	'PA_SIC',
	'User_Visible:false',
	2760);
INSERT INTO O_REF
	VALUES (2780,
	709,
	0,
	762,
	2779,
	2781,
	2783,
	2788,
	2789,
	0,
	0,
	'',
	'Component',
	'Id',
	'R9000');
INSERT INTO O_RATTR
	VALUES (2788,
	2780,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2788,
	2780,
	0,
	'Component_Id',
	'',
	'Component_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2780,
	2765,
	0,
	2778,
	2779,
	2781,
	2782,
	2790,
	2791,
	0,
	0,
	'',
	'Satisfaction',
	'Id',
	'R9000');
INSERT INTO O_RATTR
	VALUES (2790,
	2780,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2790,
	2780,
	2788,
	'Satisfaction_Id',
	'',
	'Satisfaction_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (2,
	2780);
INSERT INTO O_ID
	VALUES (1,
	2780);
INSERT INTO O_ID
	VALUES (0,
	2780);
INSERT INTO O_OIDA
	VALUES (2788,
	2780,
	0,
	'Component_Id');
INSERT INTO O_OIDA
	VALUES (2790,
	2780,
	0,
	'Satisfaction_Id');
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2768,
	'Delegation In Component',
	9002,
	'PA_DIC',
	'User_Visible:false',
	2760);
INSERT INTO O_REF
	VALUES (2768,
	709,
	0,
	762,
	2767,
	2769,
	2772,
	2792,
	2793,
	0,
	0,
	'',
	'Component',
	'Id',
	'R9002');
INSERT INTO O_RATTR
	VALUES (2792,
	2768,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2792,
	2768,
	0,
	'Component_Id',
	'',
	'Component_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2768,
	2762,
	0,
	2771,
	2767,
	2769,
	2770,
	2794,
	2795,
	0,
	0,
	'',
	'Delegation',
	'Id',
	'R9002');
INSERT INTO O_RATTR
	VALUES (2794,
	2768,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2794,
	2768,
	2792,
	'Delegation_Id',
	'',
	'Delegation_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (2,
	2768);
INSERT INTO O_ID
	VALUES (1,
	2768);
INSERT INTO O_ID
	VALUES (0,
	2768);
INSERT INTO O_OIDA
	VALUES (2792,
	2768,
	0,
	'Component_Id');
INSERT INTO O_OIDA
	VALUES (2794,
	2768,
	0,
	'Delegation_Id');
-- BP 7.1 content: Subsystem syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SS
	VALUES (2796,
	'Packageable Element',
	'',
	'PE',
	8000,
	1,
	0);
INSERT INTO S_SID
	VALUES (1,
	2796);
INSERT INTO O_IOBJ
	VALUES (2797,
	2798,
	0,
	2796,
	'Package',
	'EP_PKG');
INSERT INTO O_IOBJ
	VALUES (2799,
	32,
	0,
	2796,
	'Data Type',
	'S_DT');
INSERT INTO O_IOBJ
	VALUES (2800,
	703,
	0,
	2796,
	'Interaction Participant',
	'SQ_P');
INSERT INTO O_IOBJ
	VALUES (2801,
	729,
	0,
	2796,
	'Use Case Association',
	'UC_UCA');
INSERT INTO O_IOBJ
	VALUES (2802,
	2803,
	0,
	2796,
	'Activity Node',
	'A_N');
INSERT INTO O_IOBJ
	VALUES (2804,
	30,
	0,
	2796,
	'Model Class',
	'O_OBJ');
INSERT INTO O_IOBJ
	VALUES (2805,
	709,
	0,
	2796,
	'Component',
	'C_C');
INSERT INTO O_IOBJ
	VALUES (2806,
	2807,
	0,
	2796,
	'Component Reference',
	'CL_IC');
INSERT INTO O_IOBJ
	VALUES (2808,
	2809,
	0,
	2796,
	'Interface',
	'C_I');
INSERT INTO O_IOBJ
	VALUES (2810,
	939,
	0,
	2796,
	'Constant Specification',
	'CNST_CSP');
INSERT INTO O_IOBJ
	VALUES (2811,
	2812,
	0,
	2796,
	'Activity Partition',
	'A_AP');
INSERT INTO O_IOBJ
	VALUES (2813,
	2814,
	0,
	2796,
	'Activity Edge',
	'A_E');
INSERT INTO O_IOBJ
	VALUES (2815,
	2141,
	0,
	2796,
	'Message',
	'MSG_M');
INSERT INTO O_IOBJ
	VALUES (2816,
	1050,
	0,
	2796,
	'Imported Class',
	'O_IOBJ');
INSERT INTO O_IOBJ
	VALUES (2817,
	2322,
	0,
	2796,
	'Association',
	'R_REL');
INSERT INTO O_IOBJ
	VALUES (2818,
	8,
	0,
	2796,
	'Function',
	'S_SYNC');
INSERT INTO O_IOBJ
	VALUES (2819,
	2820,
	0,
	2796,
	'External Entity',
	'S_EE');
INSERT INTO O_IOBJ
	VALUES (2821,
	2765,
	0,
	2796,
	'Satisfaction',
	'C_SF');
INSERT INTO O_IOBJ
	VALUES (2822,
	2762,
	0,
	2796,
	'Delegation',
	'C_DG');
INSERT INTO R_SIMP
	VALUES (2823);
INSERT INTO R_REL
	VALUES (2823,
	8000,
	'',
	2796);
INSERT INTO R_PART
	VALUES (2798,
	2823,
	2824,
	0,
	1,
	'contained by');
INSERT INTO O_RTIDA
	VALUES (2825,
	2798,
	0,
	2823,
	2824);
INSERT INTO R_RTO
	VALUES (2798,
	2823,
	2824,
	0);
INSERT INTO R_OIR
	VALUES (2798,
	2823,
	2824,
	2797);
INSERT INTO R_FORM
	VALUES (26,
	2823,
	2826,
	1,
	1,
	'contains');
INSERT INTO R_RGO
	VALUES (26,
	2823,
	2826);
INSERT INTO R_OIR
	VALUES (26,
	2823,
	2826,
	0);
INSERT INTO R_SUBSUP
	VALUES (868);
INSERT INTO R_REL
	VALUES (868,
	8001,
	'CrossComponent:true
Optional:true',
	2796);
INSERT INTO R_SUPER
	VALUES (26,
	868,
	870);
INSERT INTO O_RTIDA
	VALUES (25,
	26,
	0,
	868,
	870);
INSERT INTO R_RTO
	VALUES (26,
	868,
	870,
	0);
INSERT INTO R_OIR
	VALUES (26,
	868,
	870,
	0);
INSERT INTO R_SUB
	VALUES (32,
	868,
	2827);
INSERT INTO R_RGO
	VALUES (32,
	868,
	2827);
INSERT INTO R_OIR
	VALUES (32,
	868,
	2827,
	2799);
INSERT INTO R_SUB
	VALUES (703,
	868,
	2828);
INSERT INTO R_RGO
	VALUES (703,
	868,
	2828);
INSERT INTO R_OIR
	VALUES (703,
	868,
	2828,
	2800);
INSERT INTO R_SUB
	VALUES (729,
	868,
	869);
INSERT INTO R_RGO
	VALUES (729,
	868,
	869);
INSERT INTO R_OIR
	VALUES (729,
	868,
	869,
	2801);
INSERT INTO R_SUB
	VALUES (2803,
	868,
	2829);
INSERT INTO R_RGO
	VALUES (2803,
	868,
	2829);
INSERT INTO R_OIR
	VALUES (2803,
	868,
	2829,
	2802);
INSERT INTO R_SUB
	VALUES (30,
	868,
	1320);
INSERT INTO R_RGO
	VALUES (30,
	868,
	1320);
INSERT INTO R_OIR
	VALUES (30,
	868,
	1320,
	2804);
INSERT INTO R_SUB
	VALUES (709,
	868,
	2830);
INSERT INTO R_RGO
	VALUES (709,
	868,
	2830);
INSERT INTO R_OIR
	VALUES (709,
	868,
	2830,
	2805);
INSERT INTO R_SUB
	VALUES (2807,
	868,
	2831);
INSERT INTO R_RGO
	VALUES (2807,
	868,
	2831);
INSERT INTO R_OIR
	VALUES (2807,
	868,
	2831,
	2806);
INSERT INTO R_SUB
	VALUES (2809,
	868,
	2832);
INSERT INTO R_RGO
	VALUES (2809,
	868,
	2832);
INSERT INTO R_OIR
	VALUES (2809,
	868,
	2832,
	2808);
INSERT INTO R_SUB
	VALUES (2798,
	868,
	2833);
INSERT INTO R_RGO
	VALUES (2798,
	868,
	2833);
INSERT INTO R_OIR
	VALUES (2798,
	868,
	2833,
	2797);
INSERT INTO R_SUB
	VALUES (939,
	868,
	2834);
INSERT INTO R_RGO
	VALUES (939,
	868,
	2834);
INSERT INTO R_OIR
	VALUES (939,
	868,
	2834,
	2810);
INSERT INTO R_SUB
	VALUES (2812,
	868,
	2835);
INSERT INTO R_RGO
	VALUES (2812,
	868,
	2835);
INSERT INTO R_OIR
	VALUES (2812,
	868,
	2835,
	2811);
INSERT INTO R_SUB
	VALUES (2814,
	868,
	2836);
INSERT INTO R_RGO
	VALUES (2814,
	868,
	2836);
INSERT INTO R_OIR
	VALUES (2814,
	868,
	2836,
	2813);
INSERT INTO R_SUB
	VALUES (2141,
	868,
	2837);
INSERT INTO R_RGO
	VALUES (2141,
	868,
	2837);
INSERT INTO R_OIR
	VALUES (2141,
	868,
	2837,
	2815);
INSERT INTO R_SUB
	VALUES (1050,
	868,
	1361);
INSERT INTO R_RGO
	VALUES (1050,
	868,
	1361);
INSERT INTO R_OIR
	VALUES (1050,
	868,
	1361,
	2816);
INSERT INTO R_SUB
	VALUES (2322,
	868,
	2838);
INSERT INTO R_RGO
	VALUES (2322,
	868,
	2838);
INSERT INTO R_OIR
	VALUES (2322,
	868,
	2838,
	2817);
INSERT INTO R_SUB
	VALUES (2820,
	868,
	2839);
INSERT INTO R_RGO
	VALUES (2820,
	868,
	2839);
INSERT INTO R_OIR
	VALUES (2820,
	868,
	2839,
	2819);
INSERT INTO R_SUB
	VALUES (8,
	868,
	2840);
INSERT INTO R_RGO
	VALUES (8,
	868,
	2840);
INSERT INTO R_OIR
	VALUES (8,
	868,
	2840,
	2818);
INSERT INTO R_SUB
	VALUES (2765,
	868,
	2841);
INSERT INTO R_RGO
	VALUES (2765,
	868,
	2841);
INSERT INTO R_OIR
	VALUES (2765,
	868,
	2841,
	2821);
INSERT INTO R_SUB
	VALUES (2762,
	868,
	2842);
INSERT INTO R_RGO
	VALUES (2762,
	868,
	2842);
INSERT INTO R_OIR
	VALUES (2762,
	868,
	2842,
	2822);
INSERT INTO R_ASSOC
	VALUES (2843);
INSERT INTO R_REL
	VALUES (2843,
	8002,
	'',
	2796);
INSERT INTO R_AONE
	VALUES (26,
	2843,
	2844,
	1,
	1,
	'has visibility of');
INSERT INTO O_RTIDA
	VALUES (25,
	26,
	0,
	2843,
	2844);
INSERT INTO R_RTO
	VALUES (26,
	2843,
	2844,
	0);
INSERT INTO R_OIR
	VALUES (26,
	2843,
	2844,
	0);
INSERT INTO R_AOTH
	VALUES (2798,
	2843,
	2845,
	1,
	1,
	'is visible to elements in');
INSERT INTO O_RTIDA
	VALUES (2825,
	2798,
	0,
	2843,
	2845);
INSERT INTO R_RTO
	VALUES (2798,
	2843,
	2845,
	0);
INSERT INTO R_OIR
	VALUES (2798,
	2843,
	2845,
	2797);
INSERT INTO R_ASSR
	VALUES (2846,
	2843,
	2847,
	1);
INSERT INTO R_RGO
	VALUES (2846,
	2843,
	2847);
INSERT INTO R_OIR
	VALUES (2846,
	2843,
	2847,
	0);
INSERT INTO R_SIMP
	VALUES (2848);
INSERT INTO R_REL
	VALUES (2848,
	8003,
	'',
	2796);
INSERT INTO R_PART
	VALUES (709,
	2848,
	2849,
	0,
	1,
	'contained in');
INSERT INTO O_RTIDA
	VALUES (762,
	709,
	0,
	2848,
	2849);
INSERT INTO R_RTO
	VALUES (709,
	2848,
	2849,
	0);
INSERT INTO R_OIR
	VALUES (709,
	2848,
	2849,
	2805);
INSERT INTO R_FORM
	VALUES (26,
	2848,
	2850,
	1,
	1,
	'contains');
INSERT INTO R_RGO
	VALUES (26,
	2848,
	2850);
INSERT INTO R_OIR
	VALUES (26,
	2848,
	2850,
	0);
INSERT INTO R_ASSOC
	VALUES (2851);
INSERT INTO R_REL
	VALUES (2851,
	8004,
	'',
	2796);
INSERT INTO R_AONE
	VALUES (709,
	2851,
	2852,
	1,
	1,
	'is visible to');
INSERT INTO O_RTIDA
	VALUES (762,
	709,
	0,
	2851,
	2852);
INSERT INTO R_RTO
	VALUES (709,
	2851,
	2852,
	0);
INSERT INTO R_OIR
	VALUES (709,
	2851,
	2852,
	2805);
INSERT INTO R_AOTH
	VALUES (26,
	2851,
	2853,
	1,
	1,
	'has visibility of');
INSERT INTO O_RTIDA
	VALUES (25,
	26,
	0,
	2851,
	2853);
INSERT INTO R_RTO
	VALUES (26,
	2851,
	2853,
	0);
INSERT INTO R_OIR
	VALUES (26,
	2851,
	2853,
	0);
INSERT INTO R_ASSR
	VALUES (2854,
	2851,
	2855,
	1);
INSERT INTO R_RGO
	VALUES (2854,
	2851,
	2855);
INSERT INTO R_OIR
	VALUES (2854,
	2851,
	2855,
	0);
INSERT INTO R_SIMP
	VALUES (2856);
INSERT INTO R_REL
	VALUES (2856,
	8005,
	'',
	2796);
INSERT INTO R_PART
	VALUES (2798,
	2856,
	2857,
	0,
	0,
	'held by');
INSERT INTO O_RTIDA
	VALUES (2825,
	2798,
	0,
	2856,
	2857);
INSERT INTO R_RTO
	VALUES (2798,
	2856,
	2857,
	0);
INSERT INTO R_OIR
	VALUES (2798,
	2856,
	2857,
	2797);
INSERT INTO R_FORM
	VALUES (2858,
	2856,
	2859,
	1,
	1,
	'holds');
INSERT INTO R_RGO
	VALUES (2858,
	2856,
	2859);
INSERT INTO R_OIR
	VALUES (2858,
	2856,
	2859,
	0);
INSERT INTO R_SIMP
	VALUES (2860);
INSERT INTO R_REL
	VALUES (2860,
	8006,
	'',
	2796);
INSERT INTO R_PART
	VALUES (2858,
	2860,
	2861,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (2862,
	2858,
	0,
	2860,
	2861);
INSERT INTO O_RTIDA
	VALUES (2863,
	2858,
	0,
	2860,
	2861);
INSERT INTO O_RTIDA
	VALUES (2864,
	2858,
	0,
	2860,
	2861);
INSERT INTO R_RTO
	VALUES (2858,
	2860,
	2861,
	0);
INSERT INTO R_OIR
	VALUES (2858,
	2860,
	2861,
	0);
INSERT INTO R_FORM
	VALUES (2846,
	2860,
	2865,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (2846,
	2860,
	2865);
INSERT INTO R_OIR
	VALUES (2846,
	2860,
	2865,
	0);
INSERT INTO R_SIMP
	VALUES (2866);
INSERT INTO R_REL
	VALUES (2866,
	8007,
	'',
	2796);
INSERT INTO R_PART
	VALUES (709,
	2866,
	2867,
	0,
	0,
	'held by');
INSERT INTO O_RTIDA
	VALUES (762,
	709,
	0,
	2866,
	2867);
INSERT INTO R_RTO
	VALUES (709,
	2866,
	2867,
	0);
INSERT INTO R_OIR
	VALUES (709,
	2866,
	2867,
	2805);
INSERT INTO R_FORM
	VALUES (2868,
	2866,
	2869,
	1,
	1,
	'holds');
INSERT INTO R_RGO
	VALUES (2868,
	2866,
	2869);
INSERT INTO R_OIR
	VALUES (2868,
	2866,
	2869,
	0);
INSERT INTO R_SIMP
	VALUES (2870);
INSERT INTO R_REL
	VALUES (2870,
	8008,
	'',
	2796);
INSERT INTO R_PART
	VALUES (2868,
	2870,
	2871,
	0,
	0,
	'makes up a');
INSERT INTO O_RTIDA
	VALUES (2872,
	2868,
	0,
	2870,
	2871);
INSERT INTO O_RTIDA
	VALUES (2873,
	2868,
	0,
	2870,
	2871);
INSERT INTO O_RTIDA
	VALUES (2874,
	2868,
	0,
	2870,
	2871);
INSERT INTO R_RTO
	VALUES (2868,
	2870,
	2871,
	0);
INSERT INTO R_OIR
	VALUES (2868,
	2870,
	2871,
	0);
INSERT INTO R_FORM
	VALUES (2854,
	2870,
	2875,
	1,
	1,
	'made up of');
INSERT INTO R_RGO
	VALUES (2854,
	2870,
	2875);
INSERT INTO R_OIR
	VALUES (2854,
	2870,
	2875,
	0);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2858,
	'Search Result Set',
	8003,
	'PE_SRS',
	'This class captures set of element instances that are visible to a
given package for a given search criterion.
----
Persistent:false',
	2796);
INSERT INTO O_TFR
	VALUES (2876,
	2858,
	'dispose',
	'',
	19,
	1,
	'// Search Result Set.dispose()
select one package related by self->EP_PKG[R8005];
select many elemVis related by self->PE_VIS[R8006];
for each elemV in elemVis
  select one pe related by elemV->PE_PE[R8002];
  unrelate package from pe across R8002 using elemV;
  unrelate self from elemV across R8006;
  delete object instance elemV;
end for;
unrelate self from package across R8005;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (2858,
	2798,
	0,
	2825,
	2856,
	2859,
	2857,
	2864,
	2877,
	0,
	0,
	'',
	'Package',
	'Package_ID',
	'R8005');
INSERT INTO O_RATTR
	VALUES (2864,
	2858,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2864,
	2858,
	0,
	'Package_ID',
	'',
	'',
	'Package_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2862,
	2858);
INSERT INTO O_BATTR
	VALUES (2862,
	2858);
INSERT INTO O_ATTR
	VALUES (2862,
	2858,
	2864,
	'Name',
	'',
	'',
	'Name',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2863,
	2858);
INSERT INTO O_BATTR
	VALUES (2863,
	2858);
INSERT INTO O_ATTR
	VALUES (2863,
	2858,
	2862,
	'Type',
	'',
	'',
	'Type',
	0,
	2878,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2858);
INSERT INTO O_OIDA
	VALUES (2862,
	2858,
	0,
	'Name');
INSERT INTO O_OIDA
	VALUES (2863,
	2858,
	0,
	'Type');
INSERT INTO O_OIDA
	VALUES (2864,
	2858,
	0,
	'Package_ID');
INSERT INTO O_ID
	VALUES (1,
	2858);
INSERT INTO O_ID
	VALUES (2,
	2858);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (26,
	'Packageable Element',
	8000,
	'PE_PE',
	'',
	2796);
INSERT INTO O_TFR
	VALUES (2879,
	26,
	'dispose',
	'',
	19,
	1,
	'// Packageable Element.dispose()
 
select many ele_vis_links related by self->PE_VIS[R8002];
for each ele_vis_link in ele_vis_links
  select one pkg related by ele_vis_link->EP_PKG[R8002];
  unrelate self from pkg across R8002 using ele_vis_link;
  select one searchResultset related by ele_vis_link->PE_SRS[R8006];
  unrelate ele_vis_link from searchResultset across R8006;  
  delete object instance ele_vis_link;
end for;
select many com_vis_links related by self->PE_CVS[R8004];
for each com_vis_link in com_vis_links
  select one component related by com_vis_link->C_C[R8004];
  unrelate self from component across R8004 using com_vis_link;
  delete object instance com_vis_link;
end for;
select one modelClass related by self->O_OBJ[R8001];
if not_empty modelClass
  unrelate modelClass from self across R8001;
  modelClass.dispose();
end if;
select one dt related by self->S_DT[R8001];
if not_empty dt
  // note we do not tear down this association
  // as the S_DT.dispose() call requires it to
  // be setup, it will tear it down
  dt.dispose();
end if;
select one intPart related by self->SQ_P[R8001];
if not_empty intPart
  unrelate intPart from self across R8001;
  intPart.dispose();
end if;
select one ucAssoc related by self->UC_UCA[R8001];
if not_empty ucAssoc
  unrelate ucAssoc from self across R8001;
  ucAssoc.dispose();
end if;
select one actNode related by self->A_N[R8001];
if not_empty actNode
  unrelate actNode from self across R8001;
  actNode.dispose();
end if;
select one comp related by self->C_C[R8001];
if not_empty comp
  unrelate comp from self across R8001;
  comp.dispose();
end if;
select one ic related by self->CL_IC[R8001];
if not_empty ic
  unrelate ic from self across R8001;
  ic.dispose();
end if;
select one interface related by self->C_I[R8001];
if not_empty interface
  unrelate interface from self across R8001;
  interface.dispose();
end if;
select one pkg related by self->EP_PKG[R8001];
if not_empty pkg
  unrelate pkg from self across R8001;
  pkg.dispose();
end if;
select one csp related by self->CNST_CSP[R8001];
if not_empty csp
  unrelate csp from self across R8001;
  csp.dispose();
end if;
select one ap related by self->A_AP[R8001];
if not_empty ap
  unrelate ap from self across R8001;
  ap.dispose();
end if;
select one edge related by self->A_E[R8001];
if not_empty edge
  unrelate edge from self across R8001;
  edge.dispose();
end if;
select one msg related by self->MSG_M[R8001];
if not_empty msg
  unrelate msg from self across R8001;
  msg.dispose();
end if;
select one rel related by self->R_REL[R8001];
if not_empty rel
  unrelate rel from self across R8001;
  rel.dispose();
end if;
select one icomp related by self->O_IOBJ[R8001];
if not_empty icomp
  unrelate icomp from self across R8001;
  icomp.dispose();
end if;
select one sync related by self->S_SYNC[R8001];
if not_empty sync
  unrelate sync from self across R8001;
  sync.dispose();
end if;
select one ee related by self->S_EE[R8001];
if not_empty ee
  unrelate ee from self across R8001;
  ee.dispose();
end if;
select one sat related by self->C_SF[R8001];
if not_empty sat
  unrelate sat from self across R8001;
  sat.dispose();
end if;
select one delg related by self->C_DG[R8001];
if not_empty delg
  unrelate delg from self across R8001;
  delg.dispose();
end if;
select many bodyInElements related by self->ACT_BIE[R640];
for each bie in bodyInElements
  select one body related by bie->ACT_ACT[R640];
  unrelate self from body across R640 using bie;
  delete object instance bie;
end for;

select one package related by self->EP_PKG[R8000];
if not_empty package
  unrelate self from package across R8000 ;
end if;

select one component related by self->C_C[R8003];
if(not_empty component)
  unrelate self from component across R8003;
end if;

select many elemInSystems related by self->G_EIS[R9100];
for each elemInSystem in elemInSystems
  select one system related by elemInSystem->S_SYS[R9100];
  unrelate self from system across R9100 using elemInSystem;
  delete object instance elemInSystem;
end for;

delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (2880,
	26,
	'collectVisibleElementsForName',
	'',
	19,
	1,
	'// Packageable Element::collectVisibleElementsForName()
if param.type == self.type
  visible = false;
  if param.type == ElementTypeConstants::DATATYPE
    select one dt related by self->S_DT[R8001];
    if not_empty dt and (param.name == "" or dt.Name == param.name)
      visible = true;
    end if;
  elif param.type == ElementTypeConstants::CONSTANT
    select one cnst related by self->CNST_CSP[R8001];
    if not_empty cnst
      visible = true;
    end if;    
  elif param.type == ElementTypeConstants::CLASS
    select one clazz related by self->O_OBJ[R8001];
    if not_empty clazz and (param.name == "" or clazz.Key_Lett == param.name)
      visible = true;
    end if;
  elif param.type == ElementTypeConstants::INTERFACE
    select one ifc related by self->C_I[R8001];
    if not_empty ifc and (param.name == "" or ifc.Name == param.name)
      visible = true;
    end if;
  elif param.type == ElementTypeConstants::FUNCTION
    select one fn related by self->S_SYNC[R8001];
    if not_empty fn and (param.name == "" or fn.Name == param.name)
      visible = true;
    end if;
  elif param.type == ElementTypeConstants::COMPONENT
    select one comp related by self->C_C[R8001];
    if not_empty comp and (param.name == "" or comp.Name == param.name)
      visible = true;
    end if;
  elif param.type == ElementTypeConstants::EE
    select one ee related by self->S_EE[R8001];
    if not_empty ee and (param.name == "" or ee.Key_Lett == param.name)
      visible = true;
    end if;
  elif param.type == ElementTypeConstants::ASSOCIATION
    select one rel related by self->R_REL[R8001];
    if not_empty rel and (param.name == "" or
                   rel.Numb == OS::convert_relationship_string(rel:param.name));
      visible = true;
    end if;
  elif param.type == ElementTypeConstants::PACKAGE
    select one package related by self->EP_PKG[R8001];
    if not_empty package and (param.name == "" or package.Name == param.name)
      visible = true;
    end if;
  end if;
  if visible
    select any package from instances of EP_PKG
                    where (selected.Package_ID == param.originatingContainerID);
    select one packageableElement related by package->PE_PE[R8001];
    if(empty package)
      // force the architecture to look globally for the package
      select any packageableElement from instances of PE_PE
                    where (selected.Element_ID == param.originatingContainerID);
      select one package related by packageableElement->EP_PKG[R8001];
    end if;
    if not_empty package
      select any resultSet related by package->PE_SRS[R8005] where
                    selected.Name == param.name and selected.Type == param.type;
      create object instance visibility of PE_VIS;
      relate self to package across R8002 using visibility;
      relate visibility to resultSet across R8006;
    else
      select one originatingComp related by packageableElement->C_C[R8001];
      if not_empty originatingComp
        select any resultSet related by originatingComp->PE_CRS[R8007] where
                    selected.Name == param.name and selected.Type == param.type;
        create object instance visibility of PE_CVS;
        relate self to originatingComp across R8004 using visibility;
        relate visibility to resultSet across R8008;
      end if;
    end if;
  end if;
end if;
if self.type == ElementTypeConstants::PACKAGE
  select one package related by self->EP_PKG[R8001];
  if not_empty package and self.Element_ID != param.delegatingPkgID
    package.collectVisibleElementsForName(name:param.name,
                         type:param.type, descending:param.descending,
                         originatingContainerID: param.originatingContainerID,
                                         delegatingPkgID:GD::NULL_UNIQUE_ID(),
                                         collectGlobally:param.collectGlobally);
  end if;
end if;',
	1,
	'',
	2879);
INSERT INTO O_TPARM
	VALUES (2881,
	2880,
	'name',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2882,
	2880,
	'type',
	2878,
	0,
	'',
	2881,
	'');
INSERT INTO O_TPARM
	VALUES (2883,
	2880,
	'descending',
	316,
	0,
	'',
	2882,
	'');
INSERT INTO O_TPARM
	VALUES (2884,
	2880,
	'originatingContainerID',
	296,
	0,
	'',
	2883,
	'');
INSERT INTO O_TPARM
	VALUES (2885,
	2880,
	'delegatingPkgID',
	296,
	0,
	'',
	2884,
	'');
INSERT INTO O_TPARM
	VALUES (2886,
	2880,
	'collectGlobally',
	316,
	0,
	'',
	2885,
	'');
INSERT INTO O_TFR
	VALUES (2887,
	26,
	'initialize',
	'',
	19,
	1,
	'// PackageableElement.initialize()
self.Visibility = Visibility::Public;',
	1,
	'',
	2880);
INSERT INTO O_TFR
	VALUES (2888,
	26,
	'getQualifiedName',
	'',
	322,
	1,
	'//PackageableElement::getQualifiedName()
result = "";
select one package related by self->EP_PKG[R8000];
if not_empty package
  result = package.getQualifiedName();
else
  select one comp related by self->C_C[R8003];
  if not_empty comp
    result = comp.getQualifiedName();
  end if;
end if;
if result != ""
  result = result + "::";
end if;
result = result + self.getLocalName();
return result;',
	1,
	'',
	2887);
INSERT INTO O_TFR
	VALUES (2889,
	26,
	'getLocalName',
	'',
	322,
	1,
	'//PackageableElement::getLocalName()
// put these three first because these will be called much more than others.
select one dt related by self->S_DT[R8001];
if not_empty dt
  return dt.Name;
end if;
select one clazz related by self->O_OBJ[R8001];
if not_empty clazz
  return clazz.Name;
end if;
select one package related by self->EP_PKG[R8001];
if not_empty package
  return package.Name;
end if;
select one interface related by self->C_I[R8001];
if not_empty interface
  return interface.Name;
end if;
select one component related by self->C_C[R8001];
if not_empty component
  return component.Name;
end if;
select one assoc related by self->R_REL[R8001];
if not_empty assoc
  return GD::int_to_string(value:assoc.Numb);
end if;
select one func related by self->S_SYNC[R8001];
if not_empty func
  return func.Name;
end if;
select one iComp related by self->CL_IC[R8001];
if not_empty iComp
  return iComp.Name;
end if;
select one ee related by self->S_EE[R8001];
if not_empty ee
  return ee.Name;
end if;
return "";',
	1,
	'',
	2888);
INSERT INTO O_TFR
	VALUES (2890,
	26,
	'isAllowedType',
	'',
	316,
	1,
	'// PackageableElement.isAllowedType()
select one package related by self->EP_PKG[R8000];
select any resultSet related by package->PE_SRS[R8005] where
        selected.Name == "" and selected.Type == ElementTypeConstants::DATATYPE;
select any dt related by resultSet->
                             PE_VIS[R8006]->PE_PE[R8002]->S_DT[R8001] where
                                                selected.Name == param.typeName;
if empty package
  select one component related by self->C_C[R8003];
  select any compResultSet related by component->PE_CRS[R8007] where
        selected.Name == "" and selected.Type == ElementTypeConstants::DATATYPE;
  select any dt related by compResultSet->
                             PE_CVS[R8008]->PE_PE[R8004]->S_DT[R8001] where
                                                selected.Name == param.typeName;
end if;
if not_empty dt
  if param.isReturnType and param.typeName == "void"
    return true;
  else
    return dt.isCommonAllowedType();
  end if;
end if;
return false;',
	1,
	'',
	2889);
INSERT INTO O_TPARM
	VALUES (2891,
	2890,
	'isReturnType',
	316,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2892,
	2890,
	'typeName',
	322,
	0,
	'',
	2891,
	'');
INSERT INTO O_TFR
	VALUES (2893,
	26,
	'resolveDataTypeRelativeToSelf',
	'',
	296,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one package related by self->EP_PKG[R8000];
select one component related by self->C_C[R8003];
if not_empty component
  component.clearScope();
  component.collectVisibleElementsForName(name:param.expected_name,
           type:ElementTypeConstants::DATATYPE,
                       originatingContainerID:component.Id,
                              delegatingContainerID:GD::NULL_UNIQUE_ID(),
                                                         collectGlobally:true);
else
  package.clearScope();
  package.collectVisibleElementsForName(name:param.expected_name,
           type:ElementTypeConstants::DATATYPE, descending:false,
                       originatingContainerID:package.Package_ID,
                                      delegatingPkgID:GD::NULL_UNIQUE_ID(),
                                                         collectGlobally:true);
end if;
select any resultSet related by component->PE_CRS[R8007] where
                                         selected.Name == param.expected_name and 
                            selected.Type == ElementTypeConstants::DATATYPE; 
select many results related by resultSet->PE_CVS[R8008]->PE_PE[R8004];
if not_empty package
  select any pkgResultSet related by package->PE_SRS[R8005] where
                                         selected.Name == param.expected_name and 
                            selected.Type == ElementTypeConstants::DATATYPE; 
  select many results related by pkgResultSet->PE_VIS[R8006]->PE_PE[R8002];
end if;
select any resolvedDt related by results->S_DT[R8001];
if cardinality results == 0
  if not_empty component
    component.clearScope();
    component.collectVisibleElementsForName(name:param.default_name,
          type:ElementTypeConstants::DATATYPE,
                      originatingContainerID:component.Id,
                             delegatingContainerID:GD::NULL_UNIQUE_ID(),
                                                         collectGlobally:true);
  else
    package.clearScope();
    package.collectVisibleElementsForName(name:param.default_name,
          type:ElementTypeConstants::DATATYPE, descending:false,
                      originatingContainerID:package.Package_ID,
                                      delegatingPkgID:GD::NULL_UNIQUE_ID(),
                                                         collectGlobally:true);
  end if;
  select any resultSet related by component->PE_CRS[R8007] where
                                               selected.Name == param.default_name and 
                            selected.Type == ElementTypeConstants::DATATYPE; 
  select many results related by resultSet->PE_CVS[R8008]->PE_PE[R8004];
  if not_empty package
    select any pkgResultSet related by package->PE_SRS[R8005] where
                                               selected.Name == param.default_name and 
                            selected.Type == ElementTypeConstants::DATATYPE; 
    select many results related by
                                  pkgResultSet->PE_VIS[R8006]->PE_PE[R8002];
  end if;
  select any resolvedDt related by results->S_DT[R8001];
end if;
if(not_empty resolvedDt)
  return resolvedDt.DT_ID;
end if;
// no dt was found, this is definitely an issue
// log an error and return a null id
USER::logError(msg:"Unable to resolve any data type.",path:"");
return GD::NULL_UNIQUE_ID();
',
	1,
	'',
	2890);
INSERT INTO O_TPARM
	VALUES (2894,
	2893,
	'expected_name',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2895,
	2893,
	'default_name',
	322,
	0,
	'',
	2894,
	'');
INSERT INTO O_TFR
	VALUES (2896,
	26,
	'canReferToDataType',
	'',
	316,
	1,
	'select one package related by self->EP_PKG[R8000];
select one component related by self->C_C[R8003];
if not_empty component
  component.clearScope();
  component.collectVisibleElementsForName(name:param.dtName,
         type:ElementTypeConstants::DATATYPE,
                          originatingContainerID:component.Id,
                                   delegatingContainerID:GD::NULL_UNIQUE_ID(),
                                                          collectGlobally:true);
else
  package.clearScope();
  package.collectVisibleElementsForName(name:param.dtName,
         type:ElementTypeConstants::DATATYPE, descending:false,
                           originatingContainerID:package.Package_ID,
                                          delegatingPkgID:GD::NULL_UNIQUE_ID(),
                                                          collectGlobally:true);
end if;
// Find the previously created visibility list
select any resultSet related by package->PE_SRS[R8005] where
      selected.Name == param.dtName and selected.Type == ElementTypeConstants::DATATYPE;
select any dt related by resultSet->PE_VIS[R8006]->
                 PE_PE[R8002]->S_DT[R8001] where selected.DT_ID == param.dtID;
if not_empty component
  // Find the previously created visibility list
  select any compResultSet related by component->PE_CRS[R8007] where
      selected.Name == param.dtName and selected.Type == ElementTypeConstants::DATATYPE;
  select any dt related by compResultSet->PE_CVS[R8008]->
                   PE_PE[R8004]->S_DT[R8001] where selected.DT_ID == dt.DT_ID;
end if;
if(not_empty dt)
  return true;
end if;
return false;
',
	1,
	'',
	2893);
INSERT INTO O_TPARM
	VALUES (2897,
	2896,
	'dtID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2898,
	2896,
	'dtName',
	322,
	0,
	'',
	2897,
	'');
INSERT INTO O_TFR
	VALUES (2899,
	26,
	'getVisibilityAdornment',
	'',
	322,
	1,
	'// Packageable Element.getVisibilityAdornment()
select one package related by self->EP_PKG[R8000];
select one component related by self->C_C[R8003];
select one sys related by self->EP_PKG[R8001]->S_SYS[R1401];
result = "";
if ((not_empty package or not_empty component) or 
    (not_empty sys and sys.useGlobals == true))
  if self.Visibility == Visibility::Public
    result = "+";
  elif self.Visibility == Visibility::Protected
    result = "#";
  elif self.Visibility == Visibility::Private
    result = "-";
  end if;
end if;
return result;',
	1,
	'',
	2896);
INSERT INTO O_TFR
	VALUES (2900,
	26,
	'getVisibilityValue',
	'',
	2901,
	1,
	'select one irdt related by self->S_DT[R8001]->S_IRDT[R17];
if(not_empty irdt)
  select one classPE related by irdt->O_OBJ[R123]->PE_PE[R8001];
  return classPE.Visibility;
end if;
return self.Visibility;',
	1,
	'',
	2899);
INSERT INTO O_TFR
	VALUES (2902,
	26,
	'resolveComponentRelativeToSelf',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one package related by self->EP_PKG[R8000];
select one component related by self->C_C[R8003];
if not_empty component
  component.clearScope();
  component.collectVisibleElementsForName(name:param.expected_name,
           type:ElementTypeConstants::COMPONENT,
                       originatingContainerID:component.Id,
                              delegatingContainerID:GD::NULL_UNIQUE_ID(),
                                                         collectGlobally:true);
else
  package.clearScope();
  package.collectVisibleElementsForName(name:param.expected_name,
           type:ElementTypeConstants::COMPONENT, descending:false,
                       originatingContainerID:package.Package_ID,
                                      delegatingPkgID:GD::NULL_UNIQUE_ID(),
                                                         collectGlobally:true);
end if;',
	1,
	'',
	2900);
INSERT INTO O_TPARM
	VALUES (2903,
	2902,
	'expected_name',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2904,
	26,
	'resolveInterfaceRelativeToSelf',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one package related by self->EP_PKG[R8000];
select one component related by self->C_C[R8003];
if not_empty component
  component.clearScope();
  component.collectVisibleElementsForName(name:param.expected_name,
           type:ElementTypeConstants::INTERFACE,
                       originatingContainerID:component.Id,
                              delegatingContainerID:GD::NULL_UNIQUE_ID(),
                                                         collectGlobally:true);
else
  package.clearScope();
  package.collectVisibleElementsForName(name:param.expected_name,
           type:ElementTypeConstants::INTERFACE, descending:false,
                       originatingContainerID:package.Package_ID,
                                      delegatingPkgID:GD::NULL_UNIQUE_ID(),
                                                         collectGlobally:true);
end if;',
	1,
	'',
	2902);
INSERT INTO O_TPARM
	VALUES (2905,
	2904,
	'expected_name',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2906,
	26,
	'resolvePackageRelativeToSelf',
	'',
	296,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one package related by self->EP_PKG[R8000];
select one component related by self->C_C[R8003];
if not_empty component
  component.clearScope();
  component.collectVisibleElementsForName(name:param.expected_name,
           type:ElementTypeConstants::PACKAGE,
                       originatingContainerID:component.Id,
                              delegatingContainerID:GD::NULL_UNIQUE_ID(),
                                                         collectGlobally:true);
else
  package.clearScope();
  package.collectVisibleElementsForName(name:param.expected_name,
           type:ElementTypeConstants::PACKAGE, descending:false,
                       originatingContainerID:package.Package_ID,
                                      delegatingPkgID:GD::NULL_UNIQUE_ID(),
                                                         collectGlobally:true);
end if;
select any resultSet related by component->PE_CRS[R8007] where
                                         selected.Name == param.expected_name and 
                            selected.Type == ElementTypeConstants::PACKAGE; 
select many results related by resultSet->PE_CVS[R8008]->PE_PE[R8004];
if not_empty package
  select any pkgResultSet related by package->PE_SRS[R8005] where
                                         selected.Name == param.expected_name and 
                            selected.Type == ElementTypeConstants::PACKAGE; 
  select many results related by pkgResultSet->PE_VIS[R8006]->PE_PE[R8002];
end if;
select any resolvedPkg related by results->EP_PKG[R8001];
if(not_empty resolvedPkg)
  return resolvedPkg.Package_ID;
end if; 
return GD::NULL_UNIQUE_ID();
',
	1,
	'',
	2904);
INSERT INTO O_TPARM
	VALUES (2907,
	2906,
	'expected_name',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2908,
	26,
	'resolveClassRelativeToSelf',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one package related by self->EP_PKG[R8000];
select one component related by self->C_C[R8003];
if not_empty component
  component.clearScope();
  component.collectVisibleElementsForName(name:param.expected_name,
           type:ElementTypeConstants::CLASS,
                       originatingContainerID:component.Id,
                              delegatingContainerID:GD::NULL_UNIQUE_ID(),
                                                         collectGlobally:true);
else
  package.clearScope();
  package.collectVisibleElementsForName(name:param.expected_name,
           type:ElementTypeConstants::CLASS, descending:false,
                       originatingContainerID:package.Package_ID,
                                      delegatingPkgID:GD::NULL_UNIQUE_ID(),
                                                         collectGlobally:true);
end if;',
	1,
	'',
	2906);
INSERT INTO O_TPARM
	VALUES (2909,
	2908,
	'expected_name',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2910,
	26,
	'resolveEERelativeToSelf',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one package related by self->EP_PKG[R8000];
select one component related by self->C_C[R8003];
if not_empty component
  component.clearScope();
  component.collectVisibleElementsForName(name:param.expected_name,
           type:ElementTypeConstants::EE,
                       originatingContainerID:component.Id,
                              delegatingContainerID:GD::NULL_UNIQUE_ID(),
                                                         collectGlobally:true);
else
  package.clearScope();
  package.collectVisibleElementsForName(name:param.expected_name,
           type:ElementTypeConstants::EE, descending:false,
                       originatingContainerID:package.Package_ID,
                                      delegatingPkgID:GD::NULL_UNIQUE_ID(),
                                                         collectGlobally:true);
end if;',
	1,
	'',
	2908);
INSERT INTO O_TPARM
	VALUES (2911,
	2910,
	'expected_name',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (2912,
	26,
	'isElementVisibleToSelf',
	'',
	316,
	1,
	'select one package related by self->EP_PKG[R8000];
select one component related by self->C_C[R8003];
if not_empty component
  component.clearScope();
  component.collectVisibleElementsForName(name:"",
           type:param.type,
                       originatingContainerID:component.Id,
                              delegatingContainerID:GD::NULL_UNIQUE_ID(),
                                                         collectGlobally:true);
else
  package.clearScope();
  package.collectVisibleElementsForName(name:"",
           type:param.type, descending:false,
                       originatingContainerID:package.Package_ID,
                                      delegatingPkgID:GD::NULL_UNIQUE_ID(),
                                                         collectGlobally:true);
end if;
select any resultSet related by component->PE_CRS[R8007] where
                                                    selected.Type == param.type;
select many results related by resultSet->PE_CVS[R8008]->PE_PE[R8004];
if not_empty package
  select any pkgResultSet related by package->PE_SRS[R8005] where 
                                                    selected.Type == param.type; 
  select many results related by pkgResultSet->PE_VIS[R8006]->PE_PE[R8002];
end if;
for each result in results
  if(result.Element_ID == param.elementId)
    return true;
  end if;
end for;
return false;',
	1,
	'',
	2910);
INSERT INTO O_TPARM
	VALUES (2913,
	2912,
	'type',
	2878,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2914,
	2912,
	'elementId',
	296,
	0,
	'',
	2913,
	'');
INSERT INTO O_NBATTR
	VALUES (25,
	26);
INSERT INTO O_BATTR
	VALUES (25,
	26);
INSERT INTO O_ATTR
	VALUES (25,
	26,
	0,
	'Element_ID',
	'',
	'',
	'Element_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2915,
	26);
INSERT INTO O_BATTR
	VALUES (2915,
	26);
INSERT INTO O_ATTR
	VALUES (2915,
	26,
	25,
	'Visibility',
	'Full Name: Visibility',
	'',
	'Visibility',
	0,
	2901,
	'',
	'');
INSERT INTO O_REF
	VALUES (26,
	2798,
	0,
	2825,
	2823,
	2826,
	2824,
	2916,
	2917,
	0,
	0,
	'',
	'Package',
	'Package_ID',
	'R8000');
INSERT INTO O_RATTR
	VALUES (2916,
	26,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2916,
	26,
	2915,
	'Package_ID',
	'',
	'',
	'Package_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (26,
	709,
	0,
	762,
	2848,
	2850,
	2849,
	2918,
	2919,
	0,
	0,
	'',
	'Component',
	'Id',
	'R8003');
INSERT INTO O_RATTR
	VALUES (2918,
	26,
	25,
	26,
	0,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2918,
	26,
	2916,
	'Component_ID',
	'',
	'',
	'Component_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2920,
	26);
INSERT INTO O_BATTR
	VALUES (2920,
	26);
INSERT INTO O_ATTR
	VALUES (2920,
	26,
	2918,
	'type',
	'readonly:true',
	'',
	'type',
	0,
	2878,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	26);
INSERT INTO O_OIDA
	VALUES (25,
	26,
	0,
	'Element_ID');
INSERT INTO O_ID
	VALUES (1,
	26);
INSERT INTO O_ID
	VALUES (2,
	26);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2846,
	'Element Visibility',
	8001,
	'PE_VIS',
	'This link class captures the list of element instances that are visible to a
given package. The association R8002 is populated by the operations
collectVisibleElementsForName() on the Package and PackageableElement classes.
Persistent:false',
	2796);
INSERT INTO O_REF
	VALUES (2846,
	26,
	0,
	25,
	2843,
	2847,
	2844,
	2921,
	2922,
	0,
	0,
	'',
	'Packageable Element',
	'Element_ID',
	'R8002');
INSERT INTO O_RATTR
	VALUES (2921,
	2846,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2921,
	2846,
	2923,
	'Element_ID',
	'',
	'',
	'Element_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2846,
	2798,
	0,
	2825,
	2843,
	2847,
	2845,
	2924,
	2925,
	0,
	0,
	'',
	'Package',
	'Package_ID',
	'R8002');
INSERT INTO O_REF
	VALUES (2846,
	2858,
	0,
	2864,
	2860,
	2865,
	2861,
	2924,
	2926,
	2925,
	0,
	'',
	'Search Result Set',
	'Package_ID',
	'R8006');
INSERT INTO O_RATTR
	VALUES (2924,
	2846,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2924,
	2846,
	2921,
	'Package_ID',
	'',
	'',
	'Package_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2846,
	2858,
	0,
	2862,
	2860,
	2865,
	2861,
	2927,
	2928,
	0,
	0,
	'',
	'Search Result Set',
	'Name',
	'R8006');
INSERT INTO O_RATTR
	VALUES (2927,
	2846,
	2862,
	2858,
	1,
	'Name');
INSERT INTO O_ATTR
	VALUES (2927,
	2846,
	2924,
	'Name',
	'',
	'',
	'Name',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2846,
	2858,
	0,
	2863,
	2860,
	2865,
	2861,
	2929,
	2930,
	0,
	0,
	'',
	'Search Result Set',
	'Type',
	'R8006');
INSERT INTO O_RATTR
	VALUES (2929,
	2846,
	2863,
	2858,
	1,
	'Type');
INSERT INTO O_ATTR
	VALUES (2929,
	2846,
	2927,
	'Type',
	'',
	'',
	'Type',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2923,
	2846);
INSERT INTO O_BATTR
	VALUES (2923,
	2846);
INSERT INTO O_ATTR
	VALUES (2923,
	2846,
	0,
	'Visibility_ID',
	'',
	'',
	'Visibility_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2846);
INSERT INTO O_OIDA
	VALUES (2921,
	2846,
	0,
	'Element_ID');
INSERT INTO O_OIDA
	VALUES (2924,
	2846,
	0,
	'Package_ID');
INSERT INTO O_OIDA
	VALUES (2923,
	2846,
	0,
	'Visibility_ID');
INSERT INTO O_ID
	VALUES (1,
	2846);
INSERT INTO O_ID
	VALUES (2,
	2846);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2854,
	'Component Visibility',
	8002,
	'PE_CVS',
	'This link class captures the list of element instances that are visible to a
given component. The association R8004 is populated by the operations
collectVisibleElementsForName() on the Component and PackageableElement classes.
Persistent:false',
	2796);
INSERT INTO O_REF
	VALUES (2854,
	709,
	0,
	762,
	2851,
	2855,
	2852,
	2931,
	2932,
	0,
	0,
	'',
	'Component',
	'Id',
	'R8004');
INSERT INTO O_REF
	VALUES (2854,
	2868,
	0,
	2874,
	2870,
	2875,
	2871,
	2931,
	2933,
	2932,
	0,
	'',
	'Component Result Set',
	'Id',
	'R8008');
INSERT INTO O_RATTR
	VALUES (2931,
	2854,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2931,
	2854,
	2934,
	'Id',
	'',
	'',
	'Id',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2854,
	26,
	0,
	25,
	2851,
	2855,
	2853,
	2934,
	2935,
	0,
	0,
	'',
	'Packageable Element',
	'Element_ID',
	'R8004');
INSERT INTO O_RATTR
	VALUES (2934,
	2854,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2934,
	2854,
	2936,
	'Element_ID',
	'',
	'',
	'Element_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2854,
	2868,
	0,
	2872,
	2870,
	2875,
	2871,
	2937,
	2938,
	0,
	0,
	'',
	'Component Result Set',
	'Name',
	'R8008');
INSERT INTO O_RATTR
	VALUES (2937,
	2854,
	2872,
	2868,
	1,
	'Name');
INSERT INTO O_ATTR
	VALUES (2937,
	2854,
	2931,
	'Name',
	'',
	'',
	'Name',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2854,
	2868,
	0,
	2873,
	2870,
	2875,
	2871,
	2939,
	2940,
	0,
	0,
	'',
	'Component Result Set',
	'Type',
	'R8008');
INSERT INTO O_RATTR
	VALUES (2939,
	2854,
	2873,
	2868,
	1,
	'Type');
INSERT INTO O_ATTR
	VALUES (2939,
	2854,
	2937,
	'Type',
	'',
	'',
	'Type',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2936,
	2854);
INSERT INTO O_BATTR
	VALUES (2936,
	2854);
INSERT INTO O_ATTR
	VALUES (2936,
	2854,
	0,
	'Visibility_ID',
	'',
	'',
	'Visibility_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2854);
INSERT INTO O_OIDA
	VALUES (2931,
	2854,
	0,
	'Id');
INSERT INTO O_OIDA
	VALUES (2934,
	2854,
	0,
	'Element_ID');
INSERT INTO O_OIDA
	VALUES (2936,
	2854,
	0,
	'Visibility_ID');
INSERT INTO O_ID
	VALUES (1,
	2854);
INSERT INTO O_ID
	VALUES (2,
	2854);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2868,
	'Component Result Set',
	8004,
	'PE_CRS',
	'This class captures set of element instances that are visible to a
given component for a given search criterion.
----
Persistent:false',
	2796);
INSERT INTO O_TFR
	VALUES (2941,
	2868,
	'dispose',
	'',
	19,
	1,
	'// Component Result Set.dispose()
select one component related by self->C_C[R8007];
select many elemVis related by self->PE_CVS[R8008];
for each elemV in elemVis
  select one pe related by elemV->PE_PE[R8004];
  unrelate component from pe across R8004 using elemV;
  unrelate self from elemV across R8008;
  delete object instance elemV;
end for;
unrelate self from component across R8007;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_NBATTR
	VALUES (2872,
	2868);
INSERT INTO O_BATTR
	VALUES (2872,
	2868);
INSERT INTO O_ATTR
	VALUES (2872,
	2868,
	2874,
	'Name',
	'',
	'',
	'Name',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2873,
	2868);
INSERT INTO O_BATTR
	VALUES (2873,
	2868);
INSERT INTO O_ATTR
	VALUES (2873,
	2868,
	2872,
	'Type',
	'',
	'',
	'Type',
	0,
	2878,
	'',
	'');
INSERT INTO O_REF
	VALUES (2868,
	709,
	0,
	762,
	2866,
	2869,
	2867,
	2874,
	2942,
	0,
	0,
	'',
	'Component',
	'Id',
	'R8007');
INSERT INTO O_RATTR
	VALUES (2874,
	2868,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2874,
	2868,
	0,
	'Id',
	'',
	'',
	'Id',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2868);
INSERT INTO O_OIDA
	VALUES (2872,
	2868,
	0,
	'Name');
INSERT INTO O_OIDA
	VALUES (2873,
	2868,
	0,
	'Type');
INSERT INTO O_OIDA
	VALUES (2874,
	2868,
	0,
	'Id');
INSERT INTO O_ID
	VALUES (1,
	2868);
INSERT INTO O_ID
	VALUES (2,
	2868);
-- BP 7.1.6 content: Subsystem syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SS
	VALUES (2943,
	'Model Integrity',
	'',
	'MI',
	1300,
	1,
	0);
INSERT INTO S_SID
	VALUES (1,
	2943);
INSERT INTO O_IOBJ
	VALUES (2944,
	705,
	0,
	2943,
	'System Model',
	'S_SYS');
INSERT INTO R_SIMP
	VALUES (2945);
INSERT INTO R_REL
	VALUES (2945,
	1300,
	'',
	2943);
INSERT INTO R_PART
	VALUES (2946,
	2945,
	2947,
	0,
	0,
	'managed by');
INSERT INTO O_RTIDA
	VALUES (2948,
	2946,
	0,
	2945,
	2947);
INSERT INTO R_RTO
	VALUES (2946,
	2945,
	2947,
	0);
INSERT INTO R_OIR
	VALUES (2946,
	2945,
	2947,
	0);
INSERT INTO R_FORM
	VALUES (2949,
	2945,
	2950,
	1,
	1,
	'manages');
INSERT INTO R_RGO
	VALUES (2949,
	2945,
	2950);
INSERT INTO R_OIR
	VALUES (2949,
	2945,
	2950,
	0);
INSERT INTO R_SIMP
	VALUES (2951);
INSERT INTO R_REL
	VALUES (2951,
	1301,
	'',
	2943);
INSERT INTO R_PART
	VALUES (705,
	2951,
	2952,
	0,
	0,
	'contained within');
INSERT INTO O_RTIDA
	VALUES (754,
	705,
	0,
	2951,
	2952);
INSERT INTO R_RTO
	VALUES (705,
	2951,
	2952,
	0);
INSERT INTO R_OIR
	VALUES (705,
	2951,
	2952,
	2944);
INSERT INTO R_FORM
	VALUES (2946,
	2951,
	2953,
	0,
	1,
	'contains');
INSERT INTO R_RGO
	VALUES (2946,
	2951,
	2953);
INSERT INTO R_OIR
	VALUES (2946,
	2951,
	2953,
	0);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2946,
	'Integrity Manager',
	1300,
	'MI_IM',
	'Persistent:false',
	2943);
INSERT INTO O_TFR
	VALUES (2954,
	2946,
	'createIssue',
	'',
	19,
	0,
	'// Selecting the system here from instances is safe as all systems are stored
// on the default model root
select any system from instances of S_SYS
                                        where (selected.Sys_ID == param.sys_id);
select one manager related by system->MI_IM[R1301];
if(not_empty manager)
  create object instance issue of MI_II;
  relate issue to manager across R1300;
  issue.Description = param.description;
  issue.Severity = param.severity;
  issue.ElementName = param.name;
  issue.ElementPath = param.path;
  issue.ElementID = param.id;
  issue.Element = param.element;
end if;',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (2955,
	2954,
	'sys_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (2956,
	2954,
	'description',
	322,
	0,
	'',
	2955,
	'');
INSERT INTO O_TPARM
	VALUES (2957,
	2954,
	'severity',
	2958,
	0,
	'',
	2956,
	'');
INSERT INTO O_TPARM
	VALUES (2959,
	2954,
	'name',
	322,
	0,
	'',
	2957,
	'');
INSERT INTO O_TPARM
	VALUES (2960,
	2954,
	'path',
	322,
	0,
	'',
	2959,
	'');
INSERT INTO O_TPARM
	VALUES (2961,
	2954,
	'id',
	296,
	0,
	'',
	2960,
	'');
INSERT INTO O_TPARM
	VALUES (2962,
	2954,
	'element',
	317,
	0,
	'',
	2961,
	'');
INSERT INTO O_NBATTR
	VALUES (2963,
	2946);
INSERT INTO O_BATTR
	VALUES (2963,
	2946);
INSERT INTO O_ATTR
	VALUES (2963,
	2946,
	2964,
	'RootElement',
	'',
	'',
	'RootElement',
	0,
	317,
	'',
	'');
INSERT INTO O_REF
	VALUES (2946,
	705,
	0,
	754,
	2951,
	2953,
	2952,
	2964,
	2965,
	0,
	0,
	'',
	'System Model',
	'Sys_ID',
	'R1301');
INSERT INTO O_RATTR
	VALUES (2964,
	2946,
	754,
	705,
	1,
	'Sys_ID');
INSERT INTO O_ATTR
	VALUES (2964,
	2946,
	2948,
	'Sys_ID',
	'',
	'',
	'Sys_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2948,
	2946);
INSERT INTO O_BATTR
	VALUES (2948,
	2946);
INSERT INTO O_ATTR
	VALUES (2948,
	2946,
	0,
	'IM_ID',
	'',
	'',
	'IM_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2946);
INSERT INTO O_OIDA
	VALUES (2948,
	2946,
	0,
	'IM_ID');
INSERT INTO O_ID
	VALUES (1,
	2946);
INSERT INTO O_ID
	VALUES (2,
	2946);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2949,
	'Integrity Issue',
	1301,
	'MI_II',
	'Persistent:false',
	2943);
INSERT INTO O_TFR
	VALUES (2966,
	2949,
	'recheckIntegrity',
	'',
	19,
	1,
	'self.dispose();',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (2967,
	2949,
	'dispose',
	'',
	19,
	1,
	'select one manager related by self->MI_IM[R1300];
unrelate self from manager across R1300;
delete object instance self;',
	1,
	'',
	2966);
INSERT INTO O_REF
	VALUES (2949,
	2946,
	0,
	2948,
	2945,
	2950,
	2947,
	2968,
	2969,
	0,
	0,
	'',
	'Integrity Manager',
	'IM_ID',
	'R1300');
INSERT INTO O_RATTR
	VALUES (2968,
	2949,
	2948,
	2946,
	1,
	'IM_ID');
INSERT INTO O_ATTR
	VALUES (2968,
	2949,
	2970,
	'IM_ID',
	'',
	'',
	'IM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2971,
	2949);
INSERT INTO O_BATTR
	VALUES (2971,
	2949);
INSERT INTO O_ATTR
	VALUES (2971,
	2949,
	2968,
	'Description',
	'',
	'',
	'Description',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2972,
	2949);
INSERT INTO O_BATTR
	VALUES (2972,
	2949);
INSERT INTO O_ATTR
	VALUES (2972,
	2949,
	2971,
	'Severity',
	'',
	'',
	'Severity',
	0,
	2958,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2973,
	2949);
INSERT INTO O_BATTR
	VALUES (2973,
	2949);
INSERT INTO O_ATTR
	VALUES (2973,
	2949,
	2972,
	'ElementName',
	'',
	'',
	'ElementName',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2974,
	2949);
INSERT INTO O_BATTR
	VALUES (2974,
	2949);
INSERT INTO O_ATTR
	VALUES (2974,
	2949,
	2973,
	'ElementPath',
	'',
	'',
	'ElementPath',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2975,
	2949);
INSERT INTO O_BATTR
	VALUES (2975,
	2949);
INSERT INTO O_ATTR
	VALUES (2975,
	2949,
	2974,
	'ElementID',
	'',
	'',
	'ElementID',
	0,
	296,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2976,
	2949);
INSERT INTO O_BATTR
	VALUES (2976,
	2949);
INSERT INTO O_ATTR
	VALUES (2976,
	2949,
	2975,
	'Element',
	'',
	'',
	'Element',
	0,
	317,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2970,
	2949);
INSERT INTO O_BATTR
	VALUES (2970,
	2949);
INSERT INTO O_ATTR
	VALUES (2970,
	2949,
	0,
	'II_ID',
	'',
	'',
	'II_ID',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (2977,
	2949);
INSERT INTO O_BATTR
	VALUES (2977,
	2949);
INSERT INTO O_ATTR
	VALUES (2977,
	2949,
	2976,
	'markerID',
	'',
	'',
	'markerID',
	0,
	2978,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2949);
INSERT INTO O_OIDA
	VALUES (2970,
	2949,
	0,
	'II_ID');
INSERT INTO O_ID
	VALUES (1,
	2949);
INSERT INTO O_ID
	VALUES (2,
	2949);
-- BP 7.1 content: Subsystem syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SS
	VALUES (2979,
	'Message',
	'// This is used by schema_gen to ignore this subsystem (for publication)
TRANSLATE_FOR_EXTERNAL_USE:FALSE',
	'MSG',
	1000,
	1,
	0);
INSERT INTO S_SID
	VALUES (1,
	2979);
INSERT INTO O_IOBJ
	VALUES (2980,
	50,
	0,
	2979,
	'Operation Parameter',
	'O_TPARM');
INSERT INTO O_IOBJ
	VALUES (2981,
	48,
	0,
	2979,
	'Function Parameter',
	'S_SPARM');
INSERT INTO O_IOBJ
	VALUES (2982,
	52,
	0,
	2979,
	'State Machine Event Data Item',
	'SM_EVTDI');
INSERT INTO O_IOBJ
	VALUES (2983,
	46,
	0,
	2979,
	'Bridge Parameter',
	'S_BPARM');
INSERT INTO O_IOBJ
	VALUES (2984,
	703,
	0,
	2979,
	'Interaction Participant',
	'SQ_P');
INSERT INTO O_IOBJ
	VALUES (2985,
	1488,
	0,
	2979,
	'State Machine Event',
	'SM_EVT');
INSERT INTO O_IOBJ
	VALUES (2986,
	8,
	0,
	2979,
	'Function',
	'S_SYNC');
INSERT INTO O_IOBJ
	VALUES (2987,
	43,
	0,
	2979,
	'Operation',
	'O_TFR');
INSERT INTO O_IOBJ
	VALUES (2988,
	6,
	0,
	2979,
	'Bridge',
	'S_BRG');
INSERT INTO O_IOBJ
	VALUES (2989,
	2990,
	0,
	2979,
	'Interface Signal',
	'C_AS');
INSERT INTO O_IOBJ
	VALUES (2991,
	2992,
	0,
	2979,
	'Interface Operation',
	'C_IO');
INSERT INTO O_IOBJ
	VALUES (2993,
	57,
	0,
	2979,
	'Property Parameter',
	'C_PP');
INSERT INTO R_SIMP
	VALUES (2994);
INSERT INTO R_REL
	VALUES (2994,
	1000,
	'',
	2979);
INSERT INTO R_FORM
	VALUES (2995,
	2994,
	2996,
	1,
	1,
	'has an informal');
INSERT INTO R_RGO
	VALUES (2995,
	2994,
	2996);
INSERT INTO R_OIR
	VALUES (2995,
	2994,
	2996,
	0);
INSERT INTO R_PART
	VALUES (2141,
	2994,
	2997,
	0,
	1,
	'belongs to informal');
INSERT INTO O_RTIDA
	VALUES (2177,
	2141,
	0,
	2994,
	2997);
INSERT INTO R_RTO
	VALUES (2141,
	2994,
	2997,
	0);
INSERT INTO R_OIR
	VALUES (2141,
	2994,
	2997,
	0);
INSERT INTO R_SIMP
	VALUES (2998);
INSERT INTO R_REL
	VALUES (2998,
	1001,
	'',
	2979);
INSERT INTO R_FORM
	VALUES (2995,
	2998,
	2999,
	1,
	1,
	'has a formal');
INSERT INTO R_RGO
	VALUES (2995,
	2998,
	2999);
INSERT INTO R_OIR
	VALUES (2995,
	2998,
	2999,
	0);
INSERT INTO R_PART
	VALUES (2141,
	2998,
	3000,
	0,
	1,
	'belongs to formal');
INSERT INTO O_RTIDA
	VALUES (2177,
	2141,
	0,
	2998,
	3000);
INSERT INTO R_RTO
	VALUES (2141,
	2998,
	3000,
	0);
INSERT INTO R_OIR
	VALUES (2141,
	2998,
	3000,
	0);
INSERT INTO R_SIMP
	VALUES (3001);
INSERT INTO R_REL
	VALUES (3001,
	1007,
	'',
	2979);
INSERT INTO R_FORM
	VALUES (2141,
	3001,
	3002,
	1,
	1,
	'receives');
INSERT INTO R_RGO
	VALUES (2141,
	3001,
	3002);
INSERT INTO R_OIR
	VALUES (2141,
	3001,
	3002,
	0);
INSERT INTO R_PART
	VALUES (703,
	3001,
	3003,
	0,
	1,
	'has destination');
INSERT INTO O_RTIDA
	VALUES (743,
	703,
	0,
	3001,
	3003);
INSERT INTO R_RTO
	VALUES (703,
	3001,
	3003,
	0);
INSERT INTO R_OIR
	VALUES (703,
	3001,
	3003,
	2984);
INSERT INTO R_SIMP
	VALUES (3004);
INSERT INTO R_REL
	VALUES (3004,
	1008,
	'',
	2979);
INSERT INTO R_FORM
	VALUES (2141,
	3004,
	3005,
	1,
	1,
	'sends');
INSERT INTO R_RGO
	VALUES (2141,
	3004,
	3005);
INSERT INTO R_OIR
	VALUES (2141,
	3004,
	3005,
	0);
INSERT INTO R_PART
	VALUES (703,
	3004,
	3006,
	0,
	1,
	'has source');
INSERT INTO O_RTIDA
	VALUES (743,
	703,
	0,
	3004,
	3006);
INSERT INTO R_RTO
	VALUES (703,
	3004,
	3006,
	0);
INSERT INTO R_OIR
	VALUES (703,
	3004,
	3006,
	2984);
INSERT INTO R_SIMP
	VALUES (3007);
INSERT INTO R_REL
	VALUES (3007,
	1009,
	'CrossComponent:true',
	2979);
INSERT INTO R_FORM
	VALUES (3008,
	3007,
	3009,
	1,
	1,
	'is generated by');
INSERT INTO R_RGO
	VALUES (3008,
	3007,
	3009);
INSERT INTO R_OIR
	VALUES (3008,
	3007,
	3009,
	0);
INSERT INTO R_PART
	VALUES (1488,
	3007,
	3010,
	0,
	1,
	'generates');
INSERT INTO O_RTIDA
	VALUES (1604,
	1488,
	0,
	3007,
	3010);
INSERT INTO R_RTO
	VALUES (1488,
	3007,
	3010,
	0);
INSERT INTO R_OIR
	VALUES (1488,
	3007,
	3010,
	2985);
INSERT INTO R_SIMP
	VALUES (3011);
INSERT INTO R_REL
	VALUES (3011,
	1010,
	'CrossComponent:true',
	2979);
INSERT INTO R_FORM
	VALUES (3012,
	3011,
	3013,
	1,
	1,
	'is invoked by');
INSERT INTO R_RGO
	VALUES (3012,
	3011,
	3013);
INSERT INTO R_OIR
	VALUES (3012,
	3011,
	3013,
	0);
INSERT INTO R_PART
	VALUES (8,
	3011,
	3014,
	0,
	1,
	'is invocation of');
INSERT INTO O_RTIDA
	VALUES (11,
	8,
	0,
	3011,
	3014);
INSERT INTO R_RTO
	VALUES (8,
	3011,
	3014,
	0);
INSERT INTO R_OIR
	VALUES (8,
	3011,
	3014,
	2986);
INSERT INTO R_SIMP
	VALUES (3015);
INSERT INTO R_REL
	VALUES (3015,
	1011,
	'CrossComponent:true',
	2979);
INSERT INTO R_FORM
	VALUES (3016,
	3015,
	3017,
	1,
	1,
	'is invoked by');
INSERT INTO R_RGO
	VALUES (3016,
	3015,
	3017);
INSERT INTO R_OIR
	VALUES (3016,
	3015,
	3017,
	0);
INSERT INTO R_PART
	VALUES (43,
	3015,
	3018,
	0,
	1,
	'is invocation of');
INSERT INTO O_RTIDA
	VALUES (201,
	43,
	0,
	3015,
	3018);
INSERT INTO R_RTO
	VALUES (43,
	3015,
	3018,
	0);
INSERT INTO R_OIR
	VALUES (43,
	3015,
	3018,
	2987);
INSERT INTO R_SIMP
	VALUES (3019);
INSERT INTO R_REL
	VALUES (3019,
	1012,
	'CrossComponent:true',
	2979);
INSERT INTO R_FORM
	VALUES (3020,
	3019,
	3021,
	1,
	1,
	'is invoked by');
INSERT INTO R_RGO
	VALUES (3020,
	3019,
	3021);
INSERT INTO R_OIR
	VALUES (3020,
	3019,
	3021,
	0);
INSERT INTO R_PART
	VALUES (6,
	3019,
	3022,
	0,
	1,
	'is invocation of');
INSERT INTO O_RTIDA
	VALUES (16,
	6,
	0,
	3019,
	3022);
INSERT INTO R_RTO
	VALUES (6,
	3019,
	3022,
	0);
INSERT INTO R_OIR
	VALUES (6,
	3019,
	3022,
	2988);
INSERT INTO R_SUBSUP
	VALUES (3023);
INSERT INTO R_REL
	VALUES (3023,
	1013,
	'',
	2979);
INSERT INTO R_SUPER
	VALUES (2995,
	3023,
	3024);
INSERT INTO O_RTIDA
	VALUES (3025,
	2995,
	0,
	3023,
	3024);
INSERT INTO R_RTO
	VALUES (2995,
	3023,
	3024,
	0);
INSERT INTO R_OIR
	VALUES (2995,
	3023,
	3024,
	0);
INSERT INTO R_SUB
	VALUES (3026,
	3023,
	3027);
INSERT INTO R_RGO
	VALUES (3026,
	3023,
	3027);
INSERT INTO R_OIR
	VALUES (3026,
	3023,
	3027,
	0);
INSERT INTO R_SUB
	VALUES (3028,
	3023,
	3029);
INSERT INTO R_RGO
	VALUES (3028,
	3023,
	3029);
INSERT INTO R_OIR
	VALUES (3028,
	3023,
	3029,
	0);
INSERT INTO R_SUB
	VALUES (3030,
	3023,
	3031);
INSERT INTO R_RGO
	VALUES (3030,
	3023,
	3031);
INSERT INTO R_OIR
	VALUES (3030,
	3023,
	3031,
	0);
INSERT INTO R_SUB
	VALUES (3032,
	3023,
	3033);
INSERT INTO R_RGO
	VALUES (3032,
	3023,
	3033);
INSERT INTO R_OIR
	VALUES (3032,
	3023,
	3033,
	0);
INSERT INTO R_SUB
	VALUES (3034,
	3023,
	3035);
INSERT INTO R_RGO
	VALUES (3034,
	3023,
	3035);
INSERT INTO R_OIR
	VALUES (3034,
	3023,
	3035,
	0);
INSERT INTO R_SUB
	VALUES (3036,
	3023,
	3037);
INSERT INTO R_RGO
	VALUES (3036,
	3023,
	3037);
INSERT INTO R_OIR
	VALUES (3036,
	3023,
	3037,
	0);
INSERT INTO R_SIMP
	VALUES (3038);
INSERT INTO R_REL
	VALUES (3038,
	1014,
	'CrossComponent:true',
	2979);
INSERT INTO R_FORM
	VALUES (3026,
	3038,
	3039,
	1,
	1,
	'represents');
INSERT INTO R_RGO
	VALUES (3026,
	3038,
	3039);
INSERT INTO R_OIR
	VALUES (3026,
	3038,
	3039,
	0);
INSERT INTO R_PART
	VALUES (46,
	3038,
	3040,
	0,
	1,
	'is represented by');
INSERT INTO O_RTIDA
	VALUES (211,
	46,
	0,
	3038,
	3040);
INSERT INTO R_RTO
	VALUES (46,
	3038,
	3040,
	0);
INSERT INTO R_OIR
	VALUES (46,
	3038,
	3040,
	2983);
INSERT INTO R_SIMP
	VALUES (3041);
INSERT INTO R_REL
	VALUES (3041,
	1015,
	'CrossComponent:true',
	2979);
INSERT INTO R_FORM
	VALUES (3028,
	3041,
	3042,
	1,
	1,
	'represents');
INSERT INTO R_RGO
	VALUES (3028,
	3041,
	3042);
INSERT INTO R_OIR
	VALUES (3028,
	3041,
	3042,
	0);
INSERT INTO R_PART
	VALUES (50,
	3041,
	3043,
	0,
	1,
	'is represented by');
INSERT INTO O_RTIDA
	VALUES (219,
	50,
	0,
	3041,
	3043);
INSERT INTO R_RTO
	VALUES (50,
	3041,
	3043,
	0);
INSERT INTO R_OIR
	VALUES (50,
	3041,
	3043,
	2980);
INSERT INTO R_SIMP
	VALUES (3044);
INSERT INTO R_REL
	VALUES (3044,
	1016,
	'CrossComponent:true',
	2979);
INSERT INTO R_FORM
	VALUES (3030,
	3044,
	3045,
	1,
	1,
	'represents');
INSERT INTO R_RGO
	VALUES (3030,
	3044,
	3045);
INSERT INTO R_OIR
	VALUES (3030,
	3044,
	3045,
	0);
INSERT INTO R_PART
	VALUES (48,
	3044,
	3046,
	0,
	1,
	'is represented by');
INSERT INTO O_RTIDA
	VALUES (215,
	48,
	0,
	3044,
	3046);
INSERT INTO R_RTO
	VALUES (48,
	3044,
	3046,
	0);
INSERT INTO R_OIR
	VALUES (48,
	3044,
	3046,
	2981);
INSERT INTO R_SIMP
	VALUES (3047);
INSERT INTO R_REL
	VALUES (3047,
	1017,
	'CrossComponent:true',
	2979);
INSERT INTO R_FORM
	VALUES (3032,
	3047,
	3048,
	1,
	1,
	'represents');
INSERT INTO R_RGO
	VALUES (3032,
	3047,
	3048);
INSERT INTO R_OIR
	VALUES (3032,
	3047,
	3048,
	0);
INSERT INTO R_PART
	VALUES (52,
	3047,
	3049,
	0,
	1,
	'is represented by');
INSERT INTO O_RTIDA
	VALUES (276,
	52,
	0,
	3047,
	3049);
INSERT INTO O_RTIDA
	VALUES (277,
	52,
	0,
	3047,
	3049);
INSERT INTO R_RTO
	VALUES (52,
	3047,
	3049,
	0);
INSERT INTO R_OIR
	VALUES (52,
	3047,
	3049,
	2982);
INSERT INTO R_SUBSUP
	VALUES (3050);
INSERT INTO R_REL
	VALUES (3050,
	1018,
	'',
	2979);
INSERT INTO R_SUPER
	VALUES (2141,
	3050,
	3051);
INSERT INTO O_RTIDA
	VALUES (2177,
	2141,
	0,
	3050,
	3051);
INSERT INTO R_RTO
	VALUES (2141,
	3050,
	3051,
	0);
INSERT INTO R_OIR
	VALUES (2141,
	3050,
	3051,
	0);
INSERT INTO R_SUB
	VALUES (3052,
	3050,
	3053);
INSERT INTO R_RGO
	VALUES (3052,
	3050,
	3053);
INSERT INTO R_OIR
	VALUES (3052,
	3050,
	3053,
	0);
INSERT INTO R_SUB
	VALUES (3054,
	3050,
	3055);
INSERT INTO R_RGO
	VALUES (3054,
	3050,
	3055);
INSERT INTO R_OIR
	VALUES (3054,
	3050,
	3055,
	0);
INSERT INTO R_SUB
	VALUES (3056,
	3050,
	3057);
INSERT INTO R_RGO
	VALUES (3056,
	3050,
	3057);
INSERT INTO R_OIR
	VALUES (3056,
	3050,
	3057,
	0);
INSERT INTO R_SUBSUP
	VALUES (3058);
INSERT INTO R_REL
	VALUES (3058,
	1019,
	'',
	2979);
INSERT INTO R_SUPER
	VALUES (3052,
	3058,
	3059);
INSERT INTO O_RTIDA
	VALUES (3060,
	3052,
	0,
	3058,
	3059);
INSERT INTO R_RTO
	VALUES (3052,
	3058,
	3059,
	0);
INSERT INTO R_OIR
	VALUES (3052,
	3058,
	3059,
	0);
INSERT INTO R_SUB
	VALUES (3008,
	3058,
	3061);
INSERT INTO R_RGO
	VALUES (3008,
	3058,
	3061);
INSERT INTO R_OIR
	VALUES (3008,
	3058,
	3061,
	0);
INSERT INTO R_SUB
	VALUES (3062,
	3058,
	3063);
INSERT INTO R_RGO
	VALUES (3062,
	3058,
	3063);
INSERT INTO R_OIR
	VALUES (3062,
	3058,
	3063,
	0);
INSERT INTO R_SUB
	VALUES (3064,
	3058,
	3065);
INSERT INTO R_RGO
	VALUES (3064,
	3058,
	3065);
INSERT INTO R_OIR
	VALUES (3064,
	3058,
	3065,
	0);
INSERT INTO R_SUBSUP
	VALUES (3066);
INSERT INTO R_REL
	VALUES (3066,
	1020,
	'',
	2979);
INSERT INTO R_SUPER
	VALUES (3054,
	3066,
	3067);
INSERT INTO O_RTIDA
	VALUES (3068,
	3054,
	0,
	3066,
	3067);
INSERT INTO R_RTO
	VALUES (3054,
	3066,
	3067,
	0);
INSERT INTO R_OIR
	VALUES (3054,
	3066,
	3067,
	0);
INSERT INTO R_SUB
	VALUES (3012,
	3066,
	3069);
INSERT INTO R_RGO
	VALUES (3012,
	3066,
	3069);
INSERT INTO R_OIR
	VALUES (3012,
	3066,
	3069,
	0);
INSERT INTO R_SUB
	VALUES (3016,
	3066,
	3070);
INSERT INTO R_RGO
	VALUES (3016,
	3066,
	3070);
INSERT INTO R_OIR
	VALUES (3016,
	3066,
	3070,
	0);
INSERT INTO R_SUB
	VALUES (3020,
	3066,
	3071);
INSERT INTO R_RGO
	VALUES (3020,
	3066,
	3071);
INSERT INTO R_OIR
	VALUES (3020,
	3066,
	3071,
	0);
INSERT INTO R_SUB
	VALUES (3072,
	3066,
	3073);
INSERT INTO R_RGO
	VALUES (3072,
	3066,
	3073);
INSERT INTO R_OIR
	VALUES (3072,
	3066,
	3073,
	0);
INSERT INTO R_SUB
	VALUES (3074,
	3066,
	3075);
INSERT INTO R_RGO
	VALUES (3074,
	3066,
	3075);
INSERT INTO R_OIR
	VALUES (3074,
	3066,
	3075,
	0);
INSERT INTO R_SIMP
	VALUES (3076);
INSERT INTO R_REL
	VALUES (3076,
	1021,
	'CrossComponent:true',
	2979);
INSERT INTO R_FORM
	VALUES (3064,
	3076,
	3077,
	1,
	1,
	'sent by');
INSERT INTO R_RGO
	VALUES (3064,
	3076,
	3077);
INSERT INTO R_OIR
	VALUES (3064,
	3076,
	3077,
	0);
INSERT INTO R_PART
	VALUES (2990,
	3076,
	3078,
	0,
	1,
	'sends');
INSERT INTO O_RTIDA
	VALUES (3079,
	2990,
	0,
	3076,
	3078);
INSERT INTO R_RTO
	VALUES (2990,
	3076,
	3078,
	0);
INSERT INTO R_OIR
	VALUES (2990,
	3076,
	3078,
	2989);
INSERT INTO R_SIMP
	VALUES (3080);
INSERT INTO R_REL
	VALUES (3080,
	1022,
	'CrossComponent:true',
	2979);
INSERT INTO R_FORM
	VALUES (3074,
	3080,
	3081,
	1,
	1,
	'sent by');
INSERT INTO R_RGO
	VALUES (3074,
	3080,
	3081);
INSERT INTO R_OIR
	VALUES (3074,
	3080,
	3081,
	0);
INSERT INTO R_PART
	VALUES (2992,
	3080,
	3082,
	0,
	1,
	'sends');
INSERT INTO O_RTIDA
	VALUES (3083,
	2992,
	0,
	3080,
	3082);
INSERT INTO R_RTO
	VALUES (2992,
	3080,
	3082,
	0);
INSERT INTO R_OIR
	VALUES (2992,
	3080,
	3082,
	2991);
INSERT INTO R_SIMP
	VALUES (3084);
INSERT INTO R_REL
	VALUES (3084,
	1023,
	'CrossComponent:true',
	2979);
INSERT INTO R_PART
	VALUES (57,
	3084,
	3085,
	0,
	1,
	'is represented by');
INSERT INTO O_RTIDA
	VALUES (254,
	57,
	0,
	3084,
	3085);
INSERT INTO R_RTO
	VALUES (57,
	3084,
	3085,
	0);
INSERT INTO R_OIR
	VALUES (57,
	3084,
	3085,
	2993);
INSERT INTO R_FORM
	VALUES (3036,
	3084,
	3086,
	1,
	1,
	'represents');
INSERT INTO R_RGO
	VALUES (3036,
	3084,
	3086);
INSERT INTO R_OIR
	VALUES (3036,
	3084,
	3086,
	0);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (3054,
	'Synchronous Message',
	1012,
	'MSG_SM',
	'This subclass represents, and holds its unique data, a synchronous message.  The
types of synchronous messages are:

Informal Synchronous Message
Bridge Message
Operation Message
Function Message',
	2979);
INSERT INTO O_TFR
	VALUES (3087,
	3054,
	'dispose',
	'',
	19,
	1,
	'select one om related by self->MSG_O[R1020];
select one fm related by self->MSG_F[R1020];
select one bm related by self->MSG_B[R1020];
select one im related by self->MSG_ISM[R1020];
select one iOp related by self->MSG_IOP[R1020];
// dispose formal messages
if(not_empty om)
  unrelate self from om across R1020;
  om.dispose();
end if;
if(not_empty fm)
  unrelate self from fm across R1020;
  fm.dispose();
end if;
if(not_empty bm)
  unrelate self from bm across R1020;
  bm.dispose();
end if;
// dispose informal messages
if(not_empty im)
  unrelate self from im across R1020;
  im.dispose();
end if;
if not_empty iOp
  unrelate self from iOp across R1020;
  iOp.dispose();
end if;
// delete supertype, and unrelate
select one msg related by self->MSG_M[R1018];
if(not_empty msg)
  unrelate self from msg across R1018;
  msg.dispose();
end if;
delete object instance self;',
	1,
	'',
	3088);
INSERT INTO O_TFR
	VALUES (3089,
	3054,
	'unformalize',
	'',
	19,
	1,
	'// dispose the formal message
select one om related by self->MSG_O[R1020];
select one fm related by self->MSG_F[R1020];
select one bm related by self->MSG_B[R1020];
select one iOp related by self->MSG_IOP[R1020];
if(not_empty om)
  om.dispose();
elif(not_empty fm)
  fm.dispose();
elif(not_empty bm)
  bm.dispose();
elif not_empty iOp
  iOp.dispose();
end if;
// unrelate from target element if under a communication
select one message related by self->MSG_M[R1018];
message.deassociateFromTarget();
self.disposeFormalArguments();
// create an informal synch message
create object instance im of MSG_ISM;
relate im to self across R1020;',
	1,
	'',
	3090);
INSERT INTO O_TFR
	VALUES (3091,
	3054,
	'initialize',
	'',
	19,
	1,
	'self.InformalName = "Informal Message";
// create informal subtype
create object instance im of MSG_ISM;
relate im to self across R1020;',
	1,
	'',
	3092);
INSERT INTO O_TFR
	VALUES (3093,
	3054,
	'newArgument',
	'',
	19,
	1,
	'// have the supertype create the argument
select one msg related by self->MSG_M[R1018];
if(not_empty msg)
  msg.newArgument();
end if;',
	1,
	'',
	3091);
INSERT INTO O_TFR
	VALUES (3088,
	3054,
	'canRename',
	'',
	316,
	1,
	'// only informal messages can be renamed
select one im related by self->MSG_ISM[R1020];
if(not_empty im)
  return true;
else
  return false;
end if;',
	1,
	'',
	3094);
INSERT INTO O_TFR
	VALUES (3095,
	3054,
	'get_name',
	'',
	322,
	1,
	'return self.Label;',
	1,
	'',
	3096);
INSERT INTO O_TFR
	VALUES (3092,
	3054,
	'get_style',
	'',
	784,
	1,
	'if(param.at == End::End)
  return Style::FilledArrow;
else
  return Style::Solid;
end if;',
	1,
	'',
	3097);
INSERT INTO O_TPARM
	VALUES (3098,
	3092,
	'at',
	880,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3096,
	3054,
	'get_connector_text',
	'',
	322,
	1,
	'if(param.at == End::Middle)
  result = self.Label;
  if(self.ResultTarget != "")
    if(result == "")
      result = self.ResultTarget;
    else
      result = self.ResultTarget + " = " + result;
    end if;
  end if;
  select many args related by self->MSG_M[R1018]->MSG_A[R1001];
  if(not self.isFormal)
    select many args related by self->MSG_M[R1018]->MSG_A[R1000];
  end if;
  if(not_empty args)
    result = result + " (";
    count = 0;
    for each arg in args
      count = count + 1;
      result = result + arg.Label;
      if(count != cardinality args)
        result = result + ", ";
      end if;
    end for;  
    result = result + ")";
  end if;
  if(self.ReturnValue != "")
    if(result == "")
      result = self.ReturnValue;
    else
      result = result + ":" + self.ReturnValue;
    end if;
  end if;
  if(self.SequenceNumb != "")
    if(result != "")
      result = ": " + result;
    end if;
    result = self.SequenceNumb + result;
  end if;
  return result;
elif(param.at == End::Start)
  if(self.GuardCondition != "")
    return "[" + self.GuardCondition + "]";
  end if;
  return "";
else
  return "";
end if;',
	1,
	'',
	3099);
INSERT INTO O_TPARM
	VALUES (3100,
	3096,
	'Obj_ID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (3101,
	3096,
	'Obj_TypeIsImported',
	316,
	0,
	'',
	3100,
	'');
INSERT INTO O_TPARM
	VALUES (3102,
	3096,
	'at',
	880,
	0,
	'',
	3101,
	'');
INSERT INTO O_TPARM
	VALUES (3103,
	3096,
	'parent_ID',
	296,
	0,
	'',
	3102,
	'');
INSERT INTO O_TFR
	VALUES (3094,
	3054,
	'actionFilter',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one packageableElem related by self->MSG_M[R1018]->PE_PE[R8001];
select one package related by packageableElem->EP_PKG[R8000];
select one message related by self->MSG_M[R1018];
if(empty message)
  // This can be null during unit testing, just return false
  // if this is the case
  return false;
end if;
if(empty package and message.participatesInCommunication)
  select one package related by self->MSG_M[R1018]->SQ_P[R1007]->PE_PE[R8001]
                                                                ->EP_PKG[R8000];
end if;
select one component related by packageableElem->C_C[R8003];
isInGenericPackage = not_empty package or not_empty component;

if(param.name == "can")
  if(param.value == "addArg")
    return not self.isFormal;
  elif(param.value == "unform")
    return self.isFormal;
  elif(param.value == "formBrg")
    select one eep related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_EEP[R930];
    if(empty eep)
      // try the communication line
      select one eep related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_LS[R930]
                                                     ->SQ_P[R940]->SQ_EEP[R930];
    end if;
    if(not_empty eep)
      select one communication related by eep->SQ_P[R930]->COMM_PIC[R1126]
                                                             ->COMM_COMM[R1126];
      // another filter will be used for communication
      // diagrams
      if(not_empty communication or message.participatesInCommunication)
        return false;
      end if;
      // if there is only one possible operation, and we are formal
      // do not allow
      if(self.isFormal)
        if(eep.getBridgeOperationCount() == 1)
          return false;
        end if;
      end if;
      return eep.formalEEHasBridgeOperations();
    end if;
  elif(param.value == "formFunc")
    select one fpp related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_FPP[R930];
    if(empty fpp)
      // try the communication line
      select one fpp related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_LS[R930]
                                                     ->SQ_P[R940]->SQ_FPP[R930];
    end if;
    if(not_empty fpp)
      select one communication related by fpp->SQ_P[R930]->COMM_PIC[R1126]
                                                             ->COMM_COMM[R1126];
      // another filter will be used for communication
      // diagrams
      if(not_empty communication)
        return false;
      end if; 
      // if there is only one possible function, and we are formal
      // do not allow
      if(self.isFormal)
        if(fpp.getFunctionCount() == 1)
          return false;
        end if;
      end if;
      return fpp.formalFPKHasFunctions();
    end if;
  elif(param.value == "formPkgFunc")
    if(message.participatesInCommunication)
      // another filter will handle
      return false;
    end if;
    select one pp related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_PP[R930];
    if(empty pp)
      // try the communication line
      select one pp related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_LS[R930]
                                                      ->SQ_P[R940]->SQ_PP[R930];
    end if;
    if(not_empty pp)
      if(self.isFormal)
        // if formal and only one possibility do not allow
        if(pp.getFunctionCount() == 1)
          return false;
        end if;
      end if;
      return pp.getFunctionCount() != 0;
    end if;
  elif(param.value == "formClassOp")
    select one cip related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_CIP[R930];
    select one cp related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_CP[R930];
    if(empty cp)
      // try the communication line
      select one cp related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_LS[R930]
                                                      ->SQ_P[R940]->SQ_CP[R930];
    end if;
    if(not_empty cip)
      // if the instance is shown on a communication
      // do not allow
      if (isInGenericPackage)
        if(message.participatesInCommunication)
          return false;
        else
          // if there is only one possible operation, and we are formal
          // do not allow
          if(self.isFormal)
            if(cip.getClassOperationCount() == 1)
              return false;
            end if;
          end if;
          return cip.formalClassHasCBOperations();
        end if;
      else      
        select one communication related by cip->SQ_P[R930]->COMM_PIC[R1126]->COMM_COMM[R1126];
        if(not_empty communication)
          return false;
        else
          // if there is only one possible operation, and we are formal
          // do not allow
          if(self.isFormal)
            if(cip.getClassOperationCount() == 1)
              return false;
            end if;
          end if;
          return cip.formalClassHasCBOperations();
        end if;
      end if;
    elif(not_empty cp)
      select one communication related by cp->SQ_P[R930]->COMM_PIC[R1126]
                                                             ->COMM_COMM[R1126];
      if(not_empty communication)
        return false;
      end if;
      if (isInGenericPackage)
        if(message.participatesInCommunication)
          return false;
        end if;
      end if;
      // if there is only one possible operation, and we are formal
      // do not allow
      if(self.isFormal)
        if(cp.getClassOperationCount() == 1)
          return false;
        end if;
      end if;
      return cp.formalClassHasCBOperations();
    end if;
  elif(param.value == "formInstOp")  
    select one ls related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_LS[R930];
    if(not_empty ls)
      select one cip related by ls->SQ_P[R940]->SQ_CIP[R930];
      select one communication related by cip->SQ_P[R930]->COMM_PIC[R1126]
                                                             ->COMM_COMM[R1126];
      if(not_empty communication or message.participatesInCommunication)
        // another filter will handle the communication case
        return false;
      end if;
      if(not_empty cip)
        // if there is only one possible operation, and we are formal
        // do not allow
        if(self.isFormal)
          if(cip.getInstanceOperationCount() == 1)
            return false;
          end if;
        end if;
        return cip.formalClassHasIBOperations();
      end if;
    end if;
  elif(param.value == "formIOp")
    // if there is only one interface operation and we are already
    // formalized with it, then do not allow
    select one operation related by self->MSG_IOP[R1020]->C_IO[R1022];
    if(not_empty operation)
      select one cop related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_COP[R930];
      if(empty cop)
        select one cop related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_LS[R930]
                                                     ->SQ_P[R940]->SQ_COP[R930];
      end if;
      if(not_empty cop)
        if(cop.getInterfaceOperationCount() == 1)
          return false;
        end if;
      end if;
    end if;
  
    select one cop related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_COP[R930];
    if(empty cop)
      select one cop related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_LS[R930]
                                                     ->SQ_P[R940]->SQ_COP[R930];
    end if;
    if(not_empty cop)
      // do not allow if on a communication diagram, other
      // filters will handle this
      select one communication related by cop->SQ_P[R930]->COMM_PIC[R1126]
                                                             ->COMM_COMM[R1126];
      if(not_empty communication or message.participatesInCommunication)
        return false;
      end if;
      return cop.isFormalAndHasIFOperations();
    end if;
  // the following filtering is for communication diagrams
  elif(param.value == "formCommClassOp") or (param.value == "formCommInstOp")
  		 or (param.value == "formCommFunc") or (param.value == "formCommMsgIOp")
  		 or (param.value == "formCommBrg") or (param.value == "formCommPackageFunc")
    
    // if this message is not shown on a communication diagram
    // do not allow
    select one communication related by self->MSG_M[R1018]->COMM_MIC[R1135]
                                                             ->COMM_COMM[R1135];
    if(empty communication)
      // if the above association is not setup, the message is associated with
      // a participant already, get the communication through this participant
      select one communication related by self->MSG_M[R1018]->SQ_P[R1007]->COMM_PIC[R1126]->COMM_COMM[R1126];
      if(empty communication and not message.participatesInCommunication)
        return false;
      end if;
    end if;
    pkgID = GD::NULL_UNIQUE_ID();
    if (not_empty communication)
      pkgID = communication.Package_ID;
    else
      pkgID = package.Package_ID;
    end if;
      
    // if the selection count does not equal two return false, this
    // prevents the menu entries from existing while only one of the
    // elements is selected
    if(Sel::getCurrentSelectionCount() != 2)
      return false;
    end if;
    // if the selection does not contain a participant
    // do not allow
    if(not Util::selectionContainsValidParticipant(from:Util::getCommunicationInstance(id:pkgID)))
      return false;
    end if;
    // additionally check if this message is already formalized
    // to the only available operation
    if(self.isFormal)
      select one participant related by self->MSG_M[R1018]->SQ_P[R1007];
      if(param.value == "formCommClassOp")
        select one cp related by participant->SQ_CP[R930];
        if(not_empty cp)
          if(cp.getClassOperationCount() == 1)
            return false;
          end if;
        end if;
      elif(param.value == "formCommInstOp")
        select one cip related by participant->SQ_CIP[R930];
        if(not_empty cip)
          if(cip.getInstanceOperationCount() == 1)
            return false;
          end if;
        end if;
      elif(param.value == "formCommMsgIOp")
        select one cop related by participant->SQ_COP[R930];
        if(not_empty cop)
          if(cop.getInterfaceOperationCount() == 1)
            return false;
          end if;
        end if;
      elif(param.value == "formCommFunc")
        select one fpp related by participant->SQ_FPP[R930];
        if(not_empty fpp)
          if(fpp.getFunctionCount() == 1)
            return false;
          end if;
        else
          // will be a package participant
          select one pp related by participant->SQ_PP[R930];
          if(not_empty pp)
            if(pp.getFunctionCount() == 1)
              return false;
            end if;
          end if;
        end if;
      elif(param.value == "formCommBrg")
        select one eep related by participant->SQ_EEP[R930];
        if(not_empty eep)
          if(eep.getBridgeOperationCount() == 1)
            return false;
          end if;
        end if;
      end if;
    end if;
    return true;
  end if;
elif(param.name == "show")
  if(param.value == "noTargetMessage")
    if(Sel::getCurrentSelectionCount() != 1)
      return false;
    end if;
    select one target related by self->MSG_M[R1018]->SQ_P[R1007];
    return empty target;
  end if;
end if;
return false;',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (3104,
	3094,
	'name',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (3105,
	3094,
	'value',
	322,
	0,
	'',
	3104,
	'');
INSERT INTO O_TFR
	VALUES (3097,
	3054,
	'get_ooa_id',
	'',
	296,
	1,
	'return self.Msg_ID;',
	1,
	'',
	3095);
INSERT INTO O_TFR
	VALUES (3106,
	3054,
	'disposeFormalArguments',
	'',
	19,
	1,
	'select one parent related by self->MSG_M[R1018];
parent.disposeFormalArguments();',
	1,
	'',
	3087);
INSERT INTO O_TFR
	VALUES (3107,
	3054,
	'formalizeWithClassOperation',
	'',
	19,
	1,
	'select any operation from instances of O_TFR where (selected.Tfr_ID == param.operationId);
self.prepareForFormalization();
create object instance om of MSG_O;
relate om to self across R1020;
if (not_empty operation)
  relate operation to om across R1011;
end if;
select one message related by self->MSG_M[R1018];
select many oparms related by operation->O_TPARM[R117];
// create message arguments for each parameter
for each oparm in oparms
  create object instance arg of MSG_A;
  create object instance oarg of MSG_OA;
  relate arg to message across R1001;
  relate oarg to arg across R1013;
  relate oarg to oparm across R1015;
  arg.Value = "";
end for;      
',
	1,
	'',
	3108);
INSERT INTO O_TPARM
	VALUES (3109,
	3107,
	'operationId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3090,
	3054,
	'prepareForFormalization',
	'',
	19,
	1,
	'select one im related by self->MSG_ISM[R1020];
select one om related by self->MSG_O[R1020];
select one fm related by self->MSG_F[R1020];
select one bm related by self->MSG_B[R1020];
select one iOp related by self->MSG_IOP[R1020];
select one message related by self->MSG_M[R1018];
if(not_empty im)
  unrelate im from self across R1020;
  im.dispose();
elif(not_empty om)
  unrelate om from self across R1020;
  om.dispose();
  message.disposeFormalArguments();
elif(not_empty fm)
  unrelate fm from self across R1020;
  fm.dispose();
  message.disposeFormalArguments();
elif(not_empty bm)
  unrelate bm from self across R1020;
  bm.dispose();
  message.disposeFormalArguments();
elif not_empty iOp
  unrelate iOp from self across R1020;
  iOp.dispose();
  message.disposeFormalArguments();
end if;',
	1,
	'',
	3093);
INSERT INTO O_TFR
	VALUES (3108,
	3054,
	'formalizeWithBridgeOperation',
	'',
	19,
	1,
	'select any brg from instances of S_BRG where (selected.Brg_ID == param.bridgeId);
select one message related by self->MSG_M[R1018];
self.prepareForFormalization();
create object instance bm of MSG_B;
relate bm to self across R1020;
relate bm to brg across R1012;
select many bparms related by brg->S_BPARM[R21];
for each bparm in bparms
  create object instance arg of MSG_A;
  create object instance barg of MSG_BA;
  relate arg to message across R1001;
  relate barg to arg across R1013;
  relate bparm to barg across R1014;
  arg.Value = "";
end for;',
	1,
	'',
	3106);
INSERT INTO O_TPARM
	VALUES (3110,
	3108,
	'bridgeId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3099,
	3054,
	'formalizeWithFunction',
	'',
	19,
	1,
	'select any function from instances of S_SYNC where (selected.Sync_ID == param.functionId);
select one message related by self->MSG_M[R1018];
self.prepareForFormalization();
create object instance fm of MSG_F;
relate fm to self across R1020;
relate function to fm across R1010;
select many fparms related by function->S_SPARM[R24];
for each fparm in fparms
  create object instance arg of MSG_A;
  create object instance farg of MSG_FA;
  relate arg to message across R1001;
  relate farg to arg across R1013;
  relate fparm to farg across R1016;
  arg.Value = "";
end for;    ',
	1,
	'',
	3107);
INSERT INTO O_TPARM
	VALUES (3111,
	3099,
	'functionId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3112,
	3054,
	'formalizeWithInterfaceOperation',
	'',
	19,
	1,
	'select any iOpProp from instances of C_EP where selected.Id == param.iOpId;
if not_empty iOpProp
  select one iOp related by iOpProp->C_IO[R4004];
  if not_empty iOp
    self.prepareForFormalization();
    create object instance ioM of MSG_IOP;
    relate ioM to self across R1020;
    relate ioM to iOp across R1022;
    select one message related by self->MSG_M[R1018];
    // create a message argument for every parameter
    // assigned to this signal
    select many parms related by iOpProp->C_PP[R4006];
    for each parm in parms
      create object instance arg of MSG_A;
      create object instance eparg of MSG_EPA;
      relate arg to message across R1001;
      relate eparg to arg across R1013;
      relate eparg to parm across R1023;
      arg.Value = "";
    end for;
  end if;
end if;
',
	1,
	'',
	3089);
INSERT INTO O_TPARM
	VALUES (3113,
	3112,
	'iOpId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3114,
	3054,
	'canFormalizeUsingInterfaceOperation',
	'',
	316,
	1,
	'/**
 *  Filter operation when choosing which interface operation can be used
 *  to formalize this synchronous message
 */

// Check that we are not already formalized to the given interface
// operation
select one currentOperation related by self->MSG_IOP[R1020]->C_IO[R1022];
if(not_empty currentOperation and param.id == currentOperation.Id)
  return false;
end if;
return true;',
	1,
	'',
	3112);
INSERT INTO O_TPARM
	VALUES (3115,
	3114,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3116,
	3054,
	'pasteMessageArgument',
	'',
	19,
	1,
	'select one message related by self->MSG_M[R1018];
message.pasteMessageArgument(id:param.id);',
	1,
	'',
	3114);
INSERT INTO O_TPARM
	VALUES (3117,
	3116,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3118,
	3054,
	'canCopyMessageArgument',
	'',
	316,
	1,
	'select one message related by self->MSG_M[R1018];
return message.canCopyMessageArgument(id:param.id);',
	1,
	'',
	3116);
INSERT INTO O_TPARM
	VALUES (3119,
	3118,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3120,
	3054,
	'canPasteMessageArgument',
	'',
	316,
	1,
	'return not self.isFormal;',
	1,
	'',
	3118);
INSERT INTO O_NBATTR
	VALUES (3121,
	3054);
INSERT INTO O_BATTR
	VALUES (3121,
	3054);
INSERT INTO O_ATTR
	VALUES (3121,
	3054,
	3122,
	'ResultTarget',
	'Full Name: Result Target',
	'',
	'ResultTarget',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3123,
	3054);
INSERT INTO O_BATTR
	VALUES (3123,
	3054);
INSERT INTO O_ATTR
	VALUES (3123,
	3054,
	3121,
	'ReturnValue',
	'Full Name: Return Value',
	'',
	'ReturnValue',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3122,
	3054);
INSERT INTO O_BATTR
	VALUES (3122,
	3054);
INSERT INTO O_ATTR
	VALUES (3122,
	3054,
	3124,
	'GuardCondition',
	'Full Name: Guard Condition',
	'',
	'GuardCondition',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3124,
	3054);
INSERT INTO O_BATTR
	VALUES (3124,
	3054);
INSERT INTO O_ATTR
	VALUES (3124,
	3054,
	3125,
	'Descrip',
	'Full Name: Message Description',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (3126,
	3054,
	'select one ism related by self->MSG_ISM[R1020];
if(not_empty ism)
  self.isFormal = false;
else
  self.isFormal = true;
end if;',
	1);
INSERT INTO O_BATTR
	VALUES (3126,
	3054);
INSERT INTO O_ATTR
	VALUES (3126,
	3054,
	3123,
	'isFormal',
	'Full Name: Is Formal',
	'',
	'isFormal',
	0,
	316,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (3127,
	3054,
	'result = "";
select one fm related by self->MSG_F[R1020];
select one om related by self->MSG_O[R1020];
select one bm related by self->MSG_B[R1020];
select one iOp related by self->MSG_IOP[R1020];
if(not_empty fm)
  select one func related by fm->S_SYNC[R1010];
  result = func.Name;
elif(not_empty om)
  select one op related by om->O_TFR[R1011];
  result = op.Name;
elif(not_empty bm)
  select one brg related by bm->S_BRG[R1012];
  result = brg.Name;
elif not_empty iOp
  select one interfaceOp related by iOp->C_IO[R1022];
  result = interfaceOp.Name;
else
  result = self.InformalName;
end if;
self.Label = result;',
	1);
INSERT INTO O_BATTR
	VALUES (3127,
	3054);
INSERT INTO O_ATTR
	VALUES (3127,
	3054,
	3126,
	'Label',
	'User_Visible: false',
	'',
	'Label',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3125,
	3054);
INSERT INTO O_BATTR
	VALUES (3125,
	3054);
INSERT INTO O_ATTR
	VALUES (3125,
	3054,
	3068,
	'InformalName',
	'Full Name: Informal Name',
	'',
	'InformalName',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3128,
	3054);
INSERT INTO O_BATTR
	VALUES (3128,
	3054);
INSERT INTO O_ATTR
	VALUES (3128,
	3054,
	3127,
	'SequenceNumb',
	'Full Name: Sequence Number',
	'',
	'SequenceNumb',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (3054,
	2141,
	0,
	2177,
	3050,
	3055,
	3051,
	3068,
	3129,
	0,
	0,
	'',
	'Message',
	'Msg_ID',
	'R1018');
INSERT INTO O_RATTR
	VALUES (3068,
	3054,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (3068,
	3054,
	0,
	'Msg_ID',
	'',
	'',
	'Msg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	3054);
INSERT INTO O_OIDA
	VALUES (3068,
	3054,
	0,
	'Msg_ID');
INSERT INTO O_ID
	VALUES (1,
	3054);
INSERT INTO O_ID
	VALUES (2,
	3054);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (3064,
	'Signal Message',
	1017,
	'MSG_SIG',
	'',
	2979);
INSERT INTO O_TFR
	VALUES (3130,
	3064,
	'dispose',
	'',
	19,
	1,
	'select one em related by self->MSG_AM[R1019];
if(not_empty em)
  unrelate self from em across R1019;
end if;
select one sig related by self->C_AS[R1021];
if not_empty sig
  unrelate self from sig across R1021;
end if;
select one asyncMessage related by self->MSG_AM[R1019];
if(not_empty asyncMessage)
  unrelate self from asyncMessage across R1019;
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (3131,
	3064,
	'get_name',
	'',
	322,
	1,
	'select one signal related by self->C_AS[R1021];
return signal.Name;',
	1,
	'',
	3130);
INSERT INTO O_REF
	VALUES (3064,
	3052,
	0,
	3060,
	3058,
	3065,
	3059,
	3132,
	3133,
	0,
	0,
	'',
	'Asynchronous Message',
	'Msg_ID',
	'R1019');
INSERT INTO O_RATTR
	VALUES (3132,
	3064,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (3132,
	3064,
	0,
	'Msg_ID',
	'',
	'',
	'Msg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (3064,
	2990,
	0,
	3079,
	3076,
	3077,
	3078,
	3134,
	3135,
	0,
	0,
	'',
	'Interface Signal',
	'Id',
	'R1021');
INSERT INTO O_RATTR
	VALUES (3134,
	3064,
	3136,
	3137,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (3134,
	3064,
	3132,
	'Id',
	'',
	'',
	'Id',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	3064);
INSERT INTO O_OIDA
	VALUES (3132,
	3064,
	0,
	'Msg_ID');
INSERT INTO O_ID
	VALUES (1,
	3064);
INSERT INTO O_ID
	VALUES (2,
	3064);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (3056,
	'Return Message',
	1011,
	'MSG_R',
	'This class is used to represent a return message.  The return message is never
formal.',
	2979);
INSERT INTO O_TFR
	VALUES (3138,
	3056,
	'dispose',
	'',
	19,
	1,
	'// dispose supertype
select one msg related by self->MSG_M[R1018];
if(not_empty msg)
  unrelate self from msg across R1018;
  msg.dispose();
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (3139,
	3056,
	'initialize',
	'',
	19,
	1,
	'self.Name = "Unnamed Return";',
	1,
	'',
	3140);
INSERT INTO O_TFR
	VALUES (3141,
	3056,
	'get_ooa_id',
	'',
	296,
	1,
	'return self.Msg_ID;',
	1,
	'',
	3142);
INSERT INTO O_TFR
	VALUES (3140,
	3056,
	'get_style',
	'',
	784,
	1,
	'if(param.at == End::End)
  return Style::OpenArrow;
else
  return Style::Broken;
end if;',
	1,
	'',
	3141);
INSERT INTO O_TPARM
	VALUES (3143,
	3140,
	'at',
	880,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3142,
	3056,
	'get_connector_text',
	'',
	322,
	1,
	'if(param.at == End::Middle)
  result = self.Name;
  if(self.ResultTarget != "")
    if(result == "")
      result = self.ResultTarget;
    else
      result = self.ResultTarget + " = " + result;
    end if;
  end if;
  if(self.SequenceNumb != "")
    if(result == "")
      result = self.SequenceNumb;
    else
      result = self.SequenceNumb + ": " + result;
    end if;
  end if;
  select many args related by self->MSG_M[R1018]->MSG_A[R1001];
  if(empty args)
    select many args related by self->MSG_M[R1018]->MSG_A[R1000];
  end if;
  if(not_empty args)
    result = result + " (";
    count = 0;
    for each arg in args
      count = count + 1;
      result = result + arg.Label;
      if(count != cardinality args)
        result = result + ", ";
      end if;
    end for;  
    result = result + ")";
  end if;
  if(self.ReturnValue != "")
    if(result == "")
      result = self.ReturnValue;
    else
      result = result + ":" + self.ReturnValue;
    end if;
  end if;
  return result;
elif(param.at == End::Start)
  if(self.GuardCondition != "")
    return "[" + self.GuardCondition + "]";
  end if;
  return "";
else
  return "";
end if;',
	1,
	'',
	3138);
INSERT INTO O_TPARM
	VALUES (3144,
	3142,
	'Obj_ID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (3145,
	3142,
	'Obj_TypeIsImported',
	316,
	0,
	'',
	3144,
	'');
INSERT INTO O_TPARM
	VALUES (3146,
	3142,
	'at',
	880,
	0,
	'',
	3145,
	'');
INSERT INTO O_TPARM
	VALUES (3147,
	3142,
	'parent_ID',
	296,
	0,
	'',
	3146,
	'');
INSERT INTO O_TFR
	VALUES (3148,
	3056,
	'newArgument',
	'',
	19,
	1,
	'// have the supertype create the argument
select one msg related by self->MSG_M[R1018];
if(not_empty msg)
  msg.newArgument();
end if;',
	1,
	'',
	3139);
INSERT INTO O_NBATTR
	VALUES (3149,
	3056);
INSERT INTO O_BATTR
	VALUES (3149,
	3056);
INSERT INTO O_ATTR
	VALUES (3149,
	3056,
	3150,
	'ReturnValue',
	'Full Name: Return Value',
	'',
	'ReturnValue',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3150,
	3056);
INSERT INTO O_BATTR
	VALUES (3150,
	3056);
INSERT INTO O_ATTR
	VALUES (3150,
	3056,
	3151,
	'ResultTarget',
	'Full Name: Result Target',
	'',
	'ResultTarget',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3151,
	3056);
INSERT INTO O_BATTR
	VALUES (3151,
	3056);
INSERT INTO O_ATTR
	VALUES (3151,
	3056,
	3152,
	'GuardCondition',
	'Full Name: Guard Condition',
	'',
	'GuardCondition',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3152,
	3056);
INSERT INTO O_BATTR
	VALUES (3152,
	3056);
INSERT INTO O_ATTR
	VALUES (3152,
	3056,
	3153,
	'Descrip',
	'Full Name: Message Description
Description: A textual description of this message.',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3153,
	3056);
INSERT INTO O_BATTR
	VALUES (3153,
	3056);
INSERT INTO O_ATTR
	VALUES (3153,
	3056,
	3154,
	'Name',
	'Full Name: Name',
	'',
	'Name',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3155,
	3056);
INSERT INTO O_BATTR
	VALUES (3155,
	3056);
INSERT INTO O_ATTR
	VALUES (3155,
	3056,
	3149,
	'SequenceNumb',
	'Full Name: Sequence Number',
	'',
	'SequenceNumb',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (3056,
	2141,
	0,
	2177,
	3050,
	3057,
	3051,
	3154,
	3156,
	0,
	0,
	'',
	'Message',
	'Msg_ID',
	'R1018');
INSERT INTO O_RATTR
	VALUES (3154,
	3056,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (3154,
	3056,
	0,
	'Msg_ID',
	'',
	'',
	'Msg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	3056);
INSERT INTO O_OIDA
	VALUES (3154,
	3056,
	0,
	'Msg_ID');
INSERT INTO O_ID
	VALUES (1,
	3056);
INSERT INTO O_ID
	VALUES (2,
	3056);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (3016,
	'Operation Message',
	1002,
	'MSG_O',
	'This class manages the formality between a message and its formal couterpart
model element.',
	2979);
INSERT INTO O_TFR
	VALUES (3157,
	3016,
	'dispose',
	'',
	19,
	1,
	'select one op related by self->O_TFR[R1011];
if(not_empty op)
  unrelate self from op across R1011;
end if;
select one sm related by self->MSG_SM[R1020];
if(not_empty sm)
  unrelate self from sm across R1020;
end if;
// dispose any formal arguments if still
// existant
select many arguments related by self->MSG_SM[R1020]->MSG_M[R1018]->MSG_A[R1001];
for each argument in arguments
  argument.dispose();
end for;
select one syncMessage related by self->MSG_SM[R1020];
if(not_empty syncMessage)
  unrelate self from syncMessage across R1020;
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (3158,
	3016,
	'get_name',
	'',
	322,
	1,
	'select one operation related by self->O_TFR[R1011];
return operation.Name;',
	1,
	'',
	3157);
INSERT INTO O_REF
	VALUES (3016,
	43,
	0,
	201,
	3015,
	3017,
	3018,
	3159,
	3160,
	0,
	0,
	'',
	'Operation',
	'Tfr_ID',
	'R1011');
INSERT INTO O_RATTR
	VALUES (3159,
	3016,
	201,
	43,
	1,
	'Tfr_ID');
INSERT INTO O_ATTR
	VALUES (3159,
	3016,
	3161,
	'Tfr_ID',
	'',
	'',
	'Tfr_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (3016,
	3054,
	0,
	3068,
	3066,
	3070,
	3067,
	3161,
	3162,
	0,
	0,
	'',
	'Synchronous Message',
	'Msg_ID',
	'R1020');
INSERT INTO O_RATTR
	VALUES (3161,
	3016,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (3161,
	3016,
	0,
	'Msg_ID',
	'',
	'',
	'Msg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	3016);
INSERT INTO O_OIDA
	VALUES (3161,
	3016,
	0,
	'Msg_ID');
INSERT INTO O_ID
	VALUES (1,
	3016);
INSERT INTO O_ID
	VALUES (2,
	3016);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (3028,
	'Operation Argument',
	1008,
	'MSG_OA',
	'This class manages the formality between a message argument and its formal
couterpart model element.',
	2979);
INSERT INTO O_TFR
	VALUES (3163,
	3028,
	'dispose',
	'',
	19,
	1,
	'select one oparm related by self->O_TPARM[R1015];
if(not_empty oparm)
  unrelate self from oparm across R1015;
end if;
select one ma related by self->MSG_A[R1013];
if(not_empty ma)
  ma.dispose();
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (3028,
	2995,
	0,
	3025,
	3023,
	3029,
	3024,
	3164,
	3165,
	0,
	0,
	'',
	'Message Argument',
	'Arg_ID',
	'R1013');
INSERT INTO O_RATTR
	VALUES (3164,
	3028,
	3025,
	2995,
	1,
	'Arg_ID');
INSERT INTO O_ATTR
	VALUES (3164,
	3028,
	0,
	'Arg_ID',
	'',
	'',
	'Arg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (3028,
	50,
	0,
	219,
	3041,
	3042,
	3043,
	3166,
	3167,
	0,
	0,
	'',
	'Operation Parameter',
	'TParm_ID',
	'R1015');
INSERT INTO O_RATTR
	VALUES (3166,
	3028,
	219,
	50,
	1,
	'TParm_ID');
INSERT INTO O_ATTR
	VALUES (3166,
	3028,
	3164,
	'TParm_ID',
	'',
	'',
	'TParm_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	3028);
INSERT INTO O_OIDA
	VALUES (3164,
	3028,
	0,
	'Arg_ID');
INSERT INTO O_ID
	VALUES (1,
	3028);
INSERT INTO O_ID
	VALUES (2,
	3028);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2995,
	'Message Argument',
	1001,
	'MSG_A',
	'This class represents a message''s argument.  A message argument can be
formalized against any of the following elements:

S_BPARM
O_TPARM
S_SPARM
SM_EVTDI',
	2979);
INSERT INTO O_TFR
	VALUES (3168,
	2995,
	'dispose',
	'',
	19,
	1,
	'// dispose all formal arguments
select one ba related by self->MSG_BA[R1013];
select one oa related by self->MSG_OA[R1013];
select one fa related by self->MSG_FA[R1013];
select one ea related by self->MSG_EA[R1013];
select one ia related by self->MSG_IA[R1013];
select one epa related by self->MSG_EPA[R1013];
if(not_empty ba)
  unrelate self from ba across R1013;
  ba.dispose();
end if;
if(not_empty oa)
  unrelate self from oa across R1013;
  oa.dispose();
end if;
if(not_empty fa)
  unrelate self from fa across R1013;
  fa.dispose();
end if;
if(not_empty ea)
  unrelate self from ea across R1013;
  ea.dispose();
end if;
if(not_empty ia)
  unrelate self from ia across R1013;
  delete object instance ia;
end if;
if not_empty epa
  unrelate self from epa across R1013;
  epa.dispose();
end if;
// unrelate self from message
select one fmessage related by self->MSG_M[R1001];
select one imessage related by self->MSG_M[R1000];
if(not_empty fmessage)
  unrelate self from fmessage across R1001;
elif(not_empty imessage)
  unrelate self from imessage across R1000;
end if;
delete object instance self;',
	1,
	'',
	3169);
INSERT INTO O_TFR
	VALUES (3170,
	2995,
	'initialize',
	'',
	19,
	1,
	'name = "Informal Argument";
success = ::getNewElementName(name:name,instance: self.convertToInstance(),validateName:false);    
if ( success!="") 
 self.InformalName =success;
else 
 self.dispose();
end if;      ',
	1,
	'',
	3171);
INSERT INTO O_TFR
	VALUES (3171,
	2995,
	'get_name',
	'',
	322,
	1,
	'return self.Label;',
	1,
	'',
	3168);
INSERT INTO O_TFR
	VALUES (3169,
	2995,
	'canRename',
	'',
	316,
	1,
	'return not self.isFormal;',
	1,
	'',
	3172);
INSERT INTO O_TFR
	VALUES (3172,
	2995,
	'canDelete',
	'',
	316,
	1,
	'return not self.isFormal;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (3173,
	2995,
	'convertToInstance',
	'A utility operation to cast an instance of this type to the
instance datatype.
Translate: native
',
	317,
	1,
	'return this;',
	0,
	'',
	3170);
INSERT INTO O_NBATTR
	VALUES (3025,
	2995);
INSERT INTO O_BATTR
	VALUES (3025,
	2995);
INSERT INTO O_ATTR
	VALUES (3025,
	2995,
	0,
	'Arg_ID',
	'',
	'',
	'Arg_ID',
	0,
	296,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (3174,
	2995,
	'select one ba related by self->MSG_BA[R1013];
select one oa related by self->MSG_OA[R1013];
select one fa related by self->MSG_FA[R1013];
select one ea related by self->MSG_EA[R1013];
select one epa related by self->MSG_EPA[R1013];
label = "";
if(not_empty ba)
  select one bparm related by ba->S_BPARM[R1014];
  label = bparm.Name;
elif(not_empty oa)
  select one oparm related by oa->O_TPARM[R1015];
  label = oparm.Name;
elif(not_empty fa)
  select one fparm related by fa->S_SPARM[R1016];
  label = fparm.Name;
elif(not_empty ea)
  select one evtdi related by ea->SM_EVTDI[R1017];
  label = evtdi.Name;
elif(not_empty epa)
  select one epp related by epa->C_PP[R1023];
  label = epp.Name;
else
  label = self.InformalName;
end if;
if(self.Value != "")
  self.Label = label + " = " + self.Value;
else
  self.Label = label;
end if;',
	1);
INSERT INTO O_BATTR
	VALUES (3174,
	2995);
INSERT INTO O_ATTR
	VALUES (3174,
	2995,
	3175,
	'Label',
	'User_Visible:false',
	'',
	'Label',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3176,
	2995);
INSERT INTO O_BATTR
	VALUES (3176,
	2995);
INSERT INTO O_ATTR
	VALUES (3176,
	2995,
	3174,
	'Value',
	'Full Name: Argument Value',
	'',
	'Value',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3177,
	2995);
INSERT INTO O_BATTR
	VALUES (3177,
	2995);
INSERT INTO O_ATTR
	VALUES (3177,
	2995,
	3176,
	'InformalName',
	'Full Name: Informal Argument Name',
	'',
	'InformalName',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3178,
	2995);
INSERT INTO O_BATTR
	VALUES (3178,
	2995);
INSERT INTO O_ATTR
	VALUES (3178,
	2995,
	3177,
	'Descrip',
	'Full Name: Message Argument Description
Description: A textual description of this argument.',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (3179,
	2995,
	'select one message related by self->MSG_M[R1001];
self.isFormal = not_empty message;',
	1);
INSERT INTO O_BATTR
	VALUES (3179,
	2995);
INSERT INTO O_ATTR
	VALUES (3179,
	2995,
	3178,
	'isFormal',
	'Full Name: Is Formal',
	'',
	'isFormal',
	0,
	316,
	'',
	'');
INSERT INTO O_REF
	VALUES (2995,
	2141,
	0,
	2177,
	2994,
	2996,
	2997,
	3180,
	3181,
	0,
	0,
	'',
	'Message',
	'Msg_ID',
	'R1000');
INSERT INTO O_RATTR
	VALUES (3180,
	2995,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (3180,
	2995,
	3025,
	'Informal_Msg_ID',
	'',
	'Informal_',
	'MSG_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2995,
	2141,
	0,
	2177,
	2998,
	2999,
	3000,
	3175,
	3182,
	0,
	0,
	'',
	'Message',
	'Msg_ID',
	'R1001');
INSERT INTO O_RATTR
	VALUES (3175,
	2995,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (3175,
	2995,
	3180,
	'Formal_Msg_ID',
	'',
	'Formal_',
	'MSG_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2995);
INSERT INTO O_OIDA
	VALUES (3025,
	2995,
	0,
	'Arg_ID');
INSERT INTO O_ID
	VALUES (1,
	2995);
INSERT INTO O_ID
	VALUES (2,
	2995);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (2141,
	'Message',
	1000,
	'MSG_M',
	'This class represents a message which participates in a sequence.  A message
represents an invocation of some operation, function, or event.  Messages can be
formalized with any of the following elements:

S_BRG
S_SYNC
O_TFR
SM_EVT',
	2979);
INSERT INTO O_TFR
	VALUES (3183,
	2141,
	'dispose',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
// dispose all message arguments
select one pe related by self->PE_PE[R8001];
if(not_empty pe)
  // PE_PE.dispose() will call back into this function at which time the
  // rest of the activity will execute.
  pe.dispose();
  return;
end if;
select many iargs related by self->MSG_A[R1000];
select many fargs related by self->MSG_A[R1001];
for each farg in fargs
  unrelate self from farg across R1001;
  farg.dispose();
end for;
for each iarg in iargs
  unrelate self from iarg across R1000;
  iarg.dispose();
end for;
// unrelate self from source/destination participants
select one participant related by self->SQ_P[R1007];
if(not_empty participant)
  unrelate self from participant across R1007;
end if;
select one participant related by self->SQ_P[R1008];
if(not_empty participant)
  unrelate self from participant across R1008;
end if;
// now dispose the subtype messages
select one sm related by self->MSG_SM[R1018];
select one am related by self->MSG_AM[R1018];
select one rm related by self->MSG_R[R1018];
if(not_empty sm)
  unrelate self from sm across R1018;
  sm.dispose();
end if;
if(not_empty am)
  unrelate self from am across R1018;
  am.dispose();
end if;
if(not_empty rm)
  unrelate self from rm across R1018;
  rm.dispose();
end if;
// unrelate self from communication if
// necessary
select one mic related by self->COMM_MIC[R1135];
if(not_empty mic)
  select one comm related by mic->COMM_COMM[R1135];
  if (not_empty comm)
    unrelate self from comm across R1135 using mic;
  end if;
end if;
select one mis related by self->SQ_MIS[R954];
if(not_empty mis)
  select one sequence related by mis->SQ_S[R953];
  unrelate mis from sequence across R953;
  unrelate mis from self across R954;
  delete object instance mis;
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (3184,
	2141,
	'newArgument',
	'',
	19,
	1,
	'create object instance argument of MSG_A;
create object instance informalArg of MSG_IA;
relate argument to self across R1000;
relate argument to informalArg across R1013;
argument.initialize();',
	1,
	'',
	3185);
INSERT INTO O_TFR
	VALUES (3185,
	2141,
	'getName',
	'',
	322,
	1,
	'select one rm related by self->MSG_R[R1018];
select one sm related by self->MSG_SM[R1018];
select one am related by self->MSG_AM[R1018];
if(not_empty rm)
  return rm.Name;
elif(not_empty sm)
  return sm.Label;
elif(not_empty am)
  return am.Label;
else
  return "";
end if;',
	1,
	'',
	3186);
INSERT INTO O_TFR
	VALUES (3187,
	2141,
	'unformalize',
	'',
	19,
	1,
	'select one sm related by self->MSG_SM[R1018];
select one am related by self->MSG_AM[R1018];
if(not_empty sm)
  if(sm.isFormal)
    sm.unformalize();
  end if;
elif(not_empty am)
  if(am.isFormal)
    am.unformalize();
  end if;
end if;',
	1,
	'',
	3184);
INSERT INTO O_TFR
	VALUES (3186,
	2141,
	'disposeFormalArguments',
	'',
	19,
	1,
	'/**
*
*  This operation is called when a previously formal
*  message has been re-formalized
*
*/
select many arguments related by self->MSG_A[R1001];
for each argument in arguments
  argument.dispose();
end for;',
	1,
	'',
	3183);
INSERT INTO O_TFR
	VALUES (3188,
	2141,
	'pasteMessageArgument',
	'',
	19,
	1,
	'select any argument from instances of MSG_A where (selected.Arg_ID == param.id);
if(not_empty argument)
  select one existingMsg related by argument->MSG_M[R1000];
  if(not_empty existingMsg)
    unrelate existingMsg from argument across R1000;
  end if;
  relate argument to self across R1000;
end if;',
	1,
	'',
	3187);
INSERT INTO O_TPARM
	VALUES (3189,
	3188,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3190,
	2141,
	'canCopyMessageArgument',
	'',
	316,
	1,
	'select any argument from instances of MSG_A where (selected.Arg_ID == param.id);
if(not_empty argument)
  select one informal related by argument->MSG_IA[R1013];
  if(empty informal)
    return false;
  end if;
else
  return false;
end if;
return true;',
	1,
	'',
	3188);
INSERT INTO O_TPARM
	VALUES (3191,
	3190,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3192,
	2141,
	'deassociateFromTarget',
	'',
	19,
	1,
	'select one destPart related by self->SQ_P[R1007];
if(not_empty destPart)
  select one packageableElem related by destPart->PE_PE[R8001];
  select one package related by packageableElem->EP_PKG[R8000];
  select one component related by packageableElem->C_C[R8003];
  isInGenericPackage = not_empty package or not_empty component;
  if (isInGenericPackage)
    select one sync related by self->MSG_SM[R1018];
    select one async related by self->MSG_AM[R1018];
    if(not_empty sync)
      if(not self.participatesInCommunication)
        // no need to relate with communication
        return;
      end if;
    end if;
    if(not_empty async)
      if(not self.participatesInCommunication)
        // no need to relate with communication
        return;
      end if;
    end if;
    select one pkg related by destPart->PE_PE[R8001]->EP_PKG[R8000];
    if(empty pkg and not_empty component)
      rootCompIdInPkg = component.getRootComponentId();
      select any rootComponent from instances of C_C where (selected.Id == rootCompIdInPkg);
      select one pkg related by rootComponent->PE_PE[R8001]->EP_PKG[R8000];    
    end if;
    if(not_empty pkg)
      unrelate self from destPart across R1007;
    end if;
  else
    select one comm related by destPart->COMM_PIC[R1126]->COMM_COMM[R1126];
    if(not_empty comm)
      unrelate self from destPart across R1007;
    end if;
  end if;
end if;',
	1,
	'',
	3190);
INSERT INTO O_REF
	VALUES (2141,
	703,
	0,
	743,
	3001,
	3002,
	3003,
	3193,
	3194,
	0,
	0,
	'',
	'Interaction Participant',
	'Part_ID',
	'R1007');
INSERT INTO O_RATTR
	VALUES (3193,
	2141,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (3193,
	2141,
	3195,
	'Sender_Part_ID',
	'',
	'Sender_',
	'Part_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2141,
	703,
	0,
	743,
	3004,
	3005,
	3006,
	3195,
	3196,
	0,
	0,
	'',
	'Interaction Participant',
	'Part_ID',
	'R1008');
INSERT INTO O_RATTR
	VALUES (3195,
	2141,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (3195,
	2141,
	2177,
	'Receiver_Part_ID',
	'',
	'Receiver_',
	'Part_ID',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (2141,
	26,
	0,
	25,
	868,
	2837,
	870,
	2177,
	3197,
	0,
	0,
	'',
	'Packageable Element',
	'Element_ID',
	'R8001');
INSERT INTO O_RATTR
	VALUES (2177,
	2141,
	25,
	26,
	0,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (2177,
	2141,
	0,
	'Msg_ID',
	'',
	'',
	'Msg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3198,
	2141);
INSERT INTO O_BATTR
	VALUES (3198,
	2141);
INSERT INTO O_ATTR
	VALUES (3198,
	2141,
	3193,
	'participatesInCommunication',
	'This attribute is set at load time to indicate whether or not this message is
participating in a communication.

persistent:false',
	'',
	'participatesInCommunication',
	0,
	316,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	2141);
INSERT INTO O_OIDA
	VALUES (2177,
	2141,
	0,
	'Msg_ID');
INSERT INTO O_ID
	VALUES (1,
	2141);
INSERT INTO O_ID
	VALUES (2,
	2141);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (3074,
	'Interface Operation Message',
	1018,
	'MSG_IOP',
	'',
	2979);
INSERT INTO O_TFR
	VALUES (3199,
	3074,
	'dispose',
	'',
	19,
	1,
	'select one sm related by self->MSG_SM[R1020];
if(not_empty sm)
  unrelate self from sm across R1020;
end if;
select one iOp related by self->C_IO[R1022];
if not_empty iOp
  unrelate self from iOp across R1022;
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (3200,
	3074,
	'get_name',
	'',
	322,
	1,
	'select one iop related by self->C_IO[R1022];
return iop.Name;',
	1,
	'',
	3199);
INSERT INTO O_REF
	VALUES (3074,
	3054,
	0,
	3068,
	3066,
	3075,
	3067,
	3201,
	3202,
	0,
	0,
	'',
	'Synchronous Message',
	'Msg_ID',
	'R1020');
INSERT INTO O_RATTR
	VALUES (3201,
	3074,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (3201,
	3074,
	0,
	'Msg_ID',
	'',
	'',
	'Msg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (3074,
	2992,
	0,
	3083,
	3080,
	3081,
	3082,
	3203,
	3204,
	0,
	0,
	'',
	'Interface Operation',
	'Id',
	'R1022');
INSERT INTO O_RATTR
	VALUES (3203,
	3074,
	3136,
	3137,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (3203,
	3074,
	3201,
	'Id',
	'',
	'',
	'Id',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	3074);
INSERT INTO O_OIDA
	VALUES (3201,
	3074,
	0,
	'Msg_ID');
INSERT INTO O_ID
	VALUES (1,
	3074);
INSERT INTO O_ID
	VALUES (2,
	3074);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (3072,
	'Informal Synchronous Message',
	1014,
	'MSG_ISM',
	'This class is responsible for representing the fact that a message is informal.',
	2979);
INSERT INTO O_TFR
	VALUES (3205,
	3072,
	'dispose',
	'',
	19,
	1,
	'select one syncMessage related by self->MSG_SM[R1020];
if(not_empty syncMessage)
  unrelate self from syncMessage across R1020;
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (3206,
	3072,
	'get_name',
	'',
	322,
	1,
	'return "Informal Message";',
	1,
	'',
	3205);
INSERT INTO O_REF
	VALUES (3072,
	3054,
	0,
	3068,
	3066,
	3073,
	3067,
	3207,
	3208,
	0,
	0,
	'',
	'Synchronous Message',
	'Msg_ID',
	'R1020');
INSERT INTO O_RATTR
	VALUES (3207,
	3072,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (3207,
	3072,
	0,
	'Msg_ID',
	'',
	'',
	'Msg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	3072);
INSERT INTO O_OIDA
	VALUES (3207,
	3072,
	0,
	'Msg_ID');
INSERT INTO O_ID
	VALUES (1,
	3072);
INSERT INTO O_ID
	VALUES (2,
	3072);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (3062,
	'Informal Asynchronous Message',
	1015,
	'MSG_IAM',
	'This class is responsible for representing the fact that a message is informal.',
	2979);
INSERT INTO O_TFR
	VALUES (3209,
	3062,
	'dispose',
	'',
	19,
	1,
	'select one asyncMessage related by self->MSG_AM[R1019];
if(not_empty asyncMessage)
  unrelate self from asyncMessage across R1019;
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (3210,
	3062,
	'get_name',
	'',
	322,
	1,
	'return "Informal Message";',
	1,
	'',
	3209);
INSERT INTO O_REF
	VALUES (3062,
	3052,
	0,
	3060,
	3058,
	3063,
	3059,
	3211,
	3212,
	0,
	0,
	'',
	'Asynchronous Message',
	'Msg_ID',
	'R1019');
INSERT INTO O_RATTR
	VALUES (3211,
	3062,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (3211,
	3062,
	0,
	'Msg_ID',
	'',
	'',
	'Msg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	3062);
INSERT INTO O_OIDA
	VALUES (3211,
	3062,
	0,
	'Msg_ID');
INSERT INTO O_ID
	VALUES (1,
	3062);
INSERT INTO O_ID
	VALUES (2,
	3062);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (3034,
	'Informal Argument',
	1016,
	'MSG_IA',
	'This class is responsible for representing the fact that a message argument
is informal.',
	2979);
INSERT INTO O_TFR
	VALUES (3213,
	3034,
	'get_name',
	'',
	322,
	1,
	'select one arg related by self->MSG_A[R1013];
return arg.Label;',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (3034,
	2995,
	0,
	3025,
	3023,
	3035,
	3024,
	3214,
	3215,
	0,
	0,
	'',
	'Message Argument',
	'Arg_ID',
	'R1013');
INSERT INTO O_RATTR
	VALUES (3214,
	3034,
	3025,
	2995,
	1,
	'Arg_ID');
INSERT INTO O_ATTR
	VALUES (3214,
	3034,
	0,
	'Arg_ID',
	'',
	'',
	'Arg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	3034);
INSERT INTO O_OIDA
	VALUES (3214,
	3034,
	0,
	'Arg_ID');
INSERT INTO O_ID
	VALUES (1,
	3034);
INSERT INTO O_ID
	VALUES (2,
	3034);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (3012,
	'Function Message',
	1005,
	'MSG_F',
	'This class manages the formality between a message and its formal couterpart
model element.',
	2979);
INSERT INTO O_TFR
	VALUES (3216,
	3012,
	'dispose',
	'',
	19,
	1,
	'select one func related by self->S_SYNC[R1010];
if(not_empty func)
  unrelate self from func across R1010;
end if;
select one sm related by self->MSG_SM[R1020];
if(not_empty sm)
  unrelate self from sm across R1020;
end if;
// dispose any formal arguments if still
// existant
select many arguments related by self->MSG_SM[R1020]->MSG_M[R1018]->MSG_A[R1001];
for each argument in arguments
  argument.dispose();
end for;
select one syncMessage related by self->MSG_SM[R1020];
if(not_empty syncMessage)
  unrelate self from syncMessage across R1020;
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (3217,
	3012,
	'get_name',
	'',
	322,
	1,
	'select one func related by self->S_SYNC[R1010];
return func.Name;',
	1,
	'',
	3216);
INSERT INTO O_REF
	VALUES (3012,
	3054,
	0,
	3068,
	3066,
	3069,
	3067,
	3218,
	3219,
	0,
	0,
	'',
	'Synchronous Message',
	'Msg_ID',
	'R1020');
INSERT INTO O_RATTR
	VALUES (3218,
	3012,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (3218,
	3012,
	0,
	'Msg_ID',
	'',
	'',
	'Msg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (3012,
	8,
	0,
	11,
	3011,
	3013,
	3014,
	3220,
	3221,
	0,
	0,
	'',
	'Function',
	'Sync_ID',
	'R1010');
INSERT INTO O_RATTR
	VALUES (3220,
	3012,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (3220,
	3012,
	3218,
	'Sync_ID',
	'',
	'',
	'Sync_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	3012);
INSERT INTO O_OIDA
	VALUES (3218,
	3012,
	0,
	'Msg_ID');
INSERT INTO O_ID
	VALUES (1,
	3012);
INSERT INTO O_ID
	VALUES (2,
	3012);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (3030,
	'Function Argument',
	1009,
	'MSG_FA',
	'This class manages the formality between a message argument and its formal
couterpart model element.',
	2979);
INSERT INTO O_TFR
	VALUES (3222,
	3030,
	'dispose',
	'',
	19,
	1,
	'select one fparm related by self->S_SPARM[R1016];
if(not_empty fparm)
  unrelate self from fparm across R1016;
end if;
select one ma related by self->MSG_A[R1013];
if(not_empty ma)
  ma.dispose();
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (3030,
	2995,
	0,
	3025,
	3023,
	3031,
	3024,
	3223,
	3224,
	0,
	0,
	'',
	'Message Argument',
	'Arg_ID',
	'R1013');
INSERT INTO O_RATTR
	VALUES (3223,
	3030,
	3025,
	2995,
	1,
	'Arg_ID');
INSERT INTO O_ATTR
	VALUES (3223,
	3030,
	0,
	'Arg_ID',
	'',
	'',
	'Arg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (3030,
	48,
	0,
	215,
	3044,
	3045,
	3046,
	3225,
	3226,
	0,
	0,
	'',
	'Function Parameter',
	'SParm_ID',
	'R1016');
INSERT INTO O_RATTR
	VALUES (3225,
	3030,
	215,
	48,
	1,
	'SParm_ID');
INSERT INTO O_ATTR
	VALUES (3225,
	3030,
	3223,
	'SParm_ID',
	'',
	'',
	'SParm_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	3030);
INSERT INTO O_OIDA
	VALUES (3223,
	3030,
	0,
	'Arg_ID');
INSERT INTO O_ID
	VALUES (1,
	3030);
INSERT INTO O_ID
	VALUES (2,
	3030);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (3036,
	'Executable Property Argument',
	1019,
	'MSG_EPA',
	'',
	2979);
INSERT INTO O_TFR
	VALUES (3227,
	3036,
	'dispose',
	'',
	19,
	1,
	'select one pp related by self->C_PP[R1023];
if not_empty pp
  unrelate self from pp across R1023;
end if;
select one ma related by self->MSG_A[R1013];
if(not_empty ma)
  ma.dispose();
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (3036,
	2995,
	0,
	3025,
	3023,
	3037,
	3024,
	3228,
	3229,
	0,
	0,
	'',
	'Message Argument',
	'Arg_ID',
	'R1013');
INSERT INTO O_RATTR
	VALUES (3228,
	3036,
	3025,
	2995,
	1,
	'Arg_ID');
INSERT INTO O_ATTR
	VALUES (3228,
	3036,
	0,
	'Arg_ID',
	'',
	'',
	'Arg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (3036,
	57,
	0,
	254,
	3084,
	3086,
	3085,
	3230,
	3231,
	0,
	0,
	'',
	'Property Parameter',
	'PP_Id',
	'R1023');
INSERT INTO O_RATTR
	VALUES (3230,
	3036,
	254,
	57,
	1,
	'PP_Id');
INSERT INTO O_ATTR
	VALUES (3230,
	3036,
	3228,
	'PP_Id',
	'',
	'',
	'PP_Id',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	3036);
INSERT INTO O_OIDA
	VALUES (3228,
	3036,
	0,
	'Arg_ID');
INSERT INTO O_ID
	VALUES (1,
	3036);
INSERT INTO O_ID
	VALUES (2,
	3036);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (3008,
	'Event Message',
	1004,
	'MSG_E',
	'This class manages the formality between a message and its formal couterpart
model element.',
	2979);
INSERT INTO O_TFR
	VALUES (3232,
	3008,
	'dispose',
	'',
	19,
	1,
	'select one evt related by self->SM_EVT[R1009];
if(not_empty evt)
  unrelate self from evt across R1009;
end if;
select one em related by self->MSG_AM[R1019];
if(not_empty em)
  unrelate self from em across R1019;
end if;
// dispose any formal arguments if still
// existant
select many arguments related by self->MSG_AM[R1019]->MSG_M[R1018]->MSG_A[R1001];
for each argument in arguments
  argument.dispose();
end for;
select one asyncMessage related by self->MSG_AM[R1019];
if(not_empty asyncMessage)
  unrelate self from asyncMessage across R1019;
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (3233,
	3008,
	'get_name',
	'',
	322,
	1,
	'select one evt related by self->SM_EVT[R1009];
return evt.Mning;',
	1,
	'',
	3232);
INSERT INTO O_REF
	VALUES (3008,
	1488,
	0,
	1604,
	3007,
	3009,
	3010,
	3234,
	3235,
	0,
	0,
	'',
	'State Machine Event',
	'SMevt_ID',
	'R1009');
INSERT INTO O_RATTR
	VALUES (3234,
	3008,
	1604,
	1488,
	1,
	'SMevt_ID');
INSERT INTO O_ATTR
	VALUES (3234,
	3008,
	3236,
	'SMevt_ID',
	'',
	'',
	'SMevt_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (3008,
	3052,
	0,
	3060,
	3058,
	3061,
	3059,
	3236,
	3237,
	0,
	0,
	'',
	'Asynchronous Message',
	'Msg_ID',
	'R1019');
INSERT INTO O_RATTR
	VALUES (3236,
	3008,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (3236,
	3008,
	0,
	'Msg_ID',
	'',
	'',
	'Msg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	3008);
INSERT INTO O_OIDA
	VALUES (3236,
	3008,
	0,
	'Msg_ID');
INSERT INTO O_ID
	VALUES (1,
	3008);
INSERT INTO O_ID
	VALUES (2,
	3008);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (3032,
	'Event Argument',
	1010,
	'MSG_EA',
	'This class manages the formality between a message argument and its formal
couterpart model element.',
	2979);
INSERT INTO O_TFR
	VALUES (3238,
	3032,
	'dispose',
	'',
	19,
	1,
	'select one evtdi related by self->SM_EVTDI[R1017];
if(not_empty evtdi)
  unrelate self from evtdi across R1017;
end if;
select one ma related by self->MSG_A[R1013];
if(not_empty ma)
  ma.dispose();
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (3032,
	2995,
	0,
	3025,
	3023,
	3033,
	3024,
	3239,
	3240,
	0,
	0,
	'',
	'Message Argument',
	'Arg_ID',
	'R1013');
INSERT INTO O_RATTR
	VALUES (3239,
	3032,
	3025,
	2995,
	1,
	'Arg_ID');
INSERT INTO O_ATTR
	VALUES (3239,
	3032,
	0,
	'Arg_ID',
	'',
	'',
	'Arg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (3032,
	52,
	0,
	276,
	3047,
	3048,
	3049,
	3241,
	3242,
	0,
	0,
	'',
	'State Machine Event Data Item',
	'SM_ID',
	'R1017');
INSERT INTO O_RATTR
	VALUES (3241,
	3032,
	564,
	565,
	1,
	'SM_ID');
INSERT INTO O_ATTR
	VALUES (3241,
	3032,
	3239,
	'SM_ID',
	'',
	'',
	'SM_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (3032,
	52,
	0,
	277,
	3047,
	3048,
	3049,
	3243,
	3244,
	0,
	0,
	'',
	'State Machine Event Data Item',
	'SMedi_ID',
	'R1017');
INSERT INTO O_RATTR
	VALUES (3243,
	3032,
	277,
	52,
	1,
	'SMedi_ID');
INSERT INTO O_ATTR
	VALUES (3243,
	3032,
	3241,
	'SMedi_ID',
	'',
	'',
	'SMedi_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	3032);
INSERT INTO O_OIDA
	VALUES (3239,
	3032,
	0,
	'Arg_ID');
INSERT INTO O_ID
	VALUES (1,
	3032);
INSERT INTO O_ID
	VALUES (2,
	3032);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (3020,
	'Bridge Message',
	1003,
	'MSG_B',
	'This class manages the formality between a message and its formal couterpart
model element.',
	2979);
INSERT INTO O_TFR
	VALUES (3245,
	3020,
	'dispose',
	'',
	19,
	1,
	'select one brg related by self->S_BRG[R1012];
if(not_empty brg)
  unrelate self from brg across R1012;
end if;
select one sm related by self->MSG_SM[R1020];
if(not_empty sm)
  unrelate self from sm across R1020;
end if;
// dispose any formal arguments if still
// existant
select many arguments related by self->MSG_SM[R1020]->MSG_M[R1018]->MSG_A[R1001];
for each argument in arguments
  argument.dispose();
end for;
select one syncMessage related by self->MSG_SM[R1020];
if(not_empty syncMessage)
  unrelate self from syncMessage across R1020;
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (3246,
	3020,
	'get_name',
	'',
	322,
	1,
	'select one brg related by self->S_BRG[R1012];
return brg.Name;',
	1,
	'',
	3245);
INSERT INTO O_REF
	VALUES (3020,
	6,
	0,
	16,
	3019,
	3021,
	3022,
	3247,
	3248,
	0,
	0,
	'',
	'Bridge',
	'Brg_ID',
	'R1012');
INSERT INTO O_RATTR
	VALUES (3247,
	3020,
	16,
	6,
	1,
	'Brg_ID');
INSERT INTO O_ATTR
	VALUES (3247,
	3020,
	3249,
	'Brg_ID',
	'',
	'',
	'Brg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (3020,
	3054,
	0,
	3068,
	3066,
	3071,
	3067,
	3249,
	3250,
	0,
	0,
	'',
	'Synchronous Message',
	'Msg_ID',
	'R1020');
INSERT INTO O_RATTR
	VALUES (3249,
	3020,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (3249,
	3020,
	0,
	'Msg_ID',
	'',
	'',
	'Msg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	3020);
INSERT INTO O_OIDA
	VALUES (3249,
	3020,
	0,
	'Msg_ID');
INSERT INTO O_ID
	VALUES (1,
	3020);
INSERT INTO O_ID
	VALUES (2,
	3020);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (3026,
	'Bridge Argument',
	1007,
	'MSG_BA',
	'This class manages the formality between a message argument and its formal
couterpart model element.',
	2979);
INSERT INTO O_TFR
	VALUES (3251,
	3026,
	'dispose',
	'',
	19,
	1,
	'select one bparm related by self->S_BPARM[R1014];
if(not_empty bparm)
  unrelate self from bparm across R1014;
end if;
select one ma related by self->MSG_A[R1013];
if(not_empty ma)
  ma.dispose();
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_REF
	VALUES (3026,
	2995,
	0,
	3025,
	3023,
	3027,
	3024,
	3252,
	3253,
	0,
	0,
	'',
	'Message Argument',
	'Arg_ID',
	'R1013');
INSERT INTO O_RATTR
	VALUES (3252,
	3026,
	3025,
	2995,
	1,
	'Arg_ID');
INSERT INTO O_ATTR
	VALUES (3252,
	3026,
	0,
	'Arg_ID',
	'',
	'',
	'Arg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (3026,
	46,
	0,
	211,
	3038,
	3039,
	3040,
	3254,
	3255,
	0,
	0,
	'',
	'Bridge Parameter',
	'BParm_ID',
	'R1014');
INSERT INTO O_RATTR
	VALUES (3254,
	3026,
	211,
	46,
	1,
	'BParm_ID');
INSERT INTO O_ATTR
	VALUES (3254,
	3026,
	3252,
	'BParm_ID',
	'',
	'',
	'BParm_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	3026);
INSERT INTO O_OIDA
	VALUES (3252,
	3026,
	0,
	'Arg_ID');
INSERT INTO O_ID
	VALUES (1,
	3026);
INSERT INTO O_ID
	VALUES (2,
	3026);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (3052,
	'Asynchronous Message',
	1013,
	'MSG_AM',
	'This subclass represents, and holds its unique data, an asynchronous message.
The types of asynchronous messages are:

Informal Asynchronous Message
Event Message',
	2979);
INSERT INTO O_TFR
	VALUES (3256,
	3052,
	'dispose',
	'',
	19,
	1,
	'// dispose any formal asych messages
select one em related by self->MSG_E[R1019];
if(not_empty em)
  unrelate self from em across R1019;
  em.dispose();
end if;
// dispose any informal asynch messages
select one im related by self->MSG_IAM[R1019];
if(not_empty im)
  unrelate self from im across R1019;
  im.dispose();
end if;
select one sigMsg related by self->MSG_SIG[R1019];
if not_empty sigMsg
  unrelate self from sigMsg across R1019;
  sigMsg.dispose();
end if;
// delete supertype, and unrelate
select one msg related by self->MSG_M[R1018];
if(not_empty msg)
  unrelate self from msg across R1018;
  msg.dispose();
end if;
delete object instance self;',
	1,
	'',
	3257);
INSERT INTO O_TFR
	VALUES (3258,
	3052,
	'unformalize',
	'',
	19,
	1,
	'// dispose the associated event message
select one em related by self->MSG_E[R1019];
select one sigMsg related by self->MSG_SIG[R1019];
if(not_empty em)
  em.dispose();
elif not_empty sigMsg
  sigMsg.dispose();
end if;
// unrelate from target element if under a communication
select one message related by self->MSG_M[R1018];
message.deassociateFromTarget();
self.disposeFormalArguments();
// create an informal asych message
create object instance im of MSG_IAM;
relate im to self across R1019;',
	1,
	'',
	3259);
INSERT INTO O_TFR
	VALUES (3260,
	3052,
	'initialize',
	'',
	19,
	1,
	'self.InformalName = "Informal Message";
// create informal subtype
create object instance im of MSG_IAM;
relate im to self across R1019;',
	1,
	'',
	3261);
INSERT INTO O_TFR
	VALUES (3262,
	3052,
	'newArgument',
	'',
	19,
	1,
	'// have the supertype create the argument
select one msg related by self->MSG_M[R1018];
if(not_empty msg)
  msg.newArgument();
end if;',
	1,
	'',
	3260);
INSERT INTO O_TFR
	VALUES (3257,
	3052,
	'canRename',
	'',
	316,
	1,
	'// only informal messages can be renamed
select one im related by self->MSG_IAM[R1019];
if(not_empty im)
  return true;
else
  return false;
end if;',
	1,
	'',
	3263);
INSERT INTO O_TFR
	VALUES (3264,
	3052,
	'get_name',
	'',
	322,
	1,
	'return self.Label;',
	1,
	'',
	3265);
INSERT INTO O_TFR
	VALUES (3261,
	3052,
	'get_style',
	'',
	784,
	1,
	'if(param.at == End::End)
  return Style::OpenArrow;
else
  return Style::Solid;
end if;',
	1,
	'',
	3266);
INSERT INTO O_TPARM
	VALUES (3267,
	3261,
	'at',
	880,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3265,
	3052,
	'get_connector_text',
	'',
	322,
	1,
	'if(param.at == End::Middle)
  result = self.Label;
  select many args related by self->MSG_M[R1018]->MSG_A[R1001];
  if(not self.isFormal)
    select many args related by self->MSG_M[R1018]->MSG_A[R1000];
  end if;
  if(not_empty args)
    result = result + " (";
    count = 0;
    for each arg in args
      count = count + 1;
      result = result + arg.Label;
      if(count != cardinality args)
        result = result + ", ";
      end if;
    end for;  
    result = result + ")";
  end if;
  if(self.DurationObservation != "")
    result = result  + "  " + self.DurationObservation;
  end if;
  if(self.SequenceNumb != "")
    if(result != "")
      result = ": " + result;
    end if;
    result = self.SequenceNumb + result;
  end if;
  return result;
elif(param.at == End::Start)
  if(self.GuardCondition != "")
    return "[" + self.GuardCondition + "]";
  end if;
  return "";
elif(param.at == End::End)
  if(self.DurationConstraint != "")
    return "{" + self.DurationConstraint + "}";
  else
    return "";
  end if;
else
  return "";
end if;',
	1,
	'',
	3268);
INSERT INTO O_TPARM
	VALUES (3269,
	3265,
	'Obj_ID',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (3270,
	3265,
	'Obj_TypeIsImported',
	316,
	0,
	'',
	3269,
	'');
INSERT INTO O_TPARM
	VALUES (3271,
	3265,
	'at',
	880,
	0,
	'',
	3270,
	'');
INSERT INTO O_TPARM
	VALUES (3272,
	3265,
	'parent_ID',
	296,
	0,
	'',
	3271,
	'');
INSERT INTO O_TFR
	VALUES (3263,
	3052,
	'actionFilter',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.

if(param.name == "can")
  select one packageableElem related by self->MSG_M[R1018]->PE_PE[R8001];
  select one package related by packageableElem->EP_PKG[R8000];
  select one message related by self->MSG_M[R1018];
  if(empty package and message.participatesInCommunication)
    select one package related by self->MSG_M[R1018]->SQ_P[R1007]->PE_PE[R8001]
                                                                ->EP_PKG[R8000];
  end if;
  select one component related by packageableElem->C_C[R8003];
  isInGenericPackage = not_empty package or not_empty component;
  
  if(param.value == "addArg")
    return not self.isFormal;
  elif(param.value == "unform")
    return self.isFormal;
  elif(param.value == "formInstClassEvent")
    select one cip related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_CIP[R930];
    if(not_empty cip)
      // do not allow if on a communication
      select one communication related by cip->SQ_P[R930]->COMM_PIC[R1126]->COMM_COMM[R1126];
      if(not_empty communication or message.participatesInCommunication)
        return false;
      else
        // if there is only one possible event, and we are formal
        // do not allow
        if(self.isFormal)
          if(cip.getClassEventCount() == 1)
            return false;
          end if;
        end if;
        return cip.formalClassHasCBEvents(checkForCreationEvents:true);
      end if;
    end if;
  elif(param.value == "formClassEvent")
    select one cp related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_CP[R930];
    if(empty cp)
      // try the communication line
      select one cp related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_LS[R930]
                                                      ->SQ_P[R940]->SQ_CP[R930];
    end if;
    if(not_empty cp)
      select one communication related by cp->SQ_P[R930]->COMM_PIC[R1126]
                                                             ->COMM_COMM[R1126];
      if(not_empty communication or message.participatesInCommunication)
        return false;
      end if;
      // if there is only one possible event, and we are formal
      // do not allow
      if(self.isFormal)
        if(cp.getClassEventCount() == 1)
          return false;
        end if;
      end if;
      return cp.formalClassHasCBEvents();
    end if;
  elif(param.value == "formInstEvent")
    select one ls related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_LS[R930];
    if (not_empty ls)
      select one cip related by ls->SQ_P[R940]->SQ_CIP[R930];
      if(not_empty cip)
        // if there is only one possible event, and we are formal
        // do not allow
        if(self.isFormal)
          if(cip.getInstanceEventCount() == 1)
            return false;
          end if;
        end if;
        return cip.formalClassHasIBEvents();
      end if;  // not_empty cip
    end if; // not_empty ls
  elif(param.value == "formSig")  
    // if there is only one possible interface operation and we are
    // already using it then do not show the menu
    select one signal related by self->MSG_SIG[R1019]->C_AS[R1021];
    if(not_empty signal)
      select one cop related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_COP[R930];
      if(empty cop)
        select one cop related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_LS[R930]
                                                     ->SQ_P[R940]->SQ_COP[R930];
      end if;
      if(not_empty cop)
        if(cop.getInterfaceSignalCount() == 1)
          return false;
        end if;
      end if;
    end if;
  
    select one cop related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_COP[R930];
    if(empty cop)
      select one cop related by self->MSG_M[R1018]->SQ_P[R1007]->SQ_LS[R930]
                                                     ->SQ_P[R940]->SQ_COP[R930];
    end if;
    if(not_empty cop)
      select one communication related by cop->SQ_P[R930]->COMM_PIC[R1126]
                                                             ->COMM_COMM[R1126];
      // if on communication do not allow, other filters will handle
      // this
      if(not_empty communication or message.participatesInCommunication)
        return false;
      end if;
      return cop.isFormalAndHasSignals();
    end if;
  // the following filtering is used for the communication diagram
  elif(param.value == "formCommClassEvent") or (param.value == "formCommMsgSig")
                                         or (param.value == "formCommInstEvent") 
    pkgID = GD::NULL_UNIQUE_ID();
    // if this message is not shown on a communication diagram
    // do not allow
    select one communication related by self->MSG_M[R1018]->COMM_MIC[R1135]->COMM_COMM[R1135];
    if(empty communication)
      // if the above association is not setup, the message is associated with
      // a participant already, get the communication through this participant
      select one communication related by self->MSG_M[R1018]->SQ_P[R1007]->COMM_PIC[R1126]->COMM_COMM[R1126];
      if (empty communication and not message.participatesInCommunication)
        return false;
      end if;
    end if;
    if (not_empty communication)
      pkgID = communication.Package_ID;
    else
      pkgID = package.Package_ID;
    end if;
    // if the selection count does not equal two return false, this
    // prevents the menu entries from existing while only one of the
    // elements is selected
    if(Sel::getCurrentSelectionCount() != 2)
      return false;
    end if;
    // if the selection does not contain a participant
    // do not allow
    if(not Util::selectionContainsValidParticipant(from:Util::getCommunicationInstance(id:pkgID)))
      return false;
    end if;
    // additionally check if this message is already formalized
    // to the only available operation
    if(self.isFormal)
      select one participant related by self->MSG_M[R1018]->SQ_P[R1007];
      if(param.value == "formCommClassEvent")
        select one cp related by participant->SQ_CP[R930];
        if(not_empty cp)
          if(cp.getClassEventCount() == 1)
            return false;
          end if;
        end if;
      elif(param.value == "formCommInstEvent")
        select one cip related by participant->SQ_CIP[R930];
        if(not_empty cip)
          if(cip.getInstanceEventCount() == 1)
            return false;
          end if;
        end if;
      elif(param.value == "formCommMsgSig")
        select one cop related by participant->SQ_COP[R930];
        if(not_empty cop)
          if(cop.getInterfaceSignalCount() == 1)
            return false;
          end if;
        end if;
      end if;
    end if;
    return true;
  end if;
elif(param.name == "show")
  if(param.value == "noTargetMessage")
    if(Sel::getCurrentSelectionCount() != 1)
      return false;
    end if;
    select one target related by self->MSG_M[R1018]->SQ_P[R1007];
    return empty target;
  end if;
end if;
return false;',
	1,
	'',
	0);
INSERT INTO O_TPARM
	VALUES (3273,
	3263,
	'name',
	322,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (3274,
	3263,
	'value',
	322,
	0,
	'',
	3273,
	'');
INSERT INTO O_TFR
	VALUES (3266,
	3052,
	'get_ooa_id',
	'',
	296,
	1,
	'return self.Msg_ID;',
	1,
	'',
	3264);
INSERT INTO O_TFR
	VALUES (3275,
	3052,
	'disposeFormalArguments',
	'',
	19,
	1,
	'select one parent related by self->MSG_M[R1018];
parent.disposeFormalArguments();',
	1,
	'',
	3256);
INSERT INTO O_TFR
	VALUES (3268,
	3052,
	'formalizeWithEvent',
	'',
	19,
	1,
	'select any event from instances of SM_EVT where (selected.SMevt_ID == param.eventId);
self.prepareForFormalization();
create object instance em of MSG_E;
relate em to self across R1019;
relate em to event across R1009;
select one message related by self->MSG_M[R1018];
// create a message argument for every data item
// assigned to this event
select many evtdis related by event->SM_EVTDI[R532];
for each evtdi in evtdis
  create object instance arg of MSG_A;
  create object instance earg of MSG_EA;
  relate arg to message across R1001;
  relate earg to arg across R1013;
  relate earg to evtdi across R1017;
  arg.Value = "";
end for;  
',
	1,
	'',
	3275);
INSERT INTO O_TPARM
	VALUES (3276,
	3268,
	'eventId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3259,
	3052,
	'prepareForFormalization',
	'',
	19,
	1,
	'select one eem related by self->MSG_E[R1019];
select one im related by self->MSG_IAM[R1019];
select one sig related by self->MSG_SIG[R1019];
select one message related by self->MSG_M[R1018];
if(not_empty im)
  unrelate im from self across R1019;
  im.dispose();
elif(not_empty eem)
  unrelate eem from self across R1019;
  eem.dispose();
  message.disposeFormalArguments();
elif not_empty sig
  unrelate self from sig across R1019;
  sig.dispose();
  message.disposeFormalArguments();
end if;

',
	1,
	'',
	3262);
INSERT INTO O_TFR
	VALUES (3277,
	3052,
	'formalizeWithSignal',
	'',
	19,
	1,
	'select any sigProp from instances of C_EP where selected.Id == param.signalId;
if not_empty sigProp
  select one sig related by sigProp->C_AS[R4004];
  if not_empty sig
    self.prepareForFormalization();
    create object instance sigM of MSG_SIG;
    relate sigM to self across R1019;
    relate sigM to sig across R1021;
    select one message related by self->MSG_M[R1018];
    // create a message argument for every parameter
    // assigned to this signal
    select many parms related by sigProp->C_PP[R4006];
    for each parm in parms
      create object instance arg of MSG_A;
      create object instance eparg of MSG_EPA;
      relate arg to message across R1001;
      relate eparg to arg across R1013;
      relate eparg to parm across R1023;
      arg.Value = "";
    end for;
  end if;
end if;
',
	1,
	'',
	3258);
INSERT INTO O_TPARM
	VALUES (3278,
	3277,
	'signalId',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3279,
	3052,
	'canFormalizeUsingInterfaceSignal',
	'',
	316,
	1,
	'/**
 *  Filter operation when choosing which interface signal can be used
 *  to formalize this asynchronous message
 */

// Check that we are not already formalized to the given interface
// signal
select one currentSignal related by self->MSG_SIG[R1019]->C_AS[R1021];
if(not_empty currentSignal and param.id == currentSignal.Id)
  return false;
end if;
return true;',
	1,
	'',
	3277);
INSERT INTO O_TPARM
	VALUES (3280,
	3279,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3281,
	3052,
	'pasteMessageArgument',
	'',
	19,
	1,
	'select one message related by self->MSG_M[R1018];
message.pasteMessageArgument(id:param.id);',
	1,
	'',
	3279);
INSERT INTO O_TPARM
	VALUES (3282,
	3281,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3283,
	3052,
	'canCopyMessageArgument',
	'',
	316,
	1,
	'select one message related by self->MSG_M[R1018];
return message.canCopyMessageArgument(id:param.id);',
	1,
	'',
	3281);
INSERT INTO O_TPARM
	VALUES (3284,
	3283,
	'id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3285,
	3052,
	'canPasteMessageArgument',
	'',
	316,
	1,
	'return not self.isFormal;',
	1,
	'',
	3283);
INSERT INTO O_NBATTR
	VALUES (3286,
	3052);
INSERT INTO O_BATTR
	VALUES (3286,
	3052);
INSERT INTO O_ATTR
	VALUES (3286,
	3052,
	3287,
	'GuardCondition',
	'Full Name: Guard Condition',
	'',
	'GuardCondition',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3287,
	3052);
INSERT INTO O_BATTR
	VALUES (3287,
	3052);
INSERT INTO O_ATTR
	VALUES (3287,
	3052,
	3288,
	'Descrip',
	'Full Name: Message Description',
	'',
	'Descrip',
	0,
	322,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (3289,
	3052,
	'select one iam related by self->MSG_IAM[R1019];
if(not_empty iam)
  self.isFormal = false;
else
  self.isFormal = true;
end if;',
	1);
INSERT INTO O_BATTR
	VALUES (3289,
	3052);
INSERT INTO O_ATTR
	VALUES (3289,
	3052,
	3290,
	'isFormal',
	'Full Name: Is Formal',
	'',
	'isFormal',
	0,
	316,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3290,
	3052);
INSERT INTO O_BATTR
	VALUES (3290,
	3052);
INSERT INTO O_ATTR
	VALUES (3290,
	3052,
	3291,
	'DurationConstraint',
	'Full Name: Duration Constraint',
	'',
	'DurationConstraint',
	0,
	322,
	'',
	'');
INSERT INTO O_DBATTR
	VALUES (3292,
	3052,
	'result = "";
select one em related by self->MSG_E[R1019];
select one sigMsg related by self->MSG_SIG[R1019];
if(not_empty em)
  select one evt related by em->SM_EVT[R1009];
  result = evt.Drv_Lbl + ": " + evt.Mning;
elif not_empty sigMsg
  select one signal related by sigMsg->C_AS[R1021];
  result = signal.Name;
else
  result = self.InformalName;
end if;
self.Label = result;',
	1);
INSERT INTO O_BATTR
	VALUES (3292,
	3052);
INSERT INTO O_ATTR
	VALUES (3292,
	3052,
	3289,
	'Label',
	'User_Visible: false',
	'',
	'Label',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3291,
	3052);
INSERT INTO O_BATTR
	VALUES (3291,
	3052);
INSERT INTO O_ATTR
	VALUES (3291,
	3052,
	3286,
	'DurationObservation',
	'Full Name: Duration Observation',
	'',
	'DurationObservation',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3288,
	3052);
INSERT INTO O_BATTR
	VALUES (3288,
	3052);
INSERT INTO O_ATTR
	VALUES (3288,
	3052,
	3060,
	'InformalName',
	'Full Name: Informal Name',
	'',
	'InformalName',
	0,
	322,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3293,
	3052);
INSERT INTO O_BATTR
	VALUES (3293,
	3052);
INSERT INTO O_ATTR
	VALUES (3293,
	3052,
	3292,
	'SequenceNumb',
	'Full Name: Sequence Number',
	'',
	'SequenceNumb',
	0,
	322,
	'',
	'');
INSERT INTO O_REF
	VALUES (3052,
	2141,
	0,
	2177,
	3050,
	3053,
	3051,
	3060,
	3294,
	0,
	0,
	'',
	'Message',
	'Msg_ID',
	'R1018');
INSERT INTO O_RATTR
	VALUES (3060,
	3052,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (3060,
	3052,
	0,
	'Msg_ID',
	'',
	'',
	'Msg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	3052);
INSERT INTO O_OIDA
	VALUES (3060,
	3052,
	0,
	'Msg_ID');
INSERT INTO O_ID
	VALUES (1,
	3052);
INSERT INTO O_ID
	VALUES (2,
	3052);
-- BP 7.1 content: Subsystem syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SS
	VALUES (3295,
	'Invocation',
	'This subsystem captures the concepts of call and return. It covers
calls to operations, bridges and functions and includes the return
statement.
Notify_Changes:false
Persistent:false
// This is used by schema_gen to ignore this subsystem (for publication)
TRANSLATE_FOR_EXTERNAL_USE:FALSE
',
	'ACT',
	600,
	1,
	3296);
INSERT INTO S_SID
	VALUES (1,
	3295);
INSERT INTO O_IOBJ
	VALUES (3297,
	129,
	5,
	3295,
	'Variable',
	'V_VAR');
INSERT INTO O_IOBJ
	VALUES (3298,
	68,
	5,
	3295,
	'Actual Parameter',
	'V_PAR');
INSERT INTO O_IOBJ
	VALUES (3299,
	70,
	5,
	3295,
	'Value',
	'V_VAL');
INSERT INTO O_IOBJ
	VALUES (3300,
	43,
	5,
	3295,
	'Operation',
	'O_TFR');
INSERT INTO O_IOBJ
	VALUES (3301,
	6,
	5,
	3295,
	'Bridge',
	'S_BRG');
INSERT INTO O_IOBJ
	VALUES (3302,
	8,
	5,
	3295,
	'Function',
	'S_SYNC');
INSERT INTO O_IOBJ
	VALUES (3303,
	1483,
	0,
	3295,
	'Provided Signal',
	'SPR_PS');
INSERT INTO O_IOBJ
	VALUES (3304,
	1485,
	0,
	3295,
	'Required Signal',
	'SPR_RS');
INSERT INTO O_IOBJ
	VALUES (3305,
	3306,
	0,
	3295,
	'Provided Operation',
	'SPR_PO');
INSERT INTO O_IOBJ
	VALUES (3307,
	3308,
	0,
	3295,
	'Required Operation',
	'SPR_RO');
INSERT INTO R_SIMP
	VALUES (3309);
INSERT INTO R_REL
	VALUES (3309,
	668,
	'',
	3295);
INSERT INTO R_FORM
	VALUES (3310,
	3309,
	3311,
	0,
	1,
	'returned by');
INSERT INTO R_RGO
	VALUES (3310,
	3309,
	3311);
INSERT INTO R_OIR
	VALUES (3310,
	3309,
	3311,
	0);
INSERT INTO R_PART
	VALUES (70,
	3309,
	3312,
	0,
	1,
	'has');
INSERT INTO O_RTIDA
	VALUES (72,
	70,
	0,
	3309,
	3312);
INSERT INTO R_RTO
	VALUES (70,
	3309,
	3312,
	0);
INSERT INTO R_OIR
	VALUES (70,
	3309,
	3312,
	3299);
INSERT INTO R_SIMP
	VALUES (663);
INSERT INTO R_REL
	VALUES (663,
	669,
	'',
	3295);
INSERT INTO R_PART
	VALUES (661,
	663,
	665,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (662,
	661,
	0,
	663,
	665);
INSERT INTO R_RTO
	VALUES (661,
	663,
	665,
	0);
INSERT INTO R_OIR
	VALUES (661,
	663,
	665,
	0);
INSERT INTO R_FORM
	VALUES (68,
	663,
	664,
	1,
	1,
	'takes');
INSERT INTO R_RGO
	VALUES (68,
	663,
	664);
INSERT INTO R_OIR
	VALUES (68,
	663,
	664,
	3298);
INSERT INTO R_SIMP
	VALUES (657);
INSERT INTO R_REL
	VALUES (657,
	628,
	'',
	3295);
INSERT INTO R_PART
	VALUES (655,
	657,
	659,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (656,
	655,
	0,
	657,
	659);
INSERT INTO R_RTO
	VALUES (655,
	657,
	659,
	0);
INSERT INTO R_OIR
	VALUES (655,
	657,
	659,
	0);
INSERT INTO R_FORM
	VALUES (68,
	657,
	658,
	1,
	1,
	'takes');
INSERT INTO R_RGO
	VALUES (68,
	657,
	658);
INSERT INTO R_OIR
	VALUES (68,
	657,
	658,
	3298);
INSERT INTO R_SIMP
	VALUES (650);
INSERT INTO R_REL
	VALUES (650,
	627,
	'',
	3295);
INSERT INTO R_PART
	VALUES (648,
	650,
	652,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (649,
	648,
	0,
	650,
	652);
INSERT INTO R_RTO
	VALUES (648,
	650,
	652,
	0);
INSERT INTO R_OIR
	VALUES (648,
	650,
	652,
	0);
INSERT INTO R_FORM
	VALUES (68,
	650,
	651,
	1,
	1,
	'takes');
INSERT INTO R_RGO
	VALUES (68,
	650,
	651);
INSERT INTO R_OIR
	VALUES (68,
	650,
	651,
	3298);
INSERT INTO R_SIMP
	VALUES (3313);
INSERT INTO R_REL
	VALUES (3313,
	667,
	'',
	3295);
INSERT INTO R_FORM
	VALUES (648,
	3313,
	3314,
	1,
	1,
	'is target of');
INSERT INTO R_RGO
	VALUES (648,
	3313,
	3314);
INSERT INTO R_OIR
	VALUES (648,
	3313,
	3314,
	0);
INSERT INTO R_PART
	VALUES (129,
	3313,
	3315,
	0,
	1,
	'has target');
INSERT INTO O_RTIDA
	VALUES (131,
	129,
	0,
	3313,
	3315);
INSERT INTO R_RTO
	VALUES (129,
	3313,
	3315,
	0);
INSERT INTO R_OIR
	VALUES (129,
	3313,
	3315,
	3297);
INSERT INTO R_SIMP
	VALUES (3316);
INSERT INTO R_REL
	VALUES (3316,
	673,
	'',
	3295);
INSERT INTO R_FORM
	VALUES (648,
	3316,
	3317,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (648,
	3316,
	3317);
INSERT INTO R_OIR
	VALUES (648,
	3316,
	3317,
	0);
INSERT INTO R_PART
	VALUES (43,
	3316,
	3318,
	0,
	1,
	'is an invocation of');
INSERT INTO O_RTIDA
	VALUES (201,
	43,
	0,
	3316,
	3318);
INSERT INTO R_RTO
	VALUES (43,
	3316,
	3318,
	0);
INSERT INTO R_OIR
	VALUES (43,
	3316,
	3318,
	3300);
INSERT INTO R_SIMP
	VALUES (3319);
INSERT INTO R_REL
	VALUES (3319,
	674,
	'',
	3295);
INSERT INTO R_FORM
	VALUES (655,
	3319,
	3320,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (655,
	3319,
	3320);
INSERT INTO R_OIR
	VALUES (655,
	3319,
	3320,
	0);
INSERT INTO R_PART
	VALUES (6,
	3319,
	3321,
	0,
	1,
	'is an invocation of');
INSERT INTO O_RTIDA
	VALUES (16,
	6,
	0,
	3319,
	3321);
INSERT INTO R_RTO
	VALUES (6,
	3319,
	3321,
	0);
INSERT INTO R_OIR
	VALUES (6,
	3319,
	3321,
	3301);
INSERT INTO R_SIMP
	VALUES (3322);
INSERT INTO R_REL
	VALUES (3322,
	675,
	'',
	3295);
INSERT INTO R_FORM
	VALUES (661,
	3322,
	3323,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (661,
	3322,
	3323);
INSERT INTO R_OIR
	VALUES (661,
	3322,
	3323,
	0);
INSERT INTO R_PART
	VALUES (8,
	3322,
	3324,
	0,
	1,
	'is an invocation of');
INSERT INTO O_RTIDA
	VALUES (11,
	8,
	0,
	3322,
	3324);
INSERT INTO R_RTO
	VALUES (8,
	3322,
	3324,
	0);
INSERT INTO R_OIR
	VALUES (8,
	3322,
	3324,
	3302);
INSERT INTO R_SIMP
	VALUES (675);
INSERT INTO R_REL
	VALUES (675,
	679,
	'',
	3295);
INSERT INTO R_FORM
	VALUES (68,
	675,
	676,
	1,
	1,
	'takes');
INSERT INTO R_RGO
	VALUES (68,
	675,
	676);
INSERT INTO R_OIR
	VALUES (68,
	675,
	676,
	3298);
INSERT INTO R_PART
	VALUES (673,
	675,
	677,
	0,
	1,
	'taken by');
INSERT INTO O_RTIDA
	VALUES (674,
	673,
	0,
	675,
	677);
INSERT INTO R_RTO
	VALUES (673,
	675,
	677,
	0);
INSERT INTO R_OIR
	VALUES (673,
	675,
	677,
	0);
INSERT INTO R_SIMP
	VALUES (681);
INSERT INTO R_REL
	VALUES (681,
	662,
	'',
	3295);
INSERT INTO R_FORM
	VALUES (68,
	681,
	682,
	1,
	1,
	'takes');
INSERT INTO R_RGO
	VALUES (68,
	681,
	682);
INSERT INTO R_OIR
	VALUES (68,
	681,
	682,
	3298);
INSERT INTO R_PART
	VALUES (679,
	681,
	683,
	0,
	1,
	'taken by');
INSERT INTO O_RTIDA
	VALUES (680,
	679,
	0,
	681,
	683);
INSERT INTO R_RTO
	VALUES (679,
	681,
	683,
	0);
INSERT INTO R_OIR
	VALUES (679,
	681,
	683,
	0);
INSERT INTO R_SIMP
	VALUES (3325);
INSERT INTO R_REL
	VALUES (3325,
	663,
	'',
	3295);
INSERT INTO R_FORM
	VALUES (679,
	3325,
	3326,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (679,
	3325,
	3326);
INSERT INTO R_OIR
	VALUES (679,
	3325,
	3326,
	0);
INSERT INTO R_PART
	VALUES (1483,
	3325,
	3327,
	0,
	1,
	'is invocation of');
INSERT INTO O_RTIDA
	VALUES (1637,
	1483,
	0,
	3325,
	3327);
INSERT INTO R_RTO
	VALUES (1483,
	3325,
	3327,
	0);
INSERT INTO R_OIR
	VALUES (1483,
	3325,
	3327,
	3303);
INSERT INTO R_SIMP
	VALUES (3328);
INSERT INTO R_REL
	VALUES (3328,
	660,
	'',
	3295);
INSERT INTO R_FORM
	VALUES (679,
	3328,
	3329,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (679,
	3328,
	3329);
INSERT INTO R_OIR
	VALUES (679,
	3328,
	3329,
	0);
INSERT INTO R_PART
	VALUES (1485,
	3328,
	3330,
	0,
	1,
	'is invocation of');
INSERT INTO O_RTIDA
	VALUES (1641,
	1485,
	0,
	3328,
	3330);
INSERT INTO R_RTO
	VALUES (1485,
	3328,
	3330,
	0);
INSERT INTO R_OIR
	VALUES (1485,
	3328,
	3330,
	3304);
INSERT INTO R_SIMP
	VALUES (3331);
INSERT INTO R_REL
	VALUES (3331,
	680,
	'',
	3295);
INSERT INTO R_FORM
	VALUES (673,
	3331,
	3332,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (673,
	3331,
	3332);
INSERT INTO R_OIR
	VALUES (673,
	3331,
	3332,
	0);
INSERT INTO R_PART
	VALUES (3306,
	3331,
	3333,
	0,
	1,
	'is invocation of');
INSERT INTO O_RTIDA
	VALUES (3334,
	3306,
	0,
	3331,
	3333);
INSERT INTO R_RTO
	VALUES (3306,
	3331,
	3333,
	0);
INSERT INTO R_OIR
	VALUES (3306,
	3331,
	3333,
	3305);
INSERT INTO R_SIMP
	VALUES (3335);
INSERT INTO R_REL
	VALUES (3335,
	657,
	'',
	3295);
INSERT INTO R_PART
	VALUES (3308,
	3335,
	3336,
	0,
	1,
	'is invocation of');
INSERT INTO O_RTIDA
	VALUES (3337,
	3308,
	0,
	3335,
	3336);
INSERT INTO R_RTO
	VALUES (3308,
	3335,
	3336,
	0);
INSERT INTO R_OIR
	VALUES (3308,
	3335,
	3336,
	3307);
INSERT INTO R_FORM
	VALUES (673,
	3335,
	3338,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (673,
	3335,
	3338);
INSERT INTO R_OIR
	VALUES (673,
	3335,
	3338,
	0);
INSERT INTO R_SIMP
	VALUES (3339);
INSERT INTO R_REL
	VALUES (3339,
	630,
	'',
	3295);
INSERT INTO R_FORM
	VALUES (679,
	3339,
	3340,
	1,
	1,
	'is target of');
INSERT INTO R_RGO
	VALUES (679,
	3339,
	3340);
INSERT INTO R_OIR
	VALUES (679,
	3339,
	3340,
	0);
INSERT INTO R_PART
	VALUES (70,
	3339,
	3341,
	0,
	1,
	'has target');
INSERT INTO O_RTIDA
	VALUES (72,
	70,
	0,
	3339,
	3341);
INSERT INTO R_RTO
	VALUES (70,
	3339,
	3341,
	0);
INSERT INTO R_OIR
	VALUES (70,
	3339,
	3341,
	3299);
INSERT INTO R_SIMP
	VALUES (3342);
INSERT INTO R_REL
	VALUES (3342,
	629,
	'',
	3295);
INSERT INTO R_FORM
	VALUES (673,
	3342,
	3343,
	1,
	1,
	'is target of');
INSERT INTO R_RGO
	VALUES (673,
	3342,
	3343);
INSERT INTO R_OIR
	VALUES (673,
	3342,
	3343,
	0);
INSERT INTO R_PART
	VALUES (70,
	3342,
	3344,
	0,
	1,
	'has target');
INSERT INTO O_RTIDA
	VALUES (72,
	70,
	0,
	3342,
	3344);
INSERT INTO R_RTO
	VALUES (70,
	3342,
	3344,
	0);
INSERT INTO R_OIR
	VALUES (70,
	3342,
	3344,
	3299);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (679,
	'Signal Invocation',
	627,
	'ACT_SGN',
	'',
	3295);
INSERT INTO O_TFR
	VALUES (3345,
	679,
	'dispose',
	'',
	19,
	1,
	'// Signal Invocation.dispose()
select one reqSig related by self->SPR_RS[R660];
if not_empty reqSig
  unrelate self from reqSig across R660;
end if;
select one proSig related by self->SPR_PS[R663];
if(not_empty proSig)
  unrelate self from proSig across R663;
end if;
select many parm_set related by self->V_PAR[R662];
for each parm in parm_set 
  unrelate self from parm across R662;
  parm.dispose();
end for;
select one targetVal related by self->V_VAL[R630];
if not_empty targetVal
  unrelate self from targetVal across R630;
  targetVal.dispose();
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (3346,
	679,
	'execute',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	3345);
INSERT INTO O_TPARM
	VALUES (3347,
	3346,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3348,
	679,
	'setupParameterValues',
	'',
	316,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return false;',
	1,
	'',
	3346);
INSERT INTO O_TPARM
	VALUES (3349,
	3348,
	'stack_frame_id',
	296,
	0,
	'',
	3350,
	'');
INSERT INTO O_TPARM
	VALUES (3351,
	3348,
	'ee_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (3350,
	3348,
	'event_inst_id',
	296,
	0,
	'',
	3351,
	'');
INSERT INTO O_TPARM
	VALUES (3352,
	3348,
	'executeRemotely',
	316,
	0,
	'',
	3349,
	'');
INSERT INTO O_TPARM
	VALUES (3353,
	3348,
	'channel_id',
	296,
	0,
	'',
	3352,
	'');
INSERT INTO O_REF
	VALUES (679,
	686,
	0,
	685,
	2386,
	3354,
	2388,
	680,
	3355,
	0,
	0,
	'',
	'Statement',
	'Statement_ID',
	'R603');
INSERT INTO O_RATTR
	VALUES (680,
	679,
	685,
	686,
	1,
	'Statement_ID');
INSERT INTO O_ATTR
	VALUES (680,
	679,
	0,
	'Statement_ID',
	'',
	'',
	'Statement_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3356,
	679);
INSERT INTO O_BATTR
	VALUES (3356,
	679);
INSERT INTO O_ATTR
	VALUES (3356,
	679,
	680,
	'sigNameLineNumber',
	'',
	'',
	'sigNameLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3357,
	679);
INSERT INTO O_BATTR
	VALUES (3357,
	679);
INSERT INTO O_ATTR
	VALUES (3357,
	679,
	3356,
	'sigNameColumn',
	'',
	'',
	'sigNameColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3358,
	679);
INSERT INTO O_BATTR
	VALUES (3358,
	679);
INSERT INTO O_ATTR
	VALUES (3358,
	679,
	3357,
	'ownerNameLineNumber',
	'',
	'',
	'ownerNameLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3359,
	679);
INSERT INTO O_BATTR
	VALUES (3359,
	679);
INSERT INTO O_ATTR
	VALUES (3359,
	679,
	3358,
	'ownerNameColumn',
	'',
	'',
	'ownerNameColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_REF
	VALUES (679,
	1483,
	0,
	1637,
	3325,
	3326,
	3327,
	3360,
	3361,
	0,
	0,
	'',
	'Provided Signal',
	'Id',
	'R663.''is invocation of''');
INSERT INTO O_RATTR
	VALUES (3360,
	679,
	263,
	61,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (3360,
	679,
	3359,
	'ProvidedSig_Id',
	'',
	'ProvidedSig_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (679,
	1485,
	0,
	1641,
	3328,
	3329,
	3330,
	3362,
	3363,
	0,
	0,
	'',
	'Required Signal',
	'Id',
	'R660.''is invocation of''');
INSERT INTO O_RATTR
	VALUES (3362,
	679,
	267,
	63,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (3362,
	679,
	3360,
	'RequiredSig_Id',
	'',
	'RequiredSig_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (679,
	70,
	0,
	72,
	3339,
	3340,
	3341,
	3364,
	3365,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R630.''has target''');
INSERT INTO O_RATTR
	VALUES (3364,
	679,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (3364,
	679,
	3362,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	679);
INSERT INTO O_OIDA
	VALUES (680,
	679,
	0,
	'Statement_ID');
INSERT INTO O_ID
	VALUES (1,
	679);
INSERT INTO O_ID
	VALUES (2,
	679);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (3310,
	'Return Stmt',
	624,
	'ACT_RET',
	'Represents a return statement. It has an optional relationship with a value
because returns may bear a value depending on whether the callee
returns void or not.',
	3295);
INSERT INTO O_TFR
	VALUES (3366,
	3310,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one val related by self->V_VAL[R668];
if ( not_empty val )
  unrelate self from val across R668;
  val.dispose();
end if;
delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (3367,
	3310,
	'execute',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	3366);
INSERT INTO O_TPARM
	VALUES (3368,
	3367,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (3310,
	686,
	0,
	685,
	2386,
	3369,
	2388,
	3370,
	3371,
	0,
	0,
	'',
	'Statement',
	'Statement_ID',
	'R603');
INSERT INTO O_RATTR
	VALUES (3370,
	3310,
	685,
	686,
	1,
	'Statement_ID');
INSERT INTO O_ATTR
	VALUES (3370,
	3310,
	0,
	'Statement_ID',
	'

',
	'',
	'Statement_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (3310,
	70,
	0,
	72,
	3309,
	3311,
	3312,
	3372,
	3373,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R668.''has''');
INSERT INTO O_RATTR
	VALUES (3372,
	3310,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (3372,
	3310,
	3370,
	'Value_ID',
	'

',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	3310);
INSERT INTO O_OIDA
	VALUES (3370,
	3310,
	0,
	'Statement_ID');
INSERT INTO O_ID
	VALUES (1,
	3310);
INSERT INTO O_ID
	VALUES (2,
	3310);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (648,
	'Operation Invocation',
	618,
	'ACT_TFM',
	'This class represents the invocation of an operation.',
	3295);
INSERT INTO O_TFR
	VALUES (3374,
	648,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one tfr related by self->O_TFR[R673];
if ( not empty tfr )
  unrelate self from tfr across R673;
end if;

select one var related by self->V_VAR[R667];
if ( not_empty var )
  unrelate self from var across R667;
end if;

select many parm_set related by self->V_PAR[R627];
for each parm in parm_set 
  unrelate self from parm across R627;
  parm.dispose();
end for;

delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (3375,
	648,
	'execute',
	'',
	19,
	1,
	'//Invocation:Operation Invocation.execute()

// Execute the operation
select one body related by self->O_TFR[R673]->ACT_OPB[R696]->ACT_ACT[R698];
select any statement related by body->ACT_BLK[R601]->ACT_SMT[R602];
if (not_empty statement)
  // Setup the parameter values within the newly created stack frame
  discard = self.setupParameterValues(stack_frame_id: param.stack_frame_id);
end if;
',
	1,
	'',
	3374);
INSERT INTO O_TPARM
	VALUES (3376,
	3375,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3377,
	648,
	'setupParameterValues',
	'Initializes the parameters passing to an Operation Invocation',
	316,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return false;',
	1,
	'',
	3375);
INSERT INTO O_TPARM
	VALUES (3378,
	3377,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (648,
	686,
	0,
	685,
	2386,
	3379,
	2388,
	649,
	3380,
	0,
	0,
	'',
	'Statement',
	'Statement_ID',
	'R603');
INSERT INTO O_RATTR
	VALUES (649,
	648,
	685,
	686,
	1,
	'Statement_ID');
INSERT INTO O_ATTR
	VALUES (649,
	648,
	0,
	'Statement_ID',
	'

',
	'',
	'Statement_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (648,
	43,
	0,
	201,
	3316,
	3317,
	3318,
	3381,
	3382,
	0,
	0,
	'',
	'Operation',
	'Tfr_ID',
	'R673.''is an invocation of''');
INSERT INTO O_RATTR
	VALUES (3381,
	648,
	201,
	43,
	1,
	'Tfr_ID');
INSERT INTO O_ATTR
	VALUES (3381,
	648,
	649,
	'Tfr_ID',
	'

',
	'',
	'Tfr_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (648,
	129,
	0,
	131,
	3313,
	3314,
	3315,
	3383,
	3384,
	0,
	0,
	'',
	'Variable',
	'Var_ID',
	'R667.''has target''');
INSERT INTO O_RATTR
	VALUES (3383,
	648,
	131,
	129,
	1,
	'Var_ID');
INSERT INTO O_ATTR
	VALUES (3383,
	648,
	3381,
	'Var_ID',
	'

',
	'',
	'Var_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3385,
	648);
INSERT INTO O_BATTR
	VALUES (3385,
	648);
INSERT INTO O_ATTR
	VALUES (3385,
	648,
	3383,
	'operationNameLineNumber',
	'',
	'',
	'operationNameLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3386,
	648);
INSERT INTO O_BATTR
	VALUES (3386,
	648);
INSERT INTO O_ATTR
	VALUES (3386,
	648,
	3385,
	'operationNameColumn',
	'',
	'',
	'operationNameColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3387,
	648);
INSERT INTO O_BATTR
	VALUES (3387,
	648);
INSERT INTO O_ATTR
	VALUES (3387,
	648,
	3386,
	'modelClassKeyLettersLineNumber',
	'',
	'',
	'modelClassKeyLettersLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3388,
	648);
INSERT INTO O_BATTR
	VALUES (3388,
	648);
INSERT INTO O_ATTR
	VALUES (3388,
	648,
	3387,
	'modelClassKeyLettersColumn',
	'',
	'',
	'modelClassKeyLettersColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	648);
INSERT INTO O_OIDA
	VALUES (649,
	648,
	0,
	'Statement_ID');
INSERT INTO O_ID
	VALUES (1,
	648);
INSERT INTO O_ID
	VALUES (2,
	648);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (673,
	'Interface Operation Invocation',
	626,
	'ACT_IOP',
	'',
	3295);
INSERT INTO O_TFR
	VALUES (3389,
	673,
	'dispose',
	'',
	19,
	1,
	'// Interface Operation Invocation.dispose()
select one rop related by self->SPR_RO[R657];
if not_empty rop
  unrelate self from rop across R657;
end if;
select one pop related by self->SPR_PO[R680];
if(not_empty pop)
  unrelate self from pop across R680;
end if;
select many parm_set related by self->V_PAR[R679];
for each parm in parm_set 
  unrelate self from parm across R679;
  parm.dispose();
end for;
select one targetVal related by self->V_VAL[R629];
if not_empty targetVal
  unrelate self from targetVal across R629;
  targetVal.dispose();
end if;
delete object instance self;',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (3390,
	673,
	'execute',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	3389);
INSERT INTO O_TPARM
	VALUES (3391,
	3390,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3392,
	673,
	'setupParameterValues',
	'',
	316,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return false;',
	1,
	'',
	3390);
INSERT INTO O_TPARM
	VALUES (3393,
	3392,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (673,
	686,
	0,
	685,
	2386,
	3394,
	2388,
	674,
	3395,
	0,
	0,
	'',
	'Statement',
	'Statement_ID',
	'R603');
INSERT INTO O_RATTR
	VALUES (674,
	673,
	685,
	686,
	1,
	'Statement_ID');
INSERT INTO O_ATTR
	VALUES (674,
	673,
	0,
	'Statement_ID',
	'',
	'',
	'Statement_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3396,
	673);
INSERT INTO O_BATTR
	VALUES (3396,
	673);
INSERT INTO O_ATTR
	VALUES (3396,
	673,
	674,
	'opNameLineNumber',
	'',
	'',
	'opNameLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3397,
	673);
INSERT INTO O_BATTR
	VALUES (3397,
	673);
INSERT INTO O_ATTR
	VALUES (3397,
	673,
	3396,
	'opNameColumn',
	'',
	'',
	'opNameColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3398,
	673);
INSERT INTO O_BATTR
	VALUES (3398,
	673);
INSERT INTO O_ATTR
	VALUES (3398,
	673,
	3397,
	'ownerNameLineNumber',
	'',
	'',
	'ownerNameLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3399,
	673);
INSERT INTO O_BATTR
	VALUES (3399,
	673);
INSERT INTO O_ATTR
	VALUES (3399,
	673,
	3398,
	'ownerNameColumn',
	'',
	'',
	'ownerNameColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_REF
	VALUES (673,
	3306,
	0,
	3334,
	3331,
	3332,
	3333,
	3400,
	3401,
	0,
	0,
	'',
	'Provided Operation',
	'Id',
	'R680.''is invocation of''');
INSERT INTO O_RATTR
	VALUES (3400,
	673,
	263,
	61,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (3400,
	673,
	3399,
	'ProvidedOp_Id',
	'',
	'ProvidedOp_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (673,
	3308,
	0,
	3337,
	3335,
	3338,
	3336,
	3402,
	3403,
	0,
	0,
	'',
	'Required Operation',
	'Id',
	'R657.''is invocation of''');
INSERT INTO O_RATTR
	VALUES (3402,
	673,
	267,
	63,
	1,
	'Id');
INSERT INTO O_ATTR
	VALUES (3402,
	673,
	3400,
	'RequiredOp_Id',
	'',
	'RequiredOp_',
	'Id',
	1,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (673,
	70,
	0,
	72,
	3342,
	3343,
	3344,
	3404,
	3405,
	0,
	0,
	'',
	'Value',
	'Value_ID',
	'R629.''has target''');
INSERT INTO O_RATTR
	VALUES (3404,
	673,
	72,
	70,
	1,
	'Value_ID');
INSERT INTO O_ATTR
	VALUES (3404,
	673,
	3402,
	'Value_ID',
	'',
	'',
	'Value_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	673);
INSERT INTO O_OIDA
	VALUES (674,
	673,
	0,
	'Statement_ID');
INSERT INTO O_ID
	VALUES (1,
	673);
INSERT INTO O_ID
	VALUES (2,
	673);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (661,
	'Function Invocation',
	625,
	'ACT_FNC',
	'This class represents the invocation of a function.',
	3295);
INSERT INTO O_TFR
	VALUES (3406,
	661,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one sync related by self->S_SYNC[R675];
if ( not empty sync )
  unrelate self from sync across R675;
end if;

select many parm_set related by self->V_PAR[R669];
for each parm in parm_set 
  unrelate self from parm across R669;
  parm.dispose();
end for;

delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (3407,
	661,
	'execute',
	'',
	19,
	1,
	'//Invocation:Function Invocation.execute()
// Execute the function
select one body related by self->S_SYNC[R675]->ACT_FNB[R695]->ACT_ACT[R698];
select any statement related by body->ACT_BLK[R601]->ACT_SMT[R602];
if (not_empty statement)
  // Setup the parameter values within the newly created stack frame
  discard = self.setupParameterValues(stack_frame_id: param.stack_frame_id);
end if;
',
	1,
	'',
	3406);
INSERT INTO O_TPARM
	VALUES (3408,
	3407,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3409,
	661,
	'setupParameterValues',
	'SetupParameterValues is responsible for taking all of the actual parameter
values supplied to a function call and creating accessible local values within the
new executing stack frame.',
	316,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return false;',
	1,
	'',
	3407);
INSERT INTO O_TPARM
	VALUES (3410,
	3409,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_REF
	VALUES (661,
	686,
	0,
	685,
	2386,
	3411,
	2388,
	662,
	3412,
	0,
	0,
	'',
	'Statement',
	'Statement_ID',
	'R603');
INSERT INTO O_RATTR
	VALUES (662,
	661,
	685,
	686,
	1,
	'Statement_ID');
INSERT INTO O_ATTR
	VALUES (662,
	661,
	0,
	'Statement_ID',
	'

',
	'',
	'Statement_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3413,
	661);
INSERT INTO O_BATTR
	VALUES (3413,
	661);
INSERT INTO O_ATTR
	VALUES (3413,
	661,
	3414,
	'functionNameLineNumber',
	'',
	'',
	'functionNameLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3415,
	661);
INSERT INTO O_BATTR
	VALUES (3415,
	661);
INSERT INTO O_ATTR
	VALUES (3415,
	661,
	3413,
	'functionNameColumn',
	'',
	'',
	'functionNameColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_REF
	VALUES (661,
	8,
	0,
	11,
	3322,
	3323,
	3324,
	3414,
	3416,
	0,
	0,
	'',
	'Function',
	'Sync_ID',
	'R675.''is an invocation of''');
INSERT INTO O_RATTR
	VALUES (3414,
	661,
	25,
	26,
	1,
	'Element_ID');
INSERT INTO O_ATTR
	VALUES (3414,
	661,
	662,
	'Sync_ID',
	'',
	'',
	'Sync_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	661);
INSERT INTO O_OIDA
	VALUES (662,
	661,
	0,
	'Statement_ID');
INSERT INTO O_ID
	VALUES (1,
	661);
INSERT INTO O_ID
	VALUES (2,
	661);
-- BP 7.1.6 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (655,
	'Bridge Invocation',
	620,
	'ACT_BRG',
	'This class represents the invocation of an External Entity Bridge.',
	3295);
INSERT INTO O_TFR
	VALUES (3417,
	655,
	'dispose',
	'This operation disconnects an instance, and all instances it is 
responsible for, from the model.',
	19,
	1,
	'select one brg related by self->S_BRG[R674];
if ( not empty brg )
  unrelate self from brg across R674;
end if;

select many parm_set related by self->V_PAR[R628];
for each parm in parm_set 
  unrelate self from parm across R628;
  parm.dispose();
end for;

delete object instance self;
',
	1,
	'',
	0);
INSERT INTO O_TFR
	VALUES (3418,
	655,
	'execute',
	'',
	19,
	1,
	'// Mentor Graphics Verifier-specific Implementation
',
	1,
	'',
	3417);
INSERT INTO O_TPARM
	VALUES (3419,
	3418,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3420,
	655,
	'setupParameterValues',
	'Initializes the parameters passing to a bridge invocation.',
	316,
	1,
	'// Mentor Graphics Verifier-specific Implementation
return false;',
	1,
	'',
	3418);
INSERT INTO O_TPARM
	VALUES (3421,
	3420,
	'stack_frame_id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (3422,
	3420,
	'target_stack_frame_id',
	296,
	0,
	'',
	3421,
	'');
INSERT INTO O_REF
	VALUES (655,
	686,
	0,
	685,
	2386,
	3423,
	2388,
	656,
	3424,
	0,
	0,
	'',
	'Statement',
	'Statement_ID',
	'R603');
INSERT INTO O_RATTR
	VALUES (656,
	655,
	685,
	686,
	1,
	'Statement_ID');
INSERT INTO O_ATTR
	VALUES (656,
	655,
	0,
	'Statement_ID',
	'

',
	'',
	'Statement_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_REF
	VALUES (655,
	6,
	0,
	16,
	3319,
	3320,
	3321,
	3425,
	3426,
	0,
	0,
	'',
	'Bridge',
	'Brg_ID',
	'R674.''is an invocation of''');
INSERT INTO O_RATTR
	VALUES (3425,
	655,
	16,
	6,
	1,
	'Brg_ID');
INSERT INTO O_ATTR
	VALUES (3425,
	655,
	656,
	'Brg_ID',
	'

',
	'',
	'Brg_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3427,
	655);
INSERT INTO O_BATTR
	VALUES (3427,
	655);
INSERT INTO O_ATTR
	VALUES (3427,
	655,
	3425,
	'bridgeNameLineNumber',
	'',
	'',
	'bridgeNameLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3428,
	655);
INSERT INTO O_BATTR
	VALUES (3428,
	655);
INSERT INTO O_ATTR
	VALUES (3428,
	655,
	3427,
	'bridgeNameColumn',
	'',
	'',
	'bridgeNameColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3429,
	655);
INSERT INTO O_BATTR
	VALUES (3429,
	655);
INSERT INTO O_ATTR
	VALUES (3429,
	655,
	3428,
	'externalEntityKeyLettersLineNumber',
	'',
	'',
	'externalEntityKeyLettersLineNumber',
	0,
	298,
	'',
	'');
INSERT INTO O_NBATTR
	VALUES (3430,
	655);
INSERT INTO O_BATTR
	VALUES (3430,
	655);
INSERT INTO O_ATTR
	VALUES (3430,
	655,
	3429,
	'externalEntityKeyLettersColumn',
	'',
	'',
	'externalEntityKeyLettersColumn',
	0,
	298,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	655);
INSERT INTO O_OIDA
	VALUES (656,
	655,
	0,
	'Statement_ID');
INSERT INTO O_ID
	VALUES (1,
	655);
INSERT INTO O_ID
	VALUES (2,
	655);
-- BP 7.1 content: Subsystem syschar: 3 persistence-version: 7.1.6

INSERT INTO S_SS
	VALUES (3431,
	'Interface Package',
	'// This is used by schema_gen to ignore this subsystem (for publication)
TRANSLATE_FOR_EXTERNAL_USE:FALSE

The Interface Diagram subsystem captures data specific to the graphical
implementation of interfaces.',
	'IP',
	4300,
	1,
	0);
INSERT INTO S_SID
	VALUES (1,
	3431);
INSERT INTO O_IOBJ
	VALUES (3432,
	705,
	0,
	3431,
	'System Model',
	'S_SYS');
INSERT INTO O_IOBJ
	VALUES (3433,
	2809,
	0,
	3431,
	'Interface',
	'C_I');
INSERT INTO R_SIMP
	VALUES (3434);
INSERT INTO R_REL
	VALUES (3434,
	4300,
	'',
	3431);
INSERT INTO R_PART
	VALUES (3435,
	3434,
	3436,
	0,
	0,
	'can be shown in');
INSERT INTO O_RTIDA
	VALUES (3437,
	3435,
	0,
	3434,
	3436);
INSERT INTO R_RTO
	VALUES (3435,
	3434,
	3436,
	0);
INSERT INTO R_OIR
	VALUES (3435,
	3434,
	3436,
	0);
INSERT INTO R_FORM
	VALUES (3438,
	3434,
	3439,
	0,
	1,
	'may contain');
INSERT INTO R_RGO
	VALUES (3438,
	3434,
	3439);
INSERT INTO R_OIR
	VALUES (3438,
	3434,
	3439,
	0);
INSERT INTO R_SIMP
	VALUES (3440);
INSERT INTO R_REL
	VALUES (3440,
	4301,
	'',
	3431);
INSERT INTO R_PART
	VALUES (3438,
	3440,
	3441,
	0,
	1,
	'may be shown in');
INSERT INTO O_RTIDA
	VALUES (3442,
	3438,
	0,
	3440,
	3441);
INSERT INTO R_RTO
	VALUES (3438,
	3440,
	3441,
	0);
INSERT INTO R_OIR
	VALUES (3438,
	3440,
	3441,
	0);
INSERT INTO R_FORM
	VALUES (3435,
	3440,
	3443,
	1,
	1,
	'has children');
INSERT INTO R_RGO
	VALUES (3435,
	3440,
	3443);
INSERT INTO R_OIR
	VALUES (3435,
	3440,
	3443,
	0);
INSERT INTO R_SIMP
	VALUES (3444);
INSERT INTO R_REL
	VALUES (3444,
	4302,
	'',
	3431);
INSERT INTO R_PART
	VALUES (705,
	3444,
	3445,
	0,
	1,
	'may be shown in');
INSERT INTO O_RTIDA
	VALUES (754,
	705,
	0,
	3444,
	3445);
INSERT INTO R_RTO
	VALUES (705,
	3444,
	3445,
	0);
INSERT INTO R_OIR
	VALUES (705,
	3444,
	3445,
	3432);
INSERT INTO R_FORM
	VALUES (3435,
	3444,
	3446,
	1,
	1,
	'can show');
INSERT INTO R_RGO
	VALUES (3435,
	3444,
	3446);
INSERT INTO R_OIR
	VALUES (3435,
	3444,
	3446,
	0);
INSERT INTO R_SIMP
	VALUES (3447);
INSERT INTO R_REL
	VALUES (3447,
	4303,
	'',
	3431);
INSERT INTO R_PART
	VALUES (3435,
	3447,
	3448,
	0,
	1,
	'');
INSERT INTO O_RTIDA
	VALUES (3437,
	3435,
	0,
	3447,
	3448);
INSERT INTO R_RTO
	VALUES (3435,
	3447,
	3448,
	0);
INSERT INTO R_OIR
	VALUES (3435,
	3447,
	3448,
	0);
INSERT INTO R_FORM
	VALUES (2809,
	3447,
	3449,
	1,
	1,
	'contains');
INSERT INTO R_RGO
	VALUES (2809,
	3447,
	3449);
INSERT INTO R_OIR
	VALUES (2809,
	3447,
	3449,
	3433);
INSERT INTO R_SIMP
	VALUES (3450);
INSERT INTO R_REL
	VALUES (3450,
	4304,
	'CrossComponent:true',
	3431);
INSERT INTO R_PART
	VALUES (705,
	3450,
	3451,
	0,
	0,
	'');
INSERT INTO O_RTIDA
	VALUES (754,
	705,
	0,
	3450,
	3451);
INSERT INTO R_RTO
	VALUES (705,
	3450,
	3451,
	0);
INSERT INTO R_OIR
	VALUES (705,
	3450,
	3451,
	3432);
INSERT INTO R_FORM
	VALUES (3435,
	3450,
	3452,
	1,
	1,
	'');
INSERT INTO R_RGO
	VALUES (3435,
	3450,
	3452);
INSERT INTO R_OIR
	VALUES (3435,
	3450,
	3452,
	0);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (3438,
	'Interface Package in Interface Package',
	4301,
	'IP_IPINIP',
	'',
	3431);
INSERT INTO O_REF
	VALUES (3438,
	3435,
	0,
	3437,
	3434,
	3439,
	3436,
	3442,
	3453,
	0,
	0,
	'',
	'Interface Package',
	'Package_ID',
	'R4300');
INSERT INTO O_RATTR
	VALUES (3442,
	3438,
	772,
	773,
	1,
	'Package_ID');
INSERT INTO O_ATTR
	VALUES (3442,
	3438,
	0,
	'Package_ID',
	'',
	'',
	'Package_ID',
	0,
	22,
	'',
	'');
INSERT INTO O_ID
	VALUES (0,
	3438);
INSERT INTO O_OIDA
	VALUES (3442,
	3438,
	0,
	'Package_ID');
INSERT INTO O_ID
	VALUES (1,
	3438);
INSERT INTO O_ID
	VALUES (2,
	3438);
-- BP 7.1 content: ModelClass syschar: 3 persistence-version: 7.1.6

INSERT INTO O_OBJ
	VALUES (3435,
	'Interface Package',
	4300,
	'IP_IP',
	'',
	3431);
INSERT INTO O_TFR
	VALUES (3454,
	3435,
	'initialize',
	'',
	19,
	1,
	'self.Name = ::getUniqueInitialName( 
    instance: self.convertToInstance(), 
    candidateName: "Unnamed Interface Package" );',
	1,
	'',
	3455);
INSERT INTO O_TFR
	VALUES (3456,
	3435,
	'convertToInstance',
	'A utility operation to cast an instance of this type to the
instance datatype.

Translate: native',
	317,
	1,
	'return this;',
	0,
	'',
	3457);
INSERT INTO O_TFR
	VALUES (3458,
	3435,
	'get_compartment_text',
	'',
	322,
	1,
	'// The component package symbol only contains its name
// appended by the interface stereotype
result = "";
if (param.at == Justification::Center_in_X)
  result = "«interface»";
elif (param.at == Justification::Center)
  result = self.Name;
end if;
return result;',
	1,
	'',
	3459);
INSERT INTO O_TPARM
	VALUES (3460,
	3458,
	'at',
	779,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (3461,
	3458,
	'ent_num',
	298,
	0,
	'',
	3462,
	'');
INSERT INTO O_TPARM
	VALUES (3462,
	3458,
	'comp_num',
	298,
	0,
	'',
	3460,
	'');
INSERT INTO O_TFR
	VALUES (3463,
	3435,
	'get_compartments',
	'',
	298,
	1,
	'return 1;',
	1,
	'',
	3458);
INSERT INTO O_TFR
	VALUES (3464,
	3435,
	'get_style',
	'',
	784,
	1,
	'return Style::Folder;',
	1,
	'',
	3465);
INSERT INTO O_TFR
	VALUES (3455,
	3435,
	'get_text_style',
	'',
	784,
	1,
	'return Style::None;',
	1,
	'',
	3464);
INSERT INTO O_TPARM
	VALUES (3466,
	3455,
	'at',
	779,
	0,
	'',
	0,
	'');
INSERT INTO O_TPARM
	VALUES (3467,
	3455,
	'ent_num',
	298,
	0,
	'',
	3468,
	'');
INSERT INTO O_TPARM
	VALUES (3468,
	3455,
	'comp_num',
	298,
	0,
	'',
	3466,
	'');
INSERT INTO O_TFR
	VALUES (3469,
	3435,
	'get_entries',
	'',
	298,
	1,
	'return 1;',
	1,
	'',
	3463);
INSERT INTO O_TPARM
	VALUES (3470,
	3469,
	'comp_num',
	298,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3471,
	3435,
	'newInterface',
	'',
	19,
	1,
	'create object instance interface of C_I;
relate interface to self across R4303;
interface.initialize();',
	1,
	'',
	3472);
INSERT INTO O_TFR
	VALUES (3473,
	3435,
	'newInterfacePackage',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one idiid related by self->IP_IPINIP[R4300];
if(empty idiid)
  create object instance idiid of IP_IPINIP;
  relate self to idiid across R4300;
end if;
create object instance interfaceDiagram of IP_IP;
create object instance sp of EP_SPKG;
relate interfaceDiagram to sp across R1402;
relate idiid to interfaceDiagram across R4301;
interfaceDiagram.initialize();
select one system related by self->S_SYS[R4304];
if(empty system)
  select one system related by self->S_SYS[R4302];
end if;
if(not_empty system)
  relate interfaceDiagram to system across R4304;
end if;',
	1,
	'',
	3471);
INSERT INTO O_TFR
	VALUES (3459,
	3435,
	'dispose',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select one system related by self->S_SYS[R4302];
if(not_empty system)
  unrelate self from system across R4302;
end if;

// unrelate from parent
select one did related by self->IP_IPINIP[R4301];
if(not_empty did)
  unrelate self from did across R4301;
  // are there any other children?
  select any other_child related by did->IP_IP[R4301];
  if empty other_child
    // no, dispose the interface package in interface package placeholder
    select one parent related by did->IP_IP[R4300];
    if not_empty parent
      unrelate did from parent across R4300;
    end if;
    delete object instance did;
  end if;
end if;

// delete child Interface diagrams
select one did related by self->IP_IPINIP[R4300];
select many diagrams related by did->IP_IP[R4301];
for each diagram in diagrams
  diagram.dispose();
end for;
// last child will delete the did instance

select many interfaces related by self->C_I[R4303];
for each i in interfaces
  unrelate i from self across R4303;
  i.dispose();
end for;
select one system related by self->S_SYS[R4304];
if(not_empty system)
  unrelate self from system across R4304;
end if;
select one component related by self->C_C[R4206];
if(not_empty component)
  unrelate self from component across R4206;
end if;
select one componentPackage related by self->CP_CP[R4607];
if(not_empty componentPackage)
  unrelate self from componentPackage across R4607;
end if;
select one specPkg related by self->EP_SPKG[R1402];
delete object instance self;
// we must dispose the supertype after the
// subtype to allow access to the id through
// the supertype
if(not_empty specPkg)
  unrelate self from specPkg across R1402;
  specPkg.dispose();
end if;',
	1,
	'',
	3474);
INSERT INTO O_TFR
	VALUES (3472,
	3435,
	'isChildPackageOf',
	'',
	316,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
/*
 * Check the child tree to see if the given package exists
 *
 */
select many childPkgs related by self->IP_IPINIP[R4300]->IP_IP[R4301];
for each childPkg in childPkgs
  if(childPkg.Package_ID == param.Id)
    return true;
  else
    result = childPkg.isChildPackageOf(Id:param.Id);
    if(result)
      return result;
    end if;
  end if;
end for;
return false;',
	1,
	'',
	3454);
INSERT INTO O_TPARM
	VALUES (3475,
	3472,
	'Id',
	296,
	0,
	'',
	0,
	'');
INSERT INTO O_TFR
	VALUES (3476,
	3435,
	'associatePackageWithSystem',
	'',
	19,
	1,
	'// PE_PE navigation is present (isInGenericPackage).  Do not remove this comment.
select any system from instances of S_SYS where (selected.Sys_ID == param.sysID);
if (not_empty system)
  shouldRelate = true;
  select one existSystem related by self->S_SYS[R4304];
  if(not_empty existSystem)
    if(system == existSystem)
      shouldRelate = false;
    end if;

  ',
