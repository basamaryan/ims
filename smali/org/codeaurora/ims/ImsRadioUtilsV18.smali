.class public Lorg/codeaurora/ims/ImsRadioUtilsV18;
.super Ljava/lang/Object;
.source "ImsRadioUtilsV18.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method public static buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;
    .locals 2
    .param p0, "item"    # I
    .param p1, "boolValue"    # Z
    .param p2, "intValue"    # I
    .param p3, "stringValue"    # Ljava/lang/String;
    .param p4, "errorCause"    # I

    .line 45
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;-><init>()V

    .line 47
    .local v0, "configInfo":Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->configInfoItemToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->item:I

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->hasBoolValue:Z

    .line 49
    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->boolValue:Z

    .line 50
    iput p2, v0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->intValue:I

    .line 51
    if-eqz p3, :cond_0

    .line 52
    iput-object p3, v0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 54
    :cond_0
    invoke-static {p4}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->errorCause:I

    .line 56
    return-object v0
.end method

.method public static configInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;)Lorg/codeaurora/ims/ImsConfigItem;
    .locals 3
    .param p0, "configInfo"    # Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    .line 60
    if-nez p0, :cond_0

    .line 61
    const/4 v0, 0x0

    return-object v0

    .line 64
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsConfigItem;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsConfigItem;-><init>()V

    .line 65
    .local v0, "config":Lorg/codeaurora/ims/ImsConfigItem;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->item:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->configInfoItemFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setItem(I)V

    .line 66
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->hasBoolValue:Z

    if-eqz v1, :cond_1

    .line 67
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->boolValue:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setBoolValue(Z)V

    .line 70
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->intValue:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 71
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->intValue:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setIntValue(I)V

    .line 74
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setStringValue(Ljava/lang/String;)V

    .line 76
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->errorCause:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    .line 77
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->errorCause:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setErrorCause(I)V

    .line 80
    :cond_3
    return-object v0
.end method

.method public static configInfoItemFromHal(I)I
    .locals 1
    .param p0, "item"    # I

    .line 35
    packed-switch p0, :pswitch_data_0

    .line 39
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->configInfoItemFromHal(I)I

    move-result v0

    return v0

    .line 37
    :pswitch_0
    const/16 v0, 0x4c

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4e
        :pswitch_0
    .end packed-switch
.end method

.method public static configInfoItemToHal(I)I
    .locals 1
    .param p0, "item"    # I

    .line 26
    packed-switch p0, :pswitch_data_0

    .line 30
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->configInfoItemToHal(I)I

    move-result v0

    return v0

    .line 28
    :pswitch_0
    const/16 v0, 0x4e

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_0
    .end packed-switch
.end method

.method public static imsSmsResponsefromHidl(IIII)Lorg/codeaurora/ims/sms/SmsResponse;
    .locals 3
    .param p0, "messageRef"    # I
    .param p1, "smsStatusResult"    # I
    .param p2, "hidlReason"    # I
    .param p3, "networkErrorCode"    # I

    .line 103
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->mapHidlToFrameworkResponseResult(I)I

    move-result v0

    .line 104
    .local v0, "statusResult":I
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->mapHidlToFrameworkResponseReason(I)I

    move-result v1

    .line 106
    .local v1, "reason":I
    new-instance v2, Lorg/codeaurora/ims/sms/SmsResponse;

    invoke-direct {v2, p0, v0, v1, p3}, Lorg/codeaurora/ims/sms/SmsResponse;-><init>(IIII)V

    return-object v2
.end method

.method private static migrateCallInfoFrom(Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;

    .line 130
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;-><init>()V

    .line 131
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->state:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->state:I

    .line 132
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->index:I

    .line 133
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->toa:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->toa:I

    .line 134
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->hasIsMpty:Z

    .line 135
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->isMpty:Z

    .line 136
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->hasIsMT:Z

    .line 137
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->isMT:Z

    .line 138
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->als:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->als:I

    .line 139
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->hasIsVoice:Z

    .line 140
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->isVoice:Z

    .line 141
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->hasIsVoicePrivacy:Z

    .line 142
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->isVoicePrivacy:Z

    .line 143
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->number:Ljava/lang/String;

    .line 144
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->numberPresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->numberPresentation:I

    .line 145
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->name:Ljava/lang/String;

    .line 146
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->namePresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->namePresentation:I

    .line 148
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->hasCallDetails:Z

    .line 149
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    .line 151
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasFailCause:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->hasFailCause:Z

    .line 152
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->failCause:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->failCause:I

    .line 154
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 155
    .local v2, "errorinfo":Ljava/lang/Byte;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    .end local v2    # "errorinfo":Ljava/lang/Byte;
    goto :goto_0

    .line 158
    :cond_0
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 159
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->hasErrorDetails:Z

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->hasErrorDetails:Z

    .line 160
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 161
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 164
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->hasIsEncrypted:Z

    .line 165
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->isEncrypted:Z

    .line 166
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->hasIsCalledPartyRinging:Z

    .line 167
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->isCalledPartyRinging:Z

    .line 168
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->historyInfo:Ljava/lang/String;

    .line 169
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->hasIsVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->hasIsVideoConfSupported:Z

    .line 170
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->isVideoConfSupported:Z

    .line 172
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    .line 173
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    .line 174
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->tirMode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->tirMode:I

    .line 176
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->isPreparatory:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->isPreparatory:Z

    .line 177
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/V1_7/CrsData;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->crsData:Lvendor/qti/hardware/radio/ims/V1_7/CrsData;

    .line 178
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;->callProgInfo:Lvendor/qti/hardware/radio/ims/V1_7/CallProgressInfo;

    .line 180
    return-object v0
.end method

.method public static migrateCallListFrom(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;",
            ">;"
        }
    .end annotation

    .line 186
    .local p0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;>;"
    if-nez p0, :cond_0

    .line 187
    const/4 v0, 0x0

    return-object v0

    .line 189
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 190
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;

    .line 191
    .local v2, "from":Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV18;->migrateCallInfoFrom(Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;

    move-result-object v3

    .line 192
    .local v3, "to":Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    .end local v2    # "from":Lvendor/qti/hardware/radio/ims/V1_7/CallInfo;
    .end local v3    # "to":Lvendor/qti/hardware/radio/ims/V1_8/CallInfo;
    goto :goto_0

    .line 194
    :cond_1
    return-object v0
.end method

.method public static migrateConfigInfoFromV16(Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;
    .locals 2
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    .line 88
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;-><init>()V

    .line 89
    .local v0, "configInfo":Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->item:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->item:I

    .line 90
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->hasBoolValue:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->hasBoolValue:Z

    .line 91
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->boolValue:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->boolValue:Z

    .line 92
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->intValue:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->intValue:I

    .line 93
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->stringValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->stringValue:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 96
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->errorCause:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_8/ConfigInfo;->errorCause:I

    .line 98
    return-object v0
.end method

.method public static scbmStatusFromHal(I)I
    .locals 1
    .param p0, "mode"    # I

    .line 198
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 199
    return v0

    .line 201
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static serviceDomainFromHal(I)I
    .locals 1
    .param p0, "domain"    # I

    .line 110
    packed-switch p0, :pswitch_data_0

    .line 120
    const/4 v0, 0x0

    return v0

    .line 118
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 116
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 114
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 112
    :pswitch_3
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
