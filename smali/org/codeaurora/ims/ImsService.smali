.class public Lorg/codeaurora/ims/ImsService;
.super Landroid/telephony/ims/ImsService;
.source "ImsService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsService"

.field private static mSubController:Lorg/codeaurora/ims/ImsSubController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/telephony/ims/ImsService;-><init>()V

    return-void
.end method

.method public static getServiceSubs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/codeaurora/ims/ImsServiceSub;",
            ">;"
        }
    .end annotation

    .line 47
    sget-object v0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSubController;->getServiceSubs()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private migrateDb()V
    .locals 7

    .line 52
    const-string v0, "rtt_mode"

    .line 53
    .local v0, "QTI_IMS_RTT_MODE":Ljava/lang/String;
    const/4 v1, -0x1

    .line 56
    .local v1, "RTT_MODE_INVALID":I
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "rtt_mode"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 58
    .local v2, "rttMode":I
    if-eq v2, v4, :cond_0

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "upgradeDb: migrate to new db key for rtt. mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "rtt_calling_mode"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 62
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 65
    :cond_0
    return-void
.end method

.method private setup()V
    .locals 2

    .line 39
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsService;->getQtiCarrierConfigHelper()Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->setup(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->migrateDb()V

    .line 41
    new-instance v0, Lorg/codeaurora/ims/ImsSubController;

    invoke-direct {v0, p0}, Lorg/codeaurora/ims/ImsSubController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    .line 42
    invoke-static {}, Lorg/codeaurora/ims/ImsService;->getServiceSubs()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->init(Ljava/util/List;Landroid/content/Context;)V

    .line 43
    sget-object v0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSubController;->registerListener(Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;)V

    .line 44
    return-void
.end method


# virtual methods
.method public createMmTelFeature(I)Landroid/telephony/ims/feature/MmTelFeature;
    .locals 4
    .param p1, "slotId"    # I

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createMmTelFeature :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    sget-object v0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsSubController;->getServiceSub(I)Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 162
    .local v0, "serviceSub":Lorg/codeaurora/ims/ImsServiceSub;
    :goto_0
    if-nez v0, :cond_1

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createMmTelFeature :: Invalid slotId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    return-object v1

    .line 166
    :cond_1
    return-object v0
.end method

.method public disableIms(I)V
    .locals 3
    .param p1, "slotId"    # I

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disableIms :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    sget-object v0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsSubController;->getServiceSub(I)Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 139
    .local v0, "serviceSub":Lorg/codeaurora/ims/ImsServiceSub;
    :goto_0
    if-nez v0, :cond_1

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableIms :: Invalid slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    return-void

    .line 143
    :cond_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->turnOffIms()V

    .line 144
    return-void
.end method

.method public enableIms(I)V
    .locals 3
    .param p1, "slotId"    # I

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableIms :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsSubController;->getServiceSub(I)Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 123
    .local v0, "serviceSub":Lorg/codeaurora/ims/ImsServiceSub;
    :goto_0
    if-nez v0, :cond_1

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableIms :: Invalid slotId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    return-void

    .line 127
    :cond_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->turnOnIms()V

    .line 128
    return-void
.end method

.method public getConfig(I)Landroid/telephony/ims/stub/ImsConfigImplBase;
    .locals 4
    .param p1, "slotId"    # I

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConfig :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    sget-object v0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsSubController;->getServiceSub(I)Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 181
    .local v0, "serviceSub":Lorg/codeaurora/ims/ImsServiceSub;
    :goto_0
    if-nez v0, :cond_1

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getConfig :: invalid slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    return-object v1

    .line 185
    :cond_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getConfigInterface()Lorg/codeaurora/ims/ImsConfigImpl;

    move-result-object v1

    return-object v1
.end method

.method public getQtiCarrierConfigHelper()Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;
    .locals 1

    .line 221
    invoke-static {}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->getInstance()Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    move-result-object v0

    return-object v0
.end method

.method public getRegistration(I)Landroid/telephony/ims/stub/ImsRegistrationImplBase;
    .locals 4
    .param p1, "slotId"    # I

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRegistration :: slotId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    sget-object v0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0, p1}, Lorg/codeaurora/ims/ImsSubController;->getServiceSub(I)Lorg/codeaurora/ims/ImsServiceSub;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 199
    .local v0, "serviceSub":Lorg/codeaurora/ims/ImsServiceSub;
    :goto_0
    if-nez v0, :cond_1

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRegistration :: invalid slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    return-object v1

    .line 203
    :cond_1
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsServiceSub;->getImsRegistrationInterface()Lorg/codeaurora/ims/ImsRegistrationImpl;

    move-result-object v1

    return-object v1
.end method

.method public onCreate()V
    .locals 1

    .line 69
    invoke-super {p0}, Landroid/telephony/ims/ImsService;->onCreate()V

    .line 70
    const-string v0, "ImsService created!"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0}, Lorg/codeaurora/ims/ImsService;->setup()V

    .line 72
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 208
    const-string v0, "Ims Service Destroyed Successfully..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    sget-object v0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsSubController;->unregisterListener(Lorg/codeaurora/ims/ImsSubController$OnMultiSimConfigChanged;)Z

    .line 210
    invoke-static {}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->getInstance()Lcom/qualcomm/ims/vt/ImsVideoGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/ImsVideoGlobals;->dispose()V

    .line 211
    sget-object v0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsSubController;->dispose()V

    .line 214
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    .line 215
    invoke-virtual {p0}, Lorg/codeaurora/ims/ImsService;->getQtiCarrierConfigHelper()Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codeaurora/ims/utils/QtiCarrierConfigHelper;->teardown()V

    .line 216
    invoke-super {p0}, Landroid/telephony/ims/ImsService;->onDestroy()V

    .line 217
    return-void
.end method

.method public querySupportedImsFeatures()Landroid/telephony/ims/stub/ImsFeatureConfiguration;
    .locals 4

    .line 88
    new-instance v0, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    invoke-direct {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;-><init>()V

    .line 89
    .local v0, "features":Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Lorg/codeaurora/ims/ImsService;->mSubController:Lorg/codeaurora/ims/ImsSubController;

    invoke-virtual {v2}, Lorg/codeaurora/ims/ImsSubController;->getActiveModemCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 90
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 91
    invoke-virtual {v2, v1, v3}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->addFeature(II)Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsFeatureConfiguration$Builder;->build()Landroid/telephony/ims/stub/ImsFeatureConfiguration;

    move-result-object v1

    return-object v1
.end method

.method public readyForFeatureCreation()V
    .locals 1

    .line 109
    const-string v0, "readyForFeatureCreation :: No-op"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    return-void
.end method
