.class public abstract Ly4/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(Ljava/lang/Throwable;)V
    .locals 1

    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/InterruptedException;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/ClassCircularityError;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/ClassFormatError;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/IncompatibleClassChangeError;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/BootstrapMethodError;

    if-nez v0, :cond_1

    instance-of v0, p0, Ljava/lang/VerifyError;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_3

    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    check-cast p0, Ljava/lang/Error;

    throw p0
.end method

.method public static B(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v1, ": "

    invoke-static {v0, v1, p0}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static C(Ljava/net/Socket;Ljava/lang/String;Lg5/s;Lg5/s;Lg5/s;Lg5/s;)V
    .locals 11

    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    if-eqz v0, :cond_0

    invoke-static {v0}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "AUTH "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/io/PrintWriter;

    invoke-virtual {p0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HELLO 1 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p2}, Lg5/s;->K()D

    move-result-wide v2

    invoke-virtual {p3}, Lg5/s;->K()D

    move-result-wide v4

    invoke-virtual {p4}, Lg5/s;->M()I

    move-result p0

    invoke-virtual/range {p5 .. p5}, Lg5/s;->M()I

    move-result v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    const-string v8, "NaN"

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    if-eqz v7, :cond_2

    move-object v2, v8

    goto :goto_2

    :cond_2
    mul-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v9

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    mul-double/2addr v4, v9

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-double v3, v3

    div-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v8

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "S "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->checkError()Z

    move-result p0

    if-eqz p0, :cond_4

    return-void

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x64

    cmp-long p0, v2, v0

    if-gez p0, :cond_1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto/16 :goto_1

    :cond_5
    const-string p0, "auth failed"

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public static D(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroidx/fragment/app/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Should never reach here"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string v2, ": "

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final E(J)J
    .locals 6

    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v1, v1

    int-to-float v1, v1

    const-wide v2, 0xffffffffL

    and-long/2addr p0, v2

    long-to-int p0, p0

    int-to-float p0, p0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v4, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    shl-long v0, v4, v0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static final F(Lm2/p;ILl2/g;)V
    .locals 9

    new-instance v0, Lt0/b;

    const/16 v1, 0x10

    new-array v1, v1, [Lm2/p;

    invoke-direct {v0, v1}, Lt0/b;-><init>([Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1}, Lm2/p;->i(ZZ)Ljava/util/List;

    move-result-object p0

    :goto_0
    iget v2, v0, Lt0/b;->n:I

    invoke-virtual {v0, v2, p0}, Lt0/b;->c(ILjava/util/List;)V

    :cond_0
    :goto_1
    iget p0, v0, Lt0/b;->n:I

    if-eqz p0, :cond_7

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm2/p;

    invoke-static {p0}, Lm2/s;->e(Lm2/p;)Z

    move-result v2

    iget-object v3, p0, Lm2/p;->d:Lm2/m;

    iget-object v4, v3, Lm2/m;->l:Lk/m0;

    if-nez v2, :cond_0

    sget-object v2, Lm2/t;->i:Lm2/w;

    invoke-virtual {v4, v2}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lm2/p;->d()Le2/h1;

    move-result-object v2

    if-eqz v2, :cond_6

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lc2/x;->f(Lc2/u;Z)Ll1/c;

    move-result-object v6

    invoke-static {v6}, Lwa/h;->t(Ll1/c;)Lb3/k;

    move-result-object v6

    iget v7, v6, Lb3/k;->a:I

    iget v8, v6, Lb3/k;->c:I

    if-ge v7, v8, :cond_0

    iget v7, v6, Lb3/k;->b:I

    iget v8, v6, Lb3/k;->d:I

    if-lt v7, v8, :cond_2

    goto :goto_1

    :cond_2
    sget-object v7, Lm2/l;->e:Lm2/w;

    iget-object v3, v3, Lm2/m;->l:Lk/m0;

    invoke-virtual {v3, v7}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v7, 0x0

    if-nez v3, :cond_3

    move-object v3, v7

    :cond_3
    check-cast v3, Li9/e;

    sget-object v8, Lm2/t;->v:Lm2/w;

    invoke-virtual {v4, v8}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    move-object v7, v4

    :goto_2
    check-cast v7, Lm2/i;

    if-eqz v3, :cond_5

    if-eqz v7, :cond_5

    iget-object v3, v7, Lm2/i;->b:Li9/a;

    invoke-interface {v3}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    add-int/2addr v5, p1

    new-instance v3, Ll2/h;

    invoke-direct {v3, p0, v5, v6, v2}, Ll2/h;-><init>(Lm2/p;ILb3/k;Le2/h1;)V

    invoke-virtual {p2, v3}, Ll2/g;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v5, p2}, Ly4/s;->F(Lm2/p;ILl2/g;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1, v1}, Lm2/p;->i(ZZ)Ljava/util/List;

    move-result-object p0

    goto/16 :goto_0

    :cond_6
    const-string p0, "Expected semantics node to have a coordinator."

    invoke-static {p0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0

    :cond_7
    return-void
.end method

.method public static final a(Lkotlinx/serialization/KSerializer;)Lha/c;
    .locals 1

    const-string v0, "elementSerializer"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lha/c;

    invoke-direct {v0, p0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public static final b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lr9/g;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lr9/g;

    invoke-direct {p1, p0, p2}, Lr9/g;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public static final c(Ly1/j0;)Z
    .locals 5

    iget-object p0, p0, Ly1/j0;->q:Ly1/k0;

    iget-object p0, p0, Ly1/k0;->D:Ly1/l;

    iget-object p0, p0, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ly1/u;

    iget-boolean v4, v4, Ly1/u;->d:Z

    if-eqz v4, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method

.method public static final d(Ly1/j0;Ly1/m;La9/a;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lr/t0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lr/t0;

    iget v1, v0, Lr/t0;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr/t0;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr/t0;

    invoke-direct {v0, p2}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p2, v0, Lr/t0;->n:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr/t0;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lr/t0;->m:Ly1/m;

    iget-object p1, v0, Lr/t0;->l:Ly1/j0;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    invoke-static {p0}, Ly4/s;->c(Ly1/j0;)Z

    move-result p2

    if-nez p2, :cond_5

    :goto_1
    iput-object p0, v0, Lr/t0;->l:Ly1/j0;

    iput-object p1, v0, Lr/t0;->m:Ly1/m;

    iput v3, v0, Lr/t0;->o:I

    invoke-virtual {p0, p1, v0}, Ly1/j0;->b(Ly1/m;La9/a;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_2
    check-cast p2, Ly1/l;

    iget-object p2, p2, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_5

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly1/u;

    iget-boolean v5, v5, Ly1/u;->d:Z

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public static final e(Ly1/x;Li9/e;Ly8/c;)Ljava/lang/Object;
    .locals 3

    invoke-interface {p2}, Ly8/c;->getContext()Ly8/h;

    move-result-object v0

    new-instance v1, Lb0/y1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lb0/y1;-><init>(Ly8/h;Li9/e;Ly8/c;)V

    check-cast p0, Ly1/k0;

    invoke-virtual {p0, v1, p2}, Ly1/k0;->M0(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public static final f(II)V
    .locals 3

    if-ltz p0, :cond_0

    if-ge p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {v1, p0, v2, p1}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final g(II)V
    .locals 3

    if-ltz p0, :cond_0

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index: "

    const-string v2, ", size: "

    invoke-static {v1, p0, v2, p1}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final h(III)V
    .locals 4

    const-string v0, "fromIndex: "

    if-ltz p0, :cond_1

    if-gt p1, p2, :cond_1

    if-gt p0, p1, :cond_0

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string v1, " > toIndex: "

    invoke-static {v0, p0, v1, p1}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, ", toIndex: "

    const-string v3, ", size: "

    invoke-static {v0, p0, v2, p1, v3}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final i(Lc5/o;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lc5/o;->m:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p2}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static j(Landroid/content/Context;)Lx3/p;
    .locals 12

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "Package manager required to locate emoji font provider"

    invoke-static {v0, v1}, Lpc/h;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "androidx.content.action.LOAD_EMOJI_FONT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v3, :cond_0

    iget-object v5, v3, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v5, :cond_0

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    if-nez v3, :cond_2

    :goto_1
    move-object v5, v4

    goto :goto_3

    :cond_2
    :try_start_0
    iget-object v6, v3, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v1, 0x40

    invoke-virtual {v0, v7, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v0

    :goto_2
    if-ge v2, v3, :cond_3

    aget-object v5, v0, v2

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    new-instance v5, Lo3/c;

    const-string v8, "emojicompat-emoji-font"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v5 .. v11}, Lo3/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "emoji2.text.DefaultEmojiConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :goto_3
    if-nez v5, :cond_4

    goto :goto_4

    :cond_4
    new-instance v4, Lx3/p;

    new-instance v0, Lx3/o;

    invoke-direct {v0, p0, v5}, Lx3/o;-><init>(Landroid/content/Context;Lo3/c;)V

    invoke-direct {v4, v0}, Lx3/p;-><init>(Lx3/g;)V

    :goto_4
    return-object v4
.end method

.method public static final k(Landroid/content/Context;Lx4/a;)Ly4/q;
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "context"

    invoke-static {v1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Li5/a;

    iget-object v0, v2, Lx4/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v3, v0}, Li5/a;-><init>(Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "context.applicationContext"

    invoke-static {v0, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "workTaskExecutor.serialTaskExecutor"

    iget-object v6, v3, Li5/a;->a:Lh5/h;

    invoke-static {v6, v5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v2, Lx4/a;->d:Lx4/j;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f040003

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    const-string v8, "clock"

    invoke-static {v5, v8}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_0

    new-instance v7, Lk4/m;

    invoke-direct {v7, v0, v9}, Lk4/m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-boolean v8, v7, Lk4/m;->i:Z

    goto :goto_0

    :cond_0
    const-string v7, "androidx.work.workdb"

    invoke-static {v7}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_28

    new-instance v10, Lk4/m;

    invoke-direct {v10, v0, v7}, Lk4/m;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v7, Lb/e0;

    invoke-direct {v7, v0}, Lb/e0;-><init>(Ljava/lang/Object;)V

    iput-object v7, v10, Lk4/m;->h:Lb/e0;

    move-object v7, v10

    :goto_0
    iput-object v6, v7, Lk4/m;->f:Ljava/util/concurrent/Executor;

    new-instance v6, Ly4/a;

    invoke-direct {v6, v5}, Ly4/a;-><init>(Lx4/j;)V

    iget-object v15, v7, Lk4/m;->c:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v5, v8, [Ll4/a;

    sget-object v6, Ly4/c;->h:Ly4/c;

    const/4 v10, 0x0

    aput-object v6, v5, v10

    invoke-virtual {v7, v5}, Lk4/m;->a([Ll4/a;)V

    new-instance v5, Ly4/f;

    const/4 v6, 0x2

    const/4 v11, 0x3

    invoke-direct {v5, v0, v6, v11}, Ly4/f;-><init>(Landroid/content/Context;II)V

    new-array v12, v8, [Ll4/a;

    aput-object v5, v12, v10

    invoke-virtual {v7, v12}, Lk4/m;->a([Ll4/a;)V

    new-array v5, v8, [Ll4/a;

    sget-object v12, Ly4/c;->i:Ly4/c;

    aput-object v12, v5, v10

    invoke-virtual {v7, v5}, Lk4/m;->a([Ll4/a;)V

    new-array v5, v8, [Ll4/a;

    sget-object v12, Ly4/c;->j:Ly4/c;

    aput-object v12, v5, v10

    invoke-virtual {v7, v5}, Lk4/m;->a([Ll4/a;)V

    new-instance v5, Ly4/f;

    const/4 v12, 0x5

    const/4 v13, 0x6

    invoke-direct {v5, v0, v12, v13}, Ly4/f;-><init>(Landroid/content/Context;II)V

    new-array v12, v8, [Ll4/a;

    aput-object v5, v12, v10

    invoke-virtual {v7, v12}, Lk4/m;->a([Ll4/a;)V

    new-array v5, v8, [Ll4/a;

    sget-object v12, Ly4/c;->k:Ly4/c;

    aput-object v12, v5, v10

    invoke-virtual {v7, v5}, Lk4/m;->a([Ll4/a;)V

    new-array v5, v8, [Ll4/a;

    sget-object v12, Ly4/c;->l:Ly4/c;

    aput-object v12, v5, v10

    invoke-virtual {v7, v5}, Lk4/m;->a([Ll4/a;)V

    new-array v5, v8, [Ll4/a;

    sget-object v12, Ly4/c;->m:Ly4/c;

    aput-object v12, v5, v10

    invoke-virtual {v7, v5}, Lk4/m;->a([Ll4/a;)V

    new-instance v5, Ly4/f;

    invoke-direct {v5, v0}, Ly4/f;-><init>(Landroid/content/Context;)V

    new-array v12, v8, [Ll4/a;

    aput-object v5, v12, v10

    invoke-virtual {v7, v12}, Lk4/m;->a([Ll4/a;)V

    new-instance v5, Ly4/f;

    const/16 v12, 0xa

    const/16 v13, 0xb

    invoke-direct {v5, v0, v12, v13}, Ly4/f;-><init>(Landroid/content/Context;II)V

    new-array v12, v8, [Ll4/a;

    aput-object v5, v12, v10

    invoke-virtual {v7, v12}, Lk4/m;->a([Ll4/a;)V

    new-array v5, v8, [Ll4/a;

    sget-object v12, Ly4/c;->d:Ly4/c;

    aput-object v12, v5, v10

    invoke-virtual {v7, v5}, Lk4/m;->a([Ll4/a;)V

    new-array v5, v8, [Ll4/a;

    sget-object v12, Ly4/c;->e:Ly4/c;

    aput-object v12, v5, v10

    invoke-virtual {v7, v5}, Lk4/m;->a([Ll4/a;)V

    new-array v5, v8, [Ll4/a;

    sget-object v12, Ly4/c;->f:Ly4/c;

    aput-object v12, v5, v10

    invoke-virtual {v7, v5}, Lk4/m;->a([Ll4/a;)V

    new-array v5, v8, [Ll4/a;

    sget-object v12, Ly4/c;->g:Ly4/c;

    aput-object v12, v5, v10

    invoke-virtual {v7, v5}, Lk4/m;->a([Ll4/a;)V

    new-instance v5, Ly4/f;

    const/16 v12, 0x15

    const/16 v13, 0x16

    invoke-direct {v5, v0, v12, v13}, Ly4/f;-><init>(Landroid/content/Context;II)V

    new-array v0, v8, [Ll4/a;

    aput-object v5, v0, v10

    invoke-virtual {v7, v0}, Lk4/m;->a([Ll4/a;)V

    iput-boolean v10, v7, Lk4/m;->k:Z

    iput-boolean v8, v7, Lk4/m;->l:Z

    iget-object v0, v7, Lk4/m;->f:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    iget-object v5, v7, Lk4/m;->g:Ljava/util/concurrent/Executor;

    if-nez v5, :cond_1

    sget-object v0, Lh/b;->q:Lh/a;

    iput-object v0, v7, Lk4/m;->g:Ljava/util/concurrent/Executor;

    iput-object v0, v7, Lk4/m;->f:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v5, v7, Lk4/m;->g:Ljava/util/concurrent/Executor;

    if-nez v5, :cond_2

    iput-object v0, v7, Lk4/m;->g:Ljava/util/concurrent/Executor;

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, v7, Lk4/m;->g:Ljava/util/concurrent/Executor;

    iput-object v0, v7, Lk4/m;->f:Ljava/util/concurrent/Executor;

    :cond_3
    :goto_1
    iget-object v0, v7, Lk4/m;->p:Ljava/util/HashSet;

    iget-object v5, v7, Lk4/m;->o:Ljava/util/LinkedHashSet;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: "

    invoke-static {v12, v0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    iget-object v0, v7, Lk4/m;->h:Lb/e0;

    if-nez v0, :cond_6

    new-instance v0, Lmb/q;

    const/16 v12, 0x13

    invoke-direct {v0, v12}, Lmb/q;-><init>(I)V

    :cond_6
    move-object v13, v0

    iget-wide v10, v7, Lk4/m;->m:J

    const-wide/16 v16, 0x0

    cmp-long v10, v10, v16

    const-string v11, "Required value was null."

    if-lez v10, :cond_8

    iget-object v0, v7, Lk4/m;->b:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create auto-closing database for an in-memory database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v10, Lk4/b;

    iget-boolean v14, v7, Lk4/m;->i:Z

    iget v0, v7, Lk4/m;->j:I

    if-eqz v0, :cond_27

    move-object v6, v11

    iget-object v11, v7, Lk4/m;->a:Landroid/content/Context;

    if-eq v0, v8, :cond_9

    goto :goto_4

    :cond_9
    const-string v0, "activity"

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v12, v0, Landroid/app/ActivityManager;

    if-eqz v12, :cond_a

    check-cast v0, Landroid/app/ActivityManager;

    goto :goto_3

    :cond_a
    move-object v0, v9

    :goto_3
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x3

    goto :goto_4

    :cond_b
    const/4 v0, 0x2

    :goto_4
    iget-object v12, v7, Lk4/m;->f:Ljava/util/concurrent/Executor;

    if-eqz v12, :cond_26

    iget-object v9, v7, Lk4/m;->g:Ljava/util/concurrent/Executor;

    if-eqz v9, :cond_25

    iget-boolean v6, v7, Lk4/m;->k:Z

    move/from16 v26, v8

    iget-boolean v8, v7, Lk4/m;->l:Z

    move-object/from16 v18, v12

    iget-object v12, v7, Lk4/m;->b:Ljava/lang/String;

    move/from16 v16, v14

    const/16 v19, 0x0

    iget-object v14, v7, Lk4/m;->n:Lia/z;

    move/from16 v20, v0

    iget-object v0, v7, Lk4/m;->d:Ljava/util/ArrayList;

    iget-object v7, v7, Lk4/m;->e:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v22, v5

    move-object/from16 v24, v7

    move/from16 v21, v8

    move/from16 v7, v19

    move/from16 v17, v20

    const/4 v0, 0x3

    move/from16 v20, v6

    move-object/from16 v19, v9

    invoke-direct/range {v10 .. v24}, Lk4/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lq4/a;Lia/z;Ljava/util/List;ZILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLjava/util/Set;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    const-class v8, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v8}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v9

    invoke-static {v9}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v9}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lj9/n;->d(Ljava/lang/Object;)V

    const-string v12, "fullPackage"

    invoke-static {v9, v12}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "this as java.lang.String).substring(startIndex)"

    invoke-static {v11, v12}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    const/16 v12, 0x5f

    const/16 v13, 0x2e

    invoke-static {v11, v13, v12}, Lr9/r;->P(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v11

    const-string v12, "_Impl"

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :try_start_0
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_d

    move-object v9, v11

    goto :goto_6

    :cond_d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_6
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    move/from16 v13, v26

    invoke-static {v9, v13, v12}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v9

    const-string v12, "null cannot be cast to non-null type java.lang.Class<T of androidx.room.Room.getGeneratedImplementation>"

    invoke-static {v9, v12}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual {v9, v12}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    check-cast v8, Landroidx/work/impl/WorkDatabase;

    iget-object v9, v8, Landroidx/work/impl/WorkDatabase;->d:Lk4/j;

    iget-object v9, v8, Landroidx/work/impl/WorkDatabase;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v10}, Landroidx/work/impl/WorkDatabase;->e(Lk4/b;)Lq4/b;

    move-result-object v11

    iput-object v11, v8, Landroidx/work/impl/WorkDatabase;->c:Lq4/b;

    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->i()Ljava/util/Set;

    move-result-object v11

    new-instance v12, Ljava/util/BitSet;

    invoke-direct {v12}, Ljava/util/BitSet;-><init>()V

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const/4 v15, -0x1

    if-eqz v13, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v16

    add-int/lit8 v16, v16, -0x1

    move/from16 v19, v7

    if-ltz v16, :cond_10

    :goto_8
    move/from16 v7, v16

    add-int/lit8 v16, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v15

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-virtual {v12, v7}, Ljava/util/BitSet;->set(I)V

    move v15, v7

    goto :goto_a

    :cond_e
    if-gez v16, :cond_f

    goto :goto_9

    :cond_f
    move/from16 v15, v18

    goto :goto_8

    :cond_10
    move/from16 v18, v15

    :goto_9
    move/from16 v15, v18

    :goto_a
    if-ltz v15, :cond_11

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v9, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v7, v19

    goto :goto_7

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A required auto migration spec ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") is missing in the database configuration."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    move/from16 v19, v7

    move/from16 v18, v15

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_15

    :goto_b
    add-int/lit8 v7, v6, -0x1

    invoke-virtual {v12, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_14

    if-gez v7, :cond_13

    goto :goto_c

    :cond_13
    move v6, v7

    goto :goto_b

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    :goto_c
    invoke-virtual {v8, v9}, Landroidx/work/impl/WorkDatabase;->g(Ljava/util/Map;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_16
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ll4/a;

    iget v9, v7, Ll4/a;->a:I

    iget v11, v7, Ll4/a;->b:I

    iget-object v12, v14, Lia/z;->a:Ljava/util/LinkedHashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    if-nez v9, :cond_17

    sget-object v9, Lu8/s;->l:Lu8/s;

    :cond_17
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_e

    :cond_18
    move/from16 v9, v19

    :goto_e
    if-nez v9, :cond_16

    filled-new-array {v7}, [Ll4/a;

    move-result-object v7

    invoke-virtual {v14, v7}, Lia/z;->a([Ll4/a;)V

    goto :goto_d

    :cond_19
    const-class v6, Lk4/o;

    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->h()Lq4/b;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/work/impl/WorkDatabase;->r(Ljava/lang/Class;Lq4/b;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk4/o;

    const-class v6, Lk4/a;

    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->h()Lq4/b;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/work/impl/WorkDatabase;->r(Ljava/lang/Class;Lq4/b;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lk4/a;

    iget v6, v10, Lk4/b;->g:I

    if-ne v6, v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_f

    :cond_1a
    move/from16 v0, v19

    :goto_f
    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->h()Lq4/b;

    move-result-object v6

    invoke-interface {v6, v0}, Lq4/b;->setWriteAheadLoggingEnabled(Z)V

    iget-object v0, v10, Lk4/b;->e:Ljava/util/List;

    iput-object v0, v8, Landroidx/work/impl/WorkDatabase;->f:Ljava/util/List;

    iget-object v0, v10, Lk4/b;->h:Ljava/util/concurrent/Executor;

    iput-object v0, v8, Landroidx/work/impl/WorkDatabase;->b:Ljava/util/concurrent/Executor;

    new-instance v0, Lh5/h;

    iget-object v6, v10, Lk4/b;->i:Ljava/util/concurrent/Executor;

    const/4 v13, 0x1

    invoke-direct {v0, v6, v13}, Lh5/h;-><init>(Ljava/util/concurrent/Executor;I)V

    iget-boolean v0, v10, Lk4/b;->f:Z

    iput-boolean v0, v8, Landroidx/work/impl/WorkDatabase;->e:Z

    invoke-virtual {v8}, Landroidx/work/impl/WorkDatabase;->j()Ljava/util/Map;

    move-result-object v0

    new-instance v6, Ljava/util/BitSet;

    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ltz v11, :cond_1e

    :goto_11
    add-int/lit8 v12, v11, -0x1

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-eqz v13, :cond_1c

    invoke-virtual {v6, v11}, Ljava/util/BitSet;->set(I)V

    goto :goto_13

    :cond_1c
    if-gez v12, :cond_1d

    goto :goto_12

    :cond_1d
    move v11, v12

    goto :goto_11

    :cond_1e
    :goto_12
    move/from16 v11, v18

    :goto_13
    if-ltz v11, :cond_1f

    const/4 v12, 0x1

    goto :goto_14

    :cond_1f
    move/from16 v12, v19

    :goto_14
    if-eqz v12, :cond_20

    iget-object v12, v8, Landroidx/work/impl/WorkDatabase;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v12, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "A required type converter ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is missing in the database configuration."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_21
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_24

    :goto_15
    add-int/lit8 v7, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v9

    if-eqz v9, :cond_23

    if-gez v7, :cond_22

    goto :goto_16

    :cond_22
    move v0, v7

    goto :goto_15

    :cond_23
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected type converter "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    :goto_16
    new-instance v7, Le5/k;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v7, v0, v3}, Le5/k;-><init>(Landroid/content/Context;Li5/a;)V

    new-instance v4, Ly4/e;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0, v2, v3, v8}, Ly4/e;-><init>(Landroid/content/Context;Lx4/a;Li5/a;Landroidx/work/impl/WorkDatabase;)V

    sget-object v0, Ly4/r;->s:Ly4/r;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "p0"

    invoke-static {v1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p4"

    invoke-static {v7, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p5"

    invoke-static {v4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ly4/j;->a:Ljava/lang/String;

    new-instance v9, Lb5/f;

    invoke-direct {v9, v1, v8, v2}, Lb5/f;-><init>(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lx4/a;)V

    const-class v0, Landroidx/work/impl/background/systemjob/SystemJobService;

    const/4 v13, 0x1

    invoke-static {v1, v0, v13}, Lh5/f;->a(Landroid/content/Context;Ljava/lang/Class;Z)V

    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object v0

    sget-object v5, Ly4/j;->a:Ljava/lang/String;

    const-string v6, "Created SystemJobScheduler and enabled SystemJobService"

    invoke-virtual {v0, v5, v6}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lz4/c;

    new-instance v5, Lg5/c;

    invoke-direct {v5, v4, v3}, Lg5/c;-><init>(Ly4/e;Li5/a;)V

    move-object v6, v3

    move-object v3, v7

    const/4 v7, 0x2

    invoke-direct/range {v0 .. v6}, Lz4/c;-><init>(Landroid/content/Context;Lx4/a;Le5/k;Ly4/e;Lg5/c;Li5/a;)V

    move-object v1, v0

    move-object v0, v3

    move-object v3, v6

    new-array v2, v7, [Ly4/g;

    aput-object v9, v2, v19

    aput-object v1, v2, v13

    invoke-static {v2}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/util/List;

    move-object v7, v0

    new-instance v0, Ly4/q;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    move-object/from16 v2, p1

    move-object v6, v4

    move-object v4, v8

    invoke-direct/range {v0 .. v7}, Ly4/q;-><init>(Landroid/content/Context;Lx4/a;Li5/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;Ly4/e;Le5/k;)V

    return-object v0

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create an instance of "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot access the constructor "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot find implementation for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not exist"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    move-object/from16 v25, v9

    throw v25

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build a database with null or empty name. If you are trying to create an in memory database, use Room.inMemoryDatabaseBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const-string v0, "android.hardware.bydauto."

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".BYDAuto"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Device"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v0, "getInstance"

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p0}, Ly4/s;->B(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "DEV "

    const-string v0, " FAIL "

    invoke-static {p2, p1, v0, p0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-object v1
.end method

.method public static m(I)I
    .locals 1

    const/16 v0, 0x67

    if-eq p0, v0, :cond_2

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x6f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x78

    if-eq p0, v0, :cond_0

    const/16 v0, 0x79

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static n(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroidx/fragment/app/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " but encountered "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static o([Lpb/a;I)[Lpb/a;
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    if-le v3, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lpb/b;->a:[Lpb/a;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lpb/a;

    return-object p0
.end method

.method public static final p(Lj9/f;)Ljava/lang/Class;
    .locals 1

    invoke-interface {p0}, Lj9/e;->a()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type java.lang.Class<T of kotlin.jvm.JvmClassMappingKt.<get-java>>"

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final q(Lp9/b;)Ljava/lang/Class;
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lj9/e;

    invoke-interface {p0}, Lj9/e;->a()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-class p0, Ljava/lang/Short;

    return-object p0

    :sswitch_1
    const-string v1, "float"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-class p0, Ljava/lang/Float;

    return-object p0

    :sswitch_2
    const-string v1, "boolean"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-class p0, Ljava/lang/Boolean;

    return-object p0

    :sswitch_3
    const-string v1, "void"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-class p0, Ljava/lang/Void;

    return-object p0

    :sswitch_4
    const-string v1, "long"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const-class p0, Ljava/lang/Long;

    return-object p0

    :sswitch_5
    const-string v1, "char"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const-class p0, Ljava/lang/Character;

    return-object p0

    :sswitch_6
    const-string v1, "byte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const-class p0, Ljava/lang/Byte;

    return-object p0

    :sswitch_7
    const-string v1, "int"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const-class p0, Ljava/lang/Integer;

    return-object p0

    :sswitch_8
    const-string v1, "double"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_0
    return-object p0

    :cond_9
    const-class p0, Ljava/lang/Double;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4f08842f -> :sswitch_8
        0x197ef -> :sswitch_7
        0x2e6108 -> :sswitch_6
        0x2e9356 -> :sswitch_5
        0x32c67c -> :sswitch_4
        0x375194 -> :sswitch_3
        0x3db6c28 -> :sswitch_2
        0x5d0225c -> :sswitch_1
        0x685847c -> :sswitch_0
    .end sparse-switch
.end method

.method public static final r(Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/KSerializer;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v0

    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lha/l0;

    invoke-direct {v0, p0}, Lha/l0;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object v0
.end method

.method public static final s(III)I
    .locals 1

    if-lez p2, :cond_4

    if-lt p0, p1, :cond_0

    goto :goto_3

    :cond_0
    rem-int v0, p1, p2

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr v0, p2

    :goto_0
    rem-int/2addr p0, p2

    if-ltz p0, :cond_2

    goto :goto_1

    :cond_2
    add-int/2addr p0, p2

    :goto_1
    sub-int/2addr v0, p0

    rem-int/2addr v0, p2

    if-ltz v0, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v0, p2

    :goto_2
    sub-int/2addr p1, v0

    return p1

    :cond_4
    if-gez p2, :cond_9

    if-gt p0, p1, :cond_5

    :goto_3
    return p1

    :cond_5
    neg-int p2, p2

    rem-int/2addr p0, p2

    if-ltz p0, :cond_6

    goto :goto_4

    :cond_6
    add-int/2addr p0, p2

    :goto_4
    rem-int v0, p1, p2

    if-ltz v0, :cond_7

    goto :goto_5

    :cond_7
    add-int/2addr v0, p2

    :goto_5
    sub-int/2addr p0, v0

    rem-int/2addr p0, p2

    if-ltz p0, :cond_8

    goto :goto_6

    :cond_8
    add-int/2addr p0, p2

    :goto_6
    add-int/2addr p0, p1

    return p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Step is zero."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final t(Ljava/lang/String;)V
    .locals 5

    const-string v0, "name"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x21

    if-gt v3, v2, :cond_0

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected char 0x"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x10

    invoke-static {v3}, Lwa/h;->i(I)V

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in header name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "name is empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "value"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_3

    const/16 v3, 0x20

    if-gt v3, v2, :cond_0

    const/16 v3, 0x7f

    if-ge v2, v3, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected char 0x"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x10

    invoke-static {v3}, Lwa/h;->i(I)V

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lma/c;->j(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, ""

    goto :goto_1

    :cond_2
    const-string p1, ": "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static v(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_9

    const/4 v1, 0x2

    if-eq p0, v1, :cond_8

    const/4 v0, 0x4

    if-eq p0, v0, :cond_7

    const/16 v1, 0x8

    if-eq p0, v1, :cond_6

    const/16 v2, 0x10

    if-eq p0, v2, :cond_5

    const/16 v0, 0x20

    if-eq p0, v0, :cond_4

    const/16 v0, 0x40

    if-eq p0, v0, :cond_3

    const/16 v0, 0x80

    if-eq p0, v0, :cond_2

    const/16 v0, 0x100

    if-eq p0, v0, :cond_1

    const/16 v0, 0x200

    if-ne p0, v0, :cond_0

    const/16 p0, 0x9

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "type needs to be >= FIRST and <= LAST, type="

    invoke-static {p0, v1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v1

    :cond_2
    const/4 p0, 0x7

    return p0

    :cond_3
    const/4 p0, 0x6

    return p0

    :cond_4
    const/4 p0, 0x5

    return p0

    :cond_5
    return v0

    :cond_6
    const/4 p0, 0x3

    return p0

    :cond_7
    return v1

    :cond_8
    return v0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public static w(Ljava/lang/String;Z)V
    .locals 0

    if-nez p1, :cond_1

    if-nez p0, :cond_0

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_0
    new-instance p1, Landroidx/fragment/app/i0;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method public static x(Lt8/h;Li9/a;)Lt8/g;
    .locals 2

    sget-object v0, Lt8/w;->a:Lt8/w;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    new-instance p0, La6/n;

    const/4 v1, 0x3

    invoke-direct {p0, v1}, La6/n;-><init>(I)V

    iput-object p1, p0, La6/n;->m:Ljava/lang/Object;

    iput-object v0, p0, La6/n;->n:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Lt8/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/n;->l:Li9/a;

    iput-object v0, p0, Lt8/n;->m:Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance p0, Lt8/o;

    invoke-direct {p0, p1}, Lt8/o;-><init>(Li9/a;)V

    return-object p0
.end method

.method public static y(Li9/a;)Lt8/o;
    .locals 1

    const-string v0, "initializer"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lt8/o;

    invoke-direct {v0, p0}, Lt8/o;-><init>(Li9/a;)V

    return-object v0
.end method

.method public static z(I)I
    .locals 1

    const/16 v0, 0x67

    if-eq p0, v0, :cond_1

    const/16 v0, 0x6e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x6f

    if-eq p0, v0, :cond_0

    const/16 v0, 0x78

    if-eq p0, v0, :cond_1

    const/16 v0, 0x79

    if-eq p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
