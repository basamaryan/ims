.class public Lorg/codeaurora/ims/DriverCallIms;
.super Ljava/lang/Object;
.source "DriverCallIms.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/DriverCallIms$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/codeaurora/ims/DriverCallIms;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONF_SUPPORT_INDICATED:I = 0x1

.field public static final CONF_SUPPORT_NONE:I = 0x0

.field public static final CONF_VIDEO_SUPPORTED:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "DRIVERCALL-IMS"

.field public static final UPDATE_AUDIO_QUALITY:I = 0x2000

.field public static final UPDATE_CALL_DETAILS:I = 0x20

.field public static final UPDATE_CALL_PROGRESS_INFO:I = 0x800

.field public static final UPDATE_CONF_SUPPORT:I = 0x200

.field public static final UPDATE_CRS_INFO:I = 0x400

.field public static final UPDATE_DIVERSION_INFO:I = 0x1000

.field public static final UPDATE_ENCRYPTION:I = 0x80

.field public static final UPDATE_HISTORY_INFO:I = 0x100

.field public static final UPDATE_INDEX:I = 0x2

.field public static final UPDATE_IS_MPTY:I = 0x10

.field public static final UPDATE_IS_MT:I = 0x8

.field public static final UPDATE_MODEM_CALL_ID:I = 0x4000

.field public static final UPDATE_NONE:I = 0x0

.field public static final UPDATE_NUMBER:I = 0x4

.field public static final UPDATE_STATE:I = 0x1


# instance fields
.field public TOA:I

.field public additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

.field public als:I

.field public audioQuality:Lorg/codeaurora/ims/AudioQuality;

.field public callDetails:Lorg/codeaurora/ims/CallDetails;

.field public callFailCause:Landroid/telephony/ims/ImsReasonInfo;

.field public callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

.field public crsData:Lorg/codeaurora/ims/CrsData;

.field public diversionInfo:Ljava/lang/String;

.field public historyInfo:Ljava/lang/String;

.field public index:I

.field public isDcCall:Z

.field public isEncrypted:Z

.field public isMT:Z

.field public isMpty:Z

.field public isPreparatory:Z

.field public isTirOverwriteAllowed:Z

.field public isVoice:Z

.field public isVoicePrivacy:Z

.field private mCallComposerInfo:Lorg/codeaurora/ims/CallComposerInfo;

.field public mCallFailReason:I

.field public mConfSupported:I

.field private mEcnamInfo:Lorg/codeaurora/ims/EcnamInfo;

.field public mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

.field private final mVerstatInfo:Lorg/codeaurora/ims/VerstatInfo;

.field public modemCallId:I

.field public name:Ljava/lang/String;

.field public namePresentation:I

.field public number:Ljava/lang/String;

.field public numberPresentation:I

