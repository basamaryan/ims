.class public Lorg/codeaurora/ims/RedialInfo;
.super Ljava/lang/Object;
.source "RedialInfo.java"


# instance fields
.field private retryCallFailCause:I

.field private retryCallFailRadioTech:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "retryCallFailCause"    # I
    .param p2, "retryCallFailRadioTech"    # I

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lorg/codeaurora/ims/RedialInfo;->retryCallFailCause:I

    .line 17
    iput p2, p0, Lorg/codeaurora/ims/RedialInfo;->retryCallFailRadioTech:I

    .line 18
    return-void
.end method


# virtual methods
.method public getRetryCallFailCause()I
    .locals 1

    .line 21
    iget v0, p0, Lorg/codeaurora/ims/RedialInfo;->retryCallFailCause:I

    return v0
.end method

.method public getRetryCallFailRadioTech()I
    .locals 1

    .line 25
    iget v0, p0, Lorg/codeaurora/ims/RedialInfo;->retryCallFailRadioTech:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RedialInfo: retryCallFailCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/RedialInfo;->retryCallFailCause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " retryCallFailRadioTech = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/RedialInfo;->retryCallFailRadioTech:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
