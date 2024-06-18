.class public Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;
.super Ljava/lang/Object;
.source "PhoneNumberToCarrierMapper.java"


# static fields
.field private static final MAPPING_DATA_DIRECTORY:Ljava/lang/String; = "/com/google/i18n/phonenumbers/carrier/data/"

.field private static instance:Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;


# instance fields
.field private final phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field private prefixFileReader:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;->instance:Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "phonePrefixDataDirectory"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;->prefixFileReader:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    .line 37
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 41
    new-instance v0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    invoke-direct {v0, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;->prefixFileReader:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    .line 42
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;
    .locals 3

    const-class v0, Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;->instance:Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;

    const-string v2, "/com/google/i18n/phonenumbers/carrier/data/"

    invoke-direct {v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;->instance:Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;

    .line 56
    :cond_0
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;->instance:Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 52
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private isMobile(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z
    .locals 1
    .param p1, "numberType"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    .line 120
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->FIXED_LINE_OR_MOBILE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->PAGER:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getNameForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;

    .line 92
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    .line 93
    .local v0, "numberType":Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;->isMobile(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;->getNameForValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 96
    :cond_0
    const-string v1, ""

    return-object v1
.end method

.method public getNameForValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;

    .line 74
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "langStr":Ljava/lang/String;
    const-string v1, ""

    .line 76
    .local v1, "scriptStr":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "regionStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;->prefixFileReader:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    invoke-virtual {v3, p1, v0, v1, v2}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->getDescriptionForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getSafeDisplayName(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;

    .line 110
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isMobileNumberPortableRegion(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    const-string v0, ""

    return-object v0

    .line 113
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberToCarrierMapper;->getNameForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
