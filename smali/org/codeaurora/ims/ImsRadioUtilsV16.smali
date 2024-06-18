.class public Lorg/codeaurora/ims/ImsRadioUtilsV16;
.super Ljava/lang/Object;
.source "ImsRadioUtilsV16.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    return-void
.end method

.method public static buildCallComposerInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)Lorg/codeaurora/ims/CallComposerInfo;
    .locals 7
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    .line 455
    if-nez p0, :cond_0

    .line 456
    const/4 v0, 0x0

    return-object v0

    .line 459
    :cond_0
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->priority:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->convertPriorityFromHal(I)I

    move-result v0

    .line 460
    .local v0, "priority":I
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->subject:Ljava/util/ArrayList;

    .line 461
    .local v1, "subjectHal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Short;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 462
    .local v2, "subject":Ljava/lang/StringBuilder;
    nop

    .line 463
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 464
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 467
    .end local v3    # "i":I
    :cond_1
    sget-object v3, Lorg/codeaurora/ims/CallComposerInfo$Location;->UNKNOWN:Lorg/codeaurora/ims/CallComposerInfo$Location;

    .line 468
    .local v3, "location":Lorg/codeaurora/ims/CallComposerInfo$Location;
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;

    iget v4, v4, Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;->radius:F

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 469
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;

    invoke-static {v4}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->buildLocationFromHal(Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;)Lorg/codeaurora/ims/CallComposerInfo$Location;

    move-result-object v3

    .line 471
    :cond_2
    iget-object v4, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->imageUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 473
    .local v4, "imageUrl":Landroid/net/Uri;
    new-instance v5, Lorg/codeaurora/ims/CallComposerInfo;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v0, v6, v4, v3}, Lorg/codeaurora/ims/CallComposerInfo;-><init>(ILjava/lang/String;Landroid/net/Uri;Lorg/codeaurora/ims/CallComposerInfo$Location;)V

    return-object v5
.end method

