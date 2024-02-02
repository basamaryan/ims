.class public final Lorg/codeaurora/ims/CallProgressInfo;
.super Ljava/lang/Object;
.source "CallProgressInfo.java"


# instance fields
.field private mReasonCode:I

.field private mReasonText:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/CallProgressInfo;->mType:I

    .line 30
    iput v0, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonCode:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonText:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "reasonCode"    # I
    .param p3, "reasonText"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/CallProgressInfo;->mType:I

    .line 30
    iput v0, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonCode:I

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonText:Ljava/lang/String;

    .line 43
    iput p1, p0, Lorg/codeaurora/ims/CallProgressInfo;->mType:I

    .line 44
    iput p2, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonCode:I

    .line 45
    iput-object p3, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonText:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/CallProgressInfo;)V
    .locals 3
    .param p1, "callProgInfo"    # Lorg/codeaurora/ims/CallProgressInfo;

    .line 39
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallProgressInfo;->getType()I

    move-result v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/CallProgressInfo;->getReasonCode()I

    move-result v1

    invoke-virtual {p1}, Lorg/codeaurora/ims/CallProgressInfo;->getReasonText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/codeaurora/ims/CallProgressInfo;-><init>(IILjava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 50
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 51
    return v0

    .line 53
    :cond_0
    instance-of v1, p1, Lorg/codeaurora/ims/CallProgressInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 54
    return v2

    .line 56
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/codeaurora/ims/CallProgressInfo;

    .line 57
    .local v1, "in":Lorg/codeaurora/ims/CallProgressInfo;
    iget v3, p0, Lorg/codeaurora/ims/CallProgressInfo;->mType:I

    invoke-virtual {v1}, Lorg/codeaurora/ims/CallProgressInfo;->getType()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonCode:I

    .line 58
    invoke-virtual {v1}, Lorg/codeaurora/ims/CallProgressInfo;->getReasonCode()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonText:Ljava/lang/String;

    .line 59
    invoke-virtual {v1}, Lorg/codeaurora/ims/CallProgressInfo;->getReasonText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 57
    :goto_0
    return v0
.end method

.method public getReasonCode()I
    .locals 1

    .line 67
    iget v0, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonCode:I

    return v0
.end method

.method public getReasonText()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonText:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 63
    iget v0, p0, Lorg/codeaurora/ims/CallProgressInfo;->mType:I

    return v0
.end method

.method public setReasonCode(I)V
    .locals 0
    .param p1, "reasonCode"    # I

    .line 79
    iput p1, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonCode:I

    .line 80
    return-void
.end method

.method public setReasonText(Ljava/lang/String;)V
    .locals 0
    .param p1, "reasonText"    # Ljava/lang/String;

    .line 83
    iput-object p1, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonText:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "callProgType"    # I

    .line 75
    iput p1, p0, Lorg/codeaurora/ims/CallProgressInfo;->mType:I

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallProgressInfo Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/CallProgressInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Reason code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Reason Text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/CallProgressInfo;->mReasonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
