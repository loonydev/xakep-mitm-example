.class public final Lokio/Utf8;
.super Ljava/lang/Object;
.source "Utf8.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method public static size(Ljava/lang/String;)J
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lokio/Utf8;->size(Ljava/lang/String;II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static size(Ljava/lang/String;II)J
    .locals 10
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "beginIndex"    # I
    .param p2, "endIndex"    # I

    .line 82
    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "string == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beginIndex < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_1
    if-ge p2, p1, :cond_2

    .line 85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex < beginIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p2, v0, :cond_3

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "endIndex > string.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3
    const-wide/16 v0, 0x0

    .line 93
    .local v0, "result":J
    move-wide v1, v0

    move v0, p1

    .line 93
    .local v0, "i":I
    .local v1, "result":J
    :goto_0
    if-ge v0, p2, :cond_b

    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 96
    .local v3, "c":I
    const/16 v4, 0x80

    const-wide/16 v5, 0x1

    if-ge v3, v4, :cond_4

    .line 98
    add-long v7, v1, v5

    .line 99
    .end local v1    # "result":J
    .local v7, "result":J
    add-int/lit8 v0, v0, 0x1

    .line 124
    move-wide v1, v7

    goto :goto_6

    .line 101
    .end local v7    # "result":J
    .restart local v1    # "result":J
    :cond_4
    const/16 v4, 0x800

    if-ge v3, v4, :cond_5

    .line 103
    const-wide/16 v4, 0x2

    add-long v6, v1, v4

    .line 104
    .end local v1    # "result":J
    .local v6, "result":J
    add-int/lit8 v0, v0, 0x1

    .line 124
    .end local v3    # "c":I
    .end local v6    # "result":J
    .restart local v1    # "result":J
    :goto_1
    move-wide v1, v6

    goto :goto_6

    .line 106
    .restart local v3    # "c":I
    :cond_5
    const v4, 0xd800

    if-lt v3, v4, :cond_a

    const v4, 0xdfff

    if-le v3, v4, :cond_6

    goto :goto_5

    .line 112
    :cond_6
    add-int/lit8 v7, v0, 0x1

    if-ge v7, p2, :cond_7

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    .line 113
    .local v7, "low":I
    :goto_2
    const v8, 0xdbff

    if-gt v3, v8, :cond_9

    const v8, 0xdc00

    if-lt v7, v8, :cond_9

    if-le v7, v4, :cond_8

    goto :goto_3

    .line 120
    :cond_8
    const-wide/16 v4, 0x4

    add-long v8, v1, v4

    .line 121
    .end local v1    # "result":J
    .local v8, "result":J
    add-int/lit8 v0, v0, 0x2

    .line 121
    .end local v3    # "c":I
    .end local v7    # "low":I
    goto :goto_4

    .line 115
    .end local v8    # "result":J
    .restart local v1    # "result":J
    .restart local v3    # "c":I
    .restart local v7    # "low":I
    :cond_9
    :goto_3
    const/4 v4, 0x0

    add-long v8, v1, v5

    .line 116
    .end local v1    # "result":J
    .restart local v8    # "result":J
    add-int/lit8 v0, v0, 0x1

    .line 124
    .end local v3    # "c":I
    .end local v7    # "low":I
    .end local v8    # "result":J
    .restart local v1    # "result":J
    :goto_4
    move-wide v1, v8

    goto :goto_6

    .line 108
    .restart local v3    # "c":I
    :cond_a
    :goto_5
    const-wide/16 v4, 0x3

    add-long v6, v1, v4

    .line 109
    .end local v1    # "result":J
    .restart local v6    # "result":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    .end local v3    # "c":I
    .end local v6    # "result":J
    .restart local v1    # "result":J
    :goto_6
    goto :goto_0

    .line 126
    .end local v0    # "i":I
    :cond_b
    return-wide v1
.end method
