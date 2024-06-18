.class public Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
.super Ljava/lang/Object;
.source "PhoneNumberOfflineGeocoder.java"


# static fields
.field private static final MAPPING_DATA_DIRECTORY:Ljava/lang/String; = "/com/google/i18n/phonenumbers/geocoding/data/"

.field private static instance:Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;


# instance fields
.field private final phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field private prefixFileReader:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    sput-object v0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "phonePrefixDataDirectory"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->prefixFileReader:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    .line 39
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 43
    new-instance v0, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    invoke-direct {v0, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->prefixFileReader:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    .line 44
    return-void
.end method

.method private getCountryNameForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "language"    # Ljava/util/Locale;

    .line 67
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 68
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodesForCountryCode(I)Ljava/util/List;

    move-result-object v0

    .line 69
    .local v0, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 70
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 72
    :cond_0
    const-string v1, "ZZ"

    .line 73
    .local v1, "regionWhereNumberIsValid":Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 74
    .local v3, "regionCode":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v4, p1, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isValidNumberForRegion(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    const-string v4, "ZZ"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 78
    const-string v2, ""

    return-object v2

    .line 80
    :cond_1
    move-object v1, v3

    .line 82
    .end local v3    # "regionCode":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 83
    :cond_3
    invoke-direct {p0, v1, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized getInstance()Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    .locals 3

    const-class v0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    monitor-enter v0

    .line 56
    :try_start_0
    sget-object v1, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    if-nez v1, :cond_0

    .line 57
    new-instance v1, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    const-string v2, "/com/google/i18n/phonenumbers/geocoding/data/"

    invoke-direct {v1, v2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;

    .line 59
    :cond_0
    sget-object v1, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->instance:Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 55
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 2
    .param p1, "regionCode"    # Ljava/lang/String;
    .param p2, "language"    # Ljava/util/Locale;

    .line 91
    const-string v0, ""

    if-eqz p1, :cond_1

    const-string v1, "ZZ"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 92
    const-string v1, "001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/util/Locale;->getDisplayCountry(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    nop

    .line 91
    :goto_1
    return-object v0
.end method


# virtual methods
.method public getDescriptionForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;

    .line 189
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    .line 190
    .local v0, "numberType":Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v0, v1, :cond_0

    .line 191
    const-string v1, ""

    return-object v1

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getCountryNameForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 195
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDescriptionForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;
    .param p3, "userRegion"    # Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    .line 213
    .local v0, "numberType":Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v0, v1, :cond_0

    .line 214
    const-string v1, ""

    return-object v1

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 216
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getCountryNameForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 218
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDescriptionForValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;
    .locals 8
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;

    .line 113
    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 114
    .local v0, "langStr":Ljava/lang/String;
    const-string v1, ""

    .line 115
    .local v1, "scriptStr":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "regionStr":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getCountryMobileToken(I)Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "mobileToken":Ljava/lang/String;
    iget-object v4, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v4, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v4

    .line 120
    .local v4, "nationalNumber":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 123
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 124
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v5

    .line 127
    .local v5, "region":Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v6, v4, v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v6
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .local v6, "copiedNumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    goto :goto_0

    .line 128
    .end local v6    # "copiedNumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_0
    move-exception v6

    .line 130
    .local v6, "e":Lcom/google/i18n/phonenumbers/NumberParseException;
    move-object v7, p1

    move-object v6, v7

    .line 132
    .local v6, "copiedNumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :goto_0
    iget-object v7, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->prefixFileReader:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    invoke-virtual {v7, v6, v0, v1, v2}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->getDescriptionForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 134
    .end local v6    # "copiedNumber":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .local v5, "areaDescription":Ljava/lang/String;
    goto :goto_1

    .line 135
    .end local v5    # "areaDescription":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->prefixFileReader:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;

    invoke-virtual {v5, p1, v0, v1, v2}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixFileReader;->getDescriptionForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 138
    .restart local v5    # "areaDescription":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 139
    move-object v6, v5

    goto :goto_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getCountryNameForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 138
    :goto_2
    return-object v6
.end method

.method public getDescriptionForValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "languageCode"    # Ljava/util/Locale;
    .param p3, "userRegion"    # Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "regionCode":Ljava/lang/String;
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getDescriptionForValidNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 174
    :cond_0
    invoke-direct {p0, v0, p2}, Lcom/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder;->getRegionDisplayName(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