.field public state:Lorg/codeaurora/ims/DriverCallIms$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 113
    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 166
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 167
    new-instance v0, Lorg/codeaurora/ims/VerstatInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/VerstatInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mVerstatInfo:Lorg/codeaurora/ims/VerstatInfo;

    .line 168
    new-instance v0, Lorg/codeaurora/ims/CrsData;

    invoke-direct {v0}, Lorg/codeaurora/ims/CrsData;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 169
    new-instance v0, Lorg/codeaurora/ims/CallProgressInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallProgressInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 170
    new-instance v0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    .line 171
    new-instance v0, Lorg/codeaurora/ims/AudioQuality;

    invoke-direct {v0}, Lorg/codeaurora/ims/AudioQuality;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    .line 172
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/VerstatInfo;)V
    .locals 1
    .param p1, "callComposerInfo"    # Lorg/codeaurora/ims/CallComposerInfo;
    .param p2, "verstatInfo"    # Lorg/codeaurora/ims/VerstatInfo;

    .line 184
    invoke-direct {p0, p2}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/VerstatInfo;)V

    .line 185
    new-instance v0, Lorg/codeaurora/ims/CrsData;

    invoke-direct {v0}, Lorg/codeaurora/ims/CrsData;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 186
    iput-object p1, p0, Lorg/codeaurora/ims/DriverCallIms;->mCallComposerInfo:Lorg/codeaurora/ims/CallComposerInfo;

    .line 187
    new-instance v0, Lorg/codeaurora/ims/CallProgressInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallProgressInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 188
    new-instance v0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    .line 189
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/VerstatInfo;Lorg/codeaurora/ims/EcnamInfo;)V
    .locals 0
    .param p1, "callComposerInfo"    # Lorg/codeaurora/ims/CallComposerInfo;
    .param p2, "verstatInfo"    # Lorg/codeaurora/ims/VerstatInfo;
    .param p3, "ecnamInfo"    # Lorg/codeaurora/ims/EcnamInfo;

    .line 193
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/VerstatInfo;)V

    .line 194
    iput-object p3, p0, Lorg/codeaurora/ims/DriverCallIms;->mEcnamInfo:Lorg/codeaurora/ims/EcnamInfo;

    .line 195
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/DriverCallIms;)V
    .locals 4
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 113
    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 131
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/CallDetails;-><init>(Lorg/codeaurora/ims/CallDetails;)V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 132
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 133
    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 134
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 135
    new-instance v0, Lorg/codeaurora/ims/CrsData;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/CrsData;-><init>(Lorg/codeaurora/ims/CrsData;)V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 136
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 137
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 138
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 139
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    .line 140
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    .line 141
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 142
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->als:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->als:I

    .line 143
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    .line 144
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    .line 145
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    .line 146
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->name:Ljava/lang/String;

    .line 147
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    .line 148
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    .line 149
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 150
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 151
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getVerstatInfo()Lorg/codeaurora/ims/VerstatInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mVerstatInfo:Lorg/codeaurora/ims/VerstatInfo;

    .line 152
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    .line 153
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isTirOverwriteAllowed:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isTirOverwriteAllowed:Z

    .line 154
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getCallComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mCallComposerInfo:Lorg/codeaurora/ims/CallComposerInfo;

    .line 155
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 156
    new-instance v0, Lorg/codeaurora/ims/CallProgressInfo;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/CallProgressInfo;-><init>(Lorg/codeaurora/ims/CallProgressInfo;)V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 157
    iget-object v0, p1, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    .line 158
    new-instance v0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;-><init>(Lorg/codeaurora/ims/MsimAdditionalCallInfo;)V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    .line 159
    new-instance v0, Lorg/codeaurora/ims/AudioQuality;

    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    invoke-direct {v0, v1}, Lorg/codeaurora/ims/AudioQuality;-><init>(Lorg/codeaurora/ims/AudioQuality;)V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    .line 160
    invoke-virtual {p1}, Lorg/codeaurora/ims/DriverCallIms;->getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mEcnamInfo:Lorg/codeaurora/ims/EcnamInfo;

    .line 161
    iget v0, p1, Lorg/codeaurora/ims/DriverCallIms;->modemCallId:I

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->modemCallId:I

    .line 162
    iget-boolean v0, p1, Lorg/codeaurora/ims/DriverCallIms;->isDcCall:Z

    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isDcCall:Z

    .line 163
    return-void
.end method

.method public constructor <init>(Lorg/codeaurora/ims/VerstatInfo;)V
    .locals 1
    .param p1, "verstatInfo"    # Lorg/codeaurora/ims/VerstatInfo;

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 113
    iput-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 175
    new-instance v0, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 176
    new-instance v0, Lorg/codeaurora/ims/CrsData;

    invoke-direct {v0}, Lorg/codeaurora/ims/CrsData;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    .line 177
    iput-object p1, p0, Lorg/codeaurora/ims/DriverCallIms;->mVerstatInfo:Lorg/codeaurora/ims/VerstatInfo;

    .line 178
    new-instance v0, Lorg/codeaurora/ims/CallProgressInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/CallProgressInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 179
    new-instance v0, Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    invoke-direct {v0}, Lorg/codeaurora/ims/MsimAdditionalCallInfo;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    .line 180
    new-instance v0, Lorg/codeaurora/ims/AudioQuality;

    invoke-direct {v0}, Lorg/codeaurora/ims/AudioQuality;-><init>()V

    iput-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    .line 181
    return-void
.end method

