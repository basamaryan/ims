.class public Lcom/qualcomm/ims/utils/MediaCodecUtils;
.super Ljava/lang/Object;
.source "MediaCodecUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMediaCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 8
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 18
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 19
    .local v0, "codecList":Landroid/media/MediaCodecList;
    nop

    .line 22
    invoke-virtual {v0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 23
    .local v4, "info":Landroid/media/MediaCodecInfo;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v5

    if-nez v5, :cond_1

    .line 24
    invoke-virtual {v4}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v5

    .line 25
    .local v5, "types":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_1

    .line 26
    aget-object v7, v5, v6

    invoke-virtual {v7, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 29
    return-object v4

    .line 25
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 22
    .end local v4    # "info":Landroid/media/MediaCodecInfo;
    .end local v5    # "types":[Ljava/lang/String;
    .end local v6    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 34
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getVideoDecoderMaxSupportedDimension(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 6
    .param p0, "mimeType"    # Ljava/lang/String;

    .line 42
    invoke-static {p0}, Lcom/qualcomm/ims/utils/MediaCodecUtils;->getMediaCodecInfo(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v0

    .line 43
    .local v0, "info":Landroid/media/MediaCodecInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 44
    return-object v1

    .line 46
    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedWidths()Landroid/util/Range;

    move-result-object v2

    .line 48
    .local v2, "widthRange":Landroid/util/Range;
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    aget-object v3, v4, v3

    invoke-virtual {v0, v3}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v3

    .line 49
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getVideoCapabilities()Landroid/media/MediaCodecInfo$VideoCapabilities;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getSupportedHeights()Landroid/util/Range;

    move-result-object v3

    .line 50
    .local v3, "heightRange":Landroid/util/Range;
    if-eqz v2, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    return-object v1

    .line 51
    :cond_2
    :goto_0
    return-object v1
.end method
