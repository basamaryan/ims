.class public Lorg/codeaurora/ims/ImsSubController;
.super Ljava/lang/Object;
.source "ImsSubController.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;,
        Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;,
        Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;,
        Lorg/codeaurora/ims/ImsSubController$ImsStateListener;
    }
.end annotation


# static fields
.field private static final ACTION_DDS_SWITCH_DONE:Ljava/lang/String; = "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

.field private static final ACTION_MSIM_VOICE_CAPABILITY:Ljava/lang/String; = "org.codeaurora.intent.action.MSIM_VOICE_CAPABILITY"

.field private static final DEFAULT_PHONE_ID:I = 0x0

.field private static final EVENT_GET_SUB_CONFIG:I = 0x2

.field private static final EVENT_IMS_SERVICE_DOWN:I = 0x4

.field private static final EVENT_IMS_SERVICE_UP:I = 0x3

.field private static final EVENT_MSIM_VOICE_CAPABILITY_CHANGED:I = 0x7

.field private static final EVENT_QUERY_MSIM_VOICE_CAPABILITY:I = 0x8

.field private static final EVENT_RADIO_AVAILABLE:I = 0x5

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0x6

.field private static final EVENT_SUB_CONFIG_CHANGED:I = 0x1

.field private static final EXTRAS_MSIM_VOICE_CAPABILITY:Ljava/lang/String; = "MsimVoiceCapability"

.field private static final INVALID_PHONE_ID:I = -0x1

.field private static final PERMISSION_MSIM_VOICE_CAPABILITY:Ljava/lang/String; = "com.qti.permission.RECEIVE_MSIM_VOICE_CAPABILITY"

.field private static mSimultStackCount:I

.field private static mStackStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MAX_VALID_STACK_STATUS_COUNT:I

.field private mActiveStacks:[Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsDsdv:Z

.field private mIsReceiverRegistered:Z

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSubController$ImsStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mNumMultiModeStacks:I

.field private mOnMultiSimConfigChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;",
            ">;"
        }
    .end annotation
.end field

.field private mSenderRxrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSenderRxr;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceSubs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation
.end field

