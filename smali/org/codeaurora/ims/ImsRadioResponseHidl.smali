.class Lorg/codeaurora/ims/ImsRadioResponseHidl;
.super Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioResponse$Stub;
.source "ImsRadioResponseHidl.java"


# instance fields
.field private mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/IImsRadioResponse;)V
    .locals 0
    .param p1, "respCallback"    # Lorg/codeaurora/ims/IImsRadioResponse;

    .line 43
    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioResponse$Stub;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 45
    return-void
.end method

.method private processConfigResponse(Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)Ljava/lang/Object;
    .locals 2
    .param p1, "configInfo"    # Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    .line 146
    iget-boolean v0, p1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->hasBoolValue:Z

    if-eqz v0, :cond_0

    .line 147
    iget-boolean v0, p1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->boolValue:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 148
    :cond_0
    iget v0, p1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->intValue:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    .line 149
    iget v0, p1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->intValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 150
    :cond_1
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->stringValue:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 151
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->stringValue:Ljava/lang/String;

    return-object v0

    .line 152
    :cond_2
    iget v0, p1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->errorCause:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    .line 153
    iget v0, p1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->errorCause:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseFromHal(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 155
    :cond_3
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->configInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)Lorg/codeaurora/ims/ImsConfigItem;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addParticipantResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add Participant response received. errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onAddParticipantResponse(II)V

    .line 463
    return-void
.end method

.method public answerResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 203
    const-string v0, "Got answer response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onAnswerResponse(II)V

    .line 205
    return-void
.end method

.method public cancelModifyCallResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 410
    const-string v0, "Got cancel modify call response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onCancelModifyCallResponse(II)V

    .line 412
    return-void
.end method

.method public cancelPendingUssdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 517
    const-string v0, "Cancel pending USSD response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 519
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 520
    return-void
.end method

.method public conferenceResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 257
    const-string v0, "conference response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 259
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onConferenceResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 260
    return-void
.end method

.method public deflectCallResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 467
    const-string v0, "Got deflect call response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onDeflectCallResponse(II)V

    .line 469
    return-void
.end method

.method public dialResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 56
    const-string v0, "Dial response received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onDialResponse(II)V

    .line 58
    return-void
.end method

.method public exitEmergencyCallbackModeResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got exitEmergencyCallbackModeResponse from ImsRadio error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onExitEmergencyCallbackModeResponse(II)V

    .line 376
    return-void
.end method

.method public explicitCallTransferResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 422
    const-string v0, "explicitCallTransferResponse()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onExplicitCallTransferResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 424
    return-void
.end method

