.class public interface abstract Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
.super Ljava/lang/Object;
.source "ImsMedia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/ims/vt/ImsMedia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraListener"
.end annotation


# virtual methods
.method public abstract onCameraConfigChanged(IIIILandroid/view/Surface;I)V
.end method

.method public abstract onRecordingDisabled(I)V
.end method

.method public abstract onRecordingEnabled(I)V
.end method

.method public abstract onUpdateRecorderFrameRate(II)V
.end method