.field private mStackConfigListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTm:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$mdeRegisterFromRadioEvents(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->deRegisterFromRadioEvents(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMultiSimVoiceCapability(Lorg/codeaurora/ims/ImsSubController;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->handleMultiSimVoiceCapability(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleOnMultiSimConfigChanged(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->handleOnMultiSimConfigChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRadioAvailable(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->handleRadioAvailable(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSubConfigChanged(Lorg/codeaurora/ims/ImsSubController;Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->handleSubConfigChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misDisposed(Lorg/codeaurora/ims/ImsSubController;)Z
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mregisterForRadioEvents(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->registerForRadioEvents(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateActiveImsStackForSubId(Lorg/codeaurora/ims/ImsSubController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForSubId(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateStackConfig(Lorg/codeaurora/ims/ImsSubController;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/ImsSubController;->updateStackConfig(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 62
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 193
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsSubController;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 197
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/codeaurora/ims/ImsSubController;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroid/os/Looper;)V

    .line 199
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsSubController;->getActiveModemCount()I

    move-result v0

    .line 200
    .local v0, "activeModemCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 201
    invoke-direct {p0, p1, v1}, Lorg/codeaurora/ims/ImsSubController;->createImsSenderRxr(Landroid/content/Context;I)V

    .line 202
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p0, p1, v1, v2}, Lorg/codeaurora/ims/ImsSubController;->createImsServiceSub(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;)V

    .line 200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsSenderRxr;",
            ">;",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 208
    .local p2, "senderRxrs":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsSenderRxr;>;"
    .local p3, "serviceSubs":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsServiceSub;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    .line 57
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 66
    const/4 v0, 0x6

    iput v0, p0, Lorg/codeaurora/ims/ImsSubController;->MAX_VALID_STACK_STATUS_COUNT:I

    .line 67
    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 76
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    .line 77
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    .line 751
    new-instance v0, Lorg/codeaurora/ims/ImsSubController$1;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsSubController$1;-><init>(Lorg/codeaurora/ims/ImsSubController;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 784
    new-instance v0, Lorg/codeaurora/ims/ImsSubController$2;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsSubController$2;-><init>(Lorg/codeaurora/ims/ImsSubController;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 209
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    .line 210
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    .line 211
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 214
    iput-object p2, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    .line 215
    iput-object p3, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    .line 216
    new-instance v0, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;

    invoke-direct {v0, p0, p4}, Lorg/codeaurora/ims/ImsSubController$ImsSubControllerHandler;-><init>(Lorg/codeaurora/ims/ImsSubController;Landroid/os/Looper;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    .line 217
    const-string v0, "telephony_subscription_service"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 219
    return-void
.end method

.method private broadcastConcurrentCallsIntent(I)V
    .locals 3
    .param p1, "voiceCapability"    # I

    .line 397
    new-instance v0, Landroid/content/Intent;

    const-string v1, "org.codeaurora.intent.action.MSIM_VOICE_CAPABILITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "MsimVoiceCapability"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 399
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    const-string v2, "com.qti.permission.RECEIVE_MSIM_VOICE_CAPABILITY"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method private createImsSenderRxr(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 230
    new-instance v0, Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lorg/codeaurora/ims/ImsSenderRxr;-><init>(Landroid/content/Context;I)V

    .line 231
    .local v0, "senderRxr":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 232
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v3, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 233
    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->registerListener(Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;)V

    .line 234
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    return-void
.end method

.method private createImsServiceSub(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I
    .param p3, "senderRxr"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 238
    new-instance v0, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-direct {v0, p1, p2, p3, p0}, Lorg/codeaurora/ims/ImsServiceSub;-><init>(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;Lorg/codeaurora/ims/ImsSubController;)V

    .line 239
    .local v0, "serviceSub":Lorg/codeaurora/ims/ImsServiceSub;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    return-void
.end method

.method private deRegisterFromRadioEvents(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 540
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 545
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsSenderRxr;

    .line 546
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    if-nez v0, :cond_1

    .line 547
    const-string v1, "deRegisterFromRadioEvents: ImsSenderRxr is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    return-void

    .line 551
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->deregisterForImsSubConfigChanged(Landroid/os/Handler;)V

    .line 555
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 556
    .local v1, "isPrimarySubscription":Z
    :goto_0
    if-nez v1, :cond_3

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deRegisterFromRadioEvents: phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not primary subscription."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 559
    return-void

    .line 562
    :cond_3
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->deregisterForMultiSimVoiceCapabilityChanged(Landroid/os/Handler;)V

    .line 563
    return-void

    .line 541
    .end local v0    # "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    .end local v1    # "isPrimarySubscription":Z
    :cond_4
    :goto_1
    const-string v0, "deRegisterFromRadioEvents: Single SIM mode"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method private disposeImsSenderRxr(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 829
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    if-eqz v0, :cond_1

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 833
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disposeImsSenderRxr: phoneId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 834
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsSenderRxr;

    .line 835
    .local v0, "senderRxr":Lorg/codeaurora/ims/ImsSenderRxr;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->dispose()V

    .line 836
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 837
    return-void

    .line 830
    .end local v0    # "senderRxr":Lorg/codeaurora/ims/ImsSenderRxr;
    :cond_1
    :goto_0
    const-string v0, "disposeImsSenderRxr: cannot find instance to dispose"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 831
    return-void
.end method

.method public static getDefaultPhoneId()I
    .locals 1

    .line 316
    const/4 v0, 0x0

    return v0
.end method

.method private handleMultiSimVoiceCapability(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 3
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 382
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lorg/codeaurora/ims/ImsRilException;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v0

    .line 384
    .local v0, "errorCode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMultiSimVoiceCapability errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 385
    return-void

    .line 388
    .end local v0    # "errorCode":I
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 389
    const-string v0, "handleMultiSimVoiceCapability ar.result is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    return-void

    .line 393
    :cond_1
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->broadcastConcurrentCallsIntent(I)V

    .line 394
    return-void
.end method

.method private handleOnMultiSimConfigChanged(I)V
    .locals 2
    .param p1, "activeModemCount"    # I

    .line 801
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    const-string v0, "handleOnMultiSimConfigChanged: already disposed.Ignore."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 803
    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 806
    .local v0, "prevModemCount":I
    if-ne p1, v0, :cond_1

    .line 807
    const-string v1, "The number of slots is equal to the current size, nothing to do"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 808
    return-void

    .line 810
    :cond_1
    if-le p1, v0, :cond_2

    .line 811
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsSubController;->switchToMultiSim(II)V

    goto :goto_0

    .line 813
    :cond_2
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsSubController;->switchToSingleSim(II)V

    .line 814
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsSubController;->broadcastConcurrentCallsIntent(I)V

    .line 816
    :goto_0
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsSubController;->notifyOnMultiSimConfigChanged(II)V

    .line 817
    return-void
.end method

.method private handleRadioAvailable(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 474
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsSenderRxr;

    .line 484
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    if-nez v0, :cond_1

    .line 485
    const-string v1, "handleRadioAvailable: ImsSenderRxr is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    return-void

    .line 489
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsSubConfig(Landroid/os/Message;)V

    .line 490
    if-nez p1, :cond_2

    .line 492
    invoke-static {}, Landroid/telephony/TelephonyBaseUtilsStub;->isMiuiRom()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 493
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    .line 494
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 493
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryMultiSimVoiceCapability(Landroid/os/Message;)V

    .line 497
    :cond_2
    return-void

    .line 475
    .end local v0    # "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    :cond_3
    :goto_0
    const-string v0, "handleRadioAvailable: Single SIM mode"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 476
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->initSubscriptionStatus()V

    .line 477
    return-void
.end method

.method private handleRafInfo()V
    .locals 10

    .line 695
    iget v0, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    if-lez v0, :cond_0

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRafInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Multimode stacks greater than zero. EXIT!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    return-void

    .line 701
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    .line 702
    .local v0, "numPhones":I
    const/4 v1, 0x0

    .line 703
    .local v1, "tempPhoneId":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_3

    .line 704
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 705
    invoke-virtual {v4, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 706
    .local v4, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-eqz v4, :cond_2

    .line 707
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 708
    .local v5, "subId":I
    iget-object v6, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v5}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->getSupportedRadioAccessFamily()J

    move-result-wide v6

    .line 709
    .local v6, "rafInfo":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "handleRafInfo: Phone: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Info:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 710
    invoke-direct {p0, v6, v7}, Lorg/codeaurora/ims/ImsSubController;->isMultiModeSupported(J)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 711
    iget v8, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    add-int/2addr v8, v3

    iput v8, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    .line 712
    move v1, v2

    .line 714
    .end local v5    # "subId":I
    .end local v6    # "rafInfo":J
    :cond_1
    goto :goto_1

    .line 715
    :cond_2
    const-string v3, "handleRafInfo: subIds not valid"

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    .end local v4    # "subInfo":Landroid/telephony/SubscriptionInfo;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 718
    .end local v2    # "i":I
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleRafInfo: NumPhones: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "Multiple Multimode stacks: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    iget v2, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    if-le v2, v3, :cond_5

    .line 728
    iget-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    if-eqz v2, :cond_4

    .line 729
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 730
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 737
    :cond_4
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForSubId(I)V

    .line 740
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 742
    iput-boolean v3, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 743
    const-string v2, "handleRafInfo: registered for DDS switch..."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 746
    :cond_5
    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    .line 748
    :goto_2
    return-void
.end method

.method private handleSubConfigChanged(Lorg/codeaurora/telephony/utils/AsyncResult;)V
    .locals 4
    .param p1, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 358
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->handleSubConfigException(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 360
    :cond_0
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 361
    iget-object v0, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/ImsSubConfigDetails;

    .line 362
    .local v0, "config":Lorg/codeaurora/ims/ImsSubConfigDetails;
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;->getSimultStackCount()I

    move-result v1

    sput v1, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    .line 363
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSubConfigDetails;->getImsStackEnabledList()Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    .line 364
    const/4 v1, 0x6

    new-array v1, v1, [Z

    .line 366
    .local v1, "activeStacks":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget v3, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    if-ge v2, v3, :cond_1

    .line 367
    sget-object v3, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 366
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v2, :cond_2

    .line 371
    const-string v2, "handleSubConfigChanged ar.userObj is null"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    return-void

    .line 375
    :cond_2
    iget-object v2, p1, Lorg/codeaurora/telephony/utils/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    .line 376
    .end local v0    # "config":Lorg/codeaurora/ims/ImsSubConfigDetails;
    .end local v1    # "activeStacks":[Z
    goto :goto_1

    .line 377
    :cond_3
    const-string v0, "ar.result and ar.exception are null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    :goto_1
    return-void
.end method

.method private handleSubConfigException(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "exception"    # Ljava/lang/Throwable;

    .line 343
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {v1}, Lorg/codeaurora/telephony/utils/Preconditions;->checkArgument(Z)V

    .line 344
    move-object v1, p1

    check-cast v1, Lorg/codeaurora/ims/ImsRilException;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v1

    .line 345
    .local v1, "errorCode":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSubConfigException error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 346
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 347
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    .line 351
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->initSubscriptionStatus()V

    goto :goto_1

    .line 353
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled error code : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 355
    :goto_1
    return-void
.end method

.method private initSubscriptionStatus()V
    .locals 3

    .line 620
    const/4 v0, 0x0

    sput v0, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    .line 621
    const/4 v1, 0x0

    sput-object v1, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    .line 623
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 624
    const-string v0, "initSubscriptionStatus: [Multi-sim] Using RAF and DDS to decide IMS Sub"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 625
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->handleRafInfo()V

    goto :goto_0

    .line 628
    :cond_0
    const-string v1, "initSubscriptionStatus: Not multi-sim."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 629
    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    .line 630
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    .line 632
    :goto_0
    return-void
.end method

.method private isDisposed()Z
    .locals 1

    .line 770
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMultiModeSupported(J)Z
    .locals 4
    .param p1, "nRatMask"    # J

    .line 689
    const-wide/16 v0, 0x1000

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyOnMultiSimConfigChanged(II)V
    .locals 2
    .param p1, "prevModemCount"    # I
    .param p2, "activeModemCount"    # I

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyOnMultiSimConfigChanged: prevModemCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " activeModemCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    if-ne p1, p2, :cond_0

    .line 335
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;

    .line 338
    .local v1, "listener":Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;
    invoke-interface {v1, p1, p2}, Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;->onMultiSimConfigChanged(II)V

    .line 339
    .end local v1    # "listener":Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;
    goto :goto_0

    .line 340
    :cond_1
    return-void
.end method

.method private notifyStackConfigChanged([ZI)V
    .locals 2
    .param p1, "activeStacks"    # [Z
    .param p2, "phoneId"    # I

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyStackConfigChanged: activeStacks:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;

    .line 327
    .local v1, "listener":Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;
    invoke-interface {v1, p1, p2}, Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;->onStackConfigChanged([ZI)V

    .line 328
    .end local v1    # "listener":Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;
    goto :goto_0

    .line 329
    :cond_0
    return-void
.end method

.method private registerForRadioEvents(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .line 500
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto/16 :goto_2

    .line 506
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsSenderRxr;

    .line 507
    .local v0, "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    if-nez v0, :cond_1

    .line 508
    const-string v1, "registerForRadioEvents: ImsSenderRxr is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 509
    return-void

    .line 512
    :cond_1
    const/4 v2, 0x0

    if-nez p1, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 513
    .local v3, "isPrimarySubscription":Z
    :goto_0
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->getRadioState()Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 514
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSenderRxr;->getRadioState()Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    move-result-object v4

    invoke-virtual {v4}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v1

    goto :goto_1

    :cond_3
    nop

    .line 515
    .local v2, "isRadioAvailable":Z
    :goto_1
    iget-object v4, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v1, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForImsSubConfigChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 516
    if-eqz v2, :cond_4

    .line 517
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->getImsSubConfig(Landroid/os/Message;)V

    .line 522
    :cond_4
    if-nez v3, :cond_5

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerForRadioEvents: phoneId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is not primary subscription."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 525
    return-void

    .line 528
    :cond_5
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x7

    .line 529
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 528
    invoke-virtual {v0, v1, v4, v5}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForMultiSimVoiceCapabilityChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 530
    if-eqz v2, :cond_6

    .line 532
    invoke-static {}, Landroid/telephony/TelephonyBaseUtilsStub;->isMiuiRom()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 533
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x8

    .line 534
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 533
    invoke-virtual {v1, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->queryMultiSimVoiceCapability(Landroid/os/Message;)V

    .line 537
    :cond_6
    return-void

    .line 501
    .end local v0    # "ci":Lorg/codeaurora/ims/ImsSenderRxr;
    .end local v2    # "isRadioAvailable":Z
    .end local v3    # "isPrimarySubscription":Z
    :cond_7
    :goto_2
    const-string v0, "registerForRadioEvents: Single SIM mode"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->initSubscriptionStatus()V

    .line 503
    return-void
.end method

.method private switchToMultiSim(II)V
    .locals 3
    .param p1, "prevModemCount"    # I
    .param p2, "activeModemCount"    # I

    .line 841
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 842
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, v0}, Lorg/codeaurora/ims/ImsSubController;->createImsSenderRxr(Landroid/content/Context;I)V

    .line 843
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsSenderRxr;

    invoke-direct {p0, v1, v0, v2}, Lorg/codeaurora/ims/ImsSubController;->createImsServiceSub(Landroid/content/Context;ILorg/codeaurora/ims/ImsSenderRxr;)V

    .line 841
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 845
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private switchToSingleSim(II)V
    .locals 2
    .param p1, "prevModemCount"    # I
    .param p2, "activeModemCount"    # I

    .line 821
    add-int/lit8 v0, p1, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, p2, :cond_0

    .line 822
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceSub;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->dispose()V

    .line 823
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 824
    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->disposeImsSenderRxr(I)V

    .line 821
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 826
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private updateActiveImsStackForSubId(I)V
    .locals 3
    .param p1, "ddsSubId"    # I

    .line 663
    const/4 v0, 0x0

    .line 669
    .local v0, "phoneId":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 670
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    goto :goto_0

    .line 673
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    .line 675
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 676
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v0

    .line 680
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateActiveImsStackForSubId: new DDS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsSubController;->updateActiveImsStackForPhoneId(I)V

    .line 682
    return-void
.end method

.method private updateStackConfig(IZ)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "isEnabled"    # Z

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateStackConfig phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mIsDsdv : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 570
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    const-string v1, "updateStackConfig nothing to update"

    if-eqz v0, :cond_3

    .line 571
    sget-object v0, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    if-nez v0, :cond_0

    .line 572
    const-string v0, "updateStackConfig Stacks are not yet initialized"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 573
    return-void

    .line 576
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, p2, :cond_1

    .line 577
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    return-void

    .line 581
    :cond_1
    const/4 v0, 0x6

    new-array v0, v0, [Z

    .line 582
    .local v0, "activeStacks":[Z
    sget-object v1, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 583
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lorg/codeaurora/ims/ImsSubController;->mSimultStackCount:I

    if-ge v1, v2, :cond_2

    .line 584
    sget-object v2, Lorg/codeaurora/ims/ImsSubController;->mStackStatus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    .line 583
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_2
    goto :goto_1

    .line 589
    .end local v0    # "activeStacks":[Z
    :cond_3
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 590
    const-string v0, "updateStackConfig: unregistering BroadcastReceiver"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 592
    iput-boolean v2, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    .line 595
    :cond_4
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    aget-boolean v3, v0, p1

    if-ne v3, p2, :cond_5

    .line 596
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 597
    return-void

    .line 600
    :cond_5
    if-nez p2, :cond_6

    .line 609
    iput v2, p0, Lorg/codeaurora/ims/ImsSubController;->mNumMultiModeStacks:I

    .line 612
    :cond_6
    aput-boolean p2, v0, p1

    .line 613
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    .line 615
    .restart local v0    # "activeStacks":[Z
    :goto_1
    invoke-direct {p0, v0, p1}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    .line 616
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    .line 848
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    const-string v0, "dispose: returning as already disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 850
    return-void

    .line 852
    :cond_0
    const-string v0, "dispose ImsSubController, unregistering handler and listeners"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mMultiSimConfigChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 854
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsServiceSub;

    .line 855
    .local v1, "sub":Lorg/codeaurora/ims/ImsServiceSub;
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->dispose()V

    .line 856
    .end local v1    # "sub":Lorg/codeaurora/ims/ImsServiceSub;
    goto :goto_0

    .line 857
    :cond_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsSenderRxr;

    .line 858
    .local v1, "senderRxr":Lorg/codeaurora/ims/ImsSenderRxr;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 859
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterForNotAvailable(Landroid/os/Handler;)V

    .line 860
    invoke-virtual {v1, p0}, Lorg/codeaurora/ims/ImsSenderRxr;->unregisterListener(Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioServiceListener;)V

    .line 861
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->deregisterForImsSubConfigChanged(Landroid/os/Handler;)V

    .line 862
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsSenderRxr;->deregisterForMultiSimVoiceCapabilityChanged(Landroid/os/Handler;)V

    .line 863
    .end local v1    # "senderRxr":Lorg/codeaurora/ims/ImsSenderRxr;
    goto :goto_1

    .line 864
    :cond_2
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsReceiverRegistered:Z

    if-eqz v0, :cond_3

    .line 865
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 867
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    .line 868
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    .line 869
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 870
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    .line 871
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 872
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSenderRxrs:Ljava/util/List;

    .line 873
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 874
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 875
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    .line 876
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 877
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    .line 878
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 879
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 880
    iput-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    .line 881
    return-void
.end method

.method public getActiveModemCount()I
    .locals 1

    .line 226
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    return v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getServiceSub(I)Lorg/codeaurora/ims/ImsServiceSub;
    .locals 1
    .param p1, "phoneId"    # I

    .line 778
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 779
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/ImsServiceSub;

    return-object v0

    .line 781
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServiceSubs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation

    .line 774
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mServiceSubs:Ljava/util/List;

    return-object v0
.end method

.method public isDsdv()Z
    .locals 1

    .line 320
    iget-boolean v0, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    return v0
.end method

.method public isMultiSimEnabled()Z
    .locals 2

    .line 222
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsSubController;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onServiceDown(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDown :: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const-string v0, "onServiceDown, returning as isDisposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 272
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 273
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 274
    return-void
.end method

.method public onServiceUp(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceUp :: phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const-string v0, "onServiceUp, returning as isDisposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    return-void

    .line 259
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 260
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 261
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 262
    return-void
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;I)V
    .locals 2
    .param p1, "stackConfigListener"    # Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;
    .param p2, "phoneId"    # I

    .line 118
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "returning as ImsSubController is disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    return-void

    .line 122
    :cond_0
    if-eqz p1, :cond_2

    .line 125
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 128
    :cond_1
    const-string v0, "registerListener :: duplicate stackConfigListener!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    invoke-direct {p0, v1, p2}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    .line 132
    monitor-exit v0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 123
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "stackConfigListener is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSubController$ImsStateListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSubController$ImsStateListener;

    .line 283
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const-string v0, "registerListener, returning as isDisposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    return-void

    .line 287
    :cond_0
    if-eqz p1, :cond_2

    .line 290
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 293
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Duplicate listener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    :goto_0
    return-void

    .line 288
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public registerListener(Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;)V
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;

    .line 160
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-string v0, "returning as ImsSubController is disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    return-void

    .line 164
    :cond_0
    if-eqz p1, :cond_2

    .line 167
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 168
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_1
    const-string v0, "registerListener :: duplicate OnMultiSimConfigChanged listener!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    :goto_0
    return-void

    .line 165
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "simConfigChangedListener is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIsDsdv(Z)V
    .locals 0
    .param p1, "isDsdv"    # Z

    .line 244
    iput-boolean p1, p0, Lorg/codeaurora/ims/ImsSubController;->mIsDsdv:Z

    .line 245
    return-void
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;)Z
    .locals 2
    .param p1, "stackConfigListener"    # Lorg/codeaurora/ims/ImsSubController$ImsStackConfigListener;

    .line 143
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "returning as ImsSubController is disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    return v0

    .line 147
    :cond_0
    if-eqz p1, :cond_1

    .line 150
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mStackConfigListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 148
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "stackConfigListener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSubController$ImsStateListener;)Z
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSubController$ImsStateListener;

    .line 305
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    const-string v0, "unregisterListener, returning as isDisposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 307
    const/4 v0, 0x0

    return v0

    .line 309
    :cond_0
    if-eqz p1, :cond_1

    .line 312
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 310
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unregisterListener(Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;)Z
    .locals 2
    .param p1, "listener"    # Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;

    .line 182
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "returning as ImsSubController is disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x0

    return v0

    .line 186
    :cond_0
    if-eqz p1, :cond_1

    .line 189
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController;->mOnMultiSimConfigChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 187
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "simConfigChangedListener"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateActiveImsStackForPhoneId(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .line 637
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsSubController;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    const-string v0, "updateActiveImsStackForPhoneId return as ImsSubController is disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 639
    return-void

    .line 642
    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "switchImsPhone: Invalid phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 644
    return-void

    .line 647
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    monitor-enter v0

    .line 648
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController;->mActiveStacks:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 649
    if-ne v1, p1, :cond_2

    .line 650
    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    goto :goto_1

    .line 652
    :cond_2
    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 648
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 656
    .end local v1    # "i":I
    :cond_3
    invoke-direct {p0, v2, p1}, Lorg/codeaurora/ims/ImsSubController;->notifyStackConfigChanged([ZI)V

    .line 657
    monitor-exit v0

    .line 658
    return-void

    .line 657
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
