.class public final Lorg/codeaurora/ims/PreAlertingCallInfo;
.super Ljava/lang/Object;
.source "PreAlertingCallInfo.java"


# instance fields
.field private mCallId:I

.field mCcInfo:Lorg/codeaurora/ims/CallComposerInfo;

.field mEcnamInfo:Lorg/codeaurora/ims/EcnamInfo;

.field private mIsDcCall:Z

.field private mModemCallId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "modemCallId"    # I
    .param p3, "isDcCall"    # Z

    .line 35
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/PreAlertingCallInfo;-><init>(ILorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/EcnamInfo;IZ)V

    .line 36
    return-void
.end method

.method public constructor <init>(ILorg/codeaurora/ims/CallComposerInfo;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "ccInfo"    # Lorg/codeaurora/ims/CallComposerInfo;

    .line 27
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/PreAlertingCallInfo;-><init>(ILorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/EcnamInfo;IZ)V

    .line 28
    return-void
.end method

.method public constructor <init>(ILorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/EcnamInfo;IZ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "ccInfo"    # Lorg/codeaurora/ims/CallComposerInfo;
    .param p3, "ecnamInfo"    # Lorg/codeaurora/ims/EcnamInfo;
    .param p4, "modemCallId"    # I
    .param p5, "isDcCal"    # Z

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mCallId:I

    .line 41
    iput-object p2, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mCcInfo:Lorg/codeaurora/ims/CallComposerInfo;

    .line 42
    iput-object p3, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mEcnamInfo:Lorg/codeaurora/ims/EcnamInfo;

    .line 43
    iput p4, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mModemCallId:I

    .line 44
    iput-boolean p5, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mIsDcCall:Z

    .line 45
    return-void
.end method

.method public constructor <init>(ILorg/codeaurora/ims/EcnamInfo;)V
    .locals 6
    .param p1, "id"    # I
    .param p2, "ecnamInfo"    # Lorg/codeaurora/ims/EcnamInfo;

    .line 31
    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/PreAlertingCallInfo;-><init>(ILorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/EcnamInfo;IZ)V

    .line 32
    return-void
.end method


# virtual methods
.method public getCallComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mCcInfo:Lorg/codeaurora/ims/CallComposerInfo;

    return-object v0
.end method

.method public getCallId()I
    .locals 1

    .line 51
    iget v0, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mCallId:I

    return v0
.end method

.method public getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mEcnamInfo:Lorg/codeaurora/ims/EcnamInfo;

    return-object v0
.end method

.method public getIsDcCall()Z
    .locals 1

    .line 78
    iget-boolean v0, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mIsDcCall:Z

    return v0
.end method

.method public getModemCallId()I
    .locals 1

    .line 72
    iget v0, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mModemCallId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreAlertingCallInfo CallId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CallComposerInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mCcInfo:Lorg/codeaurora/ims/CallComposerInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " EcnamInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mEcnamInfo:Lorg/codeaurora/ims/EcnamInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ModemCallId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mModemCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IsDcCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codeaurora/ims/PreAlertingCallInfo;->mIsDcCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
