.class Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;
.super Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;
.source "DefaultMapStorage.java"


# instance fields
.field private descriptions:[Ljava/lang/String;

.field private phoneNumberPrefixes:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/google/i18n/phonenumbers/prefixmapper/PhonePrefixMapStorageStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 45
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPrefix(I)I
    .locals 1
    .param p1, "index"    # I

    .line 40
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    aget v0, v0, p1

    return v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .param p1, "objectInput"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    .line 64
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    iget v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    if-ge v0, v1, :cond_1

    .line 65
    :cond_0
    iget v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    if-eqz v0, :cond_2

    array-length v0, v0

    iget v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    if-ge v0, v1, :cond_3

    .line 68
    :cond_2
    iget v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    .line 70
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    if-ge v0, v1, :cond_4

    .line 71
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v2

    aput v2, v1, v0

    .line 72
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "i":I
    :cond_4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 75
    .local v0, "sizeOfLengths":I
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->clear()V

    .line 76
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 77
    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 79
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method public readFromSortedMap(Ljava/util/SortedMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p1, "sortedPhonePrefixMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/SortedMap;->size()I

    move-result v0

    iput v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    .line 51
    iget v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    .line 52
    iget v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "index":I
    invoke-interface {p1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 55
    .local v2, "prefix":I
    iget-object v3, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "index":I
    .local v4, "index":I
    aput v2, v3, v0

    .line 56
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    int-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->log10(D)D

    move-result-wide v5

    double-to-int v3, v5

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 57
    .end local v2    # "prefix":I
    move v0, v4

    goto :goto_0

    .line 58
    .end local v4    # "index":I
    .restart local v0    # "index":I
    :cond_0
    invoke-interface {p1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 4
    .param p1, "objectOutput"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    iget v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 84
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->numOfEntries:I

    if-ge v0, v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->phoneNumberPrefixes:[I

    aget v1, v1, v0

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 86
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->descriptions:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    .line 89
    .local v0, "sizeOfLengths":I
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 90
    iget-object v1, p0, Lcom/google/i18n/phonenumbers/prefixmapper/DefaultMapStorage;->possibleLengths:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 91
    .local v2, "length":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 92
    .end local v2    # "length":Ljava/lang/Integer;
    goto :goto_1

    .line 93
    :cond_1
    return-void
.end method
