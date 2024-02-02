.class public final Lorg/codeaurora/ims/UssdInfo;
.super Ljava/lang/Object;
.source "UssdInfo.java"


# static fields
.field public static final INVALID:I = -0x1


# instance fields
.field private mErrorCode:I

.field private mErrorMessage:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;

.field private mType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "errorCode"    # I
    .param p4, "errMsg"    # Ljava/lang/String;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lorg/codeaurora/ims/UssdInfo;->mType:I

    .line 38
    iput-object p2, p0, Lorg/codeaurora/ims/UssdInfo;->mMessage:Ljava/lang/String;

    .line 39
    const v0, 0x7fffffff

    if-ne p3, v0, :cond_0

    .line 40
    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    move v0, p3

    :goto_0
    iput v0, p0, Lorg/codeaurora/ims/UssdInfo;->mErrorCode:I

    .line 41
    iput-object p4, p0, Lorg/codeaurora/ims/UssdInfo;->mErrorMessage:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    .line 56
    iget v0, p0, Lorg/codeaurora/ims/UssdInfo;->mErrorCode:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/codeaurora/ims/UssdInfo;->mErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/codeaurora/ims/UssdInfo;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 46
    iget v0, p0, Lorg/codeaurora/ims/UssdInfo;->mType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UssdInfo type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/UssdInfo;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/UssdInfo;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/UssdInfo;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " errorMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/UssdInfo;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
