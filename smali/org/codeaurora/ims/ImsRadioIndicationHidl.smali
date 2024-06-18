.class Lorg/codeaurora/ims/ImsRadioIndicationHidl;
.super Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;
.source "ImsRadioIndicationHidl.java"


# instance fields
.field private mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;


# direct methods
.method public constructor <init>(Lorg/codeaurora/ims/IImsRadioIndication;)V
    .locals 0
    .param p1, "indication"    # Lorg/codeaurora/ims/IImsRadioIndication;

    .line 52
    invoke-direct {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadioIndication$Stub;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    .line 54
    return-void
.end method


# virtual methods
.method public onCallComposerInfoAvailable(Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)V
    .locals 3
    .param p1, "callComposerInfo"    # Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    .line 573
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->buildCallComposerInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v0

    .line 574
    .local v0, "info":Lorg/codeaurora/ims/CallComposerInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget v2, p1, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->callId:I

    invoke-interface {v1, v2, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onCallComposerInfoAvailable(ILorg/codeaurora/ims/CallComposerInfo;)V

    .line 575
    return-void
.end method

.method public onCallStateChanged(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 127
    .local p1, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;>;"
    const-string v0, "onCallStateChanged()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateCallListToV11(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onCallStateChanged_1_1(Ljava/util/ArrayList;)V

    .line 129
    return-void
.end method

.method public onCallStateChanged_1_1(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 121
    .local p1, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;>;"
    const-string v0, "onCallStateChanged_1_1()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV12;->migrateCallListFromV11(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onCallStateChanged_1_2(Ljava/util/ArrayList;)V

    .line 123
    return-void
.end method

.method public onCallStateChanged_1_2(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 114
    .local p1, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;>;"
    const-string v0, "onCallStateChanged_1_2()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->migrateCallListFromV12(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onCallStateChanged_1_3(Ljava/util/ArrayList;)V

    .line 116
    return-void
.end method

.method public onCallStateChanged_1_3(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 107
    .local p1, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;>;"
    const-string v0, "onCallStateChanged_1_3()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->migrateCallListFromV13(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onCallStateChanged_1_4(Ljava/util/ArrayList;)V

    .line 109
    return-void
.end method

.method public onCallStateChanged_1_4(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;>;"
    const-string v0, "onCallStateChanged_1_4()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->migrateCallListFrom(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onCallStateChanged_1_5(Ljava/util/ArrayList;)V

    .line 102
    return-void
.end method

.method public onCallStateChanged_1_5(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 93
    .local p1, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;>;"
    const-string v0, "onCallStateChanged_1_5()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateCallListFrom(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onCallStateChanged_1_6(Ljava/util/ArrayList;)V

    .line 95
    return-void
.end method

.method public onCallStateChanged_1_6(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 86
    .local p1, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;>;"
    const-string v0, "onCallStateChanged_1_6()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV17;->migrateCallListFrom(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onCallStateChanged_1_7(Ljava/util/ArrayList;)V

    .line 88
    return-void
.end method

.method public onCallStateChanged_1_7(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p1, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;>;"
    const-string v0, "onCallStateChanged_1_7()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->migrateCallListFrom(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onCallStateChanged_1_8(Ljava/util/ArrayList;)V

    .line 81
    return-void
.end method

.method public onCallStateChanged_1_8(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p1, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;>;"
    const-string v0, "onCallStateChanged_1_8()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    if-nez p1, :cond_0

    .line 62
    const-string v0, "Call list is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    return-void

    .line 66
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 69
    .local v1, "numOfCalls":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 70
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->buildDriverCallImsFromHal(Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v3

    .line 71
    .local v3, "dc":Lorg/codeaurora/ims/DriverCallIms;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .end local v3    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v2, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onCallStateChanged(Ljava/util/List;)V

    .line 74
    return-void
.end method

.method public onConferenceCallStateCompleted()V
    .locals 1

    .line 617
    const-string v0, "onConferenceCallStateCompleted()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 618
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onConferenceCallStateCompleted()V

    .line 619
    return-void
.end method

.method public onEnterEmergencyCallBackMode()V
    .locals 1

    .line 235
    const-string v0, "onEnterEmergencyCallBackMode()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onEnterEmergencyCallBackMode()V

    .line 237
    return-void
.end method

.method public onExitEmergencyCallBackMode()V
    .locals 1

    .line 241
    const-string v0, "onExitEmergencyCallBackMode()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onExitEmergencyCallBackMode()V

    .line 243
    return-void
.end method

.method public onGeolocationInfoRequested(DD)V
    .locals 2
    .param p1, "lat"    # D
    .param p3, "lon"    # D

    .line 330
    const-string v0, "onGeolocationInfoRequested()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    nop

    .line 332
    invoke-static {p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRadioUtils;->geolocationIndicationFromHal(DD)Lorg/codeaurora/ims/GeoLocationInfo;

    move-result-object v0

    .line 333
    .local v0, "ret":Lorg/codeaurora/ims/GeoLocationInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onGeolocationInfoRequested(Lorg/codeaurora/ims/GeoLocationInfo;)V

    .line 335
    return-void
.end method

.method public onHandover(Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;)V
    .locals 1
    .param p1, "inHandover"    # Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;

    .line 187
    const-string v0, "onHandover()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateHandoverInfo(Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;)Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onHandover_1_6(Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;)V

    .line 189
    return-void
.end method

.method public onHandover_1_6(Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;)V
    .locals 2
    .param p1, "inHandover"    # Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;

    .line 194
    const-string v0, "onHandover_1_6()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->handoverFromHal(Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;)Lorg/codeaurora/ims/HoInfo;

    move-result-object v0

    .line 196
    .local v0, "outHandover":Lorg/codeaurora/ims/HoInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onHandover(Lorg/codeaurora/ims/HoInfo;)V

    .line 197
    return-void
.end method

.method public onImsSmsStatusReport(Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;)V
    .locals 2
    .param p1, "smsStatusReport"    # Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;

    .line 133
    const-string v0, "onImsSmsStatusReport()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->pdu:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 136
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->statusReportfromHidl(Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;)Lorg/codeaurora/ims/sms/StatusReport;

    move-result-object v0

    .line 137
    .local v0, "smsReport":Lorg/codeaurora/ims/sms/StatusReport;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onImsSmsStatusReport(Lorg/codeaurora/ims/sms/StatusReport;)V

    .line 139
    .end local v0    # "smsReport":Lorg/codeaurora/ims/sms/StatusReport;
    :cond_0
    return-void
.end method

.method public onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V
    .locals 2
    .param p1, "config"    # Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    .line 384
    const-string v0, "onImsSubConfigChanged()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->imsSubconfigFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)Lorg/codeaurora/ims/ImsSubConfigDetails;

    move-result-object v0

    .line 386
    .local v0, "ret":Lorg/codeaurora/ims/ImsSubConfigDetails;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onImsSubConfigChanged(Lorg/codeaurora/ims/ImsSubConfigDetails;)V

    .line 387
    return-void
.end method

.method public onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;)V
    .locals 1
    .param p1, "rejectInfo"    # Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;

    .line 378
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->migrateAutoCallRejectionInfoFrom(Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;)Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onIncomingCallAutoRejected_1_5(Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;)V

    .line 380
    return-void
.end method

.method public onIncomingCallAutoRejected_1_5(Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;)V
    .locals 1
    .param p1, "rejectInfo"    # Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;

    .line 372
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateAutoCallRejectionInfoFrom(Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;)Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onIncomingCallAutoRejected_1_6(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;)V

    .line 374
    return-void
.end method

.method public onIncomingCallAutoRejected_1_6(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;)V
    .locals 3
    .param p1, "rejectInfo"    # Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;

    .line 356
    const-string v0, "onIncomingCallAutoRejected_1_6()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 358
    if-nez p1, :cond_0

    .line 359
    const-string v0, "onIncomingCallAutoRejected: rejectInfo is null. Returning"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    return-void

    .line 363
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->toDriverCallIms(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v0

    .line 364
    .local v0, "dc":Lorg/codeaurora/ims/DriverCallIms;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onIncomingCallAutoRejected :: Call auto rejected from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingCallAutoRejected(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 367
    return-void
.end method

.method public onIncomingCallComposerCallAutoRejected(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)V
    .locals 2
    .param p1, "rejectInfo"    # Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;
    .param p2, "callComposerInfo"    # Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    .line 341
    const-string v0, "onIncomingCallComposerCallAutoRejected()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    if-nez p2, :cond_0

    .line 343
    const-string v0, "onIncomingCallComposerCallAutoRejected: callComposerInfo is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onIncomingCallAutoRejected_1_6(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;)V

    goto :goto_0

    .line 345
    :cond_0
    if-nez p1, :cond_1

    .line 346
    const-string v0, "onIncomingCallComposerCallAutoRejected: rejectInfo is null "

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    return-void

    .line 349
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->toDriverCallIms(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v0

    .line 350
    .local v0, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingCallAutoRejected(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 351
    return-void
.end method

.method public onIncomingImsSms(Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;)V
    .locals 2
    .param p1, "imsSms"    # Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;

    .line 143
    const-string v0, "onIncomingImsSms()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->pdu:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->format:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 146
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->incomingSmsfromHidl(Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;)Lorg/codeaurora/ims/sms/IncomingSms;

    move-result-object v0

    .line 147
    .local v0, "newSms":Lorg/codeaurora/ims/sms/IncomingSms;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onIncomingImsSms(Lorg/codeaurora/ims/sms/IncomingSms;)V

    .line 149
    .end local v0    # "newSms":Lorg/codeaurora/ims/sms/IncomingSms;
    :cond_0
    return-void
.end method

.method public onMessageWaiting(Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;)V
    .locals 2
    .param p1, "messageWaitingIndication"    # Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;

    .line 323
    const-string v0, "onMessageWaiting()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 324
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->messageWaitingIndicationFromHal(Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;)Lorg/codeaurora/ims/Mwi;

    move-result-object v0

    .line 325
    .local v0, "mwi":Lorg/codeaurora/ims/Mwi;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onMessageWaiting(Lorg/codeaurora/ims/Mwi;)V

    .line 326
    return-void
.end method

.method public onModemSupportsWfcRoamingModeConfiguration(Z)V
    .locals 2
    .param p1, "wfcRoamingConfigurationSupport"    # Z

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wfcRoamingConfigurationSupport = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onModemSupportsWfcRoamingModeConfiguration(Z)V

    .line 541
    return-void
.end method

.method public onModifyCall(Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V
    .locals 2
    .param p1, "callModifyInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    .line 303
    const-string v0, "onModifyCall()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    if-nez p1, :cond_0

    .line 305
    const-string v0, "onModifyCall: callModifyInfo is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    return-void

    .line 308
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->callModifyFromHal(Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)Lorg/codeaurora/ims/CallModify;

    move-result-object v0

    .line 309
    .local v0, "ret":Lorg/codeaurora/ims/CallModify;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onModifyCall(Lorg/codeaurora/ims/CallModify;)V

    .line 310
    return-void
.end method

.method public onMultiIdentityInfoPending()V
    .locals 1

    .line 531
    const-string v0, "onMultiIdentityInfoPending()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onMultiIdentityInfoPending()V

    .line 533
    return-void
.end method

.method public onMultiIdentityRegistrationStatusChange(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;",
            ">;)V"
        }
    .end annotation

    .line 519
    .local p1, "lines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;>;"
    const-string v0, "onMultiIdentityRegistrationStatusChange()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 520
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 521
    .local v0, "linesInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    .line 522
    .local v2, "line":Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;
    nop

    .line 523
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->fromMultiIdentityLineInfoHal(Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v3

    .line 524
    .local v3, "lineInfo":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    .end local v2    # "line":Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;
    .end local v3    # "lineInfo":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    goto :goto_0

    .line 526
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onMultiIdentityRegistrationStatusChange(Ljava/util/List;)V

    .line 527
    return-void
.end method

.method public onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;)V
    .locals 2
    .param p1, "participantStatusInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;

    .line 391
    const-string v0, "onParticipantStatusInfo()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 392
    nop

    .line 393
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->participantStatusFromHal(Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;)Lorg/codeaurora/ims/ParticipantStatusDetails;

    move-result-object v0

    .line 394
    .local v0, "ret":Lorg/codeaurora/ims/ParticipantStatusDetails;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onParticipantStatusInfo(Lorg/codeaurora/ims/ParticipantStatusDetails;)V

    .line 395
    return-void
.end method

.method public onRadioStateChanged(I)V
    .locals 2
    .param p1, "radioState"    # I

    .line 215
    const-string v0, "onRadioStateChanged()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    packed-switch p1, :pswitch_data_0

    .line 228
    const-string v0, "onRadioStateChanged: Invalid Radio State Change"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 225
    :pswitch_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    sget-object v1, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_ON:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRadioStateChanged(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V

    .line 226
    goto :goto_0

    .line 222
    :pswitch_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    sget-object v1, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRadioStateChanged(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V

    .line 223
    goto :goto_0

    .line 219
    :pswitch_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    sget-object v1, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_OFF:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRadioStateChanged(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V

    .line 220
    nop

    .line 231
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;)V
    .locals 3
    .param p1, "conferenceInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;

    .line 258
    const-string v0, "onRefreshConferenceInfo()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    if-nez p1, :cond_0

    .line 260
    const-string v0, "onRefreshConferenceInfo: Conferenceinfo is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    return-void

    .line 263
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/ConfInfo;-><init>()V

    .line 265
    .local v0, "info":Lorg/codeaurora/ims/ConfInfo;
    iget-object v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->confInfoUri:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->confInfoUri:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    iget-object v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->confInfoUri:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ConfInfo;->setConfInfoUri(Ljava/util/ArrayList;)V

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshConferenceInfo: confUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->confInfoUri:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    :cond_1
    iget v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->conferenceCallState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    .line 272
    iget v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->conferenceCallState:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->conferenceCallStateFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ConfInfo;->setConfCallState(I)V

    .line 275
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshConferenceInfo: conferenceCallState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->conferenceCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRefreshConferenceInfo(Lorg/codeaurora/ims/ConfInfo;)V

    .line 278
    return-void
.end method

.method public onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;)V
    .locals 3
    .param p1, "viceInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;

    .line 282
    const-string v0, "onRefreshViceInfo()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    if-eqz p1, :cond_1

    iget-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;->viceInfoUri:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ViceUriInfo;

    iget-object v1, p1, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;->viceInfoUri:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/ViceUriInfo;-><init>(Ljava/util/ArrayList;)V

    .line 292
    .local v0, "info":Lorg/codeaurora/ims/ViceUriInfo;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshViceInfo: viceUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;->viceInfoUri:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRefreshViceInfo(Lorg/codeaurora/ims/ViceUriInfo;)V

    .line 294
    return-void

    .line 284
    .end local v0    # "info":Lorg/codeaurora/ims/ViceUriInfo;
    :cond_1
    :goto_0
    const-string v0, "onRefreshViceInfo: Viceinfo or viceinfouri is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public onRegistrationBlockStatus(ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)V
    .locals 2
    .param p1, "hasBlockStatusOnWwan"    # Z
    .param p2, "blockStatusOnWwan"    # Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    .param p3, "hasBlockStatusOnWlan"    # Z
    .param p4, "blockStatusOnWlan"    # Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    .line 401
    const-string v0, "onRegistrationBlockStatus()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    nop

    .line 403
    invoke-static {p1, p2, p3, p4}, Lorg/codeaurora/ims/ImsRadioUtils;->registrationBlockStatusFromHal(ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)Lorg/codeaurora/ims/RegistrationBlockStatusInfo;

    move-result-object v0

    .line 405
    .local v0, "ret":Lorg/codeaurora/ims/RegistrationBlockStatusInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRegistrationBlockStatus(Lorg/codeaurora/ims/RegistrationBlockStatusInfo;)V

    .line 406
    return-void
.end method

.method public onRegistrationChanged(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V
    .locals 1
    .param p1, "registration"    # Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    .line 173
    const-string v0, "onRegistrationChanged()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateRegistrationInfo(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onRegistrationChanged_1_6(Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)V

    .line 175
    return-void
.end method

.method public onRegistrationChanged_1_6(Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)V
    .locals 2
    .param p1, "registration"    # Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    .line 180
    const-string v0, "onRegistrationChanged_1_6()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->registrationFromHal(Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;)Lorg/codeaurora/ims/ImsRegistrationInfo;

    move-result-object v0

    .line 182
    .local v0, "regMessage":Lorg/codeaurora/ims/ImsRegistrationInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRegistrationChanged(Lorg/codeaurora/ims/ImsRegistrationInfo;)V

    .line 183
    return-void
.end method

.method public onRetrievingGeoLocationDataStatus(I)V
    .locals 2
    .param p1, "geoLocationDataStatus"    # I

    .line 579
    const-string v0, "onRetrievingGeoLocationDataStatus()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 580
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->geoLocationDataStatusFromHal(I)I

    move-result v0

    .line 581
    .local v0, "ret":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRetrievingGeoLocationDataStatus(I)V

    .line 582
    return-void
.end method

.method public onRing()V
    .locals 1

    .line 153
    const-string v0, "onRing()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRing()V

    .line 155
    return-void
.end method

.method public onRingbackTone(I)V
    .locals 5
    .param p1, "tone"    # I

    .line 159
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 161
    .local v1, "response":[I
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->ringbackToneFromHal(I)I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRingbackTone() response: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v4, v1, v3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "playtone":Z
    aget v4, v1, v3

    if-ne v4, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    .line 167
    .end local v2    # "playtone":Z
    .local v0, "playtone":Z
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v2, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onRingbackTone(Z)V

    .line 168
    return-void
.end method

.method public onRttMessageReceived(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 410
    const-string v0, "onRttMessageReceived()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onRttMessageReceived(Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public onServiceDomainChanged(I)V
    .locals 2
    .param p1, "domain"    # I

    .line 597
    const-string v0, "onServiceDomainChanged()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    .line 599
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->serviceDomainFromHal(I)I

    move-result v1

    .line 598
    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceDomainChanged(I)V

    .line 600
    return-void
.end method

.method public onServiceStatusChanged(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;",
            ">;)V"
        }
    .end annotation

    .line 201
    .local p1, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    const-string v0, "onServiceStatusChanged()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateServiceStatusInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->onServiceStatusChanged_1_6(Ljava/util/ArrayList;)V

    .line 203
    return-void
.end method

.method public onServiceStatusChanged_1_6(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;",
            ">;)V"
        }
    .end annotation

    .line 208
    .local p1, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    const-string v0, "onServiceStatusChanged_1_6()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->handleSrvStatus(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 210
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/ServiceStatus;>;"
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceStatusChanged(Ljava/util/List;)V

    .line 211
    return-void
.end method

.method public onSipDtmfReceived(Ljava/lang/String;)V
    .locals 1
    .param p1, "configCode"    # Ljava/lang/String;

    .line 586
    const-string v0, "onSipDtmfReceived()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onSipDtmfReceived(Ljava/lang/String;)V

    .line 588
    return-void
.end method

.method public onSmsCallBackModeChanged(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSmsCallBackModeChanged() mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    .line 612
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->scbmStatusFromHal(I)I

    move-result v1

    .line 611
    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onSmsCallBackModeChanged(I)V

    .line 613
    return-void
.end method

.method public onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;)V
    .locals 2
    .param p1, "suppServiceNotification"    # Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;

    .line 315
    const-string v0, "onSuppServiceNotification()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 316
    nop

    .line 317
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->suppServiceNotificationFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;)Lorg/codeaurora/ims/SuppNotifyInfo;

    move-result-object v0

    .line 318
    .local v0, "suppNotiyInfo":Lorg/codeaurora/ims/SuppNotifyInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onSuppServiceNotification(Lorg/codeaurora/ims/SuppNotifyInfo;)V

    .line 319
    return-void
.end method

.method public onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;)V
    .locals 19
    .param p1, "ss"    # Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;

    .line 429
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "onSupplementaryServiceIndication()"

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    new-instance v2, Landroid/telephony/ims/ImsSsData$Builder;

    iget v3, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->serviceType:I

    .line 431
    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->serviceTypeFromRILServiceType(I)I

    move-result v4

    iget v3, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->requestType:I

    .line 432
    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->requestTypeFromRILRequestType(I)I

    move-result v5

    iget v3, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->teleserviceType:I

    .line 433
    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->teleserviceTypeFromRILTeleserviceType(I)I

    move-result v6

    iget v7, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->serviceClass:I

    iget v8, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->result:I

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/telephony/ims/ImsSsData$Builder;-><init>(IIIII)V

    .line 435
    .local v2, "ssDataBuilder":Landroid/telephony/ims/ImsSsData$Builder;
    invoke-virtual {v2}, Landroid/telephony/ims/ImsSsData$Builder;->build()Landroid/telephony/ims/ImsSsData;

    move-result-object v3

    .line 438
    .local v3, "ssData":Landroid/telephony/ims/ImsSsData;
    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsData;->isTypeCf()Z

    move-result v4

    const-string v5, " : "

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsData;->isTypeInterrogation()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 439
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 440
    .local v4, "cfInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsCallForwardInfo;>;"
    iget-object v7, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->cfData:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    .line 441
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cfData is null, which is unexpected for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 442
    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 441
    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 444
    :cond_0
    iget-object v7, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->cfData:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lvendor/qti/hardware/radio/ims/V1_0/CfData;

    .line 445
    .local v6, "cfData":Lvendor/qti/hardware/radio/ims/V1_0/CfData;
    iget-object v7, v6, Lvendor/qti/hardware/radio/ims/V1_0/CfData;->cfInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 446
    .local v7, "num":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v7, :cond_1

    .line 447
    iget-object v9, v6, Lvendor/qti/hardware/radio/ims/V1_0/CfData;->cfInfo:Ljava/util/ArrayList;

    .line 448
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    .line 449
    .local v9, "rCfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    new-instance v15, Landroid/telephony/ims/ImsCallForwardInfo;

    iget v10, v9, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->reason:I

    .line 450
    invoke-static {v10}, Lorg/codeaurora/ims/ImsRadioUtils;->getCallForwardReasonFromSsData(I)I

    move-result v11

    iget v12, v9, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->status:I

    iget v13, v9, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->toa:I

    iget v14, v9, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->serviceClass:I

    iget-object v10, v9, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->number:Ljava/lang/String;

    move-object/from16 v17, v6

    .end local v6    # "cfData":Lvendor/qti/hardware/radio/ims/V1_0/CfData;
    .local v17, "cfData":Lvendor/qti/hardware/radio/ims/V1_0/CfData;
    iget v6, v9, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->timeSeconds:I

    move-object/from16 v16, v10

    move-object v10, v15

    move/from16 v18, v7

    move-object v7, v15

    .end local v7    # "num":I
    .local v18, "num":I
    move-object/from16 v15, v16

    move/from16 v16, v6

    invoke-direct/range {v10 .. v16}, Landroid/telephony/ims/ImsCallForwardInfo;-><init>(IIIILjava/lang/String;I)V

    .line 449
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SS Data] CF Info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    .end local v9    # "rCfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v6, v17

    move/from16 v7, v18

    goto :goto_0

    .end local v17    # "cfData":Lvendor/qti/hardware/radio/ims/V1_0/CfData;
    .end local v18    # "num":I
    .restart local v6    # "cfData":Lvendor/qti/hardware/radio/ims/V1_0/CfData;
    .restart local v7    # "num":I
    :cond_1
    move-object/from16 v17, v6

    move/from16 v18, v7

    .line 457
    .end local v6    # "cfData":Lvendor/qti/hardware/radio/ims/V1_0/CfData;
    .end local v7    # "num":I
    .end local v8    # "i":I
    :goto_1
    invoke-virtual {v2, v4}, Landroid/telephony/ims/ImsSsData$Builder;->setCallForwardingInfo(Ljava/util/List;)Landroid/telephony/ims/ImsSsData$Builder;

    .line 458
    .end local v4    # "cfInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsCallForwardInfo;>;"
    goto/16 :goto_6

    :cond_2
    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsData;->isTypeIcb()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsData;->isTypeInterrogation()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 459
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 460
    .local v4, "imsSsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    iget-object v6, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->cbNumInfo:Ljava/util/ArrayList;

    if-nez v6, :cond_3

    .line 461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cbNumInfo is null, which is unexpected for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 462
    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 461
    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 464
    :cond_3
    iget-object v6, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->cbNumInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 465
    .local v6, "num":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    if-ge v7, v6, :cond_4

    .line 466
    new-instance v8, Landroid/telephony/ims/ImsSsInfo$Builder;

    iget-object v9, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->cbNumInfo:Ljava/util/ArrayList;

    .line 467
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;

    iget v9, v9, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->status:I

    invoke-direct {v8, v9}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 469
    .local v8, "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    iget-object v9, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->cbNumInfo:Ljava/util/ArrayList;

    .line 470
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;

    iget-object v9, v9, Lvendor/qti/hardware/radio/ims/V1_0/CbNumInfo;->number:Ljava/lang/String;

    .line 469
    invoke-virtual {v8, v9}, Landroid/telephony/ims/ImsSsInfo$Builder;->setIncomingCommunicationBarringNumber(Ljava/lang/String;)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 471
    invoke-virtual {v8}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[SS Data] ICB Info "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    .end local v8    # "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 475
    .end local v6    # "num":I
    .end local v7    # "i":I
    :cond_4
    :goto_3
    invoke-virtual {v2, v4}, Landroid/telephony/ims/ImsSsData$Builder;->setSuppServiceInfo(Ljava/util/List;)Landroid/telephony/ims/ImsSsData$Builder;

    .line 476
    .end local v4    # "imsSsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    goto/16 :goto_6

    .line 483
    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .restart local v4    # "imsSsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    iget-object v5, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->ssInfoData:Ljava/util/ArrayList;

    if-nez v5, :cond_6

    .line 485
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "imsSsInfo is null, which is unexpected for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 486
    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsData;->getServiceType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 485
    invoke-static {v0, v5}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .line 488
    :cond_6
    iget-object v5, v1, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->ssInfoData:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/qti/hardware/radio/ims/V1_0/SsInfoData;

    .line 489
    .local v5, "ssInfoData":Lvendor/qti/hardware/radio/ims/V1_0/SsInfoData;
    iget-object v7, v5, Lvendor/qti/hardware/radio/ims/V1_0/SsInfoData;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 490
    .local v7, "num":I
    if-lez v7, :cond_9

    .line 491
    new-instance v8, Landroid/telephony/ims/ImsSsInfo$Builder;

    iget-object v9, v5, Lvendor/qti/hardware/radio/ims/V1_0/SsInfoData;->ssInfo:Ljava/util/ArrayList;

    .line 492
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v9}, Landroid/telephony/ims/ImsSsInfo$Builder;-><init>(I)V

    .line 493
    .restart local v8    # "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsData;->isTypeClir()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_7

    invoke-virtual {v3}, Landroid/telephony/ims/ImsSsData;->isTypeInterrogation()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 495
    iget-object v9, v5, Lvendor/qti/hardware/radio/ims/V1_0/SsInfoData;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirOutgoingState(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 496
    if-le v7, v10, :cond_8

    .line 497
    iget-object v6, v5, Lvendor/qti/hardware/radio/ims/V1_0/SsInfoData;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/telephony/ims/ImsSsInfo$Builder;->setClirInterrogationStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    goto :goto_4

    .line 499
    :cond_7
    if-le v7, v10, :cond_8

    .line 500
    iget-object v6, v5, Lvendor/qti/hardware/radio/ims/V1_0/SsInfoData;->ssInfo:Ljava/util/ArrayList;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/telephony/ims/ImsSsInfo$Builder;->setProvisionStatus(I)Landroid/telephony/ims/ImsSsInfo$Builder;

    .line 502
    :cond_8
    :goto_4
    invoke-virtual {v8}, Landroid/telephony/ims/ImsSsInfo$Builder;->build()Landroid/telephony/ims/ImsSsInfo;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    .end local v5    # "ssInfoData":Lvendor/qti/hardware/radio/ims/V1_0/SsInfoData;
    .end local v7    # "num":I
    .end local v8    # "imsSsInfoBuilder":Landroid/telephony/ims/ImsSsInfo$Builder;
    :cond_9
    :goto_5
    invoke-virtual {v2, v4}, Landroid/telephony/ims/ImsSsData$Builder;->setSuppServiceInfo(Ljava/util/List;)Landroid/telephony/ims/ImsSsData$Builder;

    .line 507
    .end local v4    # "imsSsInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/ims/ImsSsInfo;>;"
    :goto_6
    iget-object v4, v0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v4, v3}, Lorg/codeaurora/ims/IImsRadioIndication;->onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V

    .line 508
    return-void
.end method

.method public onTtyNotification(Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V
    .locals 4
    .param p1, "ttyInfo"    # Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    .line 247
    const-string v0, "onTtyNotification()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    if-nez p1, :cond_0

    .line 249
    const-string v0, "onTtyNotification: ttyInfo is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, p1, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->mode:I

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->ttyModeFromHal(I)I

    move-result v3

    aput v3, v1, v2

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onTtyNotification([I)V

    .line 254
    return-void
.end method

.method public onUssdMessageFailed(ILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "errorDetails"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUssdMessageFailed() type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 546
    const-string v0, ""

    invoke-static {p1, v0, p2}, Lorg/codeaurora/ims/ImsRadioUtils;->ussdInfoFromHal(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Lorg/codeaurora/ims/UssdInfo;

    move-result-object v0

    .line 547
    .local v0, "ussdInfo":Lorg/codeaurora/ims/UssdInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onUssdMessageFailed(Lorg/codeaurora/ims/UssdInfo;)V

    .line 548
    return-void
.end method

.method public onUssdReceived(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "errorDetails"    # Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUssdReceived() type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    invoke-static {p1, p2, p3}, Lorg/codeaurora/ims/ImsRadioUtils;->ussdInfoFromHal(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Lorg/codeaurora/ims/UssdInfo;

    move-result-object v0

    .line 562
    .local v0, "ussdInfo":Lorg/codeaurora/ims/UssdInfo;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onUssdReceived(Lorg/codeaurora/ims/UssdInfo;)V

    .line 563
    return-void
.end method

.method public onVoWiFiCallQuality(I)V
    .locals 2
    .param p1, "voWiFiCallQuality"    # I

    .line 422
    const-string v0, "onVoWiFiCallQuality()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->voWiFiCallQualityFromHal(I)[I

    move-result-object v0

    .line 424
    .local v0, "ret":[I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v1, v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onVoWiFiCallQuality([I)V

    .line 425
    return-void
.end method

.method public onVoiceInfoChanged(I)V
    .locals 2
    .param p1, "voiceInfo"    # I

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVoiceInfoChanged: VoiceInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->voiceInfoTypeFromHal(I)I

    move-result v1

    invoke-interface {v0, v1}, Lorg/codeaurora/ims/IImsRadioIndication;->onVoiceInfoChanged(I)V

    .line 418
    return-void
.end method

.method public onVopsChanged(Z)V
    .locals 1
    .param p1, "isVopsEnabled"    # Z

    .line 512
    const-string v0, "onVopsChanged()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioIndicationHidl;->mImsRadioIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0, p1}, Lorg/codeaurora/ims/IImsRadioIndication;->onVopsChanged(Z)V

    .line 514
    return-void
.end method
