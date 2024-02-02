.class public abstract Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;
.super Landroid/os/Binder;
.source "IImsRadioResponse.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/IImsRadioResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/IImsRadioResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addParticipantResponse:I = 0x1f

.field static final TRANSACTION_answerResponse:I = 0x2

.field static final TRANSACTION_cancelModifyCallResponse:I = 0x24

.field static final TRANSACTION_cancelPendingUssdResponse:I = 0x2a

.field static final TRANSACTION_conferenceResponse:I = 0xd

.field static final TRANSACTION_deflectCallResponse:I = 0x20

.field static final TRANSACTION_dialResponse:I = 0x1

.field static final TRANSACTION_exitEmergencyCallbackModeResponse:I = 0x12

.field static final TRANSACTION_exitSmsCallBackModeResponse:I = 0x2e

.field static final TRANSACTION_explicitCallTransferResponse:I = 0x1b

.field static final TRANSACTION_getCallWaitingResponse:I = 0x1a

.field static final TRANSACTION_getClipResponse:I = 0xe

.field static final TRANSACTION_getClirResponse:I = 0xf

.field static final TRANSACTION_getColrResponse:I = 0x11

.field static final TRANSACTION_getConfigResponse:I = 0xa

.field static final TRANSACTION_getImsRegistrationStateResponse:I = 0xb

.field static final TRANSACTION_getImsSubConfigResponse:I = 0x22

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getRtpErrorStatisticsResponse:I = 0x1e

.field static final TRANSACTION_getRtpStatisticsResponse:I = 0x1d

.field static final TRANSACTION_hangupResponse:I = 0x3

.field static final TRANSACTION_holdResponse:I = 0x7

.field static final TRANSACTION_modifyCallConfirmResponse:I = 0x18

.field static final TRANSACTION_modifyCallInitiateResponse:I = 0x17

.field static final TRANSACTION_queryCallForwardStatusResponse:I = 0x19

.field static final TRANSACTION_queryMultiSimVoiceCapabilityResponse:I = 0x2d

.field static final TRANSACTION_queryServiceStatusResponse:I = 0x5

.field static final TRANSACTION_queryVirtualLineInfoResponse:I = 0x27

.field static final TRANSACTION_registerMultiIdentityLinesResponse:I = 0x26

.field static final TRANSACTION_requestRegistrationChangeResponse:I = 0x4

.field static final TRANSACTION_resumeResponse:I = 0x8

.field static final TRANSACTION_sendDtmfResponse:I = 0x13

.field static final TRANSACTION_sendGeolocationInfoResponse:I = 0x21

.field static final TRANSACTION_sendRttMessageResponse:I = 0x23

.field static final TRANSACTION_sendSipDtmfResponse:I = 0x2b

.field static final TRANSACTION_sendSmsResponse:I = 0x25

.field static final TRANSACTION_sendUssdResponse:I = 0x29

.field static final TRANSACTION_setCallForwardStatusResponse:I = 0x28

.field static final TRANSACTION_setClirResponse:I = 0x10

.field static final TRANSACTION_setConfigResponse:I = 0x9

.field static final TRANSACTION_setMediaConfigurationResponse:I = 0x2c

.field static final TRANSACTION_setServiceStatusResponse:I = 0x6

.field static final TRANSACTION_setSuppServiceNotificationResponse:I = 0x1c

.field static final TRANSACTION_setUiTTYModeResponse:I = 0x16

.field static final TRANSACTION_startDtmfResponse:I = 0x14

.field static final TRANSACTION_stopDtmfResponse:I = 0x15

