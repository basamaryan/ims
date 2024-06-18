.class public Lorg/codeaurora/ims/ImsRegistrationImpl;
.super Landroid/telephony/ims/stub/ImsRegistrationImplBase;
.source "ImsRegistrationImpl.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsRegistrationImplBase;-><init>()V

    return-void
.end method

.method private getImsRegTechFromRadioTech(I)I
    .locals 1
    .param p1, "imsRadioTech"    # I

    .line 75
    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    .line 86
    return v0

    .line 82
    :sswitch_0
    const/4 v0, 0x2

    return v0

    .line 80
    :sswitch_1
    const/4 v0, 0x1

    return v0

    .line 77
    :sswitch_2
    const/4 v0, 0x0

    return v0

    .line 84
    :sswitch_3
    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0xe -> :sswitch_2
        0x12 -> :sswitch_1
        0x13 -> :sswitch_1
        0x15 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public registeredWithRadioTech(I)V
    .locals 2
    .param p1, "imsRadioTech"    # I

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registeredWithRadioTech :: imsRadioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationImpl;->getImsRegTechFromRadioTech(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRegistrationImpl;->onRegistered(I)V

    .line 34
    return-void
.end method

.method public registeringWithRadioTech(I)V
    .locals 2
    .param p1, "imsRadioTech"    # I

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registeringWithRadioTech :: imsRadioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationImpl;->getImsRegTechFromRadioTech(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/ImsRegistrationImpl;->onRegistering(I)V

    .line 42
    return-void
.end method

.method public registrationAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 3
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 65
    if-eqz p1, :cond_0

    array-length v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    .local v0, "urisLength":I
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registrationAssociatedUriChanged :: uris.length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationImpl;->onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V

    .line 68
    return-void
.end method

.method public registrationChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "imsRadioTech"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registrationChangeFailed :: imsRadioTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationImpl;->getImsRegTechFromRadioTech(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lorg/codeaurora/ims/ImsRegistrationImpl;->onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V

    .line 58
    return-void
.end method

.method public registrationDisconnected(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registrationDisconnected :: info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/ImsRegistrationImpl;->onDeregistered(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 50
    return-void
.end method
