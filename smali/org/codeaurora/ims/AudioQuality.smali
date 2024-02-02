.class public final Lorg/codeaurora/ims/AudioQuality;
.super Ljava/lang/Object;
.source "AudioQuality.java"


# static fields
.field public static final INVALID:I = -0x1


# instance fields
.field private mCodec:I

.field private mComputedAudioQuality:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/AudioQuality;->mCodec:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/AudioQuality;->mComputedAudioQuality:I

    .line 28
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "codec"    # I
    .param p2, "computedAudioQuality"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/AudioQuality;->mCodec:I

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lorg/codeaurora/ims/AudioQuality;->mComputedAudioQuality:I

    .line 40
    iput p1, p0, Lorg/codeaurora/ims/AudioQuality;->mCodec:I

    .line 41
    iput p2, p0, Lorg/codeaurora/ims/AudioQuality;->mComputedAudioQuality:I

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/AudioQuality;)V
    .locals 2
    .param p1, "audioQuality"    # Lorg/codeaurora/ims/AudioQuality;

    .line 36
    invoke-virtual {p1}, Lorg/codeaurora/ims/AudioQuality;->getCodec()I

    move-result v0

    invoke-virtual {p1}, Lorg/codeaurora/ims/AudioQuality;->getComputedAudioQuality()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/codeaurora/ims/AudioQuality;-><init>(II)V

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 64
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 65
    return v0

    .line 67
    :cond_0
    instance-of v1, p1, Lorg/codeaurora/ims/AudioQuality;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 68
    return v2

    .line 70
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/codeaurora/ims/AudioQuality;

    .line 71
    .local v1, "in":Lorg/codeaurora/ims/AudioQuality;
    iget v3, p0, Lorg/codeaurora/ims/AudioQuality;->mCodec:I

    invoke-virtual {v1}, Lorg/codeaurora/ims/AudioQuality;->getCodec()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/codeaurora/ims/AudioQuality;->mComputedAudioQuality:I

    .line 72
    invoke-virtual {v1}, Lorg/codeaurora/ims/AudioQuality;->getComputedAudioQuality()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 71
    :goto_0
    return v0
.end method

.method public getCodec()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/codeaurora/ims/AudioQuality;->mCodec:I

    return v0
.end method

.method public getComputedAudioQuality()I
    .locals 1

    .line 59
    iget v0, p0, Lorg/codeaurora/ims/AudioQuality;->mComputedAudioQuality:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioQuality codec : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/AudioQuality;->mCodec:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " computed audio quality : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/AudioQuality;->mComputedAudioQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
