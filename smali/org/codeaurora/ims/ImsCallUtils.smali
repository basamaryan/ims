.class public Lorg/codeaurora/ims/ImsCallUtils;
.super Ljava/lang/Object;
.source "ImsCallUtils.java"


# static fields
.field public static final CLIR_RESPONSE_LENGTH:I = 0x2

.field public static final CONFIG_ITEM_INVALID:I = -0x1

.field public static final CONFIG_TYPE_INT:I = 0x1

.field public static final CONFIG_TYPE_INVALID:I = -0x1

.field public static final CONFIG_TYPE_STRING:I = 0x2

.field private static final MIN_VIDEO_CALL_PHONE_NUMBER_LENGTH:I = 0x7

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-string v0, "ImsCallUtils"

    sput-object v0, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canVideoPause(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 79
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->isCallActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static convertCallTypeToVideoState(I)I
    .locals 1
    .param p0, "callType"    # I

    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "videoState":I
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 212
    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    .line 208
    :pswitch_2
    const/4 v0, 0x3

    .line 209
    goto :goto_0

    .line 202
    :pswitch_3
    const/4 v0, 0x2

    .line 203
    goto :goto_0

    .line 205
    :pswitch_4
    const/4 v0, 0x1

    .line 206
    goto :goto_0

    .line 199
    :pswitch_5
    const/4 v0, 0x0

    .line 200
    nop

    .line 215
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static convertImsConfigToImsConfigItem(I)I
    .locals 1
    .param p0, "config"    # I

    .line 346
    sparse-switch p0, :sswitch_data_0

    .line 502
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 500
    :sswitch_0
    const/16 v0, 0x50

    return v0

    .line 498
    :sswitch_1
    const/16 v0, 0x4f

    return v0

    .line 496
    :sswitch_2
    const/16 v0, 0x4e

    return v0

    .line 494
    :sswitch_3
    const/16 v0, 0x4d

    return v0

    .line 490
    :sswitch_4
    const/16 v0, 0x4b

    return v0

    .line 486
    :sswitch_5
    const/16 v0, 0x49

    return v0

    .line 482
    :sswitch_6
    const/16 v0, 0x48

    return v0

    .line 480
    :sswitch_7
    const/16 v0, 0x47

    return v0

    .line 488
    :sswitch_8
    const/16 v0, 0x4a

    return v0

    .line 492
    :sswitch_9
    const/16 v0, 0x4c

    return v0

    .line 478
    :sswitch_a
    const/16 v0, 0x46

    return v0

    .line 476
    :sswitch_b
    const/16 v0, 0x45

    return v0

    .line 474
    :sswitch_c
    const/16 v0, 0x43

    return v0

    .line 472
    :sswitch_d
    const/16 v0, 0x42

    return v0

    .line 470
    :sswitch_e
    const/16 v0, 0x41

    return v0

    .line 468
    :sswitch_f
    const/16 v0, 0x40

    return v0

    .line 466
    :sswitch_10
    const/16 v0, 0x3f

    return v0

    .line 464
    :sswitch_11
    const/16 v0, 0x3e

    return v0

    .line 462
    :sswitch_12
    const/16 v0, 0x3d

    return v0

    .line 460
    :sswitch_13
    const/16 v0, 0x3c

    return v0

    .line 458
    :sswitch_14
    const/16 v0, 0x3b

    return v0

    .line 456
    :sswitch_15
    const/16 v0, 0x3a

    return v0

    .line 454
    :sswitch_16
    const/16 v0, 0x39

    return v0

    .line 452
    :sswitch_17
    const/16 v0, 0x38

    return v0

    .line 450
    :sswitch_18
    const/16 v0, 0x37

    return v0

    .line 448
    :sswitch_19
    const/16 v0, 0x36

    return v0

    .line 446
    :sswitch_1a
    const/16 v0, 0x35

    return v0

    .line 444
    :sswitch_1b
    const/16 v0, 0x34

    return v0

    .line 442
    :sswitch_1c
    const/16 v0, 0x33

    return v0

    .line 440
    :sswitch_1d
    const/16 v0, 0x32

    return v0

    .line 438
    :sswitch_1e
    const/16 v0, 0x31

    return v0

    .line 436
    :sswitch_1f
    const/16 v0, 0x30

    return v0

    .line 434
    :sswitch_20
    const/16 v0, 0x2f

    return v0

    .line 432
    :sswitch_21
    const/16 v0, 0x2e

    return v0

    .line 430
    :sswitch_22
    const/16 v0, 0x2d

    return v0

    .line 428
    :sswitch_23
    const/16 v0, 0x2c

    return v0

    .line 426
    :sswitch_24
    const/16 v0, 0x2b

    return v0

    .line 424
    :sswitch_25
    const/16 v0, 0x2a

    return v0

    .line 422
    :sswitch_26
    const/16 v0, 0x29

    return v0

    .line 420
    :sswitch_27
    const/16 v0, 0x28

    return v0

    .line 418
    :sswitch_28
    const/16 v0, 0x27

    return v0

    .line 416
    :sswitch_29
    const/16 v0, 0x26

    return v0

    .line 414
    :sswitch_2a
    const/16 v0, 0x25

    return v0

    .line 412
    :sswitch_2b
    const/16 v0, 0x24

    return v0

    .line 410
    :sswitch_2c
    const/16 v0, 0x23

    return v0

    .line 404
    :sswitch_2d
    const/16 v0, 0x22

    return v0

    .line 408
    :sswitch_2e
    const/16 v0, 0x21

    return v0

    .line 406
    :sswitch_2f
    const/16 v0, 0x1a

    return v0

    .line 402
    :sswitch_30
    const/16 v0, 0x44

    return v0

    .line 400
    :sswitch_31
    const/16 v0, 0x1d

    return v0

    .line 398
    :sswitch_32
    const/16 v0, 0x1c

    return v0

    .line 396
    :sswitch_33
    const/16 v0, 0x19

    return v0

    .line 394
    :sswitch_34
    const/16 v0, 0x18

    return v0

    .line 392
    :sswitch_35
    const/16 v0, 0x17

    return v0

    .line 390
    :sswitch_36
    const/16 v0, 0x16

    return v0

    .line 388
    :sswitch_37
    const/16 v0, 0x15

    return v0

    .line 386
    :sswitch_38
    const/16 v0, 0x14

    return v0

    .line 384
    :sswitch_39
    const/16 v0, 0x13

    return v0

    .line 382
    :sswitch_3a
    const/16 v0, 0x12

    return v0

    .line 484
    :sswitch_3b
    const/16 v0, 0x1e

    return v0

    .line 380
    :sswitch_3c
    const/16 v0, 0x11

    return v0

    .line 378
    :sswitch_3d
    const/16 v0, 0x10

    return v0

    .line 376
    :sswitch_3e
    const/16 v0, 0xf

    return v0

    .line 374
    :sswitch_3f
    const/16 v0, 0xe

    return v0

    .line 372
    :sswitch_40
    const/16 v0, 0xd

    return v0

    .line 370
    :sswitch_41
    const/16 v0, 0xc

    return v0

    .line 368
    :sswitch_42
    const/16 v0, 0xb

    return v0

    .line 366
    :sswitch_43
    const/16 v0, 0xa

    return v0

    .line 364
    :sswitch_44
    const/16 v0, 0x9

    return v0

    .line 362
    :sswitch_45
    const/16 v0, 0x8

    return v0

    .line 360
    :sswitch_46
    const/4 v0, 0x7

    return v0

    .line 358
    :sswitch_47
    const/4 v0, 0x6

    return v0

    .line 356
    :sswitch_48
    const/4 v0, 0x5

    return v0

    .line 354
    :sswitch_49
    const/4 v0, 0x4

    return v0

    .line 352
    :sswitch_4a
    const/4 v0, 0x3

    return v0

    .line 350
    :sswitch_4b
    const/4 v0, 0x2

    return v0

    .line 348
    :sswitch_4c
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4c
        0x1 -> :sswitch_4b
        0x2 -> :sswitch_4a
        0x3 -> :sswitch_49
        0x4 -> :sswitch_48
        0x5 -> :sswitch_47
        0x6 -> :sswitch_46
        0x7 -> :sswitch_45
        0x8 -> :sswitch_44
        0x9 -> :sswitch_43
        0xa -> :sswitch_42
        0xb -> :sswitch_41
        0xc -> :sswitch_40
        0xd -> :sswitch_3f
        0xe -> :sswitch_3e
        0xf -> :sswitch_3d
        0x10 -> :sswitch_3c
        0x11 -> :sswitch_3b
        0x12 -> :sswitch_3a
        0x13 -> :sswitch_39
        0x14 -> :sswitch_38
        0x15 -> :sswitch_37
        0x16 -> :sswitch_36
        0x17 -> :sswitch_35
        0x18 -> :sswitch_34
        0x19 -> :sswitch_33
        0x1a -> :sswitch_32
        0x1b -> :sswitch_31
        0x1c -> :sswitch_30
        0x1d -> :sswitch_2f
        0x1e -> :sswitch_2e
        0x1f -> :sswitch_2d
        0x20 -> :sswitch_2c
        0x21 -> :sswitch_2b
        0x22 -> :sswitch_2a
        0x23 -> :sswitch_29
        0x24 -> :sswitch_28
        0x25 -> :sswitch_27
        0x26 -> :sswitch_26
        0x27 -> :sswitch_25
        0x28 -> :sswitch_24
        0x29 -> :sswitch_23
        0x2a -> :sswitch_22
        0x2b -> :sswitch_21
        0x2c -> :sswitch_20
        0x2d -> :sswitch_1f
        0x2e -> :sswitch_1e
        0x2f -> :sswitch_1d
        0x30 -> :sswitch_1c
        0x31 -> :sswitch_1b
        0x32 -> :sswitch_1a
        0x33 -> :sswitch_19
        0x34 -> :sswitch_18
        0x35 -> :sswitch_17
        0x36 -> :sswitch_16
        0x37 -> :sswitch_15
        0x38 -> :sswitch_14
        0x39 -> :sswitch_13
        0x3a -> :sswitch_12
        0x3b -> :sswitch_11
        0x3c -> :sswitch_10
        0x3d -> :sswitch_f
        0x3e -> :sswitch_e
        0x3f -> :sswitch_d
        0x40 -> :sswitch_c
        0x41 -> :sswitch_b
        0x42 -> :sswitch_a
        0x43 -> :sswitch_9
        0x3e8 -> :sswitch_8
        0x3e9 -> :sswitch_7
        0x3ea -> :sswitch_6
        0x3eb -> :sswitch_5
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_3
        0x3ee -> :sswitch_2
        0x3ef -> :sswitch_1
        0x3f0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static convertImsErrorToUiError(I)I
    .locals 1
    .param p0, "error"    # I

    .line 253
    sget v0, Lorg/codeaurora/ims/CallModify;->E_CANCELLED:I

    if-ne p0, v0, :cond_0

    .line 254
    const/4 v0, 0x4

    return v0

    .line 255
    :cond_0
    sget v0, Lorg/codeaurora/ims/CallModify;->E_SUCCESS:I

    if-eq p0, v0, :cond_3

    sget v0, Lorg/codeaurora/ims/CallModify;->E_UNUSED:I

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    const/16 v0, 0x32

    if-ne p0, v0, :cond_2

    .line 258
    return v0

    .line 260
    :cond_2
    const/4 v0, 0x2

    return v0

    .line 256
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static convertToInternalCallType(I)I
    .locals 4
    .param p0, "imsCallProfileCallType"    # I

    .line 219
    const/16 v0, 0xa

    .line 220
    .local v0, "internalCallType":I
    packed-switch p0, :pswitch_data_0

    .line 239
    sget-object v1, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertToInternalCallType invalid calltype "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 230
    :pswitch_0
    const/4 v0, 0x4

    .line 231
    goto :goto_0

    .line 236
    :pswitch_1
    const/4 v0, 0x2

    .line 237
    goto :goto_0

    .line 233
    :pswitch_2
    const/4 v0, 0x1

    .line 234
    goto :goto_0

    .line 227
    :pswitch_3
    const/4 v0, 0x3

    .line 228
    goto :goto_0

    .line 223
    :pswitch_4
    const/4 v0, 0x0

    .line 224
    nop

    .line 242
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static convertToVideoProfile(II)Landroid/telecom/VideoProfile;
    .locals 2
    .param p0, "callType"    # I
    .param p1, "callQuality"    # I

    .line 246
    new-instance v0, Landroid/telecom/VideoProfile;

    .line 247
    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->convertCallTypeToVideoState(I)I

    move-result v1

    invoke-direct {v0, v1, p1}, Landroid/telecom/VideoProfile;-><init>(II)V

    .line 249
    .local v0, "videoCallProfile":Landroid/telecom/VideoProfile;
    return-object v0
.end method

.method public static convertVideoStateToCallType(I)I
    .locals 1
    .param p0, "videoState"    # I

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "callType":I
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 189
    :pswitch_0
    const/4 v0, 0x4

    goto :goto_0

    .line 186
    :pswitch_1
    const/4 v0, 0x3

    .line 187
    goto :goto_0

    .line 180
    :pswitch_2
    const/4 v0, 0x2

    .line 181
    goto :goto_0

    .line 183
    :pswitch_3
    const/4 v0, 0x1

    .line 184
    goto :goto_0

    .line 177
    :pswitch_4
    const/4 v0, 0x0

    .line 178
    nop

    .line 192
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getImsReasonInfo(Lorg/codeaurora/telephony/utils/AsyncResult;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 5
    .param p0, "ar"    # Lorg/codeaurora/telephony/utils/AsyncResult;

    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, "sipErrorInfo":Landroid/telephony/ims/ImsReasonInfo;
    const/4 v1, 0x0

    .line 592
    .local v1, "code":I
    if-eqz p0, :cond_0

    .line 593
    iget-object v2, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/telephony/ims/ImsReasonInfo;

    .line 594
    iget-object v2, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 595
    iget-object v2, p0, Lorg/codeaurora/telephony/utils/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lorg/codeaurora/ims/ImsRilException;

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->toImsErrorCode(Lorg/codeaurora/ims/ImsRilException;)I

    move-result v1

    .line 598
    :cond_0
    if-nez v0, :cond_1

    .line 599
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v1, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    return-object v2

    .line 601
    :cond_1
    sget-object v2, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sip error code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error string :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 602
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 601
    invoke-static {v2, v3}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    .line 604
    invoke-virtual {v0}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 603
    return-object v2
.end method

.method public static getUiErrorCode(I)I
    .locals 1
    .param p0, "imsErrorCode"    # I

    .line 294
    const/4 v0, 0x1

    .line 295
    .local v0, "status":I
    sparse-switch p0, :sswitch_data_0

    .line 313
    const/4 v0, 0x2

    goto :goto_0

    .line 310
    :sswitch_0
    const/16 v0, 0x32

    .line 311
    goto :goto_0

    .line 304
    :sswitch_1
    const/4 v0, 0x5

    .line 305
    goto :goto_0

    .line 307
    :sswitch_2
    const/4 v0, 0x3

    .line 308
    goto :goto_0

    .line 301
    :sswitch_3
    const/4 v0, 0x4

    .line 302
    goto :goto_0

    .line 298
    :sswitch_4
    const/4 v0, 0x1

    .line 299
    nop

    .line 315
    :goto_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x7 -> :sswitch_3
        0x10 -> :sswitch_4
        0x1b -> :sswitch_2
        0x1c -> :sswitch_1
        0x32 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getUiErrorCode(Ljava/lang/Throwable;)I
    .locals 3
    .param p0, "ex"    # Ljava/lang/Throwable;

    .line 285
    const/4 v0, 0x2

    .line 286
    .local v0, "status":I
    instance-of v1, p0, Lorg/codeaurora/ims/ImsRilException;

    if-eqz v1, :cond_0

    .line 287
    move-object v1, p0

    check-cast v1, Lorg/codeaurora/ims/ImsRilException;

    .line 288
    .local v1, "imsRilException":Lorg/codeaurora/ims/ImsRilException;
    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->getUiErrorCode(I)I

    move-result v0

    .line 290
    .end local v1    # "imsRilException":Lorg/codeaurora/ims/ImsRilException;
    :cond_0
    return v0
.end method

.method public static hasCallTypeChanged(Lorg/codeaurora/ims/DriverCallIms;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 2
    .param p0, "dc"    # Lorg/codeaurora/ims/DriverCallIms;
    .param p1, "dcUpdate"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 269
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v1, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isActive(Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 2
    .param p0, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 507
    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAvpRetryDialing(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 8
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 103
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 104
    .local v0, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    .line 105
    .local v1, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 106
    .local v2, "nextCallType":I
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 108
    .local v3, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->DIALING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v1, v4, :cond_0

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ALERTING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v4, :cond_1

    .line 110
    :cond_0
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    move v4, v6

    .line 112
    .local v4, "dialingAvpRetry":Z
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;

    move-result-object v7

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    :goto_1
    return v5
.end method

.method public static isAvpRetryUpgrade(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 8
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 120
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 121
    .local v0, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    .line 122
    .local v1, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 123
    .local v2, "nextCallType":I
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 125
    .local v3, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_0

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v6, :cond_0

    .line 127
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v6, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    .line 129
    .local v6, "upgradeAvpRetry":Z
    :goto_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsCallModification()Lorg/codeaurora/ims/ImsCallModification;

    move-result-object v7

    invoke-virtual {v7}, Lorg/codeaurora/ims/ImsCallModification;->isAvpRetryAllowed()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    return v4
.end method

.method public static isCarrierOneSupported()Z
    .locals 2

    .line 550
    const-string v0, "persist.vendor.radio.atel.carrier"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "property":Ljava/lang/String;
    const-string v1, "405854"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isConfigRequestValid(II)Z
    .locals 5
    .param p0, "item"    # I
    .param p1, "requestType"    # I

    .line 319
    const/4 v0, -0x1

    .line 323
    .local v0, "configType":I
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lorg/codeaurora/ims/ImsCallUtils;->convertImsConfigToImsConfigItem(I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 324
    sparse-switch p0, :sswitch_data_0

    .line 334
    const/4 v0, 0x1

    goto :goto_0

    .line 331
    :sswitch_0
    const/4 v0, 0x2

    .line 340
    :cond_0
    :goto_0
    nop

    .line 342
    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 337
    :catch_0
    move-exception v2

    .line 338
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    const-string v4, "Invalid config - setting CONFIG_TYPE_INVALID"

    invoke-static {v3, v4}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0xc -> :sswitch_0
        0x1f -> :sswitch_0
        0x36 -> :sswitch_0
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isIncomingCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 2
    .param p0, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 154
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_1

    .line 155
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 154
    :goto_1
    return v0
.end method

.method public static isIncomingVideoCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 2
    .param p0, "callSession"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 145
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->INCOMING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v0, v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v0

    sget-object v1, Lorg/codeaurora/ims/DriverCallIms$State;->WAITING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 145
    :goto_0
    return v0
.end method

.method public static isNotCsVideoCall(Lorg/codeaurora/ims/CallDetails;)Z
    .locals 2
    .param p0, "details"    # Lorg/codeaurora/ims/CallDetails;

    .line 162
    iget v0, p0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isValidRilModifyCallType(I)Z
    .locals 2
    .param p0, "callType"    # I

    .line 48
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eqz p0, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isVideoCall(I)Z
    .locals 2
    .param p0, "callType"    # I

    .line 33
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isVideoCall(Lorg/codeaurora/ims/CallModify;)Z
    .locals 1
    .param p0, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 612
    if-eqz p0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/CallModify;->call_details:Lorg/codeaurora/ims/CallDetails;

    iget v0, v0, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 613
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 612
    :goto_0
    return v0
.end method

.method public static isVideoCall(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p0, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 608
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoCallNumValid(Ljava/lang/String;)Z
    .locals 4
    .param p0, "number"    # Ljava/lang/String;

    .line 563
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 564
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_0

    goto :goto_1

    .line 572
    :cond_0
    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 573
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 576
    :cond_1
    const-string v2, "#"

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 577
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 578
    const-string v1, "*"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 581
    :cond_2
    return v3

    .line 579
    :cond_3
    :goto_0
    return v0

    .line 565
    :cond_4
    :goto_1
    sget-object v1, Lorg/codeaurora/ims/ImsCallUtils;->TAG:Ljava/lang/String;

    const-string v2, "Phone number invalid!"

    invoke-static {v1, v2}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    return v0
.end method

.method public static isVideoCallTypeWithDir(I)Z
    .locals 2
    .param p0, "callType"    # I

    .line 136
    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isVideoCallTypeWithoutDir(I)Z
    .locals 1
    .param p0, "callType"    # I

    .line 170
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isVideoPaused(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 8
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 60
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 61
    .local v0, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    .line 62
    .local v1, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 63
    .local v2, "nextCallType":I
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 65
    .local v3, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->HOLDING:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v4, :cond_0

    .line 67
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    .line 69
    .local v4, "isHoldingPaused":Z
    :goto_0
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v7, :cond_1

    .line 71
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v7, :cond_1

    move v7, v5

    goto :goto_1

    :cond_1
    move v7, v6

    .line 73
    .local v7, "isActivePaused":Z
    :goto_1
    if-nez v4, :cond_3

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    :cond_3
    :goto_2
    return v5
.end method

.method public static isVideoResumed(Lorg/codeaurora/ims/ImsCallSessionImpl;Lorg/codeaurora/ims/DriverCallIms;)Z
    .locals 5
    .param p0, "conn"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 87
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalCallType()I

    move-result v0

    .line 88
    .local v0, "currCallType":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getInternalState()Lorg/codeaurora/ims/DriverCallIms$State;

    move-result-object v1

    .line 89
    .local v1, "currCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v2, v2, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 90
    .local v2, "nextCallType":I
    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 92
    .local v3, "nextCallState":Lorg/codeaurora/ims/DriverCallIms$State;
    invoke-static {v0}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCallTypeWithoutDir(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v1, v4, :cond_0

    .line 94
    invoke-static {v2}, Lorg/codeaurora/ims/ImsCallUtils;->isVideoCall(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Lorg/codeaurora/ims/DriverCallIms$State;->ACTIVE:Lorg/codeaurora/ims/DriverCallIms$State;

    if-ne v3, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 92
    :goto_0
    return v4
.end method

.method public static isVoiceCall(I)Z
    .locals 1
    .param p0, "callType"    # I

    .line 42
    if-nez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static toImsCallProfile(Lorg/codeaurora/ims/VerstatInfo;Lorg/codeaurora/ims/QImsCallProfile;)Lorg/codeaurora/ims/QImsCallProfile;
    .locals 2
    .param p0, "verstatInfo"    # Lorg/codeaurora/ims/VerstatInfo;
    .param p1, "profile"    # Lorg/codeaurora/ims/QImsCallProfile;

    .line 621
    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    .line 625
    :cond_0
    invoke-virtual {p0}, Lorg/codeaurora/ims/VerstatInfo;->canMarkUnwantedCall()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 626
    const-string v0, "CanMarkUnwantedCall"

    invoke-virtual {p1, v0, v1}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 630
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/VerstatInfo;->getVerstatVerificationStatus()I

    move-result v0

    .line 631
    .local v0, "verstatVerificationStatus":I
    if-nez v0, :cond_2

    .line 632
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/codeaurora/ims/QImsCallProfile;->setCallerNumberVerificationStatus(I)V

    goto :goto_0

    .line 634
    :cond_2
    if-ne v0, v1, :cond_3

    .line 635
    invoke-virtual {p1, v1}, Lorg/codeaurora/ims/QImsCallProfile;->setCallerNumberVerificationStatus(I)V

    goto :goto_0

    .line 638
    :cond_3
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/codeaurora/ims/QImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 642
    :goto_0
    if-eqz v0, :cond_4

    .line 643
    const-string v1, "VerstatVerificationStatus"

    invoke-virtual {p1, v1, v0}, Lorg/codeaurora/ims/QImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 647
    :cond_4
    return-object p1

    .line 622
    .end local v0    # "verstatVerificationStatus":I
    :cond_5
    :goto_1
    return-object p1
.end method

.method public static toImsErrorCode(Lorg/codeaurora/ims/ImsRilException;)I
    .locals 1
    .param p0, "ex"    # Lorg/codeaurora/ims/ImsRilException;

    .line 530
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 542
    const/4 v0, 0x0

    return v0

    .line 538
    :sswitch_0
    const/16 v0, 0x83

    return v0

    .line 540
    :sswitch_1
    const/16 v0, 0xf1

    return v0

    .line 536
    :sswitch_2
    const/16 v0, 0x4b3

    return v0

    .line 534
    :sswitch_3
    const/16 v0, 0x4b2

    return v0

    .line 532
    :sswitch_4
    const/16 v0, 0x4b1

    return v0

    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_4
        0x20 -> :sswitch_3
        0x21 -> :sswitch_2
        0x22 -> :sswitch_1
        0x2f -> :sswitch_0
    .end sparse-switch
.end method

.method public static toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "number"    # Ljava/lang/String;

    .line 655
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/codeaurora/ims/ImsCallUtils;->toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toLogSafePhoneNumber(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p0, "number"    # Ljava/lang/String;
    .param p1, "originalCount"    # I

    .line 665
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 666
    .local v0, "length":I
    :goto_0
    if-nez v0, :cond_1

    .line 667
    const-string v1, ""

    return-object v1

    .line 672
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 673
    .local v1, "builder":Ljava/lang/StringBuilder;
    if-le v0, p1, :cond_2

    sub-int v2, v0, p1

    goto :goto_1

    :cond_2
    move v2, v0

    .line 674
    .local v2, "originalIndex":I
    :goto_1
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v0, :cond_5

    .line 675
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 676
    .local v4, "c":C
    if-ge v3, v2, :cond_4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_4

    const/16 v5, 0x40

    if-eq v4, v5, :cond_4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_3

    goto :goto_3

    .line 679
    :cond_3
    const/16 v5, 0x78

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 677
    :cond_4
    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 674
    .end local v4    # "c":C
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 682
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static toUiErrorCode(Lorg/codeaurora/ims/ImsRilException;)I
    .locals 1
    .param p0, "ex"    # Lorg/codeaurora/ims/ImsRilException;

    .line 514
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsRilException;->getErrorCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 522
    const/4 v0, -0x1

    return v0

    .line 520
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 518
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 516
    :pswitch_2
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
