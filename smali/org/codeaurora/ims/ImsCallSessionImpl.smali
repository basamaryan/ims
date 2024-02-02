.class public Lorg/codeaurora/ims/ImsCallSessionImpl;
.super Lorg/codeaurora/ims/QImsSessionBase;
.source "ImsCallSessionImpl.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsConferenceController$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;
    }
.end annotation


# static fields
.field private static final ALERT_HANDOVER:I = 0x1

.field private static final ALERT_TIMES_AFTER_DROP_CALL:I = 0x3

.field private static final CUSTOMIZED_REGION:Ljava/lang/String;

.field private static final DEFAULT_CALL_INDEX:I = -0x1

.field private static final EVENT_ACCEPT:I = 0x2

.field private static final EVENT_ADD_PARTICIPANT:I = 0x8

.field private static final EVENT_ADD_PARTICIPANTS:I = 0x11

.field private static final EVENT_CLOSE_SESSION:I = 0xb

.field private static final EVENT_CONFERENCE:I = 0x6

.field private static final EVENT_DEFLECT:I = 0x10

.field private static final EVENT_DIAL:I = 0x1

.field private static final EVENT_HANGUP:I = 0x3

.field private static final EVENT_HOLD:I = 0x4

.field private static final EVENT_ON_SET_LISTENER:I = 0x17

.field private static final EVENT_REJECT:I = 0x7

.field private static final EVENT_REMOVE_PARTICIPANT:I = 0xa

.field private static final EVENT_REMOVE_PARTICIPANT_RETRY:I = 0x18

.field private static final EVENT_RESUME:I = 0x5

.field private static final EVENT_RINGBACK_TONE:I = 0x9

.field private static final EVENT_RTT_MESSAGE_RECEIVED:I = 0xc

.field private static final EVENT_RTT_UPGRADE_CONFIRM_DONE:I = 0xf

.field private static final EVENT_SEND_DTMF:I = 0x13

.field private static final EVENT_SEND_RTT_MESSAGE:I = 0xd

.field private static final EVENT_SEND_RTT_MODIFY_REQUEST:I = 0xe

.field private static final EVENT_SEND_SIP_DTMF:I = 0x15

.field private static final EVENT_SIP_DTMF_RECEIVED:I = 0x16

.field private static final EVENT_TRANSFER:I = 0x14

.field private static final EVENT_VOICE_INFO_CHANGED:I = 0x12

.field public static final PROPERTY_DBG_ENCRYPTION_OVERRIDE:Ljava/lang/String; = "persist.dbg.call_encrypt_ovr"

.field public static final PROPERTY_DBG_ENCRYPTION_OVERRIDE_DEFAULT:I = 0x0

.field private static final RESET_ALERT_HANDOVER_TIME:I = 0x2

.field private static final RESET_TIME:J = 0x1b7740L

.field public static final SUPP_NOTIFICATION_TYPE_MO:I = 0x0

.field public static final SUPP_NOTIFICATION_TYPE_MT:I = 0x1

.field public static final SUPP_SVC_CODE_INVALID:I = -0x1

.field public static final SUPP_SVC_CODE_MT_HOLD:I = 0x2

.field public static final SUPP_SVC_CODE_MT_RESUME:I = 0x3

.field private static final VOLUME_FOR_ALERT:I = 0x28


# instance fields
.field private mAnswerOptionTirConfig:I

.field private mCallId:I

.field private mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

.field private mCallee:Ljava/lang/String;

.field private mConfController:Lorg/codeaurora/ims/ImsConferenceController;

.field private mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

.field private mCrsCrbtListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/internal/ICrsCrbtListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDc:Lorg/codeaurora/ims/DriverCallIms;

.field private mDisconnCause:I

.field private mHandler:Landroid/os/Handler;

.field private mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

.field private mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

.field mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

.field private mInCall:Z

.field private mIsCallTerminatedDueToLowBattery:Z

.field mIsConferenceHostSession:Z

.field private mIsLowBattery:Z

.field private mIsMergeHostSession:Z

.field private mIsVideoAllowed:Z

.field private mIsVoiceAllowed:Z

.field private mLocalCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

.field private mMtSuppSvcCode:I

.field private mPendingAddParticipantsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

.field private mRingbackToneRequest:Z

.field private mScreenSharelistener:Lorg/codeaurora/ims/internal/IImsScreenShareListener;

.field private mSipDtmfInfo:Ljava/lang/String;

.field private mStateChangeReportingAllowed:Z

.field private mVoWifiQuality:I