.method public explicitCallTransferResponse_1_8(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 428
    const-string v0, "explicitCallTransferResponse_1_8()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public getCallWaitingResponse(IIIILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 5
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "inServiceStatus"    # I
    .param p4, "serviceClass"    # I
    .param p5, "errorDetails"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 315
    const/4 v0, 0x0

    .line 317
    .local v0, "response":[I
    const/4 v1, 0x2

    if-eq p3, v1, :cond_1

    .line 318
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassStatusFromHal(I)I

    move-result v2

    .line 319
    .local v2, "outServiceStatus":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 320
    new-array v0, v3, [I

    .line 321
    aput v4, v0, v4

    goto :goto_0

    .line 323
    :cond_0
    new-array v0, v1, [I

    .line 324
    aput v3, v0, v4

    .line 325
    aput p4, v0, v3

    .line 328
    .end local v2    # "outServiceStatus":I
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetCallWaitingResponse(II[I)V

    .line 329
    return-void
.end method

.method public getClipResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "clipProvisionStatus"    # Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;

    .line 265
    new-instance v0, Lorg/codeaurora/ims/SuppService;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppService;-><init>()V

    .line 267
    .local v0, "clipProvStatus":Lorg/codeaurora/ims/SuppService;
    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->clipStatus:I

    .line 268
    .local v1, "clipStatus":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 269
    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->clipStatus:I

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->clipStatusFromHal(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/SuppService;->setStatus(I)V

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClipResponse from ImsRadio. Clipstatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    :cond_0
    iget-boolean v2, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->hasErrorDetails:Z

    if-eqz v2, :cond_1

    .line 275
    iget-object v2, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/SuppService;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getClipResponse from ImsRadio. Errorcode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "String "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClipProvisionStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v2, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetClipResponse(IILorg/codeaurora/ims/SuppService;)V

    .line 282
    return-void
.end method

.method public getClirResponse(IILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;Z)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "clirInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    .param p4, "hasClirInfo"    # Z

    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, "response":[I
    if-eqz p4, :cond_2

    .line 290
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 291
    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramN:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_0

    .line 292
    const/4 v1, 0x0

    iget v3, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramN:I

    aput v3, v0, v1

    .line 294
    :cond_0
    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramM:I

    if-eq v1, v2, :cond_1

    .line 295
    const/4 v1, 0x1

    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramM:I

    aput v2, v0, v1

    .line 297
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getClirResponse from ImsRadio. param_m - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "param_n - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramN:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 300
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetClirResponse(II[I)V

    .line 301
    return-void
.end method

.method public getColrResponse(IILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "colrInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    .line 366
    nop

    .line 367
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->migrateColrInfoFromV10(Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;

    move-result-object v0

    .line 368
    .local v0, "ci":Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;
    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->getColrResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/ColrInfo;)V

    .line 369
    return-void
.end method

.method public getColrResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/ColrInfo;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "colrInfo"    # Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;

    .line 341
    new-instance v0, Lorg/codeaurora/ims/SuppService;

    invoke-direct {v0}, Lorg/codeaurora/ims/SuppService;-><init>()V

    .line 343
    .local v0, "colrValue":Lorg/codeaurora/ims/SuppService;
    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->status:I

    .line 344
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassStatusFromHal(I)I

    move-result v1

    .line 343
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setServiceClassStatus(I)V

    .line 345
    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->provisionStatus:I

    .line 346
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassProvisionStatusFromHal(I)I

    move-result v1

    .line 345
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setProvisionStatus(I)V

    .line 347
    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->status:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceClassStatusFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setStatus(I)V

    .line 349
    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->presentation:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->ipPresentationFromHal(I)I

    move-result v1

    .line 350
    .local v1, "presentation":I
    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 351
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/SuppService;->setPresentation(I)V

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getColrResponse from ImsRadio. presentation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    :cond_0
    iget-boolean v2, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->hasErrorDetails:Z

    if-eqz v2, :cond_1

    .line 356
    iget-object v2, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/SuppService;->setErrorDetails(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getColrResponse from ImsRadio. errorcode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v2, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetColrResponse(IILorg/codeaurora/ims/SuppService;)V

    .line 362
    return-void
.end method

.method public getConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "config"    # Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    .line 130
    const-string v0, "getConfigResponse()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    nop

    .line 132
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateConfigInfoFrom(Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    move-result-object v0

    .line 133
    .local v0, "configV16":Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    nop

    .line 134
    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->migrateConfigInfoFromV16(Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    move-result-object v1

    .line 133
    invoke-virtual {p0, p1, p2, v1}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->getConfigResponse_1_8(IILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    .line 135
    return-void
.end method

.method public getConfigResponse_1_8(IILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "config"    # Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    .line 140
    const-string v0, "getConfigResponse_1_8()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-direct {p0, p3}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->processConfigResponse(Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 142
    .local v0, "ret":Ljava/lang/Object;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetConfigResponse(IILjava/lang/Object;)V

    .line 143
    return-void
.end method

.method public getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "subConfigInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    .line 480
    const-string v0, "Received Subconfig response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 481
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->imsSubconfigFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;

    move-result-object v0

    .line 482
    .local v0, "subConfigDetails":Lorg/codeaurora/ims/ImsSubConfigDetails;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetImsSubConfigResponse(IILorg/codeaurora/ims/ImsSubConfigDetails;)V

    .line 483
    return-void
.end method

.method public getRegistrationResponse(IILvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "registration"    # Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    .line 216
    const-string v0, "getRegistrationResponse()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    nop

    .line 218
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateRegistrationInfo(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    move-result-object v0

    .line 217
    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->getRegistrationResponse_1_6(IILvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)V

    .line 219
    return-void
.end method

.method public getRegistrationResponse_1_6(IILvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "registration"    # Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    .line 224
    const-string v0, "getRegistrationResponse_1_6()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    const/4 v0, 0x0

    .line 226
    .local v0, "regMessage":Lorg/codeaurora/ims/ImsRegistrationInfo;
    if-eqz p3, :cond_0

    .line 227
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->registrationFromHal(Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;

    move-result-object v0

    .line 229
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetRegistrationResponse(IILorg/codeaurora/ims/ImsRegistrationInfo;)V

    .line 230
    return-void
.end method

.method public getRtpErrorStatisticsResponse(IIJ)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "packetErrorCount"    # J

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got getRtpErrorStatisticsResponse from ImsRadio packetErrorCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetRtpErrorStatisticsResponse(IIJ)V

    .line 454
    return-void
.end method

.method public getRtpStatisticsResponse(IIJ)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "packetCount"    # J

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got getRtpStatisticsResponse from ImsRadio packetCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetRtpStatisticsResponse(IIJ)V

    .line 446
    return-void
.end method

.method public hangupResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 197
    const-string v0, "Got hangup response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onHangupResponse(II)V

    .line 199
    return-void
.end method

.method public holdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 190
    const-string v0, "Hold response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 192
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onHoldResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 193
    return-void
.end method

.method public modifyCallConfirmResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 416
    const-string v0, "Got modify call confirm response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onModifyCallConfirmResponse(II)V

    .line 418
    return-void
.end method

.method public modifyCallInitiateResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 404
    const-string v0, "Got modify call initiate response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onModifyCallInitiateResponse(II)V

    .line 406
    return-void
.end method

.method public queryCallForwardStatusResponse(IILjava/util/ArrayList;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p4, "errorDetails"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;",
            ">;",
            "Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;",
            ")V"
        }
    .end annotation

    .line 307
    .local p3, "callForwardInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;>;"
    nop

    .line 308
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCFStatusResponseFromHal(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    move-result-object v0

    .line 309
    .local v0, "cfTimerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryCallForwardStatusResponse(II[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)V

    .line 310
    return-void
.end method

.method public queryServiceStatusResponse(IILjava/util/ArrayList;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p3, "serviceStatusInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    const-string v0, "queryServiceStatusResponse()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    nop

    .line 163
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateServiceStatusInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 162
    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->queryServiceStatusResponse_1_6(IILjava/util/ArrayList;)V

    .line 164
    return-void
.end method

.method public queryServiceStatusResponse_1_6(IILjava/util/ArrayList;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;",
            ">;)V"
        }
    .end annotation

    .line 169
    .local p3, "infoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    const-string v0, "queryServiceStatusResponse_1_6()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->handleSrvStatus(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 172
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryServiceStatusResponse(IILjava/util/List;)V

    .line 173
    return-void
.end method

.method public queryVirtualLineInfoResponse(ILjava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 538
    .local p3, "virtualLineInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lorg/codeaurora/ims/VirtualLineInfo;

    invoke-direct {v0, p2, p3}, Lorg/codeaurora/ims/VirtualLineInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 539
    .local v0, "virtualInfo":Lorg/codeaurora/ims/VirtualLineInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryVirtualLineInfoResponse :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 540
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryVirtualLineInfoResponse(ILjava/lang/String;Lorg/codeaurora/ims/VirtualLineInfo;)V

    .line 541
    return-void
.end method

.method public registerMultiIdentityLinesResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerMultiIdentityLines Response received. errorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onRegisterMultiIdentityLinesResponse(II)V

    .line 533
    return-void
.end method

.method public requestRegistrationChangeResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 209
    const-string v0, "Got registration change response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onRequestRegistrationChangeResponse(II)V

    .line 211
    return-void
.end method

.method public resumeResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 183
    const-string v0, "Resume response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 185
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onResumeResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 186
    return-void
.end method

.method public sendDtmfResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got sendDtmfResponse from ImsRadio error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendDtmfResponse(II)V

    .line 382
    return-void
.end method

.method public sendGeolocationInfoResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 473
    const-string v0, "Received GeoLocationInfo response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendGeolocationInfoResponse(II)V

    .line 475
    return-void
.end method

.method public sendImsSmsResponse(IIII)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "smsStatusResult"    # I
    .param p4, "reason"    # I

    .line 103
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->sendImsSmsResponse_1_5(IIII)V

    .line 104
    return-void
.end method

.method public sendImsSmsResponse_1_5(IIII)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "smsStatusResult"    # I
    .param p4, "reason"    # I

    .line 89
    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->sendImsSmsResponse_1_8(IIIIII)V

    .line 91
    return-void
.end method

.method public sendImsSmsResponse_1_8(IIIIII)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "smsStatusResult"    # I
    .param p4, "reason"    # I
    .param p5, "networkErrorCode"    # I
    .param p6, "transportErrorCode"    # I

    .line 73
    const-string v0, "Ims sms response received"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {p2, p3, p4, p5}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->imsSmsResponsefromHidl(IIII)Lorg/codeaurora/ims/sms/SmsResponse;

    move-result-object v0

    .line 76
    .local v0, "response":Lorg/codeaurora/ims/sms/SmsResponse;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendImsSmsResponse(ILorg/codeaurora/ims/sms/SmsResponse;)V

    .line 77
    return-void
.end method

.method public sendRttMessageResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send Rtt Message response received. errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendRttMessageResponse(II)V

    .line 526
    return-void
.end method

.method public sendSipDtmfResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 502
    const-string v0, "Received Send SIP DTMF response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendSipDtmfResponse(II)V

    .line 504
    return-void
.end method

.method public sendUssdResponse(IILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 495
    const-string v0, "Send USSD response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 497
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 498
    return-void
.end method

.method public setCallForwardStatusResponse(IILvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "callForwardStatusInfo"    # Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;

    .line 546
    const-string v0, "set call forward response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->callForwardStatusInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;)Lorg/codeaurora/ims/CallForwardStatusInfo;

    move-result-object v0

    .line 549
    .local v0, "cfStatusInfo":Lorg/codeaurora/ims/CallForwardStatusInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetCallForwardStatusResponse(IILorg/codeaurora/ims/CallForwardStatusInfo;)V

    .line 550
    return-void
.end method

.method public setClirResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got setClirResponse from ImsRadio. error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetClirResponse(II)V

    .line 335
    return-void
.end method

.method public setConfigResponse(IILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "config"    # Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    .line 108
    const-string v0, "setConfigResponse()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    nop

    .line 110
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateConfigInfoFrom(Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    move-result-object v0

    .line 109
    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->setConfigResponse_1_6(IILvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)V

    .line 111
    return-void
.end method

.method public setConfigResponse_1_6(IILvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "config"    # Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    .line 116
    const-string v0, "setConfigResponse_1_6()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->migrateConfigInfoFromV16(Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->setConfigResponse_1_8(IILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    .line 118
    return-void
.end method

.method public setConfigResponse_1_8(IILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "config"    # Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    .line 123
    const-string v0, "setConfigResponse_1_8()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0, p3}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->processConfigResponse(Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 125
    .local v0, "ret":Ljava/lang/Object;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetConfigResponse(IILjava/lang/Object;)V

    .line 126
    return-void
.end method

.method public setServiceStatusResponse(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 177
    const-string v0, "SetServiceStatus response received."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetServiceStatusResponse(II)V

    .line 179
    return-void
.end method

.method public setSuppServiceNotificationResponse(III)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "serviceStatusClass"    # I

    .line 435
    const-string v0, "Got set supp service notification response from ImsRadio."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetSuppServiceNotificationResponse(III)V

    .line 438
    return-void
.end method

.method public setUiTTYModeResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got setUiTTYModeResponse from ImsRadio error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetUiTTYModeResponse(II)V

    .line 400
    return-void
.end method

.method public startDtmfResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got startDtmfResponse from ImsRadio error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onStartDtmfResponse(II)V

    .line 388
    return-void
.end method

.method public stopDtmfResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got stopDtmfResponse from ImsRadio error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v0, p1, p2}, Lorg/codeaurora/ims/IImsRadioResponse;->onStopDtmfResponse(II)V

    .line 394
    return-void
.end method

.method public suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "suppServiceStatus"    # Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;

    .line 250
    nop

    .line 251
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->migrateSuppServiceStatusFromV10(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceStatus;)Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;

    move-result-object v0

    .line 252
    .local v0, "status":Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;
    invoke-virtual {p0, p1, p2, v0}, Lorg/codeaurora/ims/ImsRadioResponseHidl;->suppServiceStatusResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)V

    .line 253
    return-void
.end method

.method public suppServiceStatusResponse_1_3(IILvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "suppServiceStatus"    # Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "suppServiceStatusResponse_1_3()  status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " provisionStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->provisionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " facilityType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->facilityType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failureCause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    nop

    .line 243
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->suppSvcStatusResponseFromHal(Lvendor/qti/hardware/radio/ims/V1_3/SuppServiceStatus;)Lorg/codeaurora/ims/SuppSvcResponse;

    move-result-object v0

    .line 244
    .local v0, "suppSvcResponse":Lorg/codeaurora/ims/SuppSvcResponse;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseHidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSuppServiceStatusResponse(IILorg/codeaurora/ims/SuppSvcResponse;)V

    .line 245
    return-void
.end method
