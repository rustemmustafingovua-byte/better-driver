.class public final Lha/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# static fields
.field public static final a:Lha/r;

.field public static final b:Lha/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lha/r;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lha/r;->a:Lha/r;

    new-instance v0, Lha/u0;

    const-string v1, "kotlin.time.Duration"

    sget-object v2, Lfa/c;->n:Lfa/c;

    invoke-direct {v0, v1, v2}, Lha/u0;-><init>(Ljava/lang/String;Lfa/d;)V

    sput-object v0, Lha/r;->b:Lha/u0;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 4

    sget-object p0, Ls9/a;->m:Lmb/q;

    invoke-interface {p1}, Lkotlinx/serialization/encoding/Decoder;->i()Ljava/lang/String;

    move-result-object p0

    const-string p1, "value"

    invoke-static {p0, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Ls9/e;->g(Ljava/lang/String;)J

    move-result-wide v0

    sget-wide v2, Ls9/a;->p:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    new-instance p0, Ls9/a;

    invoke-direct {p0, v0, v1}, Ls9/a;-><init>(J)V

    return-object p0

    :cond_1
    :try_start_1
    const-string p1, "invariant failed"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid ISO duration string format: \'"

    const-string v2, "\'."

    invoke-static {v1, p0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lha/r;->b:Lha/u0;

    return-object p0
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p2

    check-cast v0, Ls9/a;

    iget-wide v0, v0, Ls9/a;->l:J

    sget-object v2, Ls9/a;->m:Lmb/q;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x0

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    const/16 v6, 0x2d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v6, "PT"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gez v2, :cond_1

    invoke-static {v0, v1}, Ls9/a;->g(J)J

    move-result-wide v6

    goto :goto_0

    :cond_1
    move-wide v6, v0

    :goto_0
    sget-object v2, Ls9/c;->q:Ls9/c;

    invoke-static {v6, v7, v2}, Ls9/a;->f(JLs9/c;)J

    move-result-wide v8

    invoke-static {v6, v7}, Ls9/a;->d(J)Z

    move-result v2

    const/16 v10, 0x3c

    const/4 v11, 0x0

    if-eqz v2, :cond_2

    move v2, v11

    goto :goto_1

    :cond_2
    sget-object v2, Ls9/c;->p:Ls9/c;

    invoke-static {v6, v7, v2}, Ls9/a;->f(JLs9/c;)J

    move-result-wide v12

    int-to-long v14, v10

    rem-long/2addr v12, v14

    long-to-int v2, v12

    :goto_1
    invoke-static {v6, v7}, Ls9/a;->d(J)Z

    move-result v12

    if-eqz v12, :cond_3

    move v10, v11

    goto :goto_2

    :cond_3
    sget-object v12, Ls9/c;->o:Ls9/c;

    invoke-static {v6, v7, v12}, Ls9/a;->f(JLs9/c;)J

    move-result-wide v12

    int-to-long v14, v10

    rem-long/2addr v12, v14

    long-to-int v10, v12

    :goto_2
    invoke-static {v6, v7}, Ls9/a;->c(J)I

    move-result v6

    invoke-static {v0, v1}, Ls9/a;->d(J)Z

    move-result v0

    if-eqz v0, :cond_4

    const-wide v8, 0x9184e729fffL

    :cond_4
    cmp-long v0, v8, v4

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    move v0, v1

    goto :goto_3

    :cond_5
    move v0, v11

    :goto_3
    if-nez v10, :cond_7

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    move v4, v11

    goto :goto_5

    :cond_7
    :goto_4
    move v4, v1

    :goto_5
    if-nez v2, :cond_8

    if-eqz v4, :cond_9

    if-eqz v0, :cond_9

    :cond_8
    move v11, v1

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x48

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_a
    if-eqz v11, :cond_b

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x4d

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    if-nez v4, :cond_c

    if-nez v0, :cond_d

    if-nez v11, :cond_d

    :cond_c
    const-string v7, "S"

    const/4 v8, 0x1

    move v5, v6

    const/16 v6, 0x9

    move v4, v10

    invoke-static/range {v3 .. v8}, Ls9/a;->b(Ljava/lang/StringBuilder;IIILjava/lang/String;Z)V

    :cond_d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lkotlinx/serialization/encoding/Encoder;->n(Ljava/lang/String;)V

    return-void
.end method
