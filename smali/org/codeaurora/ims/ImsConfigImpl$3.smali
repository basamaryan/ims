.class Lorg/codeaurora/ims/ImsConfigImpl$3;
.super Landroid/content/BroadcastReceiver;
.source "ImsConfigImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsConfigImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsConfigImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsConfigImpl;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsConfigImpl;

    .line 73
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const-string v1, "onReceive: null extras"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    return-void

    .line 80
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 82
    .local v0, "subId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "action":Ljava/lang/String;
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBroadcastReceiver: action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sub = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSubId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 86
    return-void

    .line 88
    :cond_1
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 90
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fputmIsCarrierConfigLoaded(Lorg/codeaurora/ims/ImsConfigImpl;Z)V

    .line 91
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$3;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->updateWfcModeConfigurationsToModem()V

    .line 93
    :cond_2
    return-void
.end method
