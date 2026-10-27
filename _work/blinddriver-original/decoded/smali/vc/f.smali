.class public final Lvc/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lvc/c;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Lu9/t;

.field public final c:Lp2/x;

.field public final d:Lsc/j;

.field public final e:Landroid/content/SharedPreferences;

.field public final f:Lx9/l0;

.field public final g:Lx9/l0;

.field public h:Lu9/j1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lvc/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lvc/f;->Companion:Lvc/c;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lu9/t;Lp2/x;Lsc/j;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvc/f;->a:Landroid/app/Application;

    iput-object p2, p0, Lvc/f;->b:Lu9/t;

    iput-object p3, p0, Lvc/f;->c:Lp2/x;

    iput-object p4, p0, Lvc/f;->d:Lsc/j;

    const-string p2, "byd_bridge"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lvc/f;->e:Landroid/content/SharedPreferences;

    new-instance p1, Lvc/b;

    sget-object p2, Lvc/f;->Companion:Lvc/c;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lvc/c;->a()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lvc/a;->m:Lvc/a;

    goto :goto_0

    :cond_0
    sget-object p2, Lvc/a;->l:Lvc/a;

    :goto_0
    const/4 p3, 0x0

    const/4 p4, 0x6

    invoke-direct {p1, p2, p3, p4}, Lvc/b;-><init>(Lvc/a;Ljava/lang/Integer;I)V

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lvc/f;->f:Lx9/l0;

    iput-object p1, p0, Lvc/f;->g:Lx9/l0;

    return-void
.end method

