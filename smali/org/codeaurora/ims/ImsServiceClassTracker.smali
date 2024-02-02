.class public Lorg/codeaurora/ims/ImsServiceClassTracker;
.super Ljava/lang/Object;
.source "ImsServiceClassTracker.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final CONF_URI_DC_NUMBER:Ljava/lang/String; = "Conference Call"

.field private static sToken:I


# instance fields
.field private final EVENT_CLOSE_ALL_SESSIONS:I

.field private final EVENT_INCOMING_DTMF_START:I

.field private final EVENT_INCOMING_DTMF_STOP:I

.field private final mCallList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mCallListListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ICallListListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCallListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsVideoSupported:Z

.field private mIsVoiceSupported:Z

.field private final mPendingSessionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mPreAlertingCallTokenList:Landroid/util/SparseIntArray;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

.field private mUssdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/ImsUssdSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mUssdListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const/4 v0, -0x1

    sput v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->sToken:I

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;)V
    .locals 1
    .param p1, "ci"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;

    .line 101
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/Looper;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceSub;Landroid/os/Looper;)V
    .locals 5
    .param p1, "ci"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p4, "looper"    # Landroid/os/Looper;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 73
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    .line 74
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    .line 82
    const/4 v1, 0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->EVENT_INCOMING_DTMF_START:I

    .line 83
    const/4 v2, 0x2

    iput v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->EVENT_INCOMING_DTMF_STOP:I

    .line 84
    const/4 v3, 0x3

    iput v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->EVENT_CLOSE_ALL_SESSIONS:I

    .line 86
    new-instance v3, Lorg/codeaurora/ims/ImsServiceClassTracker$1;

    invoke-direct {v3, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker$1;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;

    .line 93
    new-instance v3, Lorg/codeaurora/ims/ImsServiceClassTracker$2;

    invoke-direct {v3, p0}, Lorg/codeaurora/ims/ImsServiceClassTracker$2;-><init>(Lorg/codeaurora/ims/ImsServiceClassTracker;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;

    .line 108
    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 109
    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    .line 110
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    .line 113
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    .line 114
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPreAlertingCallTokenList:Landroid/util/SparseIntArray;

    .line 115
    iput-object p3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 116
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, p4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mHandler:Landroid/os/Handler;

    .line 117
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {v4, v3, v1, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForIncomingDtmfStart(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 118
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3, v2, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForIncomingDtmfStop(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 119
    return-void
.end method

.method private addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V
    .locals 3
    .param p1, "id"    # Ljava/lang/Integer;
    .param p2, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p3, "notify"    # Z

    .line 758
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 759
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 761
    if-eqz p3, :cond_0

    .line 762
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 764
    :cond_0
    return-void

    .line 760
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private broadcastPreAlertingCallIntent(I)V
    .locals 1
    .param p1, "token"    # I

    .line 854
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->broadcastPreAlertingCallIntent(Lorg/codeaurora/ims/PreAlertingCallInfo;I)V

    .line 855
    return-void
.end method

.method private broadcastPreAlertingCallIntent(Lorg/codeaurora/ims/PreAlertingCallInfo;I)V
    .locals 5
    .param p1, "info"    # Lorg/codeaurora/ims/PreAlertingCallInfo;
    .param p2, "token"    # I

    .line 858
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.PRE_ALERTING_CALL_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 859
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_PRE_ALERTING_CALL_TOKEN:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 860
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getPhoneId()I

    move-result v1

    const-string v2, "pre_alerting_call_phoneId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 862
    if-nez p1, :cond_0

    .line 863
    const-string v1, "broadcastPreAlertingCallIntent for end state"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 864
    sget-object v1, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_PRE_ALERTING_CALL_ENDED:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1

    .line 867
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getCallComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/utils/CallComposerInfoUtils;->toBundle(Lorg/codeaurora/ims/CallComposerInfo;)Landroid/os/Bundle;

    move-result-object v1

    .line 868
    .local v1, "ccExtra":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 869
    sget-object v2, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_CALL_COMPOSER_INFO:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 873
    :cond_1
    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codeaurora/ims/EcnamInfo;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 874
    .local v2, "ecnamExtra":Landroid/os/Bundle;
    :goto_0
    if-eqz v2, :cond_3

    .line 875
    sget-object v3, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_CALL_ECNAM:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 877
    :cond_3
    nop

    .line 878
    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getModemCallId()I

    move-result v3

    .line 877
    const-string v4, "modemCallId"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 879
    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getIsDcCall()Z

    move-result v3

    const-string v4, "isDcCall"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 882
    .end local v1    # "ccExtra":Landroid/os/Bundle;
    .end local v2    # "ecnamExtra":Landroid/os/Bundle;
    :goto_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    const-string v2, "com.qti.permission.RECEIVE_PRE_ALERTING_CALL_INFO"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method private createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lorg/codeaurora/ims/QImsSessionBase;
    .locals 9
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 478
    new-instance v8, Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 479
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v6

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 480
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getImsConferenceController()Lorg/codeaurora/ims/ImsConferenceController;

    move-result-object v7

    move-object v0, v8

    move-object v1, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v7}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;ZILorg/codeaurora/ims/ImsConferenceController;)V

    .line 481
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    .line 482
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateFeatureCapabilities(ZZ)V

    .line 483
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 484
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 486
    monitor-exit v1

    .line 487
    return-object v0

    .line 486
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private createIncomingCallBundle(ZZ)Landroid/os/Bundle;
    .locals 2
    .param p1, "isUssd"    # Z
    .param p2, "isUnknown"    # Z

    .line 147
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 148
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "android.telephony.ims.feature.extra.IS_USSD"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 149
    const-string v1, "android.telephony.ims.feature.extra.IS_UNKNOWN_CALL"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    return-object v0
.end method

.method private createUssdSession(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/UssdInfo;)Lorg/codeaurora/ims/QImsSessionBase;
    .locals 8
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "info"    # Lorg/codeaurora/ims/UssdInfo;

    .line 491
    new-instance v7, Lorg/codeaurora/ims/ImsUssdSessionImpl;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 492
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v4

    move-object v0, v7

    move-object v1, p1

    move-object v5, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lorg/codeaurora/ims/ImsUssdSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/UssdInfo;)V

    .line 493
    .local v0, "session":Lorg/codeaurora/ims/ImsUssdSessionImpl;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    .line 494
    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->updateFeatureCapabilities(ZZ)V

    .line 495
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 496
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyUssdAdded(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    .line 498
    monitor-exit v1

    .line 499
    return-object v0

    .line 498
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getToken()I
    .locals 2

    .line 833
    sget v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->sToken:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    sput v0, Lorg/codeaurora/ims/ImsServiceClassTracker;->sToken:I

    .line 834
    return v0
.end method

.method private handleCloseAllSessions()V
    .locals 4

    .line 942
    const-string v0, "handleCloseAllSessions"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 943
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 944
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "call list"

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeAndNotifySessions(Ljava/util/Collection;ZLjava/lang/String;)V

    .line 945
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 947
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 948
    :try_start_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    const-string v2, "pending call list"

    invoke-direct {p0, v0, v3, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeAndNotifySessions(Ljava/util/Collection;ZLjava/lang/String;)V

    .line 949
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 951
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 952
    :try_start_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    const-string v2, "ussd list"

    invoke-direct {p0, v1, v3, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeAndNotifySessions(Ljava/util/Collection;ZLjava/lang/String;)V

    .line 953
    monitor-exit v0

    .line 954
    return-void

    .line 953
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 949
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 945
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method private handleIncomingDtmf(Lorg/codeaurora/telephony/utils/AsyncResult;Z)V
    .locals 4
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;
    .param p2, "isStart"    # Z

    .line 912
    if-eqz p1, :cond_3

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 916
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/telephony/utils/SomeArgs;

    .line 917
    .local v0, "args":Lorg/codeaurora/telephony/utils/SomeArgs;
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 918
    const-string v1, "handleIncomingDtmf ar.exception not null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 919
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 920
    return-void

    .line 922
    :cond_1
    iget-object v1, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 923
    .local v1, "dtmf":Ljava/lang/String;
    iget v2, v0, Lorg/codeaurora/telephony/utils/SomeArgs;->argi1:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v2

    .line 924
    .local v2, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-nez v2, :cond_2

    .line 925
    const-string v3, "handleIncomingDtmf Error: callSession is null"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 926
    return-void

    .line 928
    :cond_2
    invoke-virtual {v2, p2, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyIncomingDtmf(ZLjava/lang/String;)V

    .line 929
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/SomeArgs;->recycle()V

    .line 930
    return-void

    .line 913
    .end local v0    # "args":Lorg/codeaurora/telephony/utils/SomeArgs;
    .end local v1    # "dtmf":Ljava/lang/String;
    .end local v2    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_3
    :goto_0
    const-string v0, "handleIncomingDtmf exception"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 914
    return-void
.end method

.method private static isSrvcc(Lorg/codeaurora/ims/HoInfo;)Z
    .locals 2
    .param p0, "hoInfo"    # Lorg/codeaurora/ims/HoInfo;

    .line 660
    invoke-virtual {p0}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v0

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 661
    invoke-virtual {p0}, Lorg/codeaurora/ims/HoInfo;->getTargetTech()I

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 660
    :goto_0
    return v0
.end method

.method static synthetic lambda$notifyUssdAdded$0(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/ims/ICallListListener;)V
    .locals 0
    .param p0, "session"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 774
    invoke-interface {p1, p0}, Lorg/codeaurora/ims/ICallListListener;->onSessionAdded(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    .line 775
    return-void
.end method

.method static synthetic lambda$notifyUssdRemoved$1(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/ims/ICallListListener;)V
    .locals 0
    .param p0, "session"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 780
    invoke-interface {p1, p0}, Lorg/codeaurora/ims/ICallListListener;->onSessionRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    .line 781
    return-void
.end method

.method private maybeBroadcastPreAlertingCallIntent(I)V
    .locals 2
    .param p1, "callId"    # I

    .line 845
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPreAlertingCallTokenList:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 846
    .local v0, "token":I
    if-eq v0, v1, :cond_0

    .line 847
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->broadcastPreAlertingCallIntent(I)V

    .line 848
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPreAlertingCallTokenList:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 850
    :cond_0
    return-void
.end method

.method private maybeDisableVideo(Lorg/codeaurora/ims/DriverCallIms;Z)Lorg/codeaurora/ims/DriverCallIms;
    .locals 8
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p2, "disableVideo"    # Z

    .line 361
    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-nez v0, :cond_0

    goto :goto_1

    .line 366
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 368
    .local v0, "isVideoDisabled":Z
    if-ne v0, p2, :cond_1

    .line 369
    return-object p1

    .line 372
    :cond_1
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 373
    .local v6, "srv":Lorg/codeaurora/ims/ServiceStatus;
    iget v7, v6, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v7, v1, :cond_2

    .line 374
    iput v4, v6, Lorg/codeaurora/ims/ServiceStatus;->status:I

    .line 372
    .end local v6    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 377
    :cond_3
    return-object p1

    .line 363
    .end local v0    # "isVideoDisabled":Z
    :cond_4
    :goto_1
    return-object p1
.end method

.method private notifyCallAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 752
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ICallListListener;

    .line 753
    .local v1, "listener":Lorg/codeaurora/ims/ICallListListener;
    invoke-interface {v1, p1}, Lorg/codeaurora/ims/ICallListListener;->onSessionAdded(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 754
    .end local v1    # "listener":Lorg/codeaurora/ims/ICallListListener;
    goto :goto_0

    .line 755
    :cond_0
    return-void
.end method

.method private notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 767
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ICallListListener;

    .line 768
    .local v1, "listener":Lorg/codeaurora/ims/ICallListListener;
    invoke-interface {v1, p1}, Lorg/codeaurora/ims/ICallListListener;->onSessionRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 769
    .end local v1    # "listener":Lorg/codeaurora/ims/ICallListListener;
    goto :goto_0

    .line 770
    :cond_0
    return-void
.end method

.method private notifyUssdAdded(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;

    .line 773
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    new-instance v1, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda1;-><init>(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 776
    return-void
.end method

.method private notifyUssdRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsUssdSessionImpl;

    .line 779
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    new-instance v1, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda0;-><init>(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 782
    return-void
.end method

.method private removeAndNotifySessions(Ljava/util/Collection;ZLjava/lang/String;)V
    .locals 4
    .param p2, "needToClose"    # Z
    .param p3, "listName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/codeaurora/ims/QImsSessionBase;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 400
    .local p1, "list":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/codeaurora/ims/QImsSessionBase;>;"
    if-nez p1, :cond_0

    .line 401
    return-void

    .line 403
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/codeaurora/ims/QImsSessionBase;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 404
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/QImsSessionBase;

    .line 405
    .local v1, "session":Lorg/codeaurora/ims/QImsSessionBase;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAndNotifySessions : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    if-eqz p2, :cond_1

    .line 407
    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/QImsSessionBase;->terminate(I)V

    .line 408
    invoke-virtual {v1}, Lorg/codeaurora/ims/QImsSessionBase;->close()V

    .line 410
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 411
    instance-of v2, v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v2, :cond_2

    .line 412
    move-object v2, v1

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    goto :goto_1

    .line 413
    :cond_2
    instance-of v2, v1, Lorg/codeaurora/ims/ImsUssdSessionImpl;

    if-eqz v2, :cond_3

    .line 414
    move-object v2, v1

    check-cast v2, Lorg/codeaurora/ims/ImsUssdSessionImpl;

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyUssdRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    .line 416
    .end local v1    # "session":Lorg/codeaurora/ims/QImsSessionBase;
    :cond_3
    :goto_1
    goto :goto_0

    .line 417
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/codeaurora/ims/QImsSessionBase;>;"
    :cond_4
    return-void
.end method

.method private removeCallSessionsAfterSrvcc()V
    .locals 4

    .line 420
    const-string v0, "removeCallSessionsAfterSrvcc"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 424
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "call list"

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeAndNotifySessions(Ljava/util/Collection;ZLjava/lang/String;)V

    .line 425
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 428
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 429
    :try_start_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    const-string v2, "pending list"

    invoke-direct {p0, v0, v3, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeAndNotifySessions(Ljava/util/Collection;ZLjava/lang/String;)V

    .line 430
    monitor-exit v1

    .line 431
    return-void

    .line 430
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 425
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private shallDisableVideo(Ljava/util/ArrayList;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/DriverCallIms;",
            ">;)Z"
        }
    .end annotation

    .line 342
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getPhoneId()I

    move-result v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->canHoldVideoCall(ILandroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 343
    return v1

    .line 345
    :cond_0
    const/4 v0, 0x0

    .line 346
    .local v0, "hasActiveVoiceCall":Z
    const/4 v2, 0x0

    .line 347
    .local v2, "hasHeldVoiceCall":Z
    const/4 v3, 0x0

    .line 349
    .local v3, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/DriverCallIms;

    .line 350
    .local v5, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget-object v7, v5, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v8, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v7, v8, :cond_1

    iget-object v7, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v7, v7, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 351
    invoke-static {v7}, Lorg/codeaurora/ims/ImsCallUtils;->isVoiceCall(I)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    or-int/2addr v0, v7

    .line 352
    iget-object v7, v5, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v8, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v7, v8, :cond_2

    iget-object v7, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v7, v7, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 353
    invoke-static {v7}, Lorg/codeaurora/ims/ImsCallUtils;->isVoiceCall(I)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    or-int/2addr v2, v6

    .line 354
    .end local v5    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    goto :goto_0

    .line 356
    :cond_3
    if-eqz v0, :cond_4

    if-nez v2, :cond_5

    :cond_4
    iget-object v4, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 357
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsServiceSub;->getImsConferenceController()Lorg/codeaurora/ims/ImsConferenceController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsConferenceController;->isInProgress()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v1, v6

    .line 356
    :cond_6
    return v1
.end method


# virtual methods
.method addListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 718
    if-eqz p1, :cond_1

    .line 724
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 725
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 727
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addListener: Listener already added, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 729
    :goto_0
    return-void

    .line 719
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeAllSessions()V
    .locals 2

    .line 938
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 939
    return-void
.end method

.method public createCallSession(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/UssdInfo;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "info"    # Lorg/codeaurora/ims/UssdInfo;

    .line 470
    const-string v0, "dialstring"

    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 473
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createCallSession(Landroid/telephony/ims/ImsCallProfile;)Lorg/codeaurora/ims/QImsSessionBase;

    move-result-object v0

    goto :goto_1

    .line 472
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createUssdSession(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/UssdInfo;)Lorg/codeaurora/ims/QImsSessionBase;

    move-result-object v0

    .line 473
    :goto_1
    nop

    .line 474
    .local v0, "session":Lorg/codeaurora/ims/QImsSessionBase;
    return-object v0
.end method

.method public findSessionByMediaId(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 5
    .param p1, "mediaId"    # I

    .line 647
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 648
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 649
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 650
    .local v3, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 651
    monitor-exit v0

    return-object v3

    .line 653
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_0
    goto :goto_0

    .line 654
    :cond_1
    monitor-exit v0

    .line 655
    const/4 v0, 0x0

    return-object v0

    .line 654
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallCount()I
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getCallSession(Ljava/lang/String;)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 508
    const/4 v0, 0x0

    .line 509
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 510
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v0, v2

    .line 511
    monitor-exit v1

    .line 512
    return-object v0

    .line 511
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;
    .locals 6
    .param p1, "state"    # Lorg/codeaurora/ims/DriverCallIms$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codeaurora/ims/DriverCallIms$State;",
            ")",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation

    .line 619
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    if-nez p1, :cond_0

    return-object v0

    .line 622
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 623
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 624
    .local v3, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 625
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    .end local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_1
    goto :goto_0

    .line 628
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 630
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v2

    .line 631
    :try_start_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 632
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 633
    .local v4, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v5

    if-ne v5, p1, :cond_3

    .line 634
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v4    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_3
    goto :goto_1

    .line 637
    :cond_4
    monitor-exit v2

    .line 638
    return-object v0

    .line 637
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 628
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method public getCallSessionWithMptyBitSet(I)Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 7
    .param p1, "state"    # I

    .line 578
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 580
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 581
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 582
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 583
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 584
    .local v3, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getDriverCallState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v4

    .line 585
    .local v4, "dcState":Lorg/codeaurora/ims/DriverCallIms$State;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCallSessionWithMptyBitSet:: ImsCallSession state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 586
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", isMultiparty = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 585
    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiparty()Z

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 589
    const-string v5, "ImsCallSession found with Multiparty bit set"

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v4, v5, :cond_0

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v4, v5, :cond_0

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v5, :cond_1

    :cond_0
    if-ne p1, v6, :cond_1

    .line 594
    const-string v5, "Foreground Conference callSession found"

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 595
    monitor-exit v0

    return-object v3

    .line 596
    :cond_1
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v5, :cond_2

    const/4 v5, 0x2

    if-ne p1, v5, :cond_2

    .line 598
    const-string v5, "Background Conference callSession found"

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    monitor-exit v0

    return-object v3

    .line 600
    :cond_2
    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v4, v5, :cond_3

    sget-object v5, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v4, v5, :cond_4

    :cond_3
    if-nez p1, :cond_4

    .line 603
    const-string v5, "Ringing Conference callSession found"

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    monitor-exit v0

    return-object v3

    .line 607
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v4    # "dcState":Lorg/codeaurora/ims/DriverCallIms$State;
    :cond_4
    goto :goto_0

    .line 609
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_5
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 610
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallsListToClear()Ljava/lang/Object;
    .locals 10

    .line 179
    const/4 v0, 0x0

    .line 182
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 185
    .end local v0    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .local v1, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v2

    .line 186
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 187
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 188
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 189
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 190
    .local v4, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    new-instance v5, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v5}, Lorg/codeaurora/ims/DriverCallIms;-><init>()V

    .line 191
    .local v5, "dc":Lorg/codeaurora/ims/DriverCallIms;
    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    iput-object v6, v5, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 192
    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 193
    new-instance v6, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v6}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object v6, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 194
    iget-object v6, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v7

    iput v7, v6, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 195
    iget-object v6, v5, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v7

    iput v7, v6, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 196
    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v7, 0x83

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v6, v7, v8, v9}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v6, v5, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 198
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    nop

    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v4    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    goto :goto_0

    .line 200
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    .end local v5    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move-object v0, v1

    goto :goto_1

    .line 200
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 204
    .end local v1    # "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    .local v0, "response":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    :cond_1
    :goto_1
    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 934
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .line 824
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v0

    return v0
.end method

.method public getPreAlertingCallTokenList()Landroid/util/SparseIntArray;
    .locals 1

    .line 829
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPreAlertingCallTokenList:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public getUssdCount()I
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public handleCalls(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lorg/codeaurora/ims/DriverCallIms;",
            ">;)V"
        }
    .end annotation

    .line 212
    .local p1, "dcList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/codeaurora/ims/DriverCallIms;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v11, v0

    .line 214
    .local v11, "dcMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/codeaurora/ims/DriverCallIms;>;"
    invoke-direct/range {p0 .. p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->shallDisableVideo(Ljava/util/ArrayList;)Z

    move-result v12

    .line 215
    .local v12, "disableVideo":Z
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_0
    if-eqz v10, :cond_c

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_c

    .line 216
    const/4 v1, 0x0

    .line 217
    .local v1, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v9, v0, v12}, Lorg/codeaurora/ims/ImsServiceClassTracker;->maybeDisableVideo(Lorg/codeaurora/ims/DriverCallIms;Z)Lorg/codeaurora/ims/DriverCallIms;

    move-result-object v14

    .line 218
    .local v14, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget-object v2, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    .line 219
    monitor-enter v2

    .line 220
    :try_start_0
    iget-object v3, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 221
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 222
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 224
    .local v4, "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v5, v14, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v5, v6, :cond_0

    iget-object v5, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v6, v14, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 225
    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 228
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found match call session in temp list, s = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Index in call list is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v14, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    iget v5, v14, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v9, v5, v4, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 232
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 234
    .end local v4    # "s":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_0
    goto :goto_1

    .line 235
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_1
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 237
    :cond_2
    :goto_2
    iget-object v2, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v2

    .line 238
    :try_start_1
    iget-object v3, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v4, v14, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v15, v3

    .line 239
    .end local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .local v15, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 240
    if-eqz v15, :cond_3

    .line 244
    invoke-virtual {v15, v14}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCall(Lorg/codeaurora/ims/DriverCallIms;)V

    goto/16 :goto_5

    .line 246
    :cond_3
    const/16 v16, 0x0

    .line 247
    .local v16, "isUnknown":Z
    iget-object v1, v14, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v2, :cond_4

    .line 251
    iget v0, v14, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-direct {v9, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->maybeBroadcastPreAlertingCallIntent(I)V

    .line 252
    goto/16 :goto_6

    .line 254
    :cond_4
    new-instance v17, Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget-object v3, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mContext:Landroid/content/Context;

    iget-boolean v6, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    iget-object v1, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 255
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v7

    iget-object v1, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getImsConferenceController()Lorg/codeaurora/ims/ImsConferenceController;

    move-result-object v8

    move-object/from16 v1, v17

    move-object v2, v14

    move-object/from16 v5, p0

    invoke-direct/range {v1 .. v8}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;ZILorg/codeaurora/ims/ImsConferenceController;)V

    move-object/from16 v15, v17

    .line 256
    iget-object v1, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListener:Lorg/codeaurora/ims/QImsSessionBase$ListenerBase;

    invoke-virtual {v15, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    .line 257
    iget-boolean v1, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    iget-boolean v2, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    invoke-virtual {v15, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateFeatureCapabilities(ZZ)V

    .line 260
    iget-boolean v1, v14, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 261
    const-string v1, "MT Call creating a new call session"

    invoke-static {v9, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget v1, v14, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v9, v15, v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->reportIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V

    goto :goto_4

    .line 263
    :cond_5
    iget-boolean v0, v14, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v0, :cond_7

    .line 264
    const-string v0, "Conference Call creating a new call session"

    invoke-static {v9, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object v0, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getImsConferenceController()Lorg/codeaurora/ims/ImsConferenceController;

    move-result-object v0

    .line 266
    invoke-virtual {v0, v15}, Lorg/codeaurora/ims/ImsConferenceController;->processNewMptyCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v16

    .line 267
    if-eqz v16, :cond_6

    .line 268
    const-string v0, "Phantom conference call Scenario"

    invoke-static {v9, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 270
    :cond_6
    iget v0, v14, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v9, v0, v15, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 272
    :goto_3
    invoke-virtual {v15, v14}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateConfSession(Lorg/codeaurora/ims/DriverCallIms;)V

    goto :goto_4

    .line 273
    :cond_7
    iget-object v0, v14, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_8

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MO phantom Call Scenario. State = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v14, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    const/16 v16, 0x1

    .line 277
    invoke-virtual {v15, v14}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCall(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 279
    :cond_8
    :goto_4
    if-eqz v16, :cond_9

    .line 280
    iget v0, v14, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v9, v15, v0, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->reportIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V

    .line 284
    .end local v16    # "isUnknown":Z
    :cond_9
    :goto_5
    iget-object v0, v14, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_a

    .line 285
    iget v0, v14, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    :cond_a
    iget-object v0, v14, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_b

    .line 288
    iget v0, v14, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-direct {v9, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->maybeBroadcastPreAlertingCallIntent(I)V

    .line 215
    .end local v14    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .end local v15    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_b
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 239
    .restart local v14    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    .restart local v15    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_1
    move-exception v0

    move-object v1, v15

    goto :goto_7

    .end local v15    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .restart local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_2
    move-exception v0

    :goto_7
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 295
    .end local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    .end local v13    # "i":I
    .end local v14    # "dc":Lorg/codeaurora/ims/DriverCallIms;
    :cond_c
    iget-object v1, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 296
    :try_start_4
    iget-object v0, v9, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 297
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 298
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 299
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_d

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleCalls: removing dropped/ended call id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 305
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 304
    invoke-static {v9, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 307
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {v9, v3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 309
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_d
    goto :goto_8

    .line 310
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_e
    monitor-exit v1

    .line 311
    return-void

    .line 310
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0
.end method

.method public handleHandover(Lorg/codeaurora/ims/HoInfo;)V
    .locals 14
    .param p1, "handover"    # Lorg/codeaurora/ims/HoInfo;

    .line 665
    const-string v0, "in handleHandover"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 666
    invoke-static {p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->isSrvcc(Lorg/codeaurora/ims/HoInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 667
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 668
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->removeCallSessionsAfterSrvcc()V

    .line 671
    :cond_0
    return-void

    .line 674
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hoState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " srcTech: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 675
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " tarTech: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 676
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getTargetTech()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " extraType: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 677
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getExtraType()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " extraInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 678
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getExtraInfo()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ErrorCode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 679
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " errorMessage: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 680
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 674
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    const/4 v0, 0x0

    .line 683
    .local v0, "showHandoverToast":Z
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v2

    .line 684
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 685
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 686
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 687
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 688
    .local v5, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-nez v5, :cond_2

    .line 689
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleHandover: null callsession. Key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 690
    goto :goto_0

    .line 692
    :cond_2
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getType()I

    move-result v7

    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v8

    .line 693
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getTargetTech()I

    move-result v9

    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getExtraType()I

    move-result v10

    .line 694
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getExtraInfo()[B

    move-result-object v11

    .line 695
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getErrorCode()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getErrorMessage()Ljava/lang/String;

    move-result-object v13

    .line 692
    move-object v6, v5

    invoke-virtual/range {v6 .. v13}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V

    .line 696
    if-nez v0, :cond_3

    invoke-virtual {v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isInCall()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 697
    const/4 v0, 0x1

    .line 699
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v5    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_3
    goto :goto_0

    .line 700
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    if-eqz v0, :cond_7

    .line 703
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_7

    .line 704
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v1

    const/16 v2, 0x12

    if-eq v1, v2, :cond_5

    .line 705
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getSrcTech()I

    move-result v1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_7

    .line 706
    :cond_5
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getTargetTech()I

    move-result v1

    const/16 v2, 0xe

    if-eq v1, v2, :cond_6

    .line 707
    invoke-virtual {p1}, Lorg/codeaurora/ims/HoInfo;->getTargetTech()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_7

    .line 708
    :cond_6
    const-string v1, "Switching to LTE network for better quality"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    :cond_7
    return-void

    .line 700
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 890
    const/4 v0, 0x1

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    goto :goto_0

    .line 900
    :pswitch_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleCloseAllSessions()V

    .line 901
    goto :goto_1

    .line 896
    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 897
    .local v1, "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleIncomingDtmf(Lorg/codeaurora/telephony/utils/AsyncResult;Z)V

    .line 898
    goto :goto_1

    .line 892
    .end local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 893
    .restart local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->handleIncomingDtmf(Lorg/codeaurora/telephony/utils/AsyncResult;Z)V

    .line 894
    goto :goto_1

    .line 903
    .end local v1    # "ar":Lorg/codeaurora/telephony/utils/AsyncResult;
    :goto_0
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :goto_1
    goto :goto_2

    .line 905
    :catch_0
    move-exception v1

    .line 906
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage: Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 908
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleModifyCallRequest(Lorg/codeaurora/ims/CallModify;)V
    .locals 4
    .param p1, "cm"    # Lorg/codeaurora/ims/CallModify;

    .line 446
    if-eqz p1, :cond_1

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 449
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    iget v3, p1, Lorg/codeaurora/ims/CallModify;->call_index:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v0, v2

    .line 450
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V

    goto :goto_0

    .line 454
    :cond_0
    const-string v1, "handleModifyCallRequest Error: callSession is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 456
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :goto_0
    goto :goto_1

    .line 450
    .restart local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 457
    .end local v0    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :cond_1
    const-string v0, "handleModifyCallRequest Error: Null Call Modify request "

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    :goto_1
    return-void
.end method

.method public handleSuppSvcUnsol(Lorg/codeaurora/ims/SuppNotifyInfo;)V
    .locals 13
    .param p1, "info"    # Lorg/codeaurora/ims/SuppNotifyInfo;

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSuppSvcUnsol connId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getConnId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 525
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 526
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getConnId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v2, v1

    .line 527
    .local v1, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-eqz v1, :cond_2

    .line 528
    const/4 v2, 0x0

    .line 529
    .local v2, "startOnHoldLocalTone":Z
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getHistoryInfo()Ljava/lang/String;

    move-result-object v3

    .line 530
    .local v3, "forwardedCallHistory":Ljava/lang/String;
    const/4 v4, 0x0

    .line 531
    .local v4, "callHistory":[Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 532
    const-string v5, "\r\n"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    move-object v11, v4

    goto :goto_0

    .line 534
    :cond_0
    move-object v11, v4

    .end local v4    # "callHistory":[Ljava/lang/String;
    .local v11, "callHistory":[Ljava/lang/String;
    :goto_0
    new-instance v12, Landroid/telephony/ims/ImsSuppServiceNotification;

    .line 535
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getNotificationType()I

    move-result v5

    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getCode()I

    move-result v6

    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getIndex()I

    move-result v7

    .line 536
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getNotificationType()I

    move-result v8

    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getNumber()Ljava/lang/String;

    move-result-object v9

    move-object v4, v12

    move-object v10, v11

    invoke-direct/range {v4 .. v10}, Landroid/telephony/ims/ImsSuppServiceNotification;-><init>(IIIILjava/lang/String;[Ljava/lang/String;)V

    move-object v4, v12

    .line 538
    .local v4, "suppServiceInfo":Landroid/telephony/ims/ImsSuppServiceNotification;
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->hasHoldTone()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 539
    invoke-virtual {p1}, Lorg/codeaurora/ims/SuppNotifyInfo;->getHoldTone()Z

    move-result v5

    move v2, v5

    .line 541
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleSuppSvcUnsol suppNotification= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " startOnHoldLocalTone = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    invoke-virtual {v1, v4, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateSuppServiceInfo(Landroid/telephony/ims/ImsSuppServiceNotification;Z)V

    .line 544
    .end local v2    # "startOnHoldLocalTone":Z
    .end local v3    # "forwardedCallHistory":Ljava/lang/String;
    .end local v4    # "suppServiceInfo":Landroid/telephony/ims/ImsSuppServiceNotification;
    .end local v11    # "callHistory":[Ljava/lang/String;
    goto :goto_1

    .line 545
    :cond_2
    const-string v2, "No call session found for number: "

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    .end local v1    # "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    :goto_1
    monitor-exit v0

    .line 548
    return-void

    .line 547
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public handleTtyModeChangeUnsol(I)V
    .locals 6
    .param p1, "mode"    # I

    .line 556
    const/4 v0, 0x0

    .line 559
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 560
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 561
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 562
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 564
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 565
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v0, v4

    .line 566
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyTtyModeChange(I)V

    .line 567
    goto :goto_1

    .line 569
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    :cond_0
    goto :goto_0

    .line 570
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    if-nez v0, :cond_2

    .line 573
    const-string v1, "No Active call session found for TTY mode change"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    :cond_2
    return-void

    .line 570
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public isUssdSupported()Z
    .locals 1

    .line 820
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->isUssdSupported()Z

    move-result v0

    return v0
.end method

.method public isVideoSupportedOverWifi()Z
    .locals 1

    .line 816
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->isVideoSupportedOverWifi()Z

    move-result v0

    return v0
.end method

.method public isVoiceSupportedOverWifi()Z
    .locals 1

    .line 812
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->isVoiceSupportedOverWifi()Z

    move-result v0

    return v0
.end method

.method public onCallClosed(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 4
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;

    .line 381
    move-object v0, p1

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 382
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 383
    const-string v1, "onCallClosed: call session not in terminated state. Ignore."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 384
    return-void

    .line 390
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 391
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPendingSessionList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing pending session on close "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyCallRemoved(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 395
    :cond_1
    monitor-exit v1

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onPreAlertingCallDataAvailable(Lorg/codeaurora/ims/PreAlertingCallInfo;)V
    .locals 3
    .param p1, "info"    # Lorg/codeaurora/ims/PreAlertingCallInfo;

    .line 838
    invoke-static {}, Lorg/codeaurora/ims/ImsServiceClassTracker;->getToken()I

    move-result v0

    .line 839
    .local v0, "token":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mPreAlertingCallTokenList:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lorg/codeaurora/ims/PreAlertingCallInfo;->getCallId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 840
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsServiceClassTracker;->broadcastPreAlertingCallIntent(Lorg/codeaurora/ims/PreAlertingCallInfo;I)V

    .line 841
    return-void
.end method

.method public onUssdClosed(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 3
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUssdClosed for session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 436
    monitor-enter v0

    .line 437
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    move-object v2, p1

    check-cast v2, Lorg/codeaurora/ims/ImsUssdSessionImpl;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing session on close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    move-object v1, p1

    check-cast v1, Lorg/codeaurora/ims/ImsUssdSessionImpl;

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->notifyUssdRemoved(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    .line 441
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 443
    :cond_1
    :goto_0
    return-void
.end method

.method public onUssdMessageReceived(Lorg/codeaurora/ims/UssdInfo;)V
    .locals 6
    .param p1, "info"    # Lorg/codeaurora/ims/UssdInfo;

    .line 321
    invoke-virtual {p1}, Lorg/codeaurora/ims/UssdInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    .line 325
    .local v0, "isErrorCase":Z
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mUssdList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 326
    const-string v1, "onUssdMessageReceived: ongoing USSD session"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    return-void

    .line 330
    :cond_0
    if-eqz v0, :cond_1

    .line 331
    const-string v1, "onUssdMessageReceived: received empty message"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 332
    return-void

    .line 335
    :cond_1
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 337
    .local v1, "profile":Landroid/telephony/ims/ImsCallProfile;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {p0, v1, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createCallSession(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/UssdInfo;)Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    move-result-object v4

    const/4 v5, 0x0

    .line 338
    invoke-direct {p0, v3, v5}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createIncomingCallBundle(ZZ)Landroid/os/Bundle;

    move-result-object v3

    .line 337
    invoke-virtual {v2, v4, v3}, Lorg/codeaurora/ims/ImsServiceSub;->notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 339
    return-void
.end method

.method removeListener(Lorg/codeaurora/ims/ICallListListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ICallListListener;

    .line 737
    if-eqz p1, :cond_1

    .line 743
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallListListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 746
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeListener error: Listener not found, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    :goto_0
    return-void

    .line 738
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "removeListener error: listener is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reportIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;IZ)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "index"    # I
    .param p3, "isUnknown"    # Z

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportIncomingCall :: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isUnknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 788
    const/4 v1, 0x0

    invoke-direct {p0, v1, p3}, Lorg/codeaurora/ims/ImsServiceClassTracker;->createIncomingCallBundle(ZZ)Landroid/os/Bundle;

    move-result-object v1

    .line 787
    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsServiceSub;->notifyIncomingCall(Landroid/telephony/ims/stub/ImsCallSessionImplBase;Landroid/os/Bundle;)V

    .line 789
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->addCall(Ljava/lang/Integer;Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 790
    return-void
.end method

.method public updateFeatureCapabilities(ZZ)V
    .locals 4
    .param p1, "isVideoSupported"    # Z
    .param p2, "isVoiceSupported"    # Z

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateFeatureCapabilities video "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " voice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVideoSupported:Z

    .line 156
    iput-boolean p2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mIsVoiceSupported:Z

    .line 157
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 159
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 160
    .local v3, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateFeatureCapabilities(ZZ)V

    .line 161
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    goto :goto_0

    .line 162
    :cond_0
    monitor-exit v0

    .line 163
    return-void

    .line 162
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateLowBatteryStatus()V
    .locals 4

    .line 166
    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 168
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 169
    .local v3, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    invoke-virtual {v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateLowBatteryStatus()V

    .line 170
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    .end local v3    # "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    goto :goto_0

    .line 171
    :cond_0
    monitor-exit v0

    .line 172
    return-void

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateVoWiFiCallQuality(I)V
    .locals 5
    .param p1, "quality"    # I

    .line 798
    const/4 v0, 0x0

    .line 801
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    monitor-enter v1

    .line 802
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsServiceClassTracker;->mCallList:Ljava/util/Map;

    .line 803
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 804
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 805
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-object v0, v4

    .line 806
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateVoWiFiCallQuality(I)V

    .line 807
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    goto :goto_0

    .line 808
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;>;>;"
    :cond_0
    monitor-exit v1

    .line 809
    return-void

    .line 808
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
