.class Lokhttp3/internal/cache2/Relay$RelaySource;
.super Ljava/lang/Object;
.source "Relay.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache2/Relay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RelaySource"
.end annotation


# instance fields
.field private fileOperator:Lokhttp3/internal/cache2/FileOperator;

.field private sourcePos:J

.field final synthetic this$0:Lokhttp3/internal/cache2/Relay;

.field private final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache2/Relay;)V
    .locals 2
    .param p1, "this$0"    # Lokhttp3/internal/cache2/Relay;

    .line 224
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    .line 228
    new-instance v0, Lokhttp3/internal/cache2/FileOperator;

    iget-object v1, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v1, v1, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-direct {v0, v1}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 344
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    if-nez v0, :cond_0

    return-void

    .line 345
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    .line 347
    const/4 v1, 0x0

    .line 348
    .local v1, "fileToClose":Ljava/io/RandomAccessFile;
    iget-object v2, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v2

    .line 349
    :try_start_0
    iget-object v3, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget v4, v3, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    .line 350
    iget-object v3, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget v3, v3, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    if-nez v3, :cond_1

    .line 351
    iget-object v3, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v3, v3, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    move-object v1, v3

    .line 352
    iget-object v3, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iput-object v0, v3, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 354
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 356
    if-eqz v1, :cond_2

    .line 357
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 359
    :cond_2
    return-void

    .line 354
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public read(Lokio/Buffer;J)J
    .locals 25
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 252
    move-wide/from16 v2, p2

    iget-object v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "closed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 258
    :cond_0
    iget-object v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v4

    .line 260
    :goto_0
    :try_start_0
    iget-wide v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    iget-object v7, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v7, v7, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    move-wide v9, v7

    .line 260
    .local v9, "upstreamPos":J
    cmp-long v11, v5, v7

    const-wide/16 v5, -0x1

    if-nez v11, :cond_3

    .line 262
    iget-object v7, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-boolean v7, v7, Lokhttp3/internal/cache2/Relay;->complete:Z

    if-eqz v7, :cond_1

    monitor-exit v4

    return-wide v5

    .line 265
    :cond_1
    iget-object v7, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v7, v7, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    if-eqz v7, :cond_2

    .line 266
    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    iget-object v6, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v5, v6}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    .line 267
    goto :goto_0

    .line 271
    :cond_2
    iget-object v7, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    iput-object v8, v7, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 272
    const/4 v7, 0x1

    .line 273
    .local v7, "source":I
    monitor-exit v4

    goto :goto_1

    .line 276
    .end local v7    # "source":I
    :cond_3
    iget-object v7, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v7, v7, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v7}, Lokio/Buffer;->size()J

    move-result-wide v7

    const/4 v11, 0x0

    sub-long v11, v9, v7

    .line 279
    .local v11, "bufferPos":J
    iget-wide v7, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    cmp-long v13, v7, v11

    if-gez v13, :cond_7

    .line 280
    const/4 v7, 0x2

    .line 281
    .restart local v7    # "source":I
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 289
    .end local v11    # "bufferPos":J
    :goto_1
    move-wide v8, v9

    .line 292
    .end local v9    # "upstreamPos":J
    .local v8, "upstreamPos":J
    const/4 v4, 0x2

    const-wide/16 v10, 0x20

    if-ne v7, v4, :cond_4

    .line 293
    iget-wide v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    sub-long v12, v8, v4

    invoke-static {v2, v3, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 294
    .local v4, "bytesToRead":J
    iget-object v14, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    iget-wide v12, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long v15, v12, v10

    move-object/from16 v17, p1

    move-wide/from16 v18, v4

    invoke-virtual/range {v14 .. v19}, Lokhttp3/internal/cache2/FileOperator;->read(JLokio/Buffer;J)V

    .line 295
    iget-wide v10, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    add-long v12, v10, v4

    iput-wide v12, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 296
    return-wide v4

    .line 302
    .end local v4    # "bytesToRead":J
    :cond_4
    const/4 v4, 0x0

    :try_start_1
    iget-object v12, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v12, v12, Lokhttp3/internal/cache2/Relay;->upstream:Lokio/Source;

    iget-object v13, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v13, v13, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    iget-object v14, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v14, v14, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    invoke-interface {v12, v13, v14, v15}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 305
    .local v12, "upstreamBytesRead":J
    cmp-long v14, v12, v5

    if-nez v14, :cond_5

    .line 306
    :try_start_2
    iget-object v10, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v10, v8, v9}, Lokhttp3/internal/cache2/Relay;->commit(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 307
    nop

    .line 332
    iget-object v10, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v10

    .line 333
    :try_start_3
    iget-object v11, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iput-object v4, v11, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    iget-object v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit v10

    .line 307
    return-wide v5

    .line 335
    :catchall_0
    move-exception v0

    move-object v4, v0

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 332
    .end local v12    # "upstreamBytesRead":J
    :catchall_1
    move-exception v0

    move-object v4, v0

    move/from16 v24, v7

    move-wide/from16 v22, v8

    goto/16 :goto_4

    .line 311
    .restart local v12    # "upstreamBytesRead":J
    :cond_5
    :try_start_4
    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 312
    .local v5, "bytesRead":J
    iget-object v14, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v14, v14, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    const-wide/16 v16, 0x0

    move-object/from16 v15, p1

    move-wide/from16 v18, v5

    invoke-virtual/range {v14 .. v19}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 313
    iget-wide v14, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    const/16 v16, 0x0

    add-long v10, v14, v5

    iput-wide v10, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 316
    iget-object v14, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->fileOperator:Lokhttp3/internal/cache2/FileOperator;

    const/4 v10, 0x0

    const-wide/16 v10, 0x20

    add-long v15, v8, v10

    iget-object v10, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v10, v10, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    .line 317
    invoke-virtual {v10}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v17

    .line 316
    move-wide/from16 v18, v12

    invoke-virtual/range {v14 .. v19}, Lokhttp3/internal/cache2/FileOperator;->write(JLokio/Buffer;J)V

    .line 319
    iget-object v10, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 321
    :try_start_5
    iget-object v11, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v11, v11, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    iget-object v14, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v14, v14, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Lokio/Buffer;

    invoke-virtual {v11, v14, v12, v13}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 322
    iget-object v11, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v11, v11, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v11}, Lokio/Buffer;->size()J

    move-result-wide v14

    iget-object v11, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-wide/from16 v20, v5

    :try_start_6
    iget-wide v4, v11, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    .line 322
    .end local v5    # "bytesRead":J
    .local v20, "bytesRead":J
    cmp-long v6, v14, v4

    if-lez v6, :cond_6

    .line 323
    iget-object v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v4, v4, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v5, v5, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    iget-object v11, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v14, v11, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const/4 v11, 0x0

    move/from16 v24, v7

    move-wide/from16 v22, v8

    sub-long v7, v5, v14

    .line 323
    .end local v7    # "source":I
    .end local v8    # "upstreamPos":J
    .local v22, "upstreamPos":J
    .local v24, "source":I
    :try_start_7
    invoke-virtual {v4, v7, v8}, Lokio/Buffer;->skip(J)V

    goto :goto_2

    .line 327
    .end local v22    # "upstreamPos":J
    .end local v24    # "source":I
    .restart local v7    # "source":I
    .restart local v8    # "upstreamPos":J
    :cond_6
    move/from16 v24, v7

    move-wide/from16 v22, v8

    .line 327
    .end local v7    # "source":I
    .end local v8    # "upstreamPos":J
    .restart local v22    # "upstreamPos":J
    .restart local v24    # "source":I
    :goto_2
    iget-object v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-wide v5, v4, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    const/4 v7, 0x0

    add-long v7, v5, v12

    iput-wide v7, v4, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    .line 328
    monitor-exit v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 330
    nop

    .line 332
    iget-object v4, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v4

    .line 333
    :try_start_8
    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v6, 0x0

    iput-object v6, v5, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit v4

    .line 330
    return-wide v20

    .line 335
    :catchall_2
    move-exception v0

    move-object v5, v0

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v5

    .line 328
    .end local v22    # "upstreamPos":J
    .end local v24    # "source":I
    .restart local v7    # "source":I
    .restart local v8    # "upstreamPos":J
    :catchall_3
    move-exception v0

    move/from16 v24, v7

    move-wide/from16 v22, v8

    move-object v4, v0

    .line 328
    .end local v7    # "source":I
    .end local v8    # "upstreamPos":J
    .restart local v22    # "upstreamPos":J
    .restart local v24    # "source":I
    goto :goto_3

    .line 328
    .end local v20    # "bytesRead":J
    .end local v22    # "upstreamPos":J
    .end local v24    # "source":I
    .restart local v5    # "bytesRead":J
    .restart local v7    # "source":I
    .restart local v8    # "upstreamPos":J
    :catchall_4
    move-exception v0

    move-wide/from16 v20, v5

    move/from16 v24, v7

    move-wide/from16 v22, v8

    move-object v4, v0

    .line 328
    .end local v5    # "bytesRead":J
    .end local v7    # "source":I
    .end local v8    # "upstreamPos":J
    .restart local v20    # "bytesRead":J
    .restart local v22    # "upstreamPos":J
    .restart local v24    # "source":I
    :goto_3
    :try_start_9
    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    throw v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 332
    .end local v12    # "upstreamBytesRead":J
    .end local v20    # "bytesRead":J
    :catchall_5
    move-exception v0

    move-object v4, v0

    goto :goto_4

    .line 328
    .restart local v12    # "upstreamBytesRead":J
    .restart local v20    # "bytesRead":J
    :catchall_6
    move-exception v0

    move-object v4, v0

    goto :goto_3

    .line 332
    .end local v12    # "upstreamBytesRead":J
    .end local v20    # "bytesRead":J
    .end local v22    # "upstreamPos":J
    .end local v24    # "source":I
    .restart local v7    # "source":I
    .restart local v8    # "upstreamPos":J
    :catchall_7
    move-exception v0

    move/from16 v24, v7

    move-wide/from16 v22, v8

    move-object v4, v0

    .line 332
    .end local v7    # "source":I
    .end local v8    # "upstreamPos":J
    .restart local v22    # "upstreamPos":J
    .restart local v24    # "source":I
    :goto_4
    iget-object v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    monitor-enter v5

    .line 333
    :try_start_b
    iget-object v6, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    const/4 v7, 0x0

    iput-object v7, v6, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    .line 334
    iget-object v6, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 335
    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    throw v4

    :catchall_8
    move-exception v0

    move-object v4, v0

    :try_start_c
    monitor-exit v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    throw v4

    .line 285
    .end local v22    # "upstreamPos":J
    .end local v24    # "source":I
    .restart local v9    # "upstreamPos":J
    .restart local v11    # "bufferPos":J
    :cond_7
    :try_start_d
    iget-wide v5, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    const/4 v7, 0x0

    sub-long v7, v9, v5

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 286
    .local v5, "bytesToRead":J
    iget-object v7, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->this$0:Lokhttp3/internal/cache2/Relay;

    iget-object v13, v7, Lokhttp3/internal/cache2/Relay;->buffer:Lokio/Buffer;

    iget-wide v7, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    const/4 v14, 0x0

    sub-long v15, v7, v11

    move-object/from16 v14, p1

    move-wide/from16 v17, v5

    invoke-virtual/range {v13 .. v18}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 287
    iget-wide v7, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    const/4 v13, 0x0

    add-long v13, v7, v5

    iput-wide v13, v1, Lokhttp3/internal/cache2/Relay$RelaySource;->sourcePos:J

    .line 288
    monitor-exit v4

    return-wide v5

    .line 289
    .end local v5    # "bytesToRead":J
    .end local v9    # "upstreamPos":J
    .end local v11    # "bufferPos":J
    :catchall_9
    move-exception v0

    move-object v5, v0

    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    throw v5
.end method

.method public timeout()Lokio/Timeout;
    .locals 1

    .line 340
    iget-object v0, p0, Lokhttp3/internal/cache2/Relay$RelaySource;->timeout:Lokio/Timeout;

    return-object v0
.end method
