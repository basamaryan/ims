.class public abstract Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1036
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1039
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

    .line 1057
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1099
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1100
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1101
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1102
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1103
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

    .line 1069
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

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

    new-array v2, v2, [B

    fill-array-data v2, :array_6

    const/4 v3, 0x6

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
    .array-data 1
        -0x6et
        -0x20t
        -0x70t
        -0x69t
        -0x12t
        -0x13t
        0x18t
        0x37t
        -0x23t
        -0xft
        0x54t
        0x68t
        -0x5at
        -0x15t
        0x3at
        -0x2ct
        0x15t
        -0x45t
        0x7et
        -0x64t
        0x6bt
        -0x2ft
        0x0t
        -0x71t
        0x49t
        0x34t
        -0x72t
        0x25t
        0x24t
        -0x26t
        -0x9t
        0xet
    .end array-data

    :array_1
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

    :array_2
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

    :array_3
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

    :array_4
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

    :array_5
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

    :array_6
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
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1044
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.ims@1.5::IImsRadioIndication"

    const-string v2, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    const-string v3, "vendor.qti.hardware.radio.ims@1.3::IImsRadioIndication"

    const-string v4, "vendor.qti.hardware.radio.ims@1.2::IImsRadioIndication"

    const-string v5, "vendor.qti.hardware.radio.ims@1.1::IImsRadioIndication"

    const-string v6, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    const-string v7, "android.hidl.base@1.0::IBase"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1063
    const-string v0, "vendor.qti.hardware.radio.ims@1.5::IImsRadioIndication"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1087
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1109
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1111
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

    .line 1139
    const-string v0, "vendor.qti.hardware.radio.ims@1.4::IImsRadioIndication"

    const-string v1, "vendor.qti.hardware.radio.ims@1.3::IImsRadioIndication"

    const-string v2, "vendor.qti.hardware.radio.ims@1.5::IImsRadioIndication"

    const-string v3, "vendor.qti.hardware.radio.ims@1.2::IImsRadioIndication"

    const/4 v4, 0x0

    const-string v5, "android.hidl.base@1.0::IBase"

    const-string v6, "vendor.qti.hardware.radio.ims@1.0::IImsRadioIndication"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1596
    :sswitch_0
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1598
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->notifySyspropsChanged()V

    .line 1599
    goto/16 :goto_1

    .line 1585
    :sswitch_1
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1587
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1588
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1589
    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1590
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1591
    goto/16 :goto_1

    .line 1575
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1577
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->ping()V

    .line 1578
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1579
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1580
    goto/16 :goto_1

    .line 1570
    :sswitch_3
    goto/16 :goto_1

    .line 1562
    :sswitch_4
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1564
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->setHALInstrumentation()V

    .line 1565
    goto/16 :goto_1

    .line 1528
    :sswitch_5
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1530
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1531
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1533
    new-instance v1, Landroid/os/HwBlob;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Landroid/os/HwBlob;-><init>(I)V

    .line 1535
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1536
    .local v2, "_hidl_vec_size":I
    const-wide/16 v5, 0x8

    invoke-virtual {v1, v5, v6, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1537
    const-wide/16 v5, 0xc

    invoke-virtual {v1, v5, v6, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1538
    new-instance v3, Landroid/os/HwBlob;

    mul-int/lit8 v4, v2, 0x20

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1539
    .local v3, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 1541
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1542
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    .line 1544
    .local v7, "_hidl_array_item_1":[B
    if-eqz v7, :cond_0

    array-length v8, v7

    const/16 v9, 0x20

    if-ne v8, v9, :cond_0

    .line 1548
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1549
    nop

    .line 1539
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1545
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v7    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Array element is not of the expected length"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1552
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v7    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1554
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1556
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1557
    goto/16 :goto_1

    .line 1517
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1520
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1521
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1522
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1523
    goto/16 :goto_1

    .line 1505
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1507
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1508
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1509
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1510
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1511
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1512
    goto/16 :goto_1

    .line 1494
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1496
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1497
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, v4}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1498
    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1499
    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    .line 1500
    goto/16 :goto_1

    .line 1483
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1485
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1486
    .local v0, "type":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;-><init>()V

    .line 1487
    .local v1, "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    invoke-virtual {v1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1488
    invoke-virtual {p0, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onUssdMessageFailed(ILvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)V

    .line 1489
    goto/16 :goto_1

    .line 1474
    .end local v0    # "type":I
    .end local v1    # "errorDetails":Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;
    :sswitch_a
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1476
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1477
    .local v0, "wfcRoamingConfigurationSupport":Z
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onModemSupportsWfcRoamingModeConfiguration(Z)V

    .line 1478
    goto/16 :goto_1

    .line 1464
    .end local v0    # "wfcRoamingConfigurationSupport":Z
    :sswitch_b
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1466
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;-><init>()V

    .line 1467
    .local v0, "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1468
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onIncomingCallAutoRejected_1_5(Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;)V

    .line 1469
    goto/16 :goto_1

    .line 1455
    .end local v0    # "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;
    :sswitch_c
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1457
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1458
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onCallStateChanged_1_5(Ljava/util/ArrayList;)V

    .line 1459
    goto/16 :goto_1

    .line 1446
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;>;"
    :sswitch_d
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1448
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1449
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onCallStateChanged_1_4(Ljava/util/ArrayList;)V

    .line 1450
    goto/16 :goto_1

    .line 1438
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;>;"
    :sswitch_e
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1440
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onMultiIdentityInfoPending()V

    .line 1441
    goto/16 :goto_1

    .line 1429
    :sswitch_f
    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1431
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1432
    .local v0, "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onMultiIdentityRegistrationStatusChange(Ljava/util/ArrayList;)V

    .line 1433
    goto/16 :goto_1

    .line 1420
    .end local v0    # "info":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;>;"
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1422
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1423
    .local v0, "voiceInfo":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onVoiceInfoChanged(I)V

    .line 1424
    goto/16 :goto_1

    .line 1410
    .end local v0    # "voiceInfo":I
    :sswitch_11
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1412
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;-><init>()V

    .line 1413
    .local v0, "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1414
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;)V

    .line 1415
    goto/16 :goto_1

    .line 1401
    .end local v0    # "autoCallRejectionInfo":Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;
    :sswitch_12
    invoke-virtual {p2, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1403
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1404
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onCallStateChanged_1_3(Ljava/util/ArrayList;)V

    .line 1405
    goto/16 :goto_1

    .line 1392
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_3/CallInfo;>;"
    :sswitch_13
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1395
    .local v0, "isVopsEnabled":Z
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onVopsChanged(Z)V

    .line 1396
    goto/16 :goto_1

    .line 1382
    .end local v0    # "isVopsEnabled":Z
    :sswitch_14
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1384
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;-><init>()V

    .line 1385
    .local v0, "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1386
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onIncomingImsSms(Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;)V

    .line 1387
    goto/16 :goto_1

    .line 1372
    .end local v0    # "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/IncomingImsSms;
    :sswitch_15
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1374
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;-><init>()V

    .line 1375
    .local v0, "smsStatusReport":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1376
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onImsSmsStatusReport(Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;)V

    .line 1377
    goto/16 :goto_1

    .line 1363
    .end local v0    # "smsStatusReport":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendStatusReport;
    :sswitch_16
    invoke-virtual {p2, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1365
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1366
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onCallStateChanged_1_2(Ljava/util/ArrayList;)V

    .line 1367
    goto/16 :goto_1

    .line 1354
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_2/CallInfo;>;"
    :sswitch_17
    const-string v0, "vendor.qti.hardware.radio.ims@1.1::IImsRadioIndication"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1356
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1357
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onCallStateChanged_1_1(Ljava/util/ArrayList;)V

    .line 1358
    goto/16 :goto_1

    .line 1344
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_1/CallInfo;>;"
    :sswitch_18
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1346
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;-><init>()V

    .line 1347
    .local v0, "ss":Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1348
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;)V

    .line 1349
    goto/16 :goto_1

    .line 1335
    .end local v0    # "ss":Lvendor/qti/hardware/radio/ims/V1_0/StkCcUnsolSsResult;
    :sswitch_19
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1337
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1338
    .local v0, "voWiFiCallQualityInfo":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onVoWiFiCallQuality(I)V

    .line 1339
    goto/16 :goto_1

    .line 1326
    .end local v0    # "voWiFiCallQualityInfo":I
    :sswitch_1a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1328
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1329
    .local v0, "message":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onRttMessageReceived(Ljava/lang/String;)V

    .line 1330
    goto/16 :goto_1

    .line 1312
    .end local v0    # "message":Ljava/lang/String;
    :sswitch_1b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v0

    .line 1315
    .local v0, "hasBlockStatusOnWwan":Z
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;-><init>()V

    .line 1316
    .local v1, "blockStatusOnWwan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    invoke-virtual {v1, p2}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1317
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    move-result v2

    .line 1318
    .local v2, "hasBlockStatusOnWlan":Z
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;-><init>()V

    .line 1319
    .local v3, "blockStatusOnWlan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    invoke-virtual {v3, p2}, Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1320
    invoke-virtual {p0, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onRegistrationBlockStatus(ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;ZLvendor/qti/hardware/radio/ims/V1_0/BlockStatus;)V

    .line 1321
    goto/16 :goto_1

    .line 1302
    .end local v0    # "hasBlockStatusOnWwan":Z
    .end local v1    # "blockStatusOnWwan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    .end local v2    # "hasBlockStatusOnWlan":Z
    .end local v3    # "blockStatusOnWlan":Lvendor/qti/hardware/radio/ims/V1_0/BlockStatus;
    :sswitch_1c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1304
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;-><init>()V

    .line 1305
    .local v0, "participantStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1306
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;)V

    .line 1307
    goto/16 :goto_1

    .line 1292
    .end local v0    # "participantStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ParticipantStatusInfo;
    :sswitch_1d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1294
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;-><init>()V

    .line 1295
    .local v0, "config":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1296
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;)V

    .line 1297
    goto/16 :goto_1

    .line 1282
    .end local v0    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ImsSubConfigInfo;
    :sswitch_1e
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1284
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v0

    .line 1285
    .local v0, "lat":D
    invoke-virtual {p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v2

    .line 1286
    .local v2, "lon":D
    invoke-virtual {p0, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onGeolocationInfoRequested(DD)V

    .line 1287
    goto/16 :goto_1

    .line 1272
    .end local v0    # "lat":D
    .end local v2    # "lon":D
    :sswitch_1f
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1274
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;-><init>()V

    .line 1275
    .local v0, "messageWaitingIndication":Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1276
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onMessageWaiting(Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;)V

    .line 1277
    goto/16 :goto_1

    .line 1262
    .end local v0    # "messageWaitingIndication":Lvendor/qti/hardware/radio/ims/V1_0/MessageWaitingIndication;
    :sswitch_20
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1264
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;-><init>()V

    .line 1265
    .local v0, "suppServiceNotification":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1266
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;)V

    .line 1267
    goto/16 :goto_1

    .line 1252
    .end local v0    # "suppServiceNotification":Lvendor/qti/hardware/radio/ims/V1_0/SuppServiceNotification;
    :sswitch_21
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1254
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1255
    .local v0, "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1256
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onModifyCall(Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 1257
    goto/16 :goto_1

    .line 1242
    .end local v0    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    :sswitch_22
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1244
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;-><init>()V

    .line 1245
    .local v0, "viceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1246
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;)V

    .line 1247
    goto/16 :goto_1

    .line 1232
    .end local v0    # "viceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ViceInfo;
    :sswitch_23
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1234
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;-><init>()V

    .line 1235
    .local v0, "conferenceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1236
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;)V

    .line 1237
    goto/16 :goto_1

    .line 1222
    .end local v0    # "conferenceInfo":Lvendor/qti/hardware/radio/ims/V1_0/ConferenceInfo;
    :sswitch_24
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1224
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;-><init>()V

    .line 1225
    .local v0, "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1226
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onTtyNotification(Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V

    .line 1227
    goto :goto_1

    .line 1214
    .end local v0    # "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    :sswitch_25
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1216
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onExitEmergencyCallBackMode()V

    .line 1217
    goto :goto_1

    .line 1206
    :sswitch_26
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onEnterEmergencyCallBackMode()V

    .line 1209
    goto :goto_1

    .line 1197
    :sswitch_27
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1199
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1200
    .local v0, "radioState":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onRadioStateChanged(I)V

    .line 1201
    goto :goto_1

    .line 1188
    .end local v0    # "radioState":I
    :sswitch_28
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1190
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1191
    .local v0, "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onServiceStatusChanged(Ljava/util/ArrayList;)V

    .line 1192
    goto :goto_1

    .line 1178
    .end local v0    # "srvStatusList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    :sswitch_29
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1180
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;-><init>()V

    .line 1181
    .local v0, "handover":Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1182
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onHandover(Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;)V

    .line 1183
    goto :goto_1

    .line 1168
    .end local v0    # "handover":Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;
    :sswitch_2a
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;-><init>()V

    .line 1171
    .local v0, "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    invoke-virtual {v0, p2}, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1172
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onRegistrationChanged(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)V

    .line 1173
    goto :goto_1

    .line 1159
    .end local v0    # "registration":Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;
    :sswitch_2b
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1162
    .local v0, "tone":I
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onRingbackTone(I)V

    .line 1163
    goto :goto_1

    .line 1151
    .end local v0    # "tone":I
    :sswitch_2c
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onRing()V

    .line 1154
    goto :goto_1

    .line 1142
    :sswitch_2d
    invoke-virtual {p2, v6}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1144
    invoke-static {p2}, Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1145
    .local v0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;>;"
    invoke-virtual {p0, v0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->onCallStateChanged(Ljava/util/ArrayList;)V

    .line 1146
    nop

    .line 1608
    .end local v0    # "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/CallInfo;>;"
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2d
        0x2 -> :sswitch_2c
        0x3 -> :sswitch_2b
        0x4 -> :sswitch_2a
        0x5 -> :sswitch_29
        0x6 -> :sswitch_28
        0x7 -> :sswitch_27
        0x8 -> :sswitch_26
        0x9 -> :sswitch_25
        0xa -> :sswitch_24
        0xb -> :sswitch_23
        0xc -> :sswitch_22
        0xd -> :sswitch_21
        0xe -> :sswitch_20
        0xf -> :sswitch_1f
        0x10 -> :sswitch_1e
        0x11 -> :sswitch_1d
        0x12 -> :sswitch_1c
        0x13 -> :sswitch_1b
        0x14 -> :sswitch_1a
        0x15 -> :sswitch_19
        0x16 -> :sswitch_18
        0x17 -> :sswitch_17
        0x18 -> :sswitch_16
        0x19 -> :sswitch_15
        0x1a -> :sswitch_14
        0x1b -> :sswitch_13
        0x1c -> :sswitch_12
        0x1d -> :sswitch_11
        0x1e -> :sswitch_10
        0x1f -> :sswitch_f
        0x20 -> :sswitch_e
        0x21 -> :sswitch_d
        0x22 -> :sswitch_c
        0x23 -> :sswitch_b
        0x24 -> :sswitch_a
        0x25 -> :sswitch_9
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

    .line 1093
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1121
    const-string v0, "vendor.qti.hardware.radio.ims@1.5::IImsRadioIndication"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1122
    return-object p0

    .line 1124
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

    .line 1128
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->registerService(Ljava/lang/String;)V

    .line 1129
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1083
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_5/IImsRadioIndication$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1115
    const/4 v0, 0x1

    return v0
.end method
