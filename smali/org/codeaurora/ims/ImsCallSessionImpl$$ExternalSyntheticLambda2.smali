.class public final synthetic Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lorg/codeaurora/ims/DriverCallIms;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;ILorg/codeaurora/ims/DriverCallIms;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda2;->f$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iput p2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda2;->f$1:I

    iput-object p3, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda2;->f$2:Lorg/codeaurora/ims/DriverCallIms;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda2;->f$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    iget v1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda2;->f$1:I

    iget-object v2, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda2;->f$2:Lorg/codeaurora/ims/DriverCallIms;

    check-cast p1, Lorg/codeaurora/ims/internal/ICrsCrbtListener;

    invoke-virtual {v0, v1, v2, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->lambda$updateCrsStatus$3$org-codeaurora-ims-ImsCallSessionImpl(ILorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V

    return-void
.end method
