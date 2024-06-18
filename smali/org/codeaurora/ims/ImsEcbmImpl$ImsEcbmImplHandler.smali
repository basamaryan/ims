.class Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;
.super Landroid/os/Handler;
.source "ImsEcbmImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsEcbmImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsEcbmImplHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsEcbmImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsEcbmImpl;)V
    .locals 1

    .line 66
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;-><init>(Lorg/codeaurora/ims/ImsEcbmImpl;Landroid/os/Looper;)V

    .line 67
    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsEcbmImpl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 69
    iput-object p1, p0, Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;->this$0:Lorg/codeaurora/ims/ImsEcbmImpl;

    .line 70
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 71
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message received: what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :pswitch_0
    const-string v0, "EVENT_EXIT_EMERGENCY_CALLBACK_MODE"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;->this$0:Lorg/codeaurora/ims/ImsEcbmImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsEcbmImpl;->-$$Nest$mcreateEcbmCallBackThread(Lorg/codeaurora/ims/ImsEcbmImpl;Z)V

    .line 85
    goto :goto_0

    .line 79
    :pswitch_1
    const-string v0, "EVENT_ENTER_EMERGENCY_CALLBACK_MODE"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lorg/codeaurora/ims/ImsEcbmImpl$ImsEcbmImplHandler;->this$0:Lorg/codeaurora/ims/ImsEcbmImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsEcbmImpl;->-$$Nest$mcreateEcbmCallBackThread(Lorg/codeaurora/ims/ImsEcbmImpl;Z)V

    .line 81
    nop

    .line 90
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
