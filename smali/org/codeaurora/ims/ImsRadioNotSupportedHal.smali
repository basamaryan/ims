.class public Lorg/codeaurora/ims/ImsRadioNotSupportedHal;
.super Ljava/lang/Object;
.source "ImsRadioNotSupportedHal.java"

# interfaces
.implements Lorg/codeaurora/ims/IImsRadio;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private fail()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Radio is not supported"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "deliverStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 89
    return-void
.end method

.method public acknowledgeSmsReport(III)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "statusReportStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 95
    return-void
.end method

.method public addParticipant(ILjava/lang/String;ILorg/codeaurora/ims/CallDetails;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "clirMode"    # I
    .param p4, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 47
    return-void
.end method

.method public answer(IIII)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callType"    # I
    .param p3, "ipPresentation"    # I
    .param p4, "rttMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 71
    return-void
.end method

.method public cancelModifyCall(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 144
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 145
    return-void
.end method

.method public cancelPendingUssd(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 65
    return-void
.end method

.method public conference(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 166
    return-void
.end method

.method public deflectCall(IILjava/lang/String;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "index"    # I
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 77
    return-void
.end method

.method public dial(ILjava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "eInfo"    # Lorg/codeaurora/ims/EmergencyCallInfo;
    .param p4, "clirMode"    # I
    .param p5, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p6, "isEncrypted"    # Z
    .param p7, "ccInfo"    # Lorg/codeaurora/ims/CallComposerInfo;
    .param p8, "redialInfo"    # Lorg/codeaurora/ims/RedialInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 55
    return-void
.end method

.method public dispose()V
    .locals 0

    .line 41
    return-void
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 256
    return-void
.end method

.method public exitSmsCallBackMode(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 325
    return-void
.end method

.method public explicitCallTransfer(IIILjava/lang/String;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "srcCallId"    # I
    .param p3, "type"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "destCallId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 172
    return-void
.end method

.method public getCallWaiting(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 220
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 221
    return-void
.end method

.method public getClip(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 246
    return-void
.end method

.method public getClir(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 211
    return-void
.end method

.method public getColr(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 268
    return-void
.end method

.method public getConfig(IIZILjava/lang/String;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "item"    # I
    .param p3, "boolValue"    # Z
    .param p4, "intValue"    # I
    .param p5, "strValue"    # Ljava/lang/String;
    .param p6, "errorCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 185
    return-void
.end method

.method public getImsRegistrationState(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 128
    return-void
.end method

.method public getImsSubConfig(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 288
    return-void
.end method

.method public getRtpErrorStatistics(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 283
    return-void
.end method

.method public getRtpStatistics(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 277
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 278
    return-void
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangup(IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "connectionId"    # I
    .param p3, "userUri"    # Ljava/lang/String;
    .param p4, "confUri"    # Ljava/lang/String;
    .param p5, "mpty"    # Z
    .param p6, "failCause"    # I
    .param p7, "errorInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 112
    return-void
.end method

.method public hold(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 156
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public isFeatureSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public modifyCallConfirm(ILorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 151
    return-void
.end method

.method public modifyCallInitiate(ILorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 140
    return-void
.end method

.method public queryCallForwardStatus(IIILjava/lang/String;Z)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "expectMore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 241
    return-void
.end method

.method public queryMultiSimVoiceCapability(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 320
    return-void
.end method

.method public queryServiceStatus(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 117
    return-void
.end method

.method public queryVirtualLineInfo(ILjava/lang/String;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 297
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 298
    return-void
.end method

.method public registerMultiIdentityLines(ILjava/util/Collection;)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    .local p2, "linesInfo":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 304
    return-void
.end method

.method public requestRegistrationChange(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "imsRegState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 134
    return-void
.end method

.method public resume(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 161
    return-void
.end method

.method public sendDtmf(IIC)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .param p3, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 190
    return-void
.end method

.method public sendGeolocationInfo(IDDLandroid/location/Address;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "lat"    # D
    .param p4, "lon"    # D
    .param p6, "address"    # Landroid/location/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 106
    return-void
.end method

.method public sendRttMessage(ILjava/lang/String;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 292
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 293
    return-void
.end method

.method public sendSipDtmf(ILjava/lang/String;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "requestCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 309
    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 83
    return-void
.end method

.method public sendUssd(ILjava/lang/String;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 60
    return-void
.end method

.method public setCallForwardStatus(IIIIIIIILjava/lang/String;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "startHour"    # I
    .param p3, "startMinute"    # I
    .param p4, "endHour"    # I
    .param p5, "endMinute"    # I
    .param p6, "action"    # I
    .param p7, "cfReason"    # I
    .param p8, "serviceClass"    # I
    .param p9, "number"    # Ljava/lang/String;
    .param p10, "timeSeconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 235
    return-void
.end method

.method public setCallWaiting(IZI)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 227
    return-void
.end method

.method public setClir(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "clirMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 216
    return-void
.end method

.method public setColr(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "presentationValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 272
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 273
    return-void
.end method

.method public setConfig(IIZILjava/lang/String;I)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "item"    # I
    .param p3, "boolValue"    # Z
    .param p4, "intValue"    # I
    .param p5, "strValue"    # Ljava/lang/String;
    .param p6, "errorCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 178
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 179
    return-void
.end method

.method public setMediaConfiguration(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "screenSize"    # Landroid/graphics/Point;
    .param p3, "avcSize"    # Landroid/graphics/Point;
    .param p4, "hevcSize"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 315
    return-void
.end method

.method public setServiceStatus(ILjava/util/List;I)V
    .locals 0
    .param p1, "token"    # I
    .param p3, "restrictCause"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/CapabilityStatus;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    .local p2, "capabilityStatusList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/CapabilityStatus;>;"
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 123
    return-void
.end method

.method public setSuppServiceNotification(IZ)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 206
    return-void
.end method

.method public setUiTtyMode(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "uiTtyMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 250
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 251
    return-void
.end method

.method public startDtmf(IIC)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .param p3, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 194
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 195
    return-void
.end method

.method public stopDtmf(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 200
    return-void
.end method

.method public suppServiceStatus(III[Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "operationType"    # I
    .param p3, "facility"    # I
    .param p4, "inCbNumList"    # [Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "serviceClass"    # I
    .param p7, "expectMore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;->fail()V

    .line 263
    return-void
.end method

.method public toAvailability(Z)Ljava/lang/String;
    .locals 1
    .param p1, "v"    # Z

    .line 329
    const/4 v0, 0x0

    return-object v0
.end method
