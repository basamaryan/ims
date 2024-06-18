.class public Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;
.super Ljava/lang/Object;
.source "ImsCallSessionCallbackHandler.java"


# instance fields
.field private mCallbackHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field public mListener:Landroid/telephony/ims/ImsCallSessionListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "Constructor: start handler thread for callbacks."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 51
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mCallbackHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V
    .locals 2
    .param p1, "copyFrom"    # Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "Copy Constructor: Pass the thread and callback handler refs."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v0, p1, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    .line 58
    new-instance v0, Landroid/os/HandlerThread;

    const-class v1, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 59
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mCallbackHandler:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method private cleanup()V
    .locals 1

    .line 546
    const-string v0, "cleanup"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 548
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mHandlerThread:Landroid/os/HandlerThread;

    .line 550
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mCallbackHandler:Landroid/os/Handler;

    .line 552
    :cond_0
    return-void
.end method

.method private postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 555
    const-string v0, "posting to handler"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mCallbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 559
    :cond_0
    const-string v0, "Handler is null. Can\'t post runnable!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    :goto_0
    return-void
.end method


# virtual methods
.method public callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 1
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 400
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda27;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda27;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsConferenceState;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 412
    return-void
.end method

.method public callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 130
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda25;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda25;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;IILandroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 142
    return-void
.end method

.method public callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 146
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda26;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;IILandroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 159
    return-void
.end method

.method public callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 192
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda18;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda18;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsCallProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method public callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 205
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda13;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 215
    return-void
.end method

.method public callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 218
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda9;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsCallProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method

.method public callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 77
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda16;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsCallProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 87
    return-void
.end method

.method public callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 64
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda22;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda22;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsCallProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method public callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 90
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda17;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda17;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 100
    return-void
.end method

.method public callSessionInviteParticipantsRequestDelivered()V
    .locals 1

    .line 367
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda3;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 379
    return-void
.end method

.method public callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 382
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda5;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 394
    return-void
.end method

.method public callSessionMayHandover(II)V
    .locals 1
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I

    .line 162
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda12;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;II)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public callSessionMergeComplete(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 1
    .param p1, "activeCallSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 298
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda0;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 308
    return-void
.end method

.method public callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 317
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda28;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda28;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method

.method public callSessionMergeStarted(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "newSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 278
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda7;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method public callSessionMultipartyStateChanged(Z)V
    .locals 1
    .param p1, "isMultiParty"    # Z

    .line 420
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda4;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Z)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 431
    return-void
.end method

.method public callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 103
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda1;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 244
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda14;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 254
    return-void
.end method

.method public callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 257
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda15;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsCallProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 267
    return-void
.end method

.method public callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 231
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda29;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda29;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsCallProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 241
    return-void
.end method

.method public callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 473
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda20;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 483
    return-void
.end method

.method public callSessionRttMessageReceived(Ljava/lang/String;)V
    .locals 1
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 447
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda6;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 457
    return-void
.end method

.method public callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 460
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda21;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsCallProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 470
    return-void
.end method

.method public callSessionRttModifyResponseReceived(I)V
    .locals 1
    .param p1, "status"    # I

    .line 434
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda19;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda19;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;I)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 444
    return-void
.end method

.method public callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 1
    .param p1, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 350
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda31;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda31;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsSuppServiceNotification;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method

.method public callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 116
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda11;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 126
    return-void
.end method

.method public callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 510
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda8;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsReasonInfo;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 520
    return-void
.end method

.method public callSessionTransferred()V
    .locals 1

    .line 526
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda2;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 536
    return-void
.end method

.method public callSessionTtyModeReceived(I)V
    .locals 1
    .param p1, "ttyMode"    # I

    .line 176
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda23;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda23;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;I)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method

.method public callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 333
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda30;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda30;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Landroid/telephony/ims/ImsCallProfile;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 343
    return-void
.end method

