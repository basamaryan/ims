.class public interface abstract Lorg/codeaurora/ims/IImsRadioResponse;
.super Ljava/lang/Object;
.source "IImsRadioResponse.java"


# virtual methods
.method public abstract exitSmsCallBackModeResponse(II)V
.end method

.method public abstract onAddParticipantResponse(II)V
.end method

.method public abstract onAnswerResponse(II)V
.end method

.method public abstract onCancelModifyCallResponse(II)V
.end method

.method public abstract onCancelPendingUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
.end method

.method public abstract onConferenceResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
.end method

.method public abstract onDeflectCallResponse(II)V
.end method

.method public abstract onDialResponse(II)V
.end method

.method public abstract onExitEmergencyCallbackModeResponse(II)V
.end method

.method public abstract onExplicitCallTransferResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
.end method

.method public abstract onGetCallWaitingResponse(II[I)V
.end method

.method public abstract onGetClipResponse(IILorg/codeaurora/ims/SuppService;)V
.end method

.method public abstract onGetClirResponse(II[I)V
.end method

.method public abstract onGetColrResponse(IILorg/codeaurora/ims/SuppService;)V
.end method

.method public abstract onGetConfigResponse(IILjava/lang/Object;)V
.end method

.method public abstract onGetImsSubConfigResponse(IILorg/codeaurora/ims/ImsSubConfigDetails;)V
.end method

.method public abstract onGetRegistrationResponse(IILorg/codeaurora/ims/ImsRegistrationInfo;)V
.end method

.method public abstract onGetRtpErrorStatisticsResponse(IIJ)V
.end method

.method public abstract onGetRtpStatisticsResponse(IIJ)V
.end method

.method public abstract onHangupResponse(II)V
.end method

.method public abstract onHoldResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
.end method

.method public abstract onModifyCallConfirmResponse(II)V
.end method

.method public abstract onModifyCallInitiateResponse(II)V
.end method

.method public abstract onQueryCallForwardStatusResponse(II[Lorg/codeaurora/ims/ImsCallForwardTimerInfo;)V
.end method

.method public abstract onQueryMultiSimVoiceCapabilityResponse(III)V
.end method

.method public abstract onQueryServiceStatusResponse(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ServiceStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onQueryVirtualLineInfoResponse(ILjava/lang/String;Lorg/codeaurora/ims/VirtualLineInfo;)V
.end method

.method public abstract onRegisterMultiIdentityLinesResponse(II)V
.end method

.method public abstract onRequestRegistrationChangeResponse(II)V
.end method

.method public abstract onResumeResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
.end method

.method public abstract onSendDtmfResponse(II)V
.end method

.method public abstract onSendGeolocationInfoResponse(II)V
.end method

.method public abstract onSendImsSmsResponse(ILorg/codeaurora/ims/sms/SmsResponse;)V
.end method

.method public abstract onSendRttMessageResponse(II)V
.end method

.method public abstract onSendSipDtmfResponse(II)V
.end method

.method public abstract onSendUssdResponse(IILandroid/telephony/ims/ImsReasonInfo;)V
.end method

.method public abstract onSetCallForwardStatusResponse(IILorg/codeaurora/ims/CallForwardStatusInfo;)V
.end method

.method public abstract onSetClirResponse(II)V
.end method

.method public abstract onSetConfigResponse(IILjava/lang/Object;)V
.end method

.method public abstract onSetMediaConfigurationResponse(II)V
.end method

.method public abstract onSetServiceStatusResponse(II)V
.end method

.method public abstract onSetSuppServiceNotificationResponse(III)V
.end method

.method public abstract onSetUiTTYModeResponse(II)V
.end method

.method public abstract onStartDtmfResponse(II)V
.end method

.method public abstract onStopDtmfResponse(II)V
.end method

.method public abstract onSuppServiceStatusResponse(IILorg/codeaurora/ims/SuppSvcResponse;)V
.end method
