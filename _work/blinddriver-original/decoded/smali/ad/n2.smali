.class public final synthetic Lad/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:Lad/r2;

.field public final synthetic m:Ljava/lang/String;

.field public final synthetic n:Ljava/lang/String;

.field public final synthetic o:I

.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Lad/r2;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad/n2;->l:Lad/r2;

    iput-object p2, p0, Lad/n2;->m:Ljava/lang/String;

    iput-object p3, p0, Lad/n2;->n:Ljava/lang/String;

    iput p4, p0, Lad/n2;->o:I

    iput p5, p0, Lad/n2;->p:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lad/n2;->l:Lad/r2;

    iget-object v2, v0, Lad/n2;->m:Ljava/lang/String;

    iget-object v3, v0, Lad/n2;->n:Ljava/lang/String;

    iget v4, v0, Lad/n2;->o:I

    iget v0, v0, Lad/n2;->p:I

    const-string v5, " -> "

    const-string v6, "%.2f"

    const-string v7, "%.1f"

    const-string v8, "Voice"

    const-string v9, "boost level="

    const-string v10, "synth done="

    const-string v11, "synthesizeToFile r="

    new-instance v12, Ljava/io/File;

    iget-object v13, v1, Lad/r2;->i:Ljava/io/File;

    const-string v14, "voice_"

    const-string v15, ".wav"

    invoke-static {v14, v3, v15}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    iget-object v14, v1, Lad/r2;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    if-eq v4, v14, :cond_0

    :goto_0
    :try_start_1
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_1
    invoke-virtual {v1, v3}, Lad/r2;->h(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_0
    :try_start_2
    iget-object v14, v1, Lad/r2;->b:Landroid/speech/tts/TextToSpeech;

    if-nez v14, :cond_1

    goto :goto_0

    :cond_1
    new-instance v15, Ljava/util/concurrent/CountDownLatch;

    const/4 v13, 0x1

    invoke-direct {v15, v13}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v13, v1, Lad/r2;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v13, v3, v15}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v14, v2, v13, v12, v3}, Landroid/speech/tts/TextToSpeech;->synthesizeToFile(Ljava/lang/CharSequence;Landroid/os/Bundle;Ljava/io/File;Ljava/lang/String;)I

    move-result v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-eqz v13, :cond_2

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lad/r2;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lad/r2;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_2
    if-nez v2, :cond_c

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object/from16 v23, v12

    goto/16 :goto_12

    :catch_0
    move-exception v0

    move-object/from16 v23, v12

    :goto_3
    const/4 v13, 0x0

    goto/16 :goto_f

    :cond_2
    :try_start_5
    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v13, 0xa

    invoke-virtual {v15, v13, v14, v11}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v11

    iget-object v13, v1, Lad/r2;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v13, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v13, :cond_3

    :try_start_6
    invoke-static {v12}, Lf9/j;->x(Ljava/io/File;)[B

    move-result-object v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :cond_3
    const/4 v13, 0x0

    :try_start_7
    new-array v14, v13, [B
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    move-object v13, v14

    :goto_4
    :try_start_8
    invoke-static {v13}, Lad/t2;->d([B)Lad/s2;

    move-result-object v14

    array-length v15, v13

    invoke-static {v13}, Lu8/l;->F0([B)Ljava/util/List;

    move-result-object v17

    const-string v18, " "

    new-instance v13, Lad/b2;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object/from16 v23, v12

    const/4 v12, 0x1

    :try_start_9
    invoke-direct {v13, v12}, Lad/b2;-><init>(I)V

    const/16 v22, 0x1e

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v21, v13

    invoke-static/range {v17 .. v22}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v12

    if-eqz v14, :cond_4

    const/4 v13, 0x1

    :goto_5
    move-object/from16 v17, v5

    goto :goto_6

    :cond_4
    const/4 v13, 0x0

    goto :goto_5

    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " file="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " B head="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " wav="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v14, :cond_5

    invoke-virtual {v1, v2, v3}, Lad/r2;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_7
    if-nez v2, :cond_c

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    :goto_8
    move-object v2, v0

    goto/16 :goto_12

    :catch_1
    move-exception v0

    goto/16 :goto_3

    :cond_5
    :try_start_b
    iget-object v5, v1, Lad/r2;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eq v4, v5, :cond_6

    :goto_9
    :try_start_c
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_1

    :cond_6
    :try_start_d
    iget-object v5, v14, Lad/s2;->o:Ljava/lang/Object;

    check-cast v5, [S

    sget-object v10, Lad/t2;->a:[D

    const/4 v11, 0x3

    const/4 v12, 0x1

    invoke-static {v0, v12, v11}, Lg6/c1;->f(III)I

    move-result v11

    aget-wide v10, v10, v11

    iget v12, v14, Lad/s2;->m:I

    invoke-static {v5, v10, v11, v12}, Lad/t2;->b([SDI)[S

    move-result-object v5

    iget v10, v14, Lad/s2;->m:I

    iget-object v11, v14, Lad/s2;->o:Ljava/lang/Object;

    check-cast v11, [S

    invoke-static {v11}, Lad/t2;->g([S)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v7, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v5}, Lad/t2;->g([S)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v12, v14, Lad/s2;->o:Ljava/lang/Object;

    check-cast v12, [S

    invoke-static {v12}, Lad/t2;->e([S)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v6, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v5}, Lad/t2;->e([S)D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v15, v13}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    invoke-static {v6, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " rate="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " rms "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " dBFS, peak "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v1, Lad/r2;->e:F

    float-to-double v6, v0

    const-wide/16 v17, 0x0

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    move-wide v15, v6

    invoke-static/range {v15 .. v20}, Lg6/c1;->d(DDD)D

    move-result-wide v6

    const-wide v9, 0x3feff7ced916872bL    # 0.999

    cmpl-double v0, v6, v9

    if-ltz v0, :cond_7

    goto :goto_b

    :cond_7
    array-length v0, v5

    new-array v9, v0, [S

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v0, :cond_8

    aget-short v11, v5, v10

    int-to-double v11, v11

    mul-double/2addr v11, v6

    double-to-int v11, v11

    int-to-short v11, v11

    aput-short v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_8
    move-object v5, v9

    :goto_b
    iget-boolean v0, v1, Lad/r2;->n:Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    if-eqz v0, :cond_9

    const/16 v0, 0x15e

    move v13, v0

    :goto_c
    const/4 v6, 0x0

    goto :goto_d

    :cond_9
    const/4 v13, 0x0

    goto :goto_c

    :goto_d
    :try_start_e
    iput-boolean v6, v1, Lad/r2;->n:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :try_start_f
    iget v0, v14, Lad/s2;->m:I

    iget v6, v14, Lad/s2;->n:I

    if-gtz v13, :cond_a

    const/4 v13, 0x0

    goto :goto_e

    :cond_a
    mul-int/2addr v0, v6

    mul-int/2addr v0, v13

    div-int/lit16 v0, v0, 0x3e8

    array-length v6, v5

    add-int/2addr v6, v0

    new-array v6, v6, [S

    array-length v7, v5
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    const/4 v13, 0x0

    :try_start_10
    invoke-static {v5, v13, v6, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v6

    :goto_e
    iget v0, v14, Lad/s2;->m:I

    iget v6, v14, Lad/s2;->n:I

    invoke-virtual {v1, v5, v0, v6, v4}, Lad/r2;->d([SIII)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto/16 :goto_9

    :catch_2
    move-exception v0

    goto :goto_f

    :catch_3
    move-exception v0

    move v13, v6

    goto :goto_f

    :catchall_5
    move-exception v0

    move-object/from16 v23, v12

    goto/16 :goto_8

    :catch_4
    move-exception v0

    move-object/from16 v23, v12

    :goto_f
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "boosted: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lad/r2;->k:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lad/r2;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne v4, v0, :cond_b

    invoke-virtual {v1, v2, v3}, Lad/r2;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :cond_b
    :try_start_12
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    goto :goto_10

    :catchall_6
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_10
    if-nez v13, :cond_c

    goto/16 :goto_1

    :cond_c
    :goto_11
    return-void

    :goto_12
    :try_start_13
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->delete()Z
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    goto :goto_13

    :catchall_7
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_13
    invoke-virtual {v1, v3}, Lad/r2;->h(Ljava/lang/String;)V

    throw v2
.end method
