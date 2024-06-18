.class public Lvendor/qti/hardware/radio/ims/IImsRadio$Default;
.super Ljava/lang/Object;
.source "IImsRadio.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/IImsRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acknowledgeSms(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "smsInfo"    # Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    return-void
.end method

.method public acknowledgeSmsReport(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "smsReportInfo"    # Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    return-void
.end method

.method public addParticipant(ILvendor/qti/hardware/radio/ims/DialRequest;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "dialRequest"    # Lvendor/qti/hardware/radio/ims/DialRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public answer(ILvendor/qti/hardware/radio/ims/AnswerRequest;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "answerRequest"    # Lvendor/qti/hardware/radio/ims/AnswerRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public callComposerDial(ILvendor/qti/hardware/radio/ims/CallComposerDialRequest;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "dialRequest"    # Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 168
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

    .line 137
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

    .line 165
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

    .line 59
    return-void
.end method

.method public deflectCall(ILvendor/qti/hardware/radio/ims/DeflectRequestInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "deflectRequestInfo"    # Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public dial(ILvendor/qti/hardware/radio/ims/DialRequest;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "dialRequest"    # Lvendor/qti/hardware/radio/ims/DialRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public emergencyDial(ILvendor/qti/hardware/radio/ims/EmergencyDialRequest;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "dialRequest"    # Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 159
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

    .line 77
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

    .line 180
    return-void
.end method

.method public explicitCallTransfer(ILvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "ectInfo"    # Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
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

    .line 104
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

    .line 62
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

    .line 65
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

    .line 71
    return-void
.end method

.method public getConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "config"    # Lvendor/qti/hardware/radio/ims/ConfigInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
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

    .line 29
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

    .line 131
    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 187
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public getRtpErrorStatistics(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
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

    .line 119
    return-void
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public hangup(ILvendor/qti/hardware/radio/ims/HangupRequestInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "hangup"    # Lvendor/qti/hardware/radio/ims/HangupRequestInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
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

    .line 47
    return-void
.end method

.method public modifyCallConfirm(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callModifyInfo"    # Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    return-void
.end method

.method public modifyCallInitiate(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callModifyInfo"    # Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    return-void
.end method

.method public queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callForwardInfo"    # Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
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

    .line 177
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

    .line 41
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

    .line 156
    return-void
.end method

.method public registerMultiIdentityLines(I[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "info"    # [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    return-void
.end method

.method public requestRegistrationChange(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
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

    .line 50
    return-void
.end method

.method public sendDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "dtmfInfo"    # Lvendor/qti/hardware/radio/ims/DtmfInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public sendGeolocationInfo(ILvendor/qti/hardware/radio/ims/GeoLocationInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "geoLocationInfo"    # Lvendor/qti/hardware/radio/ims/GeoLocationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
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

    .line 134
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

    .line 171
    return-void
.end method

.method public sendSms(ILvendor/qti/hardware/radio/ims/SmsSendRequest;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "smsRequest"    # Lvendor/qti/hardware/radio/ims/SmsSendRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    return-void
.end method

.method public sendUssd(ILjava/lang/String;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "ussd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 162
    return-void
.end method

.method public setCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callForwardInfo"    # Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    return-void
.end method

.method public setCallWaiting(ILvendor/qti/hardware/radio/ims/CallWaitingInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "callWaitingInfo"    # Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public setCallback(Lvendor/qti/hardware/radio/ims/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/IImsRadioIndication;)V
    .locals 0
    .param p1, "imsRadioResponse"    # Lvendor/qti/hardware/radio/ims/IImsRadioResponse;
    .param p2, "imsRadioIndication"    # Lvendor/qti/hardware/radio/ims/IImsRadioIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public setClir(ILvendor/qti/hardware/radio/ims/ClirInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "clirInfo"    # Lvendor/qti/hardware/radio/ims/ClirInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public setColr(ILvendor/qti/hardware/radio/ims/ColrInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "colrInfo"    # Lvendor/qti/hardware/radio/ims/ColrInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public setConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "config"    # Lvendor/qti/hardware/radio/ims/ConfigInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public setMediaConfiguration(ILvendor/qti/hardware/radio/ims/MediaConfig;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "config"    # Lvendor/qti/hardware/radio/ims/MediaConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 174
    return-void
.end method

.method public setServiceStatus(I[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "srvStatusInfoList"    # [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public setSuppServiceNotification(II)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public setUiTtyMode(ILvendor/qti/hardware/radio/ims/TtyInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "ttyInfo"    # Lvendor/qti/hardware/radio/ims/TtyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method

.method public startDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "dtmfInfo"    # Lvendor/qti/hardware/radio/ims/DtmfInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public stopDtmf(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    return-void
.end method

.method public suppServiceStatus(ILvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "suppServiceStatusRequest"    # Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method
