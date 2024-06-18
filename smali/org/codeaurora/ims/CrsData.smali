.class public final Lorg/codeaurora/ims/CrsData;
.super Ljava/lang/Object;
.source "CrsData.java"


# instance fields
.field private mCrsType:I

.field private mOriginalCallType:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/CrsData;-><init>(II)V

    .line 22
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "crsType"    # I
    .param p2, "originalCallType"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/CrsData;->mCrsType:I

    .line 17
    const/16 v0, 0xa

    iput v0, p0, Lorg/codeaurora/ims/CrsData;->mOriginalCallType:I

    .line 29
    iput p1, p0, Lorg/codeaurora/ims/CrsData;->mCrsType:I

    .line 30
    iput p2, p0, Lorg/codeaurora/ims/CrsData;->mOriginalCallType:I

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/CrsData;)V
    .locals 2
    .param p1, "crsData"    # Lorg/codeaurora/ims/CrsData;

    .line 25
    invoke-virtual {p1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/CrsData;-><init>(II)V

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 35
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 36
    return v0

    .line 38
    :cond_0
    instance-of v1, p1, Lorg/codeaurora/ims/CrsData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 39
    return v2

    .line 41
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/codeaurora/ims/CrsData;

    .line 42
    .local v1, "in":Lorg/codeaurora/ims/CrsData;
    iget v3, p0, Lorg/codeaurora/ims/CrsData;->mCrsType:I

    invoke-virtual {v1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/codeaurora/ims/CrsData;->mOriginalCallType:I

    .line 43
    invoke-virtual {v1}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 42
    :goto_0
    return v0
.end method

.method public getCrsType()I
    .locals 1

    .line 47
    iget v0, p0, Lorg/codeaurora/ims/CrsData;->mCrsType:I

    return v0
.end method

.method public getOriginalCallType()I
    .locals 1

    .line 51
    iget v0, p0, Lorg/codeaurora/ims/CrsData;->mOriginalCallType:I

    return v0
.end method

.method public setCrsType(I)V
    .locals 0
    .param p1, "crsType"    # I

    .line 55
    iput p1, p0, Lorg/codeaurora/ims/CrsData;->mCrsType:I

    .line 56
    return-void
.end method

.method public setOriginalCallType(I)V
    .locals 0
    .param p1, "originalCallType"    # I

    .line 59
    iput p1, p0, Lorg/codeaurora/ims/CrsData;->mOriginalCallType:I

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CrsData crsType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/CrsData;->mCrsType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " originalCallType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/CrsData;->mOriginalCallType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(Lorg/codeaurora/ims/CrsData;)Z
    .locals 3
    .param p1, "update"    # Lorg/codeaurora/ims/CrsData;

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "hasChanged":Z
    if-nez p1, :cond_0

    .line 65
    const/4 v1, 0x0

    return v1

    .line 67
    :cond_0
    iget v1, p0, Lorg/codeaurora/ims/CrsData;->mCrsType:I

    invoke-virtual {p1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 68
    invoke-virtual {p1}, Lorg/codeaurora/ims/CrsData;->getCrsType()I

    move-result v1

    iput v1, p0, Lorg/codeaurora/ims/CrsData;->mCrsType:I

    .line 69
    const/4 v0, 0x1

    .line 72
    :cond_1
    iget v1, p0, Lorg/codeaurora/ims/CrsData;->mOriginalCallType:I

    invoke-virtual {p1}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 73
    invoke-virtual {p1}, Lorg/codeaurora/ims/CrsData;->getOriginalCallType()I

    move-result v1

    iput v1, p0, Lorg/codeaurora/ims/CrsData;->mOriginalCallType:I

    .line 74
    const/4 v0, 0x1

    .line 76
    :cond_2
    return v0
.end method
