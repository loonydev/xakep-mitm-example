.class public final Lokhttp3/CacheControl;
.super Ljava/lang/Object;
.source "CacheControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/CacheControl$Builder;
    }
.end annotation


# static fields
.field public static final FORCE_CACHE:Lokhttp3/CacheControl;

.field public static final FORCE_NETWORK:Lokhttp3/CacheControl;


# instance fields
.field headerValue:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final immutable:Z

.field private final isPrivate:Z

.field private final isPublic:Z

.field private final maxAgeSeconds:I

.field private final maxStaleSeconds:I

.field private final minFreshSeconds:I

.field private final mustRevalidate:Z

.field private final noCache:Z

.field private final noStore:Z

.field private final noTransform:Z

.field private final onlyIfCached:Z

.field private final sMaxAgeSeconds:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->noCache()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    .line 25
    new-instance v0, Lokhttp3/CacheControl$Builder;

    invoke-direct {v0}, Lokhttp3/CacheControl$Builder;-><init>()V

    .line 26
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->onlyIfCached()Lokhttp3/CacheControl$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 27
    const v2, 0x7fffffff

    invoke-virtual {v0, v2, v1}, Lokhttp3/CacheControl$Builder;->maxStale(ILjava/util/concurrent/TimeUnit;)Lokhttp3/CacheControl$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lokhttp3/CacheControl$Builder;->build()Lokhttp3/CacheControl;

    move-result-object v0

    sput-object v0, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    .line 25
    return-void
.end method

.method constructor <init>(Lokhttp3/CacheControl$Builder;)V
    .locals 1
    .param p1, "builder"    # Lokhttp3/CacheControl$Builder;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noCache:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noCache:Z

    .line 66
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noStore:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noStore:Z

    .line 67
    iget v0, p1, Lokhttp3/CacheControl$Builder;->maxAgeSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/CacheControl;->isPrivate:Z

    .line 70
    iput-boolean v0, p0, Lokhttp3/CacheControl;->isPublic:Z

    .line 71
    iput-boolean v0, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    .line 72
    iget v0, p1, Lokhttp3/CacheControl$Builder;->maxStaleSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    .line 73
    iget v0, p1, Lokhttp3/CacheControl$Builder;->minFreshSeconds:I

    iput v0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    .line 74
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->onlyIfCached:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    .line 75
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->noTransform:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->noTransform:Z

    .line 76
    iget-boolean v0, p1, Lokhttp3/CacheControl$Builder;->immutable:Z

    iput-boolean v0, p0, Lokhttp3/CacheControl;->immutable:Z

    .line 77
    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .locals 0
    .param p1, "noCache"    # Z
    .param p2, "noStore"    # Z
    .param p3, "maxAgeSeconds"    # I
    .param p4, "sMaxAgeSeconds"    # I
    .param p5, "isPrivate"    # Z
    .param p6, "isPublic"    # Z
    .param p7, "mustRevalidate"    # Z
    .param p8, "maxStaleSeconds"    # I
    .param p9, "minFreshSeconds"    # I
    .param p10, "onlyIfCached"    # Z
    .param p11, "noTransform"    # Z
    .param p12, "immutable"    # Z
    .param p13, "headerValue"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-boolean p1, p0, Lokhttp3/CacheControl;->noCache:Z

    .line 50
    iput-boolean p2, p0, Lokhttp3/CacheControl;->noStore:Z

    .line 51
    iput p3, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    .line 52
    iput p4, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    .line 53
    iput-boolean p5, p0, Lokhttp3/CacheControl;->isPrivate:Z

    .line 54
    iput-boolean p6, p0, Lokhttp3/CacheControl;->isPublic:Z

    .line 55
    iput-boolean p7, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    .line 56
    iput p8, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    .line 57
    iput p9, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    .line 58
    iput-boolean p10, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    .line 59
    iput-boolean p11, p0, Lokhttp3/CacheControl;->noTransform:Z

    .line 60
    iput-boolean p12, p0, Lokhttp3/CacheControl;->immutable:Z

    .line 61
    iput-object p13, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    .line 62
    return-void
.end method

