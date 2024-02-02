.class Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;
.super Landroid/os/Handler;
.source "ImsSenderRxr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/codeaurora/ims/ImsSenderRxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsRadioHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/codeaurora/ims/ImsSenderRxr;


# direct methods
.method constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;)V
    .locals 1
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsSenderRxr;

    .line 698
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;-><init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V

    .line 699
    return-void
.end method

.method constructor <init>(Lorg/codeaurora/ims/ImsSenderRxr;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/codeaurora/ims/ImsSenderRxr;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 701
    iput-object p1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    .line 702
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 703
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 708
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/codeaurora/ims/IFRequest;

    .line 710
    .local v0, "rr":Lorg/codeaurora/ims/IFRequest;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_2

    .line 723
    :pswitch_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v1, v1, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 724
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 726
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v2, v2, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    if-eqz v2, :cond_1

    .line 727
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Number of messages still waiting for response "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget v3, v3, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " at TIMEOUT. Reset to 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    const/4 v3, 0x0

    iput v3, v2, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestMessagesWaiting:I

    .line 732
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 733
    :try_start_1
    iget-object v3, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v3, v3, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 734
    .local v3, "count":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WAKE_LOCK_TIMEOUT  mRequestList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 737
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 738
    iget-object v5, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v5, v5, Lorg/codeaurora/ims/ImsSenderRxr;->mRequestsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/codeaurora/ims/IFRequest;

    move-object v0, v5

    .line 739
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lorg/codeaurora/ims/IFRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lorg/codeaurora/ims/IFRequest;->mRequest:I

    .line 740
    invoke-static {v6}, Lorg/codeaurora/ims/ImsSenderRxr;->msgIdToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 739
    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 737
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 742
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_0
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "rr":Lorg/codeaurora/ims/IFRequest;
    .end local p0    # "this":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_2
    throw v3

    .line 744
    .restart local v0    # "rr":Lorg/codeaurora/ims/IFRequest;
    .restart local p0    # "this":Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :cond_1
    :goto_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsSenderRxr$ImsRadioHandler;->this$0:Lorg/codeaurora/ims/ImsSenderRxr;

    iget-object v2, v2, Lorg/codeaurora/ims/ImsSenderRxr;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 746
    :cond_2
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 749
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
