.class public final Lorg/codeaurora/ims/EcnamInfo;
.super Ljava/lang/Object;
.source "EcnamInfo.java"


# instance fields
.field private mCardUrl:Landroid/net/Uri;

.field private mIconUrl:Landroid/net/Uri;

.field private mInfoUrl:Landroid/net/Uri;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "iconUrl"    # Landroid/net/Uri;
    .param p3, "infoUrl"    # Landroid/net/Uri;
    .param p4, "cardUrl"    # Landroid/net/Uri;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lorg/codeaurora/ims/EcnamInfo;->mName:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lorg/codeaurora/ims/EcnamInfo;->mIconUrl:Landroid/net/Uri;

    .line 32
    iput-object p3, p0, Lorg/codeaurora/ims/EcnamInfo;->mInfoUrl:Landroid/net/Uri;

    .line 33
    iput-object p4, p0, Lorg/codeaurora/ims/EcnamInfo;->mCardUrl:Landroid/net/Uri;

    .line 34
    return-void
.end method


# virtual methods
.method public getCardUrl()Landroid/net/Uri;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/codeaurora/ims/EcnamInfo;->mCardUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/codeaurora/ims/EcnamInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Landroid/net/Uri;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/codeaurora/ims/EcnamInfo;->mIconUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getInfoUrl()Landroid/net/Uri;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/codeaurora/ims/EcnamInfo;->mInfoUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lorg/codeaurora/ims/EcnamInfo;->mName:Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    :cond_0
    iget-object v1, p0, Lorg/codeaurora/ims/EcnamInfo;->mName:Ljava/lang/String;

    const-string v2, "call_ecnam_display_name"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    iget-object v1, p0, Lorg/codeaurora/ims/EcnamInfo;->mIconUrl:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 73
    const-string v2, "call_ecnam_icon"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 75
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/EcnamInfo;->mInfoUrl:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 76
    const-string v2, "call_ecnam_info"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 78
    :cond_3
    iget-object v1, p0, Lorg/codeaurora/ims/EcnamInfo;->mCardUrl:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 79
    const-string v2, "call_ecnam_card"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 81
    :cond_4
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EcnamInfo Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/EcnamInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IconUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/EcnamInfo;->mIconUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " InfoUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/EcnamInfo;->mInfoUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " CardUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/EcnamInfo;->mCardUrl:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
