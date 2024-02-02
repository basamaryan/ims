.class Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;
.super Landroid/os/Handler;
.source "ImsUssdSessionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsUssdSessionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImsSessionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;->this$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;

    .line 139
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 140
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 144
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

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 150
    :pswitch_0
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;->this$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;

    invoke-static {v0}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->-$$Nest$mdoClose(Lorg/codeaurora/ims/ImsUssdSessionImpl;)V

    .line 151
    goto :goto_0

    .line 159
    :pswitch_1
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;->this$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->-$$Nest$monUssdMessageReceived(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    goto :goto_0

    .line 156
    :pswitch_2
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;->this$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->-$$Nest$monCancelUssd(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 157
    goto :goto_0

    .line 153
    :pswitch_3
    iget-object v0, p0, Lorg/codeaurora/ims/ImsUssdSessionImpl$ImsSessionHandler;->this$0:Lorg/codeaurora/ims/ImsUssdSessionImpl;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/codeaurora/telephony/utils/AsyncResult;

    invoke-static {v0, v1}, Lorg/codeaurora/ims/ImsUssdSessionImpl;->-$$Nest$mOnUssdSentResponse(Lorg/codeaurora/ims/ImsUssdSessionImpl;Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 154
    nop

    .line 162
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
