.class public abstract Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;
.super Landroid/os/Binder;
.source "IImsRadioIndication.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/IImsRadioIndication;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/IImsRadioIndication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_onCallComposerInfoAvailable:I = 0x20

.field static final TRANSACTION_onCallStateChanged:I = 0x1

.field static final TRANSACTION_onCiWlanNotification:I = 0x2c

.field static final TRANSACTION_onConferenceCallStateCompleted:I = 0x26

.field static final TRANSACTION_onEmergencyCallBackModeChanged:I = 0x8

.field static final TRANSACTION_onGeolocationInfoRequested:I = 0xf

.field static final TRANSACTION_onHandover:I = 0x5

.field static final TRANSACTION_onImsSubConfigChanged:I = 0x10

.field static final TRANSACTION_onIncomingCallAutoRejected:I = 0x19

.field static final TRANSACTION_onIncomingCallAutoRejected2:I = 0x2b

.field static final TRANSACTION_onIncomingCallComposerCallAutoRejected:I = 0x21

.field static final TRANSACTION_onIncomingDtmfStart:I = 0x27

.field static final TRANSACTION_onIncomingDtmfStop:I = 0x28

.field static final TRANSACTION_onIncomingSms:I = 0x17

.field static final TRANSACTION_onMessageWaiting:I = 0xe

.field static final TRANSACTION_onModemSupportsWfcRoamingModeConfiguration:I = 0x1d

.field static final TRANSACTION_onModifyCall:I = 0xc

.field static final TRANSACTION_onMultiIdentityInfoPending:I = 0x1c

.field static final TRANSACTION_onMultiIdentityRegistrationStatusChange:I = 0x1b

.field static final TRANSACTION_onMultiSimVoiceCapabilityChanged:I = 0x29

.field static final TRANSACTION_onParticipantStatusInfo:I = 0x11

.field static final TRANSACTION_onPreAlertingCallInfoAvailable:I = 0x2a

.field static final TRANSACTION_onRadioStateChanged:I = 0x7

.field static final TRANSACTION_onRefreshConferenceInfo:I = 0xa

.field static final TRANSACTION_onRefreshViceInfo:I = 0xb

.field static final TRANSACTION_onRegistrationBlockStatus:I = 0x12

.field static final TRANSACTION_onRegistrationChanged:I = 0x4

.field static final TRANSACTION_onRetrievingGeoLocationDataStatus:I = 0x22

.field static final TRANSACTION_onRing:I = 0x2

.field static final TRANSACTION_onRingbackTone:I = 0x3

.field static final TRANSACTION_onRttMessageReceived:I = 0x13

.field static final TRANSACTION_onServiceDomainChanged:I = 0x24

.field static final TRANSACTION_onServiceStatusChanged:I = 0x6

.field static final TRANSACTION_onSipDtmfReceived:I = 0x23

.field static final TRANSACTION_onSmsCallBackModeChanged:I = 0x25

.field static final TRANSACTION_onSmsSendStatusReport:I = 0x16

.field static final TRANSACTION_onSuppServiceNotification:I = 0xd

.field static final TRANSACTION_onSupplementaryServiceIndication:I = 0x15

.field static final TRANSACTION_onTtyNotification:I = 0x9

.field static final TRANSACTION_onUssdMessageFailed:I = 0x1e

.field static final TRANSACTION_onUssdReceived:I = 0x1f

.field static final TRANSACTION_onVoWiFiCallQuality:I = 0x14

.field static final TRANSACTION_onVoiceInfoChanged:I = 0x1a

