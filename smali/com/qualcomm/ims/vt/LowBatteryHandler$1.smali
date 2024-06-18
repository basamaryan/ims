.class Lcom/qualcomm/ims/vt/LowBatteryHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "LowBatteryHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/LowBatteryHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;


# direct methods
.method constructor <init>(Lcom/qualcomm/ims/vt/LowBatteryHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/qualcomm/ims/vt/LowBatteryHandler;

    .line 92
    iput-object p1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 97
    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    const/4 v2, 0x0

    const-string v3, "battery_low"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-$$Nest$fputmIsLowBattery(Lcom/qualcomm/ims/vt/LowBatteryHandler;Z)V

    .line 98
    iget-object v1, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-$$Nest$fgetmServiceSubs(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/codeaurora/ims/ImsServiceSub;

    .line 99
    .local v2, "serviceSub":Lorg/codeaurora/ims/ImsServiceSub;
    nop

    .line 100
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v3

    iget-object v4, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v4}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-$$Nest$fgetmContext(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/codeaurora/ims/utils/QtiImsExtUtils;->allowVideoCallsInLowBattery(ILandroid/content/Context;)Z

    move-result v3

    .line 101
    .local v3, "allowVideoCallsInLowBattery":Z
    iget-object v4, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v4}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-$$Nest$fgetmIsLowBattery(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v3, :cond_0

    .line 103
    invoke-static {}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "disconnectVideoCalls on low battery"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v4, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v4, v2}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-$$Nest$mdisconnectVideoCalls(Lcom/qualcomm/ims/vt/LowBatteryHandler;Lorg/codeaurora/ims/ImsServiceSub;)V

    .line 106
    :cond_0
    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/qualcomm/ims/vt/LowBatteryHandler$1;->this$0:Lcom/qualcomm/ims/vt/LowBatteryHandler;

    invoke-static {v4}, Lcom/qualcomm/ims/vt/LowBatteryHandler;->-$$Nest$fgetisCarrierOneSupported(Lcom/qualcomm/ims/vt/LowBatteryHandler;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 108
    :cond_1
    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsServiceSub;->updateLowBatteryStatus()V

    .line 110
    .end local v2    # "serviceSub":Lorg/codeaurora/ims/ImsServiceSub;
    .end local v3    # "allowVideoCallsInLowBattery":Z
    :cond_2
    goto :goto_0

    .line 112
    :cond_3
    return-void
.end method
