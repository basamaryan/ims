.class public interface abstract Lorg/codeaurora/ims/QImsSessionBase$Listener;
.super Ljava/lang/Object;
.source "QImsSessionBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/QImsSessionBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onCallModifyInitiated(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V
.end method

.method public abstract onCallTypeChanging(Lorg/codeaurora/ims/QImsSessionBase;I)V
.end method

.method public abstract onClosed(Lorg/codeaurora/ims/QImsSessionBase;)V
.end method

.method public abstract onDisconnected(Lorg/codeaurora/ims/QImsSessionBase;)V
.end method

.method public abstract onUnsolCallModify(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V
.end method
