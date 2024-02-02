.class public Lorg/codeaurora/ims/ImsEcbmImpl;
.super Landroid/telephony/ims/stub/ImsEcbmImplBase;
.source "ImsEcbmImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;
    }
.end annotation


# instance fields
.field private final EVENT_ENTER_EMERGENCY_CALLBACK_MODE:I

.field private final EVENT_EXIT_EMERGENCY_CALLBACK_MODE:I

.field private mCi:Lorg/codeaurora/ims/ImsSenderRxr;

.field private mHandler:Landroid/os/Handler;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method static bridge synthetic -$$Nest$mcreateEcbmCallBackThread(Lorg/codeaurora/ims/ImsEcbmImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsEcbmImpl;->createEcbmCallBackThread(Z)V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 4
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "ci"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 27
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsEcbmImplBase;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput v0, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->EVENT_ENTER_EMERGENCY_CALLBACK_MODE:I

    .line 21
    const/4 v1, 0x2

    iput v1, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->EVENT_EXIT_EMERGENCY_CALLBACK_MODE:I

    .line 25
    new-instance v2, Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;

    invoke-direct {v2, p0}, Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;-><init>(Lorg/codeaurora/ims/ImsEcbmImpl;)V

    iput-object v2, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mHandler:Landroid/os/Handler;

    .line 28
    iput-object p2, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 29
    const/4 v3, 0x0

    invoke-virtual {p2, v2, v0, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v1, v3}, Lorg/codeaurora/ims/ImsSenderRxr;->registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 32
    return-void
.end method

.method private createEcbmCallBackThread(Z)V
    .locals 4
    .param p1, "isEntered"    # Z

    .line 44
    new-instance v0, Lorg/codeaurora/ims/ImsEcbmImpl$1;

    invoke-direct {v0, p0, p1}, Lorg/codeaurora/ims/ImsEcbmImpl$1;-><init>(Lorg/codeaurora/ims/ImsEcbmImpl;Z)V

    .line 59
    .local v0, "r":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ImsEcbmImpl:EcbmCallBackThread"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 60
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 61
    return-void
.end method


# virtual methods
.method public exitEmergencyCallbackMode()V
    .locals 3

    .line 35
    iget-object v0, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mCi:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSenderRxr;->exitEmergencyCallbackMode(Landroid/os/Message;)V

    .line 36
    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/codeaurora/ims/ImsEcbmImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
