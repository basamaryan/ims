.class public Lorg/codeaurora/ims/ImsRadioResponseAidl;
.super Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;
.source "ImsRadioResponseAidl.java"


# instance fields
.field private mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

.field private final mLogSuffix:Ljava/lang/String;

.field private mPhoneId:I


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/IImsRadioResponse;I)V
    .locals 2
    .param p1, "respCallback"    # Lorg/codeaurora/ims/IImsRadioResponse;
    .param p2, "phoneId"    # I

    .line 48
    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 50
    iput p2, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mPhoneId:I

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mLogSuffix:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public addParticipantResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add Participant response received. errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 308
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 307
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onAddParticipantResponse(II)V

    .line 309
    return-void
.end method

.method public answerResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 76
    const-string v0, "Answer response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onAnswerResponse(II)V

    .line 78
    return-void
.end method

.method public cancelModifyCallResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 343
    const-string v0, "Cancel modify call response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 345
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 344
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onCancelModifyCallResponse(II)V

    .line 346
    return-void
.end method

.method public cancelPendingUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 400
    const-string v0, "Cancel pending USSD response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 401
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 402
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 403
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 402
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 404
    return-void
.end method

.method public conferenceResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 166
    const-string v0, "conference response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 167
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 168
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 169
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 168
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onConferenceResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 170
    return-void
.end method

.method public deflectCallResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 313
    const-string v0, "Deflect call response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 315
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 314
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onDeflectCallResponse(II)V

    .line 316
    return-void
.end method

.method public dialResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 70
    const-string v0, "Dial response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onDialResponse(II)V

    .line 72
    return-void
.end method

.method public exitEmergencyCallbackModeResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exit Emergency Callback response received error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 208
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 207
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onExitEmergencyCallbackModeResponse(II)V

    .line 209
    return-void
.end method

.method public exitSmsCallBackModeResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 430
    const-string v0, "exit SCBM"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 432
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 431
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->exitSmsCallBackModeResponse(II)V

    .line 433
    return-void
.end method

.method public explicitCallTransferResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorInfo"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 272
    const-string v0, "Explicit call transfer response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 273
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 274
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 275
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 274
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onExplicitCallTransferResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 276
    return-void
.end method

