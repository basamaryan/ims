.class public final Lvendor/qti/hardware/radio/ims/V1_2/ImsSmsSendFailureReason;
.super Ljava/lang/Object;
.source "ImsSmsSendFailureReason.java"


# static fields
.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NONE:I = 0x0

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final RESULT_ERROR_SHORT_CODE_NEVER_ALLOWED:I = 0x7

.field public static final RESULT_ERROR_SHORT_CODE_NOT_ALLOWED:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 65
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 66
    .local v1, "flipped":I
    const-string v2, "RESULT_ERROR_NONE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 68
    const-string v2, "RESULT_ERROR_GENERIC_FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    or-int/lit8 v1, v1, 0x1

    .line 71
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 72
    const-string v2, "RESULT_ERROR_RADIO_OFF"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    or-int/lit8 v1, v1, 0x2

    .line 75
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 76
    const-string v2, "RESULT_ERROR_NULL_PDU"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    or-int/lit8 v1, v1, 0x3

    .line 79
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 80
    const-string v2, "RESULT_ERROR_NO_SERVICE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    or-int/lit8 v1, v1, 0x4

    .line 83
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 84
    const-string v2, "RESULT_ERROR_LIMIT_EXCEEDED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    or-int/lit8 v1, v1, 0x5

    .line 87
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 88
    const-string v2, "RESULT_ERROR_SHORT_CODE_NOT_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    or-int/lit8 v1, v1, 0x6

    .line 91
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 92
    const-string v2, "RESULT_ERROR_SHORT_CODE_NEVER_ALLOWED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    or-int/lit8 v1, v1, 0x7

    .line 95
    :cond_6
    if-eq p0, v1, :cond_7

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_7
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 36
    if-nez p0, :cond_0

    .line 37
    const-string v0, "RESULT_ERROR_NONE"

    return-object v0

    .line 39
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 40
    const-string v0, "RESULT_ERROR_GENERIC_FAILURE"

    return-object v0

    .line 42
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 43
    const-string v0, "RESULT_ERROR_RADIO_OFF"

    return-object v0

    .line 45
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 46
    const-string v0, "RESULT_ERROR_NULL_PDU"

    return-object v0

    .line 48
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 49
    const-string v0, "RESULT_ERROR_NO_SERVICE"

    return-object v0

    .line 51
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 52
    const-string v0, "RESULT_ERROR_LIMIT_EXCEEDED"

    return-object v0

    .line 54
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 55
    const-string v0, "RESULT_ERROR_SHORT_CODE_NOT_ALLOWED"

    return-object v0

    .line 57
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 58
    const-string v0, "RESULT_ERROR_SHORT_CODE_NEVER_ALLOWED"

    return-object v0

    .line 60
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
