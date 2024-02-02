.class public final Lorg/codeaurora/ims/GeoLocationInfo;
.super Ljava/lang/Object;
.source "GeoLocationInfo.java"


# instance fields
.field private mLatitude:D

.field private mLongitude:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lorg/codeaurora/ims/GeoLocationInfo;->mLatitude:D

    .line 28
    iput-wide p3, p0, Lorg/codeaurora/ims/GeoLocationInfo;->mLongitude:D

    .line 29
    return-void
.end method


# virtual methods
.method public getLat()D
    .locals 2

    .line 32
    iget-wide v0, p0, Lorg/codeaurora/ims/GeoLocationInfo;->mLatitude:D

    return-wide v0
.end method

.method public getLon()D
    .locals 2

    .line 36
    iget-wide v0, p0, Lorg/codeaurora/ims/GeoLocationInfo;->mLongitude:D

    return-wide v0
.end method