.field static final TRANSACTION_suppServiceStatusResponse:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 174
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 175
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->markVintfStability()V

    .line 176
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadioResponse;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 184
    if-nez p0, :cond_0

    .line 185
    const/4 v0, 0x0

    return-object v0

    .line 187
    :cond_0
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 188
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    if-eqz v1, :cond_1

    .line 189
    move-object v1, v0

    check-cast v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    return-object v1

    .line 191
    :cond_1
    new-instance v1, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 195
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

    .line 199
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 200
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 201
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 223
    packed-switch p1, :pswitch_data_0

    .line 739
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 207
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 208
    return v1

    .line 212
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 214
    return v1

    .line 218
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    return v1

    .line 730
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 732
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 733
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 734
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->exitSmsCallBackModeResponse(II)V

    .line 735
    goto/16 :goto_0

    .line 718
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 720
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 722
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 723
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 724
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->queryMultiSimVoiceCapabilityResponse(III)V

    .line 725
    goto/16 :goto_0

    .line 708
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 710
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 711
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 712
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setMediaConfigurationResponse(II)V

    .line 713
    goto/16 :goto_0

    .line 698
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 700
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 701
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 702
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendSipDtmfResponse(II)V

    .line 703
    goto/16 :goto_0

    .line 686
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 688
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 690
    .restart local v3    # "_arg1":I
    sget-object v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 691
    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 692
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->cancelPendingUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 693
    goto/16 :goto_0

    .line 674
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 676
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 678
    .restart local v3    # "_arg1":I
    sget-object v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 679
    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 680
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendUssdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 681
    goto/16 :goto_0

    .line 662
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 664
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 666
    .restart local v3    # "_arg1":I
    sget-object v4, Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;

    .line 667
    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 668
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setCallForwardStatusResponse(IILvendor/qti/hardware/radio/ims/CallForwardStatusInfo;)V

    .line 669
    goto/16 :goto_0

    .line 650
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/CallForwardStatusInfo;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 652
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 654
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 655
    .local v4, "_arg2":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->queryVirtualLineInfoResponse(ILjava/lang/String;[Ljava/lang/String;)V

    .line 657
    goto/16 :goto_0

    .line 640
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":[Ljava/lang/String;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 642
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 643
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 644
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->registerMultiIdentityLinesResponse(II)V

    .line 645
    goto/16 :goto_0

    .line 630
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 632
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/SmsSendResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/SmsSendResponse;

    .line 633
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/SmsSendResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 634
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendSmsResponse(ILvendor/qti/hardware/radio/ims/SmsSendResponse;)V

    .line 635
    goto/16 :goto_0

    .line 620
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/SmsSendResponse;
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 622
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 623
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 624
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->cancelModifyCallResponse(II)V

    .line 625
    goto/16 :goto_0

    .line 610
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 612
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 613
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 614
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendRttMessageResponse(II)V

    .line 615
    goto/16 :goto_0

    .line 598
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 600
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 602
    .restart local v3    # "_arg1":I
    sget-object v4, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;

    .line 603
    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 604
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getImsSubConfigResponse(IILvendor/qti/hardware/radio/ims/ImsSubConfigInfo;)V

    .line 605
    goto/16 :goto_0

    .line 588
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ImsSubConfigInfo;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 590
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 591
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 592
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendGeolocationInfoResponse(II)V

    .line 593
    goto/16 :goto_0

    .line 578
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 580
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 581
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 582
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->deflectCallResponse(II)V

    .line 583
    goto/16 :goto_0

    .line 568
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 570
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 571
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 572
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->addParticipantResponse(II)V

    .line 573
    goto/16 :goto_0

    .line 556
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 558
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 560
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 561
    .local v4, "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {p0, v2, v3, v4, v5}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getRtpErrorStatisticsResponse(IIJ)V

    .line 563
    goto/16 :goto_0

    .line 544
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":J
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 546
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 548
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 549
    .restart local v4    # "_arg2":J
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 550
    invoke-virtual {p0, v2, v3, v4, v5}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getRtpStatisticsResponse(IIJ)V

    .line 551
    goto/16 :goto_0

    .line 532
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":J
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 534
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 536
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 537
    .local v4, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 538
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setSuppServiceNotificationResponse(III)V

    .line 539
    goto/16 :goto_0

    .line 520
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 522
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 524
    .restart local v3    # "_arg1":I
    sget-object v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 525
    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 526
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->explicitCallTransferResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 527
    goto/16 :goto_0

    .line 506
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 508
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 510
    .restart local v3    # "_arg1":I
    sget-object v4, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;

    .line 512
    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    sget-object v5, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 513
    .local v5, "_arg3":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 514
    invoke-virtual {p0, v2, v3, v4, v5}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getCallWaitingResponse(IILvendor/qti/hardware/radio/ims/CallWaitingInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 515
    goto/16 :goto_0

    .line 492
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    .end local v5    # "_arg3":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 494
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 496
    .restart local v3    # "_arg1":I
    sget-object v4, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    .line 498
    .local v4, "_arg2":[Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    sget-object v5, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 499
    .restart local v5    # "_arg3":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 500
    invoke-virtual {p0, v2, v3, v4, v5}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->queryCallForwardStatusResponse(II[Lvendor/qti/hardware/radio/ims/CallForwardInfo;Lvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 501
    goto/16 :goto_0

    .line 482
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    .end local v5    # "_arg3":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 484
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 485
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 486
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->modifyCallConfirmResponse(II)V

    .line 487
    goto/16 :goto_0

    .line 472
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 474
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 475
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 476
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->modifyCallInitiateResponse(II)V

    .line 477
    goto/16 :goto_0

    .line 462
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 464
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 465
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 466
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setUiTTYModeResponse(II)V

    .line 467
    goto/16 :goto_0

    .line 452
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 454
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 455
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 456
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->stopDtmfResponse(II)V

    .line 457
    goto/16 :goto_0

    .line 442
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 444
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 445
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 446
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->startDtmfResponse(II)V

    .line 447
    goto/16 :goto_0

    .line 432
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 434
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 435
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 436
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->sendDtmfResponse(II)V

    .line 437
    goto/16 :goto_0

    .line 422
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 424
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 425
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->exitEmergencyCallbackModeResponse(II)V

    .line 427
    goto/16 :goto_0

    .line 410
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 412
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 414
    .restart local v3    # "_arg1":I
    sget-object v4, Lvendor/qti/hardware/radio/ims/ColrInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/ColrInfo;

    .line 415
    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/ColrInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getColrResponse(IILvendor/qti/hardware/radio/ims/ColrInfo;)V

    .line 417
    goto/16 :goto_0

    .line 400
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ColrInfo;
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 402
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 403
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 404
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setClirResponse(II)V

    .line 405
    goto/16 :goto_0

    .line 386
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 388
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 390
    .restart local v3    # "_arg1":I
    sget-object v4, Lvendor/qti/hardware/radio/ims/ClirInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/ClirInfo;

    .line 392
    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/ClirInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 393
    .local v5, "_arg3":Z
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 394
    invoke-virtual {p0, v2, v3, v4, v5}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getClirResponse(IILvendor/qti/hardware/radio/ims/ClirInfo;Z)V

    .line 395
    goto/16 :goto_0

    .line 374
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ClirInfo;
    .end local v5    # "_arg3":Z
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 376
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 378
    .restart local v3    # "_arg1":I
    sget-object v4, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;

    .line 379
    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 380
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getClipResponse(IILvendor/qti/hardware/radio/ims/ClipProvisionStatus;)V

    .line 381
    goto/16 :goto_0

    .line 362
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ClipProvisionStatus;
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 364
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 366
    .restart local v3    # "_arg1":I
    sget-object v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 367
    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 368
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->conferenceResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 369
    goto/16 :goto_0

    .line 350
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 352
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 354
    .restart local v3    # "_arg1":I
    sget-object v4, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/SuppServiceStatus;

    .line 355
    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/SuppServiceStatus;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 356
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->suppServiceStatusResponse(IILvendor/qti/hardware/radio/ims/SuppServiceStatus;)V

    .line 357
    goto/16 :goto_0

    .line 338
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SuppServiceStatus;
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 340
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 342
    .restart local v3    # "_arg1":I
    sget-object v4, Lvendor/qti/hardware/radio/ims/RegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/RegistrationInfo;

    .line 343
    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getImsRegistrationStateResponse(IILvendor/qti/hardware/radio/ims/RegistrationInfo;)V

    .line 345
    goto/16 :goto_0

    .line 326
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/RegistrationInfo;
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 328
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 330
    .restart local v3    # "_arg1":I
    sget-object v4, Lvendor/qti/hardware/radio/ims/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 331
    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 332
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->getConfigResponse(IILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    .line 333
    goto/16 :goto_0

    .line 314
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 316
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 318
    .restart local v3    # "_arg1":I
    sget-object v4, Lvendor/qti/hardware/radio/ims/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 319
    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 320
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setConfigResponse(IILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    .line 321
    goto/16 :goto_0

    .line 302
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 306
    .restart local v3    # "_arg1":I
    sget-object v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 307
    .local v4, "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 308
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->resumeResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 309
    goto/16 :goto_0

    .line 290
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 292
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 294
    .restart local v3    # "_arg1":I
    sget-object v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/qti/hardware/radio/ims/SipErrorInfo;

    .line 295
    .restart local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->holdResponse(IILvendor/qti/hardware/radio/ims/SipErrorInfo;)V

    .line 297
    goto :goto_0

    .line 280
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Lvendor/qti/hardware/radio/ims/SipErrorInfo;
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 282
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 283
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 284
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->setServiceStatusResponse(II)V

    .line 285
    goto :goto_0

    .line 268
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 270
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 272
    .restart local v3    # "_arg1":I
    sget-object v4, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 273
    .local v4, "_arg2":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 274
    invoke-virtual {p0, v2, v3, v4}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->queryServiceStatusResponse(II[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V

    .line 275
    goto :goto_0

    .line 258
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 260
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 261
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 262
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->requestRegistrationChangeResponse(II)V

    .line 263
    goto :goto_0

    .line 248
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 250
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 251
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 252
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->hangupResponse(II)V

    .line 253
    goto :goto_0

    .line 238
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 240
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 241
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 242
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->answerResponse(II)V

    .line 243
    goto :goto_0

    .line 228
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 230
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 231
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 232
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->dialResponse(II)V

    .line 233
    nop

    .line 742
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :goto_0
    return v1

    :sswitch_data_0
    .sparse-switch
        0xfffffe -> :sswitch_2
        0xffffff -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2c
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
