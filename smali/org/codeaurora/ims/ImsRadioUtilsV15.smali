.class public Lorg/codeaurora/ims/ImsRadioUtilsV15;
.super Ljava/lang/Object;
.source "ImsRadioUtilsV15.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;
    .locals 2
    .param p0, "item"    # I
    .param p1, "boolValue"    # Z
    .param p2, "intValue"    # I
    .param p3, "stringValue"    # Ljava/lang/String;
    .param p4, "errorCause"    # I

    .line 260
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;-><init>()V

    .line 262
    .local v0, "configInfo":Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->configInfoItemToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->item:I

    .line 263
    const/4 v1, 0x1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->hasBoolValue:Z

    .line 264
    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->boolValue:Z

    .line 265
    iput p2, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->intValue:I

    .line 266
    if-eqz p3, :cond_0

    .line 267
    iput-object p3, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 269
    :cond_0
    invoke-static {p4}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->errorCause:I

    .line 271
    return-object v0
.end method

.method public static callForwardStatusInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;)Lorg/codeaurora/ims/CallForwardStatusInfo;
    .locals 3
    .param p0, "imsRadioCFStatusInfo"    # Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;

    .line 372
    new-instance v0, Lorg/codeaurora/ims/CallForwardStatusInfo;

    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v1

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatusInfo;->status:Ljava/util/ArrayList;

    .line 374
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->toCallForwardStatus(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/CallForwardStatus;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codeaurora/ims/CallForwardStatusInfo;-><init>(Landroid/telephony/ims/ImsReasonInfo;[Lorg/codeaurora/ims/CallForwardStatus;)V

    .line 372
    return-object v0
.end method

.method public static configInfoItemFromHal(I)I
    .locals 1
    .param p0, "item"    # I

    .line 250
    packed-switch p0, :pswitch_data_0

    .line 254
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->configInfoItemFromHal(I)I

    move-result v0

    return v0

    .line 252
    :pswitch_0
    const/16 v0, 0x49

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4a
        :pswitch_0
    .end packed-switch
.end method

.method public static configInfoItemToHal(I)I
    .locals 1
    .param p0, "item"    # I

    .line 241
    packed-switch p0, :pswitch_data_0

    .line 245
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->configInfoItemToHal(I)I

    move-result v0

    return v0

    .line 243
    :pswitch_0
    const/16 v0, 0x4a

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch
.end method

.method public static getCallFailCauseForImsReason(I)I
    .locals 2
    .param p0, "imsReason"    # I

    .line 42
    sparse-switch p0, :sswitch_data_0

    .line 78
    const-class v0, Lorg/codeaurora/ims/ImsRadioUtilsV15;

    const-string v1, "Unsupported imsReason for ending call. Passing end cause as \'misc\'."

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    const/16 v0, 0x224

    return v0

    .line 76
    :sswitch_0
    const/16 v0, 0x26b

    return v0

    .line 64
    :sswitch_1
    const/16 v0, 0x25e

    return v0

    .line 58
    :sswitch_2
    const/16 v0, 0x25b

    return v0

    .line 62
    :sswitch_3
    const/16 v0, 0x25d

    return v0

    .line 60
    :sswitch_4
    const/16 v0, 0x25c

    return v0

    .line 74
    :sswitch_5
    const/16 v0, 0x26a

    return v0

    .line 72
    :sswitch_6
    const/16 v0, 0x269

    return v0

    .line 70
    :sswitch_7
    const/16 v0, 0x268

    return v0

    .line 68
    :sswitch_8
    const/16 v0, 0x267

    return v0

    .line 66
    :sswitch_9
    const/16 v0, 0x266

    return v0

    .line 56
    :sswitch_a
    const/16 v0, 0x265

    return v0

    .line 54
    :sswitch_b
    const/16 v0, 0x264

    return v0

    .line 50
    :sswitch_c
    const/16 v0, 0x263

    return v0

    .line 52
    :sswitch_d
    const/16 v0, 0x262

    return v0

    .line 48
    :sswitch_e
    const/16 v0, 0x261

    return v0

    .line 46
    :sswitch_f
    const/16 v0, 0x260

    return v0

    .line 44
    :sswitch_10
    const/16 v0, 0x25f

    return v0

    :sswitch_data_0
    .sparse-switch
        0x16e -> :sswitch_10
        0x16f -> :sswitch_f
        0x170 -> :sswitch_e
        0x171 -> :sswitch_d
        0x172 -> :sswitch_c
        0x173 -> :sswitch_b
        0x174 -> :sswitch_a
        0x175 -> :sswitch_9
        0x176 -> :sswitch_8
        0x178 -> :sswitch_7
        0x179 -> :sswitch_6
        0x17a -> :sswitch_5
        0x1ff -> :sswitch_4
        0x200 -> :sswitch_3
        0x3f9 -> :sswitch_2
        0x5ed -> :sswitch_1
        0xbb9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getImsReasonForCallFailCause(I)I
    .locals 1
    .param p0, "failCause"    # I

    .line 88
    packed-switch p0, :pswitch_data_0

    .line 125
    const/4 v0, 0x0

    return v0

    .line 123
    :pswitch_0
    const/16 v0, 0xbb9

    return v0

    .line 120
    :pswitch_1
    const/16 v0, 0x17a

    return v0

    .line 118
    :pswitch_2
    const/16 v0, 0x179

    return v0

    .line 116
    :pswitch_3
    const/16 v0, 0x178

    return v0

    .line 114
    :pswitch_4
    const/16 v0, 0x176

    return v0

    .line 112
    :pswitch_5
    const/16 v0, 0x175

    return v0

    .line 102
    :pswitch_6
    const/16 v0, 0x174

    return v0

    .line 100
    :pswitch_7
    const/16 v0, 0x173

    return v0

    .line 96
    :pswitch_8
    const/16 v0, 0x172

    return v0

    .line 98
    :pswitch_9
    const/16 v0, 0x171

    return v0

    .line 94
    :pswitch_a
    const/16 v0, 0x170

    return v0

    .line 92
    :pswitch_b
    const/16 v0, 0x16f

    return v0

    .line 90
    :pswitch_c
    const/16 v0, 0x16e

    return v0

    .line 110
    :pswitch_d
    const/16 v0, 0x5ed

    return v0

    .line 108
    :pswitch_e
    const/16 v0, 0x200

    return v0

    .line 106
    :pswitch_f
    const/16 v0, 0x1ff

    return v0

    .line 104
    :pswitch_10
    const/16 v0, 0x3f9

    return v0

    :pswitch_data_0
    .packed-switch 0x25b
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static imsSmsDeliverStatusToHidl(I)I
    .locals 2
    .param p0, "status"    # I

    .line 437
    packed-switch p0, :pswitch_data_0

    .line 443
    const-class v0, Lorg/codeaurora/ims/ImsRadioUtilsV15;

    const-string v1, "unknown deliver status"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    const/4 v0, 0x1

    return v0

    .line 441
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 439
    :pswitch_1
    const/4 v0, 0x2

    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isConfigItemIntroducedInV15(I)Ljava/lang/Boolean;
    .locals 1
    .param p0, "item"    # I

    .line 276
    packed-switch p0, :pswitch_data_0

    .line 280
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 278
    :pswitch_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x4a
        :pswitch_0
    .end packed-switch
.end method

.method public static mapEmergencyCallRoutingToHal(I)I
    .locals 1
    .param p0, "routing"    # I

    .line 344
    packed-switch p0, :pswitch_data_0

    .line 350
    const/4 v0, 0x0

    return v0

    .line 346
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 348
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static mapEmergencyServiceCategoryToHal(I)I
    .locals 3
    .param p0, "categories"    # I

    .line 309
    const/4 v0, 0x0

    .line 310
    .local v0, "toHalCategories":I
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 312
    or-int/lit8 v0, v0, 0x1

    .line 314
    :cond_0
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 316
    or-int/lit8 v0, v0, 0x2

    .line 318
    :cond_1
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 320
    or-int/lit8 v0, v0, 0x4

    .line 322
    :cond_2
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 324
    or-int/lit8 v0, v0, 0x8

    .line 326
    :cond_3
    and-int/lit8 v1, p0, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    .line 329
    or-int/lit8 v0, v0, 0x10

    .line 331
    :cond_4
    and-int/lit8 v1, p0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    .line 333
    or-int/lit8 v0, v0, 0x20

    .line 335
    :cond_5
    and-int/lit8 v1, p0, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    .line 337
    or-int/lit8 v0, v0, 0x40

    .line 339
    :cond_6
    return v0
.end method

.method public static mapHidlToFrameworkResponseReason(I)I
    .locals 2
    .param p0, "hidlReason"    # I

    .line 395
    packed-switch p0, :pswitch_data_0

    .line 431
    const-class v0, Lorg/codeaurora/ims/ImsRadioUtilsV15;

    const-string v1, "Failure reason is unknown"

    invoke-static {v0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    const/4 v0, 0x1

    return v0

    .line 429
    :pswitch_0
    const/16 v0, 0x18

    return v0

    .line 427
    :pswitch_1
    const/16 v0, 0x17

    return v0

    .line 425
    :pswitch_2
    const/16 v0, 0x16

    return v0

    .line 423
    :pswitch_3
    const/16 v0, 0x15

    return v0

    .line 421
    :pswitch_4
    const/16 v0, 0x14

    return v0

    .line 419
    :pswitch_5
    const/16 v0, 0x13

    return v0

    .line 417
    :pswitch_6
    const/16 v0, 0x12

    return v0

    .line 415
    :pswitch_7
    const/16 v0, 0x11

    return v0

    .line 413
    :pswitch_8
    const/16 v0, 0x10

    return v0

    .line 411
    :pswitch_9
    const/16 v0, 0xf

    return v0

    .line 409
    :pswitch_a
    const/16 v0, 0xe

    return v0

    .line 407
    :pswitch_b
    const/16 v0, 0xd

    return v0

    .line 405
    :pswitch_c
    const/16 v0, 0xc

    return v0

    .line 403
    :pswitch_d
    const/16 v0, 0xb

    return v0

    .line 401
    :pswitch_e
    const/16 v0, 0xa

    return v0

    .line 399
    :pswitch_f
    const/16 v0, 0x9

    return v0

    .line 397
    :pswitch_10
    const/4 v0, 0x6

    return v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static mapTirPresentationToIpPresentation(I)I
    .locals 1
    .param p0, "presentation"    # I

    .line 360
    packed-switch p0, :pswitch_data_0

    .line 366
    const/4 v0, 0x2

    return v0

    .line 364
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 362
    :pswitch_1
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static migarateVerstatInfo(Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;)V
    .locals 1
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;
    .param p1, "to"    # Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    .line 205
    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->canMarkUnwantedCall:Z

    iput-boolean v0, p1, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->canMarkUnwantedCall:Z

    .line 206
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->verificationStatus:I

    iput v0, p1, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->verificationStatus:I

    .line 207
    return-void
.end method

.method public static migrateAutoCallRejectionInfoFrom(Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;)Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;
    .locals 2
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;

    .line 218
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;-><init>()V

    .line 219
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->callType:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->callType:I

    .line 220
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->autoRejectionCause:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->autoRejectionCause:I

    .line 221
    iget-short v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->sipErrorCode:S

    iput-short v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->sipErrorCode:S

    .line 222
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_3/AutoCallRejectionInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->number:Ljava/lang/String;

    .line 223
    return-object v0
.end method

.method private static migrateCallInfoFrom(Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;

    .line 135
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;-><init>()V

    .line 136
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->state:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->state:I

    .line 137
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->index:I

    .line 138
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->toa:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->toa:I

    .line 139
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsMpty:Z

    .line 140
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isMpty:Z

    .line 141
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsMT:Z

    .line 142
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isMT:Z

    .line 143
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->als:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->als:I

    .line 144
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsVoice:Z

    .line 145
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isVoice:Z

    .line 146
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsVoicePrivacy:Z

    .line 147
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isVoicePrivacy:Z

    .line 148
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->number:Ljava/lang/String;

    .line 149
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->numberPresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->numberPresentation:I

    .line 150
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->name:Ljava/lang/String;

    .line 151
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->namePresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->namePresentation:I

    .line 153
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasCallDetails:Z

    .line 154
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    .line 155
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    .line 156
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    .line 158
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 159
    .local v2, "extra":Ljava/lang/String;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    .end local v2    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 162
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 163
    .local v2, "localAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v2    # "localAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    goto :goto_1

    .line 166
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 167
    .local v2, "peerAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    .end local v2    # "peerAbility":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    goto :goto_2

    .line 170
    :cond_2
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    .line 171
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    .line 172
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    .line 173
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    .line 174
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 176
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasFailCause:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasFailCause:Z

    .line 177
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->failCause:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->failCause:I

    .line 179
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 180
    .local v2, "errorinfo":Ljava/lang/Byte;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    .end local v2    # "errorinfo":Ljava/lang/Byte;
    goto :goto_3

    .line 183
    :cond_3
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 184
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->hasErrorDetails:Z

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->hasErrorDetails:Z

    .line 185
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 186
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_3/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 189
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsEncrypted:Z

    .line 190
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isEncrypted:Z

    .line 191
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsCalledPartyRinging:Z

    .line 192
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isCalledPartyRinging:Z

    .line 193
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->historyInfo:Ljava/lang/String;

    .line 194
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->hasIsVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsVideoConfSupported:Z

    .line 195
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->isVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isVideoConfSupported:Z

    .line 197
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->migarateVerstatInfo(Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;)V

    .line 198
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->migrateMultiIdentityLineInfo(Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)V

    .line 201
    return-object v0
.end method

.method public static migrateCallListFrom(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;",
            ">;"
        }
    .end annotation

    .line 229
    .local p0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;>;"
    if-nez p0, :cond_0

    .line 230
    const/4 v0, 0x0

    return-object v0

    .line 232
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;

    .line 234
    .local v2, "from":Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->migrateCallInfoFrom(Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;

    move-result-object v3

    .line 235
    .local v3, "to":Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v2    # "from":Lvendor/qti/hardware/radio/ims/V1_4/CallInfo;
    .end local v3    # "to":Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;
    goto :goto_0

    .line 237
    :cond_1
    return-object v0
.end method

.method public static migrateConfigInfoFromV16(Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;
    .locals 3
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/ims/ImsException;
        }
    .end annotation

    .line 290
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;-><init>()V

    .line 292
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->item:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->isConfigItemIntroducedInV16(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->item:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->item:I

    .line 296
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->hasBoolValue:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->hasBoolValue:Z

    .line 297
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->boolValue:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->boolValue:Z

    .line 298
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->intValue:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->intValue:I

    .line 299
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->stringValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->stringValue:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 302
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->errorCause:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_5/ConfigInfo;->errorCause:I

    .line 304
    return-object v0

    .line 293
    :cond_1
    new-instance v1, Landroid/telephony/ims/ImsException;

    const-string v2, "Config item not supported in current HAL"

    invoke-direct {v1, v2}, Landroid/telephony/ims/ImsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static migrateMultiIdentityLineInfo(Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)V
    .locals 1
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;
    .param p1, "to"    # Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    .line 211
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->msisdn:Ljava/lang/String;

    iput-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->msisdn:Ljava/lang/String;

    .line 212
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->registrationStatus:I

    iput v0, p1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->registrationStatus:I

    .line 213
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->lineType:I

    iput v0, p1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->lineType:I

    .line 214
    return-void
.end method

.method private static toCallForwardStatus(Ljava/util/ArrayList;)[Lorg/codeaurora/ims/CallForwardStatus;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;",
            ">;)[",
            "Lorg/codeaurora/ims/CallForwardStatus;"
        }
    .end annotation

    .line 379
    .local p0, "fromList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;>;"
    if-nez p0, :cond_0

    .line 380
    const/4 v0, 0x0

    return-object v0

    .line 383
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 384
    .local v0, "size":I
    new-array v1, v0, [Lorg/codeaurora/ims/CallForwardStatus;

    .line 386
    .local v1, "toList":[Lorg/codeaurora/ims/CallForwardStatus;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 387
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;

    .line 388
    .local v3, "fromCfStatus":Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;
    new-instance v4, Lorg/codeaurora/ims/CallForwardStatus;

    iget v5, v3, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;->reason:I

    iget v6, v3, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;->status:I

    iget-object v7, v3, Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    .line 389
    invoke-static {v7}, Lorg/codeaurora/ims/ImsRadioUtils;->sipErrorFromHal(Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/codeaurora/ims/CallForwardStatus;-><init>(IILandroid/telephony/ims/ImsReasonInfo;)V

    aput-object v4, v1, v2

    .line 386
    .end local v3    # "fromCfStatus":Lvendor/qti/hardware/radio/ims/V1_5/CallForwardStatus;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method
