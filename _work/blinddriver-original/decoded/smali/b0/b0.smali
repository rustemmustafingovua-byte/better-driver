.class public abstract Lb0/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/s2;

.field public static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, La1/b;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, La1/b;-><init>(I)V

    new-instance v1, Lr0/s2;

    invoke-direct {v1, v0}, Lr0/m1;-><init>(Li9/a;)V

    sput-object v1, Lb0/b0;->a:Lr0/s2;

    return-void
.end method

.method public static final a(Lp2/g;Lp2/m0;Lt2/d;Ljava/util/List;Lr0/q;I)V
    .locals 10

    sget-object v0, Lb0/b0;->a:Lr0/s2;

    invoke-virtual {p4, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v2, p0, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lb0/b0;->b(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const v2, -0x1eebad12

    invoke-virtual {p4, v2}, Lr0/q;->b0(I)V

    sget-object v2, Lf2/l1;->n:Lr0/s2;

    invoke-virtual {p4, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lb3/m;

    sget-object v2, Lf2/l1;->h:Lr0/s2;

    invoke-virtual {p4, v2}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lb3/c;

    and-int/lit8 v2, p5, 0x70

    xor-int/lit8 v2, v2, 0x30

    const/4 v3, 0x1

    const/16 v4, 0x20

    if-le v2, v4, :cond_0

    :try_start_0
    invoke-virtual {p4, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    and-int/lit8 v2, p5, 0x30

    if-ne v2, v4, :cond_2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {p4, v4}, Lr0/q;->e(I)Z

    move-result v4

    or-int/2addr v2, v4

    invoke-virtual {p4, p3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v2, v4

    and-int/lit8 v4, p5, 0xe

    xor-int/lit8 v4, v4, 0x6

    const/4 v6, 0x4

    if-le v4, v6, :cond_3

    invoke-virtual {p4, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_3
    and-int/lit8 p5, p5, 0x6

    if-ne p5, v6, :cond_4

    goto :goto_1

    :cond_4
    move v3, v1

    :cond_5
    :goto_1
    or-int p5, v2, v3

    invoke-virtual {p4, v8}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr p5, v2

    invoke-virtual {p4, p2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr p5, v2

    invoke-virtual {p4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez p5, :cond_6

    sget-object p5, Lr0/m;->a:Lr0/e;

    if-ne v2, p5, :cond_7

    :cond_6
    new-instance v3, Lb0/a0;

    move-object v7, p0

    move-object v4, p1

    move-object v9, p2

    move-object v6, p3

    invoke-direct/range {v3 .. v9}, Lb0/a0;-><init>(Lp2/m0;Lb3/m;Ljava/util/List;Lp2/g;Lb3/c;Lt2/d;)V

    invoke-virtual {p4, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v2, v3

    :cond_7
    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p4, v1}, Lr0/q;->q(Z)V

    return-void

    :cond_8
    const p0, -0x1f311509    # -1.1928001E20f

    invoke-virtual {p4, p0}, Lr0/q;->b0(I)V

    invoke-virtual {p4, v1}, Lr0/q;->q(Z)V

    return-void
.end method

.method public static final b(I)Z
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-lt p0, v0, :cond_2

    const/16 v0, 0x3e8

    if-ge p0, v0, :cond_2

    sget-object p0, Lb0/b0;->b:Ljava/lang/Boolean;

    const/4 v0, 0x1

    if-nez p0, :cond_1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result p0

    const/4 v2, 0x4

    if-lt p0, v2, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lb0/b0;->b:Ljava/lang/Boolean;

    :cond_1
    sget-object p0, Lb0/b0;->b:Ljava/lang/Boolean;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return v1
.end method
