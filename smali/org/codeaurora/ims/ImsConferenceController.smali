.class public Lorg/codeaurora/ims/ImsConferenceController;
.super Ljava/lang/Object;
.source "ImsConferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;,
        Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;,
        Lorg/codeaurora/ims/ImsConferenceController$Listener;,
        Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;
    }
.end annotation


# static fields
.field private static final EVENT_CONFERENCE:I = 0x1

.field private static final EVENT_CONFERENCE_CALL_STATE_COMPLETED:I = 0x3

.field private static final EVENT_REFRESH_CONF_INFO:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "ImsConferenceController"


# instance fields
.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mConferenceResponseError:Landroid/telephony/ims/ImsReasonInfo;

.field private mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

.field private mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mImsServiceClassTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

.field private mIsConferenceCallStateCompleted:Z

.field private mIsConferenceResponseReceived:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsConferenceController$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mMergeHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;


# direct methods
.method static bridge synthetic -$$Nest$mhandleConferenceCompleted(Lorg/codeaurora/ims/ImsConferenceController;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConferenceController;->handleConferenceCompleted()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleConferenceResponse(Lorg/codeaurora/ims/ImsConferenceController;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->handleConferenceResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogi(Lorg/codeaurora/ims/ImsConferenceController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;)V
    .locals 4
    .param p1, "ci"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "serviceClassTracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mListeners:Ljava/util/List;

    .line 53
    sget-object v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->IDLE:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceCallStateCompleted:Z

    .line 55
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceResponseReceived:Z

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResponseError:Landroid/telephony/ims/ImsReasonInfo;

    .line 164
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 165
    iput-object p2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mContext:Landroid/content/Context;

    .line 166
    iput-object p3, p0, Lorg/codeaurora/ims/ImsConferenceController;->mImsServiceClassTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    .line 167
    new-instance v1, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;

    invoke-direct {v1, p0}, Lorg/codeaurora/ims/ImsConferenceController$ImsConferenceControllerHandler;-><init>(Lorg/codeaurora/ims/ImsConferenceController;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    .line 168
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->getInstance()Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsConferenceController;->registerListener(Lorg/codeaurora/ims/ImsConferenceController$Listener;)V

    .line 169
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRefreshConfInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 170
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForConferenceCallStateCompleted(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 172
    return-void
.end method

.method private getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 2
    .param p1, "state"    # I

    .line 400
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->shouldHaveTransientSession:Z

    if-eqz v0, :cond_0

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallSessionWithMptyBitSet session = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-object v0

    .line 405
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mImsServiceClassTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    return-object v0
.end method

.method private handleConferenceCompleted()V
    .locals 1

    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceCallStateCompleted:Z

    .line 481
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceResponseReceived:Z

    if-nez v0, :cond_0

    .line 483
    return-void

    .line 486
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->handleConferenceResult()V

    .line 487
    return-void
.end method

.method private handleConferenceResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 460
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceResponseReceived:Z

    .line 461
    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->getImsReasonInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResponseError:Landroid/telephony/ims/ImsReasonInfo;

    .line 465
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->isFeatureSupported(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 466
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->handleConferenceResult()V

    .line 467
    return-void

    .line 470
    :cond_2
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceCallStateCompleted:Z

    if-nez v0, :cond_3

    .line 472
    return-void

    .line 475
    :cond_3
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->handleConferenceResult()V

    .line 476
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 499
    const-string v0, "ImsConferenceController"

    invoke-static {v0, p1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 511
    const-string v0, "ImsConferenceController"

    invoke-static {v0, p1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 495
    const-string v0, "ImsConferenceController"

    invoke-static {v0, p1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 503
    const-string v0, "ImsConferenceController"

    invoke-static {v0, p1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 507
    const-string v0, "ImsConferenceController"

    invoke-static {v0, p1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method private notifyConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V
    .locals 2
    .param p1, "conferenceState"    # Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;
    .param p2, "isSuccess"    # Z

    .line 155
    const-string v0, "notifyConferenceStateChanged"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logv(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsConferenceController$Listener;

    .line 157
    .local v1, "listener":Lorg/codeaurora/ims/ImsConferenceController$Listener;
    invoke-interface {v1, p1, p2}, Lorg/codeaurora/ims/ImsConferenceController$Listener;->onConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V

    .line 158
    .end local v1    # "listener":Lorg/codeaurora/ims/ImsConferenceController$Listener;
    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method private processConferenceResult()V
    .locals 4

    .line 235
    const-string v0, "Conference response received. Processing final result."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    .line 242
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 243
    .local v0, "activeCs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 247
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-boolean v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->shouldHaveTransientSession:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v2, :cond_0

    .line 249
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getConfInfo()Lorg/codeaurora/ims/parser/ConfInfo;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setConfInfo(Lorg/codeaurora/ims/parser/ConfInfo;)V

    .line 252
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iput-object v0, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 254
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-boolean v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->shouldHaveTransientSession:Z

    if-eqz v2, :cond_1

    .line 255
    const-string v2, "Setting mIsConferenceHostSession to true"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConferenceController;->logv(Ljava/lang/String;)V

    .line 256
    iput-boolean v1, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 266
    :cond_1
    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 267
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iput-object v3, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->heldCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 273
    :cond_2
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-boolean v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->shouldHaveTransientSession:Z

    if-eqz v2, :cond_3

    .line 274
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mMergeHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMergeComplete(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 282
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 283
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isImsCallSessionAlive()Z

    move-result v2

    if-nez v2, :cond_4

    .line 284
    const-string v2, "processConferenceResult: close conf host session"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    .line 285
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->close()V

    goto :goto_0

    .line 288
    :cond_3
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mMergeHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMergeComplete(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 292
    :cond_4
    :goto_0
    sget-object v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->COMPLETED:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    iput-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    .line 293
    sget-object v2, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->COMPLETED:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    invoke-direct {p0, v2, v1}, Lorg/codeaurora/ims/ImsConferenceController;->notifyConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V

    .line 296
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->cleanupConferenceAttempt()V

    .line 297
    return-void
.end method


# virtual methods
.method cleanupConferenceAttempt()V
    .locals 2

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mMergeHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 210
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    .line 211
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceCallStateCompleted:Z

    .line 212
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mIsConferenceResponseReceived:Z

    .line 213
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResponseError:Landroid/telephony/ims/ImsReasonInfo;

    .line 214
    sget-object v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->IDLE:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    .line 215
    sget-object v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->IDLE:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsConferenceController;->notifyConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V

    .line 216
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 175
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsMedia;->getInstance()Lcom/qualcomm/ims/vt/ImsMedia;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->unregisterListener(Lorg/codeaurora/ims/ImsConferenceController$Listener;)Z

    .line 176
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForRefreshConfInfo(Landroid/os/Handler;)V

    .line 177
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForConferenceCallStateCompleted(Landroid/os/Handler;)V

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    .line 179
    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mContext:Landroid/content/Context;

    .line 180
    return-void
.end method

.method public getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3
    .param p1, "state"    # Lorg/codeaurora/ims/DriverCallIms$State;

    .line 410
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mImsServiceClassTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 411
    const-string v0, "getCallSessionByState: ImsServiceClassTracker is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 412
    return-object v1

    .line 415
    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 417
    .local v0, "csList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 418
    const-string v2, "getCallSessionByState: there are no call sessions"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 419
    return-object v1

    .line 422
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-object v1
.end method

.method public getConferenceState()Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 491
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleConferenceResult()V
    .locals 2

    .line 220
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResponseError:Landroid/telephony/ims/ImsReasonInfo;

    if-eqz v0, :cond_0

    .line 224
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mMergeHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 225
    sget-object v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->COMPLETED:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    .line 226
    sget-object v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->COMPLETED:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsConferenceController;->notifyConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V

    .line 227
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->cleanupConferenceAttempt()V

    .line 228
    return-void

    .line 231
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsConferenceController;->processConferenceResult()V

    .line 232
    return-void
.end method

.method public handleRefreshConfInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 356
    const-string v0, "handleRefreshConfInfo"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    .line 358
    if-nez p1, :cond_0

    .line 359
    const-string v0, "handleRefreshConfInfo: AsyncResult is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 360
    return-void

    .line 363
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRefreshConfInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 365
    return-void

    .line 368
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 369
    const-string v0, "handleRefreshConfInfo: ConfInfo is null"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 370
    return-void

    .line 373
    :cond_2
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ConfInfo;

    .line 374
    .local v0, "confRefreshInfo":Lorg/codeaurora/ims/ConfInfo;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ConfInfo;->getConfInfoUri()[B

    move-result-object v1

    .line 375
    .local v1, "confInfoBytes":[B
    invoke-virtual {v0}, Lorg/codeaurora/ims/ConfInfo;->getConfCallState()I

    move-result v2

    .line 376
    .local v2, "confCallState":I
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq v2, v3, :cond_3

    move v3, v2

    goto :goto_0

    :cond_3
    move v3, v4

    .line 377
    .local v3, "state":I
    :goto_0
    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v5

    .line 379
    .local v5, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v1, :cond_5

    array-length v6, v1

    if-lt v6, v4, :cond_5

    if-nez v5, :cond_4

    goto :goto_1

    .line 385
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleRefreshConfInfo: confCallState = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", callSession = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    .line 394
    invoke-virtual {v5, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyConfInfo([B)V

    .line 395
    return-void

    .line 380
    :cond_5
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleRefreshConfInfo: confInfoBytes: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " state: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " CallSession: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method public isInProgress()Z
    .locals 2

    .line 130
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    sget-object v1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->PROGRESS:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public mayBeUpdateMultipartyState(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V
    .locals 2
    .param p1, "cs"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "isMultiParty"    # Z

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mayBeUpdateMultipartyState : CallSession isMpty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultipartyCall()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isMultiParty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logv(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultipartyCall()Z

    move-result v0

    if-ne v0, p2, :cond_0

    .line 145
    const-string v0, "mayBeUpdateMultipartyState : no change in mpty"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logv(Ljava/lang/String;)V

    .line 146
    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsConferenceController$Listener;

    .line 150
    .local v1, "listener":Lorg/codeaurora/ims/ImsConferenceController$Listener;
    invoke-interface {v1, p2}, Lorg/codeaurora/ims/ImsConferenceController$Listener;->onConferenceParticipantStateChanged(Z)V

    .line 151
    .end local v1    # "listener":Lorg/codeaurora/ims/ImsConferenceController$Listener;
    goto :goto_0

    .line 152
    :cond_1
    return-void
.end method

.method public processNewMptyCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p1, "cs"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 190
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getConfInfo()Lorg/codeaurora/ims/parser/ConfInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setConfInfo(Lorg/codeaurora/ims/parser/ConfInfo;)V

    .line 197
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v0, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->reportNewConferenceCallSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 198
    const/4 v0, 0x0

    return v0

    .line 192
    :cond_1
    :goto_0
    const-string v0, "processNewMptyCall: callSession is phantom conference call"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logd(Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsConferenceController$Listener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsConferenceController$Listener;

    .line 90
    if-eqz p1, :cond_1

    .line 94
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_0
    const-string v0, "registerListener :: duplicate Listener!"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logw(Ljava/lang/String;)V

    .line 99
    :goto_0
    return-void

    .line 91
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sendConferenceRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 4
    .param p1, "hostSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Conference request being requested by session = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->logi(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 303
    const-string v0, "sendConferenceRequest: in middle of merge process, ignore."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 304
    return-void

    .line 307
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;-><init>(Lorg/codeaurora/ims/ImsConferenceController;Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult-IA;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    .line 308
    iput-object p1, v0, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->confHostCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 314
    iget-object v0, p1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mMergeHostListener:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 318
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 319
    .local v0, "cs":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-nez v0, :cond_1

    .line 320
    const-string v1, "sendConferenceRequest: there is no ACTIVE call session"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->cleanupConferenceAttempt()V

    .line 322
    return-void

    .line 324
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iput-object v0, v1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 327
    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsConferenceController;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 328
    if-nez v0, :cond_2

    .line 329
    const-string v1, "sendConferenceRequest: there is no HOLD call session"

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConferenceController;->loge(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsConferenceController;->cleanupConferenceAttempt()V

    .line 331
    return-void

    .line 333
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iput-object v0, v1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->heldCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 336
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->activeCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-boolean v1, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->heldCall:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-boolean v1, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    if-eqz v1, :cond_4

    .line 338
    :cond_3
    const-string v1, "sendConferenceRequest: Setting should have transient session to false "

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsConferenceController;->logv(Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceResult:Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;

    iput-boolean v2, v1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceResult;->shouldHaveTransientSession:Z

    .line 342
    :cond_4
    sget-object v1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->PROGRESS:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    iput-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mConferenceState:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    .line 345
    sget-object v1, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->PROGRESS:Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;

    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsConferenceController;->notifyConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V

    .line 348
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConferenceController;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConferenceController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->conference(Landroid/os/Message;)V

    .line 349
    return-void
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsConferenceController$Listener;)Z
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsConferenceController$Listener;

    .line 109
    if-eqz p1, :cond_0

    .line 113
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConferenceController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
