; ModuleID = '/home/vkchcp0030/Documents/learn_hls/apint_arith/apint_arith/proj_apint_arith/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@apint_arith_str = internal unnamed_addr constant [12 x i8] c"apint_arith\00" ; [#uses=1 type=[12 x i8]*]

; [#uses=12]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @apint_arith(i6 signext %inA, i12 signext %inB, i22 signext %inC, i33 %inD, i18* %out1, i13* %out2, i22* %out3, i6* %out4) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i6 %inA) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i12 %inB) nounwind, !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i22 %inC) nounwind, !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i33 %inD) nounwind, !map !21
  call void (...)* @_ssdm_op_SpecBitsMap(i18* %out1) nounwind, !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i13* %out2) nounwind, !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i22* %out3) nounwind, !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %out4) nounwind, !map !39
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @apint_arith_str) nounwind
  %inD_read = call i33 @_ssdm_op_Read.ap_auto.i33(i33 %inD) nounwind ; [#uses=1 type=i33]
  call void @llvm.dbg.value(metadata !{i33 %inD_read}, i64 0, metadata !43), !dbg !74 ; [debug line = 94:61] [debug variable = inD]
  %inC_read = call i22 @_ssdm_op_Read.ap_auto.i22(i22 %inC) nounwind ; [#uses=1 type=i22]
  call void @llvm.dbg.value(metadata !{i22 %inC_read}, i64 0, metadata !75), !dbg !76 ; [debug line = 94:49] [debug variable = inC]
  %inB_read = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %inB) nounwind ; [#uses=2 type=i12]
  call void @llvm.dbg.value(metadata !{i12 %inB_read}, i64 0, metadata !77), !dbg !78 ; [debug line = 94:37] [debug variable = inB]
  %inA_read = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %inA) nounwind ; [#uses=4 type=i6]
  call void @llvm.dbg.value(metadata !{i6 %inA_read}, i64 0, metadata !79), !dbg !80 ; [debug line = 94:25] [debug variable = inA]
  call void @llvm.dbg.value(metadata !{i6 %inA}, i64 0, metadata !79), !dbg !80 ; [debug line = 94:25] [debug variable = inA]
  call void @llvm.dbg.value(metadata !{i12 %inB}, i64 0, metadata !77), !dbg !78 ; [debug line = 94:37] [debug variable = inB]
  call void @llvm.dbg.value(metadata !{i22 %inC}, i64 0, metadata !75), !dbg !76 ; [debug line = 94:49] [debug variable = inC]
  call void @llvm.dbg.value(metadata !{i33 %inD}, i64 0, metadata !43), !dbg !74 ; [debug line = 94:61] [debug variable = inD]
  call void @llvm.dbg.value(metadata !{i18* %out1}, i64 0, metadata !81), !dbg !82 ; [debug line = 95:21] [debug variable = out1]
  call void @llvm.dbg.value(metadata !{i13* %out2}, i64 0, metadata !83), !dbg !84 ; [debug line = 95:36] [debug variable = out2]
  call void @llvm.dbg.value(metadata !{i22* %out3}, i64 0, metadata !85), !dbg !86 ; [debug line = 95:51] [debug variable = out3]
  call void @llvm.dbg.value(metadata !{i6* %out4}, i64 0, metadata !87), !dbg !88 ; [debug line = 95:66] [debug variable = out4]
  %tmp = sext i6 %inA_read to i18, !dbg !89       ; [#uses=1 type=i18] [debug line = 99:2]
  %tmp_1 = sext i12 %inB_read to i18, !dbg !89    ; [#uses=1 type=i18] [debug line = 99:2]
  %tmp_2 = mul i18 %tmp_1, %tmp, !dbg !89         ; [#uses=1 type=i18] [debug line = 99:2]
  call void @_ssdm_op_Write.ap_auto.i18P(i18* %out1, i18 %tmp_2) nounwind, !dbg !89 ; [debug line = 99:2]
  %tmp_3 = sext i12 %inB_read to i13, !dbg !91    ; [#uses=1 type=i13] [debug line = 100:2]
  %tmp_4 = sext i6 %inA_read to i13, !dbg !91     ; [#uses=1 type=i13] [debug line = 100:2]
  %tmp_5 = add i13 %tmp_3, %tmp_4, !dbg !91       ; [#uses=1 type=i13] [debug line = 100:2]
  call void @_ssdm_op_Write.ap_auto.i13P(i13* %out2, i13 %tmp_5) nounwind, !dbg !91 ; [debug line = 100:2]
  %tmp_7_tr_cast = sext i6 %inA_read to i22, !dbg !92 ; [#uses=1 type=i22] [debug line = 101:2]
  %tmp_6 = sdiv i22 %inC_read, %tmp_7_tr_cast, !dbg !92 ; [#uses=1 type=i22] [debug line = 101:2]
  call void @_ssdm_op_Write.ap_auto.i22P(i22* %out3, i22 %tmp_6) nounwind, !dbg !92 ; [debug line = 101:2]
  %tmp_s = sext i6 %inA_read to i33, !dbg !93     ; [#uses=1 type=i33] [debug line = 102:2]
  %tmp_7 = srem i33 %inD_read, %tmp_s, !dbg !93   ; [#uses=1 type=i33] [debug line = 102:2]
  %tmp_8 = trunc i33 %tmp_7 to i6, !dbg !93       ; [#uses=1 type=i6] [debug line = 102:2]
  call void @_ssdm_op_Write.ap_auto.i6P(i6* %out4, i6 %tmp_8) nounwind, !dbg !93 ; [debug line = 102:2]
  ret void, !dbg !94                              ; [debug line = 104:1]
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_auto.i6P(i6*, i6) {
entry:
  store i6 %1, i6* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_auto.i22P(i22*, i22) {
entry:
  store i22 %1, i22* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_auto.i18P(i18*, i18) {
entry:
  store i18 %1, i18* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_auto.i13P(i13*, i13) {
entry:
  store i13 %1, i13* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=8]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i6 @_ssdm_op_Read.ap_auto.i6(i6) {
entry:
  ret i6 %0
}

; [#uses=1]
define weak i33 @_ssdm_op_Read.ap_auto.i33(i33) {
entry:
  ret i33 %0
}

; [#uses=1]
define weak i22 @_ssdm_op_Read.ap_auto.i22(i22) {
entry:
  ret i22 %0
}

; [#uses=1]
define weak i12 @_ssdm_op_Read.ap_auto.i12(i12) {
entry:
  ret i12 %0
}

; [#uses=0]
declare i6 @_ssdm_op_PartSelect.i6.i33.i32.i32(i33, i32, i32) nounwind readnone

!opencl.kernels = !{!0}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{void (i6, i12, i22, i33, i18*, i13*, i22*, i6*)* @apint_arith, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"dinA_t", metadata !"dinB_t", metadata !"dinC_t", metadata !"dinD_t", metadata !"dout1_t*", metadata !"dout2_t*", metadata !"dout3_t*", metadata !"dout4_t*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"inA", metadata !"inB", metadata !"inC", metadata !"inD", metadata !"out1", metadata !"out2", metadata !"out3", metadata !"out4"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 5, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"inA", metadata !11, metadata !"int6", i32 0, i32 5}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 11, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"inB", metadata !11, metadata !"int12", i32 0, i32 11}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 21, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"inC", metadata !11, metadata !"int22", i32 0, i32 21}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 32, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"inD", metadata !11, metadata !"int33", i32 0, i32 32}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 17, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"out1", metadata !29, metadata !"int18", i32 0, i32 17}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 0, i32 1}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 12, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"out2", metadata !29, metadata !"uint13", i32 0, i32 12}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 21, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"out3", metadata !29, metadata !"int22", i32 0, i32 21}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 5, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"out4", metadata !29, metadata !"int6", i32 0, i32 5}
!43 = metadata !{i32 786689, metadata !44, metadata !"inD", metadata !45, i32 67108958, metadata !57, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!44 = metadata !{i32 786478, i32 0, metadata !45, metadata !"apint_arith", metadata !"apint_arith", metadata !"", metadata !45, i32 94, metadata !46, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i6, i12, i22, i33, i18*, i13*, i22*, i6*)* @apint_arith, null, null, metadata !72, i32 96} ; [ DW_TAG_subprogram ]
!45 = metadata !{i32 786473, metadata !"apint_arith.c", metadata !"/home/vkchcp0030/Documents/learn_hls/apint_arith/apint_arith", null} ; [ DW_TAG_file_type ]
!46 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !47, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!47 = metadata !{null, metadata !48, metadata !51, metadata !54, metadata !57, metadata !60, metadata !64, metadata !68, metadata !70}
!48 = metadata !{i32 786454, null, metadata !"dinA_t", metadata !45, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!49 = metadata !{i32 786454, null, metadata !"int6", metadata !45, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_typedef ]
!50 = metadata !{i32 786468, null, metadata !"int6", null, i32 0, i64 6, i64 8, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!51 = metadata !{i32 786454, null, metadata !"dinB_t", metadata !45, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !52} ; [ DW_TAG_typedef ]
!52 = metadata !{i32 786454, null, metadata !"int12", metadata !45, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_typedef ]
!53 = metadata !{i32 786468, null, metadata !"int12", null, i32 0, i64 12, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!54 = metadata !{i32 786454, null, metadata !"dinC_t", metadata !45, i32 112, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ]
!55 = metadata !{i32 786454, null, metadata !"int22", metadata !45, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !56} ; [ DW_TAG_typedef ]
!56 = metadata !{i32 786468, null, metadata !"int22", null, i32 0, i64 22, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!57 = metadata !{i32 786454, null, metadata !"dinD_t", metadata !45, i32 113, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_typedef ]
!58 = metadata !{i32 786454, null, metadata !"int33", metadata !45, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_typedef ]
!59 = metadata !{i32 786468, null, metadata !"int33", null, i32 0, i64 33, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!60 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !61} ; [ DW_TAG_pointer_type ]
!61 = metadata !{i32 786454, null, metadata !"dout1_t", metadata !45, i32 115, i64 0, i64 0, i64 0, i32 0, metadata !62} ; [ DW_TAG_typedef ]
!62 = metadata !{i32 786454, null, metadata !"int18", metadata !45, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_typedef ]
!63 = metadata !{i32 786468, null, metadata !"int18", null, i32 0, i64 18, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!64 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ]
!65 = metadata !{i32 786454, null, metadata !"dout2_t", metadata !45, i32 116, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_typedef ]
!66 = metadata !{i32 786454, null, metadata !"uint13", metadata !45, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_typedef ]
!67 = metadata !{i32 786468, null, metadata !"uint13", null, i32 0, i64 13, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!68 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ]
!69 = metadata !{i32 786454, null, metadata !"dout3_t", metadata !45, i32 117, i64 0, i64 0, i64 0, i32 0, metadata !55} ; [ DW_TAG_typedef ]
!70 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !71} ; [ DW_TAG_pointer_type ]
!71 = metadata !{i32 786454, null, metadata !"dout4_t", metadata !45, i32 118, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_typedef ]
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!74 = metadata !{i32 94, i32 61, metadata !44, null}
!75 = metadata !{i32 786689, metadata !44, metadata !"inC", metadata !45, i32 50331742, metadata !54, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!76 = metadata !{i32 94, i32 49, metadata !44, null}
!77 = metadata !{i32 786689, metadata !44, metadata !"inB", metadata !45, i32 33554526, metadata !51, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!78 = metadata !{i32 94, i32 37, metadata !44, null}
!79 = metadata !{i32 786689, metadata !44, metadata !"inA", metadata !45, i32 16777310, metadata !48, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!80 = metadata !{i32 94, i32 25, metadata !44, null}
!81 = metadata !{i32 786689, metadata !44, metadata !"out1", metadata !45, i32 83886175, metadata !60, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!82 = metadata !{i32 95, i32 21, metadata !44, null}
!83 = metadata !{i32 786689, metadata !44, metadata !"out2", metadata !45, i32 100663391, metadata !64, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 95, i32 36, metadata !44, null}
!85 = metadata !{i32 786689, metadata !44, metadata !"out3", metadata !45, i32 117440607, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!86 = metadata !{i32 95, i32 51, metadata !44, null}
!87 = metadata !{i32 786689, metadata !44, metadata !"out4", metadata !45, i32 134217823, metadata !70, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!88 = metadata !{i32 95, i32 66, metadata !44, null}
!89 = metadata !{i32 99, i32 2, metadata !90, null}
!90 = metadata !{i32 786443, metadata !44, i32 96, i32 5, metadata !45, i32 0} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 100, i32 2, metadata !90, null}
!92 = metadata !{i32 101, i32 2, metadata !90, null}
!93 = metadata !{i32 102, i32 2, metadata !90, null}
!94 = metadata !{i32 104, i32 1, metadata !90, null}