.method public static final a(Lvc/f;La9/c;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Lvc/d;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lvc/d;

    iget v3, v2, Lvc/d;->q:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lvc/d;->q:I

    goto :goto_0

    :cond_0
    new-instance v2, Lvc/d;

    invoke-direct {v2, v1, v0}, Lvc/d;-><init>(Lvc/f;La9/c;)V

    :goto_0
    iget-object v0, v2, Lvc/d;->o:Ljava/lang/Object;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v2, Lvc/d;->q:I

    const/4 v7, 0x5

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v4, :cond_5

    if-eq v4, v12, :cond_4

    if-eq v4, v10, :cond_3

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v7, :cond_1

    iget-wide v14, v2, Lvc/d;->m:J

    iget v4, v2, Lvc/d;->l:I

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    move v9, v7

    move v6, v8

    const-wide/16 v16, 0x2710

    goto/16 :goto_e

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v14, v2, Lvc/d;->m:J

    iget v4, v2, Lvc/d;->l:I

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    move v6, v8

    const-wide/16 v16, 0x2710

    goto/16 :goto_d

    :cond_3
    iget-wide v14, v2, Lvc/d;->m:J

    iget v4, v2, Lvc/d;->l:I

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    const-wide/16 v16, 0x2710

    goto/16 :goto_8

    :cond_4
    iget-wide v14, v2, Lvc/d;->m:J

    iget v4, v2, Lvc/d;->l:I

    const-wide/16 v16, 0x2710

    iget-object v5, v2, Lvc/d;->n:Ljava/net/Socket;

    :try_start_0
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_a

    :cond_5
    const-wide/16 v16, 0x2710

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    move-wide v14, v4

    move v4, v11

    :goto_1
    invoke-interface {v2}, Ly8/c;->getContext()Ly8/h;

    move-result-object v0

    invoke-static {v0}, Lu9/v;->s(Ly8/h;)Z

    move-result v0

    sget-object v5, Lt8/z;->a:Lt8/z;

    if-eqz v0, :cond_f

    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0}, Ljava/net/Socket;-><init>()V

    :try_start_1
    new-instance v6, Ljava/net/InetSocketAddress;

    const-string v7, "127.0.0.1"

    const v8, 0x9543

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/16 v7, 0x1f4

    invoke-virtual {v0, v6, v7}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    const/16 v6, 0x5dc

    invoke-virtual {v0, v6}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v6, Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7, v11}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {v1}, Lvc/f;->b()Ljava/lang/String;

    move-result-object v7

    const-string v8, "token"

    invoke-static {v7, v8}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "AUTH "

    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/PrintWriter;->flush()V

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    const-string v7, "HELLO 1 "

    invoke-static {v6, v7, v11}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-ne v6, v12, :cond_6

    move-object v6, v0

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    move-object v6, v13

    goto :goto_3

    :catchall_1
    :try_start_2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    goto :goto_2

    :goto_3
    if-eqz v6, :cond_a

    :try_start_3
    iput-object v6, v2, Lvc/d;->n:Ljava/net/Socket;

    iput v11, v2, Lvc/d;->l:I

    iput-wide v14, v2, Lvc/d;->m:J

    iput v12, v2, Lvc/d;->q:I

    invoke-virtual {v1, v6, v2}, Lvc/f;->g(Ljava/net/Socket;Lvc/d;)Lt8/z;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-ne v5, v3, :cond_7

    goto/16 :goto_f

    :cond_7
    move-object v5, v6

    move v4, v11

    :goto_4
    :try_start_4
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v5, v6

    move v4, v11

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v5, v6

    goto :goto_a

    :goto_5
    :try_start_5
    iget-object v6, v1, Lvc/f;->d:Lsc/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, ""

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v1, v0

    goto :goto_b

    :cond_8
    :goto_6
    const/16 v8, 0x32

    invoke-static {v8, v0}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "byd_stream_end "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ":"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lsc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_4

    :goto_7
    iget-object v0, v1, Lvc/f;->f:Lx9/l0;

    new-instance v5, Lvc/b;

    sget-object v6, Lvc/a;->q:Lvc/a;

    const/4 v7, 0x6

    invoke-direct {v5, v6, v13, v7}, Lvc/b;-><init>(Lvc/a;Ljava/lang/Integer;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v13, v5}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput-object v13, v2, Lvc/d;->n:Ljava/net/Socket;

    iput v4, v2, Lvc/d;->l:I

    iput-wide v14, v2, Lvc/d;->m:J

    iput v10, v2, Lvc/d;->q:I

    const-wide/16 v5, 0x3e8

    invoke-static {v5, v6, v2}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    goto/16 :goto_f

    :cond_9
    :goto_8
    const/4 v7, 0x5

    const/4 v8, 0x4

    :goto_9
    const/4 v11, 0x0

    goto/16 :goto_1

    :goto_a
    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :goto_b
    :try_start_7
    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_c

    :catchall_6
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_c
    throw v1

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v14

    cmp-long v0, v5, v16

    if-gez v0, :cond_b

    iput-object v13, v2, Lvc/d;->n:Ljava/net/Socket;

    iput v4, v2, Lvc/d;->l:I

    iput-wide v14, v2, Lvc/d;->m:J

    iput v9, v2, Lvc/d;->q:I

    const-wide/16 v5, 0x1f4

    invoke-static {v5, v6, v2}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_9

    goto :goto_f

    :cond_b
    iput-object v13, v2, Lvc/d;->n:Ljava/net/Socket;

    iput v4, v2, Lvc/d;->l:I

    iput-wide v14, v2, Lvc/d;->m:J

    const/4 v6, 0x4

    iput v6, v2, Lvc/d;->q:I

    invoke-virtual {v1, v2}, Lvc/f;->e(La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_c

    goto :goto_f

    :cond_c
    :goto_d
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move v8, v6

    const/4 v4, 0x0

    const/4 v7, 0x5

    goto :goto_9

    :cond_d
    add-int/2addr v4, v12

    int-to-long v7, v4

    mul-long v7, v7, v16

    const-wide/32 v9, 0xea60

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    iput-object v13, v2, Lvc/d;->n:Ljava/net/Socket;

    iput v4, v2, Lvc/d;->l:I

    iput-wide v14, v2, Lvc/d;->m:J

    const/4 v9, 0x5

    iput v9, v2, Lvc/d;->q:I

    invoke-static {v7, v8, v2}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_e

    goto :goto_f

    :cond_e
    :goto_e
    move v8, v6

    move v7, v9

    const/4 v9, 0x3

    const/4 v10, 0x2

    goto :goto_9

    :cond_f
    move-object v3, v5

    :goto_f
    return-object v3
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    iget-object p0, p0, Lvc/f;->e:Landroid/content/SharedPreferences;

    const-string v1, "token"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const/16 v0, 0xc

    new-array v0, v0, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v5, v4, :cond_1

    aget-byte v7, v0, v5

    const/4 v8, 0x1

    add-int/2addr v6, v8

    if-le v6, v8, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_0
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    const-string v8, "%02x"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-object v0
.end method

.method public final c()Ldadb/AdbKeyPair;
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lvc/f;->a:Landroid/app/Application;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "byd_adb"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance p0, Ljava/io/File;

    const-string v1, "adbkey"

    invoke-direct {p0, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "adbkey.pub"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Ldadb/AdbKeyPair;->Companion:Ldadb/AdbKeyPair$Companion;

    invoke-virtual {v0, p0, v1}, Ldadb/AdbKeyPair$Companion;->generate(Ljava/io/File;Ljava/io/File;)V

    :cond_1
    sget-object v0, Ldadb/AdbKeyPair;->Companion:Ldadb/AdbKeyPair$Companion;

    invoke-virtual {v0, p0, v1}, Ldadb/AdbKeyPair$Companion;->read(Ljava/io/File;Ljava/io/File;)Ldadb/AdbKeyPair;

    move-result-object p0

    return-object p0
.end method

.method public final d()V
    .locals 5

    sget-object v0, Lvc/f;->Companion:Lvc/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lvc/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "enabled"

    const/4 v1, 0x0

    iget-object v2, p0, Lvc/f;->e:Landroid/content/SharedPreferences;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvc/f;->h:Lu9/j1;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lu9/c1;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lu9/e0;->a:Lba/e;

    sget-object v0, Lba/d;->n:Lba/d;

    new-instance v1, Lad/w;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    const/4 v2, 0x2

    iget-object v4, p0, Lvc/f;->b:Lu9/t;

    invoke-static {v4, v0, v3, v1, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v0

    iput-object v0, p0, Lvc/f;->h:Lu9/j1;

    :cond_1
    :goto_0
    return-void
.end method

.method public final e(La9/c;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "byd_adb_error "

    const-string v3, "adb: "

    const-string v4, "byd_helper_start exit="

    instance-of v5, v0, Lvc/e;

    if-eqz v5, :cond_0

    move-object v5, v0

    check-cast v5, Lvc/e;

    iget v6, v5, Lvc/e;->p:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Lvc/e;->p:I

    goto :goto_0

    :cond_0
    new-instance v5, Lvc/e;

    invoke-direct {v5, v1, v0}, Lvc/e;-><init>(Lvc/f;La9/c;)V

    :goto_0
    iget-object v0, v5, Lvc/e;->n:Ljava/lang/Object;

    sget-object v6, Lz8/a;->l:Lz8/a;

    iget v7, v5, Lvc/e;->p:I

    iget-object v8, v1, Lvc/f;->d:Lsc/j;

    iget-object v9, v1, Lvc/f;->f:Lx9/l0;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v7, :cond_2

    if-ne v7, v10, :cond_1

    iget-object v6, v5, Lvc/e;->m:Ldadb/Dadb;

    iget-object v5, v5, Lvc/e;->l:Lj9/y;

    :try_start_0
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_9

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    new-instance v0, Lvc/b;

    sget-object v7, Lvc/a;->o:Lvc/a;

    const-string v12, "\u041f\u0456\u0434\u0442\u0432\u0435\u0440\u0434\u044c\u0442\u0435 \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0456 \u043c\u0430\u0433\u043d\u0456\u0442\u043e\u043b\u0438 \u00ab\u0414\u043e\u0437\u0432\u043e\u043b\u0438\u0442\u0438 \u043d\u0430\u043b\u0430\u0433\u043e\u0434\u0436\u0435\u043d\u043d\u044f\u00bb"

    invoke-direct {v0, v7, v11, v12}, Lvc/b;-><init>(Lvc/a;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v11, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v7, Lj9/y;

    invoke-direct {v7}, Lj9/y;-><init>()V

    :try_start_1
    sget-object v12, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    const-string v13, "127.0.0.1"

    invoke-virtual {v1}, Lvc/f;->c()Ldadb/AdbKeyPair;

    move-result-object v15

    const/16 v19, 0x38

    const/16 v20, 0x0

    const/16 v14, 0x15b3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v20}, Ldadb/Dadb$Companion;->create$default(Ldadb/Dadb$Companion;Ljava/lang/String;ILdadb/AdbKeyPair;IIZILjava/lang/Object;)Ldadb/Dadb;

    move-result-object v0

    iput-object v0, v7, Lj9/y;->m:Ljava/lang/Object;

    new-instance v12, Lp/b;

    const/16 v13, 0xc

    invoke-direct {v12, v0, v1, v11, v13}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object v7, v5, Lvc/e;->l:Lj9/y;

    iput-object v0, v5, Lvc/e;->m:Ldadb/Dadb;

    iput v10, v5, Lvc/e;->p:I

    const-wide/32 v13, 0x15f90

    invoke-static {v13, v14, v12, v5}, Lu9/v;->A(JLi9/e;La9/c;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-ne v5, v6, :cond_3

    return-object v6

    :cond_3
    move-object v6, v0

    move-object v0, v5

    move-object v5, v7

    :goto_1
    :try_start_2
    check-cast v0, Ldadb/AdbShellResponse;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ldadb/AdbShellResponse;->getAllOutput()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, La/a;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    new-instance v0, Lvc/b;

    sget-object v12, Lvc/a;->p:Lvc/a;

    const/4 v13, 0x6

    invoke-direct {v0, v12, v11, v13}, Lvc/b;-><init>(Lvc/a;Ljava/lang/Integer;I)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v11, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v0, "pkill -f \'ua.nav.byd.BydHelperMain[K]t\'"

    invoke-interface {v6, v0}, Ldadb/Dadb;->shell(Ljava/lang/String;)Ldadb/AdbShellResponse;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :goto_2
    invoke-virtual {v1}, Lvc/f;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "token"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v12, "CLASSPATH="

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " nohup app_process /system/bin ua.nav.byd.BydHelperMainKt 38211 "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " > /data/local/tmp/nav_byd_helper.log 2>&1 &"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ldadb/Dadb;->shell(Ljava/lang/String;)Ldadb/AdbShellResponse;

    move-result-object v0

    invoke-virtual {v0}, Ldadb/AdbShellResponse;->getExitCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lsc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    iget-object v0, v5, Lj9/y;->m:Ljava/lang/Object;

    check-cast v0, Ldadb/Dadb;

    if-eqz v0, :cond_c

    invoke-static {v0}, Lr0/i;->o(Ldadb/Dadb;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/16 :goto_8

    :catchall_2
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    goto/16 :goto_8

    :cond_4
    :try_start_6
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u043d\u0435 \u0437\u043d\u0430\u0439\u0434\u0435\u043d\u043e \u0448\u043b\u044f\u0445 \u0437\u0430\u0441\u0442\u043e\u0441\u0443\u043d\u043a\u0443"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u043d\u0435\u043c\u0430\u0454 \u043f\u0456\u0434\u0442\u0432\u0435\u0440\u0434\u0436\u0435\u043d\u043d\u044f \u043d\u0430 \u0435\u043a\u0440\u0430\u043d\u0456"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_3
    move-exception v0

    move-object v5, v7

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v5, v7

    goto/16 :goto_9

    :goto_3
    :try_start_7
    const-string v1, "BydSpeedBridge"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    const-string v4, ""

    if-nez v3, :cond_6

    move-object v3, v4

    :cond_6
    const/16 v6, 0x50

    :try_start_8
    invoke-static {v6, v3}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lsc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v1, v0, Ljava/net/ConnectException;

    if-nez v1, :cond_a

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/net/ConnectException;

    if-nez v1, :cond_a

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    move-object v1, v4

    :cond_7
    const-string v2, "refused"

    invoke-static {v1, v2, v10}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_5

    :cond_8
    new-instance v1, Lvc/b;

    sget-object v2, Lvc/a;->s:Lvc/a;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_4

    :cond_9
    move-object v4, v0

    :goto_4
    invoke-static {v6, v4}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v11, v0}, Lvc/b;-><init>(Lvc/a;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto :goto_a

    :cond_a
    :goto_5
    new-instance v1, Lvc/b;

    sget-object v0, Lvc/a;->n:Lvc/a;

    const-string v2, "\u041d\u0430\u043b\u0430\u0433\u043e\u0434\u0436\u0435\u043d\u043d\u044f ADB \u043f\u043e \u043c\u0435\u0440\u0435\u0436\u0456 (\u043f\u043e\u0440\u0442 5555) \u0432\u0438\u043c\u043a\u043d\u0435\u043d\u0435"

    invoke-direct {v1, v0, v11, v2}, Lvc/b;-><init>(Lvc/a;Ljava/lang/Integer;Ljava/lang/String;)V

    :goto_6
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v11, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    iget-object v0, v5, Lj9/y;->m:Ljava/lang/Object;

    check-cast v0, Ldadb/Dadb;

    if-eqz v0, :cond_b

    invoke-static {v0}, Lr0/i;->o(Ldadb/Dadb;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_b
    :goto_7
    const/4 v10, 0x0

    :cond_c
    :goto_8
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :goto_9
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :goto_a
    :try_start_b
    iget-object v0, v5, Lj9/y;->m:Ljava/lang/Object;

    check-cast v0, Ldadb/Dadb;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lr0/i;->o(Ldadb/Dadb;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_b

    :catchall_6
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_d
    :goto_b
    throw v1
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lvc/f;->h:Lu9/j1;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v1, p0, Lvc/f;->h:Lu9/j1;

    iget-object v0, p0, Lvc/f;->f:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvc/b;

    iget-object v2, v2, Lvc/b;->a:Lvc/a;

    sget-object v3, Lvc/a;->m:Lvc/a;

    if-eq v2, v3, :cond_1

    const-string v2, "enabled"

    const/4 v3, 0x0

    iget-object p0, p0, Lvc/f;->e:Landroid/content/SharedPreferences;

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lvc/b;

    const/4 v2, 0x7

    invoke-direct {p0, v1, v1, v2}, Lvc/b;-><init>(Lvc/a;Ljava/lang/Integer;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1, p0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final g(Ljava/net/Socket;Lvc/d;)Lt8/z;
    .locals 18

    move-object/from16 v0, p0

    const/16 v1, 0xbb8

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const-string v2, "byd_connected"

    iget-object v3, v0, Lvc/f;->d:Lsc/j;

    invoke-virtual {v3, v2}, Lsc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v4, 0x0

    :goto_0
    invoke-interface/range {p2 .. p2}, Ly8/c;->getContext()Ly8/h;

    move-result-object v2

    invoke-static {v2}, Lu9/v;->s(Ly8/h;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-static {v2}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    if-eqz v2, :cond_6

    const/4 v8, 0x1

    new-array v9, v8, [C

    const/16 v10, 0x20

    const/4 v11, 0x0

    aput-char v10, v9, v11

    invoke-static {v2, v9}, Lr9/k;->q0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x6

    if-ne v9, v10, :cond_6

    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "S"

    invoke-static {v9, v10}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_3

    :cond_1
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lr9/r;->V(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v8, 0x2

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v8

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    goto :goto_1

    :cond_2
    move-wide v8, v12

    :goto_1
    const/4 v14, 0x3

    invoke-interface {v2, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v14

    if-eqz v14, :cond_3

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    :cond_3
    move-wide v14, v12

    move-wide v12, v8

    new-instance v9, Lvc/g;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v8}, Lr9/r;->U(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    const/16 v16, -0x1

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_2

    :cond_4
    move/from16 v8, v16

    :goto_2
    const/4 v7, 0x5

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lr9/r;->U(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    :cond_5
    move/from16 v17, v16

    move/from16 v16, v8

    invoke-direct/range {v9 .. v17}, Lvc/g;-><init>(JDDII)V

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v9, 0x0

    :goto_4
    if-nez v9, :cond_7

    goto/16 :goto_7

    :cond_7
    iget-wide v7, v9, Lvc/g;->a:J

    iget-wide v10, v9, Lvc/g;->b:D

    iget-wide v12, v9, Lvc/g;->c:D

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const-wide v14, 0x4072c00000000000L    # 300.0

    const-wide/16 v16, 0x0

    if-nez v2, :cond_8

    cmpl-double v2, v10, v16

    if-ltz v2, :cond_8

    cmpg-double v2, v10, v14

    if-gtz v2, :cond_8

    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v2, v14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_5

    :cond_8
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_9

    cmpl-double v2, v12, v16

    if-ltz v2, :cond_9

    cmpg-double v2, v12, v14

    if-gtz v2, :cond_9

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v14

    long-to-int v2, v14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    :goto_5
    iget-object v14, v0, Lvc/f;->f:Lx9/l0;

    if-eqz v2, :cond_a

    new-instance v15, Ljava/lang/Long;

    invoke-direct {v15, v7, v8}, Ljava/lang/Long;-><init>(J)V

    iget-object v6, v0, Lvc/f;->c:Lp2/x;

    invoke-virtual {v6, v2, v15}, Lp2/x;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lvc/b;

    sget-object v15, Lvc/a;->r:Lvc/a;

    const/4 v0, 0x4

    invoke-direct {v6, v15, v2, v0}, Lvc/b;-><init>(Lvc/a;Ljava/lang/Integer;I)V

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {v14, v0, v6}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    const/4 v0, 0x0

    new-instance v2, Lvc/b;

    sget-object v6, Lvc/a;->s:Lvc/a;

    const-string v15, "\u043c\u0430\u0448\u0438\u043d\u0430 \u043d\u0435 \u0432\u0456\u0434\u0434\u0430\u0454 \u0448\u0432\u0438\u0434\u043a\u0456\u0441\u0442\u044c"

    invoke-direct {v2, v6, v0, v15}, Lvc/b;-><init>(Lvc/a;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14, v0, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_6
    sub-long v14, v7, v4

    const-wide/16 v16, 0x7d0

    cmp-long v0, v14, v16

    if-ltz v0, :cond_b

    iget v0, v9, Lvc/g;->d:I

    iget v2, v9, Lvc/g;->e:I

    const-string v4, "byd_raw speed="

    const-string v5, " gw="

    invoke-static {v10, v11, v4, v5}, La6/q;->l(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " gear="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " brake="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lsc/j;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    move-wide v4, v7

    goto/16 :goto_0

    :cond_b
    :goto_7
    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_c
    :goto_8
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
