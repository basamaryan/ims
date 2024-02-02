.class public interface abstract Lorg/codeaurora/ims/ImsRegistrationController$Listener;
.super Ljava/lang/Object;
.source "ImsRegistrationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsRegistrationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public onDeregistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 0
    .param p1, "registrationState"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p3, "imsRadioTech"    # I
    .param p4, "isBroadcast"    # Z

    .line 91
    return-void
.end method

.method public onRegistered(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 0
    .param p1, "registrationState"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p3, "imsRadioTech"    # I
    .param p4, "isBroadcast"    # Z

    .line 87
    return-void
.end method

.method public onRegistering(ILandroid/telephony/ims/ImsReasonInfo;IZ)V
    .locals 0
    .param p1, "registrationState"    # I
    .param p2, "imsReasonInfo"    # Landroid/telephony/ims/ImsReasonInfo;
    .param p3, "imsRadioTech"    # I
    .param p4, "isBroadcast"    # Z

    .line 89
    return-void
.end method

.method public onSubscriberAssociatedUriChanged([Landroid/net/Uri;)V
    .locals 0
    .param p1, "uris"    # [Landroid/net/Uri;

    .line 93
    return-void
.end method

.method public onTechnologyChangeFailed(ILandroid/telephony/ims/ImsReasonInfo;)V
    .locals 0
    .param p1, "imsRadioTech"    # I
    .param p2, "info"    # Landroid/telephony/ims/ImsReasonInfo;

    .line 92
    return-void
.end method
