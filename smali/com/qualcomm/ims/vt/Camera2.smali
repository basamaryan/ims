.class public Lcom/qualcomm/ims/vt/Camera2;
.super Lcom/qualcomm/ims/vt/Camera;
.source "Camera2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;
    }
.end annotation


# static fields
.field public static final AV_TIMER:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public static final CAMERA_REQUEST_START_NONE:I = 0x0

.field public static final CAMERA_REQUEST_START_PREVIEW:I = 0x1

.field public static final CAMERA_REQUEST_START_RECORDING:I = 0x2

.field public static final CAMERA_STATE_CLOSED:I = 0x0

.field public static final CAMERA_STATE_OPEN:I = 0x2

.field public static final CAMERA_STATE_OPENING:I = 0x1

.field public static final ENABLE_AV_TIMER:B = 0x1t

.field private static final GENERIC_CONSTANT_INVALID_VALUE:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Camera2"

.field private static final ZOOM_CONSTANT_NOT_SUPPORTED:I = 0x1


# instance fields
.field private mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

.field private mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraFacing:I

.field private mCameraManager:Landroid/hardware/camera2/CameraManager;

.field private mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mCropRegion:Landroid/graphics/Rect;

.field private mFps:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameSkippingRate:I

.field private mIsCreateSessionPending:Z

.field private mIsPreviewStarted:Z

.field private mIsRecordingStarted:Z

.field private mOpenState:I

.field private mPendingStartRequest:I

.field private mPreviewSize:Landroid/util/Size;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mRecordingSize:Landroid/util/Size;

.field private mRecordingSurface:Landroid/view/Surface;

.field private mSensorOrientation:I

.field private mSessionId:I

