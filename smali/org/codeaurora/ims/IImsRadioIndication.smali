.class public interface abstract Lorg/codeaurora/ims/IImsRadioIndication;
.super Ljava/lang/Object;
.source "IImsRadioIndication.java"


# virtual methods
.method public abstract onCallComposerInfoAvailable(ILorg/codeaurora/ims/CallComposerInfo;)V
.end method

.method public abstract onCallStateChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/DriverCallIms;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onCiWlanNotification(Z)V
.end method

.method public abstract onConferenceCallStateCompleted()V
.end method

.method public abstract onEnterEmergencyCallBackMode()V
.end method

.method public abstract onExitEmergencyCallBackMode()V
.end method

.method public abstract onGeolocationInfoRequested(Lorg/codeaurora/ims/GeoLocationInfo;)V
.end method

.method public abstract onHandover(Lorg/codeaurora/ims/HoInfo;)V
.end method

.method public abstract onImsSmsStatusReport(Lorg/codeaurora/ims/sms/StatusReport;)V
.end method

.method public abstract onImsSubConfigChanged(Lorg/codeaurora/ims/ImsSubConfigDetails;)V
.end method

.method public abstract onIncomingCallAutoRejected(Lorg/codeaurora/ims/DriverCallIms;)V
.end method

.method public abstract onIncomingDtmfStart(ILjava/lang/String;)V
.end method

.method public abstract onIncomingDtmfStop(ILjava/lang/String;)V
.end method

.method public abstract onIncomingImsSms(Lorg/codeaurora/ims/sms/IncomingSms;)V
.end method

.method public abstract onMessageWaiting(Lorg/codeaurora/ims/Mwi;)V
.end method

.method public abstract onModemSupportsWfcRoamingModeConfiguration(Z)V
.end method

.method public abstract onModifyCall(Lorg/codeaurora/ims/CallModify;)V
.end method

.method public abstract onMultiIdentityInfoPending()V
.end method

.method public abstract onMultiIdentityRegistrationStatusChange(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onMultiSimVoiceCapabilityChanged(I)V
.end method

.method public abstract onParticipantStatusInfo(Lorg/codeaurora/ims/ParticipantStatusDetails;)V
.end method

.method public abstract onPreAlertingCallInfoAvailable(Lorg/codeaurora/ims/PreAlertingCallInfo;)V
.end method

.method public abstract onRadioStateChanged(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V
.end method

.method public abstract onRefreshConferenceInfo(Lorg/codeaurora/ims/ConfInfo;)V
.end method

.method public abstract onRefreshViceInfo(Lorg/codeaurora/ims/ViceUriInfo;)V
.end method

.method public abstract onRegistrationBlockStatus(Lorg/codeaurora/ims/RegistrationBlockStatusInfo;)V
.end method

.method public abstract onRegistrationChanged(Lorg/codeaurora/ims/ImsRegistrationInfo;)V
.end method

.method public abstract onRetrievingGeoLocationDataStatus(I)V
.end method

.method public abstract onRing()V
.end method

.method public abstract onRingbackTone(Z)V
.end method

.method public abstract onRttMessageReceived(Ljava/lang/String;)V
.end method

.method public abstract onServiceDomainChanged(I)V
.end method

.method public abstract onServiceDown()V
.end method

.method public abstract onServiceStatusChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ServiceStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onServiceUp()V
.end method

.method public abstract onSipDtmfReceived(Ljava/lang/String;)V
.end method

.method public abstract onSmsCallBackModeChanged(I)V
.end method

.method public abstract onSuppServiceNotification(Lorg/codeaurora/ims/SuppNotifyInfo;)V
.end method

.method public abstract onSupplementaryServiceIndication(Landroid/telephony/ims/ImsSsData;)V
.end method

.method public abstract onTtyNotification([I)V
.end method

.method public abstract onUssdMessageFailed(Lorg/codeaurora/ims/UssdInfo;)V
.end method

.method public abstract onUssdReceived(Lorg/codeaurora/ims/UssdInfo;)V
.end method

.method public abstract onVoWiFiCallQuality([I)V
.end method

.method public abstract onVoiceInfoChanged(I)V
.end method

.method public abstract onVopsChanged(Z)V
.end method
