.class public Lorg/codeaurora/ims/CrsCrbtControllerImpl;
.super Lorg/codeaurora/ims/CrsCrbtControllerBase;
.source "CrsCrbtControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;
    }
.end annotation


# instance fields
.field private final MODIFY_PHONE_STATE:Ljava/lang/String;

.field private final mClients:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;


# direct methods
.method static bridge synthetic -$$Nest$fgetmClients(Lorg/codeaurora/ims/CrsCrbtControllerImpl;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    return-object p0
.end method

.method public constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/content/Context;)V
    .locals 1
    .param p1, "serviceSub"    # Lorg/codeaurora/ims/ImsServiceSub;
    .param p2, "context"    # Landroid/content/Context;

    .line 71
    invoke-direct {p0}, Lorg/codeaurora/ims/CrsCrbtControllerBase;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    .line 69
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    iput-object v0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->MODIFY_PHONE_STATE:Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    .line 73
    iput-object p2, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method private getIncomingOrOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;
    .locals 3

    .line 138
    iget-object v0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 139
    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 141
    .local v0, "sessionList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsCallSessionImpl;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    iget-object v1, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 145
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mServiceSub:Lorg/codeaurora/ims/ImsServiceSub;

    sget-object v2, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/ImsServiceSub;->getCallSessionByState(Lorg/codeaurora/ims/DriverCallIms$State;)Ljava/util/List;

    move-result-object v0

    .line 148
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/ImsCallSessionImpl;

    :goto_0
    return-object v1
.end method


# virtual methods
.method public onIsPreparatorySession(Ljava/lang/String;)Z
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "onIsPreparatorySession"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->getIncomingOrOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 133
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-nez v0, :cond_0

    .line 134
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isPreparatorySession(Ljava/lang/String;)Z

    move-result v1

    .line 133
    :goto_0
    return v1
.end method

.method public onRemoveCrsCrbtListener(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/ICrsCrbtListener;

    .line 105
    iget-object v0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "removeCrsCrbtListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    if-nez p1, :cond_0

    .line 108
    const-string v0, "onRemoveCrsCrbtListener : listener is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;

    .line 113
    .local v1, "client":Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;
    if-eqz v1, :cond_1

    .line 114
    invoke-virtual {v1}, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->close()V

    .line 115
    iget-object v2, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    .end local v1    # "client":Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;
    :cond_1
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSendSipDtmf(Ljava/lang/String;)V
    .locals 3
    .param p1, "requestCode"    # Ljava/lang/String;

    .line 121
    iget-object v0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "onSendSipDtmf"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0}, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->getIncomingOrOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 123
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-nez v0, :cond_0

    .line 124
    const-string v1, "onSendSipDtmf : no incoming/outgoing call is available"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    return-void

    .line 127
    :cond_0
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->sendSipDtmf(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public onSetCrsCrbtListener(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V
    .locals 5
    .param p1, "listener"    # Lorg/codeaurora/ims/internal/ICrsCrbtListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "setCrsCrbtListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "onSetCrsCrbtListener"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    if-nez p1, :cond_0

    .line 82
    const-string v0, "onSetCrsCrbtListener : listener is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    return-void

    .line 86
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->getIncomingOrOutgoingCallSession()Lorg/codeaurora/ims/ImsCallSessionImpl;

    move-result-object v0

    .line 87
    .local v0, "session":Lorg/codeaurora/ims/ImsCallSessionImpl;
    if-nez v0, :cond_1

    .line 88
    const-string v1, "onSetCrsCrbtListener : no incoming/outgoing call is available"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    monitor-enter v1

    .line 92
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;

    .line 93
    .local v2, "client":Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;
    if-eqz v2, :cond_2

    .line 94
    invoke-virtual {v2}, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->close()V

    .line 95
    iget-object v3, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :cond_2
    new-instance v3, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;

    invoke-direct {v3, p0, p1, v0}, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;-><init>(Lorg/codeaurora/ims/CrsCrbtControllerImpl;Lorg/codeaurora/ims/internal/ICrsCrbtListener;Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    move-object v2, v3

    .line 98
    invoke-virtual {v2}, Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;->linkToDeath()V

    .line 99
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->setCrsCrbtListener(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V

    .line 100
    iget-object v3, p0, Lorg/codeaurora/ims/CrsCrbtControllerImpl;->mClients:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/codeaurora/ims/internal/ICrsCrbtListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    nop

    .end local v2    # "client":Lorg/codeaurora/ims/CrsCrbtControllerImpl$CrsCrbtDeathRecipient;
    monitor-exit v1

    .line 102
    return-void

    .line 101
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