.method public static presentationFromCLIP(I)I
    .locals 3
    .param p0, "cli"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .line 323
    packed-switch p0, :pswitch_data_0

    .line 329
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal presentation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :pswitch_0
    const/4 v0, 0x4

    return v0

    .line 326
    :pswitch_1
    const/4 v0, 0x3

    return v0

    .line 325
    :pswitch_2
    const/4 v0, 0x2

    return v0

    .line 324
    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 38
    check-cast p1, Lorg/codeaurora/ims/DriverCallIms;

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/DriverCallIms;->compareTo(Lorg/codeaurora/ims/DriverCallIms;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/codeaurora/ims/DriverCallIms;)I
    .locals 2
    .param p1, "dc"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 338
    iget v0, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iget v1, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    if-ge v0, v1, :cond_0

    .line 339
    const/4 v0, -0x1

    return v0

    .line 340
    :cond_0
    if-ne v0, v1, :cond_1

    .line 341
    const/4 v0, 0x0

    return v0

    .line 343
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public getCallComposerInfo()Lorg/codeaurora/ims/CallComposerInfo;
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mCallComposerInfo:Lorg/codeaurora/ims/CallComposerInfo;

    return-object v0
.end method

.method public getEcnamInfo()Lorg/codeaurora/ims/EcnamInfo;
    .locals 1

    .line 301
    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mEcnamInfo:Lorg/codeaurora/ims/EcnamInfo;

    return-object v0
.end method

.method public getIsDcCall()Z
    .locals 1

    .line 309
    iget-boolean v0, p0, Lorg/codeaurora/ims/DriverCallIms;->isDcCall:Z

    return v0
.end method

.method public getModemCallId()I
    .locals 1

    .line 305
    iget v0, p0, Lorg/codeaurora/ims/DriverCallIms;->modemCallId:I

    return v0
.end method

.method public getVerstatInfo()Lorg/codeaurora/ims/VerstatInfo;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mVerstatInfo:Lorg/codeaurora/ims/VerstatInfo;

    return-object v0
.end method

