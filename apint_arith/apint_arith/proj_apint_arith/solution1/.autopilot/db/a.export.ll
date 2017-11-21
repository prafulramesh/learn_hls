; ModuleID = '/home/vkchcp0030/Documents/learn_hls/apint_arith/apint_arith/proj_apint_arith/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@apint_arith_str = internal unnamed_addr constant [12 x i8] c"apint_arith\00"

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

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
  %inD_read = call i33 @_ssdm_op_Read.ap_auto.i33(i33 %inD) nounwind
  %inC_read = call i22 @_ssdm_op_Read.ap_auto.i22(i22 %inC) nounwind
  %inB_read = call i12 @_ssdm_op_Read.ap_auto.i12(i12 %inB) nounwind
  %inA_read = call i6 @_ssdm_op_Read.ap_auto.i6(i6 %inA) nounwind
  %tmp = sext i6 %inA_read to i18
  %tmp_1 = sext i12 %inB_read to i18
  %tmp_2 = mul i18 %tmp_1, %tmp
  call void @_ssdm_op_Write.ap_auto.i18P(i18* %out1, i18 %tmp_2) nounwind
  %tmp_3 = sext i12 %inB_read to i13
  %tmp_4 = sext i6 %inA_read to i13
  %tmp_5 = add i13 %tmp_3, %tmp_4
  call void @_ssdm_op_Write.ap_auto.i13P(i13* %out2, i13 %tmp_5) nounwind
  %tmp_7_tr_cast = sext i6 %inA_read to i22
  %tmp_6 = sdiv i22 %inC_read, %tmp_7_tr_cast
  call void @_ssdm_op_Write.ap_auto.i22P(i22* %out3, i22 %tmp_6) nounwind
  %tmp_s = sext i6 %inA_read to i33
  %tmp_7 = srem i33 %inD_read, %tmp_s
  %tmp_8 = trunc i33 %tmp_7 to i6
  call void @_ssdm_op_Write.ap_auto.i6P(i6* %out4, i6 %tmp_8) nounwind
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i6P(i6*, i6) {
entry:
  store i6 %1, i6* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i22P(i22*, i22) {
entry:
  store i22 %1, i22* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i18P(i18*, i18) {
entry:
  store i18 %1, i18* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_auto.i13P(i13*, i13) {
entry:
  store i13 %1, i13* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i6 @_ssdm_op_Read.ap_auto.i6(i6) {
entry:
  ret i6 %0
}

define weak i33 @_ssdm_op_Read.ap_auto.i33(i33) {
entry:
  ret i33 %0
}

define weak i22 @_ssdm_op_Read.ap_auto.i22(i22) {
entry:
  ret i22 %0
}

define weak i12 @_ssdm_op_Read.ap_auto.i12(i12) {
entry:
  ret i12 %0
}

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