.field private mStateListener:Landroid/hardware/camera2/CameraDevice$StateCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSessionId(Lcom/qualcomm/ims/vt/Camera2;)I
    .locals 0

    iget p0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmCameraDevice(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsCreateSessionPending(Lcom/qualcomm/ims/vt/Camera2;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsCreateSessionPending:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOpenState(Lcom/qualcomm/ims/vt/Camera2;I)V
    .locals 0

    iput p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mexectutePendingRequests(Lcom/qualcomm/ims/vt/Camera2;)V
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->exectutePendingRequests()V

    return-void
.end method

.method static bridge synthetic -$$Nest$misClosed(Lcom/qualcomm/ims/vt/Camera2;)Z
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->isClosed()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misRequestPending(Lcom/qualcomm/ims/vt/Camera2;)Z
    .locals 0

    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRequestPending()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monConfigureFailed(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monConfigured(Lcom/qualcomm/ims/vt/Camera2;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 42
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v2, "org.codeaurora.qcamera3.av_timer.use_av_timer"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcom/qualcomm/ims/vt/Camera2;->AV_TIMER:Landroid/hardware/camera2/CaptureRequest$Key;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/qualcomm/ims/vt/Camera$Listener;

    .line 87
    invoke-direct {p0, p1, p2, p3}, Lcom/qualcomm/ims/vt/Camera;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSize:Landroid/util/Size;

    .line 55
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSize:Landroid/util/Size;

    .line 632
    new-instance v0, Lcom/qualcomm/ims/vt/Camera2$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/ims/vt/Camera2$1;-><init>(Lcom/qualcomm/ims/vt/Camera2;)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mStateListener:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ctor, id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSensorOrientation:I

    .line 93
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraFacing:I

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ctor: Camera sensor orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mSensorOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cameraFacing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraFacing:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    invoke-direct {v0, p1}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    .line 99
    new-instance v0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 100
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->getDefaultPreviewSize()Landroid/util/Size;

    move-result-object v1

    const/16 v2, 0x14

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;-><init>(Landroid/util/Size;II)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/qualcomm/ims/vt/Camera2;->notifyOnError(I)V

    .line 105
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->reset()V

    .line 106
    return-void
.end method

.method private abortCaptures()V
    .locals 3

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abortCaptures: Aborting captures..., id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 665
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 666
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 667
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 668
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    :cond_0
    goto :goto_0

    .line 670
    :catch_0
    move-exception v0

    .line 671
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "abortCaptures: Failed to abort capture, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    .line 675
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method

.method static adjustRotationCounterclockwise(I)I
    .locals 2
    .param p0, "rotation"    # I

    .line 808
    packed-switch p0, :pswitch_data_0

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustRotationCounterclockwise: Invalid rotation value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    return p0

    .line 816
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 814
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 812
    :pswitch_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private build(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;
    .locals 3
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            ")",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;"
        }
    .end annotation

    .line 517
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 519
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRecordingStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 520
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/hardware/camera2/CaptureRequest;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 526
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mFrameSkippingRate:I

    if-ge v1, v2, :cond_1

    .line 527
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 531
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    return-object v0
.end method

.method static calculateRotation(ILcom/qualcomm/ims/vt/Camera$ConfigIms;Z)I
    .locals 4
    .param p0, "sensorOrientation"    # I
    .param p1, "cameraConfigIms"    # Lcom/qualcomm/ims/vt/Camera$ConfigIms;
    .param p2, "isFacingFront"    # Z

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateRotation mSensorOrientation ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cameraConfigIms="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2"

    invoke-static {v1, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getOrientationMode()I

    move-result v0

    .line 829
    .local v0, "orientationMode":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 830
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculateRotation Portrait mode so rotating by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-static {p0}, Lcom/qualcomm/ims/vt/Camera2;->getOutputConfigurationRotation(I)I

    move-result v1

    return v1

    .line 832
    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 833
    invoke-static {p0, p1, p2}, Lcom/qualcomm/ims/vt/Camera2;->getCvoRotation(ILcom/qualcomm/ims/vt/Camera$ConfigIms;Z)I

    move-result v1

    return v1

    .line 834
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 835
    const-string v2, "calculateRotation Landscape mode no rotation"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private cancelSession()V
    .locals 3

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelSession: Canceling session..., id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->genSessionId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    .line 682
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 683
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 684
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 691
    :cond_0
    goto :goto_0

    .line 687
    :catch_0
    move-exception v0

    .line 688
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopSession: Failed to stop repeating session, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 689
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    .line 692
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method

.method private clearStartRequest()V
    .locals 2

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearStartRequest: request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 875
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    .line 876
    return-void
.end method

.method private computeBestFps(I)Landroid/util/Range;
    .locals 8
    .param p1, "v"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "computeBestFps "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Range;

    .line 546
    .local v0, "fpsRange":[Landroid/util/Range;, "[Landroid/util/Range<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeBestFps: Available FPS Ranges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 547
    if-eqz v0, :cond_5

    array-length v1, v0

    const/4 v2, 0x1

    if-lt v1, v2, :cond_5

    .line 551
    const/4 v1, 0x0

    aget-object v2, v0, v1

    .line 552
    .local v2, "bestFps":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 553
    .local v3, "minDelta":I
    array-length v4, v0

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    .line 554
    .local v6, "curr":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int v7, p1, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 555
    .local v7, "delta":I
    if-ge v7, v3, :cond_0

    .line 556
    move-object v2, v6

    .line 557
    move v3, v7

    .line 553
    .end local v6    # "curr":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v7    # "delta":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 561
    :cond_1
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 562
    array-length v4, v0

    :goto_1
    if-ge v1, v4, :cond_4

    aget-object v5, v0, v1

    .line 563
    .local v5, "curr":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    if-eq v6, v7, :cond_2

    goto :goto_2

    .line 564
    :cond_2
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 565
    .local v6, "delta":I
    if-ge v6, v3, :cond_3

    .line 566
    move-object v2, v5

    .line 567
    move v3, v6

    .line 562
    .end local v5    # "curr":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v6    # "delta":I
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 571
    :cond_4
    return-object v2

    .line 548
    .end local v2    # "bestFps":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .end local v3    # "minDelta":I
    :cond_5
    new-instance v1, Landroid/hardware/camera2/CameraAccessException;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v1
.end method

.method private doCreateCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    .locals 3
    .param p2, "l"    # Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/params/OutputConfiguration;",
            ">;",
            "Landroid/hardware/camera2/CameraCaptureSession$StateCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 884
    .local p1, "o":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsCreateSessionPending:Z

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 888
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    .line 893
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsCreateSessionPending:Z

    .line 894
    new-instance v0, Landroid/hardware/camera2/params/SessionConfiguration;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mContext:Landroid/content/Context;

    .line 896
    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2, p2}, Landroid/hardware/camera2/params/SessionConfiguration;-><init>(ILjava/util/List;Ljava/util/concurrent/Executor;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V

    .line 897
    .local v0, "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Landroid/hardware/camera2/params/SessionConfiguration;)V

    .line 898
    return-void

    .line 889
    .end local v0    # "sessionConfig":Landroid/hardware/camera2/params/SessionConfiguration;
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const-string v2, "Camera device is not ready (null)."

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 885
    :cond_1
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const-string v2, "Only one session request is allowed."

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private doStartPreview()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doStartPreview: surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    const-string v1, "Error preview surface is null"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 752
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->clearStartRequest()V

    .line 753
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 755
    new-array v0, v1, [Landroid/hardware/camera2/params/OutputConfiguration;

    const/4 v1, 0x0

    new-instance v2, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {v2, v3}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 758
    .local v0, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 759
    new-instance v1, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;

    iget v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    invoke-direct {v1, p0, v2}, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;-><init>(Lcom/qualcomm/ims/vt/Camera2;I)V

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->doCreateCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 763
    .end local v0    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    goto :goto_0

    .line 760
    :catch_0
    move-exception v0

    .line 761
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreview: Failed to start preview, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 762
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    .line 764
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method

.method private doStartRecording()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doStartRecording: Surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    const-string v1, "Error preview surface is null"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 770
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    const-string v1, "Error recording surface is null"

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 773
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->clearStartRequest()V

    .line 774
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 776
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mContext:Landroid/content/Context;

    const v1, 0x7f010001

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Config;->isConfigEnabled(Landroid/content/Context;I)Z

    move-result v0

    .line 778
    .local v0, "shallComputeRotation":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mSensorOrientation:I

    iget-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 779
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isFacingFront()Z

    move-result v4

    .line 778
    invoke-static {v2, v3, v4}, Lcom/qualcomm/ims/vt/Camera2;->calculateRotation(ILcom/qualcomm/ims/vt/Camera$ConfigIms;Z)I

    move-result v2

    goto :goto_0

    .line 780
    :cond_0
    move v2, v1

    :goto_0
    nop

    .line 781
    .local v2, "rotation":I
    invoke-static {v2}, Lcom/qualcomm/ims/vt/Camera2;->adjustRotationCounterclockwise(I)I

    move-result v3

    move v2, v3

    .line 782
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doStartRecording: shallComputeRotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Camera2 API rotation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 784
    new-instance v3, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v4, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    invoke-direct {v3, v4, v2}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;I)V

    .line 786
    .local v3, "recordingOutputConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/hardware/camera2/params/OutputConfiguration;

    new-instance v5, Landroid/hardware/camera2/params/OutputConfiguration;

    iget-object v6, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-direct {v5, v6}, Landroid/hardware/camera2/params/OutputConfiguration;-><init>(Landroid/view/Surface;)V

    aput-object v5, v4, v1

    const/4 v1, 0x1

    aput-object v3, v4, v1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 788
    .local v1, "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 789
    new-instance v4, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;

    iget v5, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    invoke-direct {v4, p0, v5}, Lcom/qualcomm/ims/vt/Camera2$CaptureSessionListener;-><init>(Lcom/qualcomm/ims/vt/Camera2;I)V

    invoke-direct {p0, v1, v4}, Lcom/qualcomm/ims/vt/Camera2;->doCreateCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 795
    .end local v0    # "shallComputeRotation":Z
    .end local v1    # "surfaces":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/params/OutputConfiguration;>;"
    .end local v2    # "rotation":I
    .end local v3    # "recordingOutputConfig":Landroid/hardware/camera2/params/OutputConfiguration;
    nop

    .line 796
    return-void

    .line 790
    :catch_0
    move-exception v0

    .line 791
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecording: Failed to start recording, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 792
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    .line 793
    throw v0
.end method

.method private doStartRepeating(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 695
    .local p1, "request":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 699
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 700
    .local v0, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doStartRepeating: Size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 701
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 702
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest;

    invoke-virtual {v1, v3, v2, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_0

    .line 704
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1, p1, v2, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 706
    :goto_0
    return-void

    .line 696
    .end local v0    # "size":I
    :cond_1
    new-instance v0, Lcom/qualcomm/ims/vt/Camera$CameraException;

    const-string v1, "Empty CaptureRequest"

    invoke-direct {v0, v1}, Lcom/qualcomm/ims/vt/Camera$CameraException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private exectutePendingRequests()V
    .locals 2

    .line 595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exectutePendingRequests: request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    :try_start_0
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 603
    :pswitch_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->doStartRecording()V

    goto :goto_0

    .line 600
    :pswitch_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->doStartPreview()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    nop

    .line 608
    :goto_0
    goto :goto_1

    .line 606
    :catch_0
    move-exception v0

    .line 609
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private failIfClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 972
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 974
    :cond_0
    const-string v0, "failIfClosed: Camera is closed...no operation is allowed."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 975
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0
.end method

.method private failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 979
    if-eqz p1, :cond_0

    return-void

    .line 981
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failIfSurfaceNull: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 982
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p2}, Landroid/hardware/camera2/CameraAccessException;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private genSessionId()I
    .locals 2

    .line 956
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 957
    const/4 v0, 0x0

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    .line 959
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateSessionId: SessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 960
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    return v0
.end method

.method private getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;
    .locals 2
    .param p1, "cameraId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 613
    .local p2, "key":Landroid/hardware/camera2/CameraCharacteristics$Key;, "Landroid/hardware/camera2/CameraCharacteristics$Key<TT;>;"
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    .line 614
    .local v0, "characteristics":Landroid/hardware/camera2/CameraCharacteristics;
    invoke-virtual {v0, p2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static getCvoRotation(ILcom/qualcomm/ims/vt/Camera$ConfigIms;Z)I
    .locals 6
    .param p0, "sensorOrientation"    # I
    .param p1, "cameraConfigIms"    # Lcom/qualcomm/ims/vt/Camera$ConfigIms;
    .param p2, "isFacingFront"    # Z

    .line 842
    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getHeight()I

    move-result v1

    const-string v2, "Camera2"

    if-ge v0, v1, :cond_0

    .line 843
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateRotation CVO mode and w<h so rotating by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-static {p0}, Lcom/qualcomm/ims/vt/Camera2;->getOutputConfigurationRotation(I)I

    move-result v0

    return v0

    .line 850
    :cond_0
    add-int/lit8 v0, p0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    .line 851
    .local v0, "rotationFront":I
    add-int/lit16 v1, p0, 0x10e

    rem-int/lit16 v1, v1, 0x168

    .line 852
    .local v1, "rotationBack":I
    if-eqz p2, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    .line 853
    .local v3, "rotation":I
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "calculateRotation CVO mode and w>=h so rotating by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-static {v3}, Lcom/qualcomm/ims/vt/Camera2;->getOutputConfigurationRotation(I)I

    move-result v2

    return v2
.end method

.method private getDefaultPreviewSize()Landroid/util/Size;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 330
    .local v0, "map":Landroid/hardware/camera2/params/StreamConfigurationMap;
    const-class v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    return-object v1
.end method

.method static getOutputConfigurationRotation(I)I
    .locals 1
    .param p0, "angle"    # I

    .line 859
    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    .line 869
    return v0

    .line 867
    :sswitch_0
    const/4 v0, 0x3

    return v0

    .line 865
    :sswitch_1
    const/4 v0, 0x2

    return v0

    .line 863
    :sswitch_2
    const/4 v0, 0x1

    return v0

    .line 861
    :sswitch_3
    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x5a -> :sswitch_2
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_0
    .end sparse-switch
.end method

.method private isClosed()Z
    .locals 1

    .line 968
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOpened()Z
    .locals 2

    .line 901
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOpening()Z
    .locals 2

    .line 964
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isRequestPending()Z
    .locals 1

    .line 952
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSupported(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Z
    .locals 2
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;)Z"
        }
    .end annotation

    .line 622
    .local p2, "key":Landroid/hardware/camera2/CaptureRequest$Key;, "Landroid/hardware/camera2/CaptureRequest$Key<*>;"
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    const/4 v0, 0x1

    return v0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1
.end method

.method private onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 947
    const-string v0, "onConfigureFailed: onConfigureFailed."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 948
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    .line 949
    return-void
.end method

.method private onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .param p1, "session"    # Landroid/hardware/camera2/CameraCaptureSession;

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigured: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 936
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 938
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    if-eqz v0, :cond_0

    .line 939
    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->updateParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 940
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->build(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->startRepeating(Ljava/util/List;)V

    goto :goto_0

    .line 942
    :cond_0
    const-string v0, "onConfigured: Builder is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 944
    :goto_0
    return-void
.end method

.method private reset()V
    .locals 2

    .line 162
    const-string v0, "reset"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    .line 165
    const/4 v1, 0x0

    iput v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    .line 166
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    .line 167
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsRecordingStarted:Z

    .line 168
    iput v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    .line 169
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    .line 170
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    .line 171
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mFps:Landroid/util/Range;

    .line 172
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCropRegion:Landroid/graphics/Rect;

    .line 173
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 174
    iput v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    .line 175
    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsCreateSessionPending:Z

    .line 176
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSize:Landroid/util/Size;

    .line 177
    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSize:Landroid/util/Size;

    .line 178
    return-void
.end method

.method private restartRepeating(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)V"
        }
    .end annotation

    .line 727
    .local p1, "request":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restartRepeating: Re-starting session... id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 731
    const-string v0, "restartRepeating: Stopping repeating session..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 732
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 733
    const-string v0, "restartRepeating: Starting repeating session..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 734
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->doStartRepeating(Ljava/util/List;)V

    goto :goto_0

    .line 736
    :cond_0
    const-string v0, "restartRepeating: Session is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :goto_0
    goto :goto_1

    .line 738
    :catch_0
    move-exception v0

    .line 739
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restartRepeating: Failed to start restart repeating session Ex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 741
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    .line 744
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_1
    return-void
.end method

.method private shallDefer()Z
    .locals 1

    .line 879
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsCreateSessionPending:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private startRepeating(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest;",
            ">;)V"
        }
    .end annotation

    .line 709
    .local p1, "request":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/camera2/CaptureRequest;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRepeating: Starting session..., id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    .line 712
    const-string v0, "startRepeating: Session is null."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 713
    return-void

    .line 717
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRepeating: session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/Camera2;->doStartRepeating(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    goto :goto_0

    .line 719
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRepeating: Failed to start repeating session, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 721
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->close()V

    .line 724
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method

.method private updateParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 3
    .param p1, "builder"    # Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 575
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 577
    sget-object v0, Lcom/qualcomm/ims/vt/Camera2;->AV_TIMER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/ims/vt/Camera2;->isSupported(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CaptureRequest$Key;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 578
    const-string v2, "Enabling AV timer..."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 579
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mFps:Landroid/util/Range;

    if-eqz v0, :cond_1

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting FPS_RANGE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mFps:Landroid/util/Range;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 584
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mFps:Landroid/util/Range;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCropRegion:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting CROP_REGION="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 589
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCropRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 592
    :cond_2
    return-void
.end method


# virtual methods
.method public canReconfigureWithActiveSession(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)Z
    .locals 1
    .param p1, "cfg"    # Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 246
    const-string v0, "can not Reconfigure With Active Session!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 3

    .line 140
    const-string v0, "close"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    :try_start_0
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close: Failed to close camera preview/recording, exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_1

    .line 153
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->close()V

    .line 158
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->reset()V

    .line 159
    return-void
.end method

.method public getMaxZoom()F
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 299
    .local v0, "maxZoom":F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxZoom: maxZoom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    return v0

    .line 301
    .end local v0    # "maxZoom":F
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxZoom: Failed to retrieve Max Zoom, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 303
    throw v0
.end method

.method public getMinZoom()F
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 312
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    const/4 v0, 0x1

    .line 316
    .local v0, "ZOOM_MIN_VALUE":I
    const/high16 v1, 0x3f800000    # 1.0f

    return v1

    .line 313
    .end local v0    # "ZOOM_MIN_VALUE":I
    :cond_0
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0
.end method

.method public getPreviewSize()Landroid/util/Size;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getSize()Landroid/util/Size;

    move-result-object v0

    return-object v0
.end method

.method public getSensorOrientation()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 473
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public isFacingFront()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 288
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraFacing:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 449
    iget v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreviewStarted()Z
    .locals 1

    .line 457
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    return v0
.end method

.method public isRecordingStarted()Z
    .locals 1

    .line 465
    iget-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsRecordingStarted:Z

    return v0
.end method

.method public isRestartNeededOnPreviewSurfaceSizeChanged(Landroid/view/Surface;)Z
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 224
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    .line 225
    .local v0, "size":Landroid/util/Size;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "native size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " previewSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSize:Landroid/util/Size;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ro.miui.google.csp"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public isRestartNeededOnRecordingSurfaceSizeChanged(Landroid/view/Surface;)Z
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;

    .line 234
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSize:Landroid/util/Size;

    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRecordingStarted()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    .line 239
    .local v0, "size":Landroid/util/Size;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new recording size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cached recording size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSize:Landroid/util/Size;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSize:Landroid/util/Size;

    invoke-virtual {v1, v0}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1

    .line 236
    .end local v0    # "size":Landroid/util/Size;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isZoomSupported()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 280
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getMaxZoom()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public open()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 113
    const-string v0, "open"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 116
    .local v0, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open: Available camera IDs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open: camera is already opened, state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    return-void

    .line 125
    :cond_0
    const/4 v1, 0x1

    :try_start_0
    iput v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    .line 126
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mStateListener:Landroid/hardware/camera2/CameraDevice$StateCallback;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 127
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->open()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    nop

    .line 133
    return-void

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "open: Failed to open camera, id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    const/4 v2, 0x0

    iput v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mOpenState:I

    .line 131
    throw v1

    .line 118
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_1
    new-instance v1, Lcom/qualcomm/ims/vt/Camera$CameraException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect id, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/qualcomm/ims/vt/Camera$CameraException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public reconfigure(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)V
    .locals 2
    .param p1, "cfg"    # Lcom/qualcomm/ims/vt/Camera$ConfigIms;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reconfigure "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->failIfClosed()V

    .line 258
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 259
    iget v0, p1, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->fps:I

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->computeBestFps(I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mFps:Landroid/util/Range;

    .line 261
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->updateParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 263
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->build(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->restartRepeating(Ljava/util/List;)V

    goto :goto_0

    .line 265
    :cond_0
    const-string v0, "Reconfiguration is deferred."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    :goto_0
    return-void
.end method

.method public setRecorderFrameRate(I)V
    .locals 2
    .param p1, "rate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 482
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getFps()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 483
    const-string v0, "setRecorderFrameRate: Frame rate is greater than max allowed."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getFps()I

    move-result v0

    div-int/2addr v0, p1

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mFrameSkippingRate:I

    .line 489
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->shallDefer()Z

    move-result v0

    const-string v1, "setRecorderFrameRate: Deferred."

    if-eqz v0, :cond_1

    .line 490
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    return-void

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRecordingStarted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 496
    const-string v0, "setRecorderFrameRate: Deferred. Recording has not started."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    return-void

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_3

    .line 501
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->updateParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 502
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->build(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->restartRepeating(Ljava/util/List;)V

    goto :goto_0

    .line 504
    :cond_3
    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    :goto_0
    return-void
.end method

.method public setZoom(F)V
    .locals 10
    .param p1, "v"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoom "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->failIfClosed()V

    .line 188
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getMinZoom()F

    move-result v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->getMaxZoom()F

    move-result v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraId:Ljava/lang/String;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, v0, v1}, Lcom/qualcomm/ims/vt/Camera2;->getCameraCharacteristic(Ljava/lang/String;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 195
    .local v0, "activeRegion":Landroid/graphics/Rect;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoom: ActiveArraySize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 200
    .local v1, "cropRegion":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 201
    .local v2, "xCenter":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    .line 206
    .local v3, "yCenter":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, p1, v5

    div-float/2addr v4, v6

    float-to-int v4, v4

    .line 207
    .local v4, "xDelta":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, p1

    div-float/2addr v6, v5

    float-to-int v5, v6

    .line 210
    .local v5, "yDelta":I
    sub-int v6, v2, v4

    sub-int v7, v3, v5

    add-int v8, v2, v4

    add-int v9, v3, v5

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setZoom: CropRegionSize="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iput-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mCropRegion:Landroid/graphics/Rect;

    .line 214
    iget-object v6, p0, Lcom/qualcomm/ims/vt/Camera2;->mCameraSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v6, :cond_0

    .line 215
    iget-object v6, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v6}, Lcom/qualcomm/ims/vt/Camera2;->updateParams(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 216
    iget-object v6, p0, Lcom/qualcomm/ims/vt/Camera2;->mCaptureBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-direct {p0, v6}, Lcom/qualcomm/ims/vt/Camera2;->build(Landroid/hardware/camera2/CaptureRequest$Builder;)Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qualcomm/ims/vt/Camera2;->restartRepeating(Ljava/util/List;)V

    goto :goto_0

    .line 218
    :cond_0
    const-string v6, "Setting zoom is deferred."

    invoke-static {p0, v6}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    :goto_0
    return-void

    .line 189
    .end local v0    # "activeRegion":Landroid/graphics/Rect;
    .end local v1    # "cropRegion":Landroid/graphics/Rect;
    .end local v2    # "xCenter":I
    .end local v3    # "yCenter":I
    .end local v4    # "xDelta":I
    .end local v5    # "yDelta":I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoom: incorrect zoom value. v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    new-instance v0, Landroid/hardware/camera2/CameraAccessException;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/camera2/CameraAccessException;-><init>(I)V

    throw v0
.end method

.method public startPreview(Landroid/view/Surface;)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPreview, surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isPreviewStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const-string v0, "startPreview: Preview has already started."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    return-void

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->failIfClosed()V

    .line 346
    const-string v0, "Error preview surface is null"

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 348
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSize:Landroid/util/Size;

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startPreview: cached preview size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    .line 352
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->genSessionId()I

    move-result v1

    iput v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    .line 354
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->shallDefer()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreview: Deferring startPreview request, currRequest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    goto :goto_0

    .line 359
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->doStartPreview()V

    .line 361
    :goto_0
    return-void
.end method

.method public startRecording(Landroid/view/Surface;Landroid/view/Surface;)V
    .locals 2
    .param p1, "previewSurface"    # Landroid/view/Surface;
    .param p2, "recordingSurface"    # Landroid/view/Surface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecording: PreviewSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " RecordingSurface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRecordingStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    const-string v0, "startRecording: Recording has already started."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    return-void

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->failIfClosed()V

    .line 399
    const-string v0, "Error preview surface is null"

    invoke-direct {p0, p1, v0}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 400
    const-string v0, "Error recording surface is null"

    invoke-direct {p0, p2, v0}, Lcom/qualcomm/ims/vt/Camera2;->failIfSurfaceNull(Landroid/view/Surface;Ljava/lang/String;)V

    .line 403
    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSize:Landroid/util/Size;

    .line 404
    invoke-static {p2}, Lcom/qualcomm/ims/vt/ImsMedia;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSize:Landroid/util/Size;

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecording: preview size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " recording size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSize:Landroid/util/Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    iput-object p2, p0, Lcom/qualcomm/ims/vt/Camera2;->mRecordingSurface:Landroid/view/Surface;

    .line 408
    iput-object p1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    .line 409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsRecordingStarted:Z

    .line 410
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->genSessionId()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mSessionId:I

    .line 412
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->shallDefer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecording: Deferring startRecording request, currRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 415
    const/4 v0, 0x2

    iput v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPendingStartRequest:I

    goto :goto_0

    .line 417
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->doStartRecording()V

    .line 419
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->onRecordingStarted()V

    .line 420
    return-void
.end method

.method public stopPreview()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 368
    const-string v0, "stopPreview"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRecordingStarted()Z

    move-result v0

    .line 371
    .local v0, "isRecordingStarted":Z
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 372
    return-void

    .line 375
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsRecordingStarted:Z

    iput-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    .line 376
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->clearStartRequest()V

    .line 377
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->cancelSession()V

    .line 379
    if-eqz v0, :cond_1

    .line 380
    iget-object v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->onRecordingStopped()V

    .line 382
    :cond_1
    return-void
.end method

.method public stopRecording()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 427
    const-string v0, "stopRecording"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/Camera2;->isRecordingStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 430
    return-void

    .line 433
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsRecordingStarted:Z

    .line 434
    iget-boolean v1, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    if-eqz v1, :cond_1

    .line 435
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mIsPreviewStarted:Z

    .line 436
    const-string v0, "stopRecording: reset preview flag"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/Camera2;->startPreview(Landroid/view/Surface;)V

    goto :goto_0

    .line 439
    :cond_1
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/Camera2;->cancelSession()V

    .line 441
    :goto_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/Camera2;->mActionSoundHelper:Lcom/qualcomm/ims/vt/CameraActionSoundHelper;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/CameraActionSoundHelper;->onRecordingStopped()V

    .line 442
    return-void
.end method
