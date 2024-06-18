.class public Lorg/codeaurora/ims/QtiImsExtService;
.super Landroid/app/Service;
.source "QtiImsExtService.java"


# instance fields
.field private mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private createQtiImsExt()V
    .locals 2

    .line 31
    invoke-static {}, Lorg/codeaurora/ims/ImsService;->getServiceSubs()Ljava/util/List;

    move-result-object v0

    .line 32
    .local v0, "imsServiceSubs":Ljava/util/List;, "Ljava/util/List<Lorg/codeaurora/ims/ImsServiceSub;>;"
    if-eqz v0, :cond_0

    .line 33
    new-instance v1, Lorg/codeaurora/ims/QtiImsExt;

    invoke-direct {v1, p0, v0}, Lorg/codeaurora/ims/QtiImsExt;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lorg/codeaurora/ims/QtiImsExtService;->mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

    .line 35
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtService;->startImsService()V

    goto :goto_0

    .line 37
    :cond_0
    const-string v1, "QtiImsExtService, ImsService is not yet started retry."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    :goto_0
    return-void
.end method

.method private startImsService()V
    .locals 2

    .line 42
    const-string v0, "startImsService:"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/codeaurora/ims/ImsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/QtiImsExtService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 44
    return-void
.end method

.method private stopImsService()V
    .locals 2

    .line 47
    const-string v0, "stopImsService:"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/codeaurora/ims/ImsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/QtiImsExtService;->stopService(Landroid/content/Intent;)Z

    .line 49
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/QtiImsExtService;->mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtService;->mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtService;->createQtiImsExt()V

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/codeaurora/ims/QtiImsExtService;->mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

    if-nez v0, :cond_1

    .line 58
    const-string v0, "onBind returned null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x0

    return-object v0

    .line 61
    :cond_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/QtiImsExt;->getBinder()Lorg/codeaurora/ims/QtiImsExtBase$QtiImsExtBinder;

    move-result-object v0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 24
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 25
    const-string v0, "QtiImsExtService created!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtService;->createQtiImsExt()V

    .line 28
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 66
    const-string v0, "onDestroy:"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codeaurora/ims/QtiImsExtService;->mQtiImsExt:Lorg/codeaurora/ims/QtiImsExt;

    .line 68
    invoke-direct {p0}, Lorg/codeaurora/ims/QtiImsExtService;->stopImsService()V

    .line 69
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 70
    return-void
.end method
