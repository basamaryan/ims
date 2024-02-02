.class public final Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
.super Ljava/lang/Object;
.source "DialRequest.java"


# instance fields
.field public address:Ljava/lang/String;

.field public callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

.field public clirMode:I

.field public hasCallDetails:Z

.field public hasIsCallPull:Z

.field public hasIsConferenceUri:Z

.field public hasIsEncrypted:Z

.field public isCallPull:Z

.field public isConferenceUri:Z

.field public isEncrypted:Z

.field public multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

.field public presentation:I

.field public redialInfo:Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->address:Ljava/lang/String;

    .line 6
    const/4 v0, 0x0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->clirMode:I

    .line 7
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->presentation:I

    .line 8
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasCallDetails:Z

    .line 9
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;-><init>()V

    iput-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    .line 10
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsConferenceUri:Z

    .line 11
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isConferenceUri:Z

    .line 12
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsCallPull:Z

    .line 13
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isCallPull:Z

    .line 14
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsEncrypted:Z

    .line 15
    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isEncrypted:Z

    .line 16
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    .line 23
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;-><init>()V

    iput-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->redialInfo:Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;

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
            "Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 141
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 142
    .local v2, "_hidl_vec_size":I
    mul-int/lit16 v3, v2, 0xa8

    int-to-long v5, v3

    .line 143
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 142
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v3

    .line 146
    .local v3, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 147
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 148
    new-instance v5, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    invoke-direct {v5}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;-><init>()V

    .line 149
    .local v5, "_hidl_vec_element":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    mul-int/lit16 v6, v4, 0xa8

    int-to-long v6, v6

    invoke-virtual {v5, p0, v3, v6, v7}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 150
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v5    # "_hidl_vec_element":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 154
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
            "Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;",
            ">;)V"
        }
    .end annotation

    .line 188
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 190
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 191
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 192
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 193
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xa8

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 194
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 195
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    mul-int/lit16 v5, v3, 0xa8

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 194
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    .end local v3    # "_hidl_index_0":I
    :cond_0
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 200
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 201
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 27
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 28
    return v0

    .line 30
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 31
    return v1

    .line 33
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    if-eq v2, v3, :cond_2

    .line 34
    return v1

    .line 36
    :cond_2
    move-object v2, p1

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    .line 37
    .local v2, "other":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->address:Ljava/lang/String;

    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->address:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 38
    return v1

    .line 40
    :cond_3
    iget v3, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->clirMode:I

    iget v4, v2, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->clirMode:I

    if-eq v3, v4, :cond_4

    .line 41
    return v1

    .line 43
    :cond_4
    iget v3, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->presentation:I

    iget v4, v2, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->presentation:I

    if-eq v3, v4, :cond_5

    .line 44
    return v1

    .line 46
    :cond_5
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasCallDetails:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasCallDetails:Z

    if-eq v3, v4, :cond_6

    .line 47
    return v1

    .line 49
    :cond_6
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 50
    return v1

    .line 52
    :cond_7
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsConferenceUri:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsConferenceUri:Z

    if-eq v3, v4, :cond_8

    .line 53
    return v1

    .line 55
    :cond_8
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isConferenceUri:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isConferenceUri:Z

    if-eq v3, v4, :cond_9

    .line 56
    return v1

    .line 58
    :cond_9
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsCallPull:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsCallPull:Z

    if-eq v3, v4, :cond_a

    .line 59
    return v1

    .line 61
    :cond_a
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isCallPull:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isCallPull:Z

    if-eq v3, v4, :cond_b

    .line 62
    return v1

    .line 64
    :cond_b
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsEncrypted:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsEncrypted:Z

    if-eq v3, v4, :cond_c

    .line 65
    return v1

    .line 67
    :cond_c
    iget-boolean v3, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isEncrypted:Z

    iget-boolean v4, v2, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isEncrypted:Z

    if-eq v3, v4, :cond_d

    .line 68
    return v1

    .line 70
    :cond_d
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 71
    return v1

    .line 73
    :cond_e
    iget-object v3, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->redialInfo:Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;

    iget-object v4, v2, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->redialInfo:Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;

    invoke-static {v3, v4}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 74
    return v1

    .line 76
    :cond_f
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 81
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->address:Ljava/lang/String;

    .line 82
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->clirMode:I

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->presentation:I

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasCallDetails:Z

    .line 85
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    .line 86
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsConferenceUri:Z

    .line 87
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isConferenceUri:Z

    .line 88
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsCallPull:Z

    .line 89
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isCallPull:Z

    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsEncrypted:Z

    .line 91
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isEncrypted:Z

    .line 92
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    .line 93
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->redialInfo:Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;

    .line 94
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 81
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .locals 11
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 159
    const-wide/16 v0, 0x0

    add-long v2, p3, v0

    invoke-virtual {p2, v2, v3}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->address:Ljava/lang/String;

    .line 161
    nop

    .line 162
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v4, v2

    .line 163
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v6

    add-long v2, p3, v0

    add-long v8, v2, v0

    .line 161
    const/4 v10, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    .line 166
    const-wide/16 v0, 0x10

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->clirMode:I

    .line 167
    const-wide/16 v0, 0x14

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->presentation:I

    .line 168
    const-wide/16 v0, 0x18

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasCallDetails:Z

    .line 169
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    const-wide/16 v1, 0x20

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 170
    const-wide/16 v0, 0x80

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsConferenceUri:Z

    .line 171
    const-wide/16 v0, 0x81

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isConferenceUri:Z

    .line 172
    const-wide/16 v0, 0x82

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsCallPull:Z

    .line 173
    const-wide/16 v0, 0x83

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isCallPull:Z

    .line 174
    const-wide/16 v0, 0x84

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsEncrypted:Z

    .line 175
    const-wide/16 v0, 0x85

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isEncrypted:Z

    .line 176
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    const-wide/16 v1, 0x88

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 177
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->redialInfo:Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;

    const-wide/16 v1, 0xa0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 178
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 132
    const-wide/16 v0, 0xa8

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 133
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 134
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string v1, ".address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string v1, ", .clirMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->clirMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    const-string v1, ", .presentation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->presentation:I

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/IpPresentation;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ", .hasCallDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasCallDetails:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, ", .callDetails = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, ", .hasIsConferenceUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsConferenceUri:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    const-string v1, ", .isConferenceUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isConferenceUri:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    const-string v1, ", .hasIsCallPull = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsCallPull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    const-string v1, ", .isCallPull = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isCallPull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, ", .hasIsEncrypted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, ", .isEncrypted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 123
    const-string v1, ", .multiLineInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 125
    const-string v1, ", .redialInfo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->redialInfo:Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .locals 3
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 205
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->address:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    .line 206
    const-wide/16 v0, 0x10

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->clirMode:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 207
    const-wide/16 v0, 0x14

    add-long/2addr v0, p2

    iget v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->presentation:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 208
    const-wide/16 v0, 0x18

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasCallDetails:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 209
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    const-wide/16 v1, 0x20

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 210
    const-wide/16 v0, 0x80

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsConferenceUri:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 211
    const-wide/16 v0, 0x81

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isConferenceUri:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 212
    const-wide/16 v0, 0x82

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsCallPull:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 213
    const-wide/16 v0, 0x83

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isCallPull:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 214
    const-wide/16 v0, 0x84

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsEncrypted:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 215
    const-wide/16 v0, 0x85

    add-long/2addr v0, p2

    iget-boolean v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isEncrypted:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 216
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    const-wide/16 v1, 0x88

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 217
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->redialInfo:Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;

    const-wide/16 v1, 0xa0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 218
    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 181
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xa8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 182
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 183
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 184
    return-void
.end method
