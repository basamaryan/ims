.class public abstract Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;
.super Landroid/os/Binder;
.source "IImsRadio.java"

# interfaces
.implements Lvendor/qti/hardware/radio/ims/IImsRadio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/qti/hardware/radio/ims/IImsRadio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_acknowledgeSms:I = 0x2a

.field static final TRANSACTION_acknowledgeSmsReport:I = 0x2b

.field static final TRANSACTION_addParticipant:I = 0x3

.field static final TRANSACTION_answer:I = 0x5

.field static final TRANSACTION_callComposerDial:I = 0x32

.field static final TRANSACTION_cancelModifyCall:I = 0x28

.field static final TRANSACTION_cancelPendingUssd:I = 0x31

.field static final TRANSACTION_conference:I = 0xe

.field static final TRANSACTION_deflectCall:I = 0x24

.field static final TRANSACTION_dial:I = 0x2

.field static final TRANSACTION_emergencyDial:I = 0x2f

.field static final TRANSACTION_exitEmergencyCallbackMode:I = 0x14

.field static final TRANSACTION_exitSmsCallBackMode:I = 0x36

.field static final TRANSACTION_explicitCallTransfer:I = 0x20

.field static final TRANSACTION_getCallWaiting:I = 0x1d

.field static final TRANSACTION_getClip:I = 0xf

.field static final TRANSACTION_getClir:I = 0x10

.field static final TRANSACTION_getColr:I = 0x12

.field static final TRANSACTION_getConfig:I = 0xd

.field static final TRANSACTION_getImsRegistrationState:I = 0x4

.field static final TRANSACTION_getImsSubConfig:I = 0x26

.field static final TRANSACTION_getInterfaceHash:I = 0xfffffe

.field static final TRANSACTION_getInterfaceVersion:I = 0xffffff

.field static final TRANSACTION_getRtpErrorStatistics:I = 0x23

.field static final TRANSACTION_getRtpStatistics:I = 0x22

.field static final TRANSACTION_getSmsFormat:I = 0x2c

.field static final TRANSACTION_hangup:I = 0x6

.field static final TRANSACTION_hold:I = 0xa

.field static final TRANSACTION_modifyCallConfirm:I = 0x1a

.field static final TRANSACTION_modifyCallInitiate:I = 0x19

.field static final TRANSACTION_queryCallForwardStatus:I = 0x1b

.field static final TRANSACTION_queryMultiSimVoiceCapability:I = 0x35

.field static final TRANSACTION_queryServiceStatus:I = 0x8

.field static final TRANSACTION_queryVirtualLineInfo:I = 0x2e

.field static final TRANSACTION_registerMultiIdentityLines:I = 0x2d

.field static final TRANSACTION_requestRegistrationChange:I = 0x7

.field static final TRANSACTION_resume:I = 0xb

.field static final TRANSACTION_sendDtmf:I = 0x15

.field static final TRANSACTION_sendGeolocationInfo:I = 0x25

.field static final TRANSACTION_sendRttMessage:I = 0x27

.field static final TRANSACTION_sendSipDtmf:I = 0x33

.field static final TRANSACTION_sendSms:I = 0x29

.field static final TRANSACTION_sendUssd:I = 0x30

.field static final TRANSACTION_setCallForwardStatus:I = 0x1c

.field static final TRANSACTION_setCallWaiting:I = 0x1e

.field static final TRANSACTION_setCallback:I = 0x1

.field static final TRANSACTION_setClir:I = 0x11

.field static final TRANSACTION_setColr:I = 0x13

.field static final TRANSACTION_setConfig:I = 0xc

.field static final TRANSACTION_setMediaConfiguration:I = 0x34

.field static final TRANSACTION_setServiceStatus:I = 0x9

.field static final TRANSACTION_setSuppServiceNotification:I = 0x1f

.field static final TRANSACTION_setUiTtyMode:I = 0x18

.field static final TRANSACTION_startDtmf:I = 0x16

.field static final TRANSACTION_stopDtmf:I = 0x17

