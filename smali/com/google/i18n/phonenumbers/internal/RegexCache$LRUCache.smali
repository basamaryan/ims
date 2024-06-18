.class Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;
.super Ljava/lang/Object;
.source "RegexCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/i18n/phonenumbers/internal/RegexCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LRUCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "size"    # I

    .line 55
    .local p0, "this":Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;, "Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput p1, p0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;->size:I

    .line 58
    new-instance v0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache$1;

    mul-int/lit8 v1, p1, 0x4

    div-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache$1;-><init>(Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;IFZ)V

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;->map:Ljava/util/LinkedHashMap;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;

    .line 49
    iget v0, p0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;->size:I

    return v0
.end method


# virtual methods
.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .local p0, "this":Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;, "Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 75
    .end local p0    # "this":Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;, "Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .local p0, "this":Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;, "Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    monitor-enter p0

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 67
    .end local p0    # "this":Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;, "Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .local p0, "this":Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;, "Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    monitor-enter p0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 70
    .end local p0    # "this":Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache;, "Lcom/google/i18n/phonenumbers/internal/RegexCache$LRUCache<TK;TV;>;"
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
