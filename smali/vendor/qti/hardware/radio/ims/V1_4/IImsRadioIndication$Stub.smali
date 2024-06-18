.class public abstract Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 962
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 965
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "fd"    # Landroid/os/NativeHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 982
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1023
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1024
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1025
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1026
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1027
    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 994
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_1

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_2

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_3

    const/4 v4, 0x3

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_4

    const/4 v4, 0x4

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        0x20t
        0x1et
        0x57t
        -0x52t
        0x68t
        0x16t
        -0x3dt
        -0x33t
        0x6dt
        -0x41t
        0x6et
        -0x23t
        0x79t
        0x7t
        0x44t
        0x65t
        -0x3ft
        0x71t
        -0x80t
        -0x4t
        -0xat
        -0x34t
        0x2t
        -0x37t
        -0x6at
        0x5bt
        0x23t
        0x26t
        -0x24t
        0x2t
        -0x4ft
        0x1dt
    .end array-data

    :array_1
    .array-data 1
        -0x6ct
        -0x1dt
        0x1et
        -0x60t
        -0x45t
        0xbt
        -0x1ct
        0x2bt
        0x12t
        0x1at
        -0x18t
        0x54t
        -0x6ct
        -0x5dt
        -0x40t
        -0x68t
        0x72t
        0x22t
        0x29t
        0x7dt
        -0x3ct
        0x5bt
        -0x5ft
        -0x43t
        0x27t
        -0xet
        0x38t
        0x7dt
        -0x37t
        -0x7ct
        0x20t
        -0x16t
    .end array-data

    :array_2
    .array-data 1
        0x50t
        -0xbt
        0x58t
        -0x3et
        0x73t
        -0x11t
        0x7ft
        0x78t
        -0x12t
        -0x15t
        -0x3bt
        -0x11t
        -0x61t
        -0x1ct
        -0x28t
        -0x5ft
        0x18t
        0x74t
        0x65t
        0x5t
        -0x4ft
        -0x1t
        0x5dt
        0x74t
        0x7ct
        -0x2ct
        -0x4bt
        -0x2et
        -0x1ct
        -0x7dt
        0x77t
        0x20t
    .end array-data

    :array_3
    .array-data 1
        -0x5t
        0x32t
        -0xbt
        0x0t
        0x37t
        -0x23t
        0xdt
        -0x54t
        0x15t
        -0x29t
        0x38t
        -0x43t
        0x5bt
        0x2et
        0x44t
        0x37t
        0x60t
        -0x38t
        -0x60t
        -0x20t
        0x41t
        -0x55t
        -0x52t
        -0x74t
        0x6at
        -0x7dt
        -0x1at
        -0x4t
        -0xbt
        0xat
        0x23t
        -0x7ct
    .end array-data

    :array_4
    .array-data 1
        0x2bt
        0x23t
        0x39t
        -0x14t
        -0x1ft
        -0xct
        -0x4et
        0x6bt
        -0x3t
        0x4bt
        -0x1dt
        0x45t
        -0x58t
        0x0t
        0x4et
        -0x1ft
        -0x1ft
        -0x56t
        -0x4ft
        -0x1t
        -0x74t
        -0x1bt
        0x1t
        -0x5ct
        -0x4ct
        0x1et
        0x7at
        -0x5at
        -0x6t
        -0x68t
        0x18t
        -0x53t
    .end array-data

    :array_5
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 970
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    const-string v2, "vendor.qti.hardware.radio.ims@1.3::IImsRadioIndication"

    const-string v3, "vendor.qti.hardware.radio.ims@1.2::IImsRadioIndication"

    const-string v4, "vendor.qti.hardware.radio.ims@1.1::IImsRadioIndication"

    const-string v5, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    const-string v6, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 988
    const-string v0, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1011
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1033
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1035
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 10
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1063
    const-string v0, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    const-string v1, "vendor.qti.hardware.radio.ims@1.3::IImsRadioIndication"

    const-string v2, "vendor.qti.hardware.radio.ims@1.2::IImsRadioIndication"

    const/4 v3, 0x0

    const-string v4, "android.hidl.base@1.0::IBase"

    const-string v5, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1481
    :sswitch_0
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1483
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->notifySyspropsChanged()V

    .line 1484
    goto/16 :goto_1

    .line 1470
    :sswitch_1
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1472
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1473
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1474
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1475
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1476
    goto/16 :goto_1

    .line 1460
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1462
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->ping()V

    .line 1463
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1464
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1465
    goto/16 :goto_1

    .line 1455
    :sswitch_3
    goto/16 :goto_1

    .line 1447
    :sswitch_4
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->setHALInstrumentation()V

    .line 1450
    goto/16 :goto_1

    .line 1413
    :sswitch_5
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1415
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1416
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1418
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1420
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1421
    .local v2, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1422
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1423
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1424
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1426
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1427
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1429
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1433
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1434
    nop

    .line 1424
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1430
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1437
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1439
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1441
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1442
    goto/16 :goto_1

    .line 1402
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1404
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1405
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1406
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1407
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1408
    goto/16 :goto_1

    .line 1390
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1393
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1394
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1395
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1396
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1397
    goto/16 :goto_1

    .line 1379
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1381
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1382
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1383
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1384
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1385
    goto/16 :goto_1

    .line 1370
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1372
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1373
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onCallStateChanged_1_4(Ljava/util/ArrayList;)V

    .line 1374
    goto/16 :goto_1

    .line 1362
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;>;"
    :sswitch_a
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onMultiIdentityInfoPending()V

    .line 1365
    goto/16 :goto_1

    .line 1353
    :sswitch_b
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1355
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1356
    .local v0, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onMultiIdentityRegistrationStatusChange(Ljava/util/ArrayList;)V

    .line 1357
    goto/16 :goto_1

    .line 1344
    .end local v0    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;>;"
    :sswitch_c
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1346
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1347
    .local v0, "voiceInfo":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onVoiceInfoChanged(I)V

    .line 1348
    goto/16 :goto_1

    .line 1334
    .end local v0    # "voiceInfo":I
    :sswitch_d
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1336
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;-><init>()V

    .line 1337
    .local v0, "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1338
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;)V

    .line 1339
    goto/16 :goto_1

    .line 1325
    .end local v0    # "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;
    :sswitch_e
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1327
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1328
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onCallStateChanged_1_3(Ljava/util/ArrayList;)V

    .line 1329
    goto/16 :goto_1

    .line 1316
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;>;"
    :sswitch_f
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1319
    .local v0, "isVopsEnabled":Z
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onVopsChanged(Z)V

    .line 1320
    goto/16 :goto_1

    .line 1306
    .end local v0    # "isVopsEnabled":Z
    :sswitch_10
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1308
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;-><init>()V

    .line 1309
    .local v0, "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1310
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onIncomingImsSms(Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;)V

    .line 1311
    goto/16 :goto_1

    .line 1296
    .end local v0    # "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;
    :sswitch_11
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1298
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;-><init>()V

    .line 1299
    .local v0, "smsStatusReport":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1300
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onImsSmsStatusReport(Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;)V

    .line 1301
    goto/16 :goto_1

    .line 1287
    .end local v0    # "smsStatusReport":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;
    :sswitch_12
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1289
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1290
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onCallStateChanged_1_2(Ljava/util/ArrayList;)V

    .line 1291
    goto/16 :goto_1

    .line 1278
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;>;"
    :sswitch_13
    const-string v0, "vendor.qti.hardware.radio.ims@1.1::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1280
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1281
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onCallStateChanged_1_1(Ljava/util/ArrayList;)V

    .line 1282
    goto/16 :goto_1

    .line 1268
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;>;"
    :sswitch_14
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1270
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 1271
    .local v0, "ss":Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1272
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;)V

    .line 1273
    goto/16 :goto_1

    .line 1259
    .end local v0    # "ss":Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;
    :sswitch_15
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1261
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1262
    .local v0, "voWiFiCallQualityInfo":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onVoWiFiCallQuality(I)V

    .line 1263
    goto/16 :goto_1

    .line 1250
    .end local v0    # "voWiFiCallQualityInfo":I
    :sswitch_16
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1253
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onRttMessageReceived(Ljava/lang/String;)V

    .line 1254
    goto/16 :goto_1

    .line 1236
    .end local v0    # "message":Ljava/lang/String;
    :sswitch_17
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1239
    .local v0, "hasBlockStatusOnWwan":Z
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;-><init>()V

    .line 1240
    .local v1, "blockStatusOnWwan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    invoke-virtual {v1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1241
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 1242
    .local v2, "hasBlockStatusOnWlan":Z
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;-><init>()V

    .line 1243
    .local v3, "blockStatusOnWlan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1244
    invoke-virtual {p0, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onRegistrationBlockStatus(ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)V

    .line 1245
    goto/16 :goto_1

    .line 1226
    .end local v0    # "hasBlockStatusOnWwan":Z
    .end local v1    # "blockStatusOnWwan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    .end local v2    # "hasBlockStatusOnWlan":Z
    .end local v3    # "blockStatusOnWlan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    :sswitch_18
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1228
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;-><init>()V

    .line 1229
    .local v0, "participantStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1230
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;)V

    .line 1231
    goto/16 :goto_1

    .line 1216
    .end local v0    # "participantStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;
    :sswitch_19
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1218
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;-><init>()V

    .line 1219
    .local v0, "config":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1220
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V

    .line 1221
    goto/16 :goto_1

    .line 1206
    .end local v0    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    :sswitch_1a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v0

    .line 1209
    .local v0, "lat":D
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v2

    .line 1210
    .local v2, "lon":D
    invoke-virtual {p0, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onGeolocationInfoRequested(DD)V

    .line 1211
    goto/16 :goto_1

    .line 1196
    .end local v0    # "lat":D
    .end local v2    # "lon":D
    :sswitch_1b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1198
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;-><init>()V

    .line 1199
    .local v0, "messageWaitingIndication":Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1200
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onMessageWaiting(Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;)V

    .line 1201
    goto/16 :goto_1

    .line 1186
    .end local v0    # "messageWaitingIndication":Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;
    :sswitch_1c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1188
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;-><init>()V

    .line 1189
    .local v0, "suppServiceNotification":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1190
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;)V

    .line 1191
    goto/16 :goto_1

    .line 1176
    .end local v0    # "suppServiceNotification":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;
    :sswitch_1d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1179
    .local v0, "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1180
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onModifyCall(Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 1181
    goto/16 :goto_1

    .line 1166
    .end local v0    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    :sswitch_1e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1168
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;-><init>()V

    .line 1169
    .local v0, "viceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1170
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;)V

    .line 1171
    goto/16 :goto_1

    .line 1156
    .end local v0    # "viceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;
    :sswitch_1f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1158
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;-><init>()V

    .line 1159
    .local v0, "conferenceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1160
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;)V

    .line 1161
    goto/16 :goto_1

    .line 1146
    .end local v0    # "conferenceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;
    :sswitch_20
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1148
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;-><init>()V

    .line 1149
    .local v0, "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1150
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onTtyNotification(Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V

    .line 1151
    goto :goto_1

    .line 1138
    .end local v0    # "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    :sswitch_21
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1140
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onExitEmergencyCallBackMode()V

    .line 1141
    goto :goto_1

    .line 1130
    :sswitch_22
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1132
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onEnterEmergencyCallBackMode()V

    .line 1133
    goto :goto_1

    .line 1121
    :sswitch_23
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1124
    .local v0, "radioState":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onRadioStateChanged(I)V

    .line 1125
    goto :goto_1

    .line 1112
    .end local v0    # "radioState":I
    :sswitch_24
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1114
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1115
    .local v0, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onServiceStatusChanged(Ljava/util/ArrayList;)V

    .line 1116
    goto :goto_1

    .line 1102
    .end local v0    # "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    :sswitch_25
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1104
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;-><init>()V

    .line 1105
    .local v0, "handover":Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1106
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onHandover(Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;)V

    .line 1107
    goto :goto_1

    .line 1092
    .end local v0    # "handover":Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;
    :sswitch_26
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1094
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;-><init>()V

    .line 1095
    .local v0, "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1096
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onRegistrationChanged(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V

    .line 1097
    goto :goto_1

    .line 1083
    .end local v0    # "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    :sswitch_27
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1086
    .local v0, "tone":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onRingbackTone(I)V

    .line 1087
    goto :goto_1

    .line 1075
    .end local v0    # "tone":I
    :sswitch_28
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1077
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onRing()V

    .line 1078
    goto :goto_1

    .line 1066
    :sswitch_29
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1068
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1069
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->onCallStateChanged(Ljava/util/ArrayList;)V

    .line 1070
    nop

    .line 1493
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;>;"
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_29
        0x2 -> :sswitch_28
        0x3 -> :sswitch_27
        0x4 -> :sswitch_26
        0x5 -> :sswitch_25
        0x6 -> :sswitch_24
        0x7 -> :sswitch_23
        0x8 -> :sswitch_22
        0x9 -> :sswitch_21
        0xa -> :sswitch_20
        0xb -> :sswitch_1f
        0xc -> :sswitch_1e
        0xd -> :sswitch_1d
        0xe -> :sswitch_1c
        0xf -> :sswitch_1b
        0x10 -> :sswitch_1a
        0x11 -> :sswitch_19
        0x12 -> :sswitch_18
        0x13 -> :sswitch_17
        0x14 -> :sswitch_16
        0x15 -> :sswitch_15
        0x16 -> :sswitch_14
        0x17 -> :sswitch_13
        0x18 -> :sswitch_12
        0x19 -> :sswitch_11
        0x1a -> :sswitch_10
        0x1b -> :sswitch_f
        0x1c -> :sswitch_e
        0x1d -> :sswitch_d
        0x1e -> :sswitch_c
        0x1f -> :sswitch_b
        0x20 -> :sswitch_a
        0x21 -> :sswitch_9
        0xf43484e -> :sswitch_8
        0xf444247 -> :sswitch_7
        0xf445343 -> :sswitch_6
        0xf485348 -> :sswitch_5
        0xf494e54 -> :sswitch_4
        0xf4c5444 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 1017
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1045
    const-string v0, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    return-object p0

    .line 1048
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .param p1, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1052
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1053
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1007
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_4/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;

    .line 1039
    const/4 v0, 0x1

    return v0
.end method
