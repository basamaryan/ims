.class public Lorg/codeaurora/ims/QImsCallProfile;
.super Ljava/lang/Object;
.source "QImsCallProfile.java"


# instance fields
.field private mCallProfile:Landroid/telephony/ims/ImsCallProfile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsCallProfile;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 25
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 29
    return-void
.end method

.method public constructor <init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .param p1, "serviceType"    # I
    .param p2, "callType"    # I
    .param p3, "callExtras"    # Landroid/os/Bundle;
    .param p4, "mediaProfile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/telephony/ims/ImsCallProfile;-><init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    iput-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 35
    return-void
.end method


# virtual methods
.method public getCallExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallExtraBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 156
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 157
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallExtras()Landroid/os/Bundle;
    .locals 2

    .line 143
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCallType()I
    .locals 2

    .line 125
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v1

    monitor-exit v0

    return v1

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsStreamMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getServiceType()I
    .locals 2

    .line 131
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 132
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v1

    monitor-exit v0

    return v1

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public newImsCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p0, v0}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    return-object v0
.end method

.method public newImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;
    .locals 5
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 45
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getServiceType()I

    move-result v1

    .line 46
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallType()I

    move-result v2

    .line 47
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object v3

    .line 48
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/codeaurora/ims/QImsCallProfile;->newImsStreamMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 49
    .local v0, "newImsCallProfile":Landroid/telephony/ims/ImsCallProfile;
    nop

    .line 50
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getCallerNumberVerificationStatus()I

    move-result v1

    .line 49
    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 51
    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getRestrictCause()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallRestrictCause(I)V

    .line 52
    return-object v0
.end method

.method public newImsStreamMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 7
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 57
    new-instance v6, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v1

    .line 58
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioDirection()I

    move-result v2

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoQuality()I

    move-result v3

    .line 59
    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getVideoDirection()I

    move-result v4

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>(IIIII)V

    .line 57
    return-object v6
.end method

.method public removeExtras(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p1, "extras":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/QImsCallProfile;->getCallExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 163
    .local v1, "callExtras":Landroid/os/Bundle;
    if-nez p1, :cond_0

    .line 164
    monitor-exit v0

    return-void

    .line 166
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 167
    .local v3, "extra":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 168
    .end local v3    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 169
    .end local v1    # "callExtras":Landroid/os/Bundle;
    :cond_1
    monitor-exit v0

    .line 170
    return-void

    .line 169
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCallExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    monitor-exit v0

    .line 98
    return-void

    .line 97
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCallExtraBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 101
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCallExtraInt(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 107
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1, p2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 109
    monitor-exit v0

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCallRestrictCause(I)V
    .locals 2
    .param p1, "cause"    # I

    .line 113
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 114
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallRestrictCause(I)V

    .line 115
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCallerNumberVerificationStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .line 119
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 121
    monitor-exit v0

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 174
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 176
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateCallType(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 87
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 88
    if-eqz p1, :cond_0

    .line 89
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallProfile;->updateCallType(Landroid/telephony/ims/ImsCallProfile;)V

    .line 91
    :cond_0
    monitor-exit v0

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateMediaProfile(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 71
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 72
    if-eqz p1, :cond_0

    .line 73
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/codeaurora/ims/QImsCallProfile;->newImsStreamMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    iput-object v2, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 75
    :cond_0
    monitor-exit v0

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .param p1, "profile"    # Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 79
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 80
    if-eqz p1, :cond_0

    .line 81
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsStreamMediaProfile(Landroid/telephony/ims/ImsStreamMediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    iput-object v2, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 83
    :cond_0
    monitor-exit v0

    .line 84
    return-void

    .line 83
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateProfile(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .param p1, "profile"    # Landroid/telephony/ims/ImsCallProfile;

    .line 63
    iget-object v0, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    monitor-enter v0

    .line 64
    if-eqz p1, :cond_0

    .line 65
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/QImsCallProfile;->newImsCallProfile(Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/QImsCallProfile;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 67
    :cond_0
    monitor-exit v0

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
