.class public Lcom/qualcomm/ims/utils/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDeviceScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 19
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 20
    return-object v0

    .line 22
    :cond_0
    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 23
    .local v1, "windowManager":Landroid/view/WindowManager;
    if-nez v1, :cond_1

    .line 24
    return-object v0

    .line 26
    :cond_1
    invoke-interface {v1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    .line 27
    .local v2, "metrics":Landroid/view/WindowMetrics;
    if-nez v2, :cond_2

    .line 28
    return-object v0

    .line 31
    :cond_2
    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 32
    .local v0, "bounds":Landroid/graphics/Rect;
    new-instance v3, Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    .line 33
    .local v3, "legacySize":Landroid/graphics/Point;
    return-object v3
.end method
