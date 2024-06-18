.class public final Lorg/codeaurora/ims/MsimAdditionalCallInfo;
.super Ljava/lang/Object;
.source "MsimAdditionalCallInfo.java"


# instance fields
.field private mCode:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->mCode:I

    .line 22
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "additionalInfoCode"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->mCode:I

    .line 29
    iput p1, p0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->mCode:I

    .line 30
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/MsimAdditionalCallInfo;)V
    .locals 1
    .param p1, "additionalCallInfo"    # Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    .line 25
    invoke-virtual {p1}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->getCode()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;-><init>(I)V

    .line 26
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 34
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 35
    return v0

    .line 37
    :cond_0
    instance-of v1, p1, Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 38
    return v2

    .line 40
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    .line 41
    .local v1, "in":Lorg/codeaurora/ims/MsimAdditionalCallInfo;
    iget v3, p0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->mCode:I

    invoke-virtual {v1}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->getCode()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCode()I
    .locals 1

    .line 45
    iget v0, p0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->mCode:I

    return v0
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "additionalInfoCode"    # I

    .line 49
    iput p1, p0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->mCode:I

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MsimAdditionalCallInfo additional code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;->mCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
