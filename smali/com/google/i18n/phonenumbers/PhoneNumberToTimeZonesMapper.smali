.class public Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;
.super Ljava/lang/Object;
.source "PhoneNumberToTimeZonesMapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$LazyHolder;
    }
.end annotation


# static fields
.field private static final MAPPING_DATA_DIRECTORY:Ljava/lang/String; = "/com/google/i18n/phonenumbers/timezones/data/"

.field private static final MAPPING_DATA_FILE_NAME:Ljava/lang/String; = "map_data"

.field private static final UNKNOWN_TIMEZONE:Ljava/lang/String; = "Etc/Unknown"

.field static final UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private prefixTimeZonesMap:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;

    .line 45
    const-string v1, "Etc/Unknown"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    const-class v0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->logger:Ljava/util/logging/Logger;

    .line 48
    return-void
.end method

.method private constructor <init>(Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;)V
    .locals 1
    .param p1, "prefixTimeZonesMap"    # Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    .line 60
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;
    .param p2, "x1"    # Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$1;

    .line 35
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;-><init>(Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "prefixTimeZonesMapDataDirectory"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "map_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->loadPrefixTimeZonesMapFromFile(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    .line 57
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .line 35
    invoke-static {p0}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->loadPrefixTimeZonesMapFromFile(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    move-result-object v0

    return-object v0
.end method

.method private static close(Ljava/io/InputStream;)V
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;

    .line 79
    if-eqz p0, :cond_0

    .line 81
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 86
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private getCountryLevelTimeZonesforNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
    .locals 2
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->lookupCountryLevelTimeZonesForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;

    move-result-object v0

    .line 176
    .local v0, "timezones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;

    goto :goto_0

    .line 177
    :cond_0
    move-object v1, v0

    .line 176
    :goto_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;
    .locals 2

    const-class v0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    monitor-enter v0

    .line 110
    :try_start_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper$LazyHolder;->access$200()Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 110
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getTimeZonesForGeocodableNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
    .locals 2
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->prefixTimeZonesMap:Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->lookupTimeZonesForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;

    move-result-object v0

    .line 163
    .local v0, "timezones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;

    goto :goto_0

    .line 164
    :cond_0
    move-object v1, v0

    .line 163
    :goto_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getUnknownTimeZone()Ljava/lang/String;
    .locals 1

    .line 151
    const-string v0, "Etc/Unknown"

    return-object v0
.end method

.method private static loadPrefixTimeZonesMapFromFile(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .line 64
    const-class v0, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 65
    .local v0, "source":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 66
    .local v1, "in":Ljava/io/ObjectInputStream;
    new-instance v2, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;

    invoke-direct {v2}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;-><init>()V

    .line 68
    .local v2, "map":Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;
    :try_start_0
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    .line 69
    invoke-virtual {v2, v1}, Lcom/google/i18n/phonenumbers/prefixmapper/PrefixTimeZonesMap;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :goto_0
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->close(Ljava/io/InputStream;)V

    .line 74
    goto :goto_1

    .line 73
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 70
    :catch_0
    move-exception v3

    .line 71
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->logger:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 75
    :goto_1
    return-object v2

    .line 73
    :goto_2
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->close(Ljava/io/InputStream;)V

    .line 74
    throw v3
.end method


# virtual methods
.method public getTimeZonesForGeographicalNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
    .locals 1
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->getTimeZonesForGeocodableNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZonesForNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;
    .locals 3
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNumberType(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    move-result-object v0

    .line 138
    .local v0, "numberType":Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;->UNKNOWN:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;

    if-ne v0, v1, :cond_0

    .line 139
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->UNKNOWN_TIME_ZONE_LIST:Ljava/util/List;

    return-object v1

    .line 140
    :cond_0
    invoke-static {}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v1

    .line 141
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    .line 140
    invoke-virtual {v1, v0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberGeographical(Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 142
    invoke-direct {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->getCountryLevelTimeZonesforNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 144
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberToTimeZonesMapper;->getTimeZonesForGeographicalNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
