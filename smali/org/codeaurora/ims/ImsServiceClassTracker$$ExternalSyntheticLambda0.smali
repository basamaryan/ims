.class public final synthetic Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda0;->f$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceClassTracker$$ExternalSyntheticLambda0;->f$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;

    check-cast p1, Lorg/codeaurora/ims/ICallListListener;

    invoke-static {v0, p1}, Lorg/codeaurora/ims/ImsServiceClassTracker;->lambda$notifyUssdRemoved$1(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/ims/ICallListListener;)V

    return-void
.end method
