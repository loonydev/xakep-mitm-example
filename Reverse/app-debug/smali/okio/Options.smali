.class public final Lokio/Options;
.super Ljava/util/AbstractList;
.source "Options.java"

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lokio/ByteString;",
        ">;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field final byteStrings:[Lokio/ByteString;

.field final trie:[I


# direct methods
.method private constructor <init>([Lokio/ByteString;[I)V
    .locals 0
    .param p1, "byteStrings"    # [Lokio/ByteString;
    .param p2, "trie"    # [I

    .line 30
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 31
    iput-object p1, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    .line 32
    iput-object p2, p0, Lokio/Options;->trie:[I

    .line 33
    return-void
.end method

.method private static buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V
    .locals 29
    .param p0, "nodeOffset"    # J
    .param p2, "node"    # Lokio/Buffer;
    .param p3, "byteStringOffset"    # I
    .param p5, "fromIndex"    # I
    .param p6, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lokio/Buffer;",
            "I",
            "Ljava/util/List<",
            "Lokio/ByteString;",
            ">;II",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 123
    .local p4, "byteStrings":Ljava/util/List;, "Ljava/util/List<Lokio/ByteString;>;"
    .local p7, "indexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v12, p4

    move/from16 v4, p5

    move/from16 v13, p6

    .line 123
    move-object/from16 v14, p7

    if-lt v4, v13, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 124
    :cond_0
    move v5, v4

    .line 124
    .local v5, "i":I
    :goto_0
    if-ge v5, v13, :cond_2

    .line 125
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    invoke-virtual {v6}, Lokio/ByteString;->size()I

    move-result v6

    if-ge v6, v3, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 124
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 128
    .end local v5    # "i":I
    :cond_2
    invoke-interface/range {p4 .. p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    .line 129
    .local v5, "from":Lokio/ByteString;
    add-int/lit8 v6, v13, -0x1

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lokio/ByteString;

    .line 130
    .local v15, "to":Lokio/ByteString;
    const/4 v6, -0x1

    .line 133
    .local v6, "prefixIndex":I
    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v7

    if-ne v3, v7, :cond_3

    .line 134
    invoke-interface {v14, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 135
    add-int/lit8 v4, v4, 0x1

    .line 136
    .end local p5    # "fromIndex":I
    .local v4, "fromIndex":I
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v5, v7

    check-cast v5, Lokio/ByteString;

    .line 139
    .end local v4    # "fromIndex":I
    .end local v5    # "from":Lokio/ByteString;
    .end local v6    # "prefixIndex":I
    .local v9, "prefixIndex":I
    .local v10, "fromIndex":I
    .local v11, "from":Lokio/ByteString;
    :cond_3
    move v10, v4

    move-object v11, v5

    move v9, v6

    invoke-virtual {v11, v3}, Lokio/ByteString;->getByte(I)B

    move-result v4

    invoke-virtual {v15, v3}, Lokio/ByteString;->getByte(I)B

    move-result v5

    const-wide/16 v16, -0x1

    if-eq v4, v5, :cond_e

    .line 141
    const/4 v4, 0x1

    .line 142
    .local v4, "selectChoiceCount":I
    add-int/lit8 v5, v10, 0x1

    move v8, v4

    .line 142
    .end local v4    # "selectChoiceCount":I
    .local v5, "i":I
    .local v8, "selectChoiceCount":I
    :goto_1
    move v4, v5

    .line 142
    .end local v5    # "i":I
    .local v4, "i":I
    if-ge v4, v13, :cond_5

    .line 143
    add-int/lit8 v5, v4, -0x1

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    invoke-virtual {v5, v3}, Lokio/ByteString;->getByte(I)B

    move-result v5

    .line 144
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v6, v18

    check-cast v6, Lokio/ByteString;

    invoke-virtual {v6, v3}, Lokio/ByteString;->getByte(I)B

    move-result v6

    if-eq v5, v6, :cond_4

    .line 145
    add-int/lit8 v8, v8, 0x1

    .line 142
    :cond_4
    add-int/lit8 v5, v4, 0x1

    .line 142
    .end local v4    # "i":I
    .restart local v5    # "i":I
    goto :goto_1

    .line 150
    .end local v5    # "i":I
    :cond_5
    invoke-static/range {p2 .. p2}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v4

    int-to-long v4, v4

    add-long v6, p0, v4

    const-wide/16 v4, 0x2

    add-long v18, v6, v4

    mul-int/lit8 v4, v8, 0x2

    int-to-long v4, v4

    add-long v20, v18, v4

    .line 152
    .local v20, "childNodesOffset":J
    invoke-virtual {v2, v8}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 153
    invoke-virtual {v2, v9}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 155
    move v4, v10

    .line 155
    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v13, :cond_8

    .line 156
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokio/ByteString;

    invoke-virtual {v5, v3}, Lokio/ByteString;->getByte(I)B

    move-result v5

    .line 157
    .local v5, "rangeByte":B
    if-eq v4, v10, :cond_6

    add-int/lit8 v6, v4, -0x1

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    invoke-virtual {v6, v3}, Lokio/ByteString;->getByte(I)B

    move-result v6

    if-eq v5, v6, :cond_7

    .line 158
    :cond_6
    and-int/lit16 v6, v5, 0xff

    invoke-virtual {v2, v6}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 155
    .end local v5    # "rangeByte":B
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 162
    .end local v4    # "i":I
    :cond_8
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    move-object v7, v4

    .line 163
    .local v7, "childNodes":Lokio/Buffer;
    move v4, v10

    .line 163
    .local v4, "rangeStart":I
    :goto_3
    move v6, v4

    .line 164
    .end local v4    # "rangeStart":I
    .local v6, "rangeStart":I
    if-ge v6, v13, :cond_d

    .line 165
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    invoke-virtual {v4, v3}, Lokio/ByteString;->getByte(I)B

    move-result v4

    .line 166
    .local v4, "rangeByte":B
    move v5, v13

    .line 167
    .local v5, "rangeEnd":I
    add-int/lit8 v18, v6, 0x1

    .line 167
    .local v18, "i":I
    :goto_4
    move/from16 v22, v18

    .line 167
    .end local v18    # "i":I
    .local v22, "i":I
    move/from16 v23, v5

    move/from16 v5, v22

    if-ge v5, v13, :cond_a

    .line 168
    .end local v22    # "i":I
    .local v5, "i":I
    .local v23, "rangeEnd":I
    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v24, v8

    move-object/from16 v8, v18

    check-cast v8, Lokio/ByteString;

    .line 168
    .end local v8    # "selectChoiceCount":I
    .local v24, "selectChoiceCount":I
    invoke-virtual {v8, v3}, Lokio/ByteString;->getByte(I)B

    move-result v8

    if-eq v4, v8, :cond_9

    .line 169
    move v8, v5

    .line 170
    .end local v23    # "rangeEnd":I
    .local v8, "rangeEnd":I
    goto :goto_5

    .line 167
    .end local v8    # "rangeEnd":I
    .restart local v23    # "rangeEnd":I
    :cond_9
    add-int/lit8 v18, v5, 0x1

    .line 167
    .end local v5    # "i":I
    .restart local v18    # "i":I
    move/from16 v5, v23

    move/from16 v8, v24

    goto :goto_4

    .line 174
    .end local v18    # "i":I
    .end local v24    # "selectChoiceCount":I
    .local v8, "selectChoiceCount":I
    :cond_a
    move/from16 v24, v8

    move/from16 v8, v23

    .line 174
    .end local v23    # "rangeEnd":I
    .local v8, "rangeEnd":I
    .restart local v24    # "selectChoiceCount":I
    :goto_5
    add-int/lit8 v5, v6, 0x1

    if-ne v5, v8, :cond_b

    add-int/lit8 v5, v3, 0x1

    .line 175
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move/from16 v25, v4

    move-object/from16 v4, v18

    check-cast v4, Lokio/ByteString;

    .line 175
    .end local v4    # "rangeByte":B
    .local v25, "rangeByte":B
    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v4

    if-ne v5, v4, :cond_c

    .line 177
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 191
    move/from16 v22, v6

    move-object v13, v7

    move/from16 v23, v8

    move/from16 v27, v9

    move/from16 v26, v10

    move-object v12, v11

    move/from16 v18, v24

    move/from16 v19, v25

    goto :goto_6

    .line 180
    .end local v25    # "rangeByte":B
    .restart local v4    # "rangeByte":B
    :cond_b
    move/from16 v25, v4

    .line 180
    .end local v4    # "rangeByte":B
    .restart local v25    # "rangeByte":B
    :cond_c
    invoke-static {v7}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v4

    int-to-long v4, v4

    add-long v18, v20, v4

    mul-long v4, v18, v16

    long-to-int v4, v4

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 181
    add-int/lit8 v18, v3, 0x1

    move/from16 v19, v25

    move-wide/from16 v4, v20

    .line 181
    .end local v25    # "rangeByte":B
    .local v19, "rangeByte":B
    move/from16 v22, v6

    move-object v6, v7

    .line 181
    .end local v6    # "rangeStart":I
    .local v22, "rangeStart":I
    move-object v13, v7

    move/from16 v7, v18

    .line 181
    .end local v7    # "childNodes":Lokio/Buffer;
    .local v13, "childNodes":Lokio/Buffer;
    move/from16 v23, v8

    move/from16 v18, v24

    move-object v8, v12

    .line 181
    .end local v8    # "rangeEnd":I
    .end local v24    # "selectChoiceCount":I
    .local v18, "selectChoiceCount":I
    .restart local v23    # "rangeEnd":I
    move v12, v9

    move/from16 v9, v22

    .line 181
    .end local v9    # "prefixIndex":I
    .local v12, "prefixIndex":I
    move/from16 v26, v10

    move/from16 v10, v23

    .line 181
    .end local v10    # "fromIndex":I
    .local v26, "fromIndex":I
    move/from16 v27, v12

    move-object v12, v11

    move-object v11, v14

    .line 181
    .end local v11    # "from":Lokio/ByteString;
    .local v12, "from":Lokio/ByteString;
    .local v27, "prefixIndex":I
    invoke-static/range {v4 .. v11}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 191
    :goto_6
    move/from16 v4, v23

    .line 192
    .end local v19    # "rangeByte":B
    .end local v22    # "rangeStart":I
    .end local v23    # "rangeEnd":I
    .local v4, "rangeStart":I
    nop

    .line 163
    move-object v11, v12

    move-object v7, v13

    move/from16 v8, v18

    move/from16 v10, v26

    move/from16 v9, v27

    move-object/from16 v12, p4

    move/from16 v13, p6

    goto/16 :goto_3

    .line 194
    .end local v4    # "rangeStart":I
    .end local v12    # "from":Lokio/ByteString;
    .end local v13    # "childNodes":Lokio/Buffer;
    .end local v18    # "selectChoiceCount":I
    .end local v26    # "fromIndex":I
    .end local v27    # "prefixIndex":I
    .restart local v6    # "rangeStart":I
    .restart local v7    # "childNodes":Lokio/Buffer;
    .local v8, "selectChoiceCount":I
    .restart local v9    # "prefixIndex":I
    .restart local v10    # "fromIndex":I
    .restart local v11    # "from":Lokio/ByteString;
    :cond_d
    move/from16 v22, v6

    move-object v13, v7

    move/from16 v18, v8

    move/from16 v27, v9

    move/from16 v26, v10

    move-object v12, v11

    .line 194
    .end local v6    # "rangeStart":I
    .end local v7    # "childNodes":Lokio/Buffer;
    .end local v8    # "selectChoiceCount":I
    .end local v9    # "prefixIndex":I
    .end local v10    # "fromIndex":I
    .end local v11    # "from":Lokio/ByteString;
    .restart local v12    # "from":Lokio/ByteString;
    .restart local v13    # "childNodes":Lokio/Buffer;
    .restart local v18    # "selectChoiceCount":I
    .restart local v22    # "rangeStart":I
    .restart local v26    # "fromIndex":I
    .restart local v27    # "prefixIndex":I
    invoke-virtual {v13}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v2, v13, v4, v5}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 196
    .end local v13    # "childNodes":Lokio/Buffer;
    .end local v18    # "selectChoiceCount":I
    .end local v20    # "childNodesOffset":J
    .end local v22    # "rangeStart":I
    nop

    .line 238
    move/from16 v1, v26

    move/from16 v20, v27

    goto/16 :goto_9

    .line 198
    .end local v12    # "from":Lokio/ByteString;
    .end local v26    # "fromIndex":I
    .end local v27    # "prefixIndex":I
    .restart local v9    # "prefixIndex":I
    .restart local v10    # "fromIndex":I
    .restart local v11    # "from":Lokio/ByteString;
    :cond_e
    move/from16 v27, v9

    move/from16 v26, v10

    move-object v12, v11

    .line 198
    .end local v9    # "prefixIndex":I
    .end local v10    # "fromIndex":I
    .end local v11    # "from":Lokio/ByteString;
    .restart local v12    # "from":Lokio/ByteString;
    .restart local v26    # "fromIndex":I
    .restart local v27    # "prefixIndex":I
    const/4 v4, 0x0

    .line 199
    .local v4, "scanByteCount":I
    move v5, v3

    .line 199
    .restart local v5    # "i":I
    invoke-virtual {v12}, Lokio/ByteString;->size()I

    move-result v6

    invoke-virtual {v15}, Lokio/ByteString;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v13, v4

    .line 199
    .end local v4    # "scanByteCount":I
    .local v6, "max":I
    .local v13, "scanByteCount":I
    :goto_7
    if-ge v5, v6, :cond_f

    .line 200
    invoke-virtual {v12, v5}, Lokio/ByteString;->getByte(I)B

    move-result v4

    invoke-virtual {v15, v5}, Lokio/ByteString;->getByte(I)B

    move-result v7

    if-ne v4, v7, :cond_f

    .line 201
    add-int/lit8 v13, v13, 0x1

    .line 199
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 208
    .end local v5    # "i":I
    .end local v6    # "max":I
    :cond_f
    invoke-static/range {p2 .. p2}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v4

    int-to-long v4, v4

    add-long v6, p0, v4

    const-wide/16 v4, 0x2

    add-long v8, v6, v4

    int-to-long v4, v13

    add-long v6, v8, v4

    const-wide/16 v4, 0x1

    add-long v18, v6, v4

    .line 210
    .local v18, "childNodesOffset":J
    neg-int v4, v13

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 211
    move/from16 v6, v27

    invoke-virtual {v2, v6}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 213
    .end local v27    # "prefixIndex":I
    .local v6, "prefixIndex":I
    move v4, v3

    .line 213
    .local v4, "i":I
    :goto_8
    add-int v5, v3, v13

    if-ge v4, v5, :cond_10

    .line 214
    invoke-virtual {v12, v4}, Lokio/ByteString;->getByte(I)B

    move-result v5

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v2, v5}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 213
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 217
    .end local v4    # "i":I
    :cond_10
    move/from16 v11, v26

    add-int/lit8 v10, v11, 0x1

    .line 217
    .end local v26    # "fromIndex":I
    .local v11, "fromIndex":I
    move/from16 v9, p6

    if-ne v10, v9, :cond_12

    .line 219
    add-int v4, v3, v13

    move/from16 v20, v6

    move-object/from16 v10, p4

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 219
    .end local v6    # "prefixIndex":I
    .local v20, "prefixIndex":I
    check-cast v5, Lokio/ByteString;

    invoke-virtual {v5}, Lokio/ByteString;->size()I

    move-result v5

    if-eq v4, v5, :cond_11

    .line 220
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    .line 222
    :cond_11
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 238
    move v1, v11

    goto :goto_9

    .line 225
    .end local v20    # "prefixIndex":I
    .restart local v6    # "prefixIndex":I
    :cond_12
    move/from16 v20, v6

    move-object/from16 v10, p4

    .line 225
    .end local v6    # "prefixIndex":I
    .restart local v20    # "prefixIndex":I
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    move-object v8, v4

    .line 226
    .local v8, "childNodes":Lokio/Buffer;
    invoke-static {v8}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v4

    int-to-long v4, v4

    add-long v6, v18, v4

    mul-long v6, v6, v16

    long-to-int v4, v6

    invoke-virtual {v2, v4}, Lokio/Buffer;->writeInt(I)Lokio/Buffer;

    .line 227
    add-int v7, v3, v13

    move-wide/from16 v4, v18

    move-object v6, v8

    move-object v0, v8

    move-object v8, v10

    .line 227
    .end local v8    # "childNodes":Lokio/Buffer;
    .local v0, "childNodes":Lokio/Buffer;
    move v9, v11

    move/from16 v10, p6

    move v1, v11

    move-object v11, v14

    .line 227
    .end local v11    # "fromIndex":I
    .local v1, "fromIndex":I
    invoke-static/range {v4 .. v11}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 235
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v4

    invoke-virtual {v2, v0, v4, v5}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 238
    .end local v0    # "childNodes":Lokio/Buffer;
    .end local v13    # "scanByteCount":I
    .end local v18    # "childNodesOffset":J
    :goto_9
    return-void
.end method

.method private static intCount(Lokio/Buffer;)I
    .locals 4
    .param p0, "trieBytes"    # Lokio/Buffer;

    .line 249
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public static varargs of([Lokio/ByteString;)Lokio/Options;
    .locals 12
    .param p0, "byteStrings"    # [Lokio/ByteString;

    .line 36
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lokio/Options;

    new-array v1, v1, [Lokio/ByteString;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 44
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lokio/ByteString;>;"
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v2, "indexes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 46
    .local v3, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 47
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    .line 49
    .restart local v3    # "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 50
    aget-object v4, p0, v3

    invoke-static {v0, v4}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v4

    .line 51
    .local v4, "sortedIndex":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 49
    .end local v4    # "sortedIndex":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 53
    .end local v3    # "i":I
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokio/ByteString;

    invoke-virtual {v3}, Lokio/ByteString;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 54
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "the empty byte string is not a supported option"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_3
    const/4 v3, 0x0

    .line 60
    .local v3, "a":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 61
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lokio/ByteString;

    .line 62
    .local v4, "prefix":Lokio/ByteString;
    add-int/lit8 v5, v3, 0x1

    .line 62
    .local v5, "b":I
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 63
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokio/ByteString;

    .line 64
    .local v6, "byteString":Lokio/ByteString;
    invoke-virtual {v6, v4}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 64
    .end local v4    # "prefix":Lokio/ByteString;
    .end local v5    # "b":I
    .end local v6    # "byteString":Lokio/ByteString;
    goto :goto_5

    .line 65
    .restart local v4    # "prefix":Lokio/ByteString;
    .restart local v5    # "b":I
    .restart local v6    # "byteString":Lokio/ByteString;
    :cond_4
    invoke-virtual {v6}, Lokio/ByteString;->size()I

    move-result v7

    invoke-virtual {v4}, Lokio/ByteString;->size()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 66
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "duplicate option: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    :cond_5
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v7, v8, :cond_6

    .line 69
    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 70
    invoke-interface {v2, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 72
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 74
    .end local v6    # "byteString":Lokio/ByteString;
    :goto_4
    goto :goto_3

    .line 60
    .end local v4    # "prefix":Lokio/ByteString;
    .end local v5    # "b":I
    :cond_7
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 77
    .end local v3    # "a":I
    :cond_8
    new-instance v3, Lokio/Buffer;

    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    move-object v11, v3

    .line 78
    .local v11, "trieBytes":Lokio/Buffer;
    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    move-object v5, v11

    move-object v7, v0

    move-object v10, v2

    invoke-static/range {v3 .. v10}, Lokio/Options;->buildTrieRecursive(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V

    .line 80
    invoke-static {v11}, Lokio/Options;->intCount(Lokio/Buffer;)I

    move-result v3

    new-array v3, v3, [I

    .line 81
    .local v3, "trie":[I
    nop

    .line 81
    .local v1, "i":I
    :goto_6
    array-length v4, v3

    if-ge v1, v4, :cond_9

    .line 82
    invoke-virtual {v11}, Lokio/Buffer;->readInt()I

    move-result v4

    aput v4, v3, v1

    .line 81
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 84
    .end local v1    # "i":I
    :cond_9
    invoke-virtual {v11}, Lokio/Buffer;->exhausted()Z

    move-result v1

    if-nez v1, :cond_a

    .line 85
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 88
    :cond_a
    new-instance v1, Lokio/Options;

    invoke-virtual {p0}, [Lokio/ByteString;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lokio/ByteString;

    invoke-direct {v1, v4, v3}, Lokio/Options;-><init>([Lokio/ByteString;[I)V

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lokio/Options;->get(I)Lokio/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Lokio/ByteString;
    .locals 1
    .param p1, "i"    # I

    .line 241
    iget-object v0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final size()I
    .locals 1

    .line 245
    iget-object v0, p0, Lokio/Options;->byteStrings:[Lokio/ByteString;

    array-length v0, v0

    return v0
.end method
