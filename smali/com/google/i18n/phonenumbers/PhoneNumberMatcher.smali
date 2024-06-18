.class final Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;
.super Ljava/lang/Object;
.source "PhoneNumberMatcher.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;,
        Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/google/i18n/phonenumbers/PhoneNumberMatch;",
        ">;"
    }
.end annotation


# static fields
.field private static final INNER_MATCHES:[Ljava/util/regex/Pattern;

.field private static final LEAD_CLASS:Ljava/util/regex/Pattern;

.field private static final MATCHING_BRACKETS:Ljava/util/regex/Pattern;

.field private static final PATTERN:Ljava/util/regex/Pattern;

.field private static final PUB_PAGES:Ljava/util/regex/Pattern;

.field private static final SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

.field private static final TIME_STAMPS:Ljava/util/regex/Pattern;

.field private static final TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;


# instance fields
.field private lastMatch:Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

.field private final leniency:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field private maxTries:J

.field private final phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

.field private final preferredRegion:Ljava/lang/String;

.field private final regexCache:Lcom/google/i18n/phonenumbers/internal/RegexCache;

.field private searchIndex:I

.field private state:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

.field private final text:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 67
    const-string v0, "\\d{1,5}-+\\d{1,5}\\s{0,4}\\(\\d{1,4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->PUB_PAGES:Ljava/util/regex/Pattern;

    .line 73
    nop

    .line 74
    const-string v0, "(?:(?:[0-3]?\\d/[01]?\\d)|(?:[01]?\\d/[0-3]?\\d))/(?:[12]\\d)?\\d{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

    .line 80
    nop

    .line 81
    const-string v0, "[12]\\d{3}[-/]?[01]\\d[-/]?[0-3]\\d +[0-2]\\d$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS:Ljava/util/regex/Pattern;

    .line 82
    const-string v0, ":[0-5]\\d"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;

    .line 101
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/regex/Pattern;

    .line 103
    const-string v1, "/+(.*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 106
    const-string v1, "(\\([^(]*)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 109
    const-string v1, "(?:\\p{Z}-|-\\p{Z})\\p{Z}*(.+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    .line 113
    const-string v1, "[\u2012-\u2015\uff0d]\\p{Z}*(.+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v5, 0x3

    aput-object v1, v0, v5

    .line 115
    const-string v1, "\\.+\\p{Z}*([^.]+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v6, 0x4

    aput-object v1, v0, v6

    .line 117
    const-string v1, "\\p{Z}+(\\P{Z}+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->INNER_MATCHES:[Ljava/util/regex/Pattern;

    .line 129
    const-string v0, "(\\[\uff08\uff3b"

    .line 130
    .local v0, "openingParens":Ljava/lang/String;
    const-string v1, ")\\]\uff09\uff3d"

    .line 131
    .local v1, "closingParens":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[^"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "nonParens":Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "bracketPairLimit":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "(?:["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "])?(?:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "+["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "])?"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "+(?:["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "])"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "*"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    sput-object v9, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->MATCHING_BRACKETS:Ljava/util/regex/Pattern;

    .line 147
    invoke-static {v2, v4}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v4

    .line 149
    .local v4, "leadLimit":Ljava/lang/String;
    invoke-static {v2, v6}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v6

    .line 153
    .local v6, "punctuationLimit":Ljava/lang/String;
    const/16 v9, 0x14

    .line 157
    .local v9, "digitBlockLimit":I
    invoke-static {v2, v9}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "blockLimit":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[-x\u2010-\u2015\u2212\u30fc\uff0d-\uff0f \u00a0\u00ad\u200b\u2060\u3000()\uff08\uff09\uff3b\uff3d.\\[\\]/~\u2053\u223c\uff5e]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 162
    .local v10, "punctuation":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\\p{Nd}"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3, v9}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->limit(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "digitSequence":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "+\uff0b"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 165
    .local v11, "leadClassChars":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 166
    .local v8, "leadClass":Ljava/lang/String;
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->LEAD_CLASS:Ljava/util/regex/Pattern;

    .line 169
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "(?:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, ")"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->EXTN_PATTERNS_FOR_MATCHING:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")?"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x42

    invoke-static {v12, v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v12

    sput-object v12, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->PATTERN:Ljava/util/regex/Pattern;

    .line 174
    .end local v0    # "openingParens":Ljava/lang/String;
    .end local v1    # "closingParens":Ljava/lang/String;
    .end local v2    # "blockLimit":Ljava/lang/String;
    .end local v3    # "digitSequence":Ljava/lang/String;
    .end local v4    # "leadLimit":Ljava/lang/String;
    .end local v5    # "bracketPairLimit":Ljava/lang/String;
    .end local v6    # "punctuationLimit":Ljava/lang/String;
    .end local v7    # "nonParens":Ljava/lang/String;
    .end local v8    # "leadClass":Ljava/lang/String;
    .end local v9    # "digitBlockLimit":I
    .end local v10    # "punctuation":Ljava/lang/String;
    .end local v11    # "leadClassChars":Ljava/lang/String;
    return-void
.end method

.method constructor <init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Ljava/lang/CharSequence;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;J)V
    .locals 2
    .param p1, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "country"    # Ljava/lang/String;
    .param p4, "leniency"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .param p5, "maxTries"    # J

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    .line 208
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    .line 214
    new-instance v0, Lcom/google/i18n/phonenumbers/internal/RegexCache;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/i18n/phonenumbers/internal/RegexCache;-><init>(I)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->regexCache:Lcom/google/i18n/phonenumbers/internal/RegexCache;

    .line 234
    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    .line 237
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-ltz v0, :cond_1

    .line 240
    iput-object p1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 241
    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    .line 242
    iput-object p3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->preferredRegion:Ljava/lang/String;

    .line 243
    iput-object p4, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    .line 244
    iput-wide p5, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    .line 245
    return-void

    .line 238
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 235
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static allNumberGroupsAreExactlyPresent(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 7
    .param p0, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "normalizedCandidate"    # Ljava/lang/StringBuilder;
    .param p3, "formattedNumberGroups"    # [Ljava/lang/String;

    .line 505
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->NON_DIGITS_PATTERN:Ljava/util/regex/Pattern;

    .line 506
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "candidateGroups":[Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->hasExtension()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_0
    array-length v1, v0

    sub-int/2addr v1, v2

    .line 513
    .local v1, "candidateNumberGroupIndex":I
    :goto_0
    array-length v3, v0

    if-eq v3, v2, :cond_5

    aget-object v3, v0, v1

    .line 515
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v4

    .line 514
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    .line 520
    :cond_1
    array-length v3, p3

    sub-int/2addr v3, v2

    .line 521
    .local v3, "formattedNumberGroupIndex":I
    :goto_1
    const/4 v4, 0x0

    if-lez v3, :cond_3

    if-ltz v1, :cond_3

    .line 523
    aget-object v5, v0, v1

    aget-object v6, p3, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 525
    return v4

    .line 522
    :cond_2
    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 530
    .end local v3    # "formattedNumberGroupIndex":I
    :cond_3
    if-ltz v1, :cond_4

    aget-object v3, v0, v1

    aget-object v5, p3, v4

    .line 531
    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v2, v4

    .line 530
    :goto_2
    return v2

    .line 516
    :cond_5
    :goto_3
    return v2
.end method

.method static allNumberGroupsRemainGrouped(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "normalizedCandidate"    # Ljava/lang/StringBuilder;
    .param p3, "formattedNumberGroups"    # [Ljava/lang/String;

    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "fromIndex":I
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v1

    sget-object v2, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-eq v1, v2, :cond_0

    .line 464
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 465
    .local v1, "countryCode":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 469
    .end local v1    # "countryCode":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_3

    .line 472
    aget-object v2, p3, v1

    invoke-virtual {p2, v2, v0}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 473
    if-gez v0, :cond_1

    .line 474
    const/4 v2, 0x0

    return v2

    .line 477
    :cond_1
    aget-object v2, p3, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 478
    if-nez v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 483
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v2

    .line 484
    .local v2, "region":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNddPrefixForRegion(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 485
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 489
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 490
    .local v3, "nationalSignificantNumber":Ljava/lang/String;
    aget-object v4, p3, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 491
    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    .line 490
    return v4

    .line 469
    .end local v2    # "region":Ljava/lang/String;
    .end local v3    # "nationalSignificantNumber":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 498
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method

.method static containsMoreThanOneSlashInNationalNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;)Z
    .locals 6
    .param p0, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "candidate"    # Ljava/lang/String;

    .line 601
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 602
    .local v1, "firstSlashInBodyIndex":I
    const/4 v2, 0x0

    if-gez v1, :cond_0

    .line 604
    return v2

    .line 607
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 608
    .local v0, "secondSlashInBodyIndex":I
    if-gez v0, :cond_1

    .line 610
    return v2

    .line 614
    :cond_1
    nop

    .line 615
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v3

    sget-object v4, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITH_PLUS_SIGN:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    const/4 v5, 0x1

    if-eq v3, v4, :cond_3

    .line 616
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v3

    sget-object v4, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_NUMBER_WITHOUT_PLUS_SIGN:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v3, v5

    .line 617
    .local v3, "candidateHasCountryCode":Z
    :goto_1
    if-eqz v3, :cond_4

    .line 618
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 619
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 621
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    return v2

    .line 623
    :cond_4
    return v5
.end method

.method static containsOnlyValidXChars(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 7
    .param p0, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "candidate"    # Ljava/lang/String;
    .param p2, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 633
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    .line 634
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 635
    .local v1, "charAtIndex":C
    const/16 v3, 0x58

    const/16 v4, 0x78

    if-eq v1, v4, :cond_0

    if-ne v1, v3, :cond_3

    .line 636
    :cond_0
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 637
    .local v5, "charAtNextIndex":C
    const/4 v6, 0x0

    if-eq v5, v4, :cond_2

    if-ne v5, v3, :cond_1

    goto :goto_1

    .line 646
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 647
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getExtension()Ljava/lang/String;

    move-result-object v4

    .line 646
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 648
    return v6

    .line 640
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 641
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, p0, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->isNumberMatch(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    move-result-object v3

    sget-object v4, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;->NSN_MATCH:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$MatchType;

    if-eq v3, v4, :cond_3

    .line 642
    return v6

    .line 633
    .end local v1    # "charAtIndex":C
    .end local v5    # "charAtNextIndex":C
    :cond_3
    add-int/2addr v0, v2

    goto :goto_0

    .line 652
    .end local v0    # "index":I
    :cond_4
    return v2
.end method

.method private extractInnerMatch(Ljava/lang/CharSequence;I)Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    .locals 13
    .param p1, "candidate"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I

    .line 354
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->INNER_MATCHES:[Ljava/util/regex/Pattern;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, v0, v3

    .line 355
    .local v4, "possibleInnerMatch":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 356
    .local v5, "groupMatcher":Ljava/util/regex/Matcher;
    const/4 v6, 0x1

    .line 357
    .local v6, "isFirstMatch":Z
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-wide v7, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_3

    .line 358
    const-wide/16 v7, 0x1

    if-eqz v6, :cond_1

    .line 360
    sget-object v9, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 362
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v10

    invoke-interface {p1, v2, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 360
    invoke-static {v9, v10}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 363
    .local v9, "group":Ljava/lang/CharSequence;
    invoke-direct {p0, v9, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/CharSequence;I)Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v10

    .line 364
    .local v10, "match":Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    if-eqz v10, :cond_0

    .line 365
    return-object v10

    .line 367
    :cond_0
    iget-wide v11, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    sub-long/2addr v11, v7

    iput-wide v11, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    .line 368
    const/4 v6, 0x0

    .line 370
    .end local v9    # "group":Ljava/lang/CharSequence;
    .end local v10    # "match":Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    :cond_1
    sget-object v9, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->UNWANTED_END_CHAR_PATTERN:Ljava/util/regex/Pattern;

    .line 371
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 370
    invoke-static {v9, v11}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 372
    .restart local v9    # "group":Ljava/lang/CharSequence;
    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->start(I)I

    move-result v10

    add-int/2addr v10, p2

    invoke-direct {p0, v9, v10}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/CharSequence;I)Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v10

    .line 373
    .restart local v10    # "match":Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    if-eqz v10, :cond_2

    .line 374
    return-object v10

    .line 376
    :cond_2
    iget-wide v11, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    sub-long/2addr v11, v7

    iput-wide v11, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    .line 377
    .end local v9    # "group":Ljava/lang/CharSequence;
    .end local v10    # "match":Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    goto :goto_1

    .line 354
    .end local v4    # "possibleInnerMatch":Ljava/util/regex/Pattern;
    .end local v5    # "groupMatcher":Ljava/util/regex/Matcher;
    .end local v6    # "isFirstMatch":Z
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 379
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private extractMatch(Ljava/lang/CharSequence;I)Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    .locals 3
    .param p1, "candidate"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I

    .line 322
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->SLASH_SEPARATED_DATES:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 323
    return-object v1

    .line 327
    :cond_0
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 328
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "followingText":Ljava/lang/String;
    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->TIME_STAMPS_SUFFIX:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 330
    return-object v1

    .line 335
    .end local v0    # "followingText":Ljava/lang/String;
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->parseAndVerify(Ljava/lang/CharSequence;I)Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v0

    .line 336
    .local v0, "match":Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    if-eqz v0, :cond_2

    .line 337
    return-object v0

    .line 342
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->extractInnerMatch(Ljava/lang/CharSequence;I)Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v1

    return-object v1
.end method

.method private find(I)Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    .locals 8
    .param p1, "index"    # I

    .line 255
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->PATTERN:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 256
    .local v0, "matcher":Ljava/util/regex/Matcher;
    :goto_0
    iget-wide v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    .line 258
    .local v1, "start":I
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-interface {v2, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 263
    .local v2, "candidate":Ljava/lang/CharSequence;
    sget-object v3, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->SECOND_NUMBER_START_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {v3, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 265
    invoke-direct {p0, v2, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->extractMatch(Ljava/lang/CharSequence;I)Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v3

    .line 266
    .local v3, "match":Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    if-eqz v3, :cond_0

    .line 267
    return-object v3

    .line 270
    :cond_0
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int p1, v1, v4

    .line 271
    iget-wide v4, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->maxTries:J

    .line 272
    .end local v1    # "start":I
    .end local v2    # "candidate":Ljava/lang/CharSequence;
    .end local v3    # "match":Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    goto :goto_0

    .line 274
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getNationalNumberGroups(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)[Ljava/lang/String;
    .locals 5
    .param p0, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 542
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "rfc3966Format":Ljava/lang/String;
    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 546
    .local v1, "endIndex":I
    if-gez v1, :cond_0

    .line 547
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 550
    :cond_0
    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 551
    .local v2, "startIndex":I
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static getNationalNumberGroups(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;)[Ljava/lang/String;
    .locals 3
    .param p0, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "formattingPattern"    # Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 562
    invoke-virtual {p0, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v0

    .line 563
    .local v0, "nationalSignificantNumber":Ljava/lang/String;
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->RFC3966:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {p0, v0, p2, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formatNsnUsingPattern(Ljava/lang/String;Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;Lcom/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v1

    .line 564
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 563
    return-object v1
.end method

.method private static isInvalidPunctuationSymbol(C)Z
    .locals 2
    .param p0, "character"    # C

    .line 310
    const/16 v0, 0x25

    if-eq p0, v0, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

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

.method static isLatinLetter(C)Z
    .locals 3
    .param p0, "letter"    # C

    .line 297
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 298
    return v1

    .line 300
    :cond_0
    invoke-static {p0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v0

    .line 301
    .local v0, "block":Ljava/lang/Character$UnicodeBlock;
    sget-object v2, Ljava/lang/Character$UnicodeBlock;->BASIC_LATIN:Ljava/lang/Character$UnicodeBlock;

    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_1_SUPPLEMENT:Ljava/lang/Character$UnicodeBlock;

    .line 302
    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_A:Ljava/lang/Character$UnicodeBlock;

    .line 303
    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_ADDITIONAL:Ljava/lang/Character$UnicodeBlock;

    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->LATIN_EXTENDED_B:Ljava/lang/Character$UnicodeBlock;

    .line 305
    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Ljava/lang/Character$UnicodeBlock;->COMBINING_DIACRITICAL_MARKS:Ljava/lang/Character$UnicodeBlock;

    .line 306
    invoke-virtual {v0, v2}, Ljava/lang/Character$UnicodeBlock;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 301
    :cond_2
    return v1
.end method

.method static isNationalPrefixPresentIfRequired(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z
    .locals 7
    .param p0, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p1, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    .line 658
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCodeSource()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    move-result-object v0

    sget-object v1, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;->FROM_DEFAULT_COUNTRY:Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 659
    return v2

    .line 661
    :cond_0
    nop

    .line 662
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getRegionCodeForCountryCode(I)Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, "phoneNumberRegion":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getMetadataForRegion(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v1

    .line 664
    .local v1, "metadata":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    if-nez v1, :cond_1

    .line 665
    return v2

    .line 668
    :cond_1
    invoke-virtual {p1, p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v3

    .line 669
    .local v3, "nationalNumber":Ljava/lang/String;
    nop

    .line 670
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1, v4, v3}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->chooseFormattingPatternForNumber(Ljava/util/List;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    move-result-object v4

    .line 673
    .local v4, "formatRule":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_4

    .line 674
    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixOptionalWhenFormatting()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 677
    return v2

    .line 679
    :cond_2
    nop

    .line 680
    invoke-virtual {v4}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getNationalPrefixFormattingRule()Ljava/lang/String;

    move-result-object v5

    .line 679
    invoke-static {v5}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->formattingRuleHasFirstGroupOnly(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 682
    return v2

    .line 685
    :cond_3
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getRawInput()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigitsOnly(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 686
    .local v2, "rawInputCopy":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 689
    .local v5, "rawInput":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    invoke-virtual {p1, v5, v1, v6}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->maybeStripNationalPrefixAndCarrierCode(Ljava/lang/StringBuilder;Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;Ljava/lang/StringBuilder;)Z

    move-result v6

    return v6

    .line 691
    .end local v2    # "rawInputCopy":Ljava/lang/String;
    .end local v5    # "rawInput":Ljava/lang/StringBuilder;
    :cond_4
    return v2
.end method

.method private static limit(II)Ljava/lang/String;
    .locals 2
    .param p0, "lower"    # I
    .param p1, "upper"    # I

    .line 178
    if-ltz p0, :cond_0

    if-lez p1, :cond_0

    if-lt p1, p0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private parseAndVerify(Ljava/lang/CharSequence;I)Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    .locals 4
    .param p1, "candidate"    # Ljava/lang/CharSequence;
    .param p2, "offset"    # I

    .line 395
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->MATCHING_BRACKETS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->PUB_PAGES:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 401
    :cond_0
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    sget-object v2, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    invoke-virtual {v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-ltz v1, :cond_4

    .line 404
    if-lez p2, :cond_2

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->LEAD_CLASS:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v1

    if-nez v1, :cond_2

    .line 405
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    add-int/lit8 v2, p2, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 407
    .local v1, "previousChar":C
    invoke-static {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->isInvalidPunctuationSymbol(C)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->isLatinLetter(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 408
    :cond_1
    return-object v0

    .line 411
    .end local v1    # "previousChar":C
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    add-int/2addr v1, p2

    .line 412
    .local v1, "lastCharIndex":I
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 413
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->text:Ljava/lang/CharSequence;

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 414
    .local v2, "nextChar":C
    invoke-static {v2}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->isInvalidPunctuationSymbol(C)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->isLatinLetter(C)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 415
    :cond_3
    return-object v0

    .line 420
    .end local v1    # "lastCharIndex":I
    .end local v2    # "nextChar":C
    :cond_4
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->preferredRegion:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->parseAndKeepRawInput(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v1

    .line 422
    .local v1, "number":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->leniency:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    iget-object v3, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->phoneUtil:Lcom/google/i18n/phonenumbers/PhoneNumberUtil;

    invoke-virtual {v2, v1, p1, v3, p0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->verify(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 426
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearCountryCodeSource()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 427
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearRawInput()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 428
    invoke-virtual {v1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->clearPreferredDomesticCarrierCode()Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;

    .line 429
    new-instance v2, Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p2, v3, v1}, Lcom/google/i18n/phonenumbers/PhoneNumberMatch;-><init>(ILjava/lang/String;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)V
    :try_end_0
    .catch Lcom/google/i18n/phonenumbers/NumberParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 433
    .end local v1    # "number":Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :cond_5
    goto :goto_1

    .line 396
    :cond_6
    :goto_0
    return-object v0

    .line 431
    :catch_0
    move-exception v1

    .line 434
    :goto_1
    return-object v0
.end method

.method private static trimAfterFirstMatch(Ljava/util/regex/Pattern;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "pattern"    # Ljava/util/regex/Pattern;
    .param p1, "candidate"    # Ljava/lang/CharSequence;

    .line 282
    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 283
    .local v0, "trailingCharsMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 286
    :cond_0
    return-object p1
.end method


# virtual methods
.method checkNumberGroupingIsValid(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/CharSequence;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;)Z
    .locals 10
    .param p1, "number"    # Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;
    .param p2, "candidate"    # Ljava/lang/CharSequence;
    .param p3, "util"    # Lcom/google/i18n/phonenumbers/PhoneNumberUtil;
    .param p4, "checker"    # Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;

    .line 570
    nop

    .line 571
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->normalizeDigits(Ljava/lang/CharSequence;Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 572
    .local v1, "normalizedCandidate":Ljava/lang/StringBuilder;
    invoke-static {p3, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->getNationalNumberGroups(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)[Ljava/lang/String;

    move-result-object v2

    .line 573
    .local v2, "formattedNumberGroups":[Ljava/lang/String;
    invoke-interface {p4, p3, p1, v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;->checkGroups(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 574
    return v0

    .line 577
    :cond_0
    nop

    .line 578
    invoke-virtual {p1}, Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;->getCountryCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/i18n/phonenumbers/MetadataManager;->getAlternateFormatsForCountry(I)Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;

    move-result-object v3

    .line 579
    .local v3, "alternateFormats":Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;
    invoke-virtual {p3, p1}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil;->getNationalSignificantNumber(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;)Ljava/lang/String;

    move-result-object v4

    .line 580
    .local v4, "nationalSignificantNumber":Ljava/lang/String;
    const/4 v5, 0x0

    if-eqz v3, :cond_3

    .line 581
    invoke-virtual {v3}, Lcom/google/i18n/phonenumbers/Phonemetadata$PhoneMetadata;->getNumberFormatList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;

    .line 582
    .local v7, "alternateFormat":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    invoke-virtual {v7}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPatternCount()I

    move-result v8

    if-lez v8, :cond_1

    .line 584
    iget-object v8, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->regexCache:Lcom/google/i18n/phonenumbers/internal/RegexCache;

    .line 585
    invoke-virtual {v7, v5}, Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;->getLeadingDigitsPattern(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/google/i18n/phonenumbers/internal/RegexCache;->getPatternForRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 586
    .local v8, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v9

    if-nez v9, :cond_1

    .line 588
    goto :goto_0

    .line 591
    .end local v8    # "pattern":Ljava/util/regex/Pattern;
    :cond_1
    invoke-static {p3, p1, v7}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->getNationalNumberGroups(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;)[Ljava/lang/String;

    move-result-object v2

    .line 592
    invoke-interface {p4, p3, p1, v1, v2}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$NumberGroupingChecker;->checkGroups(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/StringBuilder;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 593
    return v0

    .line 595
    .end local v7    # "alternateFormat":Lcom/google/i18n/phonenumbers/Phonemetadata$NumberFormat;
    :cond_2
    goto :goto_0

    .line 597
    :cond_3
    return v5
.end method

.method public hasNext()Z
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    if-ne v0, v1, :cond_1

    .line 697
    iget v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    invoke-direct {p0, v0}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->find(I)Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v0

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    .line 698
    if-nez v0, :cond_0

    .line 699
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;->DONE:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    goto :goto_0

    .line 701
    :cond_0
    invoke-virtual {v0}, Lcom/google/i18n/phonenumbers/PhoneNumberMatch;->end()I

    move-result v0

    iput v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->searchIndex:I

    .line 702
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;->READY:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    .line 705
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;->READY:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public next()Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    .locals 2

    .line 711
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    .line 717
    .local v0, "result":Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->lastMatch:Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    .line 718
    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;->NOT_READY:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    iput-object v1, p0, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->state:Lcom/google/i18n/phonenumbers/PhoneNumberMatcher$State;

    .line 719
    return-object v0

    .line 712
    .end local v0    # "result":Lcom/google/i18n/phonenumbers/PhoneNumberMatch;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/google/i18n/phonenumbers/PhoneNumberMatcher;->next()Lcom/google/i18n/phonenumbers/PhoneNumberMatch;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 727
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