.method public static buildCallComposerInfoHal(Lorg/codeaurora/ims/CallComposerInfo;)Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;
    .locals 5
    .param p0, "from"    # Lorg/codeaurora/ims/CallComposerInfo;

    .line 320
    if-nez p0, :cond_0

    .line 321
    const/4 v0, 0x0

    return-object v0

    .line 324
    :cond_0
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;-><init>()V

    .line 326
    .local v0, "info":Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getPriority()I

    move-result v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->convertToHalPriority(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->priority:I

    .line 327
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 328
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getSubject()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "subject":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 330
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->subject:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    int-to-short v4, v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    .end local v1    # "subject":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getLocation()Lorg/codeaurora/ims/CallComposerInfo$Location;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 334
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getLocation()Lorg/codeaurora/ims/CallComposerInfo$Location;

    move-result-object v1

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->buildLocationHal(Lorg/codeaurora/ims/CallComposerInfo$Location;)Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->location:Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;

    .line 336
    :cond_2
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 337
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;->imageUrl:Ljava/lang/String;

    .line 340
    :cond_3
    return-object v0
.end method

.method public static buildConfigInfo(IZILjava/lang/String;I)Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    .locals 2
    .param p0, "item"    # I
    .param p1, "boolValue"    # Z
    .param p2, "intValue"    # I
    .param p3, "stringValue"    # Ljava/lang/String;
    .param p4, "errorCause"    # I

    .line 87
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;-><init>()V

    .line 89
    .local v0, "configInfo":Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->configInfoItemToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->item:I

    .line 90
    const/4 v1, 0x1

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->hasBoolValue:Z

    .line 91
    iput-boolean p1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->boolValue:Z

    .line 92
    iput p2, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->intValue:I

    .line 93
    if-eqz p3, :cond_0

    .line 94
    iput-object p3, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 96
    :cond_0
    invoke-static {p4}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseToHal(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->errorCause:I

    .line 98
    return-object v0
.end method

.method public static buildDialRequest(Ljava/lang/String;ILorg/codeaurora/ims/CallDetails;ZLorg/codeaurora/ims/RedialInfo;)Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    .locals 6
    .param p0, "address"    # Ljava/lang/String;
    .param p1, "clirMode"    # I
    .param p2, "callDetails"    # Lorg/codeaurora/ims/CallDetails;
    .param p3, "isEncrypted"    # Z
    .param p4, "redialInfo"    # Lorg/codeaurora/ims/RedialInfo;

    .line 373
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;-><init>()V

    .line 375
    .local v0, "dialRequest":Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;
    if-eqz p0, :cond_0

    .line 376
    iput-object p0, v0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->address:Ljava/lang/String;

    .line 378
    :cond_0
    iput p1, v0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->clirMode:I

    .line 380
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtils;->getIpPresentation(I)I

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->presentation:I

    .line 382
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 383
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasCallDetails:Z

    .line 384
    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    invoke-static {v2, p2}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->callDetailsToHal(Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;Lorg/codeaurora/ims/CallDetails;)V

    .line 387
    :cond_1
    invoke-static {p2}, Lorg/codeaurora/ims/ImsRadioUtils;->getIsConferenceUri(Lorg/codeaurora/ims/CallDetails;)Z

    move-result v2

    .line 388
    .local v2, "isConferenceUri":Z
    if-eqz v2, :cond_2

    .line 389
    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isConferenceUri:Z

    .line 390
    iput-boolean v2, v0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsConferenceUri:Z

    .line 392
    :cond_2
    const/4 v3, 0x0

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/codeaurora/ims/CallDetails;->getCallPull()Z

    move-result v4

    goto :goto_0

    :cond_3
    move v4, v3

    .line 393
    .local v4, "isCallPull":Z
    :goto_0
    if-eqz v4, :cond_4

    .line 394
    iput-boolean v4, v0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isCallPull:Z

    .line 395
    iput-boolean v4, v0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsCallPull:Z

    .line 398
    :cond_4
    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->hasIsEncrypted:Z

    .line 399
    iput-boolean p3, v0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->isEncrypted:Z

    .line 401
    if-eqz p2, :cond_5

    .line 402
    invoke-virtual {p2}, Lorg/codeaurora/ims/CallDetails;->getMultiIdentityLineInfo()Lorg/codeaurora/ims/MultiIdentityLineInfo;

    move-result-object v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .line 403
    .local v1, "multiIdentityLineInfo":Lorg/codeaurora/ims/MultiIdentityLineInfo;
    :goto_1
    iget-object v5, v0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->multiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-static {v1, v5}, Lorg/codeaurora/ims/ImsRadioUtilsV14;->toMultiIdentityLineInfoHal(Lorg/codeaurora/ims/MultiIdentityLineInfo;Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)V

    .line 406
    if-nez p4, :cond_6

    .line 407
    new-instance v5, Lorg/codeaurora/ims/RedialInfo;

    invoke-direct {v5, v3, v3}, Lorg/codeaurora/ims/RedialInfo;-><init>(II)V

    move-object p4, v5

    .line 410
    :cond_6
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->redialInfo:Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;

    .line 412
    invoke-virtual {p4}, Lorg/codeaurora/ims/RedialInfo;->getRetryCallFailCause()I

    move-result v5

    .line 411
    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->getCallFailCauseForImsReason(I)I

    move-result v5

    iput v5, v3, Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;->callFailReason:I

    .line 413
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_6/DialRequest;->redialInfo:Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;

    .line 415
    invoke-virtual {p4}, Lorg/codeaurora/ims/RedialInfo;->getRetryCallFailRadioTech()I

    move-result v5

    .line 414
    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->mapRadioTechToHal(I)I

    move-result v5

    iput v5, v3, Lvendor/qti/hardware/radio/ims/V1_6/RedialInfo;->callFailRadioTech:I

    .line 417
    return-object v0
.end method

.method private static buildLocationFromHal(Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;)Lorg/codeaurora/ims/CallComposerInfo$Location;
    .locals 7
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;

    .line 479
    new-instance v6, Lorg/codeaurora/ims/CallComposerInfo$Location;

    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;->radius:F

    iget-wide v2, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;->latitude:D

    iget-wide v4, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;->longitude:D

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/codeaurora/ims/CallComposerInfo$Location;-><init>(FDD)V

    .line 482
    .local v0, "location":Lorg/codeaurora/ims/CallComposerInfo$Location;
    return-object v0
.end method

.method private static buildLocationHal(Lorg/codeaurora/ims/CallComposerInfo$Location;)Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;
    .locals 3
    .param p0, "from"    # Lorg/codeaurora/ims/CallComposerInfo$Location;

    .line 355
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;-><init>()V

    .line 357
    .local v0, "location":Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo$Location;->getRadius()F

    move-result v1

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;->radius:F

    .line 358
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo$Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;->latitude:D

    .line 359
    invoke-virtual {p0}, Lorg/codeaurora/ims/CallComposerInfo$Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallLocation;->longitude:D

    .line 361
    return-object v0
.end method

.method public static callDetailsToHal(Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;Lorg/codeaurora/ims/CallDetails;)V
    .locals 3
    .param p0, "imsRadioCallDetails"    # Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;
    .param p1, "callDetails"    # Lorg/codeaurora/ims/CallDetails;

    .line 430
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeToHal(I)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callType:I

    .line 431
    iget v0, p1, Lorg/codeaurora/ims/CallDetails;->call_domain:I

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->callDomainToHal(I)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callDomain:I

    .line 433
    invoke-virtual {p1}, Lorg/codeaurora/ims/CallDetails;->getRttMode()I

    move-result v0

    invoke-static {v0}, Lorg/codeaurora/ims/ImsRadioUtils;->rttModeToHal(I)I

    move-result v0

    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->rttMode:I

    .line 435
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extrasLength:I

    .line 437
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extrasLength:I

    if-ge v0, v1, :cond_1

    .line 438
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extras:Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/codeaurora/ims/CallDetails;->extras:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 437
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 440
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public static callTypeFromHal(I)I
    .locals 1
    .param p0, "callType"    # I

    .line 443
    packed-switch p0, :pswitch_data_0

    .line 449
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeFromHal(I)I

    move-result v0

    return v0

    .line 445
    :pswitch_0
    const/16 v0, 0x1a

    return v0

    .line 447
    :pswitch_1
    const/16 v0, 0x1b

    return v0

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static configInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;)Lorg/codeaurora/ims/ImsConfigItem;
    .locals 3
    .param p0, "configInfo"    # Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    .line 40
    if-nez p0, :cond_0

    .line 41
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Lorg/codeaurora/ims/ImsConfigItem;

    invoke-direct {v0}, Lorg/codeaurora/ims/ImsConfigItem;-><init>()V

    .line 45
    .local v0, "config":Lorg/codeaurora/ims/ImsConfigItem;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->item:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->configInfoItemFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setItem(I)V

    .line 46
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->hasBoolValue:Z

    if-eqz v1, :cond_1

    .line 47
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->boolValue:Z

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setBoolValue(Z)V

    .line 50
    :cond_1
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->intValue:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_2

    .line 51
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->intValue:I

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setIntValue(I)V

    .line 54
    :cond_2
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->stringValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setStringValue(Ljava/lang/String;)V

    .line 56
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->errorCause:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_3

    .line 57
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->errorCause:I

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtils;->configFailureCauseFromHal(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/codeaurora/ims/ImsConfigItem;->setErrorCause(I)V

    .line 60
    :cond_3
    return-object v0
.end method

.method public static configInfoItemFromHal(I)I
    .locals 1
    .param p0, "item"    # I

    .line 64
    packed-switch p0, :pswitch_data_0

    .line 70
    :pswitch_0
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->configInfoItemFromHal(I)I

    move-result v0

    return v0

    .line 68
    :pswitch_1
    const/16 v0, 0x4b

    return v0

    .line 66
    :pswitch_2
    const/16 v0, 0x4a

    return v0

    :pswitch_data_0
    .packed-switch 0x4b
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static configInfoItemToHal(I)I
    .locals 1
    .param p0, "item"    # I

    .line 75
    packed-switch p0, :pswitch_data_0

    .line 81
    invoke-static {p0}, Lorg/codeaurora/ims/ImsRadioUtilsV15;->configInfoItemToHal(I)I

    move-result v0

    return v0

    .line 79
    :pswitch_0
    const/16 v0, 0x4d

    return v0

    .line 77
    :pswitch_1
    const/16 v0, 0x4b

    return v0

    :pswitch_data_0
    .packed-switch 0x4a
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertPriorityFromHal(I)I
    .locals 1
    .param p0, "priority"    # I

    .line 486
    packed-switch p0, :pswitch_data_0

    .line 490
    const/4 v0, 0x1

    return v0

    .line 488
    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static convertToHalPriority(I)I
    .locals 1
    .param p0, "priority"    # I

    .line 344
    packed-switch p0, :pswitch_data_0

    .line 348
    const/4 v0, 0x1

    return v0

    .line 346
    :pswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static geoLocationDataStatusFromHal(I)I
    .locals 1
    .param p0, "geoLocationDataStatus"    # I

    .line 529
    const/16 v0, 0x7d3

    packed-switch p0, :pswitch_data_0

    .line 539
    return v0

    .line 537
    :pswitch_0
    return v0

    .line 535
    :pswitch_1
    const/16 v0, 0x7d2

    return v0

    .line 533
    :pswitch_2
    const/16 v0, 0x7d1

    return v0

    .line 531
    :pswitch_3
    const/16 v0, 0x7d0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isConfigItemIntroducedInV16(I)Z
    .locals 1
    .param p0, "item"    # I

    .line 102
    packed-switch p0, :pswitch_data_0

    .line 107
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 105
    :pswitch_1
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4b
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static migarateVerstatInfo(Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;)V
    .locals 1
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;
    .param p1, "to"    # Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    .line 277
    iget-boolean v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->canMarkUnwantedCall:Z

    iput-boolean v0, p1, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->canMarkUnwantedCall:Z

    .line 278
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->verificationStatus:I

    iput v0, p1, Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;->verificationStatus:I

    .line 279
    return-void
.end method

.method private static migrateAccTechStatus(Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;)Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;
    .locals 2
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;

    .line 253
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;-><init>()V

    .line 254
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->networkMode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->networkMode:I

    .line 255
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->status:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->status:I

    .line 256
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->restrictCause:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->restrictCause:I

    .line 257
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->hasRegistration:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->hasRegistration:Z

    .line 258
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateRegistrationInfo(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;->registration:Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    .line 259
    return-object v0
.end method

.method private static migrateAccTechStatus(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;",
            ">;)V"
        }
    .end annotation

    .line 247
    .local p0, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;>;"
    .local p1, "to":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;

    .line 248
    .local v1, "status":Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateAccTechStatus(Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;)Lvendor/qti/hardware/radio/ims/V1_6/StatusForAccessTech;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 249
    .end local v1    # "status":Lvendor/qti/hardware/radio/ims/V1_0/StatusForAccessTech;
    :cond_0
    return-void
.end method

.method public static migrateAutoCallRejectionInfoFrom(Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;)Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;
    .locals 2
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;

    .line 520
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;-><init>()V

    .line 521
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->callType:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->callType:I

    .line 522
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->autoRejectionCause:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->autoRejectionCause:I

    .line 523
    iget-short v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->sipErrorCode:S

    iput-short v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->sipErrorCode:S

    .line 524
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/AutoCallRejectionInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->number:Ljava/lang/String;

    .line 525
    return-object v0
.end method

.method public static migrateCallDetails(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;)Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    .line 187
    if-nez p0, :cond_0

    .line 188
    const/4 v0, 0x0

    return-object v0

    .line 190
    :cond_0
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;-><init>()V

    .line 191
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callType:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callType:I

    .line 192
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callDomain:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callDomain:I

    .line 193
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extrasLength:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extrasLength:I

    .line 195
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 196
    .local v2, "extra":Ljava/lang/String;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->extras:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .end local v2    # "extra":Ljava/lang/String;
    goto :goto_0

    .line 199
    :cond_1
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->localAbility:Ljava/util/ArrayList;

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->localAbility:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateServiceStatusInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 200
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->peerAbility:Ljava/util/ArrayList;

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->peerAbility:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateServiceStatusInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 202
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->callSubstate:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->callSubstate:I

    .line 203
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->mediaId:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->mediaId:I

    .line 204
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->causeCode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->causeCode:I

    .line 205
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->rttMode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->rttMode:I

    .line 206
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;->sipAlternateUri:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;->sipAlternateUri:Ljava/lang/String;

    .line 207
    return-object v0
.end method

.method private static migrateCallInfoFrom(Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;

    .line 135
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;-><init>()V

    .line 136
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->state:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->state:I

    .line 137
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->index:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->index:I

    .line 138
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->toa:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->toa:I

    .line 139
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->hasIsMpty:Z

    .line 140
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isMpty:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->isMpty:Z

    .line 141
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->hasIsMT:Z

    .line 142
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isMT:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->isMT:Z

    .line 143
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->als:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->als:I

    .line 144
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->hasIsVoice:Z

    .line 145
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isVoice:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->isVoice:Z

    .line 146
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->hasIsVoicePrivacy:Z

    .line 147
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isVoicePrivacy:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->isVoicePrivacy:Z

    .line 148
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->number:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->number:Ljava/lang/String;

    .line 149
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->numberPresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->numberPresentation:I

    .line 150
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->name:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->name:Ljava/lang/String;

    .line 151
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->namePresentation:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->namePresentation:I

    .line 153
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasCallDetails:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->hasCallDetails:Z

    .line 154
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;

    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateCallDetails(Lvendor/qti/hardware/radio/ims/V1_0/CallDetails;)Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    move-result-object v1

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->callDetails:Lvendor/qti/hardware/radio/ims/V1_6/CallDetails;

    .line 156
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasFailCause:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->hasFailCause:Z

    .line 157
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->failCause:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->failCause:I

    .line 159
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

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

    .line 160
    .local v2, "errorinfo":Ljava/lang/Byte;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v3, v3, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorinfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v2    # "errorinfo":Ljava/lang/Byte;
    goto :goto_0

    .line 163
    :cond_0
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->networkErrorString:Ljava/lang/String;

    .line 164
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-boolean v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->hasErrorDetails:Z

    iput-boolean v2, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->hasErrorDetails:Z

    .line 165
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    iput v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorCode:I

    .line 166
    iget-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v1, v1, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->failCause:Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_5/CallFailCauseResponse;->errorDetails:Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;

    iget-object v2, v2, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    iput-object v2, v1, Lvendor/qti/hardware/radio/ims/V1_0/SipErrorInfo;->errorString:Ljava/lang/String;

    .line 169
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->hasIsEncrypted:Z

    .line 170
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isEncrypted:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->isEncrypted:Z

    .line 171
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->hasIsCalledPartyRinging:Z

    .line 172
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isCalledPartyRinging:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->isCalledPartyRinging:Z

    .line 173
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->historyInfo:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->historyInfo:Ljava/lang/String;

    .line 174
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->hasIsVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->hasIsVideoConfSupported:Z

    .line 175
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->isVideoConfSupported:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->isVideoConfSupported:Z

    .line 177
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->verstatInfo:Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migarateVerstatInfo(Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;Lvendor/qti/hardware/radio/ims/V1_3/VerstatInfo;)V

    .line 178
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->mtMultiLineInfo:Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateMultiIdentityLineInfo(Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)V

    .line 180
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;->tirMode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;->tirMode:I

    .line 182
    return-object v0
.end method

.method public static migrateCallListFrom(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;",
            ">;"
        }
    .end annotation

    .line 291
    .local p0, "callList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;>;"
    if-nez p0, :cond_0

    .line 292
    const/4 v0, 0x0

    return-object v0

    .line 294
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;

    .line 296
    .local v2, "from":Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;
    invoke-static {v2}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateCallInfoFrom(Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;)Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;

    move-result-object v3

    .line 297
    .local v3, "to":Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .end local v2    # "from":Lvendor/qti/hardware/radio/ims/V1_5/CallInfo;
    .end local v3    # "to":Lvendor/qti/hardware/radio/ims/V1_6/CallInfo;
    goto :goto_0

    .line 299
    :cond_1
    return-object v0
.end method

.method public static migrateConfigInfoFrom(Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;)Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    .locals 2
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;

    .line 116
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;-><init>()V

    .line 117
    .local v0, "configInfo":Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->item:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->item:I

    .line 118
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->hasBoolValue:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->hasBoolValue:Z

    .line 119
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->boolValue:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->boolValue:Z

    .line 120
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->intValue:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->intValue:I

    .line 121
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->stringValue:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->stringValue:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->stringValue:Ljava/lang/String;

    .line 124
    :cond_0
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ConfigInfo;->errorCause:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ConfigInfo;->errorCause:I

    .line 126
    return-object v0
.end method

.method public static migrateHandoverInfo(Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;)Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;
    .locals 2
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;

    .line 304
    if-nez p0, :cond_0

    .line 305
    const/4 v0, 0x0

    return-object v0

    .line 307
    :cond_0
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;-><init>()V

    .line 308
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->type:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->type:I

    .line 309
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->srcTech:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->srcTech:I

    .line 310
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->targetTech:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->targetTech:I

    .line 311
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->hasHoExtra:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->hasHoExtra:Z

    .line 312
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/V1_0/Extra;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->hoExtra:Lvendor/qti/hardware/radio/ims/V1_0/Extra;

    .line 313
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->errorCode:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->errorCode:Ljava/lang/String;

    .line 314
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/HandoverInfo;->errorMessage:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/HandoverInfo;->errorMessage:Ljava/lang/String;

    .line 315
    return-object v0
.end method

.method private static migrateMultiIdentityLineInfo(Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;)V
    .locals 1
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;
    .param p1, "to"    # Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;

    .line 283
    iget-object v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->msisdn:Ljava/lang/String;

    iput-object v0, p1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->msisdn:Ljava/lang/String;

    .line 284
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->registrationStatus:I

    iput v0, p1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->registrationStatus:I

    .line 285
    iget v0, p0, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->lineType:I

    iput v0, p1, Lvendor/qti/hardware/radio/ims/V1_4/MultiIdentityLineInfoHal;->lineType:I

    .line 286
    return-void
.end method

.method public static migrateRegistrationInfo(Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;)Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;
    .locals 2
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;

    .line 264
    if-nez p0, :cond_0

    .line 265
    const/4 v0, 0x0

    return-object v0

    .line 267
    :cond_0
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;-><init>()V

    .line 268
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->state:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->state:I

    .line 269
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorCode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->errorCode:I

    .line 270
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->errorMessage:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->errorMessage:Ljava/lang/String;

    .line 271
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->radioTech:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->radioTech:I

    .line 272
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    iput-object v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/RegistrationInfo;->pAssociatedUris:Ljava/lang/String;

    .line 273
    return-object v0
.end method

.method public static migrateServiceStatusInfo(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;",
            ">;"
        }
    .end annotation

    .line 212
    .local p0, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 216
    .local v0, "to":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    invoke-static {p0, v0}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateServiceStatusInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 217
    return-object v0

    .line 213
    .end local v0    # "to":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static migrateServiceStatusInfo(Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;
    .locals 4
    .param p0, "from"    # Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 230
    new-instance v0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    invoke-direct {v0}, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;-><init>()V

    .line 231
    .local v0, "to":Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->hasIsValid:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->hasIsValid:Z

    .line 232
    iget-boolean v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->isValid:Z

    iput-boolean v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->isValid:Z

    .line 233
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->type:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->type:I

    .line 234
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->callType:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->callType:I

    .line 235
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->status:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->status:I

    .line 236
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->userdata:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    .line 237
    .local v2, "data":Ljava/lang/Byte;
    iget-object v3, v0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->userdata:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    .end local v2    # "data":Ljava/lang/Byte;
    :cond_0
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    iget-object v2, v0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->accTechStatus:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateAccTechStatus(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 239
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->restrictCause:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->restrictCause:I

    .line 240
    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;->rttMode:I

    iput v1, v0, Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;->rttMode:I

    .line 241
    return-object v0
.end method

.method public static migrateServiceStatusInfo(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;",
            ">;)V"
        }
    .end annotation

    .line 223
    .local p0, "from":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;>;"
    .local p1, "to":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;>;"
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 224
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;

    .line 225
    .local v1, "info":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    invoke-static {v1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->migrateServiceStatusInfo(Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;)Lvendor/qti/hardware/radio/ims/V1_6/ServiceStatusInfo;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    .end local v1    # "info":Lvendor/qti/hardware/radio/ims/V1_0/ServiceStatusInfo;
    :cond_1
    return-void

    .line 223
    :cond_2
    :goto_1
    return-void
.end method

.method public static toDriverCallIms(Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)Lorg/codeaurora/ims/DriverCallIms;
    .locals 7
    .param p0, "rejectInfo"    # Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;
    .param p1, "callComposerInfo"    # Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;

    .line 501
    new-instance v0, Lorg/codeaurora/ims/VerstatInfo;

    iget v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->verificationStatus:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/codeaurora/ims/VerstatInfo;-><init>(ZI)V

    .line 503
    .local v0, "verstatInfo":Lorg/codeaurora/ims/VerstatInfo;
    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 504
    :cond_0
    invoke-static {p1}, Lorg/codeaurora/ims/ImsRadioUtilsV16;->buildCallComposerInfoFromHal(Lvendor/qti/hardware/radio/ims/V1_6/CallComposerInfo;)Lorg/codeaurora/ims/CallComposerInfo;

    move-result-object v2

    :goto_0
    nop

    .line 505
    .local v2, "ccInfo":Lorg/codeaurora/ims/CallComposerInfo;
    new-instance v3, Lorg/codeaurora/ims/DriverCallIms;

    invoke-direct {v3, v2, v0}, Lorg/codeaurora/ims/DriverCallIms;-><init>(Lorg/codeaurora/ims/CallComposerInfo;Lorg/codeaurora/ims/VerstatInfo;)V

    .line 507
    .local v3, "dc":Lorg/codeaurora/ims/DriverCallIms;
    iget v4, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->autoRejectionCause:I

    invoke-static {v4}, Lorg/codeaurora/ims/ImsRadioUtilsV13;->getImsReasonForCallFailCause(I)I

    move-result v4

    .line 509
    .local v4, "imsReasonInfoCode":I
    if-nez v4, :cond_1

    .line 510
    const/16 v5, 0x640

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    move v4, v5

    .line 511
    new-instance v5, Landroid/telephony/ims/ImsReasonInfo;

    iget-short v6, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->sipErrorCode:S

    invoke-direct {v5, v4, v6, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v5, v3, Lorg/codeaurora/ims/DriverCallIms;->callFailCause:Landroid/telephony/ims/ImsReasonInfo;

    .line 512
    new-instance v1, Lorg/codeaurora/ims/CallDetails;

    invoke-direct {v1}, Lorg/codeaurora/ims/CallDetails;-><init>()V

    iput-object v1, v3, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    .line 513
    iget-object v1, v3, Lorg/codeaurora/ims/DriverCallIms;->callDetails:Lorg/codeaurora/ims/CallDetails;

    iget v5, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->callType:I

    invoke-static {v5}, Lorg/codeaurora/ims/ImsRadioUtils;->callTypeFromHal(I)I

    move-result v5

    iput v5, v1, Lorg/codeaurora/ims/CallDetails;->call_type:I

    .line 514
    iget-object v1, p0, Lvendor/qti/hardware/radio/ims/V1_6/AutoCallRejectionInfo;->number:Ljava/lang/String;

    iput-object v1, v3, Lorg/codeaurora/ims/DriverCallIms;->number:Ljava/lang/String;

    .line 515
    return-object v3
.end method
