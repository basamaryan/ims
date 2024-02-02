.class public final synthetic Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/codeaurora/ims/ImsServiceSub;

.field public final synthetic f$1:Landroid/telephony/ims/ImsReasonInfo;


# direct methods
.method public synthetic constructor <init>(Lorg/codeaurora/ims/ImsServiceSub;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda2;->f$0:Lorg/codeaurora/ims/ImsServiceSub;

    iput-object p2, p0, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda2;->f$0:Lorg/codeaurora/ims/ImsServiceSub;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsServiceSub$$ExternalSyntheticLambda2;->f$1:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsServiceSub;->lambda$onDeregistered$2$org-codeaurora-ims-ImsServiceSub(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method