.method public callSessionUssdMessageReceived(ILjava/lang/String;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 492
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda24;

    invoke-direct {v0, p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda24;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 502
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 539
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda10;-><init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->postRunnable(Ljava/lang/Runnable;)V

    .line 543
    return-void
.end method

.method synthetic lambda$callSessionConferenceStateUpdated$22$org-codeaurora-ims-ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 3
    .param p1, "state"    # Landroid/telephony/ims/ImsConferenceState;

    .line 401
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionConferenceStateUpdated :: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionConferenceStateUpdated :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :goto_0
    goto :goto_1

    .line 409
    :cond_0
    const-string v0, "callSessionConferenceStateUpdated :: listener null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 411
    :goto_1
    return-void
.end method

.method synthetic lambda$callSessionHandover$5$org-codeaurora-ims-ImsCallSessionCallbackHandler(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 131
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionHandover :: srcAccessTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetAccessTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    goto :goto_0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHandover :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionHandoverFailed$6$org-codeaurora-ims-ImsCallSessionCallbackHandler(IILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I
    .param p3, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 147
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionHandoverFailed :: srcAccessTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetAccessTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1, p2, p3}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHandoverFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionHeld$9$org-codeaurora-ims-ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 193
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionHeld :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHeld :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionHoldFailed$10$org-codeaurora-ims-ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 206
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionHoldFailed :: reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionHoldReceived$11$org-codeaurora-ims-ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 219
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionHoldReceived :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionHoldReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionInitiated$1$org-codeaurora-ims-ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 78
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionInitiated :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInitiated :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionInitiating$0$org-codeaurora-ims-ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 65
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionInitiating :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInitiating :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionInitiatingFailed$2$org-codeaurora-ims-ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 91
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionInitiatingFailed :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInitiatingFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionInviteParticipantsRequestDelivered$20$org-codeaurora-ims-ImsCallSessionCallbackHandler()V
    .locals 3

    .line 368
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 369
    const-string v0, "callSessionInviteParticipantsRequestDelivered"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInviteParticipantsRequestDelivered()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .line 373
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInviteParticipantsRequestDelivered :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionInviteParticipantsRequestFailed$21$org-codeaurora-ims-ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 383
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionInviteParticipantsRequestFailed reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionInviteParticipantsRequestFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionInviteParticipantsRequestFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionMayHandover$7$org-codeaurora-ims-ImsCallSessionCallbackHandler(II)V
    .locals 3
    .param p1, "srcAccessTech"    # I
    .param p2, "targetAccessTech"    # I

    .line 163
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionMayHandover :: srcAccessTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetAccessTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMayHandover(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMayHandover :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionMergeComplete$16$org-codeaurora-ims-ImsCallSessionCallbackHandler(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "activeCallSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 299
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionMergeComplete :: activeCallSession ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeComplete(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeComplete :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionMergeFailed$17$org-codeaurora-ims-ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 318
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionMergeFailed :: reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionMergeStarted$15$org-codeaurora-ims-ImsCallSessionCallbackHandler(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "newSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 279
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionMergeStarted :: newSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMergeStarted(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMergeStarted :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionMultipartyStateChanged$23$org-codeaurora-ims-ImsCallSessionCallbackHandler(Z)V
    .locals 3
    .param p1, "isMultiParty"    # Z

    .line 421
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionMultipartyStateChanged :: isMultiParty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionMultipartyStateChanged(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionMultipartyStateChanged :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionProgressing$3$org-codeaurora-ims-ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 104
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionProgressing :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionProgressing :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionResumeFailed$13$org-codeaurora-ims-ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 245
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionResumeFailed :: reasonInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionResumeReceived$14$org-codeaurora-ims-ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 258
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionResumeReceived :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    goto :goto_0

    .line 262
    :catch_0
    move-exception v0

    .line 263
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumeReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 266
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionResumed$12$org-codeaurora-ims-ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 232
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionResumed :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionResumed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionRttAudioIndicatorChanged$27$org-codeaurora-ims-ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 474
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionRttAudioIndicatorChanged :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 477
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    goto :goto_0

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRttAudioIndicatorChanged :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionRttMessageReceived$25$org-codeaurora-ims-ImsCallSessionCallbackHandler(Ljava/lang/String;)V
    .locals 3
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 448
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionRttMessageReceived :: rttMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 451
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttMessageReceived(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    goto :goto_0

    .line 452
    :catch_0
    move-exception v0

    .line 453
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRttMessageReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionRttModifyRequestReceived$26$org-codeaurora-ims-ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 461
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionRttModifyRequestReceived :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    goto :goto_0

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRttModifyRequestReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionRttModifyResponseReceived$24$org-codeaurora-ims-ImsCallSessionCallbackHandler(I)V
    .locals 3
    .param p1, "status"    # I

    .line 435
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionRttModifyResponseReceived :: status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionRttModifyResponseReceived(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    .line 440
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionRttModifyResponseReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 443
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionSuppServiceReceived$19$org-codeaurora-ims-ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    .locals 3
    .param p1, "suppServiceInfo"    # Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 351
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionSuppServiceReceived :: suppServiceInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 358
    goto :goto_0

    .line 356
    :catch_0
    move-exception v0

    .line 357
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionSuppServiceReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionTerminated$4$org-codeaurora-ims-ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reason"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 117
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionTerminated :: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    goto :goto_0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTerminated :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionTransferFailed$29$org-codeaurora-ims-ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3
    .param p1, "reasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 511
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionTransferFailed :: reasonInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTransferFailed(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    goto :goto_0

    .line 515
    :catch_0
    move-exception v0

    .line 516
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTransferFailed :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 519
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionTransferred$30$org-codeaurora-ims-ImsCallSessionCallbackHandler()V
    .locals 3

    .line 527
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 528
    const-string v0, "callSessionTransferred. "

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTransferred()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    .line 532
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTransferred :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionTtyModeReceived$8$org-codeaurora-ims-ImsCallSessionCallbackHandler(I)V
    .locals 3
    .param p1, "ttyMode"    # I

    .line 177
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionTtyModeReceived :: ttyMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 180
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionTtyModeReceived(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionTtyModeReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionUpdated$18$org-codeaurora-ims-ImsCallSessionCallbackHandler(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 334
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionUpdated :: profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 337
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUpdated :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$callSessionUssdMessageReceived$28$org-codeaurora-ims-ImsCallSessionCallbackHandler(ILjava/lang/String;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .line 493
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    if-eqz v0, :cond_0

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callSessionUssdMessageReceived :: mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->mListener:Landroid/telephony/ims/ImsCallSessionListener;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/ImsCallSessionListener;->callSessionUssdMessageReceived(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    .local v0, "r":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callSessionUssdMessageReceived :: RuntimeException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    .end local v0    # "r":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method synthetic lambda$dispose$31$org-codeaurora-ims-ImsCallSessionCallbackHandler()V
    .locals 1

    .line 540
    const-string v0, "dispose"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->cleanup()V

    .line 542
    return-void
.end method
