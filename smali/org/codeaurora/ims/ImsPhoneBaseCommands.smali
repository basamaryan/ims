.class public abstract Lorg/codeaurora/ims/ImsPhoneBaseCommands;
.super Ljava/lang/Object;
.source "ImsPhoneBaseCommands.java"

# interfaces
.implements Lorg/codeaurora/ims/ImsPhoneCommandsInterface;


# instance fields
.field protected mAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mCallStateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mContext:Landroid/content/Context;

.field protected mEmergencyCallbackModeRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

.field protected mExitEmergencyCallbackModeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mImsNetworkStateChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mNotAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected mOffOrNotAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mOnRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mPhoneType:I

.field protected mPreAlertingCallInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mRadioStateChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mRefreshViceInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mRingRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

.field protected mRingbackToneRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

.field protected mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

.field protected mStateMonitor:Ljava/lang/Object;

.field protected mVoicePrivacyOffRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

.field protected mVoicePrivacyOnRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    .line 73
    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mContext:Landroid/content/Context;

    .line 75
    if-eqz p1, :cond_1

    .line 76
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 77
    .local v0, "pm":Landroid/os/PowerManager;
    if-eqz v0, :cond_0

    .line 78
    const/4 v1, 0x1

    const-string v2, "NotifyRegistrantLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 80
    if-eqz v1, :cond_0

    .line 81
    const-string v1, "Constructor: wakelock initialised"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 85
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    goto :goto_0

    .line 86
    :cond_1
    const-string v0, "Constructor: Context is null"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    :goto_0
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRadioStateChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 90
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOnRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 91
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 92
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOffOrNotAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 93
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 94
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mCallStateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 95
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mImsNetworkStateChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 96
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mVoicePrivacyOnRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 97
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mVoicePrivacyOffRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 98
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRingbackToneRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 99
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mExitEmergencyCallbackModeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 100
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRefreshViceInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 101
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrantList;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/WakeLockRegistrantList;-><init>(Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mPreAlertingCallInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    .line 102
    return-void
.end method


# virtual methods
.method public deregisterForPreAlertingCallInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 363
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mPreAlertingCallInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 364
    return-void
.end method

.method public getRadioState()Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    return-object v0
.end method

.method protected onRadioAvailable()V
    .locals 0

    .line 344
    return-void
.end method

.method public registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 159
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 161
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v2, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 164
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    new-instance v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 167
    :cond_0
    monitor-exit v1

    .line 168
    return-void

    .line 167
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerForCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 218
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 220
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mCallStateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 221
    return-void
.end method

.method public registerForExitEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 288
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 289
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mExitEmergencyCallbackModeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 290
    return-void
.end method

.method public registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 129
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 130
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mImsNetworkStateChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 131
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 266
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 267
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mVoicePrivacyOffRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 268
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 255
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 256
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mVoicePrivacyOnRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 257
    return-void
.end method

.method public registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 179
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 181
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 182
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v2, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 184
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    new-instance v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 187
    :cond_0
    monitor-exit v1

    .line 188
    return-void

    .line 187
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 199
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 201
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOffOrNotAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v2, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 204
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    sget-object v3, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->RADIO_OFF:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 205
    :cond_0
    new-instance v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 207
    :cond_1
    monitor-exit v1

    .line 208
    return-void

    .line 207
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 139
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 141
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 142
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOnRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v2, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 144
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    new-instance v2, Lorg/codeaurora/telephony/utils/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Lorg/codeaurora/telephony/utils/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v2}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant(Lorg/codeaurora/telephony/utils/AsyncResult;)V

    .line 147
    :cond_0
    monitor-exit v1

    .line 148
    return-void

    .line 147
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerForPreAlertingCallInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 357
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 358
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mPreAlertingCallInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 359
    return-void
.end method

.method public registerForRadioStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 113
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 115
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRadioStateChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v2, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 117
    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/Registrant;->notifyRegistrant()V

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 277
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 278
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRingbackToneRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 279
    return-void
