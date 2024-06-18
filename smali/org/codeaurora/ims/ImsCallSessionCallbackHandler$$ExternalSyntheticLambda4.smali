.class public final synthetic Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda4;->f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iput-boolean p2, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda4;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda4;->f$0:Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;

    iget-boolean v1, p0, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler$$ExternalSyntheticLambda4;->f$1:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsCallSessionCallbackHandler;->lambda$callSessionMultipartyStateChanged$23$org-codeaurora-ims-ImsCallSessionCallbackHandler(Z)V

    return-void
.end method
