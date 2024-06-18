.class public final Lorg/codeaurora/ims/ImsRadioHalFactory;
.super Ljava/lang/Object;
.source "ImsRadioHalFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImsRadioHalFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAidlHalAvailable(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .line 34
    const/4 v0, 0x1

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsRadioHalFactory;->makeRadioVersion(II)I

    move-result v1

    .line 36
    .local v1, "RADIO_HAL_VERSION_1_6":I
    const/4 v2, 0x0

    const-string v3, "ImsRadioHalFactory"

    if-nez p0, :cond_0

    .line 37
    const-string v0, "Context is NULL"

    invoke-static {v3, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return v2

    .line 40
    :cond_0
    const-class v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 41
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v4, :cond_1

    .line 42
    const-string v0, "TelephonyManger is NULL"

    invoke-static {v3, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return v2

    .line 45
    :cond_1
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getRadioHalVersion()Landroid/util/Pair;

    move-result-object v5

    .line 46
    .local v5, "radioVersion":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v6, v7}, Lorg/codeaurora/ims/ImsRadioHalFactory;->makeRadioVersion(II)I

    move-result v6

    .line 48
    .local v6, "halVersion":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isAidlHalAvailable: halVersion = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    if-lt v6, v1, :cond_2

    .line 50
    return v0

    .line 52
    :cond_2
    return v2
.end method

.method private static makeRadioVersion(II)I
    .locals 1
    .param p0, "major"    # I
    .param p1, "minor"    # I

    .line 29
    if-ltz p0, :cond_1

    if-gez p1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    mul-int/lit8 v0, p0, 0x64

    add-int/2addr v0, p1

    return v0

    .line 29
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final newImsRadioHal(Lorg/codeaurora/ims/IImsRadioResponse;Lorg/codeaurora/ims/IImsRadioIndication;ILandroid/content/Context;)Lorg/codeaurora/ims/IImsRadio;
    .locals 3
    .param p0, "respCallback"    # Lorg/codeaurora/ims/IImsRadioResponse;
    .param p1, "indCallback"    # Lorg/codeaurora/ims/IImsRadioIndication;
    .param p2, "phoneId"    # I
    .param p3, "context"    # Landroid/content/Context;

    .line 57
    const-string v0, "ro.board.api_level"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 58
    .local v0, "apiLevel":I
    const-string v2, "ro.radio.noril"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "ImsRadioHalFactory"

    if-eqz v1, :cond_0

    .line 59
    const-string v1, "Initialize default HAL as target does not support ril"

    invoke-static {v2, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v1, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;

    invoke-direct {v1}, Lorg/codeaurora/ims/ImsRadioNotSupportedHal;-><init>()V

    return-object v1

    .line 61
    :cond_0
    const/16 v1, 0x1f

    if-ge v0, v1, :cond_1

    if-nez v0, :cond_2

    .line 62
    invoke-static {p3}, Lorg/codeaurora/ims/ImsRadioHalFactory;->isAidlHalAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    :cond_1
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioAidl;->isAidlAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    const-string v1, "Initializing IImsRadio AIDL"

    invoke-static {v2, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v1, Lorg/codeaurora/ims/ImsRadioAidl;

    invoke-direct {v1, p0, p1, p2}, Lorg/codeaurora/ims/ImsRadioAidl;-><init>(Lorg/codeaurora/ims/IImsRadioResponse;Lorg/codeaurora/ims/IImsRadioIndication;I)V

    return-object v1

    .line 67
    :cond_2
    const-string v1, "Initializing IImsRadio HIDL as AIDL is not available"

    invoke-static {v2, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v1, Lorg/codeaurora/ims/ImsRadioHidl;

    invoke-direct {v1, p0, p1, p2}, Lorg/codeaurora/ims/ImsRadioHidl;-><init>(Lorg/codeaurora/ims/IImsRadioResponse;Lorg/codeaurora/ims/IImsRadioIndication;I)V

    return-object v1
.end method
