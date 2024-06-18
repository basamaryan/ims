.class public Lvendor/qti/hardware/radio/ims/CallDetails;
.super Ljava/lang/Object;
.source "CallDetails.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lvendor/qti/hardware/radio/ims/CallDetails;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public callDomain:I

.field public callSubstate:I

.field public callType:I

.field public causeCode:I

.field public extras:[Ljava/lang/String;

.field public localAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

.field public mediaId:I

.field public peerAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

.field public rttMode:I

.field public sipAlternateUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lvendor/qti/hardware/radio/ims/CallDetails$1;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/CallDetails$1;-><init>()V

    sput-object v0, Lvendor/qti/hardware/radio/ims/CallDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callType:I

    .line 8
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    .line 12
    const/4 v1, -0x1

    iput v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callSubstate:I

    .line 13
    iput v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->mediaId:I

    .line 14
    iput v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->causeCode:I

    .line 15
    iput v0, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->rttMode:I

    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 6
    .param p1, "_v"    # Ljava/lang/Object;

    .line 91
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 92
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 93
    const/4 v1, 0x0

    .line 94
    .local v1, "_mask":I
    move-object v2, p1

    check-cast v2, [Ljava/lang/Object;

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 95
    .local v4, "o":Ljava/lang/Object;
    invoke-direct {p0, v4}, Lvendor/qti/hardware/radio/ims/CallDetails;->describeContents(Ljava/lang/Object;)I

    move-result v5

    or-int/2addr v1, v5

    .line 94
    .end local v4    # "o":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_1
    return v1

    .line 99
    .end local v1    # "_mask":I
    :cond_2
    instance-of v1, p1, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    .line 100
    move-object v0, p1

    check-cast v0, Landroid/os/Parcelable;

    invoke-interface {v0}, Landroid/os/Parcelable;->describeContents()I

    move-result v0

    return v0

    .line 102
    :cond_3
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "_mask":I
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->localAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallDetails;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 87
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->peerAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    invoke-direct {p0, v1}, Lvendor/qti/hardware/radio/ims/CallDetails;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 88
    return v0
.end method

.method public final getStability()I
    .locals 1

    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 53
    .local v0, "_aidl_start_pos":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 55
    .local v1, "_aidl_parcelable_size":I
    const/4 v2, 0x4

    const-string v3, "Overflow in the size of parcelable"

    const v4, 0x7fffffff

    if-lt v1, v2, :cond_15

    .line 56
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_1

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_0

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 56
    return-void

    .line 78
    :cond_0
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callType:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_3

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_2

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 58
    return-void

    .line 78
    :cond_2
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 59
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_5

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_4

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 60
    return-void

    .line 78
    :cond_4
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_7

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_6

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 62
    return-void

    .line 78
    :cond_6
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_7
    :try_start_4
    sget-object v2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->localAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_9

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_8

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    return-void

    .line 78
    :cond_8
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_9
    :try_start_5
    sget-object v2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->peerAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_b

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_a

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    return-void

    .line 78
    :cond_a
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callSubstate:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_d

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_c

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 68
    return-void

    .line 78
    :cond_c
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->mediaId:I

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_f

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_e

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 70
    return-void

    .line 78
    :cond_e
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->causeCode:I

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_11

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_10

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 72
    return-void

    .line 78
    :cond_10
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 73
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->rttMode:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    sub-int/2addr v2, v0

    if-lt v2, v1, :cond_13

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_12

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 74
    return-void

    .line 78
    :cond_12
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 77
    sub-int/2addr v4, v1

    if-gt v0, v4, :cond_14

    .line 80
    add-int v2, v0, v1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    nop

    .line 82
    return-void

    .line 78
    :cond_14
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 55
    :cond_15
    :try_start_b
    new-instance v2, Landroid/os/BadParcelableException;

    const-string v5, "Parcelable too small"

    invoke-direct {v2, v5}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .end local v0    # "_aidl_start_pos":I
    .end local v1    # "_aidl_parcelable_size":I
    .end local p0    # "this":Lvendor/qti/hardware/radio/ims/CallDetails;
    .end local p1    # "_aidl_parcel":Landroid/os/Parcel;
    throw v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 77
    .restart local v0    # "_aidl_start_pos":I
    .restart local v1    # "_aidl_parcelable_size":I
    .restart local p0    # "this":Lvendor/qti/hardware/radio/ims/CallDetails;
    .restart local p1    # "_aidl_parcel":Landroid/os/Parcel;
    :goto_0
    sub-int/2addr v4, v1

    if-le v0, v4, :cond_16

    .line 78
    new-instance v2, Landroid/os/BadParcelableException;

    invoke-direct {v2, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_16
    add-int v3, v0, v1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 81
    throw v2
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "_aidl_parcel"    # Landroid/os/Parcel;
    .param p2, "_aidl_flag"    # I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 34
    .local v0, "_aidl_start_pos":I
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 35
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callType:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callDomain:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->extras:[Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->localAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 39
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->peerAbility:[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 40
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->callSubstate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->mediaId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->causeCode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->rttMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/CallDetails;->sipAlternateUri:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 46
    .local v1, "_aidl_end_pos":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 47
    sub-int v2, v1, v0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    return-void
.end method