.end method

.method public registerForViceRefreshInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 351
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    .line 352
    .local v0, "r":Lorg/codeaurora/telephony/utils/Registrant;
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRefreshViceInfoRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, v0}, Lorg/codeaurora/telephony/utils/RegistrantList;->add(Lorg/codeaurora/telephony/utils/Registrant;)V

    .line 353
    return-void
.end method

.method public setEmergencyCallbackMode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 240
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mEmergencyCallbackModeRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 241
    return-void
.end method

.method public setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 245
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRingRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 246
    return-void
.end method

.method public setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 230
    new-instance v0, Lorg/codeaurora/ims/WakeLockRegistrant;

    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotifyWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, p1, p2, p3, v1}, Lorg/codeaurora/ims/WakeLockRegistrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;Landroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    .line 231
    return-void
.end method

.method protected setRadioState(Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;)V
    .locals 3
    .param p1, "newState"    # Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    .line 311
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 312
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    .line 313
    .local v1, "oldState":Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;
    iput-object p1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    .line 315
    if-ne v1, p1, :cond_0

    .line 317
    monitor-exit v0

    return-void

    .line 320
    :cond_0
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRadioStateChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v2}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants()V

    .line 322
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 323
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v2}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants()V

    .line 324
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->onRadioAvailable()V

    .line 327
    :cond_1
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 328
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v2}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants()V

    .line 331
    :cond_2
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-nez v2, :cond_3

    .line 332
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOnRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v2}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants()V

    .line 335
    :cond_3
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mState:Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_5

    .line 336
    :cond_4
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isOn()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 338
    iget-object v2, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOffOrNotAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v2}, Lorg/codeaurora/telephony/utils/RegistrantList;->notifyRegistrants()V

    .line 340
    :cond_5
    monitor-exit v0

    .line 341
    return-void

    .line 340
    .end local v1    # "oldState":Lorg/codeaurora/ims/ImsPhoneCommandsInterface$RadioState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUiccSubscription(IIIILandroid/os/Message;)V
    .locals 0
    .param p1, "slotId"    # I
    .param p2, "appIndex"    # I
    .param p3, "subId"    # I
    .param p4, "subStatus"    # I
    .param p5, "response"    # Landroid/os/Message;

    .line 348
    return-void
.end method

.method public unSetOnCallRing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 250
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRingRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/Registrant;->clear()V

    .line 251
    return-void
.end method

.method public unSetOnSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 235
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mSsnRegistrant:Lorg/codeaurora/telephony/utils/Registrant;

    invoke-virtual {v0}, Lorg/codeaurora/telephony/utils/Registrant;->clear()V

    .line 236
    return-void
.end method

.method public unregisterForAvailable(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 172
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 174
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 225
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mCallStateRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 226
    return-void
.end method

.method public unregisterForExitEmergencyCallbackMode(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 294
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mExitEmergencyCallbackModeRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 295
    return-void
.end method

.method public unregisterForImsNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 134
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mImsNetworkStateChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 135
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 272
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mVoicePrivacyOffRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 273
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 261
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mVoicePrivacyOnRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 262
    return-void
.end method

.method public unregisterForNotAvailable(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 192
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mNotAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 194
    monitor-exit v0

    .line 195
    return-void

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForOffOrNotAvailable(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 211
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOffOrNotAvailRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 213
    monitor-exit v0

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForOn(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 151
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mOnRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 153
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForRadioStateChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .line 123
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mStateMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_0
    iget-object v1, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRadioStateChangedRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v1, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 125
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .line 283
    iget-object v0, p0, Lorg/codeaurora/ims/ImsPhoneBaseCommands;->mRingbackToneRegistrants:Lorg/codeaurora/telephony/utils/RegistrantList;

    invoke-virtual {v0, p1}, Lorg/codeaurora/telephony/utils/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 284
    return-void
.end method
