.class public Lorg/codeaurora/ims/ImsRadioHidl;
.super Ljava/lang/Object;
.source "ImsRadioHidl.java"

# interfaces
.implements Lorg/codeaurora/ims/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;,
        Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;
    }
.end annotation


# static fields
.field static final IIMS_RADIO_SERVICE_NAME:Ljava/lang/String; = "imsradio"

.field static final LOG_TAG:Ljava/lang/String; = "ImsRadioHidl"

.field private static final STATUS_INTERROGATE:I = 0x2


# instance fields
.field private mDeathRecipient:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;

.field private final mHalSync:Ljava/lang/Object;

.field private volatile mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

.field private mImsRadioIndication:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

.field private mImsRadioResponse:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

.field private volatile mImsRadioV12:Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

.field private volatile mImsRadioV13:Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

.field private volatile mImsRadioV14:Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

.field private volatile mImsRadioV15:Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

.field private volatile mImsRadioV16:Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

.field private volatile mImsRadioV17:Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

.field private volatile mImsRadioV18:Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

.field private mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

.field private mIsDisposed:Z

.field private mPhoneId:Ljava/lang/Integer;

.field private mResponse:Lorg/codeaurora/ims/IImsRadioResponse;

.field private mServiceName:Ljava/lang/String;

.field private final mServiceNotification:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHalSync(Lorg/codeaurora/ims/ImsRadioHidl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDisposed(Lorg/codeaurora/ims/ImsRadioHidl;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mIsDisposed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$minitImsRadio(Lorg/codeaurora/ims/ImsRadioHidl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->initImsRadio()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetServiceAndRequestList(Lorg/codeaurora/ims/ImsRadioHidl;)V
    .locals 0

    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->resetServiceAndRequestList()V

    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/IImsRadioResponse;Lorg/codeaurora/ims/IImsRadioIndication;I)V
    .locals 2
    .param p1, "response"    # Lorg/codeaurora/ims/IImsRadioResponse;
    .param p2, "indication"    # Lorg/codeaurora/ims/IImsRadioIndication;
    .param p3, "phoneId"    # I

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;-><init>(Lorg/codeaurora/ims/ImsRadioHidl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mServiceNotification:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mIsDisposed:Z

    .line 95
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mPhoneId:Ljava/lang/Integer;

    .line 96
    iput-object p1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    .line 97
    iput-object p2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imsradio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mServiceName:Ljava/lang/String;

    .line 99
    new-instance v0, Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;-><init>(Lorg/codeaurora/ims/ImsRadioHidl;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mDeathRecipient:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;

    .line 101
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->registerForImsRadioServiceNotification()V

    .line 102
    return-void
.end method

.method private fail()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 853
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "HIDL does not support this API"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    .locals 3

    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 200
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-object v0, v2

    .line 201
    monitor-exit v1

    .line 202
    return-object v0

    .line 201
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    .locals 3

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 208
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV12:Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-object v0, v2

    .line 209
    monitor-exit v1

    .line 210
    return-object v0

    .line 209
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private imsRadioV13()Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    .locals 3

    .line 214
    const/4 v0, 0x0

    .line 215
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV13:Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

    move-object v0, v2

    .line 217
    monitor-exit v1

    .line 218
    return-object v0

    .line 217
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private imsRadioV14()Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    .locals 3

    .line 222
    const/4 v0, 0x0

    .line 223
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 224
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV14:Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-object v0, v2

    .line 225
    monitor-exit v1

    .line 226
    return-object v0

    .line 225
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;
    .locals 3

    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 232
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV15:Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-object v0, v2

    .line 233
    monitor-exit v1

    .line 234
    return-object v0

    .line 233
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;
    .locals 3

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV16:Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-object v0, v2

    .line 241
    monitor-exit v1

    .line 242
    return-object v0

    .line 241
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private imsRadioV17()Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;
    .locals 3

    .line 246
    const/4 v0, 0x0

    .line 247
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV17:Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

    move-object v0, v2

    .line 249
    monitor-exit v1

    .line 250
    return-object v0

    .line 249
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private imsRadioV18()Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;
    .locals 3

    .line 254
    const/4 v0, 0x0

    .line 255
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 256
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV18:Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    move-object v0, v2

    .line 257
    monitor-exit v1

    .line 258
    return-object v0

    .line 257
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private initImsRadio()V
    .locals 15

    .line 267
    :try_start_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mServiceName:Ljava/lang/String;

    .line 268
    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getService(Ljava/lang/String;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    .line 269
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    if-nez v0, :cond_0

    .line 270
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->resetHalInterfaces()V

    .line 271
    const-string v1, "initImsRadio: imsRadio is null."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    return-void

    .line 275
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initImsRadio: imsRadioV10 availability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    .line 276
    :goto_0
    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    nop

    .line 279
    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_1/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_1/IImsRadio;

    move-result-object v1

    .line 280
    .local v1, "imsRadioV11":Lvendor/qti/hardware/radio/ims/V1_1/IImsRadio;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initImsRadio: imsRadioV11 availability: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_2

    move v5, v2

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-virtual {p0, v5}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    nop

    .line 284
    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v4

    .line 285
    .local v4, "imsRadioV12":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initImsRadio: imsRadioV12 availability: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v4, :cond_3

    move v6, v2

    goto :goto_2

    :cond_3
    move v6, v3

    :goto_2
    invoke-virtual {p0, v6}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    nop

    .line 289
    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

    move-result-object v5

    .line 290
    .local v5, "imsRadioV13":Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initImsRadio: imsRadioV13 availability: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v5, :cond_4

    move v7, v2

    goto :goto_3

    :cond_4
    move v7, v3

    :goto_3
    invoke-virtual {p0, v7}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    nop

    .line 294
    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-result-object v6

    .line 295
    .local v6, "imsRadioV14":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initImsRadio: imsRadioV14 availability: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v6, :cond_5

    move v8, v2

    goto :goto_4

    :cond_5
    move v8, v3

    :goto_4
    invoke-virtual {p0, v8}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    nop

    .line 299
    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object v7

    .line 300
    .local v7, "imsRadioV15":Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initImsRadio: imsRadioV15 availability: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v7, :cond_6

    move v9, v2

    goto :goto_5

    :cond_6
    move v9, v3

    :goto_5
    invoke-virtual {p0, v9}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    nop

    .line 304
    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v8

    .line 305
    .local v8, "imsRadioV16":Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "initImsRadio: imsRadioV16 availability: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v8, :cond_7

    move v10, v2

    goto :goto_6

    :cond_7
    move v10, v3

    :goto_6
    invoke-virtual {p0, v10}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    nop

    .line 309
    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

    move-result-object v9

    .line 310
    .local v9, "imsRadioV17":Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "initImsRadio: imsRadioV17 availability: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v9, :cond_8

    move v11, v2

    goto :goto_7

    :cond_8
    move v11, v3

    :goto_7
    invoke-virtual {p0, v11}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    nop

    .line 314
    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;->castFrom(Landroid/os/IHwInterface;)Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    move-result-object v10

    .line 315
    .local v10, "imsRadioV18":Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "initImsRadio: imsRadioV18 availability: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v10, :cond_9

    goto :goto_8

    :cond_9
    move v2, v3

    :goto_8
    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/ImsRadioHidl;->toAvailability(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    new-instance v2, Lorg/codeaurora/ims/ImsRadioResponseHidl;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mResponse:Lorg/codeaurora/ims/IImsRadioResponse;

    invoke-direct {v2, v3}, Lorg/codeaurora/ims/ImsRadioResponseHidl;-><init>(Lorg/codeaurora/ims/IImsRadioResponse;)V

    .line 319
    .local v2, "imsRadioResponse":Lorg/codeaurora/ims/ImsRadioResponseHidl;
    new-instance v3, Lorg/codeaurora/ims/ImsRadioIndicationHidl;

    iget-object v11, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-direct {v3, v11}, Lorg/codeaurora/ims/ImsRadioIndicationHidl;-><init>(Lorg/codeaurora/ims/IImsRadioIndication;)V

    .line 322
    .local v3, "imsRadioIndication":Lorg/codeaurora/ims/ImsRadioIndicationHidl;
    iget-object v11, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :try_start_1
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioResponse:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

    .line 324
    iput-object v3, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioIndication:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

    .line 325
    invoke-interface {v0, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setCallback(Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;)V

    .line 326
    iget-object v12, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mDeathRecipient:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;

    const-wide/16 v13, 0x0

    invoke-interface {v0, v12, v13, v14}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 327
    iput-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    .line 328
    iput-object v4, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV12:Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    .line 329
    iput-object v5, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV13:Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

    .line 330
    iput-object v6, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV14:Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    .line 331
    iput-object v7, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV15:Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    .line 332
    iput-object v8, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV16:Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    .line 333
    iput-object v9, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV17:Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

    .line 334
    iput-object v10, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV18:Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    .line 335
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    :try_start_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->notifyServiceUp()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 341
    .end local v0    # "imsRadio":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    .end local v1    # "imsRadioV11":Lvendor/qti/hardware/radio/ims/V1_1/IImsRadio;
    .end local v2    # "imsRadioResponse":Lorg/codeaurora/ims/ImsRadioResponseHidl;
    .end local v3    # "imsRadioIndication":Lorg/codeaurora/ims/ImsRadioIndicationHidl;
    .end local v4    # "imsRadioV12":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    .end local v5    # "imsRadioV13":Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    .end local v6    # "imsRadioV14":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    .end local v7    # "imsRadioV15":Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;
    .end local v8    # "imsRadioV16":Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;
    .end local v9    # "imsRadioV17":Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;
    .end local v10    # "imsRadioV18":Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;
    goto :goto_9

    .line 335
    .restart local v0    # "imsRadio":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    .restart local v1    # "imsRadioV11":Lvendor/qti/hardware/radio/ims/V1_1/IImsRadio;
    .restart local v2    # "imsRadioResponse":Lorg/codeaurora/ims/ImsRadioResponseHidl;
    .restart local v3    # "imsRadioIndication":Lorg/codeaurora/ims/ImsRadioIndicationHidl;
    .restart local v4    # "imsRadioV12":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    .restart local v5    # "imsRadioV13":Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    .restart local v6    # "imsRadioV14":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    .restart local v7    # "imsRadioV15":Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;
    .restart local v8    # "imsRadioV16":Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;
    .restart local v9    # "imsRadioV17":Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;
    .restart local v10    # "imsRadioV18":Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;
    :catchall_0
    move-exception v12

    :try_start_3
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lorg/codeaurora/ims/ImsRadioHidl;
    :try_start_4
    throw v12
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 338
    .end local v0    # "imsRadio":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    .end local v1    # "imsRadioV11":Lvendor/qti/hardware/radio/ims/V1_1/IImsRadio;
    .end local v2    # "imsRadioResponse":Lorg/codeaurora/ims/ImsRadioResponseHidl;
    .end local v3    # "imsRadioIndication":Lorg/codeaurora/ims/ImsRadioIndicationHidl;
    .end local v4    # "imsRadioV12":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    .end local v5    # "imsRadioV13":Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    .end local v6    # "imsRadioV14":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    .end local v7    # "imsRadioV15":Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;
    .end local v8    # "imsRadioV16":Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;
    .end local v9    # "imsRadioV17":Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;
    .end local v10    # "imsRadioV18":Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;
    .restart local p0    # "this":Lorg/codeaurora/ims/ImsRadioHidl;
    :catch_0
    move-exception v0

    .line 339
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

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->resetServiceAndRequestList()V

    .line 342
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_9
    return-void
.end method

.method private notifyServiceDown()V
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceDown()V

    .line 110
    return-void
.end method

.method private notifyServiceUp()V
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mIndication:Lorg/codeaurora/ims/IImsRadioIndication;

    invoke-interface {v0}, Lorg/codeaurora/ims/IImsRadioIndication;->onServiceUp()V

    .line 106
    return-void
.end method

.method private registerForImsRadioServiceNotification()V
    .locals 4

    .line 186
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    const-string v1, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    iget-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mServiceName:Ljava/lang/String;

    iget-object v3, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mServiceNotification:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioServiceNotification;

    .line 187
    invoke-interface {v0, v1, v2, v3}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result v0

    .line 189
    .local v0, "ret":Z
    if-nez v0, :cond_0

    .line 190
    const-string v1, "Failed to register for service start notifications"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v0    # "ret":Z
    :cond_0
    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register for service start notifications. Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private resetHalInterfaces()V
    .locals 3

    .line 133
    const-string v0, "resetHalInterfaces: Resetting HAL interfaces."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    .line 135
    .local v0, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;
    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mDeathRecipient:Lorg/codeaurora/ims/ImsRadioHidl$ImsRadioDeathRecipient;

    invoke-interface {v0, v1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    :catch_0
    move-exception v1

    .line 140
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadio:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    .line 142
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV12:Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    .line 143
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV13:Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

    .line 144
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV14:Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    .line 145
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV15:Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    .line 146
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV16:Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    .line 147
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV17:Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

    .line 148
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioV18:Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    .line 149
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioResponse:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

    .line 150
    iput-object v2, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mImsRadioIndication:Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

    .line 152
    monitor-exit v1

    .line 153
    return-void

    .line 152
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private declared-synchronized resetServiceAndRequestList()V
    .locals 1

    monitor-enter p0

    .line 128
    :try_start_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->notifyServiceDown()V

    .line 129
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->resetHalInterfaces()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 127
    .end local p0    # "this":Lorg/codeaurora/ims/ImsRadioHidl;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public acknowledgeSms(III)V
    .locals 3
    .param p1, "token"    # I
    .param p2, "messageRef"    # I
    .param p3, "deliverStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 496
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->imsSmsDeliverStatusToHidl(I)I

    move-result v0

    .line 497
    .local v0, "deliverStatusInfo":I
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object v1

    .line 498
    .local v1, "imsRadioV15":Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;
    if-eqz v1, :cond_0

    .line 499
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;->acknowledgeSms_1_5(III)V

    goto :goto_0

    .line 501
    :cond_0
    const-string v2, "ImsRadioV15 is null. Invoking ImsRadioV12.acknowledgeSms()"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v2

    invoke-interface {v2, p1, p2, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->acknowledgeSms(III)V

    .line 504
    :goto_0
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

    .line 509
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->imsSmsStatusReportStatusToHidl(I)I

    move-result v0

    .line 511
    .local v0, "statusReportStatusInfo":I
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, p2, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->acknowledgeSmsReport(III)V

    .line 512
    return-void
.end method

.method public addParticipant(ILjava/lang/String;ILorg/codeaurora/ims/CallDetails;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "clirMode"    # I
    .param p4, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 381
    nop

    .line 382
    const/4 v0, 0x0

    invoke-static {p2, p3, p4, v0}, Lorg/codeaurora/ims/ImsRadioUtils;->buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;Z)Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    move-result-object v0

    .line 384
    .local v0, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV14()Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-result-object v1

    .line 385
    .local v1, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    if-eqz v1, :cond_0

    .line 386
    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;->addParticipant_1_4(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;)V

    goto :goto_0

    .line 388
    :cond_0
    const-string v2, "mImsRadio V1.4 is null. invoking mImsRadio.dial()"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v2

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateFromDialRequestV14(Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;)Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->addParticipant(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 392
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " addParticipant: token = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->address:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " callDomain = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isConferenceUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isConferenceUri:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isCallPull ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isCallPull:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isEncrypted = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isEncrypted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 398
    return-void
.end method

.method public answer(IIII)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "callType"    # I
    .param p3, "ipPresentation"    # I
    .param p4, "rttMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 472
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeToHal(I)I

    move-result v1

    .line 473
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->mapTirPresentationToIpPresentation(I)I

    move-result v2

    .line 474
    invoke-static {p4}, Lorg/codeaurora/ims/ImsRadioUtils;->rttModeToHal(I)I

    move-result v3

    .line 472
    invoke-interface {v0, p1, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->answer(IIII)V

    .line 475
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

    .line 594
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->cancelModifyCall(II)V

    .line 595
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

    .line 466
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->cancelPendingUssd(I)V

    .line 467
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

    .line 615
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->conference(I)V

    .line 616
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

    .line 479
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;-><init>()V

    .line 480
    .local v0, "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;
    iput p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;->connIndex:I

    .line 481
    iput-object p3, v0, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;->number:Ljava/lang/String;

    .line 482
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->deflectCall(ILvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;)V

    .line 483
    return-void
.end method

.method public dial(ILjava/lang/String;Lorg/codeaurora/ims/EmergencyCallInfo;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/RedialInfo;)V
    .locals 19
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

    .line 404
    move-object/from16 v0, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p8

    .line 405
    invoke-static {v10, v11, v12, v13, v14}, Lorg/codeaurora/ims/ImsRadioUtils;->buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    move-result-object v15

    .line 407
    .local v15, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 408
    nop

    .line 409
    invoke-static {v10, v11, v12, v13, v14}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    move-result-object v8

    .line 411
    .local v8, "dialRequestV16":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    if-eqz p7, :cond_0

    .line 412
    const-string v1, "Dialing call composer call v1.6"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRadioHidl;->log(Ljava/lang/String;)V

    .line 413
    nop

    .line 414
    invoke-static/range {p7 .. p7}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->buildCallComposerInfoHal(Lorg/codeaurora/ims/CallComposerInfo;)Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    move-result-object v1

    .line 415
    .local v1, "composerInfo":Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v2

    invoke-interface {v2, v9, v8, v1}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->callComposerDial(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)V

    .line 416
    .end local v1    # "composerInfo":Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;
    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 417
    nop

    .line 418
    invoke-virtual/range {p3 .. p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyServiceCategories()I

    move-result v1

    .line 417
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->mapEmergencyServiceCategoryToHal(I)I

    move-result v16

    .line 419
    .local v16, "categories":I
    nop

    .line 420
    invoke-virtual/range {p3 .. p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyCallRouting()I

    move-result v1

    .line 419
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->mapEmergencyCallRoutingToHal(I)I

    move-result v17

    .line 421
    .local v17, "route":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual/range {p3 .. p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyUrns()Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 422
    .local v5, "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "emergencyDial v1.6"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRadioHidl;->log(Ljava/lang/String;)V

    .line 423
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v1

    .line 424
    invoke-virtual/range {p3 .. p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->hasKnownUserIntentEmergency()Z

    move-result v7

    .line 425
    invoke-virtual/range {p3 .. p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->isEmergencyCallTesting()Z

    move-result v18

    .line 423
    move/from16 v2, p1

    move-object v3, v8

    move/from16 v4, v16

    move/from16 v6, v17

    move-object v10, v8

    .end local v8    # "dialRequestV16":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    .local v10, "dialRequestV16":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    move/from16 v8, v18

    invoke-interface/range {v1 .. v8}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->emergencyDial_1_6(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;ILjava/util/ArrayList;IZZ)V

    .line 426
    .end local v5    # "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v16    # "categories":I
    .end local v17    # "route":I
    goto :goto_0

    .line 427
    .end local v10    # "dialRequestV16":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    .restart local v8    # "dialRequestV16":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    :cond_1
    move-object v10, v8

    .end local v8    # "dialRequestV16":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    .restart local v10    # "dialRequestV16":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    const-string v1, "dial v1.6"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRadioHidl;->log(Ljava/lang/String;)V

    .line 428
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v1

    invoke-interface {v1, v9, v10}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->dial_1_6(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;)V

    .line 430
    .end local v10    # "dialRequestV16":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    :goto_0
    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 431
    nop

    .line 432
    invoke-virtual/range {p3 .. p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyServiceCategories()I

    move-result v1

    .line 431
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->mapEmergencyServiceCategoryToHal(I)I

    move-result v10

    .line 433
    .local v10, "categories":I
    nop

    .line 434
    invoke-virtual/range {p3 .. p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyCallRouting()I

    move-result v1

    .line 433
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->mapEmergencyCallRoutingToHal(I)I

    move-result v16

    .line 435
    .local v16, "route":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual/range {p3 .. p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->getEmergencyUrns()Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 436
    .restart local v5    # "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "emergencyDial v1.5"

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsRadioHidl;->log(Ljava/lang/String;)V

    .line 437
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object v1

    .line 438
    invoke-virtual/range {p3 .. p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->hasKnownUserIntentEmergency()Z

    move-result v7

    .line 439
    invoke-virtual/range {p3 .. p3}, Lorg/codeaurora/ims/EmergencyCallInfo;->isEmergencyCallTesting()Z

    move-result v8

    .line 437
    move/from16 v2, p1

    move-object v3, v15

    move v4, v10

    move/from16 v6, v16

    invoke-interface/range {v1 .. v8}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;->emergencyDial(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;ILjava/util/ArrayList;IZZ)V

    .line 440
    .end local v5    # "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "categories":I
    .end local v16    # "route":I
    goto :goto_1

    .line 441
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV14()Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-result-object v1

    .line 442
    .local v1, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    if-eqz v1, :cond_4

    .line 443
    const-string v2, "dial v1.4"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsRadioHidl;->log(Ljava/lang/String;)V

    .line 444
    invoke-interface {v1, v9, v15}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;->dial_1_4(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;)V

    goto :goto_1

    .line 446
    :cond_4
    const-string v2, "dial v1.0"

    invoke-virtual {v0, v2}, Lorg/codeaurora/ims/ImsRadioHidl;->log(Ljava/lang/String;)V

    .line 447
    invoke-direct/range {p0 .. p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v2

    invoke-static {v15}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateFromDialRequestV14(Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;)Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    move-result-object v3

    invoke-interface {v2, v9, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->dial(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 451
    .end local v1    # "imsRadio":Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dial: address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v15, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "callType ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v15, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "callDomain ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v15, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isConferenceUri ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v15, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isConferenceUri:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isCallPull ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v15, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isCallPull:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isEncrypted ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, v15, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->isEncrypted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "rttMode ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v15, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    return-void
.end method

.method public dispose()V
    .locals 2

    .line 372
    iget-object v0, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mHalSync:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mIsDisposed:Z

    .line 374
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->resetHalInterfaces()V

    .line 376
    return-void

    .line 374
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

    .line 763
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->exitEmergencyCallbackMode(I)V

    .line 764
    return-void
.end method

.method public exitSmsCallBackMode(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 849
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->fail()V

    .line 850
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

    .line 621
    invoke-static {p2, p3, p4, p5}, Lorg/codeaurora/ims/ImsRadioUtils;->buildExplicitCallTransferInfo(IILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;

    move-result-object v0

    .line 623
    .local v0, "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;)V

    .line 624
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

    .line 711
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getCallWaiting(II)V

    .line 712
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

    .line 751
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getClip(I)V

    .line 752
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

    .line 699
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getClir(I)V

    .line 700
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

    .line 784
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getColr(I)V

    .line 785
    return-void
.end method

.method public getConfig(IIZILjava/lang/String;I)V
    .locals 4
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

    .line 658
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV18()Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    move-result-object v0

    .line 659
    .local v0, "imsRadioV18":Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;
    nop

    .line 660
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    move-result-object v1

    .line 661
    .local v1, "configInfoV18":Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfig: item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->item:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " boolValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " strValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errorCause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 663
    if-eqz v0, :cond_0

    .line 664
    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;->getConfig_1_8(ILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    goto :goto_0

    .line 666
    :cond_0
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/ImsRadioUtils;->buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    move-result-object v2

    .line 668
    .local v2, "configInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 670
    .end local v2    # "configInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :goto_0
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

    .line 577
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getImsRegistrationState(I)V

    .line 578
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

    .line 806
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getImsSubConfig(I)V

    .line 807
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

    .line 801
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getRtpErrorStatistics(I)V

    .line 802
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

    .line 796
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->getRtpStatistics(I)V

    .line 797
    return-void
.end method

.method public getSmsFormat()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 516
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v0

    invoke-interface {v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hangup(IILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 4
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

    .line 536
    nop

    .line 537
    invoke-static/range {p2 .. p7}, Lorg/codeaurora/ims/ImsRadioUtils;->buildHangupRequest(ILjava/lang/String;Ljava/lang/String;ZILjava/lang/String;)Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;

    move-result-object v0

    .line 540
    .local v0, "hangup":Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV13()Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;

    move-result-object v1

    .line 541
    .local v1, "imsRadioV13":Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;
    if-eqz v1, :cond_0

    .line 542
    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_3/IImsRadio;->hangup_1_3(ILvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;)V

    goto :goto_0

    .line 544
    :cond_0
    const-string v2, "ImsRadioV13 is null. Invoking ImsRadioV10.hangup()"

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v2

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateHangupRequestInfoFromV13(Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;)Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->hangup(ILvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;)V

    .line 547
    :goto_0
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

    .line 605
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->hold(II)V

    .line 606
    return-void
.end method

.method public isAlive()Z
    .locals 1

    .line 367
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

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
    .locals 3
    .param p1, "feature"    # I

    .line 347
    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 362
    return v1

    .line 360
    :pswitch_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV18()Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 358
    :pswitch_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV17()Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    .line 351
    :pswitch_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0

    .line 355
    :pswitch_3
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    return v0

    .line 349
    :pswitch_4
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public log(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 857
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 858
    return-void
.end method

.method public logv(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[SUB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsRadioHidl;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 862
    return-void
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

    .line 599
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    .line 600
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallModifyInfo(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    move-result-object v1

    .line 599
    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 601
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

    .line 588
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    .line 589
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallModifyInfo(Lorg/codeaurora/ims/CallModify;)Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    move-result-object v1

    .line 588
    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 590
    return-void
.end method

.method public queryCallForwardStatus(IIILjava/lang/String;Z)V
    .locals 2
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

    .line 743
    nop

    .line 744
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p2, p3, p4, v0, v1}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallForwardInfo(IILjava/lang/String;II)Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    move-result-object v0

    .line 746
    .local v0, "cfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    .line 747
    return-void
.end method

.method public queryMultiSimVoiceCapability(I)V
    .locals 0
    .param p1, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 844
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->fail()V

    .line 845
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

    .line 551
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->queryServiceStatus(I)V

    .line 552
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

    .line 816
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV14()Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;->queryVirtualLineInfo(ILjava/lang/String;)V

    .line 817
    return-void
.end method

.method public registerMultiIdentityLines(ILjava/util/Collection;)V
    .locals 4
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

    .line 822
    .local p2, "linesInfo":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/codeaurora/ims/MultiIdentityLineInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 823
    .local v0, "halLinesInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 824
    .local v2, "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    nop

    .line 825
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->toMultiIdentityLineInfoHal(Lorg/codeaurora/ims/MultiIdentityLineInfo;)Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    move-result-object v3

    .line 826
    .local v3, "lineInfo":Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    .end local v2    # "line":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    .end local v3    # "lineInfo":Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;
    goto :goto_0

    .line 828
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV14()Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadio;->registerMultiIdentityLines(ILjava/util/ArrayList;)V

    .line 829
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

    .line 582
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    .line 583
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->regStateToHal(I)I

    move-result v1

    .line 582
    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->requestRegistrationChange(II)V

    .line 584
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

    .line 610
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->resume(II)V

    .line 611
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

    .line 674
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 675
    .local v0, "dtmfValue":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->dtmf:Ljava/lang/String;

    .line 676
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->sendDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    .line 677
    return-void
.end method

.method public sendGeolocationInfo(IDDLandroid/location/Address;)V
    .locals 9
    .param p1, "token"    # I
    .param p2, "lat"    # D
    .param p4, "lon"    # D
    .param p6, "address"    # Landroid/location/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 522
    nop

    .line 523
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/ImsRadioUtils;->getHidlAddressInfo(DDLandroid/location/Address;)Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;

    move-result-object v7

    .line 524
    .local v7, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v8

    .line 525
    .local v8, "imsRadioV12":Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
    if-eqz v8, :cond_0

    .line 526
    move-object v0, v8

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, v7

    invoke-interface/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->sendGeolocationInfo_1_2(IDDLvendor/qti/hardware/radio/ims/V1_2/AddressInfo;)V

    goto :goto_0

    .line 528
    :cond_0
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    .line 529
    invoke-static {v7}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateAddressToV10(Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;)Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;

    move-result-object v6

    .line 528
    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->sendGeolocationInfo(IDDLvendor/qti/hardware/radio/ims/V1_0/AddressInfo;)V

    .line 531
    :goto_0
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

    .line 811
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->sendRttMessage(ILjava/lang/String;)V

    .line 812
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

    .line 833
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV17()Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_7/IImsRadio;->sendSipDtmf(ILjava/lang/String;)V

    .line 834
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

    .line 488
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/ImsRadioUtils;->buildImsSms(ILjava/lang/String;Ljava/lang/String;Z[B)Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;

    move-result-object v0

    .line 490
    .local v0, "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV12()Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;->sendImsSms(ILvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;)V

    .line 491
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

    .line 461
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->sendUssd(ILjava/lang/String;)V

    .line 462
    return-void
.end method

.method public setCallForwardStatus(IIIIIIIILjava/lang/String;I)V
    .locals 4
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

    .line 725
    nop

    .line 726
    invoke-static {p7, p8, p9, p6, p10}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallForwardInfo(IILjava/lang/String;II)Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    move-result-object v0

    .line 728
    .local v0, "cfInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    const/4 v1, 0x1

    const v2, 0x7fffffff

    if-eq p2, v2, :cond_0

    if-eq p3, v2, :cond_0

    .line 729
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerStart:Z

    .line 730
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->callFwdTimerStart:Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;

    invoke-static {v3, p2, p3}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallFwdTimerInfo(Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;II)V

    .line 733
    :cond_0
    if-eq p4, v2, :cond_1

    if-eq p5, v2, :cond_1

    .line 734
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->hasCallFwdTimerEnd:Z

    .line 735
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->callFwdTimerEnd:Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;

    invoke-static {v1, p4, p5}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCallFwdTimerInfo(Lvendor/qti/hardware/radio/ims/V1_0/CallFwdTimerInfo;II)V

    .line 737
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    .line 738
    return-void
.end method

.method public setCallWaiting(IZI)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "enable"    # Z
    .param p3, "serviceClass"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 716
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    .line 717
    nop

    .line 716
    invoke-interface {v0, p1, p2, p3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setCallWaiting(III)V

    .line 718
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

    .line 704
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 705
    .local v0, "clirValue":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    iput p2, v0, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->paramN:I

    .line 706
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setClir(ILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;)V

    .line 707
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

    .line 789
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 790
    .local v0, "colrValue":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->ipPresentationToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->presentation:I

    .line 791
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setColr(ILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    .line 792
    return-void
.end method

.method public setConfig(IIZILjava/lang/String;I)V
    .locals 6
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

    .line 630
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV18()Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;

    move-result-object v0

    .line 631
    .local v0, "imsRadioV18":Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;
    nop

    .line 632
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    move-result-object v1

    .line 633
    .local v1, "configInfoV18":Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConfig: item:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->item:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " boolValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " intValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " strValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " errorCause:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    if-eqz v0, :cond_0

    .line 636
    invoke-interface {v0, p1, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;->setConfig_1_8(ILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    goto :goto_0

    .line 638
    :cond_0
    nop

    .line 639
    invoke-static {p2, p3, p4, p5, p6}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    move-result-object v2

    .line 640
    .local v2, "configInfoV16":Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 641
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->setConfig_1_6(ILvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)V

    goto :goto_0

    .line 643
    :cond_1
    nop

    .line 644
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->migrateConfigInfoFromV16(Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;

    move-result-object v3

    .line 645
    .local v3, "configInfoV15":Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 646
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV15()Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;

    move-result-object v4

    invoke-interface {v4, p1, v3}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadio;->setConfig_1_5(ILvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;)V

    goto :goto_0

    .line 648
    :cond_2
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v4

    .line 649
    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateConfigInfoFromV15(Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    move-result-object v5

    .line 648
    invoke-interface {v4, p1, v5}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 653
    .end local v2    # "configInfoV16":Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    .end local v3    # "configInfoV15":Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;
    :goto_0
    return-void
.end method

.method public setMediaConfiguration(ILandroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0
    .param p1, "token"    # I
    .param p2, "screenSize"    # Landroid/graphics/Point;
    .param p3, "avcSize"    # Landroid/graphics/Point;
    .param p4, "hevcSize"    # Landroid/graphics/Point;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 839
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->fail()V

    .line 840
    return-void
.end method

.method public setServiceStatus(ILjava/util/List;I)V
    .locals 4
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

    .line 557
    .local p2, "capabilityStatusList":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/CapabilityStatus;>;"
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 558
    nop

    .line 559
    invoke-static {p2, p3}, Lorg/codeaurora/ims/ImsRadioUtils;->buildServiceStatusInfoList(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 561
    .local v0, "serviceStatusInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->setServiceStatus_1_6(ILjava/util/ArrayList;)V

    .line 562
    .end local v0    # "serviceStatusInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    goto :goto_0

    .line 563
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codeaurora/ims/CapabilityStatus;

    .line 564
    .local v0, "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    nop

    .line 566
    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityStatus;->getCapability()I

    move-result v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->mapCapabilityToSrvType(I)I

    move-result v1

    .line 567
    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityStatus;->getRadioTech()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtils;->mapRadioTechToHidlRadioTech(I)I

    move-result v2

    .line 568
    invoke-virtual {v0}, Lorg/codeaurora/ims/CapabilityStatus;->getStatus()I

    move-result v3

    invoke-static {v3}, Lorg/codeaurora/ims/ImsRadioUtils;->mapValueToServiceStatus(I)I

    move-result v3

    .line 565
    invoke-static {v1, v2, v3, p3}, Lorg/codeaurora/ims/ImsRadioUtils;->buildServiceStatusInfo(IIII)Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    move-result-object v1

    .line 570
    .local v1, "serviceStatusInfo":Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v2

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->migrateServiceStatusInfoFromV16(Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;)Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setServiceStatus(ILvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)V

    .line 573
    .end local v0    # "capabilityStatus":Lorg/codeaurora/ims/CapabilityStatus;
    .end local v1    # "serviceStatusInfo":Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;
    :goto_0
    return-void
.end method

.method public setSuppServiceNotification(IZ)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 693
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    .line 694
    nop

    .line 693
    invoke-interface {v0, p1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setSuppServiceNotification(II)V

    .line 695
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

    .line 756
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;-><init>()V

    .line 757
    .local v0, "info":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->ttyModeToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->mode:I

    .line 758
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V

    .line 759
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

    .line 681
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 682
    .local v0, "dtmfValue":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    invoke-static {p3}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->dtmf:Ljava/lang/String;

    .line 683
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->startDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    .line 684
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

    .line 688
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    invoke-interface {v0, p1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->stopDtmf(I)V

    .line 689
    return-void
.end method

.method public suppServiceStatus(III[Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 8
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

    .line 770
    invoke-static {p4, p6}, Lorg/codeaurora/ims/ImsRadioUtils;->buildCbNumListInfo([Ljava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    move-result-object v6

    .line 771
    .local v6, "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV16()Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;

    move-result-object v7

    .line 772
    .local v7, "imsRadio":Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;
    if-eqz v7, :cond_1

    .line 773
    nop

    .line 774
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->facilityTypeToHal(I)I

    move-result v3

    .line 775
    if-eqz p5, :cond_0

    move-object v5, p5

    goto :goto_0

    :cond_0
    const-string v0, ""

    move-object v5, v0

    .line 773
    :goto_0
    move-object v0, v7

    move v1, p1

    move v2, p2

    move-object v4, v6

    invoke-interface/range {v0 .. v5}, Lvendor/qti/hardware/radio/ims/V1_6/IImsRadio;->suppServiceStatus_1_6(IIILvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;Ljava/lang/String;)V

    goto :goto_1

    .line 777
    :cond_1
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsRadioHidl;->imsRadioV10()Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;

    move-result-object v0

    .line 778
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioUtils;->facilityTypeToHal(I)I

    move-result v1

    .line 777
    invoke-interface {v0, p1, p2, v1, v6}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadio;->suppServiceStatus(IIILvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;)V

    .line 780
    :goto_1
    return-void
.end method
