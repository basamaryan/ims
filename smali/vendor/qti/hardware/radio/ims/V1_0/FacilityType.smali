.class public final Lvendor/qti/hardware/radio/ims/V1_0/FacilityType;
.super Ljava/lang/Object;
.source "FacilityType.java"


# static fields
.field public static final FACILITY_BAIC:I = 0x5

.field public static final FACILITY_BAICa:I = 0xb

.field public static final FACILITY_BAICr:I = 0x6

.field public static final FACILITY_BAOC:I = 0x2

.field public static final FACILITY_BAOIC:I = 0x3

.field public static final FACILITY_BAOICxH:I = 0x4

.field public static final FACILITY_BA_ALL:I = 0x7

.field public static final FACILITY_BA_MO:I = 0x8

.field public static final FACILITY_BA_MT:I = 0x9

.field public static final FACILITY_BS_MT:I = 0xa

.field public static final FACILITY_CLIP:I = 0x0

.field public static final FACILITY_COLP:I = 0x1

.field public static final FACILITY_INVALID:I = 0xc


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

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 102
    .local v1, "flipped":I
    const-string v2, "FACILITY_CLIP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 104
    const-string v2, "FACILITY_COLP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    or-int/lit8 v1, v1, 0x1

    .line 107
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 108
    const-string v2, "FACILITY_BAOC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    or-int/lit8 v1, v1, 0x2

    .line 111
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 112
    const-string v2, "FACILITY_BAOIC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    or-int/lit8 v1, v1, 0x3

    .line 115
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 116
    const-string v2, "FACILITY_BAOICxH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    or-int/lit8 v1, v1, 0x4

    .line 119
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 120
    const-string v2, "FACILITY_BAIC"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    or-int/lit8 v1, v1, 0x5

    .line 123
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 124
    const-string v2, "FACILITY_BAICr"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    or-int/lit8 v1, v1, 0x6

    .line 127
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 128
    const-string v2, "FACILITY_BA_ALL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    or-int/lit8 v1, v1, 0x7

    .line 131
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 132
    const-string v2, "FACILITY_BA_MO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    or-int/lit8 v1, v1, 0x8

    .line 135
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 136
    const-string v2, "FACILITY_BA_MT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    or-int/lit8 v1, v1, 0x9

    .line 139
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 140
    const-string v2, "FACILITY_BS_MT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    or-int/lit8 v1, v1, 0xa

    .line 143
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 144
    const-string v2, "FACILITY_BAICa"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    or-int/lit8 v1, v1, 0xb

    .line 147
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 148
    const-string v2, "FACILITY_INVALID"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    or-int/lit8 v1, v1, 0xc

    .line 151
    :cond_b
    if-eq p0, v1, :cond_c

    .line 152
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

    .line 154
    :cond_c
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 57
    if-nez p0, :cond_0

    .line 58
    const-string v0, "FACILITY_CLIP"

    return-object v0

    .line 60
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 61
    const-string v0, "FACILITY_COLP"

    return-object v0

    .line 63
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 64
    const-string v0, "FACILITY_BAOC"

    return-object v0

    .line 66
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 67
    const-string v0, "FACILITY_BAOIC"

    return-object v0

    .line 69
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 70
    const-string v0, "FACILITY_BAOICxH"

    return-object v0

    .line 72
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 73
    const-string v0, "FACILITY_BAIC"

    return-object v0

    .line 75
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 76
    const-string v0, "FACILITY_BAICr"

    return-object v0

    .line 78
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 79
    const-string v0, "FACILITY_BA_ALL"

    return-object v0

    .line 81
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 82
    const-string v0, "FACILITY_BA_MO"

    return-object v0

    .line 84
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 85
    const-string v0, "FACILITY_BA_MT"

    return-object v0

    .line 87
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 88
    const-string v0, "FACILITY_BS_MT"

    return-object v0

    .line 90
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 91
    const-string v0, "FACILITY_BAICa"

    return-object v0

    .line 93
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 94
    const-string v0, "FACILITY_INVALID"

    return-object v0

    .line 96
    :cond_c
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
