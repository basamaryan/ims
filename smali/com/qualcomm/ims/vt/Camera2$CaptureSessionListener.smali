.class Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "Camera2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/Camera2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureSessionListener"
.end annotation


# instance fields
.field private id:I

.field final synthetic this$0:Lcom/qualcomm/ims/vt/Camera2;


# direct methods
.method public constructor <init>(Lcom/qualcomm/ims/vt/Camera2;I)V
    .locals 0
    .param p2, "v"    # I

    .line 907
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    .line 908
    iput p2, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    .line 909
    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigureFailed: SessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GlobalSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->-$$Nest$fgetmSessionId(Lcom/qualcomm/ims/vt/Camera2;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 925
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->-$$Nest$fputmIsCreateSessionPending(Lcom/qualcomm/ims/vt/Camera2;Z)V

    .line 926
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->-$$Nest$misRequestPending(Lcom/qualcomm/ims/vt/Camera2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 927
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->-$$Nest$fgetmSessionId(Lcom/qualcomm/ims/vt/Camera2;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/Camera2;->-$$Nest$monConfigureFailed(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    .line 929
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->-$$Nest$mexectutePendingRequests(Lcom/qualcomm/ims/vt/Camera2;)V

    .line 931
    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 913
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigured: SessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " GlobalSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->-$$Nest$fgetmSessionId(Lcom/qualcomm/ims/vt/Camera2;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 914
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->-$$Nest$fputmIsCreateSessionPending(Lcom/qualcomm/ims/vt/Camera2;Z)V

    .line 915
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->-$$Nest$misRequestPending(Lcom/qualcomm/ims/vt/Camera2;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 916
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->id:I

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v1}, Lcom/qualcomm/ims/vt/Camera2;->-$$Nest$fgetmSessionId(Lcom/qualcomm/ims/vt/Camera2;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/Camera2;->-$$Nest$monConfigured(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;->this$0:Lcom/qualcomm/ims/vt/Camera2;

    invoke-static {v0}, Lcom/qualcomm/ims/vt/Camera2;->-$$Nest$mexectutePendingRequests(Lcom/qualcomm/ims/vt/Camera2;)V

    .line 920
    :cond_1
    :goto_0
    return-void
.end method
