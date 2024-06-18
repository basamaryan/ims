.class public final synthetic Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/codeaurora/ims/ImsCallSessionImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda1;->f$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsCallSessionImpl$$ExternalSyntheticLambda1;->f$0:Lorg/codeaurora/ims/ImsCallSessionImpl;

    check-cast p1, Lorg/codeaurora/ims/internal/ICrsCrbtListener;

    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->lambda$setCrsCrbtListener$1$org-codeaurora-ims-ImsCallSessionImpl(Lorg/codeaurora/ims/internal/ICrsCrbtListener;)V

    return-void
.end method
