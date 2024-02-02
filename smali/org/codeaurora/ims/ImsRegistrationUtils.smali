.class public Lorg/codeaurora/ims/ImsRegistrationUtils;
.super Ljava/lang/Object;
.source "ImsRegistrationUtils.java"


# static fields
.field public static final CAMPED:I = 0x4

.field public static final CS_ONLY:I = 0x1

.field public static final CS_PS:I = 0x3

.field public static final NO_SRV:I = 0x0

.field public static final PS_ONLY:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areSelfIdentityUrisDiff(Ljava/util/HashSet;[Landroid/net/Uri;)Z
    .locals 4
    .param p1, "b"    # [Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Landroid/net/Uri;",
            ">;[",
            "Landroid/net/Uri;",
            ")Z"
        }
    .end annotation

    .line 56
    .local p0, "a":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/net/Uri;>;"
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_1

    .line 57
    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 60
    :cond_1
    if-nez p1, :cond_2

    .line 61
    return v1

    .line 64
    :cond_2
    array-length v2, p1

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v3

    if-eq v2, v3, :cond_3

    .line 65
    return v1

    .line 68
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_5

    .line 69
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 70
    return v1

    .line 68
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "i":I
    :cond_5
    return v0
.end method

.method public static extractUrisFromPipeSeparatedUriStrings(Ljava/lang/String;)[Landroid/net/Uri;
    .locals 4
    .param p0, "combinedUris"    # Ljava/lang/String;

    .line 45
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    goto :goto_1

    .line 46
    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "uriStrings":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Landroid/net/Uri;

    .line 48
    .local v1, "uris":[Landroid/net/Uri;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 49
    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 45
    .end local v0    # "uriStrings":[Ljava/lang/String;
    .end local v1    # "uris":[Landroid/net/Uri;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static toTelephonManagerRadioTech(I)I
    .locals 1
    .param p0, "radioTech"    # I

    .line 30
    packed-switch p0, :pswitch_data_0

    .line 39
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 37
    :pswitch_1
    const/16 v0, 0x12

    return v0

    .line 33
    :pswitch_2
    const/16 v0, 0xd

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