.method public isConfSupportIndicated()Z
    .locals 2

    .line 313
    iget v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isVideoConfSupported()Z
    .locals 2

    .line 317
    iget v0, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",toa="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/codeaurora/ims/DriverCallIms;->TOA:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 349
    iget-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eqz v2, :cond_0

    const-string v2, "conf"

    goto :goto_0

    :cond_0
    const-string v2, "norm"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eqz v2, :cond_1

    const-string v2, "mt"

    goto :goto_1

    :cond_1
    const-string v2, "mo"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/codeaurora/ims/DriverCallIms;->als:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 350
    iget-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isVoice:Z

    if-eqz v2, :cond_2

    const-string v2, "voc"

    goto :goto_2

    :cond_2
    const-string v2, "nonvoc"

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 351
    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isVoicePrivacy:Z

    if-eqz v1, :cond_3

    const-string v1, "evp"

    goto :goto_3

    :cond_3
    const-string v1, "noevp"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",,cli="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->numberPresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->namePresentation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Call Details ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",CallFailCause Code= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 355
    invoke-virtual {v1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",CallFailCause String= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 356
    invoke-virtual {v1}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isEncrypted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", historyInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Conf. Support="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->mMtMultiLineInfo:Lorg/codeaurora/ims/MultiIdentityLineInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isTirOverwriteAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isTirOverwriteAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPreparatory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", CRS data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Call progress Info = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", diversionInfo ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", additional call info ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->additionalCallInfo:Lorg/codeaurora/ims/MsimAdditionalCallInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audio quality ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modemCallId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->modemCallId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDcCall = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isDcCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    return-object v0
.end method

.method public update(Lorg/codeaurora/ims/DriverCallIms;)I
    .locals 6
    .param p1, "update"    # Lorg/codeaurora/ims/DriverCallIms;

    .line 205
    if-nez p1, :cond_0

    .line 206
    const/4 v0, 0x0

    return v0

    .line 208
    :cond_0
    const/4 v0, 0x0

    .line 209
    .local v0, "changed":I
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    if-eq v1, v2, :cond_1

    .line 210
    iput-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->state:Lorg/codeaurora/ims/DriverCallIms$State;

    .line 211
    or-int/lit8 v0, v0, 0x1

    .line 213
    :cond_1
    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    iget v2, p1, Lorg/codeaurora/ims/DriverCallIms;->index:I

    if-eq v1, v2, :cond_2

    .line 214
    iput v2, p0, Lorg/codeaurora/ims/DriverCallIms;->index:I

    .line 215
    or-int/lit8 v0, v0, 0x2

    .line 217
    :cond_2
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    if-eq v1, v2, :cond_3

    .line 218
    iput-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 219
    or-int/lit8 v0, v0, 0x4

    .line 221
    :cond_3
    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    if-eq v1, v2, :cond_4

    .line 222
    iput-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isMT:Z

    .line 223
    or-int/lit8 v0, v0, 0x8

    .line 225
    :cond_4
    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    if-eq v1, v2, :cond_5

    .line 226
    iput-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isMpty:Z

    .line 227
    or-int/lit8 v0, v0, 0x10

    .line 229
    :cond_5
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    if-eqz v1, :cond_a

    .line 230
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    if-nez v1, :cond_6

    .line 231
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v2

    iget-object v3, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 232
    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v3

    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 233
    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_0

    .line 235
    :cond_6
    invoke-virtual {v1}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    .line 236
    .local v1, "imsReasonCode":I
    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    .line 237
    .local v2, "imsReasonExtraCode":I
    iget-object v3, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, "imsReasonExtraMessage":Ljava/lang/String;
    iget-object v4, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v4

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v5

    if-eq v4, v5, :cond_7

    .line 239
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v1

    .line 241
    :cond_7
    iget-object v4, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v4

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v5

    if-eq v4, v5, :cond_8

    .line 242
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraCode()I

    move-result v2

    .line 244
    :cond_8
    iget-object v4, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v5}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v5

    if-eq v4, v5, :cond_9

    .line 245
    iget-object v4, p1, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v3

    .line 247
    :cond_9
    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v4, v1, v2, v3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v4, p0, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 251
    .end local v1    # "imsReasonCode":I
    .end local v2    # "imsReasonExtraCode":I
    .end local v3    # "imsReasonExtraMessage":Ljava/lang/String;
    :cond_a
    :goto_0
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/CallDetails;->update(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 252
    or-int/lit8 v0, v0, 0x20

    .line 254
    :cond_b
    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    if-eq v1, v2, :cond_c

    .line 255
    iput-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isEncrypted:Z

    .line 256
    or-int/lit16 v0, v0, 0x80

    .line 258
    :cond_c
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 259
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    iput-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->historyInfo:Ljava/lang/String;

    .line 260
    or-int/lit16 v0, v0, 0x100

    .line 262
    :cond_d
    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    iget v2, p1, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    if-eq v1, v2, :cond_e

    .line 263
    iput v2, p0, Lorg/codeaurora/ims/DriverCallIms;->mConfSupported:I

    .line 264
    or-int/lit16 v0, v0, 0x200

    .line 266
    :cond_e
    iget-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    iget-object v2, p1, Lorg/codeaurora/ims/DriverCallIms;->crsData:Lorg/codeaurora/ims/CrsData;

    invoke-virtual {v1, v2}, Lorg/codeaurora/ims/CrsData;->update(Lorg/codeaurora/ims/CrsData;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 267
    or-int/lit16 v0, v0, 0x400

    .line 269
    :cond_f
    iget-boolean v1, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    iget-boolean v2, p1, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    if-eq v1, v2, :cond_10

    .line 270
    iput-boolean v2, p0, Lorg/codeaurora/ims/DriverCallIms;->isPreparatory:Z

    .line 271
    or-int/lit16 v0, v0, 0x400

    .line 273
    :cond_10
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 274
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    iput-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->callProgressInfo:Lorg/codeaurora/ims/CallProgressInfo;

    .line 275
    or-int/lit16 v0, v0, 0x800

    .line 277
    :cond_11
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 278
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    iput-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->diversionInfo:Ljava/lang/String;

    .line 279
    or-int/lit16 v0, v0, 0x1000

    .line 281
    :cond_12
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    iget-object v2, p0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 282
    iget-object v1, p1, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    iput-object v1, p0, Lorg/codeaurora/ims/DriverCallIms;->audioQuality:Lorg/codeaurora/ims/AudioQuality;

    .line 283
    or-int/lit16 v0, v0, 0x2000

    .line 285
    :cond_13
    iget v1, p0, Lorg/codeaurora/ims/DriverCallIms;->modemCallId:I

    iget v2, p1, Lorg/codeaurora/ims/DriverCallIms;->modemCallId:I

    if-eq v1, v2, :cond_14

    .line 286
    iput v2, p0, Lorg/codeaurora/ims/DriverCallIms;->modemCallId:I

    .line 287
    or-int/lit16 v0, v0, 0x4000

    .line 289
    :cond_14
    return v0
.end method
