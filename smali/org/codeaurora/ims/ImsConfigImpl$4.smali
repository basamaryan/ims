.class Lorg/codeaurora/ims/ImsConfigImpl$4;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
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

    .line 132
    iput-object p1, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 7

    .line 135
    iget-object v0, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubscriptionManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmServiceSub(Lorg/codeaurora/ims/ImsConfigImpl;)Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsServiceSub;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 137
    .local v0, "subInfo":Landroid/telephony/SubscriptionInfo;
    if-nez v0, :cond_0

    .line 138
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    const-string v2, "onSubscriptionsChanged unable to process due to SubscriptionInfo is null"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v1, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$mclearSubscriptionCache(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 141
    return-void

    .line 144
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 145
    .local v1, "subId":I
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSubscriptionsChanged oldSubId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " new SubId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v2

    if-eq v2, v1, :cond_3

    .line 148
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$mclearSubscriptionCache(Lorg/codeaurora/ims/ImsConfigImpl;)V

    .line 149
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2, v1}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fputmSubId(Lorg/codeaurora/ims/ImsConfigImpl;I)V

    .line 150
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubscriptionManager(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 151
    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    .line 155
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fputmImsMmTelManager(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/telephony/ims/ImsMmTelManager;)V

    .line 156
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    sget-object v3, Landroid/telephony/SubscriptionManager;->WFC_MODE_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v6}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fputmWfcModeUri(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/net/Uri;)V

    .line 158
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    sget-object v3, Landroid/telephony/SubscriptionManager;->WFC_ROAMING_MODE_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v5}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmSubId(Lorg/codeaurora/ims/ImsConfigImpl;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fputmWfcRoamingModeUri(Lorg/codeaurora/ims/ImsConfigImpl;Landroid/net/Uri;)V

    .line 160
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmWfcModeUri(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmVoWiFiModeObserver(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 162
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmContext(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v3}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmWfcRoamingModeUri(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fgetmVoWiFiRoamingModeObserver(Lorg/codeaurora/ims/ImsConfigImpl;)Landroid/database/ContentObserver;

    move-result-object v4

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    invoke-static {v2, v5}, Lorg/codeaurora/ims/ImsConfigImpl;->-$$Nest$fputmIsContentObserversRegistered(Lorg/codeaurora/ims/ImsConfigImpl;Z)V

    goto :goto_1

    .line 152
    :cond_2
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsConfigImpl$4;->this$0:Lorg/codeaurora/ims/ImsConfigImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid subscription id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    return-void

    .line 166
    :cond_3
    :goto_1
    return-void
.end method
