.class public Lorg/codeaurora/ims/ImsRadioAidl;
.super Ljava/lang/Object;
.source "ImsRadioAidl.java"

# interfaces
.implements Lorg/codeaurora/ims/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;
    }
.end annotation


# static fields
.field private static final IIMS_RADIO_SERVICE_NAME:Ljava/lang/String; = "vendor.qti.hardware.radio.ims.IImsRadio/imsradio"

.field static final LOG_TAG:Ljava/lang/String; = "ImsRadioAidl"

.field private static final STATUS_INTERROGATE:I = 0x2


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mDeathRecipient:Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;

.field private volatile mImsRadio:Lvendor/qti/hardware/radio/ims/IImsRadio;

.field private mImsRadioIndication:Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

.field private mImsRadioResponse:Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

.field private mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

.field private mIsDisposed:Z

.field private final mLock:Ljava/lang/Object;

.field private final mLogSuffix:Ljava/lang/String;

.field private mPhoneId:I

.field private mResponse:Lorg/codeaurora/ims/IImsRadioResponse;

.field private final mServiceInstance:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$minitImsRadio(Lorg/codeaurora/ims/ImsRadioAidl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->initImsRadio()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mloge(Lorg/codeaurora/ims/ImsRadioAidl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRadioAidl;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetService(Lorg/codeaurora/ims/ImsRadioAidl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->resetService()V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/IImsRadioResponse;Lorg/codeaurora/ims/IImsRadioIndication;I)V
    .locals 2
    .param p1, "response"    # Lorg/codeaurora/ims/IImsRadioResponse;
    .param p2, "indication"    # Lorg/codeaurora/ims/IImsRadioIndication;
    .param p3, "phoneId"    # I

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLock:Ljava/lang/Object;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIsDisposed:Z

    .line 83
    iput p3, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mPhoneId:I

    .line 84
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 85
    iput-object p2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendor.qti.hardware.radio.ims.IImsRadio/imsradio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mServiceInstance:Ljava/lang/String;

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLogSuffix:Ljava/lang/String;

    .line 88
    new-instance v0, Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;-><init>(Lorg/codeaurora/ims/ImsRadioAidl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mDeathRecipient:Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;

    .line 89
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->initImsRadio()V

    .line 90
    return-void
.end method

.method private imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;
    .locals 3

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-object v0, v2

    .line 144
    monitor-exit v1

    .line 145
    return-object v0

    .line 144
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private initImsRadio()V
    .locals 7

    .line 155
    :try_start_0
    const-string v0, "initImsRadio: connect to IImsRadio Stable AIDL"

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioAidl;->log(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mServiceInstance:Ljava/lang/String;

    .line 157
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 156
    invoke-static {v0}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    .line 158
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 159
    const-string v1, "initImsRadio: Stable AIDL is NOT used."

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRadioAidl;->loge(Ljava/lang/String;)V

    .line 160
    return-void

    .line 162
    :cond_0
    nop

    .line 163
    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    .line 164
    .local v1, "imsRadio":Lvendor/qti/hardware/radio/ims/IImsRadio;
    if-nez v1, :cond_1

    .line 165
    const-string v2, "initImsRadio: mAidlInstance is null"

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsRadioAidl;->loge(Ljava/lang/String;)V

    .line 166
    return-void

    .line 168
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initImsRadio: imsRadio availability: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v3

    .line 169
    :goto_0
    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsRadioAidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 168
    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsRadioAidl;->log(Ljava/lang/String;)V

    .line 171
    new-instance v2, Lorg/codeaurora/ims/ImsRadioResponseAidl;

    iget-object v4, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    iget v5, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mPhoneId:I

    invoke-direct {v2, v4, v5}, Lorg/codeaurora/ims/ImsRadioResponseAidl;-><init>(Lorg/codeaurora/ims/IImsRadioResponse;I)V

    .line 172
    .local v2, "imsRadioResponse":Lorg/codeaurora/ims/ImsRadioResponseAidl;
    new-instance v4, Lorg/codeaurora/ims/ImsRadioIndicationAidl;

    iget-object v5, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    iget v6, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mPhoneId:I

    invoke-direct {v4, v5, v6}, Lorg/codeaurora/ims/ImsRadioIndicationAidl;-><init>(Lorg/codeaurora/ims/IImsRadioIndication;I)V

    .line 175
    .local v4, "imsRadioIndication":Lorg/codeaurora/ims/ImsRadioIndicationAidl;
    iget-object v5, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :try_start_1
    iget-boolean v6, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIsDisposed:Z

    if-eqz v6, :cond_3

    .line 177
    const-string v3, "initImsRadio: already disposed. exiting."

    invoke-direct {p0, v3}, Lorg/codeaurora/ims/ImsRadioAidl;->log(Ljava/lang/String;)V

    .line 178
    monitor-exit v5

    return-void

    .line 180
    :cond_3
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mBinder:Landroid/os/IBinder;

    .line 181
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadioResponse:Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    .line 182
    iput-object v4, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadioIndication:Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    .line 183
    invoke-interface {v1, v2, v4}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setCallback(Lvendor/qti/hardware/radio/ims/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/IImsRadioIndication;)V

    .line 184
    iput-object v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/IImsRadio;

    .line 185
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :try_start_2
    iget-object v5, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mDeathRecipient:Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;

    invoke-interface {v0, v5, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 187
    iget-object v3, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v3}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceUp()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 192
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "imsRadio":Lvendor/qti/hardware/radio/ims/IImsRadio;
    .end local v2    # "imsRadioResponse":Lorg/codeaurora/ims/ImsRadioResponseAidl;
    .end local v4    # "imsRadioIndication":Lorg/codeaurora/ims/ImsRadioIndicationAidl;
    goto :goto_1

    .line 185
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v1    # "imsRadio":Lvendor/qti/hardware/radio/ims/IImsRadio;
    .restart local v2    # "imsRadioResponse":Lorg/codeaurora/ims/ImsRadioResponseAidl;
    .restart local v4    # "imsRadioIndication":Lorg/codeaurora/ims/ImsRadioIndicationAidl;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lorg/codeaurora/ims/ImsRadioAidl;
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 189
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v1    # "imsRadio":Lvendor/qti/hardware/radio/ims/IImsRadio;
    .end local v2    # "imsRadioResponse":Lorg/codeaurora/ims/ImsRadioResponseAidl;
    .end local v4    # "imsRadioIndication":Lorg/codeaurora/ims/ImsRadioIndicationAidl;
    .restart local p0    # "this":Lorg/codeaurora/ims/ImsRadioAidl;
    :catch_0
    move-exception v0

    .line 190
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initImsRadio: Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRadioAidl;->loge(Ljava/lang/String;)V

    .line 191
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->resetService()V

    .line 193
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static isAidlAvailable(I)Z
    .locals 3
    .param p0, "phoneId"    # I

    .line 197
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vendor.qti.hardware.radio.ims.IImsRadio/imsradio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 198
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "ImsRadioAidl"

    const-string v2, "Security exception while call into AIDL"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .end local v0    # "e":Ljava/lang/SecurityException;
    const/4 v0, 0x0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLogSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method private resetService()V
    .locals 4

    .line 121
    const-string v0, "IImsRadio service down: Resetting HAL interfaces."

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/ImsRadioAidl;->log(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceDown()V

    .line 123
    const/4 v0, 0x0

    .line 124
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    const/4 v2, 0x0

    :try_start_0
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/IImsRadio;

    .line 126
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadioResponse:Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    .line 127
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mImsRadioIndication:Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    .line 128
    iget-object v3, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mBinder:Landroid/os/IBinder;

    move-object v0, v3

    .line 129
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mBinder:Landroid/os/IBinder;

    .line 130
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    if-eqz v0, :cond_0

    .line 133
    :try_start_1
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mDeathRecipient:Lorg/codeaurora/ims/ImsRadioAidl$ImsRadioDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 136
    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IImsRadio binder is null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/codeaurora/ims/ImsRadioAidl;->loge(Ljava/lang/String;)V

    .line 138
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 130
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "deliverStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 327
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromAcknowledgeSms(II)Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;

    move-result-object v0

    .line 328
    .local v0, "smsInfo":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->acknowledgeSms(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;)V

    .line 329
    return-void
.end method

.method public acknowledgeSmsReport(III)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "statusReportStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 334
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromAcknowledgeSmsReport(II)Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;

    move-result-object v0

    .line 336
    .local v0, "smsReportInfo":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->acknowledgeSmsReport(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;)V

    .line 337
    return-void
.end method

.method public addParticipant(ILjava/lang/String;ILorg/codeaurora/ims/CallDetails;)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "clirMode"    # I
    .param p4, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p2, p3, p4, v0, v1}, Lorg/codeaurora/ims/StableAidl;->fromDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/DialRequest;

    move-result-object v0

    .line 255
    .local v0, "dialRequest":Lvendor/qti/hardware/radio/ims/DialRequest;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->addParticipant(ILvendor/qti/hardware/radio/ims/DialRequest;)V

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addParticipant: token = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/CallDetails;->callType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " callDomain = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isConferenceUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isConferenceUri:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isCallPull ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isCallPull:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isEncrypted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isEncrypted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRadioAidl;->logv(Ljava/lang/String;)V

    .line 261
    return-void
.end method

.method public answer(IIII)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "callType"    # I
    .param p3, "ipPresentation"    # I
    .param p4, "rttMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 304
    invoke-static {p2, p3, p4}, Lorg/codeaurora/ims/StableAidl;->fromAnswerRequest(III)Lvendor/qti/hardware/radio/ims/AnswerRequest;

    move-result-object v0

    .line 306
    .local v0, "answerRequest":Lvendor/qti/hardware/radio/ims/AnswerRequest;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->answer(ILvendor/qti/hardware/radio/ims/AnswerRequest;)V

    .line 307
    return-void
.end method

.method public cancelModifyCall(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 391
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->cancelModifyCall(II)V

    .line 392
    return-void
.end method

.method public cancelPendingUssd(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 298
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->cancelPendingUssd(I)V

    .line 299
    return-void
.end method

.method public conference(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 412
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->conference(I)V

    .line 413
    return-void
.end method

.method public deflectCall(IILjava/lang/String;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "index"    # I
    .param p3, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromDeflectCall(ILjava/lang/String;)Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;

    move-result-object v0

    .line 313
    .local v0, "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->deflectCall(ILvendor/qti/hardware/radio/ims/DeflectRequestInfo;)V

    .line 314
    return-void
.end method

.method public dial(ILjava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;)V
    .locals 7
    .param p1, "token"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "eInfo"    # Lorg/codeaurora/ims/EmergencyCallInfo;
    .param p4, "clirMode"    # I
    .param p5, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p6, "isEncrypted"    # Z
    .param p7, "ccInfo"    # Lorg/codeaurora/ims/CallComposerInfo;
    .param p8, "redialInfo"    # Lorg/codeaurora/ims/RedialInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 269
    invoke-static {p2, p4, p5, p6, p8}, Lorg/codeaurora/ims/StableAidl;->fromDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/DialRequest;

    move-result-object v0

    .line 271
    .local v0, "dialRequest":Lvendor/qti/hardware/radio/ims/DialRequest;
    if-eqz p3, :cond_0

    .line 272
    move-object v1, p3

    move-object v2, p2

    move v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p8

    invoke-static/range {v1 .. v6}, Lorg/codeaurora/ims/StableAidl;->fromEmergencyDialRequest(Lorg/codeaurora/ims/EmergencyCallInfo;Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;

    move-result-object v1

    .line 274
    .local v1, "emergencyDialRequest":Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->emergencyDial(ILvendor/qti/hardware/radio/ims/EmergencyDialRequest;)V

    .line 275
    .end local v1    # "emergencyDialRequest":Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
    goto :goto_0

    :cond_0
    if-eqz p7, :cond_1

    .line 276
    nop

    .line 277
    move-object v1, p7

    move-object v2, p2

    move v3, p4

    move-object v4, p5

    move v5, p6

    move-object v6, p8

    invoke-static/range {v1 .. v6}, Lorg/codeaurora/ims/StableAidl;->fromCallComposerDialRequest(Lorg/codeaurora/ims/CallComposerInfo;Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;

    move-result-object v1

    .line 279
    .local v1, "composerDialRequest":Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->callComposerDial(ILvendor/qti/hardware/radio/ims/CallComposerDialRequest;)V

    .line 280
    .end local v1    # "composerDialRequest":Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
    goto :goto_0

    .line 281
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->dial(ILvendor/qti/hardware/radio/ims/DialRequest;)V

    .line 283
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dial: address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "callType ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/CallDetails;->callType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "callDomain ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isConferenceUri ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isConferenceUri:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isCallPull ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isCallPull:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isEncrypted ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->isEncrypted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rttMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/CallDetails;->rttMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/codeaurora/ims/ImsRadioAidl;->logv(Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 244
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsRadioAidl;->mIsDisposed:Z

    .line 246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->resetService()V

    .line 248
    return-void

    .line 246
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public exitEmergencyCallbackMode(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 518
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->exitEmergencyCallbackMode(I)V

    .line 519
    return-void
.end method

.method public exitSmsCallBackMode(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->exitSmsCallBackMode(I)V

    .line 597
    return-void
.end method

.method public explicitCallTransfer(IIILjava/lang/String;I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "srcCallId"    # I
    .param p3, "type"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "destCallId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    invoke-static {p2, p3, p4, p5}, Lorg/codeaurora/ims/StableAidl;->fromEctInfo(IILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;

    move-result-object v0

    .line 420
    .local v0, "ectInfo":Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;)V

    .line 421
    return-void
.end method

.method public getCallWaiting(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getCallWaiting(II)V

    .line 478
    return-void
.end method

.method public getClip(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 507
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getClip(I)V

    .line 508
    return-void
.end method

.method public getClir(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 466
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getClir(I)V

    .line 467
    return-void
.end method

.method public getColr(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 532
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getColr(I)V

    .line 533
    return-void
.end method

.method public getConfig(IIZILjava/lang/String;I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "item"    # I
    .param p3, "boolValue"    # Z
    .param p4, "intValue"    # I
    .param p5, "strValue"    # Ljava/lang/String;
    .param p6, "errorCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/StableAidl;->fromImsConfig(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/ConfigInfo;

    move-result-object v0

    .line 437
    .local v0, "config":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    .line 438
    return-void
.end method

.method public getImsRegistrationState(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getImsRegistrationState(I)V

    .line 375
    return-void
.end method

.method public getImsSubConfig(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 553
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getImsSubConfig(I)V

    .line 554
    return-void
.end method

.method public getRtpErrorStatistics(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 548
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getRtpErrorStatistics(I)V

    .line 549
    return-void
.end method

.method public getRtpStatistics(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 543
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getRtpStatistics(I)V

    .line 544
    return-void
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hangup(IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "connectionId"    # I
    .param p3, "userUri"    # Ljava/lang/String;
    .param p4, "confUri"    # Ljava/lang/String;
    .param p5, "mpty"    # Z
    .param p6, "failCause"    # I
    .param p7, "errorInfo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    invoke-static/range {p2 .. p7}, Lorg/codeaurora/ims/StableAidl;->fromHangup(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lvendor/qti/hardware/radio/ims/HangupRequestInfo;

    move-result-object v0

    .line 356
    .local v0, "hangup":Lvendor/qti/hardware/radio/ims/HangupRequestInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->hangup(ILvendor/qti/hardware/radio/ims/HangupRequestInfo;)V

    .line 357
    return-void
.end method

.method public hold(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->hold(II)V

    .line 403
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .line 239
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFeatureSupported(I)Z
    .locals 2
    .param p1, "feature"    # I

    .line 208
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 234
    return v0

    .line 232
    :pswitch_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lorg/codeaurora/ims/StableAidl;->isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z

    move-result v0

    return v0

    .line 229
    :pswitch_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lorg/codeaurora/ims/StableAidl;->isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z

    move-result v0

    return v0

    .line 226
    :pswitch_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/codeaurora/ims/StableAidl;->isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z

    move-result v0

    return v0

    .line 223
    :pswitch_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/codeaurora/ims/StableAidl;->isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z

    move-result v0

    return v0

    .line 220
    :pswitch_4
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/codeaurora/ims/StableAidl;->isVersionSupported(Lvendor/qti/hardware/radio/ims/IImsRadio;I)Z

    move-result v0

    return v0

    .line 217
    :pswitch_5
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public modifyCallConfirm(ILorg/codeaurora/ims/CallModify;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromCallModify(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V

    .line 398
    return-void
.end method

.method public modifyCallInitiate(ILorg/codeaurora/ims/CallModify;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 386
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromCallModify(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V

    .line 387
    return-void
.end method

.method public queryCallForwardStatus(IIILjava/lang/String;Z)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "cfReason"    # I
    .param p3, "serviceClass"    # I
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "expectMore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 500
    const/4 v3, 0x2

    const/4 v4, 0x0

    move v0, p2

    move v1, p3

    move-object v2, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/codeaurora/ims/StableAidl;->fromImsCallForwardTimerInfo(IILjava/lang/String;IIZ)Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    move-result-object v0

    .line 502
    .local v0, "cfInfo":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V

    .line 503
    return-void
.end method

.method public queryMultiSimVoiceCapability(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 591
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->queryMultiSimVoiceCapability(I)V

    .line 592
    return-void
.end method

.method public queryServiceStatus(I)V
    .locals 1
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 361
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->queryServiceStatus(I)V

    .line 362
    return-void
.end method

.method public queryVirtualLineInfo(ILjava/lang/String;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 563
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->queryVirtualLineInfo(ILjava/lang/String;)V

    .line 564
    return-void
.end method

.method public registerMultiIdentityLines(ILjava/util/Collection;)V
    .locals 2
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "Lorg/codeaurora/ims/MultiIdentityLineInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 569
    .local p2, "linesInfo":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    nop

    .line 570
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromMultiIdentityLineInfoList(Ljava/util/Collection;)[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    move-result-object v0

    .line 571
    .local v0, "halLinesInfo":[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->registerMultiIdentityLines(I[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V

    .line 572
    return-void
.end method

.method public requestRegistrationChange(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "imsRegState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromRegState(I)I

    move-result v1

    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->requestRegistrationChange(II)V

    .line 381
    return-void
.end method

.method public resume(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->resume(II)V

    .line 408
    return-void
.end method

.method public sendDtmf(IIC)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .param p3, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 442
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromDtmf(IC)Lvendor/qti/hardware/radio/ims/DtmfInfo;

    move-result-object v0

    .line 443
    .local v0, "dtmfValue":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V

    .line 444
    return-void
.end method

.method public sendGeolocationInfo(IDDLandroid/location/Address;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "lat"    # D
    .param p4, "lon"    # D
    .param p6, "address"    # Landroid/location/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/StableAidl;->fromGeoLocation(DDLandroid/location/Address;)Lvendor/qti/hardware/radio/ims/GeoLocationInfo;

    move-result-object v0

    .line 348
    .local v0, "geoLocationInfo":Lvendor/qti/hardware/radio/ims/GeoLocationInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendGeolocationInfo(ILvendor/qti/hardware/radio/ims/GeoLocationInfo;)V

    .line 349
    return-void
.end method

.method public sendRttMessage(ILjava/lang/String;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 558
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendRttMessage(ILjava/lang/String;)V

    .line 559
    return-void
.end method

.method public sendSipDtmf(ILjava/lang/String;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "requestCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 576
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendSipDtmf(ILjava/lang/String;)V

    .line 577
    return-void
.end method

.method public sendSms(IILjava/lang/String;Ljava/lang/String;Z[B)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "format"    # Ljava/lang/String;
    .param p4, "smsc"    # Ljava/lang/String;
    .param p5, "isRetry"    # Z
    .param p6, "pdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/StableAidl;->fromSmsRequest(ILjava/lang/String;Ljava/lang/String;Z[B)Lvendor/qti/hardware/radio/ims/SmsSendRequest;

    move-result-object v0

    .line 321
    .local v0, "smsRequest":Lvendor/qti/hardware/radio/ims/SmsSendRequest;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendSms(ILvendor/qti/hardware/radio/ims/SmsSendRequest;)V

    .line 322
    return-void
.end method

.method public sendUssd(ILjava/lang/String;)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "address"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 293
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/IImsRadio;->sendUssd(ILjava/lang/String;)V

    .line 294
    return-void
.end method

.method public setCallForwardStatus(IIIIIIIILjava/lang/String;I)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "startHour"    # I
    .param p3, "startMinute"    # I
    .param p4, "endHour"    # I
    .param p5, "endMinute"    # I
    .param p6, "action"    # I
    .param p7, "cfReason"    # I
    .param p8, "serviceClass"    # I
    .param p9, "number"    # Ljava/lang/String;
    .param p10, "timeSeconds"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 492
    move/from16 v0, p7

    move/from16 v1, p8

    move-object/from16 v2, p9

    move v3, p6

    move/from16 v4, p10

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lorg/codeaurora/ims/StableAidl;->fromImsCallForwardTimerInfo(IILjava/lang/String;IIIIII)Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    move-result-object v0

    .line 494
    .local v0, "cfInfo":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    move v2, p1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V

    .line 495
    return-void
.end method

.method public setCallWaiting(IZI)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 483
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromCallWaiting(ZI)Lvendor/qti/hardware/radio/ims/CallWaitingInfo;

    move-result-object v0

    .line 484
    .local v0, "callWaitingInfo":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setCallWaiting(ILvendor/qti/hardware/radio/ims/CallWaitingInfo;)V

    .line 485
    return-void
.end method

.method public setClir(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "clirMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 471
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromClir(I)Lvendor/qti/hardware/radio/ims/ClirInfo;

    move-result-object v0

    .line 472
    .local v0, "clirValue":Lvendor/qti/hardware/radio/ims/ClirInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setClir(ILvendor/qti/hardware/radio/ims/ClirInfo;)V

    .line 473
    return-void
.end method

.method public setColr(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "presentationValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 537
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromColrValue(I)Lvendor/qti/hardware/radio/ims/ColrInfo;

    move-result-object v0

    .line 538
    .local v0, "colrValue":Lvendor/qti/hardware/radio/ims/ColrInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setColr(ILvendor/qti/hardware/radio/ims/ColrInfo;)V

    .line 539
    return-void
.end method

.method public setConfig(IIZILjava/lang/String;I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "item"    # I
    .param p3, "boolValue"    # Z
    .param p4, "intValue"    # I
    .param p5, "strValue"    # Ljava/lang/String;
    .param p6, "errorCause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 427
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/StableAidl;->fromImsConfig(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/ConfigInfo;

    move-result-object v0

    .line 429
    .local v0, "config":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    .line 430
    return-void
.end method

.method public setMediaConfiguration(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "screenSize"    # Landroid/graphics/Point;
    .param p3, "avcSize"    # Landroid/graphics/Point;
    .param p4, "hevcSize"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 582
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRadioAidl;->isFeatureSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    invoke-static {p2, p3, p4}, Lorg/codeaurora/ims/StableAidl;->fromImsMediaConfig(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)Lvendor/qti/hardware/radio/ims/MediaConfig;

    move-result-object v0

    .line 586
    .local v0, "mediaConfig":Lvendor/qti/hardware/radio/ims/MediaConfig;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setMediaConfiguration(ILvendor/qti/hardware/radio/ims/MediaConfig;)V

    .line 587
    return-void

    .line 583
    .end local v0    # "mediaConfig":Lvendor/qti/hardware/radio/ims/MediaConfig;
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "setMediaConfiguration is not supported"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setServiceStatus(ILjava/util/List;I)V
    .locals 2
    .param p1, "token"    # I
    .param p3, "restrictCause"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/CapabilityStatus;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 367
    .local p2, "capabilityStatusList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/CapabilityStatus;>;"
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromServiceStatusInfoList(Ljava/util/List;I)[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    move-result-object v0

    .line 369
    .local v0, "svcstatusInfo":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setServiceStatus(I[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V

    .line 370
    return-void
.end method

.method public setSuppServiceNotification(IZ)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 460
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    .line 461
    if-eqz p2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 460
    :goto_0
    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setSuppServiceNotification(II)V

    .line 462
    return-void
.end method

.method public setUiTtyMode(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "uiTtyMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 512
    invoke-static {p2}, Lorg/codeaurora/ims/StableAidl;->fromTty(I)Lvendor/qti/hardware/radio/ims/TtyInfo;

    move-result-object v0

    .line 513
    .local v0, "info":Lvendor/qti/hardware/radio/ims/TtyInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/TtyInfo;)V

    .line 514
    return-void
.end method

.method public startDtmf(IIC)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .param p3, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 448
    invoke-static {p2, p3}, Lorg/codeaurora/ims/StableAidl;->fromDtmf(IC)Lvendor/qti/hardware/radio/ims/DtmfInfo;

    move-result-object v0

    .line 449
    .local v0, "dtmfValue":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->startDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V

    .line 450
    return-void
.end method

.method public stopDtmf(II)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "callId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 454
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/IImsRadio;->stopDtmf(I)V

    .line 455
    return-void
.end method

.method public suppServiceStatus(III[Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "operationType"    # I
    .param p3, "facility"    # I
    .param p4, "inCbNumList"    # [Ljava/lang/String;
    .param p5, "password"    # Ljava/lang/String;
    .param p6, "serviceClass"    # I
    .param p7, "expectMore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 525
    invoke-static/range {p2 .. p7}, Lorg/codeaurora/ims/StableAidl;->fromSuppServiceStatus(II[Ljava/lang/String;Ljava/lang/String;IZ)Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;

    move-result-object v0

    .line 527
    .local v0, "suppServiceStatusRequest":Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioAidl;->imsRadio()Lvendor/qti/hardware/radio/ims/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio;->suppServiceStatus(ILvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;)V

    .line 528
    return-void
.end method
