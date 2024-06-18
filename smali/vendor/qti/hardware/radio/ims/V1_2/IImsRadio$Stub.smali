.class public abstract Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;
.super Landroid/os/HwBinder;
.source "IImsRadio.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1270
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1273
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

    .line 1288
    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    return-void
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .locals 3

    .line 1327
    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 1328
    .local v0, "info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    .line 1329
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 1330
    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    .line 1331
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

    .line 1300
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

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

    new-array v2, v2, [B

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_0
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

    :array_1
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

    :array_2
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

    :array_3
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
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1278
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    const-string v2, "vendor.qti.hardware.radio.ims@1.1::IImsRadio"

    const-string v3, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    const-string v4, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 1294
    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 1
    .param p1, "recipient"    # Landroid/os/IHwBinder$DeathRecipient;
    .param p2, "cookie"    # J

    .line 1315
    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1337
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 1339
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 16
    .param p1, "_hidl_code"    # I
    .param p2, "_hidl_request"    # Landroid/os/HwParcel;
    .param p3, "_hidl_reply"    # Landroid/os/HwParcel;
    .param p4, "_hidl_flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1367
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    const-string v1, "android.hidl.base@1.0::IBase"

    const/4 v2, 0x0

    const-string v3, "vendor.qti.hardware.radio.ims@1.0::IImsRadio"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 1968
    :sswitch_0
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1970
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->notifySyspropsChanged()V

    .line 1971
    goto/16 :goto_1

    .line 1957
    :sswitch_1
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1959
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    .line 1960
    .local v0, "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1961
    invoke-virtual {v0, v9}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1962
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1963
    goto/16 :goto_1

    .line 1947
    .end local v0    # "_hidl_out_info":Landroid/hidl/base/V1_0/DebugInfo;
    :sswitch_2
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1949
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->ping()V

    .line 1950
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1951
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1952
    goto/16 :goto_1

    .line 1942
    :sswitch_3
    goto/16 :goto_1

    .line 1934
    :sswitch_4
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1936
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->setHALInstrumentation()V

    .line 1937
    goto/16 :goto_1

    .line 1900
    :sswitch_5
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1902
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1903
    .local v0, "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1905
    new-instance v1, Landroid/os/HwBlob;

    const/16 v3, 0x10

    invoke-direct {v1, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 1907
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1908
    .local v3, "_hidl_vec_size":I
    const-wide/16 v4, 0x8

    invoke-virtual {v1, v4, v5, v3}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 1909
    const-wide/16 v4, 0xc

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1910
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v4, v3, 0x20

    invoke-direct {v2, v4}, Landroid/os/HwBlob;-><init>(I)V

    .line 1911
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v4, 0x0

    .local v4, "_hidl_index_0":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 1913
    mul-int/lit8 v5, v4, 0x20

    int-to-long v5, v5

    .line 1914
    .local v5, "_hidl_array_offset_1":J
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [B

    .line 1916
    .local v10, "_hidl_array_item_1":[B
    if-eqz v10, :cond_0

    array-length v11, v10

    const/16 v12, 0x20

    if-ne v11, v12, :cond_0

    .line 1920
    invoke-virtual {v2, v5, v6, v10}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 1921
    nop

    .line 1911
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1917
    .restart local v5    # "_hidl_array_offset_1":J
    .restart local v10    # "_hidl_array_item_1":[B
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Array element is not of the expected length"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1924
    .end local v4    # "_hidl_index_0":I
    .end local v5    # "_hidl_array_offset_1":J
    .end local v10    # "_hidl_array_item_1":[B
    :cond_1
    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1926
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    .end local v3    # "_hidl_vec_size":I
    invoke-virtual {v9, v1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 1928
    .end local v1    # "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1929
    goto/16 :goto_1

    .line 1889
    .end local v0    # "_hidl_out_hashchain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    :sswitch_6
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1891
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 1892
    .local v0, "_hidl_out_descriptor":Ljava/lang/String;
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1893
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1894
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1895
    goto/16 :goto_1

    .line 1877
    .end local v0    # "_hidl_out_descriptor":Ljava/lang/String;
    :sswitch_7
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1879
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    move-result-object v0

    .line 1880
    .local v0, "fd":Landroid/os/NativeHandle;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    move-result-object v1

    .line 1881
    .local v1, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 1882
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1883
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1884
    goto/16 :goto_1

    .line 1866
    .end local v0    # "fd":Landroid/os/NativeHandle;
    .end local v1    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_8
    invoke-virtual {v8, v1}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1868
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    .line 1869
    .local v0, "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1870
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 1871
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1872
    goto/16 :goto_1

    .line 1853
    .end local v0    # "_hidl_out_descriptors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_9
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1855
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 1856
    .local v10, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v11

    .line 1857
    .local v11, "lat":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v13

    .line 1858
    .local v13, "lon":D
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;-><init>()V

    move-object v15, v0

    .line 1859
    .local v15, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    invoke-virtual {v15, v8}, Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1860
    move-object/from16 v0, p0

    move v1, v10

    move-wide v2, v11

    move-wide v4, v13

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->sendGeolocationInfo_1_2(IDDLvendor/qti/hardware/radio/ims/V1_2/AddressInfo;)V

    .line 1861
    goto/16 :goto_1

    .line 1842
    .end local v10    # "token":I
    .end local v11    # "lat":D
    .end local v13    # "lon":D
    .end local v15    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_2/AddressInfo;
    :sswitch_a
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1844
    invoke-virtual/range {p0 .. p0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getSmsFormat()Ljava/lang/String;

    move-result-object v0

    .line 1845
    .local v0, "_hidl_out_format":Ljava/lang/String;
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1846
    invoke-virtual {v9, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 1847
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1848
    goto/16 :goto_1

    .line 1831
    .end local v0    # "_hidl_out_format":Ljava/lang/String;
    :sswitch_b
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1833
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1834
    .local v0, "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1835
    .local v1, "messageRef":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1836
    .local v2, "smsReport":I
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->acknowledgeSmsReport(III)V

    .line 1837
    goto/16 :goto_1

    .line 1820
    .end local v0    # "token":I
    .end local v1    # "messageRef":I
    .end local v2    # "smsReport":I
    :sswitch_c
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1822
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1823
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1824
    .restart local v1    # "messageRef":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1825
    .local v2, "smsResult":I
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->acknowledgeSms(III)V

    .line 1826
    goto/16 :goto_1

    .line 1809
    .end local v0    # "token":I
    .end local v1    # "messageRef":I
    .end local v2    # "smsResult":I
    :sswitch_d
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1811
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1812
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;-><init>()V

    .line 1813
    .local v1, "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1814
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->sendImsSms(ILvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;)V

    .line 1815
    goto/16 :goto_1

    .line 1798
    .end local v0    # "token":I
    .end local v1    # "imsSms":Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsMessage;
    :sswitch_e
    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1800
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1801
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;-><init>()V

    .line 1802
    .local v1, "hangup":Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1803
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->hangup_1_2(ILvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;)V

    .line 1804
    goto/16 :goto_1

    .line 1787
    .end local v0    # "token":I
    .end local v1    # "hangup":Lvendor/qti/hardware/radio/ims/V1_2/HangupRequestInfo;
    :sswitch_f
    const-string v0, "vendor.qti.hardware.radio.ims@1.1::IImsRadio"

    invoke-virtual {v8, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1789
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1790
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;-><init>()V

    .line 1791
    .local v1, "hangup":Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1792
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->hangup_1_1(ILvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;)V

    .line 1793
    goto/16 :goto_1

    .line 1777
    .end local v0    # "token":I
    .end local v1    # "hangup":Lvendor/qti/hardware/radio/ims/V1_1/HangupRequestInfo;
    :sswitch_10
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1779
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1780
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1781
    .local v1, "callId":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->cancelModifyCall(II)V

    .line 1782
    goto/16 :goto_1

    .line 1767
    .end local v0    # "token":I
    .end local v1    # "callId":I
    :sswitch_11
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1769
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1770
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 1771
    .local v1, "message":Ljava/lang/String;
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->sendRttMessage(ILjava/lang/String;)V

    .line 1772
    goto/16 :goto_1

    .line 1758
    .end local v0    # "token":I
    .end local v1    # "message":Ljava/lang/String;
    :sswitch_12
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1760
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1761
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getImsSubConfig(I)V

    .line 1762
    goto/16 :goto_1

    .line 1745
    .end local v0    # "token":I
    :sswitch_13
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1747
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v10

    .line 1748
    .restart local v10    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v11

    .line 1749
    .restart local v11    # "lat":D
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readDouble()D

    move-result-wide v13

    .line 1750
    .restart local v13    # "lon":D
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;-><init>()V

    move-object v15, v0

    .line 1751
    .local v15, "addressInfo":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    invoke-virtual {v15, v8}, Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1752
    move-object/from16 v0, p0

    move v1, v10

    move-wide v2, v11

    move-wide v4, v13

    move-object v6, v15

    invoke-virtual/range {v0 .. v6}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->sendGeolocationInfo(IDDLvendor/qti/hardware/radio/ims/V1_0/AddressInfo;)V

    .line 1753
    goto/16 :goto_1

    .line 1734
    .end local v10    # "token":I
    .end local v11    # "lat":D
    .end local v13    # "lon":D
    .end local v15    # "addressInfo":Lvendor/qti/hardware/radio/ims/V1_0/AddressInfo;
    :sswitch_14
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1736
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1737
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;-><init>()V

    .line 1738
    .local v1, "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1739
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->deflectCall(ILvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;)V

    .line 1740
    goto/16 :goto_1

    .line 1725
    .end local v0    # "token":I
    .end local v1    # "deflectRequestInfo":Lvendor/qti/hardware/radio/ims/V1_0/DeflectRequestInfo;
    :sswitch_15
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1727
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1728
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getRtpErrorStatistics(I)V

    .line 1729
    goto/16 :goto_1

    .line 1716
    .end local v0    # "token":I
    :sswitch_16
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1718
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1719
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getRtpStatistics(I)V

    .line 1720
    goto/16 :goto_1

    .line 1703
    .end local v0    # "token":I
    :sswitch_17
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1705
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1706
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1707
    .local v1, "operationType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1708
    .local v2, "facilityType":I
    new-instance v3, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;

    invoke-direct {v3}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;-><init>()V

    .line 1709
    .local v3, "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    invoke-virtual {v3, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1710
    invoke-virtual {v7, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->suppServiceStatus(IIILvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;)V

    .line 1711
    goto/16 :goto_1

    .line 1692
    .end local v0    # "token":I
    .end local v1    # "operationType":I
    .end local v2    # "facilityType":I
    .end local v3    # "cbNumListInfo":Lvendor/qti/hardware/radio/ims/V1_0/CbNumListInfo;
    :sswitch_18
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1694
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1695
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;-><init>()V

    .line 1696
    .local v1, "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1697
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;)V

    .line 1698
    goto/16 :goto_1

    .line 1682
    .end local v0    # "token":I
    .end local v1    # "ectInfo":Lvendor/qti/hardware/radio/ims/V1_0/ExplicitCallTransferInfo;
    :sswitch_19
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1684
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1685
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1686
    .local v1, "status":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->setSuppServiceNotification(II)V

    .line 1687
    goto/16 :goto_1

    .line 1671
    .end local v0    # "token":I
    .end local v1    # "status":I
    :sswitch_1a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1673
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1674
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1675
    .local v1, "serviceStatus":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1676
    .local v2, "serviceClass":I
    invoke-virtual {v7, v0, v1, v2}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->setCallWaiting(III)V

    .line 1677
    goto/16 :goto_1

    .line 1661
    .end local v0    # "token":I
    .end local v1    # "serviceStatus":I
    .end local v2    # "serviceClass":I
    :sswitch_1b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1663
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1664
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1665
    .local v1, "serviceClass":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getCallWaiting(II)V

    .line 1666
    goto/16 :goto_1

    .line 1650
    .end local v0    # "token":I
    .end local v1    # "serviceClass":I
    :sswitch_1c
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1652
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1653
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 1654
    .local v1, "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1655
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    .line 1656
    goto/16 :goto_1

    .line 1639
    .end local v0    # "token":I
    .end local v1    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    :sswitch_1d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1641
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1642
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;-><init>()V

    .line 1643
    .restart local v1    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1644
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;)V

    .line 1645
    goto/16 :goto_1

    .line 1628
    .end local v0    # "token":I
    .end local v1    # "callForwardInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallForwardInfo;
    :sswitch_1e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1630
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1631
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1632
    .local v1, "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1633
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 1634
    goto/16 :goto_1

    .line 1617
    .end local v0    # "token":I
    .end local v1    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    :sswitch_1f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1619
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1620
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;-><init>()V

    .line 1621
    .restart local v1    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1622
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;)V

    .line 1623
    goto/16 :goto_1

    .line 1606
    .end local v0    # "token":I
    .end local v1    # "callModifyInfo":Lvendor/qti/hardware/radio/ims/V1_0/CallModifyInfo;
    :sswitch_20
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1608
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1609
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;-><init>()V

    .line 1610
    .local v1, "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1611
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/V1_0/TtyInfo;)V

    .line 1612
    goto/16 :goto_1

    .line 1597
    .end local v0    # "token":I
    .end local v1    # "ttyInfo":Lvendor/qti/hardware/radio/ims/V1_0/TtyInfo;
    :sswitch_21
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1599
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1600
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->stopDtmf(I)V

    .line 1601
    goto/16 :goto_1

    .line 1586
    .end local v0    # "token":I
    :sswitch_22
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1588
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1589
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 1590
    .local v1, "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1591
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->startDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    .line 1592
    goto/16 :goto_1

    .line 1575
    .end local v0    # "token":I
    .end local v1    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    :sswitch_23
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1577
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1578
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;-><init>()V

    .line 1579
    .restart local v1    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1580
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->sendDtmf(ILvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;)V

    .line 1581
    goto/16 :goto_1

    .line 1566
    .end local v0    # "token":I
    .end local v1    # "dtmfInfo":Lvendor/qti/hardware/radio/ims/V1_0/DtmfInfo;
    :sswitch_24
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1568
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1569
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 1570
    goto/16 :goto_1

    .line 1555
    .end local v0    # "token":I
    :sswitch_25
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1557
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1558
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;-><init>()V

    .line 1559
    .local v1, "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1560
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->setColr(ILvendor/qti/hardware/radio/ims/V1_0/ColrInfo;)V

    .line 1561
    goto/16 :goto_1

    .line 1546
    .end local v0    # "token":I
    .end local v1    # "colrInfo":Lvendor/qti/hardware/radio/ims/V1_0/ColrInfo;
    :sswitch_26
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1548
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1549
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getColr(I)V

    .line 1550
    goto/16 :goto_1

    .line 1535
    .end local v0    # "token":I
    :sswitch_27
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1537
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1538
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;-><init>()V

    .line 1539
    .local v1, "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1540
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->setClir(ILvendor/qti/hardware/radio/ims/V1_0/ClirInfo;)V

    .line 1541
    goto/16 :goto_1

    .line 1526
    .end local v0    # "token":I
    .end local v1    # "clirInfo":Lvendor/qti/hardware/radio/ims/V1_0/ClirInfo;
    :sswitch_28
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1528
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1529
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getClir(I)V

    .line 1530
    goto/16 :goto_1

    .line 1517
    .end local v0    # "token":I
    :sswitch_29
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1519
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1520
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getClip(I)V

    .line 1521
    goto/16 :goto_1

    .line 1508
    .end local v0    # "token":I
    :sswitch_2a
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1510
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1511
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->conference(I)V

    .line 1512
    goto/16 :goto_1

    .line 1497
    .end local v0    # "token":I
    :sswitch_2b
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1499
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1500
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1501
    .local v1, "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1502
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1503
    goto/16 :goto_1

    .line 1486
    .end local v0    # "token":I
    .end local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :sswitch_2c
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1488
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1489
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;-><init>()V

    .line 1490
    .restart local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1491
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->setConfig(ILvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)V

    .line 1492
    goto/16 :goto_1

    .line 1476
    .end local v0    # "token":I
    .end local v1    # "config":Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;
    :sswitch_2d
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1478
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1479
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1480
    .local v1, "callId":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->resume(II)V

    .line 1481
    goto/16 :goto_1

    .line 1466
    .end local v0    # "token":I
    .end local v1    # "callId":I
    :sswitch_2e
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1468
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1469
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1470
    .restart local v1    # "callId":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->hold(II)V

    .line 1471
    goto/16 :goto_1

    .line 1455
    .end local v0    # "token":I
    .end local v1    # "callId":I
    :sswitch_2f
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1457
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1458
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;-><init>()V

    .line 1459
    .local v1, "srvStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1460
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->setServiceStatus(ILvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)V

    .line 1461
    goto/16 :goto_1

    .line 1446
    .end local v0    # "token":I
    .end local v1    # "srvStatusInfo":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    :sswitch_30
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1448
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1449
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->queryServiceStatus(I)V

    .line 1450
    goto/16 :goto_1

    .line 1436
    .end local v0    # "token":I
    :sswitch_31
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1438
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1439
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1440
    .local v1, "state":I
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->requestRegistrationChange(II)V

    .line 1441
    goto/16 :goto_1

    .line 1425
    .end local v0    # "token":I
    .end local v1    # "state":I
    :sswitch_32
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1427
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1428
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;-><init>()V

    .line 1429
    .local v1, "hangup":Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1430
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->hangup(ILvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;)V

    .line 1431
    goto :goto_1

    .line 1413
    .end local v0    # "token":I
    .end local v1    # "hangup":Lvendor/qti/hardware/radio/ims/V1_0/HangupRequestInfo;
    :sswitch_33
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1415
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1416
    .restart local v0    # "token":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v1

    .line 1417
    .local v1, "callType":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v2

    .line 1418
    .local v2, "presentation":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    .line 1419
    .local v3, "mode":I
    invoke-virtual {v7, v0, v1, v2, v3}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->answer(IIII)V

    .line 1420
    goto :goto_1

    .line 1404
    .end local v0    # "token":I
    .end local v1    # "callType":I
    .end local v2    # "presentation":I
    .end local v3    # "mode":I
    :sswitch_34
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1406
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1407
    .restart local v0    # "token":I
    invoke-virtual {v7, v0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->getImsRegistrationState(I)V

    .line 1408
    goto :goto_1

    .line 1393
    .end local v0    # "token":I
    :sswitch_35
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1395
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1396
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 1397
    .local v1, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1398
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->addParticipant(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 1399
    goto :goto_1

    .line 1382
    .end local v0    # "token":I
    .end local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    :sswitch_36
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1384
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    .line 1385
    .restart local v0    # "token":I
    new-instance v1, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;

    invoke-direct {v1}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;-><init>()V

    .line 1386
    .restart local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    invoke-virtual {v1, v8}, Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;->readFromParcel(Landroid/os/HwParcel;)V

    .line 1387
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->dial(ILvendor/qti/hardware/radio/ims/V1_0/DialRequest;)V

    .line 1388
    goto :goto_1

    .line 1370
    .end local v0    # "token":I
    .end local v1    # "dialRequest":Lvendor/qti/hardware/radio/ims/V1_0/DialRequest;
    :sswitch_37
    invoke-virtual {v8, v3}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1372
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-static {v0}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;

    move-result-object v0

    .line 1373
    .local v0, "imsRadioResponse":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;->asInterface(Landroid/os/IHwBinder;)Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;

    move-result-object v1

    .line 1374
    .local v1, "imsRadioIndication":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;
    invoke-virtual {v7, v0, v1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->setCallback(Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;)V

    .line 1375
    invoke-virtual {v9, v2}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1376
    invoke-virtual/range {p3 .. p3}, Landroid/os/HwParcel;->send()V

    .line 1377
    nop

    .line 1980
    .end local v0    # "imsRadioResponse":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioResponse;
    .end local v1    # "imsRadioIndication":Lvendor/qti/hardware/radio/ims/V1_0/IImsRadioIndication;
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_37
        0x2 -> :sswitch_36
        0x3 -> :sswitch_35
        0x4 -> :sswitch_34
        0x5 -> :sswitch_33
        0x6 -> :sswitch_32
        0x7 -> :sswitch_31
        0x8 -> :sswitch_30
        0x9 -> :sswitch_2f
        0xa -> :sswitch_2e
        0xb -> :sswitch_2d
        0xc -> :sswitch_2c
        0xd -> :sswitch_2b
        0xe -> :sswitch_2a
        0xf -> :sswitch_29
        0x10 -> :sswitch_28
        0x11 -> :sswitch_27
        0x12 -> :sswitch_26
        0x13 -> :sswitch_25
        0x14 -> :sswitch_24
        0x15 -> :sswitch_23
        0x16 -> :sswitch_22
        0x17 -> :sswitch_21
        0x18 -> :sswitch_20
        0x19 -> :sswitch_1f
        0x1a -> :sswitch_1e
        0x1b -> :sswitch_1d
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1b
        0x1e -> :sswitch_1a
        0x1f -> :sswitch_19
        0x20 -> :sswitch_18
        0x21 -> :sswitch_17
        0x22 -> :sswitch_16
        0x23 -> :sswitch_15
        0x24 -> :sswitch_14
        0x25 -> :sswitch_13
        0x26 -> :sswitch_12
        0x27 -> :sswitch_11
        0x28 -> :sswitch_10
        0x29 -> :sswitch_f
        0x2a -> :sswitch_e
        0x2b -> :sswitch_d
        0x2c -> :sswitch_c
        0x2d -> :sswitch_b
        0x2e -> :sswitch_a
        0x2f -> :sswitch_9
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

    .line 1321
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 1349
    const-string v0, "vendor.qti.hardware.radio.ims@1.2::IImsRadio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1350
    return-object p0

    .line 1352
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

    .line 1356
    invoke-virtual {p0, p1}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->registerService(Ljava/lang/String;)V

    .line 1357
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1311
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/V1_2/IImsRadio$Stub;->interfaceDescriptor()Ljava/lang/String;

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

    .line 1343
    const/4 v0, 0x1

    return v0
.end method
