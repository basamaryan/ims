.class public Lcom/qualcomm/ims/vt/CameraActionSoundHelper;
.super Ljava/lang/Object;
.source "CameraActionSoundHelper.java"


# instance fields
.field mActionSound:Landroid/media/MediaActionSound;

.field private mCompletableFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    if-nez p1, :cond_0

    .line 34
    const-string v0, "Ctor: Context is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    return-void

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private isSoundActionLoaded()Z
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mCompletableFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mCompletableFuture:Ljava/util/concurrent/CompletableFuture;

    .line 119
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isCompletedExceptionally()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mCompletableFuture:Ljava/util/concurrent/CompletableFuture;

    .line 120
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 118
    :goto_0
    return v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_0

    .line 72
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mCompletableFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mCompletableFuture:Ljava/util/concurrent/CompletableFuture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/util/concurrent/CancellationException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/concurrent/CancellationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .end local v0    # "e":Ljava/util/concurrent/CancellationException;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mCompletableFuture:Ljava/util/concurrent/CompletableFuture;

    .line 84
    const-string v1, "close: Releasing resources"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    invoke-virtual {v1}, Landroid/media/MediaActionSound;->release()V

    .line 86
    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    .line 87
    return-void
.end method

.method synthetic lambda$open$0$com-qualcomm-ims-vt-CameraActionSoundHelper()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 60
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->load(I)V

    .line 61
    return-void
.end method

.method public onRecordingStarted()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->isSoundActionLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    const-string v0, "onRecordingStarted:"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 101
    return-void

    .line 96
    :cond_1
    :goto_0
    return-void
.end method

.method public onRecordingStopped()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->isSoundActionLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    const-string v0, "onRecordingStopped:"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaActionSound;->play(I)V

    .line 115
    return-void

    .line 110
    :cond_1
    :goto_0
    return-void
.end method

.method public open()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mContext:Landroid/content/Context;

    const v1, 0x7f010002

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Config;->isConfigEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 48
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Landroid/media/MediaActionSound;

    invoke-direct {v0}, Landroid/media/MediaActionSound;-><init>()V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mActionSound:Landroid/media/MediaActionSound;

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mCompletableFuture:Ljava/util/concurrent/CompletableFuture;

    if-nez v0, :cond_2

    .line 56
    const-string v0, "open: Loading media files."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper$$ExternalSyntheticLambda0;-><init>(Lcom/qualcomm/ims/vt/CameraActionSoundHelper;)V

    .line 58
    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->mCompletableFuture:Ljava/util/concurrent/CompletableFuture;

    .line 63
    :cond_2
    return-void
.end method