.method private headerValue()Ljava/lang/String;
    .locals 3

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noCache:Z

    if-eqz v1, :cond_0

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    :cond_0
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noStore:Z

    if-eqz v1, :cond_1

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :cond_1
    iget v1, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    :cond_2
    iget v1, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    if-eq v1, v2, :cond_3

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_3
    iget-boolean v1, p0, Lokhttp3/CacheControl;->isPrivate:Z

    if-eqz v1, :cond_4

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    :cond_4
    iget-boolean v1, p0, Lokhttp3/CacheControl;->isPublic:Z

    if-eqz v1, :cond_5

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_5
    iget-boolean v1, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    if-eqz v1, :cond_6

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_6
    iget v1, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    if-eq v1, v2, :cond_7

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    :cond_7
    iget v1, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    if-eq v1, v2, :cond_8

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    :cond_8
    iget-boolean v1, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    if-eqz v1, :cond_9

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    :cond_9
    iget-boolean v1, p0, Lokhttp3/CacheControl;->noTransform:Z

    if-eqz v1, :cond_a

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_a
    iget-boolean v1, p0, Lokhttp3/CacheControl;->immutable:Z

    if-eqz v1, :cond_b

    const-string v1, "immutable, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_c

    const-string v1, ""

    return-object v1

    .line 273
    :cond_c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Lokhttp3/Headers;)Lokhttp3/CacheControl;
    .locals 40
    .param p0, "headers"    # Lokhttp3/Headers;

    .line 153
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 154
    .local v1, "noCache":Z
    const/4 v2, 0x0

    .line 155
    .local v2, "noStore":Z
    const/4 v3, -0x1

    .line 156
    .local v3, "maxAgeSeconds":I
    const/4 v4, -0x1

    .line 157
    .local v4, "sMaxAgeSeconds":I
    const/4 v5, 0x0

    .line 158
    .local v5, "isPrivate":Z
    const/4 v6, 0x0

    .line 159
    .local v6, "isPublic":Z
    const/4 v7, 0x0

    .line 160
    .local v7, "mustRevalidate":Z
    const/4 v8, -0x1

    .line 161
    .local v8, "maxStaleSeconds":I
    const/4 v9, -0x1

    .line 162
    .local v9, "minFreshSeconds":I
    const/4 v10, 0x0

    .line 163
    .local v10, "onlyIfCached":Z
    const/4 v11, 0x0

    .line 164
    .local v11, "noTransform":Z
    const/4 v12, 0x0

    .line 166
    .local v12, "immutable":Z
    const/4 v13, 0x1

    .line 167
    .local v13, "canUseHeaderValue":Z
    const/4 v14, 0x0

    .line 169
    .local v14, "headerValue":Ljava/lang/String;
    const/4 v15, 0x0

    .line 169
    .local v15, "i":I
    invoke-virtual/range {p0 .. p0}, Lokhttp3/Headers;->size()I

    move-result v16

    .line 169
    .local v16, "size":I
    :goto_0
    move/from16 v31, v16

    .line 169
    .end local v16    # "size":I
    .local v31, "size":I
    move/from16 v32, v12

    move/from16 v12, v31

    if-ge v15, v12, :cond_14

    .line 170
    .end local v31    # "size":I
    .local v12, "size":I
    .local v32, "immutable":Z
    move/from16 v33, v12

    invoke-virtual {v0, v15}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v12

    .line 171
    .local v12, "name":Ljava/lang/String;
    .local v33, "size":I
    move/from16 v34, v11

    invoke-virtual {v0, v15}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v11

    .line 173
    .local v11, "value":Ljava/lang/String;
    .local v34, "noTransform":Z
    const-string v0, "Cache-Control"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    if-eqz v14, :cond_0

    .line 176
    const/4 v13, 0x0

    goto :goto_1

    .line 178
    :cond_0
    move-object v14, v11

    goto :goto_1

    .line 180
    :cond_1
    const-string v0, "Pragma"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 182
    const/4 v13, 0x0

    .line 187
    :goto_1
    const/4 v0, 0x0

    .line 188
    .local v0, "pos":I
    :goto_2
    move/from16 v35, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    .line 188
    .end local v1    # "noCache":Z
    .local v35, "noCache":Z
    if-ge v0, v1, :cond_12

    .line 189
    move v1, v0

    .line 190
    .local v1, "tokenStart":I
    move/from16 v36, v2

    const-string v2, "=,;"

    .line 190
    .end local v2    # "noStore":Z
    .local v36, "noStore":Z
    invoke-static {v11, v0, v2}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 191
    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "directive":Ljava/lang/String;
    move/from16 v37, v1

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    .line 194
    .end local v1    # "tokenStart":I
    .local v37, "tokenStart":I
    if-eq v0, v1, :cond_4

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move/from16 v38, v3

    const/16 v3, 0x2c

    .line 194
    .end local v3    # "maxAgeSeconds":I
    .local v38, "maxAgeSeconds":I
    if-eq v1, v3, :cond_5

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_2

    goto :goto_3

    .line 198
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 199
    invoke-static {v11, v0}, Lokhttp3/internal/http/HttpHeaders;->skipWhitespace(Ljava/lang/String;I)I

    move-result v0

    .line 202
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x22

    if-ne v1, v3, :cond_3

    .line 203
    add-int/lit8 v0, v0, 0x1

    .line 204
    move v1, v0

    .line 205
    .local v1, "parameterStart":I
    const-string v3, "\""

    invoke-static {v11, v0, v3}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 206
    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 207
    .local v3, "parameter":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 210
    .end local v1    # "parameterStart":I
    goto :goto_4

    .line 211
    .end local v3    # "parameter":Ljava/lang/String;
    :cond_3
    move v1, v0

    .line 212
    .restart local v1    # "parameterStart":I
    const-string v3, ",;"

    invoke-static {v11, v0, v3}, Lokhttp3/internal/http/HttpHeaders;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 213
    invoke-virtual {v11, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 213
    .end local v1    # "parameterStart":I
    goto :goto_4

    .line 195
    .end local v38    # "maxAgeSeconds":I
    .local v3, "maxAgeSeconds":I
    :cond_4
    move/from16 v38, v3

    .line 195
    .end local v3    # "maxAgeSeconds":I
    .restart local v38    # "maxAgeSeconds":I
    :cond_5
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 196
    const/4 v3, 0x0

    .line 213
    .local v3, "parameter":Ljava/lang/String;
    :goto_4
    move-object v1, v3

    .line 217
    .end local v3    # "parameter":Ljava/lang/String;
    .local v1, "parameter":Ljava/lang/String;
    const-string v3, "no-cache"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 218
    const/4 v3, 0x1

    .line 242
    .end local v35    # "noCache":Z
    .local v3, "noCache":Z
    move/from16 v39, v0

    move v1, v3

    .line 242
    .end local v0    # "pos":I
    .end local v36    # "noStore":Z
    .end local v37    # "tokenStart":I
    .end local v38    # "maxAgeSeconds":I
    .local v1, "noCache":Z
    .local v2, "noStore":Z
    .local v3, "maxAgeSeconds":I
    .local v39, "pos":I
    :goto_5
    move/from16 v2, v36

    :goto_6
    move/from16 v3, v38

    goto/16 :goto_8

    .line 219
    .end local v3    # "maxAgeSeconds":I
    .end local v39    # "pos":I
    .restart local v0    # "pos":I
    .local v1, "parameter":Ljava/lang/String;
    .local v2, "directive":Ljava/lang/String;
    .restart local v35    # "noCache":Z
    .restart local v36    # "noStore":Z
    .restart local v37    # "tokenStart":I
    .restart local v38    # "maxAgeSeconds":I
    :cond_6
    const-string v3, "no-store"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 220
    const/4 v3, 0x1

    .line 242
    .end local v36    # "noStore":Z
    .local v3, "noStore":Z
    move/from16 v39, v0

    move v2, v3

    move/from16 v1, v35

    goto :goto_6

    .line 221
    .end local v3    # "noStore":Z
    .restart local v36    # "noStore":Z
    :cond_7
    const-string v3, "max-age"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    move/from16 v39, v0

    const/4 v0, -0x1

    .line 221
    .end local v0    # "pos":I
    .restart local v39    # "pos":I
    if-eqz v3, :cond_8

    .line 222
    invoke-static {v1, v0}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    .line 242
    .end local v38    # "maxAgeSeconds":I
    .local v0, "maxAgeSeconds":I
    move v3, v0

    move/from16 v1, v35

    move/from16 v2, v36

    goto/16 :goto_8

    .line 223
    .end local v0    # "maxAgeSeconds":I
    .restart local v38    # "maxAgeSeconds":I
    :cond_8
    const-string v3, "s-maxage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 224
    invoke-static {v1, v0}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    .line 242
    .end local v4    # "sMaxAgeSeconds":I
    .local v0, "sMaxAgeSeconds":I
    move v4, v0

    .line 242
    .end local v0    # "sMaxAgeSeconds":I
    .end local v35    # "noCache":Z
    .end local v36    # "noStore":Z
    .end local v37    # "tokenStart":I
    .end local v38    # "maxAgeSeconds":I
    .local v1, "noCache":Z
    .local v2, "noStore":Z
    .local v3, "maxAgeSeconds":I
    .restart local v4    # "sMaxAgeSeconds":I
    :cond_9
    :goto_7
    move/from16 v1, v35

    goto :goto_5

    .line 225
    .end local v3    # "maxAgeSeconds":I
    .local v1, "parameter":Ljava/lang/String;
    .local v2, "directive":Ljava/lang/String;
    .restart local v35    # "noCache":Z
    .restart local v36    # "noStore":Z
    .restart local v37    # "tokenStart":I
    .restart local v38    # "maxAgeSeconds":I
    :cond_a
    const-string v3, "private"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 226
    const/4 v0, 0x1

    .line 242
    .end local v5    # "isPrivate":Z
    .local v0, "isPrivate":Z
    move v5, v0

    goto :goto_7

    .line 227
    .end local v0    # "isPrivate":Z
    .restart local v5    # "isPrivate":Z
    :cond_b
    const-string v3, "public"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 228
    const/4 v0, 0x1

    .line 242
    .end local v6    # "isPublic":Z
    .local v0, "isPublic":Z
    move v6, v0

    goto :goto_7

    .line 229
    .end local v0    # "isPublic":Z
    .restart local v6    # "isPublic":Z
    :cond_c
    const-string v3, "must-revalidate"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 230
    const/4 v0, 0x1

    .line 242
    .end local v7    # "mustRevalidate":Z
    .local v0, "mustRevalidate":Z
    move v7, v0

    goto :goto_7

    .line 231
    .end local v0    # "mustRevalidate":Z
    .restart local v7    # "mustRevalidate":Z
    :cond_d
    const-string v3, "max-stale"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 232
    const v0, 0x7fffffff

    invoke-static {v1, v0}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    .line 242
    .end local v8    # "maxStaleSeconds":I
    .local v0, "maxStaleSeconds":I
    move v8, v0

    goto :goto_7

    .line 233
    .end local v0    # "maxStaleSeconds":I
    .restart local v8    # "maxStaleSeconds":I
    :cond_e
    const-string v3, "min-fresh"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 234
    invoke-static {v1, v0}, Lokhttp3/internal/http/HttpHeaders;->parseSeconds(Ljava/lang/String;I)I

    move-result v0

    .line 242
    .end local v9    # "minFreshSeconds":I
    .local v0, "minFreshSeconds":I
    move v9, v0

    goto :goto_7

    .line 235
    .end local v0    # "minFreshSeconds":I
    .restart local v9    # "minFreshSeconds":I
    :cond_f
    const-string v0, "only-if-cached"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 236
    const/4 v0, 0x1

    .line 242
    .end local v10    # "onlyIfCached":Z
    .local v0, "onlyIfCached":Z
    move v10, v0

    goto :goto_7

    .line 237
    .end local v0    # "onlyIfCached":Z
    .restart local v10    # "onlyIfCached":Z
    :cond_10
    const-string v0, "no-transform"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 238
    const/4 v0, 0x1

    .line 242
    .end local v34    # "noTransform":Z
    .local v0, "noTransform":Z
    move/from16 v34, v0

    goto :goto_7

    .line 239
    .end local v0    # "noTransform":Z
    .restart local v34    # "noTransform":Z
    :cond_11
    const-string v0, "immutable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 240
    const/4 v0, 0x1

    .line 242
    .end local v1    # "parameter":Ljava/lang/String;
    .end local v2    # "directive":Ljava/lang/String;
    .end local v32    # "immutable":Z
    .end local v37    # "tokenStart":I
    .local v0, "immutable":Z
    move/from16 v32, v0

    goto :goto_7

    .line 187
    .end local v0    # "immutable":Z
    .end local v35    # "noCache":Z
    .end local v36    # "noStore":Z
    .end local v38    # "maxAgeSeconds":I
    .local v1, "noCache":Z
    .local v2, "noStore":Z
    .restart local v3    # "maxAgeSeconds":I
    .restart local v32    # "immutable":Z
    :goto_8
    move/from16 v0, v39

    goto/16 :goto_2

    .line 169
    .end local v1    # "noCache":Z
    .end local v11    # "value":Ljava/lang/String;
    .end local v12    # "name":Ljava/lang/String;
    .end local v39    # "pos":I
    .restart local v35    # "noCache":Z
    :cond_12
    move/from16 v36, v2

    move/from16 v38, v3

    move/from16 v12, v32

    move/from16 v11, v34

    move/from16 v1, v35

    .line 169
    .end local v2    # "noStore":Z
    .end local v3    # "maxAgeSeconds":I
    .restart local v36    # "noStore":Z
    .restart local v38    # "maxAgeSeconds":I
    goto :goto_9

    .line 169
    .end local v35    # "noCache":Z
    .end local v36    # "noStore":Z
    .end local v38    # "maxAgeSeconds":I
    .restart local v1    # "noCache":Z
    .restart local v2    # "noStore":Z
    .restart local v3    # "maxAgeSeconds":I
    :cond_13
    move/from16 v12, v32

    move/from16 v11, v34

    .line 169
    .end local v32    # "immutable":Z
    .end local v34    # "noTransform":Z
    .local v11, "noTransform":Z
    .local v12, "immutable":Z
    :goto_9
    add-int/lit8 v15, v15, 0x1

    move/from16 v16, v33

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 245
    .end local v12    # "immutable":Z
    .end local v15    # "i":I
    .end local v33    # "size":I
    .restart local v32    # "immutable":Z
    :cond_14
    move/from16 v34, v11

    .line 245
    .end local v11    # "noTransform":Z
    .restart local v34    # "noTransform":Z
    if-nez v13, :cond_15

    .line 246
    const/4 v14, 0x0

    .line 248
    :cond_15
    new-instance v0, Lokhttp3/CacheControl;

    move-object/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    move/from16 v27, v10

    move/from16 v28, v34

    move/from16 v29, v32

    move-object/from16 v30, v14

    invoke-direct/range {v17 .. v30}, Lokhttp3/CacheControl;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public immutable()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lokhttp3/CacheControl;->immutable:Z

    return v0
.end method

.method public isPrivate()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lokhttp3/CacheControl;->isPrivate:Z

    return v0
.end method

.method public isPublic()Z
    .locals 1

    .line 115
    iget-boolean v0, p0, Lokhttp3/CacheControl;->isPublic:Z

    return v0
.end method

.method public maxAgeSeconds()I
    .locals 1

    .line 99
    iget v0, p0, Lokhttp3/CacheControl;->maxAgeSeconds:I

    return v0
.end method

.method public maxStaleSeconds()I
    .locals 1

    .line 123
    iget v0, p0, Lokhttp3/CacheControl;->maxStaleSeconds:I

    return v0
.end method

.method public minFreshSeconds()I
    .locals 1

    .line 127
    iget v0, p0, Lokhttp3/CacheControl;->minFreshSeconds:I

    return v0
.end method

.method public mustRevalidate()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lokhttp3/CacheControl;->mustRevalidate:Z

    return v0
.end method

.method public noCache()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lokhttp3/CacheControl;->noCache:Z

    return v0
.end method

.method public noStore()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lokhttp3/CacheControl;->noStore:Z

    return v0
.end method

.method public noTransform()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lokhttp3/CacheControl;->noTransform:Z

    return v0
.end method

.method public onlyIfCached()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lokhttp3/CacheControl;->onlyIfCached:Z

    return v0
.end method

.method public sMaxAgeSeconds()I
    .locals 1

    .line 107
    iget v0, p0, Lokhttp3/CacheControl;->sMaxAgeSeconds:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 254
    iget-object v0, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    .line 255
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lokhttp3/CacheControl;->headerValue()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/CacheControl;->headerValue:Ljava/lang/String;

    :goto_0
    return-object v1
.end method