.field private mWifiAlertHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallProfile(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/QImsCallProfile;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallee(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDc(Lorg/codeaurora/ims/ImsCallSessionImpl;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lorg/codeaurora/ims/ImsCallSessionImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRingbackToneRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCallee(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDisconnCause(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 0

    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRingbackToneRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoClose(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->doClose()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSipDtmfReceived(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleSipDtmfReceived(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeDisplaySuppServiceErrorMsg(Lorg/codeaurora/ims/ImsCallSessionImpl;Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeDisplaySuppServiceErrorMsg(Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeNotifyConferenceState(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeNotifyConferenceState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessAddParticipantResponse(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->processAddParticipantResponse(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessAddParticipantsList(Lorg/codeaurora/ims/ImsCallSessionImpl;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->processAddParticipantsList([Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartBeepForAlert(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->startBeepForAlert()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 173
    const-string v0, "ro.miui.customized.region"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->CUSTOMIZED_REGION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;ZLorg/codeaurora/ims/ImsCallSessionCallbackHandler;Lorg/codeaurora/ims/ImsConferenceController;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "phoneId"    # I
    .param p4, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;
    .param p5, "isVideoCapable"    # Z
    .param p6, "handler"    # Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;
    .param p7, "confController"    # Lorg/codeaurora/ims/ImsConferenceController;

    .line 180
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/QImsSessionBase;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;)V

    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 134
    const/4 v1, -0x1

    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 135
    new-instance v2, Lorg/codeaurora/ims/QImsCallProfile;

    const/4 v3, 0x1

    const/4 v4, 0x7

    invoke-direct {v2, v3, v4}, Lorg/codeaurora/ims/QImsCallProfile;-><init>(II)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 137
    new-instance v2, Lorg/codeaurora/ims/QImsCallProfile;

    invoke-direct {v2, v3, v4}, Lorg/codeaurora/ims/QImsCallProfile;-><init>(II)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 139
    new-instance v2, Lorg/codeaurora/ims/QImsCallProfile;

    invoke-direct {v2}, Lorg/codeaurora/ims/QImsCallProfile;-><init>()V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 141
    new-instance v2, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$ImsCallSessionImplHandler;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 142
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 143
    const/4 v2, 0x0

    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    .line 144
    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMtSuppSvcCode:I

    .line 145
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 146
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 147
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    .line 148
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    .line 153
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    .line 156
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    .line 157
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    .line 159
    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    .line 161
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsMergeHostSession:Z

    .line 163
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 164
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    .line 165
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    .line 166
    iput v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    .line 170
    const/4 v1, 0x2

    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAnswerOptionTirConfig:I

    .line 171
    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mSipDtmfInfo:Ljava/lang/String;

    .line 182
    if-nez p5, :cond_1

    const v1, 0x7f010003

    .line 183
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isConfigEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    move v1, v3

    .line 184
    .local v1, "shallCreateVideoProvider":Z
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeCreateVideoProvider(Z)V

    .line 185
    iput-boolean p5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    .line 186
    iput-object p7, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    .line 187
    invoke-virtual {p7, p0}, Lorg/codeaurora/ims/ImsConferenceController;->registerListener(Lorg/codeaurora/ims/ImsConferenceController$Listener;)V

    .line 188
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRttMessage(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 189
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x12

    invoke-virtual {v2, v3, v4, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForVoiceInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 190
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x16

    invoke-virtual {v2, v3, v4, v0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForSipDtmfInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;ZILorg/codeaurora/ims/ImsConferenceController;)V
    .locals 8
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;
    .param p5, "isVideoCapable"    # Z
    .param p6, "phoneId"    # I
    .param p7, "confController"    # Lorg/codeaurora/ims/ImsConferenceController;

    .line 220
    new-instance v6, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-direct {v6}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;-><init>()V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move v3, p6

    move-object v4, p4

    move v5, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;ZLorg/codeaurora/ims/ImsCallSessionCallbackHandler;Lorg/codeaurora/ims/ImsConferenceController;)V

    .line 223
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/QImsCallProfile;->updateProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 224
    new-instance v0, Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/ConfInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 225
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 227
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/ImsSenderRxr;Landroid/content/Context;Lorg/codeaurora/ims/ImsServiceClassTracker;ZILorg/codeaurora/ims/ImsConferenceController;)V
    .locals 8
    .param p1, "call"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p2, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "tracker"    # Lorg/codeaurora/ims/ImsServiceClassTracker;
    .param p5, "isVideoCapable"    # Z
    .param p6, "phoneId"    # I
    .param p7, "confController"    # Lorg/codeaurora/ims/ImsConferenceController;

    .line 233
    new-instance v6, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-direct {v6}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;-><init>()V

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move v3, p6

    move-object v4, p4

    move v5, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lorg/codeaurora/ims/ImsCallSessionImpl;-><init>(Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;ILorg/codeaurora/ims/ImsServiceClassTracker;ZLorg/codeaurora/ims/ImsCallSessionCallbackHandler;Lorg/codeaurora/ims/ImsConferenceController;)V

    .line 237
    new-instance v0, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v0, p1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/DriverCallIms;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 238
    iget v0, v0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 239
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 242
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCrsStatus(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 243
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 245
    new-instance v0, Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/parser/ConfInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 246
    return-void
.end method

.method private alertForHandoverFailed()V
    .locals 2

    .line 2948
    const-string v0, "config_regional_wifi_calling_notificaion_enable"

    const-string v1, "com.android.settings"

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getResBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2950
    .local v0, "shouldAlert":Z
    if-eqz v0, :cond_0

    .line 2951
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->startAlert()V

    .line 2953
    :cond_0
    return-void
.end method

.method private canDial(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 2
    .param p1, "details"    # Lorg/codeaurora/ims/CallDetails;

    .line 2195
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2196
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2197
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallUtils;->isNotCsVideoCall(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2195
    :goto_1
    return v0
.end method

.method private doClose()V
    .locals 4

    .line 1213
    const-string v0, "doClose!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1215
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isImsCallSessionAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1216
    const-string v0, "Received Session Close request while it is alive"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1219
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 1220
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-eqz v0, :cond_1

    .line 1221
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallModification;->close()V

    .line 1223
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMergeHostSession()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1224
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_3

    .line 1225
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->dispose()V

    .line 1226
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    goto :goto_0

    .line 1229
    :cond_2
    const-string v0, "Not clearing listener, ongoing merge."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1231
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_4

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-eqz v0, :cond_4

    .line 1232
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 1234
    :cond_4
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySessionClosed()V

    .line 1235
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    monitor-enter v0

    .line 1236
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1237
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1238
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    if-eqz v0, :cond_5

    .line 1239
    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsConferenceController;->unregisterListener(Lorg/codeaurora/ims/ImsConferenceController$Listener;)Z

    .line 1240
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    .line 1242
    :cond_5
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    if-eqz v0, :cond_6

    .line 1243
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->deregisterForVoiceInfo(Landroid/os/Handler;)V

    .line 1244
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForSipDtmfInfo(Landroid/os/Handler;)V

    .line 1245
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 1247
    :cond_6
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 1248
    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 1249
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 1250
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 1251
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 1252
    iput v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 1253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mInCall:Z

    .line 1254
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 1255
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 1256
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 1257
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    .line 1258
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 1259
    iput-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 1260
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    goto :goto_1

    .line 1237
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1262
    :cond_7
    :goto_1
    return-void
.end method

.method private extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 8
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 1502
    if-nez p1, :cond_0

    .line 1503
    const-string v0, "Null dcUpdate in extractCallDetailsIntoCallProfile"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1504
    return-void

    .line 1506
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 1516
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1518
    const/4 v0, 0x0

    .line 1519
    .local v0, "key":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1520
    .local v1, "keyAndValue":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 1522
    .local v2, "namespaceAndKey":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 1523
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-eqz v4, :cond_3

    .line 1524
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v4, v4, v3

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1526
    const/4 v4, 0x0

    aget-object v5, v1, v4

    if-eqz v5, :cond_2

    .line 1531
    aget-object v5, v1, v4

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    .line 1532
    aget-object v4, v1, v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1533
    aget-object v0, v2, v7

    goto :goto_1

    .line 1535
    :cond_1
    aget-object v0, v1, v4

    .line 1548
    :goto_1
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    aget-object v5, v1, v7

    invoke-virtual {v4, v0, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1538
    :cond_2
    const-string v4, "Bad extra string from lower layers!"

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1539
    return-void

    .line 1542
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Element "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null in CallDetails Extras!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1543
    return-void

    .line 1552
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keyAndValue":[Ljava/lang/String;
    .end local v2    # "namespaceAndKey":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method private extractCallExtrasIntoCallDetails(Landroid/os/Bundle;Lorg/codeaurora/ims/CallDetails;)V
    .locals 8
    .param p1, "callExtras"    # Landroid/os/Bundle;
    .param p2, "details"    # Lorg/codeaurora/ims/CallDetails;

    .line 2210
    if-eqz p1, :cond_2

    .line 2211
    const/4 v0, 0x0

    .line 2212
    .local v0, "extraString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 2213
    .local v1, "extras":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2217
    .local v2, "i":I
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2218
    .local v4, "key":Ljava/lang/String;
    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v7, ""

    goto :goto_1

    .line 2219
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 2221
    aput-object v0, v1, v2

    .line 2222
    nop

    .end local v4    # "key":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 2223
    goto :goto_0

    .line 2224
    :cond_1
    invoke-virtual {p2, v1}, Lorg/codeaurora/ims/CallDetails;->setExtras([Ljava/lang/String;)V

    .line 2225
    .end local v0    # "extraString":Ljava/lang/String;
    .end local v1    # "extras":[Ljava/lang/String;
    .end local v2    # "i":I
    goto :goto_2

    .line 2226
    :cond_2
    const-string v0, "No extras in ImsCallProfile to map into CallDetails."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2228
    :goto_2
    return-void
.end method

.method private extractCallForwardInfoDetails(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "callForwardInfoString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2170
    .local v0, "callForwardInfoStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "[\\r\\n]+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2173
    .local v1, "callForwardInfoHops":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 2174
    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractCallForwardInfoDetails :: callForwardInfoHops["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2173
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2178
    .end local v2    # "i":I
    :cond_0
    return-object v0
.end method

.method private failDialRequest(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 2188
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2189
    .local v0, "newMsg":Landroid/os/Message;
    new-instance v1, Lorg/codeaurora/ims/QtiImsException;

    const-string v2, "Dial Failed"

    invoke-direct {v1, v2, p1}, Lorg/codeaurora/ims/QtiImsException;-><init>(Ljava/lang/String;I)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lorg/codeaurora/telephony/utils/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2191
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2192
    return-void
.end method

.method private static getCallMode(Lorg/codeaurora/ims/DriverCallIms;)I
    .locals 5
    .param p0, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 1693
    const/4 v0, 0x0

    .line 1694
    .local v0, "callMode":I
    if-eqz p0, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, v1, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v1, :cond_1

    .line 1695
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1696
    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    aget-object v2, v2, v1

    .line 1697
    .local v2, "servStatus":Lorg/codeaurora/ims/ServiceStatus;
    iget v3, v2, Lorg/codeaurora/ims/ServiceStatus;->type:I

    iget-object v4, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v4, v4, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-ne v3, v4, :cond_0

    .line 1698
    iget-object v3, v2, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget v0, v3, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->networkMode:I

    .line 1701
    return v0

    .line 1695
    .end local v2    # "servStatus":Lorg/codeaurora/ims/ServiceStatus;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1705
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private static getCallModeFromRadioTech(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .line 1682
    sparse-switch p0, :sswitch_data_0

    .line 1688
    const/4 v0, 0x0

    return v0

    .line 1686
    :sswitch_0
    const/16 v0, 0x12

    return v0

    .line 1684
    :sswitch_1
    const/16 v0, 0xe

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getLineInfo(Landroid/telephony/ims/ImsCallProfile;)Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .locals 3
    .param p0, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2016
    if-nez p0, :cond_0

    .line 2017
    invoke-static {}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getDefaultLine()Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v0

    return-object v0

    .line 2019
    :cond_0
    nop

    .line 2020
    const-string v0, "originatingNumber"

    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2021
    .local v0, "originatingNumber":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 2024
    :cond_1
    const/4 v1, 0x1

    const-string v2, "lineType"

    invoke-virtual {p0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v1

    .line 2026
    .local v1, "callType":I
    new-instance v2, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    invoke-direct {v2, v0, v1}, Lorg/codeaurora/ims/MultiIdentityLineInfo;-><init>(Ljava/lang/String;I)V

    return-object v2

    .line 2022
    .end local v1    # "callType":I
    :cond_2
    :goto_0
    invoke-static {}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getDefaultLine()Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v1

    return-object v1
.end method

.method private getMtSuppSvcCode()I
    .locals 1

    .line 777
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMtSuppSvcCode:I

    return v0
.end method

.method private getResBoolean(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "strResName"    # Ljava/lang/String;
    .param p2, "strPackage"    # Ljava/lang/String;

    .line 2932
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 2934
    .local v1, "resCtx":Landroid/content/Context;
    if-nez v1, :cond_0

    return v0

    .line 2935
    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2936
    .local v2, "res":Landroid/content/res/Resources;
    if-nez v2, :cond_1

    return v0

    .line 2937
    :cond_1
    const-string v3, "bool"

    invoke-virtual {v2, p1, v3, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 2938
    .local v3, "resID":I
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 2939
    .end local v1    # "resCtx":Landroid/content/Context;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "resID":I
    :catch_0
    move-exception v1

    .line 2940
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2942
    .end local v1    # "err":Ljava/lang/Exception;
    return v0
.end method

.method private getRestrictCause(I[Lorg/codeaurora/ims/ServiceStatus;)I
    .locals 6
    .param p1, "srvType"    # I
    .param p2, "ability"    # [Lorg/codeaurora/ims/ServiceStatus;

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "cause":I
    if-eqz p2, :cond_1

    .line 293
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p2, v3

    .line 294
    .local v4, "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v4, :cond_0

    iget v5, v4, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v5, p1, :cond_0

    iget-object v5, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    array-length v5, v5

    if-lez v5, :cond_0

    .line 296
    iget-object v1, v4, Lorg/codeaurora/ims/ServiceStatus;->accessTechStatus:[Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;

    aget-object v1, v1, v2

    iget v0, v1, Lorg/codeaurora/ims/ServiceStatus$StatusForAccessTech;->restrictCause:I

    .line 297
    goto :goto_1

    .line 293
    .end local v4    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 301
    :cond_1
    :goto_1
    return v0
.end method

.method private getRttMode(I[Lorg/codeaurora/ims/ServiceStatus;)I
    .locals 5
    .param p1, "callType"    # I
    .param p2, "list"    # [Lorg/codeaurora/ims/ServiceStatus;

    .line 3118
    const/4 v0, 0x0

    .line 3119
    .local v0, "mode":I
    if-eqz p2, :cond_1

    .line 3120
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 3121
    .local v3, "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v3, :cond_0

    iget v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v4, p1, :cond_0

    .line 3122
    iget v0, v3, Lorg/codeaurora/ims/ServiceStatus;->rttMode:I

    .line 3123
    goto :goto_1

    .line 3120
    .end local v3    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3127
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: getRttMode rtt mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3128
    return v0
.end method

.method private getSuppSvcErrorMessage(I)Ljava/lang/String;
    .locals 2
    .param p1, "errorCode"    # I

    .line 2873
    packed-switch p1, :pswitch_data_0

    .line 2882
    const v0, 0x7f030005

    .local v0, "resId":I
    goto :goto_0

    .line 2878
    .end local v0    # "resId":I
    :pswitch_0
    const v0, 0x7f030006

    .line 2879
    .restart local v0    # "resId":I
    goto :goto_0

    .line 2875
    .end local v0    # "resId":I
    :pswitch_1
    const v0, 0x7f030004

    .line 2876
    .restart local v0    # "resId":I
    nop

    .line 2885
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleSipDtmfReceived(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 2734
    if-eqz p1, :cond_1

    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2738
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mSipDtmfInfo:Ljava/lang/String;

    .line 2739
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    monitor-enter v0

    .line 2740
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    new-instance v2, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda3;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2747
    monitor-exit v0

    .line 2748
    return-void

    .line 2747
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2735
    :cond_1
    :goto_0
    const-string v0, "handleSipDtmfReceived invalid info"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2736
    return-void
.end method

.method public static hasCauseCodeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 2
    .param p0, "dc"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 2005
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private inviteParticipant(Ljava/lang/String;)V
    .locals 4
    .param p1, "participant"    # Ljava/lang/String;

    .line 2628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inviteParticipant participant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2629
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 2630
    const/16 v2, 0x8

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2629
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v2, v3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->addParticipant(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Landroid/os/Message;)V

    .line 2631
    return-void
.end method

.method private isCallMarkedUnwanted()Z
    .locals 3

    .line 2416
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2417
    :cond_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/DriverCallIms;->getVerstatInfo()Lorg/codeaurora/ims/VerstatInfo;

    move-result-object v0

    .line 2418
    .local v0, "verstatInfo":Lorg/codeaurora/ims/VerstatInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/codeaurora/ims/VerstatInfo;->canMarkUnwantedCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2419
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->hasUserMarkedCallUnwanted()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 2418
    :goto_0
    return v1
.end method

.method private isCarrierOneDial(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 1
    .param p1, "details"    # Lorg/codeaurora/ims/CallDetails;

    .line 2182
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 2183
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2184
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateLowBatteryStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2182
    :goto_0
    return v0
.end method

.method private isConfigEnabled(I)Z
    .locals 1
    .param p1, "resId"    # I

    .line 3008
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private isLowBatteryVideoCall()Z
    .locals 1

    .line 2458
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMultiEndpointFailCause(I)Z
    .locals 1
    .param p1, "code"    # I

    .line 530
    const/16 v0, 0x3f6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3f8

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z
    .locals 5
    .param p0, "srvType"    # I
    .param p1, "ability"    # [Lorg/codeaurora/ims/ServiceStatus;

    .line 269
    const/4 v0, 0x0

    .line 270
    .local v0, "allowed":Z
    if-eqz p1, :cond_2

    .line 271
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 272
    .local v3, "srv":Lorg/codeaurora/ims/ServiceStatus;
    if-eqz v3, :cond_1

    iget v4, v3, Lorg/codeaurora/ims/ServiceStatus;->type:I

    if-ne v4, p0, :cond_1

    .line 273
    iget v1, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, v3, Lorg/codeaurora/ims/ServiceStatus;->status:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 275
    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    .line 271
    .end local v3    # "srv":Lorg/codeaurora/ims/ServiceStatus;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    :cond_2
    :goto_1
    return v0
.end method

.method private isSuppSvcToastMsgEnabled()Z
    .locals 5

    .line 2857
    const/4 v0, 0x0

    .line 2860
    .local v0, "SUPP_SVC_TOAST_CONFIG_DISABLED":I
    const/4 v1, 0x1

    .line 2862
    .local v1, "SUPP_SVC_TOAST_CONFIG_ENABLED":I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 2863
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2862
    const-string v3, "call.toast.supp_svc_fail"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 2865
    .local v2, "toastMsgEnabled":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v4, v3

    :cond_0
    return v4
.end method

.method private isTerminateLowBatteryCall()Z
    .locals 3

    .line 2443
    invoke-static {}, Lorg/codeaurora/ims/ImsCallUtils;->isCarrierOneSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eqz v0, :cond_2

    .line 2444
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 2450
    :cond_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 2446
    :cond_2
    :goto_0
    return v1
.end method

.method private static mapAudioCodecFromExtras(Ljava/lang/String;)I
    .locals 5
    .param p0, "codec"    # Ljava/lang/String;

    .line 1578
    const-class v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    const/4 v1, 0x0

    .line 1579
    .local v1, "audioQuality":I
    const/4 v2, 0x0

    if-nez p0, :cond_0

    .line 1580
    return v2

    .line 1582
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_1
    goto/16 :goto_0

    :sswitch_0
    const-string v2, "GSM_HR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "GSM_FR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "G711AB"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xe

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "EVS_WB"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x11

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "EVS_NB"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_5
    const-string v2, "EVS_FB"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x13

    goto/16 :goto_1

    :sswitch_6
    const-string v2, "EVRC_B"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto/16 :goto_1

    :sswitch_7
    const-string v2, "AMR_WB"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_8
    const-string v2, "AMR_NB"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto/16 :goto_1

    :sswitch_9
    const-string v2, "GSM_EFR"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_a
    const-string v4, "QCELP13K"

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_1

    :sswitch_b
    const-string v2, "G711U"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    goto :goto_1

    :sswitch_c
    const-string v2, "G711A"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xc

    goto :goto_1

    :sswitch_d
    const-string v2, "G729"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xf

    goto :goto_1

    :sswitch_e
    const-string v2, "G723"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xb

    goto :goto_1

    :sswitch_f
    const-string v2, "G722"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xd

    goto :goto_1

    :sswitch_10
    const-string v2, "EVRC"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_11
    const-string v2, "EVS_SWB"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x12

    goto :goto_1

    :sswitch_12
    const-string v2, "EVRC_WB"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_13
    const-string v2, "EVRC_NW"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :goto_0
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 1644
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported codec "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1641
    :pswitch_0
    const/16 v1, 0x14

    .line 1642
    goto :goto_2

    .line 1638
    :pswitch_1
    const/16 v1, 0x13

    .line 1639
    goto :goto_2

    .line 1635
    :pswitch_2
    const/16 v1, 0x12

    .line 1636
    goto :goto_2

    .line 1632
    :pswitch_3
    const/16 v1, 0x11

    .line 1633
    goto :goto_2

    .line 1629
    :pswitch_4
    const/16 v1, 0x10

    .line 1630
    goto :goto_2

    .line 1626
    :pswitch_5
    const/16 v1, 0xf

    .line 1627
    goto :goto_2

    .line 1623
    :pswitch_6
    const/16 v1, 0xe

    .line 1624
    goto :goto_2

    .line 1620
    :pswitch_7
    const/16 v1, 0xd

    .line 1621
    goto :goto_2

    .line 1617
    :pswitch_8
    const/16 v1, 0xc

    .line 1618
    goto :goto_2

    .line 1614
    :pswitch_9
    const/16 v1, 0xb

    .line 1615
    goto :goto_2

    .line 1611
    :pswitch_a
    const/16 v1, 0xa

    .line 1612
    goto :goto_2

    .line 1608
    :pswitch_b
    const/16 v1, 0x9

    .line 1609
    goto :goto_2

    .line 1605
    :pswitch_c
    const/16 v1, 0x8

    .line 1606
    goto :goto_2

    .line 1602
    :pswitch_d
    const/4 v1, 0x2

    .line 1603
    goto :goto_2

    .line 1599
    :pswitch_e
    const/4 v1, 0x1

    .line 1600
    goto :goto_2

    .line 1596
    :pswitch_f
    const/4 v1, 0x7

    .line 1597
    goto :goto_2

    .line 1593
    :pswitch_10
    const/4 v1, 0x6

    .line 1594
    goto :goto_2

    .line 1590
    :pswitch_11
    const/4 v1, 0x5

    .line 1591
    goto :goto_2

    .line 1587
    :pswitch_12
    const/4 v1, 0x4

    .line 1588
    goto :goto_2

    .line 1584
    :pswitch_13
    const/4 v1, 0x3

    .line 1585
    nop

    .line 1647
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioQuality is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    return v1

    :sswitch_data_0
    .sparse-switch
        -0x268dd77a -> :sswitch_13
        -0x268dd678 -> :sswitch_12
        -0x2673319f -> :sswitch_11
        0x20aaa2 -> :sswitch_10
        0x211b10 -> :sswitch_f
        0x211b11 -> :sswitch_e
        0x211b17 -> :sswitch_d
        0x4024351 -> :sswitch_c
        0x4024365 -> :sswitch_b
        0x30932dd2 -> :sswitch_a
        0x3de5f773 -> :sswitch_9
        0x734ec6ed -> :sswitch_8
        0x734ec804 -> :sswitch_7
        0x7aa095e5 -> :sswitch_6
        0x7aa17059 -> :sswitch_5
        0x7aa17151 -> :sswitch_4
        0x7aa17268 -> :sswitch_3
        0x7c462711 -> :sswitch_2
        0x7dde20ea -> :sswitch_1
        0x7dde2128 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private mapCallTypeFromProfile(I)I
    .locals 1
    .param p1, "callType"    # I

    .line 1657
    const/4 v0, 0x0

    .line 1658
    .local v0, "type":I
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1675
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 1672
    :pswitch_2
    const/4 v0, 0x2

    .line 1673
    goto :goto_0

    .line 1669
    :pswitch_3
    const/4 v0, 0x1

    .line 1670
    goto :goto_0

    .line 1666
    :pswitch_4
    const/4 v0, 0x3

    .line 1667
    goto :goto_0

    .line 1663
    :pswitch_5
    const/4 v0, 0x0

    .line 1664
    goto :goto_0

    .line 1660
    :pswitch_6
    const/16 v0, 0xa

    .line 1661
    nop

    .line 1678
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private mapResponseToMode(Z)I
    .locals 1
    .param p1, "response"    # Z

    .line 3107
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 3108
    :cond_0
    const/4 v0, 0x0

    .line 3107
    :goto_0
    return v0
.end method

.method private maybeCreateVideoProvider(Z)V
    .locals 3
    .param p1, "isVideoCallingEnabled"    # Z

    .line 200
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isRttSupported(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-nez v0, :cond_1

    .line 202
    new-instance v0, Lorg/codeaurora/ims/ImsCallModification;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {v0, p0, v1, v2}, Lorg/codeaurora/ims/ImsCallModification;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/content/Context;Lorg/codeaurora/ims/ImsSenderRxr;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    .line 205
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-nez v0, :cond_2

    .line 206
    const-string v0, "maybeCreateVideoProvider: Creating VideoCallProvider"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    new-instance v0, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    invoke-direct {v0, p0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/ImsCallModification;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 208
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    .line 210
    :cond_2
    return-void
.end method

.method private maybeDisplaySuppServiceErrorMsg(Ljava/lang/String;Lorg/codeaurora/ims/ImsRilException;)V
    .locals 3
    .param p1, "header"    # Ljava/lang/String;
    .param p2, "ex"    # Lorg/codeaurora/ims/ImsRilException;

    .line 2844
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSuppSvcToastMsgEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lorg/codeaurora/ims/ImsCallUtils;->toUiErrorCode(Lorg/codeaurora/ims/ImsRilException;)I

    move-result v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getSuppSvcErrorMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2846
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2848
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private maybeNotifyCallTypeChanging(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 1
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 630
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    return-void

    .line 633
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsCallUtils;->hasCallTypeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifyCallTypeChanging(I)V

    .line 636
    :cond_1
    return-void
.end method

.method private maybeNotifyConferenceState()V
    .locals 2

    .line 2239
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultipartyCall()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2243
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/ConfInfo;->getConfUriList()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 2244
    if-eqz v0, :cond_2

    iget-object v0, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    .line 2245
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2248
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 2249
    return-void

    .line 2246
    :cond_2
    :goto_0
    return-void

    .line 2241
    :cond_3
    :goto_1
    return-void
.end method

.method private maybeOverrideReason(I)I
    .locals 2
    .param p1, "reason"    # I

    .line 2423
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallMarkedUnwanted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2424
    const/16 p1, 0x16d

    .line 2425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Overriden Reason : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2427
    :cond_0
    return p1
.end method

.method private maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;Z)Z
    .locals 5
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p2, "areStatesSame"    # Z

    .line 536
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 538
    .local v0, "isCallNotEnded":Z
    :goto_0
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Call details updated. currentCallDetails= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v4, v4, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " to newCallDetails= "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v4}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 543
    :cond_1
    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method private maybeUpdateCallForwardInfoExtras(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 3
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 2157
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2158
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0}, Lorg/codeaurora/ims/QImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 2160
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallForwardInfoDetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2158
    const-string v2, "CallHistoryInfo"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 2161
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2162
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0}, Lorg/codeaurora/ims/QImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    .line 2164
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallForwardInfoDetails(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2162
    const-string v2, "CallDiversionInfo"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2166
    :cond_1
    :goto_0
    return-void
.end method

.method private maybeUpdateCallProgressInfoExtras(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 6
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 1940
    if-eqz p1, :cond_5

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    if-ne v0, v1, :cond_0

    goto :goto_2

    .line 1944
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CallProgressInfo;->getType()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1946
    .local v0, "isTypeInvalid":Z
    :goto_0
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-virtual {v2}, Lorg/codeaurora/ims/CallProgressInfo;->getType()I

    move-result v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v3, :cond_2

    .line 1947
    goto :goto_1

    .line 1948
    :cond_2
    iget-object v1, v3, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-virtual {v1}, Lorg/codeaurora/ims/CallProgressInfo;->getType()I

    move-result v1

    :goto_1
    if-ne v2, v1, :cond_3

    if-eqz v0, :cond_3

    .line 1949
    return-void

    .line 1952
    :cond_3
    const-string v1, "CallProgReasonText"

    const-string v2, "CallProgReasonCode"

    const-string v3, "CallProgInfoType"

    if-eqz v0, :cond_4

    .line 1954
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1955
    .local v4, "extrasToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1956
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1957
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1958
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v1, v4}, Lorg/codeaurora/ims/QImsCallProfile;->removeExtras(Ljava/util/List;)V

    .line 1959
    return-void

    .line 1962
    .end local v4    # "extrasToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 1963
    invoke-virtual {v5}, Lorg/codeaurora/ims/CallProgressInfo;->getType()I

    move-result v5

    .line 1962
    invoke-virtual {v4, v3, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1964
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 1965
    invoke-virtual {v4}, Lorg/codeaurora/ims/CallProgressInfo;->getReasonCode()I

    move-result v4

    .line 1964
    invoke-virtual {v3, v2, v4}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1966
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 1967
    invoke-virtual {v3}, Lorg/codeaurora/ims/CallProgressInfo;->getReasonText()Ljava/lang/String;

    move-result-object v3

    .line 1966
    invoke-virtual {v2, v1, v3}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    return-void

    .line 1941
    .end local v0    # "isTypeInvalid":Z
    :cond_5
    :goto_2
    return-void
.end method

.method private maybeUpdateComputedAudioQualityExtras(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 3
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 1971
    if-eqz p1, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    invoke-virtual {v0}, Lorg/codeaurora/ims/AudioQuality;->getComputedAudioQuality()I

    move-result v0

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    .line 1972
    invoke-virtual {v1}, Lorg/codeaurora/ims/AudioQuality;->getComputedAudioQuality()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1976
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    invoke-virtual {v0}, Lorg/codeaurora/ims/AudioQuality;->getComputedAudioQuality()I

    move-result v0

    const/4 v1, -0x1

    const-string v2, "CallAudioQuality"

    if-ne v0, v1, :cond_1

    .line 1978
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1979
    .local v0, "extrasToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1980
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/QImsCallProfile;->removeExtras(Ljava/util/List;)V

    .line 1981
    return-void

    .line 1984
    .end local v0    # "extrasToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    .line 1985
    invoke-virtual {v1}, Lorg/codeaurora/ims/AudioQuality;->getComputedAudioQuality()I

    move-result v1

    .line 1984
    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1986
    return-void

    .line 1973
    :cond_2
    :goto_0
    return-void
.end method

.method private maybeUpdateCrsExtras(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 6
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 1911
    if-eqz p1, :cond_3

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v1, v1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1917
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 1918
    invoke-virtual {v0}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v0

    if-nez v0, :cond_1

    .line 1919
    return-void

    .line 1921
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v0

    const-string v1, "callId"

    const-string v2, "isPreparatory"

    const-string v3, "originalCallType"

    const-string v4, "crsType"

    if-nez v0, :cond_2

    .line 1923
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1924
    .local v0, "extrasToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1925
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1926
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1927
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1928
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/QImsCallProfile;->removeExtras(Ljava/util/List;)V

    .line 1929
    return-void

    .line 1931
    .end local v0    # "extrasToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v5}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1932
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 1933
    invoke-virtual {v4}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result v4

    .line 1932
    invoke-virtual {v0, v3, v4}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1934
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-boolean v3, p1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    invoke-virtual {v0, v2, v3}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1936
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1937
    return-void

    .line 1913
    :cond_3
    :goto_0
    return-void
.end method

.method private maybeUpdateLowBatteryStatus()Z
    .locals 4

    .line 611
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 612
    const-string v0, "merge is in progress so ignore low battery update"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 613
    return v1

    .line 616
    :cond_0
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->getInstance()Lcom/qualcomm/ims/vt/LowBatteryHandler;

    move-result-object v0

    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->isLowBattery(I)Z

    move-result v0

    .line 617
    .local v0, "isLowBattery":Z
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    .line 618
    .local v1, "hasChanged":Z
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maybeUpdateLowBatteryStatus isLowBattery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mIsLowBattery: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    if-eqz v1, :cond_2

    .line 622
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    .line 623
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const-string v3, "LowBattery"

    invoke-virtual {v2, v3, v0}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 626
    :cond_2
    return v1
.end method

.method private maybeUpdateVoWifiCallQualityExtra(IZ)V
    .locals 2
    .param p1, "quality"    # I
    .param p2, "canNotify"    # Z

    .line 3016
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isVoWiFiCallQualityEnabled(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3017
    return-void

    .line 3020
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 3021
    return-void

    .line 3024
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeUpdateVoWifiCallQualityExtra Quality : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3025
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const-string v1, "VoWiFiCallQuality"

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 3028
    if-eqz p2, :cond_2

    .line 3029
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    .line 3031
    :cond_2
    return-void
.end method

.method private muteStateReporting()V
    .locals 2

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call session state reporting muted! session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    .line 329
    return-void
.end method

.method private parseErrorCode(Ljava/lang/String;)I
    .locals 1
    .param p1, "errorCode"    # Ljava/lang/String;

    .line 957
    const-string v0, "CD-04"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    const/16 v0, 0x44c

    return v0

    .line 960
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private processAddParticipantResponse(Z)V
    .locals 2
    .param p1, "success"    # Z

    .line 2595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processAddParticipantResponse: success = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pending = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    .line 2596
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2595
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2597
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2598
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2599
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->processNextParticipant()V

    .line 2601
    :cond_0
    return-void
.end method

.method private processAddParticipantsList([Ljava/lang/String;)V
    .locals 6
    .param p1, "participantsArr"    # [Ljava/lang/String;

    .line 2570
    const/4 v0, 0x0

    .line 2571
    .local v0, "initAdding":Z
    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v2, p1

    .line 2572
    .local v2, "numOfParticipants":I
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processAddParticipantsList: no of particpants = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pending = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    .line 2573
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2572
    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2574
    if-lez v2, :cond_3

    .line 2575
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 2577
    const/4 v0, 0x1

    .line 2579
    :cond_1
    array-length v3, p1

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, p1, v1

    .line 2580
    .local v4, "participant":Ljava/lang/String;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2579
    .end local v4    # "participant":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2582
    :cond_2
    if-eqz v0, :cond_3

    .line 2583
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->processNextParticipant()V

    .line 2586
    :cond_3
    return-void
.end method

.method private processNextParticipant()V
    .locals 2

    .line 2589
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2590
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPendingAddParticipantsList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->inviteParticipant(Ljava/lang/String;)V

    .line 2592
    :cond_0
    return-void
.end method

.method private setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 6
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 647
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eqz v0, :cond_0

    .line 648
    invoke-virtual {v0}, Lorg/codeaurora/ims/QImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 649
    .local v0, "localUpdate":Landroid/telephony/ims/ImsStreamMediaProfile;
    nop

    .line 650
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->toAudioCodec(Lorg/codeaurora/ims/DriverCallIms;)I

    move-result v3

    invoke-static {v3, v2, v1}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(III)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    .line 649
    invoke-virtual {v0, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 653
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setLocalProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 654
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v3, v3, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v4, v4, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {p0, v3, v4}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRttMode(I[Lorg/codeaurora/ims/ServiceStatus;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 656
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v3, v0}, Lorg/codeaurora/ims/QImsCallProfile;->updateMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 658
    .end local v0    # "localUpdate":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    if-eqz v0, :cond_2

    .line 659
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setRemoteProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 660
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v0, :cond_2

    .line 661
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0}, Lorg/codeaurora/ims/QImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 662
    .local v0, "remoteUpdate":Landroid/telephony/ims/ImsStreamMediaProfile;
    nop

    .line 663
    invoke-static {}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    .line 662
    invoke-virtual {v0, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 664
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 665
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v4}, Lorg/codeaurora/ims/QImsCallProfile;->getCallType()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 666
    move v1, v2

    goto :goto_0

    :cond_1
    nop

    :goto_0
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    .line 664
    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRestrictCause(I[Lorg/codeaurora/ims/ServiceStatus;)I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/codeaurora/ims/QImsCallProfile;->setCallRestrictCause(I)V

    .line 668
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, v2, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getRttMode(I[Lorg/codeaurora/ims/ServiceStatus;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 670
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/QImsCallProfile;->updateMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 673
    .end local v0    # "remoteUpdate":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_2
    return-void
.end method

.method private setLocalProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 6
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 676
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v0

    .line 678
    .local v0, "isLocalVideoServiceAllowed":Z
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, v1, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v1

    .line 681
    .local v1, "isLocalVoiceServiceAllowed":Z
    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_0

    .line 688
    move v0, v2

    move v1, v2

    .line 691
    :cond_0
    const/4 v2, 0x7

    .line 692
    .local v2, "callType":I
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    if-eqz v3, :cond_1

    .line 694
    const/4 v2, 0x3

    goto :goto_0

    .line 695
    :cond_1
    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    if-eqz v3, :cond_2

    .line 697
    const/4 v2, 0x4

    goto :goto_0

    .line 698
    :cond_2
    if-eqz v1, :cond_3

    iget-boolean v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    if-eqz v3, :cond_3

    .line 700
    const/4 v2, 0x2

    goto :goto_0

    .line 702
    :cond_3
    const/4 v2, 0x7

    .line 704
    :goto_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    new-instance v4, Landroid/telephony/ims/ImsCallProfile;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/QImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 706
    return-void
.end method

.method private setMergeHostSession(Z)V
    .locals 0
    .param p1, "isMergeHost"    # Z

    .line 3215
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsMergeHostSession:Z

    .line 3216
    return-void
.end method

.method private setMtSuppSvcCode(I)V
    .locals 0
    .param p1, "code"    # I

    .line 773
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mMtSuppSvcCode:I

    .line 774
    return-void
.end method

.method private setRemoteProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 6
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 709
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v0, v0, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v1, 0x3

    invoke-static {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v0

    .line 711
    .local v0, "isRemoteVideoServiceAllowed":Z
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, v1, Lorg/codeaurora/ims/CallDetails;->peerAbility:[Lorg/codeaurora/ims/ServiceStatus;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isServiceAllowed(I[Lorg/codeaurora/ims/ServiceStatus;)Z

    move-result v1

    .line 714
    .local v1, "isRemoteVoiceServiceAllowed":Z
    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 715
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMtSuppSvcCode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 716
    move v0, v2

    move v1, v2

    .line 719
    :cond_0
    const/4 v2, 0x1

    .line 720
    .local v2, "callType":I
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 721
    const/4 v2, 0x3

    goto :goto_0

    .line 722
    :cond_1
    if-eqz v0, :cond_2

    .line 723
    const/4 v2, 0x4

    goto :goto_0

    .line 724
    :cond_2
    if-eqz v1, :cond_3

    .line 725
    const/4 v2, 0x2

    goto :goto_0

    .line 727
    :cond_3
    const/4 v2, 0x7

    .line 729
    :goto_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    new-instance v4, Landroid/telephony/ims/ImsCallProfile;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/QImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 731
    return-void
.end method

.method private startAlert()V
    .locals 2

    .line 2956
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWifiAlertHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2957
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$1;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWifiAlertHandler:Landroid/os/Handler;

    .line 2981
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mWifiAlertHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2982
    return-void
.end method

.method private startBeepForAlert()V
    .locals 3

    .line 2985
    new-instance v0, Lorg/codeaurora/ims/ImsCallSessionImpl$2;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$2;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 3002
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl$2;->start()V

    .line 3003
    const-string v0, "Due to network conditions, the call may be dropped"

    .line 3004
    .local v0, "TOAST_AFTER_DROPCALL":Ljava/lang/String;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3005
    return-void
.end method

.method private static toAudioCodec(Lorg/codeaurora/ims/DriverCallIms;)I
    .locals 3
    .param p0, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 1562
    if-nez p0, :cond_0

    .line 1563
    const/4 v0, 0x0

    return v0

    .line 1566
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    invoke-virtual {v0}, Lorg/codeaurora/ims/AudioQuality;->getCodec()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1567
    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    invoke-virtual {v0}, Lorg/codeaurora/ims/AudioQuality;->getCodec()I

    move-result v0

    goto :goto_0

    .line 1568
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, v1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const-string v2, "Codec"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapAudioCodecFromExtras(Ljava/lang/String;)I

    move-result v0

    .line 1566
    :goto_0
    return v0
.end method

.method public static toImsCallProfile(Lorg/codeaurora/ims/MultiIdentityLineInfo;Lorg/codeaurora/ims/QImsCallProfile;)Lorg/codeaurora/ims/QImsCallProfile;
    .locals 3
    .param p0, "line"    # Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .param p1, "profile"    # Lorg/codeaurora/ims/QImsCallProfile;

    .line 1990
    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1992
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 1993
    .local v0, "msisdn":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 1995
    :cond_1
    const-string v1, "terminatingNumber"

    invoke-virtual {p1, v1, v0}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    invoke-virtual {p0}, Lorg/codeaurora/ims/MultiIdentityLineInfo;->getLineType()I

    move-result v1

    const-string v2, "lineType"

    invoke-virtual {p1, v2, v1}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1997
    return-object p1

    .line 1993
    :cond_2
    :goto_0
    return-object p1

    .line 1990
    .end local v0    # "msisdn":Ljava/lang/String;
    :cond_3
    :goto_1
    return-object p1
.end method

.method private unMuteStateReporting()V
    .locals 2

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Call session state reporting unmuted. session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    .line 334
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isImsCallSessionAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 337
    :cond_0
    return-void
.end method

.method private updateCrsStatus(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 5
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 2764
    const/4 v0, 0x0

    .line 2765
    .local v0, "changed":Z
    if-nez p1, :cond_0

    .line 2766
    const-string v1, "Null dcUpdate in updateCrsStatus"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2767
    return-void

    .line 2769
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v1, :cond_1

    .line 2770
    const-string v1, "Null mDc in updateCrsStatus"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2771
    return-void

    .line 2774
    :cond_1
    iget-boolean v1, v1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    move v0, v1

    .line 2775
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    iput-boolean v2, v1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 2777
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    if-eqz v1, :cond_3

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v2, v2, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 2778
    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/CrsData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2779
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v2}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/CrsData;->setCrsType(I)V

    .line 2780
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v2}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/CrsData;->setOriginalCallType(I)V

    .line 2781
    const/4 v0, 0x1

    .line 2784
    :cond_3
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    if-nez v1, :cond_4

    .line 2785
    goto :goto_1

    :cond_4
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v3

    :goto_1
    move v1, v3

    .line 2786
    .local v1, "type":I
    if-eqz v0, :cond_5

    .line 2787
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    monitor-enter v2

    .line 2788
    :try_start_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    new-instance v4, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v1, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda2;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;ILorg/codeaurora/ims/DriverCallIms;)V

    invoke-interface {v3, v4}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2796
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2798
    :cond_5
    :goto_2
    return-void
.end method

.method private updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 10
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 1713
    if-nez p1, :cond_0

    .line 1714
    const-string v0, "updateImsCallProfile called with dc null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1715
    return-void

    .line 1718
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    if-nez v0, :cond_1

    .line 1719
    new-instance v0, Lorg/codeaurora/ims/QImsCallProfile;

    invoke-direct {v0}, Lorg/codeaurora/ims/QImsCallProfile;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 1723
    :cond_1
    const/4 v0, 0x0

    .line 1724
    .local v0, "callMode":I
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    const/4 v2, 0x0

    const/16 v3, 0x12

    const/4 v4, 0x1

    if-eqz v1, :cond_8

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, v1, Lorg/codeaurora/ims/CallDetails;->localAbility:[Lorg/codeaurora/ims/ServiceStatus;

    if-eqz v1, :cond_8

    .line 1725
    invoke-static {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallMode(Lorg/codeaurora/ims/DriverCallIms;)I

    move-result v0

    .line 1726
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const-string v5, "android.telephony.ims.extra.IS_CROSS_SIM_CALL"

    invoke-virtual {v1, v5}, Lorg/codeaurora/ims/QImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1728
    .local v1, "wasCiWlanCall":Z
    const/16 v6, 0x15

    if-ne v0, v6, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v2

    .line 1730
    .local v6, "isCiWlanCall":Z
    :goto_0
    if-eq v1, v6, :cond_3

    .line 1731
    iget-object v7, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v7, v5, v6}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1734
    :cond_3
    invoke-static {v0}, Lorg/codeaurora/ims/ImsRegistrationUtils;->toTelephonManagerRadioTech(I)I

    move-result v5

    .line 1738
    .local v5, "radioTech":I
    iget-object v7, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v8, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v7, v8, :cond_7

    if-nez v5, :cond_7

    iget-object v7, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    if-eqz v7, :cond_7

    .line 1741
    iget-object v7, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v7, v7, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v7}, Lorg/codeaurora/ims/ImsCallUtils;->isVoiceCall(I)Z

    move-result v7

    const/16 v8, 0xd

    if-eqz v7, :cond_5

    .line 1742
    iget-object v7, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsServiceClassTracker;->isVoiceSupportedOverWifi()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1743
    move v8, v3

    goto :goto_1

    .line 1744
    :cond_4
    nop

    :goto_1
    move v5, v8

    goto :goto_3

    .line 1746
    :cond_5
    iget-object v7, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mTracker:Lorg/codeaurora/ims/ImsServiceClassTracker;

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsServiceClassTracker;->isVideoSupportedOverWifi()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1747
    move v8, v3

    goto :goto_2

    .line 1748
    :cond_6
    nop

    :goto_2
    move v5, v8

    .line 1751
    :cond_7
    :goto_3
    iget-object v7, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const-string v8, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    invoke-virtual {v7, v8, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1754
    iget-object v7, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-object v8, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 1755
    invoke-virtual {v8}, Lorg/codeaurora/ims/CallDetails;->isRadioTech5G()Z

    move-result v8

    .line 1754
    const-string v9, "isCall5G"

    invoke-virtual {v7, v9, v8}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1757
    .end local v1    # "wasCiWlanCall":Z
    .end local v5    # "radioTech":I
    .end local v6    # "isCiWlanCall":Z
    :cond_8
    sget-object v1, Lorg/codeaurora/ims/ImsCallSessionImpl;->CUSTOMIZED_REGION:Ljava/lang/String;

    const-string v5, "jp_rk"

    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v5, "cna"

    if-eqz v1, :cond_b

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 1758
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 1759
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 1760
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    iget-object v7, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    invoke-virtual {v1, v6, v7}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v1

    .line 1761
    .local v1, "type":Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    sget-object v6, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-eq v1, v6, :cond_a

    sget-object v6, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->EXACT_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-ne v1, v6, :cond_9

    goto :goto_4

    .line 1765
    :cond_9
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-object v7, p1, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    invoke-virtual {v6, v5, v7}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 1763
    :cond_a
    :goto_4
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const-string v7, ""

    invoke-virtual {v6, v5, v7}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    .end local v1    # "type":Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;
    :goto_5
    goto :goto_6

    .line 1768
    :cond_b
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    :goto_6
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    const-string v6, "oi"

    invoke-virtual {v1, v6, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget v5, p1, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 1773
    invoke-static {v5}, Landroid/telephony/ims/ImsCallProfile;->presentationToOir(I)I

    move-result v5

    .line 1772
    const-string v6, "oir"

    invoke-virtual {v1, v6, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1774
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget v5, p1, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 1775
    invoke-static {v5}, Landroid/telephony/ims/ImsCallProfile;->presentationToOir(I)I

    move-result v5

    .line 1774
    const-string v6, "cnap"

    invoke-virtual {v1, v6, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1776
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v5, v5, Lorg/codeaurora/ims/CallDetails;->callsubstate:I

    const-string v6, "CallSubstate"

    invoke-virtual {v1, v6, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1778
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-boolean v5, p1, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    const-string v6, "CallEncryption"

    invoke-virtual {v1, v6, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateImsCallProfile :: Packing encryption="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v5, p1, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " in mCallProfile\'s extras."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1783
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateCallForwardInfoExtras(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 1789
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const-string v5, "android.telephony.ims.extra.CONFERENCE"

    invoke-virtual {v1, v5}, Lorg/codeaurora/ims/QImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1790
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-boolean v6, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    invoke-virtual {v1, v5, v6}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1798
    :cond_c
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->isConfSupportIndicated()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1799
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 1801
    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v5, v5, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v5}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1802
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->isVideoConfSupported()Z

    move-result v5

    goto :goto_7

    :cond_d
    move v5, v4

    .line 1799
    :goto_7
    const-string v6, "conference_avail"

    invoke-virtual {v1, v6, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1805
    :cond_e
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-static {v1, p1}, Lorg/codeaurora/ims/ImsCallUtils;->hasCallTypeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-static {v1, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->hasCauseCodeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1806
    :cond_f
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v5, v5, Lorg/codeaurora/ims/CallDetails;->causeCode:I

    const-string v6, "SessionModificationCause"

    invoke-virtual {v1, v6, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1810
    :cond_10
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateLowBatteryStatus()Z

    .line 1811
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    const-string v6, "phoneId"

    invoke-virtual {v1, v6, v5}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1814
    const/4 v1, 0x1

    .line 1815
    .local v1, "callType":I
    const/4 v5, -0x1

    .line 1816
    .local v5, "videoDirection":I
    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v6, v6, Lorg/codeaurora/ims/CallDetails;->call_type:I

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto :goto_8

    .line 1818
    :pswitch_1
    const/4 v1, 0x1

    .line 1819
    const/4 v5, -0x1

    .line 1820
    goto :goto_8

    .line 1839
    :pswitch_2
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v6}, Lorg/codeaurora/ims/QImsCallProfile;->getCallType()I

    move-result v1

    .line 1840
    const/4 v5, 0x0

    goto :goto_8

    .line 1826
    :pswitch_3
    const/4 v1, 0x4

    .line 1827
    const/4 v5, 0x3

    .line 1828
    goto :goto_8

    .line 1834
    :pswitch_4
    const/4 v1, 0x6

    .line 1835
    const/4 v5, 0x1

    .line 1836
    goto :goto_8

    .line 1830
    :pswitch_5
    const/4 v1, 0x5

    .line 1831
    const/4 v5, 0x2

    .line 1832
    goto :goto_8

    .line 1822
    :pswitch_6
    const/4 v1, 0x2

    .line 1823
    const/4 v5, -0x1

    .line 1824
    nop

    .line 1844
    :goto_8
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    new-instance v7, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v7, v4, v1}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {v6, v7}, Lorg/codeaurora/ims/QImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1847
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v4}, Lorg/codeaurora/ims/QImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v4

    .line 1850
    .local v4, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    nop

    .line 1851
    invoke-virtual {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v6

    .line 1852
    invoke-virtual {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioDirection()I

    move-result v7

    .line 1853
    invoke-virtual {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v8

    .line 1855
    invoke-virtual {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v9

    .line 1850
    invoke-static {v6, v7, v8, v5, v9}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(IIIII)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1858
    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v6, v6, Lorg/codeaurora/ims/CallDetails;->rttMode:I

    invoke-virtual {v4, v6}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 1859
    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v6, v4}, Lorg/codeaurora/ims/QImsCallProfile;->updateMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1870
    invoke-static {v0}, Lorg/codeaurora/ims/ImsRegistrationUtils;->toTelephonManagerRadioTech(I)I

    move-result v6

    if-ne v6, v3, :cond_11

    .line 1872
    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    invoke-direct {p0, v3, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateVoWifiCallQualityExtra(IZ)V

    .line 1876
    :cond_11
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getVerstatInfo()Lorg/codeaurora/ims/VerstatInfo;

    move-result-object v2

    .line 1877
    .local v2, "verstatInfo":Lorg/codeaurora/ims/VerstatInfo;
    if-eqz v2, :cond_12

    .line 1878
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsCallUtils;->toImsCallProfile(Lorg/codeaurora/ims/VerstatInfo;Lorg/codeaurora/ims/QImsCallProfile;)Lorg/codeaurora/ims/QImsCallProfile;

    move-result-object v3

    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 1879
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateImsCallProfile :: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1883
    :cond_12
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-static {v3, v6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->toImsCallProfile(Lorg/codeaurora/ims/MultiIdentityLineInfo;Lorg/codeaurora/ims/QImsCallProfile;)Lorg/codeaurora/ims/QImsCallProfile;

    move-result-object v3

    iput-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 1885
    iget-boolean v6, p1, Lorg/codeaurora/ims/DriverCallIms;->isTirOverwriteAllowed:Z

    const-string v7, "incomingTir"

    invoke-virtual {v3, v7, v6}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1889
    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isVideoCrsSupported(ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1890
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateCrsExtras(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 1894
    :cond_13
    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isCallProgressNotificationSupported(ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1895
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateCallProgressInfoExtras(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 1899
    :cond_14
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateComputedAudioQualityExtras(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 1902
    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v6}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->isDataChannelSupported(ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1903
    const-string v3, "DC is enabled and update modemCallId"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1904
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 1906
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getModemCallId()I

    move-result v6

    .line 1904
    const-string v7, "modemCallId"

    invoke-virtual {v3, v7, v6}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1908
    :cond_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateLocalDc(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 3
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 310
    const/4 v0, 0x0

    .line 311
    .local v0, "hasChanged":Z
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v1, :cond_0

    .line 312
    new-instance v1, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v1, p1}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/DriverCallIms;)V

    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    .line 313
    const/4 v0, 0x1

    goto :goto_1

    .line 315
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    if-eqz v1, :cond_1

    .line 317
    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    invoke-virtual {v1, p0, v2}, Lorg/codeaurora/ims/ImsConferenceController;->mayBeUpdateMultipartyState(Lorg/codeaurora/ims/ImsCallSessionImpl;Z)V

    .line 320
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/DriverCallIms;->update(Lorg/codeaurora/ims/DriverCallIms;)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 322
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLocalDc is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    return v0
.end method

.method public static updateMediaProfileAudioDirection(Lorg/codeaurora/ims/QImsCallProfile;Z)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 6
    .param p0, "callProfile"    # Lorg/codeaurora/ims/QImsCallProfile;
    .param p1, "isLocalRingback"    # Z

    .line 744
    if-nez p0, :cond_0

    .line 745
    const/4 v0, 0x0

    return-object v0

    .line 747
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 748
    :cond_1
    const/4 v0, 0x3

    :goto_0
    nop

    .line 749
    .local v0, "audioDirection":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    .line 750
    .local v1, "currMediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    nop

    .line 752
    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v2

    .line 754
    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v3

    .line 755
    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoDirection()I

    move-result v4

    .line 756
    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v5

    .line 751
    invoke-static {v2, v0, v3, v4, v5}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(IIIII)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    .line 757
    .local v2, "newMediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/QImsCallProfile;->updateMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 758
    return-object v2
.end method


# virtual methods
.method public accept(IILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 4
    .param p1, "callType"    # I
    .param p2, "presentation"    # I
    .param p3, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2320
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2322
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RTT: rttMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TIR presentation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2324
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2325
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v2

    invoke-virtual {p3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v3

    .line 2324
    invoke-virtual {v0, v1, v2, p2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->acceptCall(Landroid/os/Message;III)V

    .line 2326
    return-void
.end method

.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2305
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2307
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RTT: rttMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2308
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAnswerOptionTirConfig:I

    invoke-virtual {p0, p1, v0, p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->accept(IILandroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 2309
    return-void
.end method

.method public close()V
    .locals 2

    .line 1269
    const-string v0, "Close!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1270
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1271
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1273
    :cond_0
    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 4
    .param p1, "deflectNumber"    # Ljava/lang/String;

    .line 2362
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2364
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x10

    .line 2365
    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2364
    invoke-virtual {v0, v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->deflectCall(ILjava/lang/String;Landroid/os/Message;)V

    .line 2366
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 0
    .param p1, "participants"    # [Ljava/lang/String;

    .line 2565
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    return-void
.end method

.method public getCallDomain()I
    .locals 2

    .line 1401
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 1403
    :cond_0
    const/4 v0, 0x3

    .line 1404
    .local v0, "callDomain":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_1

    .line 1405
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    .line 1407
    :cond_1
    return v0
.end method

.method public getCallId()Ljava/lang/String;
    .locals 1

    .line 1281
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1312
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1313
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method public getCallee()Ljava/lang/String;
    .locals 1

    .line 1430
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1431
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    return-object v0
.end method

.method public getConfInfo()Lorg/codeaurora/ims/parser/ConfInfo;
    .locals 1

    .line 2817
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2818
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    return-object v0
.end method

.method public getDcState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1

    .line 1416
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1419
    :cond_0
    const-string v0, "Null mDc! Returning null!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1420
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDriverCallState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 1

    .line 1435
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1436
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 3284
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;
    .locals 1

    .line 264
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    return-object v0
.end method

.method public bridge synthetic getImsVideoCallProvider()Landroid/telephony/ims/ImsVideoCallProvider;
    .locals 1

    .line 91
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsVideoCallProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method public getImsVideoCallProvider()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 2

    .line 2682
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2684
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-nez v0, :cond_1

    .line 2685
    const-string v0, "getImsVideoCallProvider: Video call provider is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2686
    return-object v1

    .line 2688
    :cond_1
    return-object v0
.end method

.method public getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    .locals 1

    .line 249
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 250
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    return-object v0
.end method

.method public getInternalCallType()I
    .locals 2

    .line 1389
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    return v0

    .line 1391
    :cond_0
    const/16 v0, 0xa

    .line 1392
    .local v0, "callType":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v1, :cond_1

    .line 1393
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    goto :goto_0

    .line 1394
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    if-eqz v1, :cond_2

    .line 1395
    invoke-virtual {v1}, Lorg/codeaurora/ims/QImsCallProfile;->getCallType()I

    move-result v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->convertToInternalCallType(I)I

    move-result v0

    .line 1397
    :cond_2
    :goto_0
    return v0
.end method

.method public getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;
    .locals 3

    .line 1373
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    return-object v0

    .line 1375
    :cond_0
    const/4 v0, 0x0

    .line 1376
    .local v0, "state":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v1, :cond_1

    .line 1377
    iget-object v0, v1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    goto :goto_0

    .line 1378
    :cond_1
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1379
    sget-object v0, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 1381
    :cond_2
    :goto_0
    return-object v0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1322
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1323
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method public getMediaId()I
    .locals 2

    .line 1291
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 1292
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v0, Lorg/codeaurora/ims/CallDetails;->callMediaId:I

    :cond_1
    return v1
.end method

.method public getPhoneId()I
    .locals 1

    .line 1385
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    return v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1342
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1344
    :cond_0
    const/4 v0, 0x0

    .line 1346
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    if-eqz v1, :cond_1

    .line 1347
    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/QImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1349
    :cond_1
    const-string v1, "Call Profile null! "

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1351
    :goto_0
    return-object v0
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 1332
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1333
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1363
    invoke-super {p0}, Lorg/codeaurora/ims/QImsSessionBase;->getState()I

    move-result v0

    return v0
.end method

.method public handleHandover(IIII[BLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "hoType"    # I
    .param p2, "srcTech"    # I
    .param p3, "targetTech"    # I
    .param p4, "extraType"    # I
    .param p5, "extraInfo"    # [B
    .param p6, "errorCode"    # Ljava/lang/String;
    .param p7, "errorMessage"    # Ljava/lang/String;

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hoType : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "srcTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " targetTech: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 908
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 910
    :cond_0
    invoke-direct {p0, p6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->parseErrorCode(Ljava/lang/String;)I

    move-result v0

    .line 911
    .local v0, "error":I
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRegistrationUtils;->toTelephonManagerRadioTech(I)I

    move-result v1

    .line 912
    .local v1, "rilSrcTech":I
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRegistrationUtils;->toTelephonManagerRadioTech(I)I

    move-result v2

    .line 914
    .local v2, "rilTargetTech":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    .line 949
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled hoType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 946
    :pswitch_0
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v3, v1, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMayHandover(II)V

    .line 947
    goto :goto_0

    .line 941
    :pswitch_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->alertForHandoverFailed()V

    .line 942
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v0, v4, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v1, v2, v5}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 944
    goto :goto_0

    .line 931
    :pswitch_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HO Failure for WWAN->IWLAN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 932
    if-ne p4, v3, :cond_1

    .line 933
    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const-string v6, "handoverInfo"

    invoke-virtual {v5, v6, v3}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 936
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->alertForHandoverFailed()V

    .line 937
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v5, v0, v4, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, v1, v2, v5}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHandoverFailed(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 939
    goto :goto_0

    .line 918
    :pswitch_3
    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v6, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v6, v0, v4, p7}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v5, v1, v2, v6}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHandover(IILandroid/telephony/ims/ImsReasonInfo;)V

    .line 924
    const/16 v5, 0x12

    if-ne v1, v5, :cond_2

    const/16 v5, 0xd

    if-ne v2, v5, :cond_2

    .line 926
    invoke-direct {p0, v4, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateVoWifiCallQualityExtra(IZ)V

    goto :goto_0

    .line 916
    :pswitch_4
    nop

    .line 951
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleRetryErrorNotify(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 6
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 884
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->mCallFailReason:I

    .line 885
    .local v0, "sipErrorCode":I
    if-eqz v0, :cond_0

    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry Error Notify "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdditionalCallInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 889
    .local v1, "additionalCallInfo":Ljava/lang/String;
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/CallDetails;->addExtra(Ljava/lang/String;)V

    .line 890
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const-string v3, "AdditionalCallInfo"

    invoke-virtual {v2, v3, v0}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 893
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f010000

    .line 894
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 895
    .local v2, "displayCsRetryToast":Z
    if-eqz v2, :cond_0

    .line 896
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LTE HD voice is unavailable. 3G voice call will be connected.SIP Error code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 898
    .local v3, "msg":Ljava/lang/String;
    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 901
    .end local v1    # "additionalCallInfo":Ljava/lang/String;
    .end local v2    # "displayCsRetryToast":Z
    .end local v3    # "msg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public hasMediaIdValid()Z
    .locals 2

    .line 1302
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1303
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0}, Lorg/codeaurora/ims/CallDetails;->hasMediaIdValid()Z

    move-result v1

    :cond_1
    return v1
.end method

.method public hasUserMarkedCallUnwanted()Z
    .locals 3

    .line 2406
    const/4 v0, 0x0

    .line 2407
    .local v0, "defaultVal":I
    const-string v1, "persist.vendor.radio.debug.mark_unwanted_call"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2409
    .local v1, "ret":I
    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2496
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2498
    :cond_0
    const-string v0, "hold requested."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2499
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v2, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->hold(Landroid/os/Message;I)V

    .line 2500
    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 2
    .param p1, "participants"    # [Ljava/lang/String;

    .line 2611
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2613
    :cond_0
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    .line 2617
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2618
    return-void

    .line 2614
    :cond_2
    :goto_0
    const-string v0, "inviteParticipants: empty participants"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2615
    return-void
.end method

.method public isCallActive()Z
    .locals 3

    .line 2352
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2353
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method isImsCallSessionAlive()Z
    .locals 2

    .line 1206
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInCall()Z
    .locals 3

    .line 1457
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1459
    :cond_0
    const/4 v0, 0x0

    .line 1460
    .local v0, "isInCall":Z
    sget-object v1, Lorg/codeaurora/ims/ImsCallSessionImpl$3;->$SwitchMap$org$codeaurora$ims$DriverCallIms$State:[I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v2, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v2}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1467
    :pswitch_0
    const/4 v0, 0x1

    .line 1470
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isMergeHostSession()Z
    .locals 1

    .line 3220
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsMergeHostSession:Z

    return v0
.end method

.method public isMultiparty()Z
    .locals 3

    .line 1445
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1446
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    if-eqz v0, :cond_3

    .line 1448
    const-string v2, "android.telephony.ims.extra.CONFERENCE"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/QImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    nop

    .line 1446
    :goto_0
    return v1
.end method

.method public isMultipartyCall()Z
    .locals 2

    .line 1411
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1412
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    :cond_1
    return v1
.end method

.method public isPreparatorySession(Ljava/lang/String;)Z
    .locals 2
    .param p1, "callId"    # Ljava/lang/String;

    .line 2757
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    .line 2758
    return v1

    .line 2760
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    :cond_1
    return v1
.end method

.method synthetic lambda$handleSipDtmfReceived$2$org-codeaurora-ims-ImsCallSessionImpl(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/ICrsCrbtListener;

    .line 2742
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mSipDtmfInfo:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->onSipDtmfReceived(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2745
    goto :goto_0

    .line 2743
    :catchall_0
    move-exception v0

    .line 2744
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "onSipDtmfReceived exception"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2746
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method synthetic lambda$setCrsCrbtListener$0$org-codeaurora-ims-ImsCallSessionImpl(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 3
    .param p1, "crsListener"    # Lorg/codeaurora/ims/internal/ICrsCrbtListener;

    .line 2704
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v1, v1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 2705
    invoke-virtual {v1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v2, v2, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 2704
    invoke-interface {p1, v0, v1, v2}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->onCrsDataUpdated(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2708
    goto :goto_0

    .line 2706
    :catchall_0
    move-exception v0

    .line 2707
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "onCrsDataUpdate exception"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2709
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method synthetic lambda$setCrsCrbtListener$1$org-codeaurora-ims-ImsCallSessionImpl(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 2
    .param p1, "sipDtmfListener"    # Lorg/codeaurora/ims/internal/ICrsCrbtListener;

    .line 2712
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mSipDtmfInfo:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->onSipDtmfReceived(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2715
    goto :goto_0

    .line 2713
    :catchall_0
    move-exception v0

    .line 2714
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "onSipDtmfReceived exception"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2716
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method synthetic lambda$updateCrsStatus$3$org-codeaurora-ims-ImsCallSessionImpl(ILorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p3, "listener"    # Lorg/codeaurora/ims/internal/ICrsCrbtListener;

    .line 2790
    :try_start_0
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-boolean v1, p2, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    invoke-interface {p3, v0, p1, v1}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->onCrsDataUpdated(IIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2794
    goto :goto_0

    .line 2792
    :catchall_0
    move-exception v0

    .line 2793
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "onCrsDataUpdate exception"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2795
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 2
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 548
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 550
    .local v0, "areStatesSame":Z
    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;Z)Z

    move-result v1

    return v1
.end method

.method public merge()V
    .locals 4

    .line 2522
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2525
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-nez v0, :cond_1

    .line 2526
    const-string v0, "merge request is already in progress, ignore this merge request"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2527
    return-void

    .line 2530
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    if-nez v0, :cond_3

    .line 2531
    const-string v0, "ConferenceController is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2532
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_2

    .line 2533
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 2536
    :cond_2
    return-void

    .line 2540
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setMergeHostSession(Z)V

    .line 2544
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfController:Lorg/codeaurora/ims/ImsConferenceController;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsConferenceController;->sendConferenceRequest(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 2545
    return-void
.end method

.method public notifyConfInfo([B)V
    .locals 2
    .param p1, "confInfoBytes"    # [B

    .line 2801
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2803
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/parser/ConfInfo;->updateConfXmlBytes([B)V

    .line 2804
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    invoke-virtual {v0}, Lorg/codeaurora/ims/parser/ConfInfo;->getConfUriList()Landroid/telephony/ims/ImsConferenceState;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    .line 2805
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_1

    .line 2806
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsConferenceState:Landroid/telephony/ims/ImsConferenceState;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    .line 2808
    :cond_1
    return-void
.end method

.method public notifyIncomingDtmf(ZLjava/lang/String;)V
    .locals 3
    .param p1, "isStart"    # Z
    .param p2, "dtmf"    # Ljava/lang/String;

    .line 3245
    if-nez p2, :cond_0

    .line 3246
    const-string v0, "notifyIncomingDtmf: dtmf is null!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3247
    return-void

    .line 3249
    :cond_0
    const-string v0, "IncomingDtmfInfo"

    if-eqz p1, :cond_1

    .line 3250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyIncomingDtmf: Adding MT dtmf extra with digit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3251
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v1, v0, p2}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3253
    :cond_1
    const-string v1, "notifyIncomingDtmf: Removing MT dtmf extra"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3254
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3255
    .local v1, "extrasToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3256
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/QImsCallProfile;->removeExtras(Ljava/util/List;)V

    .line 3258
    .end local v1    # "extrasToRemove":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    .line 3259
    return-void
.end method

.method public notifyReceivedRttMessage(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .line 3150
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3151
    const-string v0, "RTT: notifyReceivedRttMessage not allowed."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3152
    return-void

    .line 3155
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 3157
    .local v0, "message":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3158
    const-string v1, "notifyReceivedRttMessage rtt msg null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3159
    return-void

    .line 3162
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v1, :cond_2

    .line 3163
    const-string v1, "notifyReceivedRttMessage ListenerProxy null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3164
    return-void

    .line 3167
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: notifyReceivedRttMessage rttMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3168
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionRttMessageReceived(Ljava/lang/String;)V

    .line 3169
    return-void
.end method

.method public notifyRttModifyRequest(Lorg/codeaurora/ims/CallDetails;)V
    .locals 3
    .param p1, "callDetails"    # Lorg/codeaurora/ims/CallDetails;

    .line 3133
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3135
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v0, :cond_1

    .line 3136
    const-string v0, "RTT: notifyRttModifyRequest ListenerProxy null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3137
    return-void

    .line 3140
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RTT: notifyRttModifyRequest rttMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3142
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    .line 3143
    .local v0, "profile":Landroid/telephony/ims/ImsCallProfile;
    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 3145
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionRttModifyRequestReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 3146
    return-void
.end method

.method public notifyRttModifyResponse(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 3173
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3175
    :cond_0
    const/4 v0, 0x2

    .line 3177
    .local v0, "status":I
    if-eqz p1, :cond_1

    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    .line 3178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: modify request exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3179
    iget-object v1, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(Ljava/lang/Throwable;)I

    move-result v0

    goto :goto_0

    .line 3181
    :cond_1
    const/4 v0, 0x1

    .line 3184
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v1, :cond_2

    .line 3185
    const-string v1, "notifyRttModifyResponse ListenerProxy null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3186
    return-void

    .line 3189
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: notifyRttModifyResponse status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3190
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionRttModifyResponseReceived(I)V

    .line 3191
    return-void
.end method

.method public notifyTtyModeChange(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TTY mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 873
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 875
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_1

    .line 877
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTtyModeReceived(I)V

    goto :goto_0

    .line 879
    :cond_1
    const-string v0, "notifyTtyModeChange ListenerProxy null! "

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 881
    :goto_0
    return-void
.end method

.method public notifyVoiceInfoChanged(I)V
    .locals 3
    .param p1, "voiceInfo"    # I

    .line 3264
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-nez v0, :cond_0

    goto :goto_1

    .line 3270
    :cond_0
    invoke-static {}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 3271
    .local v0, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setReceivingRttAudio(Z)V

    .line 3273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: notifyVoiceInfoChanged voiceInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3274
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionRttAudioIndicatorChanged(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 3275
    return-void

    .line 3265
    .end local v0    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_2
    :goto_1
    const-string v0, "notifyVoiceInfoChanged Session invalid/not active/mCallbackHandler null Return"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3267
    return-void
.end method

.method public onConferenceParticipantStateChanged(Z)V
    .locals 2
    .param p1, "isMultiParty"    # Z

    .line 3225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConferenceParticipantStateChanged isMultiParty : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3227
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-nez v0, :cond_0

    .line 3228
    const-string v0, "onConferenceParticipantStateChanged: merge is in progress"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3229
    return-void

    .line 3232
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    if-eqz v0, :cond_1

    .line 3233
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMultipartyStateChanged(Z)V

    .line 3235
    :cond_1
    return-void
.end method

.method public onConferenceStateChanged(Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;Z)V
    .locals 2
    .param p1, "confState"    # Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;
    .param p2, "isSuccess"    # Z

    .line 3195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConferenceStateChanged ConferenceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isSuccess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3198
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$3;->$SwitchMap$org$codeaurora$ims$ImsConferenceController$ConferenceState:[I

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsConferenceController$ConferenceState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 3210
    return-void

    .line 3207
    :pswitch_0
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setMergeHostSession(Z)V

    .line 3208
    return-void

    .line 3203
    :pswitch_1
    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setMergeHostSession(Z)V

    .line 3204
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->unMuteStateReporting()V

    .line 3205
    return-void

    .line 3200
    :pswitch_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->muteStateReporting()V

    .line 3201
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V
    .locals 1
    .param p1, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 255
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-nez v0, :cond_0

    .line 256
    const-string v0, "onReceivedModifyCall: Ignoring session modification request."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    return-void

    .line 259
    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallModification;->onReceivedModifyCall(Lorg/codeaurora/ims/CallModify;)V

    .line 260
    return-void
.end method

.method public reject(I)V
    .locals 8
    .param p1, "reason"    # I

    .line 2335
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2337
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reject "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2340
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isLowBatteryVideoCall()Z

    move-result v0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    .line 2341
    if-eqz v0, :cond_1

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 2342
    invoke-static {v0, v1}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2343
    const/16 p1, 0x1f9

    goto :goto_0

    .line 2345
    :cond_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeOverrideReason(I)I

    move-result p1

    .line 2347
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x7

    .line 2348
    invoke-virtual {v5, v7, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2347
    move v5, p1

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    .line 2349
    return-void
.end method

.method public removeCrsCrbtListener(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/ICrsCrbtListener;

    .line 2721
    if-eqz p1, :cond_1

    .line 2724
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    monitor-enter v0

    .line 2725
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2726
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2728
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCrsCrbtListener error: Duplicate listener, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2730
    :goto_0
    monitor-exit v0

    .line 2731
    return-void

    .line 2730
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2722
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 9
    .param p1, "participants"    # [Ljava/lang/String;

    .line 2641
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2642
    :cond_0
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 2644
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x1f5

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xa

    .line 2645
    invoke-virtual {v0, v8, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 2644
    invoke-virtual/range {v1 .. v8}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    .line 2646
    return-void
.end method

.method public reportNewConferenceCallSession(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "confCallSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 1491
    if-eqz p1, :cond_0

    .line 1492
    const-string v0, "Calling callSessionMergeStarted"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1493
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    .line 1494
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    .line 1493
    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionMergeStarted(Lorg/codeaurora/ims/ImsCallSessionImpl;Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_0

    .line 1496
    :cond_0
    const-string v0, "Null confCallSession! Not calling callSessionMergeStarted"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1499
    :goto_0
    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2510
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2512
    :cond_0
    const-string v0, "resume requested."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2513
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v2, v2, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->resume(Landroid/os/Message;I)V

    .line 2514
    return-void
.end method

.method public resumePendingCall(I)V
    .locals 4
    .param p1, "videoState"    # I

    .line 2201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumePendingCall VideoState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2203
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    .line 2204
    invoke-static {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallTypeFromVideoState(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 2203
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/QImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2205
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V

    .line 2206
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 4
    .param p1, "c"    # C
    .param p2, "result"    # Landroid/os/Message;

    .line 2657
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2658
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x13

    invoke-virtual {v2, v3, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->sendDtmf(ICLandroid/os/Message;)V

    .line 2659
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "rttMessage"    # Ljava/lang/String;

    .line 3049
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3050
    const-string v0, "RTT: sendRttMessage not allowed."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3051
    return-void

    .line 3054
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendRttMessage(Ljava/lang/String;Landroid/os/Message;)V

    .line 3055
    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 5
    .param p1, "toProfile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 3059
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3062
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 3066
    .local v0, "details":Lorg/codeaurora/ims/CallDetails;
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/CallDetails;->setRttMode(I)V

    .line 3067
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTT: sendRttModifyRequest mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3069
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 3070
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 3072
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mRttMode is invalid."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3075
    :cond_2
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xe

    invoke-virtual {v2, v3, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    new-instance v3, Lorg/codeaurora/ims/CallModify;

    iget v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-direct {v3, v0, v4}, Lorg/codeaurora/ims/CallModify;-><init>(Lorg/codeaurora/ims/CallDetails;I)V

    invoke-virtual {v1, v2, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallInitiate(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    .line 3077
    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 5
    .param p1, "response"    # Z

    .line 3085
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3087
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v1

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallDomain()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 3089
    .local v0, "callDetails":Lorg/codeaurora/ims/CallDetails;
    new-instance v1, Lorg/codeaurora/ims/CallModify;

    invoke-direct {v1}, Lorg/codeaurora/ims/CallModify;-><init>()V

    .line 3090
    .local v1, "callModify":Lorg/codeaurora/ims/CallModify;
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lorg/codeaurora/ims/CallModify;->call_index:I

    .line 3091
    new-instance v2, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v2, v0}, Lorg/codeaurora/ims/CallDetails;-><init>(Lorg/codeaurora/ims/CallDetails;)V

    iput-object v2, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    .line 3093
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RTT: sendRttModifyResponse response = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3094
    iget-object v2, v1, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapResponseToMode(Z)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/CallDetails;->setRttMode(I)V

    .line 3096
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xf

    invoke-virtual {v3, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->modifyCallConfirm(Landroid/os/Message;Lorg/codeaurora/ims/CallModify;)V

    .line 3098
    return-void
.end method

.method public sendSipDtmf(Ljava/lang/String;)V
    .locals 3
    .param p1, "requestCode"    # Ljava/lang/String;

    .line 2751
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2752
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->sendSipDtmf(Ljava/lang/String;Landroid/os/Message;)V

    .line 2753
    return-void
.end method

.method public setAnswerExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 342
    if-eqz p1, :cond_0

    .line 343
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAnswerOptionTirConfig:I

    const-string v1, "tirConfig"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mAnswerOptionTirConfig:I

    .line 346
    :cond_0
    return-void
.end method

.method public setConfInfo(Lorg/codeaurora/ims/parser/ConfInfo;)V
    .locals 1
    .param p1, "confInfo"    # Lorg/codeaurora/ims/parser/ConfInfo;

    .line 2811
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2813
    :cond_0
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mConfInfo:Lorg/codeaurora/ims/parser/ConfInfo;

    .line 2814
    return-void
.end method

.method public setCrsCrbtListener(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/ICrsCrbtListener;

    .line 2692
    if-eqz p1, :cond_1

    .line 2695
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    monitor-enter v0

    .line 2696
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2697
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2699
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCrsCrbtListener error: Duplicate listener, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2702
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    new-instance v2, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda0;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2710
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCrsCrbtListeners:Ljava/util/List;

    new-instance v2, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda1;-><init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 2717
    monitor-exit v0

    .line 2718
    return-void

    .line 2717
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2693
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEmergencyServiceCategoryInProfile(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 4
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 350
    if-eqz p1, :cond_2

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-nez v0, :cond_0

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v1, v1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    const-string v2, "EmergencyServiceCategory"

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/CallDetails;->getValueForKeyFromExtras([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "emergencyServiceCategory":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency service category:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v1, v2, v0}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_1
    return-void

    .line 351
    .end local v0    # "emergencyServiceCategory":Ljava/lang/String;
    :cond_2
    :goto_0
    const-string v0, "Driver call or call Details is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public setImsVideoCallProviderImpl(Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;)V
    .locals 0
    .param p1, "videoCallProvider"    # Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 3279
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    .line 3280
    return-void
.end method

.method public setListener(Landroid/telephony/ims/ImsCallSessionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/telephony/ims/ImsCallSessionListener;

    .line 2232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setListener: listener = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2233
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2234
    :cond_0
    invoke-super {p0, p1}, Lorg/codeaurora/ims/QImsSessionBase;->setListener(Landroid/telephony/ims/ImsCallSessionListener;)V

    .line 2235
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2236
    return-void
.end method

.method public setMute(Z)V
    .locals 0
    .param p1, "muted"    # Z

    .line 1479
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    return-void
.end method

.method public setScreenShareListener(Lorg/codeaurora/ims/internal/IImsScreenShareListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/IImsScreenShareListener;

    .line 582
    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mScreenSharelistener:Lorg/codeaurora/ims/internal/IImsScreenShareListener;

    .line 583
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 25
    .param p1, "callee"    # Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2039
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 2041
    :cond_0
    iget-object v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/QImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2042
    iget-object v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v2, v1}, Lorg/codeaurora/ims/QImsCallProfile;->updateMediaProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2043
    iget-object v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v2}, Lorg/codeaurora/ims/QImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 2045
    const/4 v2, 0x1

    iput v2, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 2046
    move-object/from16 v12, p1

    iput-object v12, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 2050
    const-string v3, "oir"

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v13

    .line 2051
    .local v13, "clir":I
    const/4 v14, 0x3

    .line 2052
    .local v14, "domain":I
    const-string v4, "persist.dbg.call_encrypt_ovr"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v5

    .line 2054
    .local v4, "isEncrypted":Z
    :goto_0
    const/4 v6, 0x0

    .line 2055
    .local v6, "composerInfo":Lorg/codeaurora/ims/CallComposerInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getProprietaryCallExtras()Landroid/os/Bundle;

    move-result-object v15

    .line 2056
    .local v15, "callExtras":Landroid/os/Bundle;
    if-nez v4, :cond_3

    .line 2057
    if-eqz v15, :cond_3

    .line 2058
    nop

    .line 2059
    const-string v7, "CallEncryption"

    invoke-virtual {v15, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 2060
    invoke-virtual {v15, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 2063
    sget-object v7, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_CALL_COMPOSER_INFO:Ljava/lang/String;

    invoke-virtual {v15, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 2065
    .local v7, "callComposerExtra":Landroid/os/Bundle;
    if-eqz v7, :cond_2

    .line 2066
    invoke-static {v7}, Lorg/codeaurora/ims/utils/CallComposerInfoUtils;->fromBundle(Landroid/os/Bundle;)Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v6

    .line 2067
    sget-object v8, Lorg/codeaurora/ims/QtiCallConstants;->EXTRA_CALL_COMPOSER_INFO:Ljava/lang/String;

    invoke-virtual {v15, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move/from16 v16, v4

    move-object/from16 v17, v6

    goto :goto_1

    .line 2065
    :cond_2
    move/from16 v16, v4

    move-object/from16 v17, v6

    goto :goto_1

    .line 2073
    .end local v7    # "callComposerExtra":Landroid/os/Bundle;
    :cond_3
    move/from16 v16, v4

    move-object/from16 v17, v6

    .end local v4    # "isEncrypted":Z
    .end local v6    # "composerInfo":Lorg/codeaurora/ims/CallComposerInfo;
    .local v16, "isEncrypted":Z
    .local v17, "composerInfo":Lorg/codeaurora/ims/CallComposerInfo;
    :goto_1
    invoke-static/range {p2 .. p2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getLineInfo(Landroid/telephony/ims/ImsCallProfile;)Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v11

    .line 2074
    .local v11, "info":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MultiIdentity Line info in Dial Request :: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2084
    new-instance v4, Lorg/codeaurora/ims/CallDetails;

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v6

    invoke-direct {v0, v6}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v4, v6, v14, v7, v11}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;Lorg/codeaurora/ims/MultiIdentityLineInfo;)V

    move-object v9, v4

    .line 2087
    .local v9, "details":Lorg/codeaurora/ims/CallDetails;
    invoke-direct {v0, v15, v9}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallExtrasIntoCallDetails(Landroid/os/Bundle;Lorg/codeaurora/ims/CallDetails;)V

    .line 2089
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTT: start rtt mode = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2090
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v4

    invoke-virtual {v9, v4}, Lorg/codeaurora/ims/CallDetails;->setRttMode(I)V

    .line 2091
    const-string v4, "CallPull"

    invoke-virtual {v1, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v9, v4}, Lorg/codeaurora/ims/CallDetails;->setCallPull(Z)V

    .line 2093
    invoke-direct {v0, v9}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCarrierOneDial(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v18

    .line 2094
    .local v18, "carrierOneDial":Z
    if-eqz v18, :cond_4

    .line 2095
    iget-object v4, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 2096
    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->presentationToOir(I)I

    move-result v6

    .line 2095
    invoke-virtual {v4, v3, v6}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2097
    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 2098
    invoke-static {v2}, Landroid/telephony/ims/ImsCallProfile;->presentationToOir(I)I

    move-result v4

    .line 2097
    const-string v6, "cnap"

    invoke-virtual {v3, v6, v4}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2105
    :cond_4
    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget v4, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    const-string v6, "phoneId"

    invoke-virtual {v3, v6, v4}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 2108
    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v4, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v4}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2109
    if-eqz v18, :cond_5

    iget-boolean v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsLowBattery:Z

    if-eqz v3, :cond_5

    .line 2112
    const-string v2, "defer low battery video call dial request"

    invoke-static {v0, v2}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2113
    return-void

    .line 2116
    :cond_5
    invoke-direct {v0, v9}, Lorg/codeaurora/ims/ImsCallSessionImpl;->canDial(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 2117
    const/16 v2, 0x70

    invoke-direct {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->failDialRequest(I)V

    .line 2118
    return-void

    .line 2121
    :cond_6
    const v3, 0x7f010004

    invoke-direct {v0, v3}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isConfigEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, v9, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 2122
    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithDir(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 2123
    invoke-static {v3}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallNumValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 2124
    const/16 v2, 0x96

    invoke-direct {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->failDialRequest(I)V

    .line 2125
    return-void

    .line 2128
    :cond_7
    const-string v3, "android.telephony.ims.extra.RETRY_CALL_FAIL_REASON"

    invoke-virtual {v1, v3, v5}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v8

    .line 2131
    .local v8, "retryCallFailCause":I
    const-string v3, "android.telephony.ims.extra.RETRY_CALL_FAIL_NETWORKTYPE"

    invoke-virtual {v1, v3, v5}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;I)I

    move-result v7

    .line 2134
    .local v7, "retryCallFailNetworkType":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start: retryCallFailCause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " retryCallFailNetworkType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2136
    new-instance v10, Lorg/codeaurora/ims/RedialInfo;

    .line 2137
    invoke-static {v7}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallModeFromRadioTech(I)I

    move-result v3

    invoke-direct {v10, v8, v3}, Lorg/codeaurora/ims/RedialInfo;-><init>(II)V

    .line 2139
    .local v10, "redialInfo":Lorg/codeaurora/ims/RedialInfo;
    const/4 v3, 0x0

    .line 2140
    .local v3, "emergencyCallInfo":Lorg/codeaurora/ims/EmergencyCallInfo;
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    .line 2141
    new-instance v4, Lorg/codeaurora/ims/EmergencyCallInfo;

    .line 2142
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyServiceCategories()I

    move-result v20

    .line 2143
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyUrns()Ljava/util/List;

    move-result-object v21

    .line 2144
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->getEmergencyCallRouting()I

    move-result v22

    .line 2145
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->isEmergencyCallTesting()Z

    move-result v23

    .line 2146
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsCallProfile;->hasKnownUserIntentEmergency()Z

    move-result v24

    move-object/from16 v19, v4

    invoke-direct/range {v19 .. v24}, Lorg/codeaurora/ims/EmergencyCallInfo;-><init>(ILjava/util/List;IZZ)V

    move-object v3, v4

    move-object/from16 v19, v3

    goto :goto_2

    .line 2140
    :cond_8
    move-object/from16 v19, v3

    .line 2148
    .end local v3    # "emergencyCallInfo":Lorg/codeaurora/ims/EmergencyCallInfo;
    .local v19, "emergencyCallInfo":Lorg/codeaurora/ims/EmergencyCallInfo;
    :goto_2
    iget-object v3, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v4, v0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 2149
    invoke-virtual {v4, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2148
    move-object/from16 v4, p1

    move-object/from16 v5, v19

    move v6, v13

    move/from16 v20, v7

    .end local v7    # "retryCallFailNetworkType":I
    .local v20, "retryCallFailNetworkType":I
    move-object v7, v9

    move/from16 v21, v8

    .end local v8    # "retryCallFailCause":I
    .local v21, "retryCallFailCause":I
    move/from16 v8, v16

    move-object/from16 v22, v9

    .end local v9    # "details":Lorg/codeaurora/ims/CallDetails;
    .local v22, "details":Lorg/codeaurora/ims/CallDetails;
    move-object/from16 v9, v17

    move-object/from16 v23, v11

    .end local v11    # "info":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .local v23, "info":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    move-object v11, v2

    invoke-virtual/range {v3 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;Landroid/os/Message;)V

    .line 2150
    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 12
    .param p1, "participants"    # [Ljava/lang/String;
    .param p2, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 2263
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2265
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0, p2}, Lorg/codeaurora/ims/QImsCallProfile;->updateProfile(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2266
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 2267
    const-string v1, ""

    .line 2268
    .local v1, "callee":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2269
    .local v2, "i":I
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, p1, v4

    .line 2270
    .local v5, "participant":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 2271
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2272
    goto :goto_1

    .line 2274
    :cond_1
    array-length v6, p1

    if-ne v2, v6, :cond_2

    .line 2275
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2277
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2269
    .end local v5    # "participant":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2280
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 2281
    iput-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    .line 2283
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startConference mCallee = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2286
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 2287
    .local v3, "extrasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 2288
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    .line 2287
    const-string v5, "isConferenceUri"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2289
    invoke-static {v3}, Lorg/codeaurora/ims/CallDetails;->getExtrasFromMap(Ljava/util/Map;)[Ljava/lang/String;

    move-result-object v4

    .line 2290
    .local v4, "mMoExtras":[Ljava/lang/String;
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsConferenceHostSession:Z

    .line 2291
    new-instance v9, Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {p2}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v5

    invoke-direct {p0, v5}, Lorg/codeaurora/ims/ImsCallSessionImpl;->mapCallTypeFromProfile(I)I

    move-result v5

    const/4 v6, 0x3

    invoke-direct {v9, v5, v6, v4}, Lorg/codeaurora/ims/CallDetails;-><init>(II[Ljava/lang/String;)V

    .line 2293
    .local v9, "details":Lorg/codeaurora/ims/CallDetails;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v6, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallee:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    iget-object v11, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    .line 2294
    invoke-virtual {v11, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 2293
    invoke-virtual/range {v5 .. v11}, Lorg/codeaurora/ims/ImsSenderRxr;->dial(Ljava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLandroid/os/Message;)V

    .line 2295
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .line 2669
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2670
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->startDtmf(ICLandroid/os/Message;)V

    .line 2671
    return-void
.end method

.method public startScreenShare(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startScreenShare: width - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {v0, p1, p2}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->setSharedDisplayParams(II)V

    .line 590
    :cond_0
    return-void
.end method

.method public stopDtmf()V
    .locals 3

    .line 2677
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2678
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->stopDtmf(ILandroid/os/Message;)V

    .line 2679
    return-void
.end method

.method public stopScreenShare()V
    .locals 1

    .line 593
    const-string v0, "stopScreenShare"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsVideoCallProviderImpl:Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->stopScreenShare()V

    .line 597
    :cond_0
    return-void
.end method

.method public terminate(I)V
    .locals 8
    .param p1, "reason"    # I

    .line 2467
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2468
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isTerminateLowBatteryCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate: fail deferred low battery video call with reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2472
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->failDialRequest(I)V

    .line 2473
    return-void

    .line 2475
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "terminate "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2479
    const/16 v0, 0x1f9

    if-ne p1, v0, :cond_2

    .line 2480
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    goto :goto_0

    .line 2482
    :cond_2
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeOverrideReason(I)I

    move-result p1

    .line 2485
    :goto_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    .line 2486
    invoke-virtual {v5, v7, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2485
    move v5, p1

    invoke-virtual/range {v0 .. v7}, Lorg/codeaurora/ims/ImsSenderRxr;->hangupWithReason(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;Landroid/os/Message;)V

    .line 2487
    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 1

    .line 2895
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " callid= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mState= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLocalCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mLocalCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRemoteCallProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transfer(Landroid/telephony/ims/stub/ImsCallSessionImplBase;)V
    .locals 7
    .param p1, "otherSession"    # Landroid/telephony/ims/stub/ImsCallSessionImplBase;

    .line 2389
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2391
    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2392
    invoke-virtual {p1}, Landroid/telephony/ims/stub/ImsCallSessionImplBase;->getServiceImpl()Lcom/android/ims/internal/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2393
    .local v5, "otherCallId":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x14

    .line 2394
    invoke-virtual {v0, v6, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2393
    invoke-virtual/range {v1 .. v6}, Lorg/codeaurora/ims/ImsSenderRxr;->explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2396
    .end local v5    # "otherCallId":I
    :catch_0
    move-exception v0

    .line 2397
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException caught = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 2398
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    nop

    .line 2399
    :goto_1
    return-void
.end method

.method public transfer(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "isConfirmationRequired"    # Z

    .line 2376
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2377
    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    move v3, v0

    goto :goto_0

    .line 2378
    :cond_1
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    nop

    .line 2379
    .local v3, "type":I
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x14

    .line 2380
    invoke-virtual {v0, v4, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 2379
    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lorg/codeaurora/ims/ImsSenderRxr;->explicitCallTransfer(IILjava/lang/String;ILandroid/os/Message;)V

    .line 2381
    return-void
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0
    .param p1, "callType"    # I
    .param p2, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 2555
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    return-void
.end method

.method public updateCall(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 7
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCall for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 374
    :cond_0
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateImsCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 375
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 376
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeNotifyCallTypeChanging(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 377
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setEmergencyServiceCategoryInProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 379
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mImsCallModification:Lorg/codeaurora/ims/ImsCallModification;

    if-eqz v0, :cond_1

    .line 380
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallModification;->update(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 383
    :cond_1
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const-string v2, "incomingConference"

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 388
    :cond_2
    sget-object v0, Lorg/codeaurora/ims/ImsCallSessionImpl$3;->$SwitchMap$org$codeaurora$ims$DriverCallIms$State:[I

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v2}, Lorg/codeaurora/ims/DriverCallIms$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 470
    :pswitch_0
    const/16 v0, 0x8

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 472
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsCallTerminatedDueToLowBattery:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    .line 473
    invoke-static {v0, v2}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 474
    const/16 v0, 0x70

    goto :goto_0

    .line 475
    :cond_3
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    :goto_0
    nop

    .line 476
    .local v0, "errorCode":I
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    invoke-virtual {v2}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->getCode()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 477
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    invoke-virtual {v2}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->getCode()I

    move-result v0

    .line 479
    :cond_4
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const-string v3, "CallFailExtraCode"

    invoke-virtual {v2, v3, v0}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 481
    const/16 v2, 0x95

    if-ne v0, v2, :cond_5

    .line 482
    const-string v2, "Call was ended as LTE to 3G/2G handover was not feasible."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sip callFailCause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    if-nez v2, :cond_9

    .line 486
    if-eqz p1, :cond_a

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v2, :cond_a

    .line 489
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-boolean v2, v2, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    const/16 v3, 0x1fe

    if-eqz v2, :cond_7

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v2, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v2, v4, :cond_6

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v2, v2, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v2, v4, :cond_7

    :cond_6
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 491
    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isMultiEndpointFailCause(I)Z

    move-result v2

    if-nez v2, :cond_7

    .line 492
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 494
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v5

    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 495
    invoke-virtual {v6}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 492
    invoke-virtual {v2, v4}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 496
    :cond_7
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    const/16 v4, 0x1f5

    if-ne v2, v4, :cond_8

    .line 499
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 501
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v5

    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 502
    invoke-virtual {v6}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v3, v5, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 499
    invoke-virtual {v2, v4}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 504
    :cond_8
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_1

    .line 508
    :cond_9
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v2, :cond_a

    .line 509
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    new-instance v3, Landroid/telephony/ims/ImsReasonInfo;

    iget v4, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDisconnCause:I

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 511
    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v5

    iget-object v6, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v6}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 509
    invoke-virtual {v2, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 514
    :cond_a
    :goto_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->notifySessionDisconnected()V

    .line 517
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v2, v3, v4, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->synchronizeMessage(Ljava/lang/String;II)V

    goto/16 :goto_3

    .line 464
    .end local v0    # "errorCode":I
    :pswitch_1
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateCrsStatus(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 467
    :pswitch_2
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 468
    goto/16 :goto_3

    .line 446
    :pswitch_3
    const/4 v0, 0x2

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 447
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_b

    .line 448
    const-string v0, "MO Alerting call!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 449
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 451
    :cond_b
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v2, :cond_c

    .line 453
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 454
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRingbackToneRequest:Z

    invoke-static {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateMediaProfileAudioDirection(Lorg/codeaurora/ims/QImsCallProfile;Z)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v0

    .line 456
    .local v0, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v2, :cond_c

    .line 457
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v2, v0}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionProgressing(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 460
    .end local v0    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_c
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleRetryErrorNotify(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 461
    goto/16 :goto_3

    .line 435
    :pswitch_4
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_d

    .line 436
    const-string v0, "MO Dialing call!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 438
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_d

    .line 439
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v2}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiating(Landroid/telephony/ims/ImsCallProfile;)V

    .line 442
    :cond_d
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->handleRetryErrorNotify(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 443
    goto/16 :goto_3

    .line 427
    :pswitch_5
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v2, :cond_13

    .line 428
    const-string v0, "Call being held."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_13

    .line 430
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v2}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHeld(Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_3

    .line 390
    :pswitch_6
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    const/4 v2, 0x4

    if-nez v0, :cond_e

    .line 392
    const-string v0, "Phantom call!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 394
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 395
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_13

    .line 396
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v2}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    goto/16 :goto_3

    .line 398
    :cond_e
    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v3, :cond_12

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v3, :cond_12

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v3, :cond_12

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v3, :cond_f

    goto :goto_2

    .line 411
    :cond_f
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v3, :cond_10

    .line 412
    const-string v0, "Call being resumed."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_13

    .line 415
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v2}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionResumed(Landroid/telephony/ims/ImsCallProfile;)V

    goto :goto_3

    .line 418
    :cond_10
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v3, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v3, :cond_11

    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    if-nez v0, :cond_11

    .line 419
    const-string v0, "Unknown active call."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 420
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    goto :goto_3

    .line 423
    :cond_11
    const-string v0, "Call resumed skipped"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 425
    goto :goto_3

    .line 402
    :cond_12
    :goto_2
    iput v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 403
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    iput-object v2, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 405
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->extractCallDetailsIntoCallProfile(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 406
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_13

    .line 407
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v2}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionInitiated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 522
    :cond_13
    :goto_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    move v0, v1

    .line 524
    .local v0, "areStatesSame":Z
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->updateLocalDc(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 525
    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;Z)Z

    .line 527
    :cond_15
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public updateConfSession(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 2
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateConfSession for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 764
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 766
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v0, :cond_1

    .line 767
    const/4 v0, 0x4

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mState:I

    .line 768
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    iget v0, v0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallId:I

    .line 770
    :cond_1
    return-void
.end method

.method public updateFeatureCapabilities(ZZ)V
    .locals 2
    .param p1, "isVideo"    # Z
    .param p2, "isVoice"    # Z

    .line 2823
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

    .line 2824
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2826
    :cond_0
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    if-eq v0, p2, :cond_2

    .line 2827
    :cond_1
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVideoAllowed:Z

    .line 2828
    iput-boolean p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mIsVoiceAllowed:Z

    .line 2829
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->END:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_2

    .line 2830
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCapabilitiesInProfiles(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 2831
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeCreateVideoProvider(Z)V

    .line 2832
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mStateChangeReportingAllowed:Z

    if-eqz v0, :cond_2

    .line 2833
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2837
    :cond_2
    return-void
.end method

.method public updateLowBatteryStatus()V
    .locals 1

    .line 639
    const-string v0, "updateLowBatteryStatus"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 641
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateLowBatteryStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    .line 644
    :cond_0
    return-void
.end method

.method public updateOrientationMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .line 554
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateOrientationMode: orientation mode - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    const-string v1, "OrientationMode"

    invoke-virtual {v0, v1, p1}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 556
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_0

    .line 557
    const-string v0, "updateOrientationMode: mDc is null and in dialing state "

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 558
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    .line 561
    .local v0, "isCallSessionUpdated":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateOrientationMode: isCallSessionUpdated - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method public updateRecordingSurface(Landroid/view/Surface;II)V
    .locals 3
    .param p1, "recordingSurface"    # Landroid/view/Surface;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRecordingSurface: recording surface - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " width - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " height - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 568
    .local v0, "isValidCall":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mScreenSharelistener:Lorg/codeaurora/ims/internal/IImsScreenShareListener;

    if-nez v1, :cond_1

    goto :goto_2

    .line 574
    :cond_1
    :try_start_0
    iget v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    invoke-interface {v1, v2, p1, p2, p3}, Lorg/codeaurora/ims/internal/IImsScreenShareListener;->onRecordingSurfaceChanged(ILandroid/view/Surface;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    goto :goto_1

    .line 576
    :catchall_0
    move-exception v1

    .line 577
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "onRecordingSurfaceChanged exception!"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_1
    return-void

    .line 569
    :cond_2
    :goto_2
    const-string v1, "updateRecordingSurface: is not valid call or mScreenSharelistener is NULL"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    return-void
.end method

.method public updateSuppServiceInfo(Landroid/telephony/ims/ImsSuppServiceNotification;Z)V
    .locals 9
    .param p1, "suppSvcNotification"    # Landroid/telephony/ims/ImsSuppServiceNotification;
    .param p2, "startOnHoldLocalTone"    # Z

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSuppSvcInfo: suppSvcNotification= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " startOnHoldLocalTone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 796
    :cond_0
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->notificationType:I

    if-nez v0, :cond_1

    .line 797
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    goto/16 :goto_1

    .line 798
    :cond_1
    iget v0, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->notificationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 799
    const/4 v0, 0x0

    .line 800
    .local v0, "isChanged":Z
    iget v2, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->code:I

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setMtSuppSvcCode(I)V

    .line 802
    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v2}, Lorg/codeaurora/ims/QImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    .line 803
    .local v2, "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    iget v3, p1, Landroid/telephony/ims/ImsSuppServiceNotification;->code:I

    const/4 v4, 0x7

    packed-switch v3, :pswitch_data_0

    .line 853
    const-string v1, "Non-Hold/Resume supp svc code received."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 854
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    invoke-virtual {v1, p1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    goto/16 :goto_0

    .line 832
    :pswitch_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v1}, Lorg/codeaurora/ims/QImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioDirection()I

    move-result v1

    if-nez v1, :cond_2

    .line 834
    nop

    .line 836
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v1

    .line 837
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v3

    .line 838
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoDirection()I

    move-result v5

    .line 839
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v6

    .line 835
    invoke-static {v1, v3, v5, v6}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(IIII)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    .line 834
    invoke-virtual {v2, v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 841
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/QImsCallProfile;->updateMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 842
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v3}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionResumeReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 844
    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 845
    invoke-virtual {v1}, Lorg/codeaurora/ims/QImsCallProfile;->getCallType()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 847
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setRemoteProfileCallType(Lorg/codeaurora/ims/DriverCallIms;)V

    .line 848
    const/4 v0, 0x1

    goto :goto_0

    .line 806
    :pswitch_1
    if-eqz p2, :cond_3

    .line 807
    nop

    .line 809
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v3

    const/4 v5, 0x0

    .line 811
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v6

    .line 812
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoDirection()I

    move-result v7

    .line 813
    invoke-virtual {v2}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v8

    .line 808
    invoke-static {v3, v5, v6, v7, v8}, Lorg/codeaurora/ims/ImsMediaUtils;->newImsStreamMediaProfile(IIIII)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v3

    .line 807
    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 815
    :cond_3
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v3, v2}, Lorg/codeaurora/ims/QImsCallProfile;->updateMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 816
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v5}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionHoldReceived(Landroid/telephony/ims/ImsCallProfile;)V

    .line 818
    iget v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mPhoneId:I

    iget-object v5, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->shallRemoveModifyCallCapability(ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    .line 819
    invoke-virtual {v3}, Lorg/codeaurora/ims/QImsCallProfile;->getCallType()I

    move-result v3

    if-eq v3, v4, :cond_4

    .line 825
    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mRemoteCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    new-instance v5, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v5, v1, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    invoke-virtual {v3, v5}, Lorg/codeaurora/ims/QImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 827
    const/4 v0, 0x1

    .line 858
    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 859
    iget-object v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallbackHandler:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v3}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 862
    .end local v0    # "isChanged":Z
    .end local v2    # "mediaProfile":Landroid/telephony/ims/ImsStreamMediaProfile;
    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateVideoCallDataUsageInfo(Lorg/codeaurora/ims/QtiVideoCallDataUsage;)V
    .locals 3
    .param p1, "dataUsage"    # Lorg/codeaurora/ims/QtiVideoCallDataUsage;

    .line 600
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f010005

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Config;->isConfigEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    return-void

    .line 603
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mCallProfile:Lorg/codeaurora/ims/QImsCallProfile;

    invoke-virtual {v0}, Lorg/codeaurora/ims/QImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dataUsage"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 605
    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mDc:Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeTriggerCallSessionUpdate(Lorg/codeaurora/ims/DriverCallIms;)Z

    move-result v0

    .line 606
    .local v0, "isCallSessionUpdated":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVideoCallDataUsageInfo: isCallSessionUpdated - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    return-void
.end method

.method public updateVoWiFiCallQuality(I)V
    .locals 2
    .param p1, "quality"    # I

    .line 3039
    iget v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    if-eq p1, v0, :cond_0

    .line 3040
    iput p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl;->mVoWifiQuality:I

    .line 3041
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->maybeUpdateVoWifiCallQualityExtra(IZ)V

    goto :goto_0

    .line 3043
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVoWiFiCallQuality Unchanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3045
    :goto_0
    return-void
.end method
