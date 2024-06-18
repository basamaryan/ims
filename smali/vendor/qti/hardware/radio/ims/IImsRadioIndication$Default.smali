.class public Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Default;
.super Ljava/lang/Object;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/IImsRadioIndication;
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
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 156
    const-string v0, ""

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public onCallComposerInfoAvailable(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/qti/hardware/radio/ims/CallComposerInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    return-void
.end method

.method public onCallStateChanged([Lvendor/qti/hardware/radio/ims/CallInfo;)V
    .locals 0
    .param p1, "callList"    # [Lvendor/qti/hardware/radio/ims/CallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 20
    return-void
.end method

.method public onCiWlanNotification(I)V
    .locals 0
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    return-void
.end method

.method public onConferenceCallStateCompleted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    return-void
.end method

.method public onEmergencyCallBackModeChanged(I)V
    .locals 0
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    return-void
.end method

.method public onGeolocationInfoRequested(DD)V
    .locals 0
    .param p1, "lat"    # D
    .param p3, "lon"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 62
    return-void
.end method

.method public onHandover(Lvendor/qti/hardware/radio/ims/HandoverInfo;)V
    .locals 0
    .param p1, "handover"    # Lvendor/qti/hardware/radio/ims/HandoverInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 32
    return-void
.end method

.method public onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V
    .locals 0
    .param p1, "config"    # Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 65
    return-void
.end method

.method public onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)V
    .locals 0
    .param p1, "autoCallRejectionInfo"    # Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    return-void
.end method

.method public onIncomingCallAutoRejected2(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;)V
    .locals 0
    .param p1, "autoCallRejectionInfo"    # Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 146
    return-void
.end method

.method public onIncomingCallComposerCallAutoRejected(Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;)V
    .locals 0
    .param p1, "autoRejectionInfo"    # Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 116
    return-void
.end method

.method public onIncomingDtmfStart(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V
    .locals 0
    .param p1, "dtmfInfo"    # Lvendor/qti/hardware/radio/ims/DtmfInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    return-void
.end method

.method public onIncomingDtmfStop(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V
    .locals 0
    .param p1, "dtmfInfo"    # Lvendor/qti/hardware/radio/ims/DtmfInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    return-void
.end method

.method public onIncomingSms(Lvendor/qti/hardware/radio/ims/IncomingSms;)V
    .locals 0
    .param p1, "imsSms"    # Lvendor/qti/hardware/radio/ims/IncomingSms;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    return-void
.end method

.method public onMessageWaiting(Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;)V
    .locals 0
    .param p1, "messageWaitingIndication"    # Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 59
    return-void
.end method

.method public onModemSupportsWfcRoamingModeConfiguration(Z)V
    .locals 0
    .param p1, "wfcRoamingConfigurationSupport"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 104
    return-void
.end method

.method public onModifyCall(Lvendor/qti/hardware/radio/ims/CallModifyInfo;)V
    .locals 0
    .param p1, "callModifyInfo"    # Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    return-void
.end method

.method public onMultiIdentityInfoPending()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 101
    return-void
.end method

.method public onMultiIdentityRegistrationStatusChange([Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V
    .locals 0
    .param p1, "info"    # [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    return-void
.end method

.method public onMultiSimVoiceCapabilityChanged(I)V
    .locals 0
    .param p1, "voiceCapability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 140
    return-void
.end method

.method public onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;)V
    .locals 0
    .param p1, "participantStatusInfo"    # Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 68
    return-void
.end method

.method public onPreAlertingCallInfoAvailable(Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;)V
    .locals 0
    .param p1, "info"    # Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    return-void
.end method

.method public onRadioStateChanged(I)V
    .locals 0
    .param p1, "radioState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    return-void
.end method

.method public onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/ConferenceInfo;)V
    .locals 0
    .param p1, "conferenceInfo"    # Lvendor/qti/hardware/radio/ims/ConferenceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    return-void
.end method

.method public onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/ViceInfo;)V
    .locals 0
    .param p1, "viceInfo"    # Lvendor/qti/hardware/radio/ims/ViceInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    return-void
.end method

.method public onRegistrationBlockStatus(Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;)V
    .locals 0
    .param p1, "blockStatusInfo"    # Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 71
    return-void
.end method

.method public onRegistrationChanged(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)V
    .locals 0
    .param p1, "registration"    # Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    return-void
.end method

.method public onRetrievingGeoLocationDataStatus(I)V
    .locals 0
    .param p1, "geoLocationDataStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 119
    return-void
.end method

.method public onRing()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 23
    return-void
.end method

.method public onRingbackTone(I)V
    .locals 0
    .param p1, "tone"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    return-void
.end method

.method public onRttMessageReceived(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public onServiceDomainChanged(I)V
    .locals 0
    .param p1, "domain"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    return-void
.end method

.method public onServiceStatusChanged([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V
    .locals 0
    .param p1, "srvStatusList"    # [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    return-void
.end method

.method public onSipDtmfReceived(Ljava/lang/String;)V
    .locals 0
    .param p1, "configCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 122
    return-void
.end method

.method public onSmsCallBackModeChanged(I)V
    .locals 0
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 128
    return-void
.end method

.method public onSmsSendStatusReport(Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;)V
    .locals 0
    .param p1, "smsStatusReport"    # Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 83
    return-void
.end method

.method public onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/SuppServiceNotification;)V
    .locals 0
    .param p1, "suppServiceNotification"    # Lvendor/qti/hardware/radio/ims/SuppServiceNotification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    return-void
.end method

.method public onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;)V
    .locals 0
    .param p1, "ss"    # Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    return-void
.end method

.method public onTtyNotification(Lvendor/qti/hardware/radio/ims/TtyInfo;)V
    .locals 0
    .param p1, "ttyInfo"    # Lvendor/qti/hardware/radio/ims/TtyInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    return-void
.end method

.method public onUssdMessageFailed(ILvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public onUssdReceived(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "errorDetails"    # Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 110
    return-void
.end method

.method public onVoWiFiCallQuality(I)V
    .locals 0
    .param p1, "voWiFiCallQualityInfo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    return-void
.end method

.method public onVoiceInfoChanged(I)V
    .locals 0
    .param p1, "voiceInfo"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 95
    return-void
.end method

.method public onVopsChanged(Z)V
    .locals 0
    .param p1, "isVopsEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 89
    return-void
.end method