.method public getCallWaitingResponse(IILvendor/qti/hardware/radio/ims/CallWaitingInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "callWaitingInfo"    # Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    .param p4, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 263
    const-string v0, "Get call waiting response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 264
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toCallWaitingArray(Lvendor/qti/hardware/radio/ims/CallWaitingInfo;)[I

    move-result-object v0

    .line 265
    .local v0, "response":[I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 266
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 265
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetCallWaitingResponse(II[I)V

    .line 267
    return-void
.end method

.method public getClipResponse(IILvendor/qti/hardware/radio/ims/ClipProvisionStatus;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "clipProvisionStatus"    # Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;

    .line 175
    const-string v0, "Get clip response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 176
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSuppService(Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;)Lorg/codeaurora/ims/SuppService;

    move-result-object v0

    .line 177
    .local v0, "clipProvStatus":Lorg/codeaurora/ims/SuppService;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 178
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 177
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetClipResponse(IILorg/codeaurora/ims/SuppService;)V

    .line 179
    return-void
.end method

.method public getClirResponse(IILvendor/qti/hardware/radio/ims/ClirInfo;Z)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "clirInfo"    # Lvendor/qti/hardware/radio/ims/ClirInfo;
    .param p4, "hasClirInfo"    # Z

    .line 184
    const-string v0, "Get clir response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 185
    if-eqz p4, :cond_0

    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toClirArray(Lvendor/qti/hardware/radio/ims/ClirInfo;)[I

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 186
    .local v0, "response":[I
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 187
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 186
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetClirResponse(II[I)V

    .line 188
    return-void
.end method

.method public getColrResponse(IILvendor/qti/hardware/radio/ims/ColrInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "colrInfo"    # Lvendor/qti/hardware/radio/ims/ColrInfo;

    .line 198
    const-string v0, "getColr response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 199
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSuppService(Lvendor/qti/hardware/radio/ims/ColrInfo;)Lorg/codeaurora/ims/SuppService;

    move-result-object v0

    .line 200
    .local v0, "colrValue":Lorg/codeaurora/ims/SuppService;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 201
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 200
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetColrResponse(IILorg/codeaurora/ims/SuppService;)V

    .line 202
    return-void
.end method

.method public getConfigResponse(IILvendor/qti/hardware/radio/ims/ConfigInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "config"    # Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 135
    const-string v0, "Get config response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 136
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toConfigObject(Lvendor/qti/hardware/radio/ims/ConfigInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 137
    .local v0, "ret":Ljava/lang/Object;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 138
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 137
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetConfigResponse(IILjava/lang/Object;)V

    .line 139
    return-void
.end method

.method public getImsRegistrationStateResponse(IILvendor/qti/hardware/radio/ims/RegistrationInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "registration"    # Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    .line 144
    const-string v0, "getImsRegistrationStateResponse received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 145
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toImsRegistration(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;

    move-result-object v0

    .line 146
    .local v0, "regMessage":Lorg/codeaurora/ims/ImsRegistrationInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 147
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 146
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetRegistrationResponse(IILorg/codeaurora/ims/ImsRegistrationInfo;)V

    .line 148
    return-void
.end method

.method public getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "subConfigInfo"    # Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;

    .line 328
    const-string v0, "Subconfig response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 329
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toImsSubconfigDetails(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;

    move-result-object v0

    .line 330
    .local v0, "subConfigDetails":Lorg/codeaurora/ims/ImsSubConfigDetails;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 331
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 330
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetImsSubConfigResponse(IILorg/codeaurora/ims/ImsSubConfigDetails;)V

    .line 332
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "1c9870a51c575f38c440c1938fe44e84c19ccf4d"

    return-object v0
.end method

.method public final getInterfaceVersion()I
    .locals 1

    .line 60
    const/16 v0, 0x9

    return v0
.end method

.method public getRtpErrorStatisticsResponse(IIJ)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "packetErrorCount"    # J

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get Rtp Error Statistics response received packetErrorCount = "

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

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 301
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 300
    invoke-interface {v0, p1, v1, p3, p4}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetRtpStatisticsResponse(IIJ)V

    .line 302
    return-void
.end method

.method public getRtpStatisticsResponse(IIJ)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "packetCount"    # J

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get Rtp Statistics response received packetCount = "

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

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 292
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 291
    invoke-interface {v0, p1, v1, p3, p4}, Lorg/codeaurora/ims/IImsRadioResponse;->onGetRtpStatisticsResponse(IIJ)V

    .line 293
    return-void
.end method

.method public hangupResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 82
    const-string v0, "Hangup response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onHangupResponse(II)V

    .line 84
    return-void
.end method

.method public holdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "sipError"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 111
    const-string v0, "Hold response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 112
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 113
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 114
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 113
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onHoldResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 115
    return-void
.end method

.method public modifyCallConfirmResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 245
    const-string v0, "Modify call confirm response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 247
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 246
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onModifyCallConfirmResponse(II)V

    .line 248
    return-void
.end method

.method public modifyCallInitiateResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 238
    const-string v0, "Modify call initiate response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 240
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 239
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onModifyCallInitiateResponse(II)V

    .line 241
    return-void
.end method

.method public queryCallForwardStatusResponse(II[Lvendor/qti/hardware/radio/ims/CallForwardInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "callForwardInfoList"    # [Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    .param p4, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 253
    const-string v0, "Query call forward status response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 254
    nop

    .line 255
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toImsCallForwardTimerInfo([Lvendor/qti/hardware/radio/ims/CallForwardInfo;)[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;

    move-result-object v0

    .line 256
    .local v0, "cfTimerInfo":[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 257
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 256
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryCallForwardStatusResponse(II[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)V

    .line 258
    return-void
.end method

.method public queryMultiSimVoiceCapabilityResponse(III)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "voiceCapability"    # I

    .line 422
    const-string v0, "query multi sim voice capability."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 424
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 425
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toMultiSimVoiceCapability(I)I

    move-result v2

    .line 423
    invoke-interface {v0, p1, v1, v2}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryMultiSimVoiceCapabilityResponse(III)V

    .line 426
    return-void
.end method

.method public queryServiceStatusResponse(II[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "srvStatusList"    # [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 96
    const-string v0, "QueryServiceStatusResponse received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 97
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toServiceStatus([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)Ljava/util/ArrayList;

    move-result-object v0

    .line 98
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 99
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 98
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryServiceStatusResponse(IILjava/util/List;)V

    .line 100
    return-void
.end method

.method public queryVirtualLineInfoResponse(ILjava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "msisdn"    # Ljava/lang/String;
    .param p3, "virtualLineInfo"    # [Ljava/lang/String;

    .line 372
    new-instance v0, Lorg/codeaurora/ims/VirtualLineInfo;

    new-instance v1, Ljava/util/ArrayList;

    .line 373
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, p2, v1}, Lorg/codeaurora/ims/VirtualLineInfo;-><init>(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 374
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

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 375
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, p2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onQueryVirtualLineInfoResponse(ILjava/lang/String;Lorg/codeaurora/ims/VirtualLineInfo;)V

    .line 376
    return-void
.end method

.method public registerMultiIdentityLinesResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerMultiIdentityLines Response received. errorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 366
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 365
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onRegisterMultiIdentityLinesResponse(II)V

    .line 367
    return-void
.end method

.method public requestRegistrationChangeResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 88
    const-string v0, "Registration change response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 90
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 89
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onRequestRegistrationChangeResponse(II)V

    .line 91
    return-void
.end method

.method public resumeResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "sipError"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 119
    const-string v0, "Resume response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 120
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 121
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 122
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 121
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onResumeResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 123
    return-void
.end method

.method public sendDtmfResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send Dtmf response received error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendDtmfResponse(II)V

    .line 215
    return-void
.end method

.method public sendGeolocationInfoResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 320
    const-string v0, "Send geolocation response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 322
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 321
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendGeolocationInfoResponse(II)V

    .line 323
    return-void
.end method

.method public sendRttMessageResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Send Rtt Message response received. errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 338
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 337
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendRttMessageResponse(II)V

    .line 339
    return-void
.end method

.method public sendSipDtmfResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 408
    const-string v0, "Send sip dtmf response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendSipDtmfResponse(II)V

    .line 410
    return-void
.end method

.method public sendSmsResponse(ILvendor/qti/hardware/radio/ims/SmsSendResponse;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "smsResponse"    # Lvendor/qti/hardware/radio/ims/SmsSendResponse;

    .line 350
    const-string v0, "Ims sms response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 351
    iget v0, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->smsStatus:I

    if-eqz v0, :cond_1

    iget v0, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->reason:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    iget v0, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->msgRef:I

    iget v1, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->smsStatus:I

    iget v2, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->reason:I

    iget v3, p2, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->networkErrorCode:I

    invoke-static {v0, v1, v2, v3}, Lorg/codeaurora/ims/StableAidl;->toSmsResponse(IIII)Lorg/codeaurora/ims/sms/SmsResponse;

    move-result-object v0

    .line 359
    .local v0, "response":Lorg/codeaurora/ims/sms/SmsResponse;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-interface {v1, p1, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendImsSmsResponse(ILorg/codeaurora/ims/sms/SmsResponse;)V

    .line 360
    return-void

    .line 353
    .end local v0    # "response":Lorg/codeaurora/ims/sms/SmsResponse;
    :cond_1
    :goto_0
    const-string v0, "Status or reason invalid."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public sendUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 391
    const-string v0, "Send USSD response received."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 392
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSipError(Lvendor/qti/hardware/radio/ims/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    .line 393
    .local v0, "imsReasonInfo":Landroid/telephony/ims/ImsReasonInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 394
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 393
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSendUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 395
    return-void
.end method

.method public setCallForwardStatusResponse(IILvendor/qti/hardware/radio/ims/CallForwardStatusInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "callForwardStatus"    # Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;

    .line 381
    const-string v0, "Set call forward status response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 382
    nop

    .line 383
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toCallForwardStatusInfo(Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;)Lorg/codeaurora/ims/CallForwardStatusInfo;

    move-result-object v0

    .line 384
    .local v0, "cfStatusInfo":Lorg/codeaurora/ims/CallForwardStatusInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 385
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 384
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetCallForwardStatusResponse(IILorg/codeaurora/ims/CallForwardStatusInfo;)V

    .line 386
    return-void
.end method

.method public setClirResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set clir response received  error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetClirResponse(II)V

    .line 194
    return-void
.end method

.method public setConfigResponse(IILvendor/qti/hardware/radio/ims/ConfigInfo;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "config"    # Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 127
    const-string v0, "Set config response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 128
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toConfigObject(Lvendor/qti/hardware/radio/ims/ConfigInfo;)Ljava/lang/Object;

    move-result-object v0

    .line 129
    .local v0, "ret":Ljava/lang/Object;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 130
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 129
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetConfigResponse(IILjava/lang/Object;)V

    .line 131
    return-void
.end method

.method public setMediaConfigurationResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 414
    const-string v0, "Set media configuration response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 415
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 416
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 415
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetMediaConfigurationResponse(II)V

    .line 417
    return-void
.end method

.method public setServiceStatusResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 104
    const-string v0, "SetServiceStatus response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 106
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 105
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetServiceStatusResponse(II)V

    .line 107
    return-void
.end method

.method public setSuppServiceNotificationResponse(III)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "serviceStatus"    # I

    .line 281
    const-string v0, "Set supp service notification response received"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 283
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 282
    invoke-interface {v0, p1, v1, p3}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetSuppServiceNotificationResponse(III)V

    .line 284
    return-void
.end method

.method public setUiTTYModeResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set Ui TTY mode response received error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 233
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    .line 232
    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onSetUiTTYModeResponse(II)V

    .line 234
    return-void
.end method

.method public startDtmfResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start Dtmf response received error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onStartDtmfResponse(II)V

    .line 221
    return-void
.end method

.method public stopDtmfResponse(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "errorCode"    # I

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop Dtmf response received error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/codeaurora/ims/IImsRadioResponse;->onStopDtmfResponse(II)V

    .line 227
    return-void
.end method

.method public suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/SuppServiceStatus;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "errorCode"    # I
    .param p3, "suppServiceStatus"    # Lvendor/qti/hardware/radio/ims/SuppServiceStatus;

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Supp Service status response received status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " provisionStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->provisionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " facilityType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->facilityType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failureCause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->failureCause:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    iget v1, v1, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->errorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioResponseAidl;->log(Ljava/lang/String;)V

    .line 159
    invoke-static {p3}, Lorg/codeaurora/ims/StableAidl;->toSuppSvcResponse(Lvendor/qti/hardware/radio/ims/SuppServiceStatus;)Lorg/codeaurora/ims/SuppSvcResponse;

    move-result-object v0

    .line 160
    .local v0, "suppSvcResponse":Lorg/codeaurora/ims/SuppSvcResponse;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioResponseAidl;->mImsRadioResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 161
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidlErrorCode;->toErrorCode(I)I

    move-result v2

    .line 160
    invoke-interface {v1, p1, v2, v0}, Lorg/codeaurora/ims/IImsRadioResponse;->onSuppServiceStatusResponse(IILorg/codeaurora/ims/SuppSvcResponse;)V

    .line 162
    return-void
.end method
