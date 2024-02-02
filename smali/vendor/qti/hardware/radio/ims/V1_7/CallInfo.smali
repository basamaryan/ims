.class public final Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;
.super Ljava/lang/Object;
.source "CallInfo.java"


# instance fields
.field public als:I

.field public callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

.field public callProgInfo:Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;

.field public crsData:Lvendor/qti/hardware/radio/ims/V1_7/CrsData;

.field public failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

.field public hasCallDetails:Z

.field public hasFailCause:Z

.field public hasIsCalledPartyRinging:Z

.field public hasIsEncrypted:Z

.field public hasIsMT:Z

.field public hasIsMpty:Z

.field public hasIsVideoConfSupported:Z

.field public hasIsVoice:Z

.field public hasIsVoicePrivacy:Z

.field public historyInfo:Ljava/lang/String;

.field public index:I

.field public isCalledPartyRinging:Z

.field public isEncrypted:Z

.field public isMT:Z

.field public isMpty:Z

.field public isPreparatory:Z

.field public isVideoConfSupported:Z

.field public isVoice:Z

.field public isVoicePrivacy:Z

.field public mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public state:I

.field public tirMode:I

.field public toa:I

.field public verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->state:I

    .line 6
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->index:I

    .line 7
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->toa:I

    .line 8
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsMpty:Z

    .line 9
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isMpty:Z

    .line 10
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsMT:Z

    .line 11
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isMT:Z

    .line 12
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    .line 13
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->als:I

    .line 14
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVoice:Z

    .line 15
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVoice:Z

    .line 16
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVoicePrivacy:Z

    .line 17
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVoicePrivacy:Z

    .line 18
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->number:Ljava/lang/String;

    .line 19
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->numberPresentation:I

    .line 20
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->name:Ljava/lang/String;

    .line 21
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->namePresentation:I

    .line 22
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasCallDetails:Z

    .line 23
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    .line 24
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasFailCause:Z

    .line 25
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    .line 26
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsEncrypted:Z

    .line 27
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isEncrypted:Z

    .line 28
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsCalledPartyRinging:Z

    .line 29
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isCalledPartyRinging:Z

    .line 30
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->historyInfo:Ljava/lang/String;

    .line 31
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVideoConfSupported:Z

    .line 32
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVideoConfSupported:Z

    .line 33
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    .line 34
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->tirMode:I

    .line 40
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isPreparatory:Z

    .line 41
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_7/CrsData;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_7/CrsData;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/V1_7/CrsData;

    .line 42
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;",
            ">;"
        }
    .end annotation

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 277
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 280
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 281
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0x160

    int-to-long v5, v3

    .line 282
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 281
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 285
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 286
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 287
    new-instance v5, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;

    invoke-direct {v5}, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;-><init>()V

    .line 288
    .local v5, "_hidl_vec_element":Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;
    mul-int/lit16 v6, v4, 0x160

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 289
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    .end local v5    # "_hidl_vec_element":Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 293
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    .end local v4    # "_hidl_index_0":I
    :cond_0
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .locals 7
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;",
            ">;)V"
        }
    .end annotation

    .line 359
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 361
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 362
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 363
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 364
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0x160

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 365
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 366
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;

    mul-int/lit16 v5, v3, 0x160

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 365
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 368
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 371
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 372
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 46
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 47
    return v0

    .line 49
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 50
    return v1

    .line 52
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;

    if-eq v2, v3, :cond_2

    .line 53
    return v1

    .line 55
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;

    .line 56
    .local v2, "other":Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;
    iget v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->state:I

    iget v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->state:I

    if-eq v3, v4, :cond_3

    .line 57
    return v1

    .line 59
    :cond_3
    iget v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->index:I

    iget v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->index:I

    if-eq v3, v4, :cond_4

    .line 60
    return v1

    .line 62
    :cond_4
    iget v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->toa:I

    iget v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->toa:I

    if-eq v3, v4, :cond_5

    .line 63
    return v1

    .line 65
    :cond_5
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsMpty:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsMpty:Z

    if-eq v3, v4, :cond_6

    .line 66
    return v1

    .line 68
    :cond_6
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isMpty:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isMpty:Z

    if-eq v3, v4, :cond_7

    .line 69
    return v1

    .line 71
    :cond_7
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsMT:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsMT:Z

    if-eq v3, v4, :cond_8

    .line 72
    return v1

    .line 74
    :cond_8
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isMT:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isMT:Z

    if-eq v3, v4, :cond_9

    .line 75
    return v1

    .line 77
    :cond_9
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 78
    return v1

    .line 80
    :cond_a
    iget v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->als:I

    iget v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->als:I

    if-eq v3, v4, :cond_b

    .line 81
    return v1

    .line 83
    :cond_b
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVoice:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVoice:Z

    if-eq v3, v4, :cond_c

    .line 84
    return v1

    .line 86
    :cond_c
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVoice:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVoice:Z

    if-eq v3, v4, :cond_d

    .line 87
    return v1

    .line 89
    :cond_d
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVoicePrivacy:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVoicePrivacy:Z

    if-eq v3, v4, :cond_e

    .line 90
    return v1

    .line 92
    :cond_e
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVoicePrivacy:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVoicePrivacy:Z

    if-eq v3, v4, :cond_f

    .line 93
    return v1

    .line 95
    :cond_f
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->number:Ljava/lang/String;

    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->number:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 96
    return v1

    .line 98
    :cond_10
    iget v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->numberPresentation:I

    iget v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->numberPresentation:I

    if-eq v3, v4, :cond_11

    .line 99
    return v1

    .line 101
    :cond_11
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->name:Ljava/lang/String;

    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 102
    return v1

    .line 104
    :cond_12
    iget v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->namePresentation:I

    iget v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->namePresentation:I

    if-eq v3, v4, :cond_13

    .line 105
    return v1

    .line 107
    :cond_13
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasCallDetails:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasCallDetails:Z

    if-eq v3, v4, :cond_14

    .line 108
    return v1

    .line 110
    :cond_14
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 111
    return v1

    .line 113
    :cond_15
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasFailCause:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasFailCause:Z

    if-eq v3, v4, :cond_16

    .line 114
    return v1

    .line 116
    :cond_16
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 117
    return v1

    .line 119
    :cond_17
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsEncrypted:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsEncrypted:Z

    if-eq v3, v4, :cond_18

    .line 120
    return v1

    .line 122
    :cond_18
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isEncrypted:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isEncrypted:Z

    if-eq v3, v4, :cond_19

    .line 123
    return v1

    .line 125
    :cond_19
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsCalledPartyRinging:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsCalledPartyRinging:Z

    if-eq v3, v4, :cond_1a

    .line 126
    return v1

    .line 128
    :cond_1a
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isCalledPartyRinging:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isCalledPartyRinging:Z

    if-eq v3, v4, :cond_1b

    .line 129
    return v1

    .line 131
    :cond_1b
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->historyInfo:Ljava/lang/String;

    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->historyInfo:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 132
    return v1

    .line 134
    :cond_1c
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVideoConfSupported:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVideoConfSupported:Z

    if-eq v3, v4, :cond_1d

    .line 135
    return v1

    .line 137
    :cond_1d
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVideoConfSupported:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVideoConfSupported:Z

    if-eq v3, v4, :cond_1e

    .line 138
    return v1

    .line 140
    :cond_1e
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 141
    return v1

    .line 143
    :cond_1f
    iget v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->tirMode:I

    iget v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->tirMode:I

    if-eq v3, v4, :cond_20

    .line 144
    return v1

    .line 146
    :cond_20
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isPreparatory:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isPreparatory:Z

    if-eq v3, v4, :cond_21

    .line 147
    return v1

    .line 149
    :cond_21
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/V1_7/CrsData;

    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/V1_7/CrsData;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 150
    return v1

    .line 152
    :cond_22
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;

    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 153
    return v1

    .line 155
    :cond_23
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 160
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->state:I

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->index:I

    .line 162
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->toa:I

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsMpty:Z

    .line 164
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isMpty:Z

    .line 165
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsMT:Z

    .line 166
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isMT:Z

    .line 167
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    .line 168
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->als:I

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVoice:Z

    .line 170
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVoice:Z

    .line 171
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVoicePrivacy:Z

    .line 172
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVoicePrivacy:Z

    .line 173
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->number:Ljava/lang/String;

    .line 174
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->numberPresentation:I

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->name:Ljava/lang/String;

    .line 176
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->namePresentation:I

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasCallDetails:Z

    .line 178
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    .line 179
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasFailCause:Z

    .line 180
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    .line 181
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsEncrypted:Z

    .line 182
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isEncrypted:Z

    .line 183
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsCalledPartyRinging:Z

    .line 184
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isCalledPartyRinging:Z

    .line 185
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->historyInfo:Ljava/lang/String;

    .line 186
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVideoConfSupported:Z

    .line 187
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVideoConfSupported:Z

    .line 188
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    .line 189
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->tirMode:I

    .line 190
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isPreparatory:Z

    .line 191
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/V1_7/CrsData;

    .line 192
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;

    .line 193
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x20

    aput-object v1, v0, v2

    .line 160
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 14
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 298
    move-object v0, p0

    move-object v9, p1

    move-object/from16 v10, p2

    const-wide/16 v11, 0x0

    add-long v1, p3, v11

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->state:I

    .line 299
    const-wide/16 v1, 0x4

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->index:I

    .line 300
    const-wide/16 v1, 0x8

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->toa:I

    .line 301
    const-wide/16 v1, 0xc

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsMpty:Z

    .line 302
    const-wide/16 v1, 0xd

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isMpty:Z

    .line 303
    const-wide/16 v1, 0xe

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsMT:Z

    .line 304
    const-wide/16 v1, 0xf

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isMT:Z

    .line 305
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    const-wide/16 v2, 0x10

    add-long v2, p3, v2

    invoke-virtual {v1, p1, v10, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 306
    const-wide/16 v1, 0x28

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->als:I

    .line 307
    const-wide/16 v1, 0x2c

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVoice:Z

    .line 308
    const-wide/16 v1, 0x2d

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVoice:Z

    .line 309
    const-wide/16 v1, 0x2e

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVoicePrivacy:Z

    .line 310
    const-wide/16 v1, 0x2f

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVoicePrivacy:Z

    .line 311
    const-wide/16 v1, 0x30

    add-long v3, p3, v1

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->number:Ljava/lang/String;

    .line 313
    nop

    .line 314
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    .line 315
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    add-long v7, v1, v11

    .line 313
    const/4 v13, 0x0

    move-object v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v13

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 318
    const-wide/16 v1, 0x40

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->numberPresentation:I

    .line 319
    const-wide/16 v1, 0x48

    add-long v3, p3, v1

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->name:Ljava/lang/String;

    .line 321
    nop

    .line 322
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    .line 323
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    add-long v7, v1, v11

    .line 321
    move-object v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v13

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 326
    const-wide/16 v1, 0x58

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->namePresentation:I

    .line 327
    const-wide/16 v1, 0x5c

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasCallDetails:Z

    .line 328
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    const-wide/16 v2, 0x60

    add-long v2, p3, v2

    invoke-virtual {v1, p1, v10, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 329
    const-wide/16 v1, 0xc0

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasFailCause:Z

    .line 330
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    const-wide/16 v2, 0xc8

    add-long v2, p3, v2

    invoke-virtual {v1, p1, v10, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 331
    const-wide/16 v1, 0x110

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsEncrypted:Z

    .line 332
    const-wide/16 v1, 0x111

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isEncrypted:Z

    .line 333
    const-wide/16 v1, 0x112

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsCalledPartyRinging:Z

    .line 334
    const-wide/16 v1, 0x113

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isCalledPartyRinging:Z

    .line 335
    const-wide/16 v1, 0x118

    add-long v3, p3, v1

    invoke-virtual {v10, v3, v4}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->historyInfo:Ljava/lang/String;

    .line 337
    nop

    .line 338
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    .line 339
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    add-long v1, p3, v1

    add-long v7, v1, v11

    .line 337
    const/4 v11, 0x0

    move-object v1, p1

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v7

    move v8, v11

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 342
    const-wide/16 v1, 0x128

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVideoConfSupported:Z

    .line 343
    const-wide/16 v1, 0x129

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVideoConfSupported:Z

    .line 344
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    const-wide/16 v2, 0x12c

    add-long v2, p3, v2

    invoke-virtual {v1, p1, v10, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 345
    const-wide/16 v1, 0x134

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->tirMode:I

    .line 346
    const-wide/16 v1, 0x138

    add-long v1, p3, v1

    invoke-virtual {v10, v1, v2}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isPreparatory:Z

    .line 347
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/V1_7/CrsData;

    const-wide/16 v2, 0x13c

    add-long v2, p3, v2

    invoke-virtual {v1, p1, v10, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_7/CrsData;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 348
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;

    const-wide/16 v2, 0x148

    add-long v2, p3, v2

    invoke-virtual {v1, p1, v10, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 349
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 271
    const-wide/16 v0, 0x160

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 272
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 273
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v1, ".state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->state:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallState;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, ", .index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, ", .toa = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->toa:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, ", .hasIsMpty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsMpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 208
    const-string v1, ", .isMpty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isMpty:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 210
    const-string v1, ", .hasIsMT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsMT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 212
    const-string v1, ", .isMT = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isMT:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 214
    const-string v1, ", .mtMultiLineInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, ", .als = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->als:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 218
    const-string v1, ", .hasIsVoice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 220
    const-string v1, ", .isVoice = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVoice:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 222
    const-string v1, ", .hasIsVoicePrivacy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVoicePrivacy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 224
    const-string v1, ", .isVoicePrivacy = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVoicePrivacy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 226
    const-string v1, ", .number = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v1, ", .numberPresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    const-string v1, ", .name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const-string v1, ", .namePresentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    const-string v1, ", .hasCallDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasCallDetails:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, ", .callDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    const-string v1, ", .hasFailCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasFailCause:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 240
    const-string v1, ", .failCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    const-string v1, ", .hasIsEncrypted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 244
    const-string v1, ", .isEncrypted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, ", .hasIsCalledPartyRinging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsCalledPartyRinging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 248
    const-string v1, ", .isCalledPartyRinging = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isCalledPartyRinging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 250
    const-string v1, ", .historyInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->historyInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    const-string v1, ", .hasIsVideoConfSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVideoConfSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 254
    const-string v1, ", .isVideoConfSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVideoConfSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, ", .verstatInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 258
    const-string v1, ", .tirMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->tirMode:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_5/TirMode;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, ", .isPreparatory = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isPreparatory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, ", .crsData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/V1_7/CrsData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, ", .callProgInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 376
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->state:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 377
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->index:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 378
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->toa:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 379
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsMpty:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 380
    const-wide/16 v0, 0xd

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isMpty:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 381
    const-wide/16 v0, 0xe

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsMT:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 382
    const-wide/16 v0, 0xf

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isMT:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 383
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    const-wide/16 v1, 0x10

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 384
    const-wide/16 v0, 0x28

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->als:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 385
    const-wide/16 v0, 0x2c

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVoice:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 386
    const-wide/16 v0, 0x2d

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVoice:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 387
    const-wide/16 v0, 0x2e

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVoicePrivacy:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 388
    const-wide/16 v0, 0x2f

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVoicePrivacy:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 389
    const-wide/16 v0, 0x30

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->number:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 390
    const-wide/16 v0, 0x40

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->numberPresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 391
    const-wide/16 v0, 0x48

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 392
    const-wide/16 v0, 0x58

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->namePresentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 393
    const-wide/16 v0, 0x5c

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasCallDetails:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 394
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    const-wide/16 v1, 0x60

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 395
    const-wide/16 v0, 0xc0

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasFailCause:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 396
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    const-wide/16 v1, 0xc8

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 397
    const-wide/16 v0, 0x110

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsEncrypted:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 398
    const-wide/16 v0, 0x111

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isEncrypted:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 399
    const-wide/16 v0, 0x112

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsCalledPartyRinging:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 400
    const-wide/16 v0, 0x113

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isCalledPartyRinging:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 401
    const-wide/16 v0, 0x118

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->historyInfo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 402
    const-wide/16 v0, 0x128

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVideoConfSupported:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 403
    const-wide/16 v0, 0x129

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVideoConfSupported:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 404
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    const-wide/16 v1, 0x12c

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 405
    const-wide/16 v0, 0x134

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->tirMode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 406
    const-wide/16 v0, 0x138

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isPreparatory:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 407
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/V1_7/CrsData;

    const-wide/16 v1, 0x13c

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_7/CrsData;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 408
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;

    const-wide/16 v1, 0x148

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 409
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 352
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x160

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 353
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 354
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 355
    return-void
.end method
