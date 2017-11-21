; ModuleID = '/home/vkchcp0030/Documents/learn_hls/apint_arith/apint_arith/proj_apint_arith/solution1/.autopilot/db/a.o.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE_plus = type opaque

@_IO_2_1_stdin_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stdout_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@_IO_2_1_stderr_ = external global %struct._IO_FILE_plus ; [#uses=0 type=%struct._IO_FILE_plus*]
@sys_nerr = external global i32                   ; [#uses=0 type=i32*]

; [#uses=0]
define void @apint_arith(i6 signext %inA, i12 signext %inB, i22 signext %inC, i33 %inD, i18* %out1, i13* %out2, i22* %out3, i6* %out4) nounwind uwtable {
  %1 = alloca i6, align 1                         ; [#uses=5 type=i6*]
  %2 = alloca i12, align 2                        ; [#uses=3 type=i12*]
  %3 = alloca i22, align 4                        ; [#uses=2 type=i22*]
  %4 = alloca i33, align 8                        ; [#uses=2 type=i33*]
  %5 = alloca i18*, align 8                       ; [#uses=2 type=i18**]
  %6 = alloca i13*, align 8                       ; [#uses=2 type=i13**]
  %7 = alloca i22*, align 8                       ; [#uses=2 type=i22**]
  %8 = alloca i6*, align 8                        ; [#uses=2 type=i6**]
  store i6 %inA, i6* %1, align 1
  call void @llvm.dbg.declare(metadata !{i6* %1}, metadata !52), !dbg !53 ; [debug line = 94:25] [debug variable = inA]
  store i12 %inB, i12* %2, align 2
  call void @llvm.dbg.declare(metadata !{i12* %2}, metadata !54), !dbg !55 ; [debug line = 94:37] [debug variable = inB]
  store i22 %inC, i22* %3, align 4
  call void @llvm.dbg.declare(metadata !{i22* %3}, metadata !56), !dbg !57 ; [debug line = 94:49] [debug variable = inC]
  store i33 %inD, i33* %4, align 8
  call void @llvm.dbg.declare(metadata !{i33* %4}, metadata !58), !dbg !59 ; [debug line = 94:61] [debug variable = inD]
  store i18* %out1, i18** %5, align 8
  call void @llvm.dbg.declare(metadata !{i18** %5}, metadata !60), !dbg !61 ; [debug line = 95:21] [debug variable = out1]
  store i13* %out2, i13** %6, align 8
  call void @llvm.dbg.declare(metadata !{i13** %6}, metadata !62), !dbg !63 ; [debug line = 95:36] [debug variable = out2]
  store i22* %out3, i22** %7, align 8
  call void @llvm.dbg.declare(metadata !{i22** %7}, metadata !64), !dbg !65 ; [debug line = 95:51] [debug variable = out3]
  store i6* %out4, i6** %8, align 8
  call void @llvm.dbg.declare(metadata !{i6** %8}, metadata !66), !dbg !67 ; [debug line = 95:66] [debug variable = out4]
  %9 = load i6* %1, align 1, !dbg !68             ; [#uses=1 type=i6] [debug line = 99:2]
  %10 = sext i6 %9 to i32, !dbg !68               ; [#uses=1 type=i32] [debug line = 99:2]
  %11 = load i12* %2, align 2, !dbg !68           ; [#uses=1 type=i12] [debug line = 99:2]
  %12 = sext i12 %11 to i32, !dbg !68             ; [#uses=1 type=i32] [debug line = 99:2]
  %13 = mul nsw i32 %10, %12, !dbg !68            ; [#uses=1 type=i32] [debug line = 99:2]
  %14 = trunc i32 %13 to i18, !dbg !68            ; [#uses=1 type=i18] [debug line = 99:2]
  %15 = load i18** %5, align 8, !dbg !68          ; [#uses=1 type=i18*] [debug line = 99:2]
  store i18 %14, i18* %15, align 4, !dbg !68      ; [debug line = 99:2]
  %16 = load i12* %2, align 2, !dbg !70           ; [#uses=1 type=i12] [debug line = 100:2]
  %17 = sext i12 %16 to i32, !dbg !70             ; [#uses=1 type=i32] [debug line = 100:2]
  %18 = load i6* %1, align 1, !dbg !70            ; [#uses=1 type=i6] [debug line = 100:2]
  %19 = sext i6 %18 to i32, !dbg !70              ; [#uses=1 type=i32] [debug line = 100:2]
  %20 = add nsw i32 %17, %19, !dbg !70            ; [#uses=1 type=i32] [debug line = 100:2]
  %21 = trunc i32 %20 to i13, !dbg !70            ; [#uses=1 type=i13] [debug line = 100:2]
  %22 = load i13** %6, align 8, !dbg !70          ; [#uses=1 type=i13*] [debug line = 100:2]
  store i13 %21, i13* %22, align 2, !dbg !70      ; [debug line = 100:2]
  %23 = load i22* %3, align 4, !dbg !71           ; [#uses=1 type=i22] [debug line = 101:2]
  %24 = sext i22 %23 to i32, !dbg !71             ; [#uses=1 type=i32] [debug line = 101:2]
  %25 = load i6* %1, align 1, !dbg !71            ; [#uses=1 type=i6] [debug line = 101:2]
  %26 = sext i6 %25 to i32, !dbg !71              ; [#uses=1 type=i32] [debug line = 101:2]
  %27 = sdiv i32 %24, %26, !dbg !71               ; [#uses=1 type=i32] [debug line = 101:2]
  %28 = trunc i32 %27 to i22, !dbg !71            ; [#uses=1 type=i22] [debug line = 101:2]
  %29 = load i22** %7, align 8, !dbg !71          ; [#uses=1 type=i22*] [debug line = 101:2]
  store i22 %28, i22* %29, align 4, !dbg !71      ; [debug line = 101:2]
  %30 = load i33* %4, align 8, !dbg !72           ; [#uses=1 type=i33] [debug line = 102:2]
  %31 = load i6* %1, align 1, !dbg !72            ; [#uses=1 type=i6] [debug line = 102:2]
  %32 = sext i6 %31 to i33, !dbg !72              ; [#uses=1 type=i33] [debug line = 102:2]
  %33 = srem i33 %30, %32, !dbg !72               ; [#uses=1 type=i33] [debug line = 102:2]
  %34 = trunc i33 %33 to i6, !dbg !72             ; [#uses=1 type=i6] [debug line = 102:2]
  %35 = load i6** %8, align 8, !dbg !72           ; [#uses=1 type=i6*] [debug line = 102:2]
  store i6 %34, i6* %35, align 1, !dbg !72        ; [debug line = 102:2]
  ret void, !dbg !73                              ; [debug line = 104:1]
}

; [#uses=8]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

!llvm.dbg.cu = !{!0}
!opencl.kernels = !{!45}
!hls.encrypted.func = !{}

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
!37 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdin_", metadata !"_IO_2_1_stdin_", metadata !"", metadata !38, i32 315, metadata !39, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stdin_} ; [ DW_TAG_variable ]
!38 = metadata !{i32 786473, metadata !"/usr/include/libio.h", metadata !"/home/vkchcp0030/Documents/learn_hls/apint_arith/apint_arith", null} ; [ DW_TAG_file_type ]
!39 = metadata !{i32 786451, null, metadata !"_IO_FILE_plus", metadata !38, i32 313, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_structure_type ]
!40 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stdout_", metadata !"_IO_2_1_stdout_", metadata !"", metadata !38, i32 316, metadata !39, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stdout_} ; [ DW_TAG_variable ]
!41 = metadata !{i32 786484, i32 0, null, metadata !"_IO_2_1_stderr_", metadata !"_IO_2_1_stderr_", metadata !"", metadata !38, i32 317, metadata !39, i32 0, i32 1, %struct._IO_FILE_plus* @_IO_2_1_stderr_} ; [ DW_TAG_variable ]
!42 = metadata !{i32 786484, i32 0, null, metadata !"sys_nerr", metadata !"sys_nerr", metadata !"", metadata !43, i32 26, metadata !44, i32 0, i32 1, i32* @sys_nerr} ; [ DW_TAG_variable ]
!43 = metadata !{i32 786473, metadata !"/usr/include/x86_64-linux-gnu/bits/sys_errlist.h", metadata !"/home/vkchcp0030/Documents/learn_hls/apint_arith/apint_arith", null} ; [ DW_TAG_file_type ]
!44 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!45 = metadata !{void (i6, i12, i22, i33, i18*, i13*, i22*, i6*)* @apint_arith, metadata !46, metadata !47, metadata !48, metadata !49, metadata !50, metadata !51}
!46 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1}
!47 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!48 = metadata !{metadata !"kernel_arg_type", metadata !"dinA_t", metadata !"dinB_t", metadata !"dinC_t", metadata !"dinD_t", metadata !"dout1_t*", metadata !"dout2_t*", metadata !"dout3_t*", metadata !"dout4_t*"}
!49 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!50 = metadata !{metadata !"kernel_arg_name", metadata !"inA", metadata !"inB", metadata !"inC", metadata !"inD", metadata !"out1", metadata !"out2", metadata !"out3", metadata !"out4"}
!51 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!52 = metadata !{i32 786689, metadata !5, metadata !"inA", metadata !6, i32 16777310, metadata !9, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!53 = metadata !{i32 94, i32 25, metadata !5, null}
!54 = metadata !{i32 786689, metadata !5, metadata !"inB", metadata !6, i32 33554526, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!55 = metadata !{i32 94, i32 37, metadata !5, null}
!56 = metadata !{i32 786689, metadata !5, metadata !"inC", metadata !6, i32 50331742, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!57 = metadata !{i32 94, i32 49, metadata !5, null}
!58 = metadata !{i32 786689, metadata !5, metadata !"inD", metadata !6, i32 67108958, metadata !18, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!59 = metadata !{i32 94, i32 61, metadata !5, null}
!60 = metadata !{i32 786689, metadata !5, metadata !"out1", metadata !6, i32 83886175, metadata !21, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!61 = metadata !{i32 95, i32 21, metadata !5, null}
!62 = metadata !{i32 786689, metadata !5, metadata !"out2", metadata !6, i32 100663391, metadata !25, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!63 = metadata !{i32 95, i32 36, metadata !5, null}
!64 = metadata !{i32 786689, metadata !5, metadata !"out3", metadata !6, i32 117440607, metadata !29, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!65 = metadata !{i32 95, i32 51, metadata !5, null}
!66 = metadata !{i32 786689, metadata !5, metadata !"out4", metadata !6, i32 134217823, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!67 = metadata !{i32 95, i32 66, metadata !5, null}
!68 = metadata !{i32 99, i32 2, metadata !69, null}
!69 = metadata !{i32 786443, metadata !5, i32 96, i32 5, metadata !6, i32 0} ; [ DW_TAG_lexical_block ]
!70 = metadata !{i32 100, i32 2, metadata !69, null}
!71 = metadata !{i32 101, i32 2, metadata !69, null}
!72 = metadata !{i32 102, i32 2, metadata !69, null}
!73 = metadata !{i32 104, i32 1, metadata !69, null}
