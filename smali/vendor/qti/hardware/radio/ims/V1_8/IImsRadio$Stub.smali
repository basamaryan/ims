.class public abstract Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadio.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1587
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1590
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

    .line 1611
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1656
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1657
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1658
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1659
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1660
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

    .line 1623
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

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

    new-array v3, v2, [B

    fill-array-data v3, :array_5

    const/4 v4, 0x5

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_6

    const/4 v4, 0x6

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_7

    const/4 v4, 0x7

    aput-object v3, v1, v4

    new-array v3, v2, [B

    fill-array-data v3, :array_8

    const/16 v4, 0x8

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_9

    const/16 v3, 0x9

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :array_0
    .array-data 1
        -0x3ct
        0x57t
        -0x14t
        -0x4at
        -0x3t
        0x27t
        -0x31t
        0x48t
        0x77t
        -0x59t
        -0x5t
        -0xct
        -0x16t
        -0x1t
        0x2bt
        0x71t
        0x28t
        -0x14t
        -0x27t
        -0x42t
        0x7et
        0x6dt
        0x49t
        0x2bt
        0x5ft
        -0xft
        0x37t
        -0x40t
        -0x73t
        0x7dt
        -0x6at
        -0x46t
    .end array-data

    :array_1
    .array-data 1
        0x43t
        0x29t
        -0x49t
        -0x30t
        -0x7ct
        0x56t
        0x45t
        -0x7et
        -0x29t
        0x11t
        0x39t
        0x24t
        -0x35t
        0x78t
        -0x69t
        -0x65t
        0x3et
        0x7t
        0x62t
        0x1t
        -0x22t
        -0x80t
        -0x26t
        0x45t
        0x77t
        -0x8t
        0xct
        0x1bt
        0x2t
        -0xft
        0x2bt
        0x6t
    .end array-data

    :array_2
    .array-data 1
        0xct
        0x52t
        -0xct
        0x2et
        -0x62t
        -0x43t
        -0x76t
        0x2ft
        0x1et
        0x4ct
        -0x3at
        -0x7et
        -0x68t
        0x7dt
        0x13t
        -0x38t
        0x2at
        -0x7ct
        0x59t
        -0xct
        -0x1t
        0x4ft
        -0x3ft
        0x7t
        0x6ft
        0x19t
        -0x47t
        -0x2t
        -0x14t
        0x79t
        0x7ft
        -0x2t
    .end array-data

    :array_3
    .array-data 1
        -0x79t
        -0x25t
        0x1bt
        0x3bt
        -0x22t
        0x57t
        -0x79t
        -0x6ft
        -0x22t
        0x61t
        0x3at
        0x35t
        -0x7ft
        -0x60t
        0x1ft
        0x5dt
        -0x68t
        -0x5ct
        0x45t
        0x3ct
        -0x6t
        -0x2dt
        0x74t
        0x54t
        0x16t
        0x76t
        -0x3at
        0x53t
        0x11t
        0x26t
        -0x7t
        -0x16t
    .end array-data

    :array_4
    .array-data 1
        -0x47t
        -0x50t
        0x2et
        -0x22t
        0x9t
        -0x54t
        0x3ct
        -0x67t
        -0x6ft
        -0x7t
        0x42t
        0x22t
        -0x49t
        -0x61t
        -0xbt
        -0x3t
        -0x74t
        -0x4ft
        -0x56t
        -0x7ct
        0x62t
        0x4dt
        -0x8t
        -0x5t
        -0x57t
        0x61t
        0x33t
        -0x5at
        0x3bt
        -0x1at
        -0x60t
        0xet
    .end array-data

    :array_5
    .array-data 1
        0x4t
        -0xft
        -0x3t
        -0x25t
        -0x58t
        -0x36t
        -0x17t
        -0x5et
        0x5ct
        -0x67t
        0x4ft
        -0x6t
        -0x25t
        -0x6ft
        -0x22t
        -0x20t
        -0x58t
        0x1dt
        0x3bt
        0x25t
        0x49t
        0x17t
        0x75t
        0x4et
        0x3ct
        0x14t
        0x5t
        -0x2at
        0x6ft
        -0x3ct
        -0xdt
        0x4ct
    .end array-data

    :array_6
    .array-data 1
        -0x6ct
        0x44t
        -0x35t
        0x5at
        -0x25t
        -0x5et
        0x1ft
        -0x20t
        -0x38t
        -0x53t
        -0x14t
        0x26t
        -0x73t
        -0x69t
        -0x5dt
        0x4et
        -0x21t
        -0x1et
        -0x2t
        -0x62t
        0x1t
        -0x77t
        -0x43t
        0x3ft
        0x5bt
        0x5ft
        -0x70t
        0x40t
        -0x7dt
        0xat
        -0x21t
        -0x45t
    .end array-data

    :array_7
    .array-data 1
        0x2ft
        0x49t
        -0x57t
        0x31t
        0x13t
        0x1et
        -0x13t
        0x53t
        0x26t
        0x5ft
        -0x1bt
        -0x66t
        0x68t
        0x61t
        -0x3et
        -0x43t
        0x47t
        0x6bt
        -0x11t
        0x50t
        0x40t
        0x34t
        0x49t
        -0xbt
        0x56t
        -0x51t
        0x8t
        -0x7dt
        0x57t
        0x3dt
        0x7ft
        -0xft
    .end array-data

    :array_8
    .array-data 1
        0x4et
        0x41t
        -0xat
        0x5et
        -0x3dt
        -0x1et
        0x5et
        0x25t
        0x5bt
        0x25t
        -0x26t
        0x5dt
        0x7bt
        0x3ct
        -0x4ft
        0x17t
        -0x16t
        0x4bt
        -0x19t
        -0x23t
        0x60t
        0x74t
        0x5ft
        0x6dt
        -0x25t
        -0x69t
        -0x59t
        0x47t
        0x5at
        0x56t
        0x7et
        0x70t
    .end array-data

    :array_9
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
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1595
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.ims@1.8::IImsRadio"

    const-string v2, "vendor.qti.hardware.radio.ims@1.7::IImsRadio"

    const-string v3, "vendor.qti.hardware.radio.ims@1.6::IImsRadio"

    const-string v4, "vendor.qti.hardware.radio.ims@1.5::IImsRadio"

    const-string v5, "vendor.qti.hardware.radio.ims@1.4::IImsRadio"

    const-string v6, "vendor.qti.hardware.radio.ims@1.3::IImsRadio"

    const-string v7, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    const-string v8, "vendor.qti.hardware.radio.ims@1.1::IImsRadio"

    const-string v9, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    const-string v10, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1617
    const-string v0, "vendor.qti.hardware.radio.ims@1.8::IImsRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1644
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1666
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1668
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 18
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1696
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v0, "vendor.qti.hardware.radio.ims@1.8::IImsRadio"

    const-string v1, "vendor.qti.hardware.radio.ims@1.3::IImsRadio"

    const-string v2, "vendor.qti.hardware.radio.ims@1.5::IImsRadio"

    const-string v3, "vendor.qti.hardware.radio.ims@1.4::IImsRadio"

    const-string v4, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    const-string v5, "android.hidl.base@1.0::IBase"

    const-string v6, "vendor.qti.hardware.radio.ims@1.6::IImsRadio"

    const/4 v7, 0x0

    const-string v11, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 2525
    :sswitch_0
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2527
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->notifySyspropsChanged()V

    .line 2528
    goto/16 :goto_1

    .line 2514
    :sswitch_1
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2516
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 2517
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v10, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2518
    invoke-virtual {v0, v10}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 2519
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2520
    goto/16 :goto_1

    .line 2504
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2506
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->ping()V

    .line 2507
    invoke-virtual {v10, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2508
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2509
    goto/16 :goto_1

    .line 2499
    :sswitch_3
    goto/16 :goto_1

    .line 2491
    :sswitch_4
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2493
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setHALInstrumentation()V

    .line 2494
    goto/16 :goto_1

    .line 2457
    :sswitch_5
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2459
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2460
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v10, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2462
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 2464
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2465
    .local v2, "_hidl_vec_size":I
    const-wide/16 v3, 0x8

    invoke-virtual {v1, v3, v4, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 2466
    const-wide/16 v3, 0xc

    invoke-virtual {v1, v3, v4, v7}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 2467
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 2468
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 2470
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 2471
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 2473
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v11, v7

    const/16 v12, 0x20

    if-ne v11, v12, :cond_0

    .line 2477
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 2478
    nop

    .line 2468
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2474
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2481
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 2483
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v10, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 2485
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2486
    goto/16 :goto_1

    .line 2446
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2448
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 2449
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v10, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2450
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2451
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2452
    goto/16 :goto_1

    .line 2434
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2436
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 2437
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 2438
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 2439
    invoke-virtual {v10, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2440
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2441
    goto/16 :goto_1

    .line 2423
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v9, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2425
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 2426
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2427
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 2428
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2429
    goto/16 :goto_1

    .line 2412
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2414
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2415
    .local v0, "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;-><init>()V

    .line 2416
    .local v1, "config":Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2417
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getConfig_1_8(ILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    .line 2418
    goto/16 :goto_1

    .line 2401
    .end local v0    # "token":I
    .end local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;
    :sswitch_a
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2403
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2404
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;-><init>()V

    .line 2405
    .restart local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2406
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setConfig_1_8(ILvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)V

    .line 2407
    goto/16 :goto_1

    .line 2391
    .end local v0    # "token":I
    .end local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;
    :sswitch_b
    const-string v0, "vendor.qti.hardware.radio.ims@1.7::IImsRadio"

    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2393
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2394
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2395
    .local v1, "requestCode":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->sendSipDtmf(ILjava/lang/String;)V

    .line 2396
    goto/16 :goto_1

    .line 2378
    .end local v0    # "token":I
    .end local v1    # "requestCode":Ljava/lang/String;
    :sswitch_c
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2380
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2381
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;-><init>()V

    .line 2382
    .local v1, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2383
    new-instance v2, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    invoke-direct {v2}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;-><init>()V

    .line 2384
    .local v2, "callComposerInfo":Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;
    invoke-virtual {v2, v9}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2385
    invoke-virtual {v8, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->callComposerDial(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)V

    .line 2386
    goto/16 :goto_1

    .line 2369
    .end local v0    # "token":I
    .end local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    .end local v2    # "callComposerInfo":Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;
    :sswitch_d
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2371
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2372
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->cancelPendingUssd(I)V

    .line 2373
    goto/16 :goto_1

    .line 2359
    .end local v0    # "token":I
    :sswitch_e
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2361
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2362
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2363
    .local v1, "ussd":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 2364
    goto/16 :goto_1

    .line 2345
    .end local v0    # "token":I
    .end local v1    # "ussd":Ljava/lang/String;
    :sswitch_f
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2347
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v6

    .line 2348
    .local v6, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 2349
    .local v7, "operationType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 2350
    .local v11, "facilityType":I
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;-><init>()V

    move-object v12, v0

    .line 2351
    .local v12, "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    invoke-virtual {v12, v9}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2352
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v13

    .line 2353
    .local v13, "password":Ljava/lang/String;
    move-object/from16 v0, p0

    move v1, v6

    move v2, v7

    move v3, v11

    move-object v4, v12

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->suppServiceStatus_1_6(IIILvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;Ljava/lang/String;)V

    .line 2354
    goto/16 :goto_1

    .line 2335
    .end local v6    # "token":I
    .end local v7    # "operationType":I
    .end local v11    # "facilityType":I
    .end local v12    # "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    .end local v13    # "password":Ljava/lang/String;
    :sswitch_10
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2337
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2338
    .restart local v0    # "token":I
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2339
    .local v1, "srvStatusInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setServiceStatus_1_6(ILjava/util/ArrayList;)V

    .line 2340
    goto/16 :goto_1

    .line 2319
    .end local v0    # "token":I
    .end local v1    # "srvStatusInfoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    :sswitch_11
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2321
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 2322
    .local v11, "token":I
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;-><init>()V

    move-object v12, v0

    .line 2323
    .local v12, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    invoke-virtual {v12, v9}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2324
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 2325
    .local v13, "categories":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v14

    .line 2326
    .local v14, "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 2327
    .local v15, "route":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 2328
    .local v16, "hasKnownUserIntentEmergency":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 2329
    .local v17, "isTesting":Z
    move-object/from16 v0, p0

    move v1, v11

    move-object v2, v12

    move v3, v13

    move-object v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->emergencyDial_1_6(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;ILjava/util/ArrayList;IZZ)V

    .line 2330
    goto/16 :goto_1

    .line 2308
    .end local v11    # "token":I
    .end local v12    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    .end local v13    # "categories":I
    .end local v14    # "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "route":I
    .end local v16    # "hasKnownUserIntentEmergency":Z
    .end local v17    # "isTesting":Z
    :sswitch_12
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2310
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2311
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;-><init>()V

    .line 2312
    .local v1, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2313
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->dial_1_6(ILvendor/qti/hardware/radio/ims/V1_6/DialRequest;)V

    .line 2314
    goto/16 :goto_1

    .line 2297
    .end local v0    # "token":I
    .end local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    :sswitch_13
    invoke-virtual {v9, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2299
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2300
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;-><init>()V

    .line 2301
    .local v1, "config":Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2302
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setConfig_1_6(ILvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)V

    .line 2303
    goto/16 :goto_1

    .line 2286
    .end local v0    # "token":I
    .end local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    :sswitch_14
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2288
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2289
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2290
    .local v1, "messageRef":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2291
    .local v2, "smsResult":I
    invoke-virtual {v8, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->acknowledgeSms_1_5(III)V

    .line 2292
    goto/16 :goto_1

    .line 2270
    .end local v0    # "token":I
    .end local v1    # "messageRef":I
    .end local v2    # "smsResult":I
    :sswitch_15
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2272
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v11

    .line 2273
    .restart local v11    # "token":I
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;-><init>()V

    move-object v12, v0

    .line 2274
    .local v12, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    invoke-virtual {v12, v9}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2275
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v13

    .line 2276
    .restart local v13    # "categories":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v14

    .line 2277
    .restart local v14    # "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v15

    .line 2278
    .restart local v15    # "route":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v16

    .line 2279
    .restart local v16    # "hasKnownUserIntentEmergency":Z
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v17

    .line 2280
    .restart local v17    # "isTesting":Z
    move-object/from16 v0, p0

    move v1, v11

    move-object v2, v12

    move v3, v13

    move-object v4, v14

    move v5, v15

    move/from16 v6, v16

    move/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->emergencyDial(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;ILjava/util/ArrayList;IZZ)V

    .line 2281
    goto/16 :goto_1

    .line 2259
    .end local v11    # "token":I
    .end local v12    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    .end local v13    # "categories":I
    .end local v14    # "urns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "route":I
    .end local v16    # "hasKnownUserIntentEmergency":Z
    .end local v17    # "isTesting":Z
    :sswitch_16
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2261
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2262
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;-><init>()V

    .line 2263
    .local v1, "config":Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2264
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setConfig_1_5(ILvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;)V

    .line 2265
    goto/16 :goto_1

    .line 2248
    .end local v0    # "token":I
    .end local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;
    :sswitch_17
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2250
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2251
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;-><init>()V

    .line 2252
    .local v1, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2253
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->addParticipant_1_4(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;)V

    .line 2254
    goto/16 :goto_1

    .line 2237
    .end local v0    # "token":I
    .end local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    :sswitch_18
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2239
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2240
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;-><init>()V

    .line 2241
    .restart local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2242
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->dial_1_4(ILvendor/qti/hardware/radio/ims/V1_4/DialRequest;)V

    .line 2243
    goto/16 :goto_1

    .line 2227
    .end local v0    # "token":I
    .end local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_4/DialRequest;
    :sswitch_19
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2229
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2230
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2231
    .local v1, "msisdn":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->queryVirtualLineInfo(ILjava/lang/String;)V

    .line 2232
    goto/16 :goto_1

    .line 2217
    .end local v0    # "token":I
    .end local v1    # "msisdn":Ljava/lang/String;
    :sswitch_1a
    invoke-virtual {v9, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2219
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2220
    .restart local v0    # "token":I
    invoke-static/range {p2 .. p2}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2221
    .local v1, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;>;"
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->registerMultiIdentityLines(ILjava/util/ArrayList;)V

    .line 2222
    goto/16 :goto_1

    .line 2206
    .end local v0    # "token":I
    .end local v1    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;>;"
    :sswitch_1b
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2208
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2209
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;-><init>()V

    .line 2210
    .local v1, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2211
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setColr_1_3(ILvendor/qti/hardware/radio/ims/V1_3/ColrInfo;)V

    .line 2212
    goto/16 :goto_1

    .line 2195
    .end local v0    # "token":I
    .end local v1    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_3/ColrInfo;
    :sswitch_1c
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2197
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2198
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;-><init>()V

    .line 2199
    .local v1, "hangup":Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2200
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->hangup_1_3(ILvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;)V

    .line 2201
    goto/16 :goto_1

    .line 2182
    .end local v0    # "token":I
    .end local v1    # "hangup":Lvendor/qti/hardware/radio/ims/V1_3/HangupRequestInfo;
    :sswitch_1d
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2184
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 2185
    .local v7, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v11

    .line 2186
    .local v11, "lat":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v13

    .line 2187
    .local v13, "lon":D
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;-><init>()V

    move-object v15, v0

    .line 2188
    .local v15, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    invoke-virtual {v15, v9}, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2189
    move-object/from16 v0, p0

    move v1, v7

    move-wide v2, v11

    move-wide v4, v13

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->sendGeolocationInfo_1_2(IDDLvendor/qti/hardware/radio/ims/V1_2/AddressInfo;)V

    .line 2190
    goto/16 :goto_1

    .line 2171
    .end local v7    # "token":I
    .end local v11    # "lat":D
    .end local v13    # "lon":D
    .end local v15    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    :sswitch_1e
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2173
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    .line 2174
    .local v0, "_hidl_out_format":Ljava/lang/String;
    invoke-virtual {v10, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 2175
    invoke-virtual {v10, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 2176
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 2177
    goto/16 :goto_1

    .line 2160
    .end local v0    # "_hidl_out_format":Ljava/lang/String;
    :sswitch_1f
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2162
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2163
    .local v0, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2164
    .local v1, "messageRef":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2165
    .local v2, "smsReport":I
    invoke-virtual {v8, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->acknowledgeSmsReport(III)V

    .line 2166
    goto/16 :goto_1

    .line 2149
    .end local v0    # "token":I
    .end local v1    # "messageRef":I
    .end local v2    # "smsReport":I
    :sswitch_20
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2151
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2152
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2153
    .restart local v1    # "messageRef":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2154
    .local v2, "smsResult":I
    invoke-virtual {v8, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->acknowledgeSms(III)V

    .line 2155
    goto/16 :goto_1

    .line 2138
    .end local v0    # "token":I
    .end local v1    # "messageRef":I
    .end local v2    # "smsResult":I
    :sswitch_21
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2140
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2141
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;-><init>()V

    .line 2142
    .local v1, "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2143
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->sendImsSms(ILvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;)V

    .line 2144
    goto/16 :goto_1

    .line 2127
    .end local v0    # "token":I
    .end local v1    # "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    :sswitch_22
    invoke-virtual {v9, v4}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2129
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2130
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;-><init>()V

    .line 2131
    .local v1, "hangup":Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2132
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->hangup_1_2(ILvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;)V

    .line 2133
    goto/16 :goto_1

    .line 2116
    .end local v0    # "token":I
    .end local v1    # "hangup":Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;
    :sswitch_23
    const-string v0, "vendor.qti.hardware.radio.ims@1.1::IImsRadio"

    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2118
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2119
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;-><init>()V

    .line 2120
    .local v1, "hangup":Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2121
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->hangup_1_1(ILvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;)V

    .line 2122
    goto/16 :goto_1

    .line 2106
    .end local v0    # "token":I
    .end local v1    # "hangup":Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;
    :sswitch_24
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2108
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2109
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2110
    .local v1, "callId":I
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->cancelModifyCall(II)V

    .line 2111
    goto/16 :goto_1

    .line 2096
    .end local v0    # "token":I
    .end local v1    # "callId":I
    :sswitch_25
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2098
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2099
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 2100
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->sendRttMessage(ILjava/lang/String;)V

    .line 2101
    goto/16 :goto_1

    .line 2087
    .end local v0    # "token":I
    .end local v1    # "message":Ljava/lang/String;
    :sswitch_26
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2089
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2090
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getImsSubConfig(I)V

    .line 2091
    goto/16 :goto_1

    .line 2074
    .end local v0    # "token":I
    :sswitch_27
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2076
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v7

    .line 2077
    .restart local v7    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v11

    .line 2078
    .restart local v11    # "lat":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v13

    .line 2079
    .restart local v13    # "lon":D
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;-><init>()V

    move-object v15, v0

    .line 2080
    .local v15, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    invoke-virtual {v15, v9}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2081
    move-object/from16 v0, p0

    move v1, v7

    move-wide v2, v11

    move-wide v4, v13

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->sendGeolocationInfo(IDDLvendor/qti/hardware/radio/ims/V1_0/AddressInfo;)V

    .line 2082
    goto/16 :goto_1

    .line 2063
    .end local v7    # "token":I
    .end local v11    # "lat":D
    .end local v13    # "lon":D
    .end local v15    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    :sswitch_28
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2065
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2066
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;-><init>()V

    .line 2067
    .local v1, "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2068
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->deflectCall(ILvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;)V

    .line 2069
    goto/16 :goto_1

    .line 2054
    .end local v0    # "token":I
    .end local v1    # "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;
    :sswitch_29
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2056
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2057
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getRtpErrorStatistics(I)V

    .line 2058
    goto/16 :goto_1

    .line 2045
    .end local v0    # "token":I
    :sswitch_2a
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2047
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2048
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getRtpStatistics(I)V

    .line 2049
    goto/16 :goto_1

    .line 2032
    .end local v0    # "token":I
    :sswitch_2b
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2034
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2035
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2036
    .local v1, "operationType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2037
    .local v2, "facilityType":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;-><init>()V

    .line 2038
    .local v3, "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    invoke-virtual {v3, v9}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2039
    invoke-virtual {v8, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->suppServiceStatus(IIILvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;)V

    .line 2040
    goto/16 :goto_1

    .line 2021
    .end local v0    # "token":I
    .end local v1    # "operationType":I
    .end local v2    # "facilityType":I
    .end local v3    # "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    :sswitch_2c
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2023
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2024
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;-><init>()V

    .line 2025
    .local v1, "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 2026
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;)V

    .line 2027
    goto/16 :goto_1

    .line 2011
    .end local v0    # "token":I
    .end local v1    # "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    :sswitch_2d
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2013
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2014
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2015
    .local v1, "status":I
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setSuppServiceNotification(II)V

    .line 2016
    goto/16 :goto_1

    .line 2000
    .end local v0    # "token":I
    .end local v1    # "status":I
    :sswitch_2e
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 2002
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 2003
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 2004
    .local v1, "serviceStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 2005
    .local v2, "serviceClass":I
    invoke-virtual {v8, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setCallWaiting(III)V

    .line 2006
    goto/16 :goto_1

    .line 1990
    .end local v0    # "token":I
    .end local v1    # "serviceStatus":I
    .end local v2    # "serviceClass":I
    :sswitch_2f
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1992
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1993
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1994
    .local v1, "serviceClass":I
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getCallWaiting(II)V

    .line 1995
    goto/16 :goto_1

    .line 1979
    .end local v0    # "token":I
    .end local v1    # "serviceClass":I
    :sswitch_30
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1981
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1982
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 1983
    .local v1, "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1984
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    .line 1985
    goto/16 :goto_1

    .line 1968
    .end local v0    # "token":I
    .end local v1    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    :sswitch_31
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1970
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1971
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 1972
    .restart local v1    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1973
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    .line 1974
    goto/16 :goto_1

    .line 1957
    .end local v0    # "token":I
    .end local v1    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    :sswitch_32
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1959
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1960
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1961
    .local v1, "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1962
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 1963
    goto/16 :goto_1

    .line 1946
    .end local v0    # "token":I
    .end local v1    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    :sswitch_33
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1948
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1949
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1950
    .restart local v1    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1951
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 1952
    goto/16 :goto_1

    .line 1935
    .end local v0    # "token":I
    .end local v1    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    :sswitch_34
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1937
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1938
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;-><init>()V

    .line 1939
    .local v1, "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1940
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V

    .line 1941
    goto/16 :goto_1

    .line 1926
    .end local v0    # "token":I
    .end local v1    # "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    :sswitch_35
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1928
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1929
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->stopDtmf(I)V

    .line 1930
    goto/16 :goto_1

    .line 1915
    .end local v0    # "token":I
    :sswitch_36
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1917
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1918
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 1919
    .local v1, "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1920
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->startDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    .line 1921
    goto/16 :goto_1

    .line 1904
    .end local v0    # "token":I
    .end local v1    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    :sswitch_37
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1906
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1907
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 1908
    .restart local v1    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1909
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->sendDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    .line 1910
    goto/16 :goto_1

    .line 1895
    .end local v0    # "token":I
    .end local v1    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    :sswitch_38
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1897
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1898
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 1899
    goto/16 :goto_1

    .line 1884
    .end local v0    # "token":I
    :sswitch_39
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1886
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1887
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 1888
    .local v1, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1889
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setColr(ILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    .line 1890
    goto/16 :goto_1

    .line 1875
    .end local v0    # "token":I
    .end local v1    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    :sswitch_3a
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1877
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1878
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getColr(I)V

    .line 1879
    goto/16 :goto_1

    .line 1864
    .end local v0    # "token":I
    :sswitch_3b
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1866
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1867
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 1868
    .local v1, "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1869
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setClir(ILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;)V

    .line 1870
    goto/16 :goto_1

    .line 1855
    .end local v0    # "token":I
    .end local v1    # "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    :sswitch_3c
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1857
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1858
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getClir(I)V

    .line 1859
    goto/16 :goto_1

    .line 1846
    .end local v0    # "token":I
    :sswitch_3d
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1848
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1849
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getClip(I)V

    .line 1850
    goto/16 :goto_1

    .line 1837
    .end local v0    # "token":I
    :sswitch_3e
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1839
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1840
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->conference(I)V

    .line 1841
    goto/16 :goto_1

    .line 1826
    .end local v0    # "token":I
    :sswitch_3f
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1828
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1829
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1830
    .local v1, "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1831
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1832
    goto/16 :goto_1

    .line 1815
    .end local v0    # "token":I
    .end local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :sswitch_40
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1817
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1818
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1819
    .restart local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1820
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1821
    goto/16 :goto_1

    .line 1805
    .end local v0    # "token":I
    .end local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :sswitch_41
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1807
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1808
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1809
    .local v1, "callId":I
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->resume(II)V

    .line 1810
    goto/16 :goto_1

    .line 1795
    .end local v0    # "token":I
    .end local v1    # "callId":I
    :sswitch_42
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1797
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1798
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1799
    .restart local v1    # "callId":I
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->hold(II)V

    .line 1800
    goto/16 :goto_1

    .line 1784
    .end local v0    # "token":I
    .end local v1    # "callId":I
    :sswitch_43
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1786
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1787
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;-><init>()V

    .line 1788
    .local v1, "srvStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1789
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setServiceStatus(ILvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)V

    .line 1790
    goto/16 :goto_1

    .line 1775
    .end local v0    # "token":I
    .end local v1    # "srvStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    :sswitch_44
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1777
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1778
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->queryServiceStatus(I)V

    .line 1779
    goto/16 :goto_1

    .line 1765
    .end local v0    # "token":I
    :sswitch_45
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1767
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1768
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1769
    .local v1, "state":I
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->requestRegistrationChange(II)V

    .line 1770
    goto/16 :goto_1

    .line 1754
    .end local v0    # "token":I
    .end local v1    # "state":I
    :sswitch_46
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1756
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1757
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;-><init>()V

    .line 1758
    .local v1, "hangup":Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1759
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->hangup(ILvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;)V

    .line 1760
    goto :goto_1

    .line 1742
    .end local v0    # "token":I
    .end local v1    # "hangup":Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    :sswitch_47
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1744
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1745
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1746
    .local v1, "callType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1747
    .local v2, "presentation":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1748
    .local v3, "mode":I
    invoke-virtual {v8, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->answer(IIII)V

    .line 1749
    goto :goto_1

    .line 1733
    .end local v0    # "token":I
    .end local v1    # "callType":I
    .end local v2    # "presentation":I
    .end local v3    # "mode":I
    :sswitch_48
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1735
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1736
    .restart local v0    # "token":I
    invoke-virtual {v8, v0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->getImsRegistrationState(I)V

    .line 1737
    goto :goto_1

    .line 1722
    .end local v0    # "token":I
    :sswitch_49
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1724
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1725
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 1726
    .local v1, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1727
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->addParticipant(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 1728
    goto :goto_1

    .line 1711
    .end local v0    # "token":I
    .end local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    :sswitch_4a
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1713
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1714
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 1715
    .restart local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    invoke-virtual {v1, v9}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1716
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->dial(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 1717
    goto :goto_1

    .line 1699
    .end local v0    # "token":I
    .end local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    :sswitch_4b
    invoke-virtual {v9, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1701
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

    move-result-object v0

    .line 1702
    .local v0, "imsRadioResponse":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

    move-result-object v1

    .line 1703
    .local v1, "imsRadioIndication":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;
    invoke-virtual {v8, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->setCallback(Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;)V

    .line 1704
    invoke-virtual {v10, v7}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1705
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1706
    nop

    .line 2537
    .end local v0    # "imsRadioResponse":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;
    .end local v1    # "imsRadioIndication":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4b
        0x2 -> :sswitch_4a
        0x3 -> :sswitch_49
        0x4 -> :sswitch_48
        0x5 -> :sswitch_47
        0x6 -> :sswitch_46
        0x7 -> :sswitch_45
        0x8 -> :sswitch_44
        0x9 -> :sswitch_43
        0xa -> :sswitch_42
        0xb -> :sswitch_41
        0xc -> :sswitch_40
        0xd -> :sswitch_3f
        0xe -> :sswitch_3e
        0xf -> :sswitch_3d
        0x10 -> :sswitch_3c
        0x11 -> :sswitch_3b
        0x12 -> :sswitch_3a
        0x13 -> :sswitch_39
        0x14 -> :sswitch_38
        0x15 -> :sswitch_37
        0x16 -> :sswitch_36
        0x17 -> :sswitch_35
        0x18 -> :sswitch_34
        0x19 -> :sswitch_33
        0x1a -> :sswitch_32
        0x1b -> :sswitch_31
        0x1c -> :sswitch_30
        0x1d -> :sswitch_2f
        0x1e -> :sswitch_2e
        0x1f -> :sswitch_2d
        0x20 -> :sswitch_2c
        0x21 -> :sswitch_2b
        0x22 -> :sswitch_2a
        0x23 -> :sswitch_29
        0x24 -> :sswitch_28
        0x25 -> :sswitch_27
        0x26 -> :sswitch_26
        0x27 -> :sswitch_25
        0x28 -> :sswitch_24
        0x29 -> :sswitch_23
        0x2a -> :sswitch_22
        0x2b -> :sswitch_21
        0x2c -> :sswitch_20
        0x2d -> :sswitch_1f
        0x2e -> :sswitch_1e
        0x2f -> :sswitch_1d
        0x30 -> :sswitch_1c
        0x31 -> :sswitch_1b
        0x32 -> :sswitch_1a
        0x33 -> :sswitch_19
        0x34 -> :sswitch_18
        0x35 -> :sswitch_17
        0x36 -> :sswitch_16
        0x37 -> :sswitch_15
        0x38 -> :sswitch_14
        0x39 -> :sswitch_13
        0x3a -> :sswitch_12
        0x3b -> :sswitch_11
        0x3c -> :sswitch_10
        0x3d -> :sswitch_f
        0x3e -> :sswitch_e
        0x3f -> :sswitch_d
        0x40 -> :sswitch_c
        0x41 -> :sswitch_b
        0x42 -> :sswitch_a
        0x43 -> :sswitch_9
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

    .line 1650
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1678
    const-string v0, "vendor.qti.hardware.radio.ims@1.8::IImsRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1679
    return-object p0

    .line 1681
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

    .line 1685
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 1686
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1640
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_8/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1672
    const/4 v0, 0x1

    return v0
.end method
