.class Lorg/codeaurora/ims/ImsSubController$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsSubController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSubController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsSubController;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsSubController;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsSubController;

    .line 751
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSubController$1;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 753
    iget-object v0, p0, Lorg/codeaurora/ims/ImsSubController$1;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsSubController;->-$$Nest$misDisposed(Lorg/codeaurora/ims/ImsSubController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    const-string v0, "mBroadcastReceiver onReceive, returning as is disposed"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 755
    return-void

    .line 757
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBroadcastReceiver - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 759
    const-string v1, "org.codeaurora.intent.action.ACTION_DDS_SWITCH_DONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 760
    const/4 v1, -0x1

    const-string v2, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 762
    .local v1, "ddsSubId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got ACTION_DDS_SWITCH_DONE, new DDS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 764
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSubController$1;->this$0:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsSubController;->-$$Nest$mupdateActiveImsStackForSubId(Lorg/codeaurora/ims/ImsSubController;I)V

    .line 766
    .end local v1    # "ddsSubId":I
    :cond_1
    return-void
.end method
