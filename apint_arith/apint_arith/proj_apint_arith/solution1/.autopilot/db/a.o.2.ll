; ModuleID = '/home/vkchcp0030/Documents/learn_hls/apint_arith/apint_arith/proj_apint_arith/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@apint_arith.str = internal unnamed_addr constant [12 x i8] c"apint_arith\00" ; [#uses=1 type=[12 x i8]*]

; [#uses=8]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=0]
define void @apint_arith(i6 signext %inA, i12 signext %inB, i22 signext %inC, i33 %inD, i18* %out1, i13* %out2, i22* %out3, i6* %out4) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i6 %inA) nounwind, !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(i12 %inB) nounwind, !map !58
  call void (...)* @_ssdm_op_SpecBitsMap(i22 %inC) nounwind, !map !62
  call void (...)* @_ssdm_op_SpecBitsMap(i33 %inD) nounwind, !map !66
  call void (...)* @_ssdm_op_SpecBitsMap(i18* %out1) nounwind, !map !70
  call void (...)* @_ssdm_op_SpecBitsMap(i13* %out2) nounwind, !map !76
  call void (...)* @_ssdm_op_SpecBitsMap(i22* %out3) nounwind, !map !80
  call void (...)* @_ssdm_op_SpecBitsMap(i6* %out4) nounwind, !map !84
  call void (...)* @_ssdm_op_SpecTopModule([12 x i8]* @apint_arith.str) nounwind
  call void @llvm.dbg.value(metadata !{i6 %inA}, i64 0, metadata !88), !dbg !89 ; [debug line = 94:25] [debug variable = inA]
  call void @llvm.dbg.value(metadata !{i12 %inB}, i64 0, metadata !90), !dbg !91 ; [debug line = 94:37] [debug variable = inB]
  call void @llvm.dbg.value(metadata !{i22 %inC}, i64 0, metadata !92), !dbg !93 ; [debug line = 94:49] [debug variable = inC]
  call void @llvm.dbg.value(metadata !{i33 %inD}, i64 0, metadata !94), !dbg !95 ; [debug line = 94:61] [debug variable = inD]
  call void @llvm.dbg.value(metadata !{i18* %out1}, i64 0, metadata !96), !dbg !97 ; [debug line = 95:21] [debug variable = out1]
  call void @llvm.dbg.value(metadata !{i13* %out2}, i64 0, metadata !98), !dbg !99 ; [debug line = 95:36] [debug variable = out2]
  call void @llvm.dbg.value(metadata !{i22* %out3}, i64 0, metadata !100), !dbg !101 ; [debug line = 95:51] [debug variable = out3]
  call void @llvm.dbg.value(metadata !{i6* %out4}, i64 0, metadata !102), !dbg !103 ; [debug line = 95:66] [debug variable = out4]
  %tmp = sext i6 %inA to i18, !dbg !104           ; [#uses=1 type=i18] [debug line = 99:2]
  %tmp.1 = sext i12 %inB to i18, !dbg !104        ; [#uses=1 type=i18] [debug line = 99:2]
  %tmp.2 = mul i18 %tmp, %tmp.1, !dbg !104        ; [#uses=1 type=i18] [debug line = 99:2]
  store i18 %tmp.2, i18* %out1, align 4, !dbg !104 ; [debug line = 99:2]
  %tmp.3 = sext i12 %inB to i13, !dbg !106        ; [#uses=1 type=i13] [debug line = 100:2]
  %tmp.4 = sext i6 %inA to i13, !dbg !106         ; [#uses=1 type=i13] [debug line = 100:2]
  %tmp.5 = add i13 %tmp.4, %tmp.3, !dbg !106      ; [#uses=1 type=i13] [debug line = 100:2]
  store i13 %tmp.5, i13* %out2, align 2, !dbg !106 ; [debug line = 100:2]
  %tmp.7.tr.cast = sext i6 %inA to i22, !dbg !107 ; [#uses=1 type=i22] [debug line = 101:2]
  %tmp.6 = sdiv i22 %inC, %tmp.7.tr.cast, !dbg !107 ; [#uses=1 type=i22] [debug line = 101:2]
  store i22 %tmp.6, i22* %out3, align 4, !dbg !107 ; [debug line = 101:2]
  %tmp. = sext i6 %inA to i33, !dbg !108          ; [#uses=1 type=i33] [debug line = 102:2]
  %tmp.7 = srem i33 %inD, %tmp., !dbg !108        ; [#uses=1 type=i33] [debug line = 102:2]
  %tmp.8 = trunc i33 %tmp.7 to i6, !dbg !108      ; [#uses=1 type=i6] [debug line = 102:2]
  store i6 %tmp.8, i6* %out4, align 1, !dbg !108  ; [debug line = 102:2]
  ret void, !dbg !109                             ; [debug line = 104:1]
}

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=8]
declare void @_ssdm_op_SpecBitsMap(...)

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!45}
!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{i32 786449, i32 0, i32 1, metadata !"/home/vkchcp0030/Documents/learn_hls/apint_arith/apint_arith/proj_apint_arith/solution1/.autopilot/db/apint_arith.pragma.2.c", metadata !"/home/vkchcp0030/Documents/learn_hls/apint_arith/apint_arith", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !1, metadata !3, metadata !35} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 786478, i32 0, metadata !6, metadata !"apint_arith", metadata !"apint_arith", metadata !"", metadata !6, i32 94, metadata !7, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i6, i12, i22, i33, i18*, i13*, i22*, i6*)* @apint_arith, null, null, metadata !33, i32 96} ; [ DW_TAG_subprogram ]
!6 = metadata !{i32 786473, metadata !"apint_arith.c", metadata !"/home/vkchcp0030/Documents/learn_hls/apint_arith/apint_arith", null} ; [ DW_TAG_file_type ]
!7 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !8, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!8 = metadata !{null, metadata !9, metadata !12, metadata !15, metadata !18, metadata !21, metadata !25, metadata !29, metadata !31}
!9 = metadata !{i32 786454, null, metadata !"dinA_t", metadata !6, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!10 = metadata !{i32 786454, null, metadata !"int6", metadata !6, i32 8, i64 0, i64 0, i64 0, i32 0, metadata !11} ; [ DW_TAG_typedef ]
!11 = metadata !{i32 786468, null, metadata !"int6", null, i32 0, i64 6, i64 8, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!12 = metadata !{i32 786454, null, metadata !"dinB_t", metadata !6, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_typedef ]
!13 = metadata !{i32 786454, null, metadata !"int12", metadata !6, i32 14, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_typedef ]
!14 = metadata !{i32 786468, null, metadata !"int12", null, i32 0, i64 12, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786454, null, metadata !"dinC_t", metadata !6, i32 112, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ]
!16 = metadata !{i32 786454, null, metadata !"int22", metadata !6, i32 24, i64 0, i64 0, i64 0, i32 0, metadata !17} ; [ DW_TAG_typedef ]
!17 = metadata !{i32 786468, null, metadata !"int22", null, i32 0, i64 22, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!18 = metadata !{i32 786454, null, metadata !"dinD_t", metadata !6, i32 113, i64 0, i64 0, i64 0, i32 0, metadata !19} ; [ DW_TAG_typedef ]
!19 = metadata !{i32 786454, null, metadata !"int33", metadata !6, i32 35, i64 0, i64 0, i64 0, i32 0, metadata !20} ; [ DW_TAG_typedef ]
!20 = metadata !{i32 786468, null, metadata !"int33", null, i32 0, i64 33, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!21 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !22} ; [ DW_TAG_pointer_type ]
!22 = metadata !{i32 786454, null, metadata !"dout1_t", metadata !6, i32 115, i64 0, i64 0, i64 0, i32 0, metadata !23} ; [ DW_TAG_typedef ]
!23 = metadata !{i32 786454, null, metadata !"int18", metadata !6, i32 20, i64 0, i64 0, i64 0, i32 0, metadata !24} ; [ DW_TAG_typedef ]
!24 = metadata !{i32 786468, null, metadata !"int18", null, i32 0, i64 18, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!25 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !26} ; [ DW_TAG_pointer_type ]
!26 = metadata !{i32 786454, null, metadata !"dout2_t", metadata !6, i32 116, i64 0, i64 0, i64 0, i32 0, metadata !27} ; [ DW_TAG_typedef ]
!27 = metadata !{i32 786454, null, metadata !"uint13", metadata !6, i32 15, i64 0, i64 0, i64 0, i32 0, metadata !28} ; [ DW_TAG_typedef ]
!28 = metadata !{i32 786468, null, metadata !"uint13", null, i32 0, i64 13, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!29 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !30} ; [ DW_TAG_pointer_type ]
!30 = metadata !{i32 786454, null, metadata !"dout3_t", metadata !6, i32 117, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_typedef ]
!31 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ]
!32 = metadata !{i32 786454, null, metadata !"dout4_t", metadata !6, i32 118, i64 0, i64 0, i64 0, i32 0, metadata !10} ; [ DW_TAG_typedef ]
!33 = metadata !{metadata !34}
!34 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !37, metadata !40, metadata !41, metadata !42}
!37 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !38, i32 315, metadata !39, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!38 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/vkchcp0030/Documents/learn_hls/apint_arith/apint_arith", null} ; [ DW_TAG_file_type ]
!39 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !38, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!40 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !38, i32 316, metadata !39, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!41 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !38, i32 317, metadata !39, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!42 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !43, i32 26, metadata !44, i32 0, i32 1, null} ; [ DW_TAG_variable ]
!43 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/vkchcp0030/Documents/learn_hls/apint_arith/apint_arith", null} ; [ DW_TAG_file_type ]
!44 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!45 = metadata !{void (i6, i12, i22, i33, i18*, i13*, i22*, i6*)* @apint_arith, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51}
!46 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1}
!47 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"dinA_t", metadata !"dinB_t", metadata !"dinC_t", metadata !"dinD_t", metadata !"dout1_t*", metadata !"dout2_t*", metadata !"dout3_t*", metadata !"dout4_t*"}
!49 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"inA", metadata !"inB", metadata !"inC", metadata !"inD", metadata !"out1", metadata !"out2", metadata !"out3", metadata !"out4"}
!51 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 5, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"inA", metadata !56, metadata !"int6", i32 0, i32 5}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 0, i32 0}
!58 = metadata !{metadata !59}
!59 = metadata !{i32 0, i32 11, metadata !60}
!60 = metadata !{metadata !61}
!61 = metadata !{metadata !"inB", metadata !56, metadata !"int12", i32 0, i32 11}
!62 = metadata !{metadata !63}
!63 = metadata !{i32 0, i32 21, metadata !64}
!64 = metadata !{metadata !65}
!65 = metadata !{metadata !"inC", metadata !56, metadata !"int22", i32 0, i32 21}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 0, i32 32, metadata !68}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !"inD", metadata !56, metadata !"int33", i32 0, i32 32}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 0, i32 17, metadata !72}
!72 = metadata !{metadata !73}
!73 = metadata !{metadata !"out1", metadata !74, metadata !"int18", i32 0, i32 17}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 0, i32 0, i32 1}
!76 = metadata !{metadata !77}
!77 = metadata !{i32 0, i32 12, metadata !78}
!78 = metadata !{metadata !79}
!79 = metadata !{metadata !"out2", metadata !74, metadata !"uint13", i32 0, i32 12}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 21, metadata !82}
!82 = metadata !{metadata !83}
!83 = metadata !{metadata !"out3", metadata !74, metadata !"int22", i32 0, i32 21}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 0, i32 5, metadata !86}
!86 = metadata !{metadata !87}
!87 = metadata !{metadata !"out4", metadata !74, metadata !"int6", i32 0, i32 5}
!88 = metadata !{i32 786689, metadata !5, metadata !"inA", metadata !6, i32 16777310, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!89 = metadata !{i32 94, i32 25, metadata !5, null}
!90 = metadata !{i32 786689, metadata !5, metadata !"inB", metadata !6, i32 33554526, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!91 = metadata !{i32 94, i32 37, metadata !5, null}
!92 = metadata !{i32 786689, metadata !5, metadata !"inC", metadata !6, i32 50331742, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!93 = metadata !{i32 94, i32 49, metadata !5, null}
!94 = metadata !{i32 786689, metadata !5, metadata !"inD", metadata !6, i32 67108958, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!95 = metadata !{i32 94, i32 61, metadata !5, null}
!96 = metadata !{i32 786689, metadata !5, metadata !"out1", metadata !6, i32 83886175, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!97 = metadata !{i32 95, i32 21, metadata !5, null}
!98 = metadata !{i32 786689, metadata !5, metadata !"out2", metadata !6, i32 100663391, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!99 = metadata !{i32 95, i32 36, metadata !5, null}
!100 = metadata !{i32 786689, metadata !5, metadata !"out3", metadata !6, i32 117440607, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!101 = metadata !{i32 95, i32 51, metadata !5, null}
!102 = metadata !{i32 786689, metadata !5, metadata !"out4", metadata !6, i32 134217823, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!103 = metadata !{i32 95, i32 66, metadata !5, null}
!104 = metadata !{i32 99, i32 2, metadata !105, null}
!105 = metadata !{i32 786443, metadata !5, i32 96, i32 5, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!106 = metadata !{i32 100, i32 2, metadata !105, null}
!107 = metadata !{i32 101, i32 2, metadata !105, null}
!108 = metadata !{i32 102, i32 2, metadata !105, null}
!109 = metadata !{i32 104, i32 1, metadata !105, null}