.field static final TRANSACTION_onVopsChanged:I = 0x18


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 168
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 169
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->markVintfStability()V

    .line 170
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadioIndication;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 178
    if-nez p0, :cond_0

    .line 179
    const/4 v0, 0x0

    return-object v0

    .line 181
    :cond_0
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 182
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    if-eqz v1, :cond_1

    .line 183
    move-object v1, v0

    check-cast v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    return-object v1

    .line 185
    :cond_1
    new-instance v1, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 189
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 193
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 194
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 195
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 217
    packed-switch p1, :pswitch_data_0

    .line 572
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 201
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    return v1

    .line 206
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    return v1

    .line 212
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 214
    return v1

    .line 565
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 566
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 567
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onCiWlanNotification(I)V

    .line 568
    goto/16 :goto_0

    .line 557
    .end local v2    # "_arg0":I
    :pswitch_1
    sget-object v2, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;

    .line 558
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 559
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingCallAutoRejected2(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;)V

    .line 560
    goto/16 :goto_0

    .line 549
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo2;
    :pswitch_2
    sget-object v2, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;

    .line 550
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 551
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onPreAlertingCallInfoAvailable(Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;)V

    .line 552
    goto/16 :goto_0

    .line 541
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/PreAlertingCallInfo;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 542
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 543
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onMultiSimVoiceCapabilityChanged(I)V

    .line 544
    goto/16 :goto_0

    .line 533
    .end local v2    # "_arg0":I
    :pswitch_4
    sget-object v2, Lvendor/qti/hardware/radio/ims/DtmfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .line 534
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 535
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingDtmfStop(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V

    .line 536
    goto/16 :goto_0

    .line 525
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :pswitch_5
    sget-object v2, Lvendor/qti/hardware/radio/ims/DtmfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .line 526
    .restart local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 527
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingDtmfStart(Lvendor/qti/hardware/radio/ims/DtmfInfo;)V

    .line 528
    goto/16 :goto_0

    .line 519
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :pswitch_6
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onConferenceCallStateCompleted()V

    .line 520
    goto/16 :goto_0

    .line 512
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 513
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSmsCallBackModeChanged(I)V

    .line 515
    goto/16 :goto_0

    .line 504
    .end local v2    # "_arg0":I
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 505
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 506
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onServiceDomainChanged(I)V

    .line 507
    goto/16 :goto_0

    .line 496
    .end local v2    # "_arg0":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 497
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 498
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSipDtmfReceived(Ljava/lang/String;)V

    .line 499
    goto/16 :goto_0

    .line 488
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 489
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 490
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRetrievingGeoLocationDataStatus(I)V

    .line 491
    goto/16 :goto_0

    .line 480
    .end local v2    # "_arg0":I
    :pswitch_b
    sget-object v2, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;

    .line 481
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingCallComposerCallAutoRejected(Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;)V

    .line 483
    goto/16 :goto_0

    .line 472
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/CallComposerAutoRejectionInfo;
    :pswitch_c
    sget-object v2, Lvendor/qti/hardware/radio/ims/CallComposerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/CallComposerInfo;

    .line 473
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/CallComposerInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 474
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onCallComposerInfoAvailable(Lvendor/qti/hardware/radio/ims/CallComposerInfo;)V

    .line 475
    goto/16 :goto_0

    .line 460
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/CallComposerInfo;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 462
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 464
    .local v3, "_arg1":Ljava/lang/String;
    sget-object v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 465
    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onUssdReceived(ILjava/lang/String;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 467
    goto/16 :goto_0

    .line 450
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 452
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 453
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onUssdMessageFailed(ILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 455
    goto/16 :goto_0

    .line 442
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 443
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onModemSupportsWfcRoamingModeConfiguration(Z)V

    .line 445
    goto/16 :goto_0

    .line 436
    .end local v2    # "_arg0":Z
    :pswitch_10
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onMultiIdentityInfoPending()V

    .line 437
    goto/16 :goto_0

    .line 429
    :pswitch_11
    sget-object v2, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    .line 430
    .local v2, "_arg0":[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 431
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onMultiIdentityRegistrationStatusChange([Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V

    .line 432
    goto/16 :goto_0

    .line 421
    .end local v2    # "_arg0":[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 422
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 423
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onVoiceInfoChanged(I)V

    .line 424
    goto/16 :goto_0

    .line 413
    .end local v2    # "_arg0":I
    :pswitch_13
    sget-object v2, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;

    .line 414
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 415
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingCallAutoRejected(Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;)V

    .line 416
    goto/16 :goto_0

    .line 405
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/AutoCallRejectionInfo;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v2

    .line 406
    .local v2, "_arg0":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 407
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onVopsChanged(Z)V

    .line 408
    goto/16 :goto_0

    .line 397
    .end local v2    # "_arg0":Z
    :pswitch_15
    sget-object v2, Lvendor/qti/hardware/radio/ims/IncomingSms;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/IncomingSms;

    .line 398
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/IncomingSms;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 399
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onIncomingSms(Lvendor/qti/hardware/radio/ims/IncomingSms;)V

    .line 400
    goto/16 :goto_0

    .line 389
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/IncomingSms;
    :pswitch_16
    sget-object v2, Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;

    .line 390
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 391
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSmsSendStatusReport(Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;)V

    .line 392
    goto/16 :goto_0

    .line 381
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/SmsSendStatusReport;
    :pswitch_17
    sget-object v2, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;

    .line 382
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 383
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSupplementaryServiceIndication(Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;)V

    .line 384
    goto/16 :goto_0

    .line 373
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/StkCcUnsolSsResult;
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 374
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 375
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onVoWiFiCallQuality(I)V

    .line 376
    goto/16 :goto_0

    .line 365
    .end local v2    # "_arg0":I
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 367
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRttMessageReceived(Ljava/lang/String;)V

    .line 368
    goto/16 :goto_0

    .line 357
    .end local v2    # "_arg0":Ljava/lang/String;
    :pswitch_1a
    sget-object v2, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;

    .line 358
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 359
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRegistrationBlockStatus(Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;)V

    .line 360
    goto/16 :goto_0

    .line 349
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/RegistrationBlockStatusInfo;
    :pswitch_1b
    sget-object v2, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;

    .line 350
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 351
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onParticipantStatusInfo(Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;)V

    .line 352
    goto/16 :goto_0

    .line 341
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/ParticipantStatusInfo;
    :pswitch_1c
    sget-object v2, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;

    .line 342
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 343
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onImsSubConfigChanged(Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V

    .line 344
    goto/16 :goto_0

    .line 331
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 333
    .local v2, "_arg0":D
    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 334
    .local v4, "_arg1":D
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 335
    invoke-virtual {p0, v2, v3, v4, v5}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onGeolocationInfoRequested(DD)V

    .line 336
    goto/16 :goto_0

    .line 323
    .end local v2    # "_arg0":D
    .end local v4    # "_arg1":D
    :pswitch_1e
    sget-object v2, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;

    .line 324
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 325
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onMessageWaiting(Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;)V

    .line 326
    goto/16 :goto_0

    .line 315
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/MessageWaitingIndication;
    :pswitch_1f
    sget-object v2, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/SuppServiceNotification;

    .line 316
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/SuppServiceNotification;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 317
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onSuppServiceNotification(Lvendor/qti/hardware/radio/ims/SuppServiceNotification;)V

    .line 318
    goto/16 :goto_0

    .line 307
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/SuppServiceNotification;
    :pswitch_20
    sget-object v2, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    .line 308
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 309
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onModifyCall(Lvendor/qti/hardware/radio/ims/CallModifyInfo;)V

    .line 310
    goto/16 :goto_0

    .line 299
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    :pswitch_21
    sget-object v2, Lvendor/qti/hardware/radio/ims/ViceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/ViceInfo;

    .line 300
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/ViceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 301
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRefreshViceInfo(Lvendor/qti/hardware/radio/ims/ViceInfo;)V

    .line 302
    goto/16 :goto_0

    .line 291
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/ViceInfo;
    :pswitch_22
    sget-object v2, Lvendor/qti/hardware/radio/ims/ConferenceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/ConferenceInfo;

    .line 292
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/ConferenceInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 293
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRefreshConferenceInfo(Lvendor/qti/hardware/radio/ims/ConferenceInfo;)V

    .line 294
    goto/16 :goto_0

    .line 283
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/ConferenceInfo;
    :pswitch_23
    sget-object v2, Lvendor/qti/hardware/radio/ims/TtyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/TtyInfo;

    .line 284
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/TtyInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 285
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onTtyNotification(Lvendor/qti/hardware/radio/ims/TtyInfo;)V

    .line 286
    goto :goto_0

    .line 275
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/TtyInfo;
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 276
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 277
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onEmergencyCallBackModeChanged(I)V

    .line 278
    goto :goto_0

    .line 267
    .end local v2    # "_arg0":I
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 268
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 269
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRadioStateChanged(I)V

    .line 270
    goto :goto_0

    .line 259
    .end local v2    # "_arg0":I
    :pswitch_26
    sget-object v2, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 260
    .local v2, "_arg0":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 261
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onServiceStatusChanged([Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V

    .line 262
    goto :goto_0

    .line 251
    .end local v2    # "_arg0":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    :pswitch_27
    sget-object v2, Lvendor/qti/hardware/radio/ims/HandoverInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/HandoverInfo;

    .line 252
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/HandoverInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 253
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onHandover(Lvendor/qti/hardware/radio/ims/HandoverInfo;)V

    .line 254
    goto :goto_0

    .line 243
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/HandoverInfo;
    :pswitch_28
    sget-object v2, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    .line 244
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 245
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRegistrationChanged(Lvendor/qti/hardware/radio/ims/RegistrationInfo;)V

    .line 246
    goto :goto_0

    .line 235
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 236
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 237
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRingbackTone(I)V

    .line 238
    goto :goto_0

    .line 229
    .end local v2    # "_arg0":I
    :pswitch_2a
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onRing()V

    .line 230
    goto :goto_0

    .line 222
    :pswitch_2b
    sget-object v2, Lvendor/qti/hardware/radio/ims/CallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lvendor/qti/hardware/radio/ims/CallInfo;

    .line 223
    .local v2, "_arg0":[Lvendor/qti/hardware/radio/ims/CallInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 224
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->onCallStateChanged([Lvendor/qti/hardware/radio/ims/CallInfo;)V

    .line 225
    nop

    .line 575
    .end local v2    # "_arg0":[Lvendor/qti/hardware/radio/ims/CallInfo;
    :goto_0
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
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