.field static final TRANSACTION_suppServiceStatus:I = 0x21


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 199
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 200
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->markVintfStability()V

    .line 201
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, p0, v0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadio;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 209
    if-nez p0, :cond_0

    .line 210
    const/4 v0, 0x0

    return-object v0

    .line 212
    :cond_0
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 213
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lvendor/qti/hardware/radio/ims/IImsRadio;

    if-eqz v1, :cond_1

    .line 214
    move-object v1, v0

    check-cast v1, Lvendor/qti/hardware/radio/ims/IImsRadio;

    return-object v1

    .line 216
    :cond_1
    new-instance v1, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;

    invoke-direct {v1, p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 220
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    sget-object v0, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->DESCRIPTOR:Ljava/lang/String;

    .line 225
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 226
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 248
    packed-switch p1, :pswitch_data_0

    .line 762
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 232
    :sswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    return v1

    .line 237
    :sswitch_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 239
    return v1

    .line 243
    :sswitch_2
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    return v1

    .line 755
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 756
    .local v2, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 757
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->exitSmsCallBackMode(I)V

    .line 758
    goto/16 :goto_0

    .line 747
    .end local v2    # "_arg0":I
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 748
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 749
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->queryMultiSimVoiceCapability(I)V

    .line 750
    goto/16 :goto_0

    .line 737
    .end local v2    # "_arg0":I
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 739
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/MediaConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/MediaConfig;

    .line 740
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/MediaConfig;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 741
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setMediaConfiguration(ILvendor/qti/hardware/radio/ims/MediaConfig;)V

    .line 742
    goto/16 :goto_0

    .line 727
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/MediaConfig;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 729
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 730
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 731
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendSipDtmf(ILjava/lang/String;)V

    .line 732
    goto/16 :goto_0

    .line 717
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 719
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;

    .line 720
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 721
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->callComposerDial(ILvendor/qti/hardware/radio/ims/CallComposerDialRequest;)V

    .line 722
    goto/16 :goto_0

    .line 709
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallComposerDialRequest;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 710
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 711
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->cancelPendingUssd(I)V

    .line 712
    goto/16 :goto_0

    .line 699
    .end local v2    # "_arg0":I
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 701
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 702
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 703
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendUssd(ILjava/lang/String;)V

    .line 704
    goto/16 :goto_0

    .line 689
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 691
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;

    .line 692
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 693
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->emergencyDial(ILvendor/qti/hardware/radio/ims/EmergencyDialRequest;)V

    .line 694
    goto/16 :goto_0

    .line 679
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/EmergencyDialRequest;
    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 681
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 682
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 683
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->queryVirtualLineInfo(ILjava/lang/String;)V

    .line 684
    goto/16 :goto_0

    .line 669
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 671
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;

    .line 672
    .local v3, "_arg1":[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 673
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->registerMultiIdentityLines(I[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;)V

    .line 674
    goto/16 :goto_0

    .line 661
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Lvendor/qti/hardware/radio/ims/MultiIdentityLineInfo;
    :pswitch_a
    invoke-virtual {p0}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getSmsFormat()Ljava/lang/String;

    move-result-object v2

    .line 662
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 664
    goto/16 :goto_0

    .line 652
    .end local v2    # "_result":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 654
    .local v2, "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;

    .line 655
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 656
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->acknowledgeSmsReport(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;)V

    .line 657
    goto/16 :goto_0

    .line 642
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsReportInfo;
    :pswitch_c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 644
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;

    .line 645
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 646
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->acknowledgeSms(ILvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;)V

    .line 647
    goto/16 :goto_0

    .line 632
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/AcknowledgeSmsInfo;
    :pswitch_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 634
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/SmsSendRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/SmsSendRequest;

    .line 635
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/SmsSendRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 636
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendSms(ILvendor/qti/hardware/radio/ims/SmsSendRequest;)V

    .line 637
    goto/16 :goto_0

    .line 622
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/SmsSendRequest;
    :pswitch_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 624
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 625
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 626
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->cancelModifyCall(II)V

    .line 627
    goto/16 :goto_0

    .line 612
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 614
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 615
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 616
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendRttMessage(ILjava/lang/String;)V

    .line 617
    goto/16 :goto_0

    .line 604
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Ljava/lang/String;
    :pswitch_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 605
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 606
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getImsSubConfig(I)V

    .line 607
    goto/16 :goto_0

    .line 594
    .end local v2    # "_arg0":I
    :pswitch_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 596
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/GeoLocationInfo;

    .line 597
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/GeoLocationInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 598
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendGeolocationInfo(ILvendor/qti/hardware/radio/ims/GeoLocationInfo;)V

    .line 599
    goto/16 :goto_0

    .line 584
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/GeoLocationInfo;
    :pswitch_12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 586
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;

    .line 587
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 588
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->deflectCall(ILvendor/qti/hardware/radio/ims/DeflectRequestInfo;)V

    .line 589
    goto/16 :goto_0

    .line 576
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DeflectRequestInfo;
    :pswitch_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 577
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 578
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getRtpErrorStatistics(I)V

    .line 579
    goto/16 :goto_0

    .line 568
    .end local v2    # "_arg0":I
    :pswitch_14
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 569
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 570
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getRtpStatistics(I)V

    .line 571
    goto/16 :goto_0

    .line 558
    .end local v2    # "_arg0":I
    :pswitch_15
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 560
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;

    .line 561
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 562
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->suppServiceStatus(ILvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;)V

    .line 563
    goto/16 :goto_0

    .line 548
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/SuppServiceStatusRequest;
    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 550
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;

    .line 551
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 552
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->explicitCallTransfer(ILvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;)V

    .line 553
    goto/16 :goto_0

    .line 538
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ExplicitCallTransferInfo;
    :pswitch_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 540
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 541
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 542
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setSuppServiceNotification(II)V

    .line 543
    goto/16 :goto_0

    .line 528
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 530
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/CallWaitingInfo;

    .line 531
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 532
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setCallWaiting(ILvendor/qti/hardware/radio/ims/CallWaitingInfo;)V

    .line 533
    goto/16 :goto_0

    .line 518
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallWaitingInfo;
    :pswitch_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 520
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 521
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 522
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getCallWaiting(II)V

    .line 523
    goto/16 :goto_0

    .line 508
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_1a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 510
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    .line 511
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 512
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V

    .line 513
    goto/16 :goto_0

    .line 498
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    :pswitch_1b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 500
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/CallForwardInfo;

    .line 501
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 502
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->queryCallForwardStatus(ILvendor/qti/hardware/radio/ims/CallForwardInfo;)V

    .line 503
    goto/16 :goto_0

    .line 488
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallForwardInfo;
    :pswitch_1c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 490
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    .line 491
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 492
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->modifyCallConfirm(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V

    .line 493
    goto/16 :goto_0

    .line 478
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    :pswitch_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 480
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/CallModifyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/CallModifyInfo;

    .line 481
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 482
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->modifyCallInitiate(ILvendor/qti/hardware/radio/ims/CallModifyInfo;)V

    .line 483
    goto/16 :goto_0

    .line 468
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/CallModifyInfo;
    :pswitch_1e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 470
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/TtyInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/TtyInfo;

    .line 471
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/TtyInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 472
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setUiTtyMode(ILvendor/qti/hardware/radio/ims/TtyInfo;)V

    .line 473
    goto/16 :goto_0

    .line 460
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/TtyInfo;
    :pswitch_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 461
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 462
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->stopDtmf(I)V

    .line 463
    goto/16 :goto_0

    .line 450
    .end local v2    # "_arg0":I
    :pswitch_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 452
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/DtmfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .line 453
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 454
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->startDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V

    .line 455
    goto/16 :goto_0

    .line 440
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :pswitch_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 442
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/DtmfInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/DtmfInfo;

    .line 443
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 444
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->sendDtmf(ILvendor/qti/hardware/radio/ims/DtmfInfo;)V

    .line 445
    goto/16 :goto_0

    .line 432
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DtmfInfo;
    :pswitch_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 433
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 434
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->exitEmergencyCallbackMode(I)V

    .line 435
    goto/16 :goto_0

    .line 422
    .end local v2    # "_arg0":I
    :pswitch_23
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 424
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/ColrInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/ColrInfo;

    .line 425
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/ColrInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 426
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setColr(ILvendor/qti/hardware/radio/ims/ColrInfo;)V

    .line 427
    goto/16 :goto_0

    .line 414
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ColrInfo;
    :pswitch_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 415
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 416
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getColr(I)V

    .line 417
    goto/16 :goto_0

    .line 404
    .end local v2    # "_arg0":I
    :pswitch_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 406
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/ClirInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/ClirInfo;

    .line 407
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/ClirInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 408
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setClir(ILvendor/qti/hardware/radio/ims/ClirInfo;)V

    .line 409
    goto/16 :goto_0

    .line 396
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ClirInfo;
    :pswitch_26
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 397
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 398
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getClir(I)V

    .line 399
    goto/16 :goto_0

    .line 388
    .end local v2    # "_arg0":I
    :pswitch_27
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 389
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 390
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getClip(I)V

    .line 391
    goto/16 :goto_0

    .line 380
    .end local v2    # "_arg0":I
    :pswitch_28
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 381
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 382
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->conference(I)V

    .line 383
    goto/16 :goto_0

    .line 370
    .end local v2    # "_arg0":I
    :pswitch_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 372
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 373
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 374
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    .line 375
    goto/16 :goto_0

    .line 360
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :pswitch_2a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 362
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/ConfigInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/ConfigInfo;

    .line 363
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 364
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setConfig(ILvendor/qti/hardware/radio/ims/ConfigInfo;)V

    .line 365
    goto/16 :goto_0

    .line 350
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/ConfigInfo;
    :pswitch_2b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 352
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 353
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 354
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->resume(II)V

    .line 355
    goto/16 :goto_0

    .line 340
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 342
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 343
    .restart local v3    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 344
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->hold(II)V

    .line 345
    goto/16 :goto_0

    .line 330
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 332
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;

    .line 333
    .local v3, "_arg1":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 334
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setServiceStatus(I[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;)V

    .line 335
    goto/16 :goto_0

    .line 322
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":[Lvendor/qti/hardware/radio/ims/ServiceStatusInfo;
    :pswitch_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 323
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 324
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->queryServiceStatus(I)V

    .line 325
    goto/16 :goto_0

    .line 312
    .end local v2    # "_arg0":I
    :pswitch_2f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 314
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 315
    .local v3, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 316
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->requestRegistrationChange(II)V

    .line 317
    goto :goto_0

    .line 302
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :pswitch_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 304
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/HangupRequestInfo;

    .line 305
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/HangupRequestInfo;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 306
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->hangup(ILvendor/qti/hardware/radio/ims/HangupRequestInfo;)V

    .line 307
    goto :goto_0

    .line 292
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/HangupRequestInfo;
    :pswitch_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 294
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/AnswerRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/AnswerRequest;

    .line 295
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/AnswerRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 296
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->answer(ILvendor/qti/hardware/radio/ims/AnswerRequest;)V

    .line 297
    goto :goto_0

    .line 284
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/AnswerRequest;
    :pswitch_32
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 285
    .restart local v2    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 286
    invoke-virtual {p0, v2}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->getImsRegistrationState(I)V

    .line 287
    goto :goto_0

    .line 274
    .end local v2    # "_arg0":I
    :pswitch_33
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 276
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/DialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/DialRequest;

    .line 277
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/DialRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 278
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->addParticipant(ILvendor/qti/hardware/radio/ims/DialRequest;)V

    .line 279
    goto :goto_0

    .line 264
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DialRequest;
    :pswitch_34
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 266
    .restart local v2    # "_arg0":I
    sget-object v3, Lvendor/qti/hardware/radio/ims/DialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/qti/hardware/radio/ims/DialRequest;

    .line 267
    .restart local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DialRequest;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 268
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->dial(ILvendor/qti/hardware/radio/ims/DialRequest;)V

    .line 269
    goto :goto_0

    .line 253
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/DialRequest;
    :pswitch_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lvendor/qti/hardware/radio/ims/IImsRadioResponse$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadioResponse;

    move-result-object v2

    .line 255
    .local v2, "_arg0":Lvendor/qti/hardware/radio/ims/IImsRadioResponse;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lvendor/qti/hardware/radio/ims/IImsRadioIndication$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/qti/hardware/radio/ims/IImsRadioIndication;

    move-result-object v3

    .line 256
    .local v3, "_arg1":Lvendor/qti/hardware/radio/ims/IImsRadioIndication;
    invoke-virtual {p2}, Landroid/os/Parcel;->enforceNoDataAvail()V

    .line 257
    invoke-virtual {p0, v2, v3}, Lvendor/qti/hardware/radio/ims/IImsRadio$Stub;->setCallback(Lvendor/qti/hardware/radio/ims/IImsRadioResponse;Lvendor/qti/hardware/radio/ims/IImsRadioIndication;)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 259
    nop

    .line 765
    .end local v2    # "_arg0":Lvendor/qti/hardware/radio/ims/IImsRadioResponse;
    .end local v3    # "_arg1":Lvendor/qti/hardware/radio/ims/IImsRadioIndication;
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
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
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
