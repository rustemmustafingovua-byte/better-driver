.class public Lb6/c0;
.super Ls5/o;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final x:Ld6/a;


# instance fields
.field public final l:Ls5/d;

.field public final m:Lt6/p;

.field public final n:Lo6/m;

.field public final o:La6/n;

.field public final p:Lj6/j0;

.field public q:Lb6/p0;

.field public final r:Lq6/k;

.field public s:Lg5/f;

.field public t:Lb6/h;

.field public u:Le6/n;

.field public v:Ljava/util/LinkedHashSet;

.field public final w:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v2, Lj6/a0;

    invoke-direct {v2}, Lj6/a0;-><init>()V

    new-instance v0, Ld6/a;

    sget-object v4, Lt6/p;->o:Lt6/p;

    sget-object v5, Lu6/w;->x:Lu6/w;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    sget-object v7, Ls5/b;->a:Ls5/a;

    new-instance v8, Lj6/q;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct/range {v0 .. v8}, Ld6/a;-><init>(Lj6/s;Lb6/d;Lb6/o0;Lt6/p;Ljava/text/DateFormat;Ljava/util/Locale;Ls5/a;Lj6/q;)V

    sput-object v0, Lb6/c0;->x:Ld6/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0, v0, v0}, Lb6/c0;-><init>(Ls5/d;Lz6/d;Ly6/c;)V

    return-void
.end method

.method public constructor <init>(Ls5/d;Lz6/d;Ly6/c;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const v3, 0x3f19999a    # 0.6f

    const/4 v4, 0x2

    const/16 v5, 0x40

    invoke-direct {v2, v5, v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v2, v0, Lb6/c0;->w:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lb6/y;

    .line 4
    invoke-direct {v1, v0}, Ls5/d;-><init>(Lb6/c0;)V

    .line 5
    iput-object v1, v0, Lb6/c0;->l:Ls5/d;

    goto :goto_0

    .line 6
    :cond_0
    iput-object v1, v0, Lb6/c0;->l:Ls5/d;

    .line 7
    iget-object v2, v1, Ls5/d;->r:Ls5/o;

    if-nez v2, :cond_1

    .line 8
    iput-object v0, v1, Ls5/d;->r:Ls5/o;

    .line 9
    :cond_1
    :goto_0
    new-instance v8, Lo6/m;

    .line 10
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v8, v0, Lb6/c0;->n:Lo6/m;

    .line 12
    new-instance v10, Lu6/m;

    .line 13
    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v1, Lu6/m;

    const/16 v2, 0x14

    const/16 v3, 0xc8

    invoke-direct {v1, v2, v3}, Lu6/m;-><init>(II)V

    iput-object v1, v10, Lu6/m;->l:Ljava/io/Serializable;

    .line 15
    sget-object v1, Lt6/p;->o:Lt6/p;

    .line 16
    iput-object v1, v0, Lb6/c0;->m:Lt6/p;

    .line 17
    new-instance v9, Lj6/j0;

    .line 18
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v9, v0, Lb6/c0;->p:Lj6/j0;

    .line 20
    new-instance v12, Lj6/u;

    .line 21
    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v1, Lb6/c0;->x:Ld6/a;

    iget-object v2, v1, Ld6/a;->m:Lj6/s;

    if-ne v2, v12, :cond_2

    move-object v7, v1

    goto :goto_1

    .line 23
    :cond_2
    new-instance v11, Ld6/a;

    iget-object v13, v1, Ld6/a;->n:Lb6/d;

    iget-object v14, v1, Ld6/a;->o:Lb6/o0;

    iget-object v15, v1, Ld6/a;->l:Lt6/p;

    iget-object v2, v1, Ld6/a;->q:Ljava/text/DateFormat;

    iget-object v3, v1, Ld6/a;->r:Ljava/util/Locale;

    iget-object v4, v1, Ld6/a;->s:Ls5/a;

    iget-object v1, v1, Ld6/a;->p:Lj6/q;

    move-object/from16 v19, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-direct/range {v11 .. v19}, Ld6/a;-><init>(Lj6/s;Lb6/d;Lb6/o0;Lt6/p;Ljava/text/DateFormat;Ljava/util/Locale;Ls5/a;Lj6/q;)V

    move-object v7, v11

    .line 24
    :goto_1
    new-instance v11, La6/n;

    .line 25
    sget-object v1, Lr5/a0;->p:Lr5/a0;

    const/4 v2, 0x1

    .line 26
    invoke-direct {v11, v2}, La6/n;-><init>(I)V

    .line 27
    iput-object v1, v11, La6/n;->m:Ljava/lang/Object;

    .line 28
    sget-object v1, Lj6/m0;->q:Lj6/m0;

    iput-object v1, v11, La6/n;->n:Ljava/lang/Object;

    .line 29
    iput-object v11, v0, Lb6/c0;->o:La6/n;

    .line 30
    new-instance v1, Ld6/b;

    invoke-direct {v1}, Ld6/b;-><init>()V

    .line 31
    new-instance v6, Lb6/p0;

    .line 32
    sget-object v12, Ld6/h;->a:Ld6/i;

    .line 33
    invoke-direct/range {v6 .. v12}, Lb6/p0;-><init>(Ld6/a;Lo6/m;Lj6/j0;Lu6/m;La6/n;Ld6/i;)V

    iput-object v6, v0, Lb6/c0;->q:Lb6/p0;

    .line 34
    new-instance v6, Lb6/h;

    move-object v13, v12

    move-object v12, v1

    .line 35
    invoke-direct/range {v6 .. v13}, Lb6/h;-><init>(Ld6/a;Lo6/m;Lj6/j0;Lu6/m;La6/n;Ld6/b;Ld6/i;)V

    iput-object v6, v0, Lb6/c0;->t:Lb6/h;

    .line 36
    iget-object v1, v0, Lb6/c0;->l:Ls5/d;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 37
    iget-object v1, v0, Lb6/c0;->q:Lb6/p0;

    sget-object v2, Lb6/x;->I:Lb6/x;

    invoke-virtual {v1, v2}, Ld6/m;->m(Lb6/x;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 38
    iget-object v1, v0, Lb6/c0;->q:Lb6/p0;

    filled-new-array {v2}, [Lb6/x;

    move-result-object v3

    .line 39
    iget-wide v6, v1, Ld6/m;->l:J

    const/4 v4, 0x0

    .line 40
    aget-object v3, v3, v4

    .line 41
    iget-wide v8, v3, Lb6/x;->m:J

    not-long v8, v8

    and-long/2addr v8, v6

    cmp-long v3, v8, v6

    if-nez v3, :cond_3

    goto :goto_2

    .line 42
    :cond_3
    new-instance v3, Lb6/p0;

    .line 43
    iget v6, v1, Lb6/p0;->w:I

    .line 44
    invoke-direct {v3, v1, v8, v9, v6}, Lb6/p0;-><init>(Lb6/p0;JI)V

    move-object v1, v3

    .line 45
    :goto_2
    iput-object v1, v0, Lb6/c0;->q:Lb6/p0;

    .line 46
    iget-object v1, v0, Lb6/c0;->t:Lb6/h;

    filled-new-array {v2}, [Lb6/x;

    move-result-object v2

    .line 47
    iget-wide v6, v1, Ld6/m;->l:J

    .line 48
    aget-object v2, v2, v4

    .line 49
    iget-wide v2, v2, Lb6/x;->m:J

    not-long v2, v2

    and-long/2addr v2, v6

    cmp-long v4, v2, v6

    if-nez v4, :cond_4

    goto :goto_3

    .line 50
    :cond_4
    new-instance v4, Lb6/h;

    .line 51
    iget v6, v1, Lb6/h;->x:I

    .line 52
    invoke-direct {v4, v1, v2, v3, v6}, Lb6/h;-><init>(Lb6/h;JI)V

    move-object v1, v4

    .line 53
    :goto_3
    iput-object v1, v0, Lb6/c0;->t:Lb6/h;

    .line 54
    :cond_5
    new-instance v1, Lq6/j;

    .line 55
    invoke-direct {v1}, Lb6/r0;-><init>()V

    .line 56
    iput-object v1, v0, Lb6/c0;->r:Lq6/k;

    .line 57
    new-instance v1, Le6/m;

    sget-object v2, Le6/h;->m:[Ljava/lang/Class;

    .line 58
    new-instance v2, Le6/o;

    .line 59
    new-instance v3, Lu6/m;

    const/16 v4, 0x1f4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/16 v5, 0x7d0

    invoke-direct {v3, v4, v5}, Lu6/m;-><init>(II)V

    .line 60
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v4, Ljava/util/HashMap;

    const/16 v5, 0x8

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v2, Le6/o;->m:Ljava/lang/Object;

    .line 62
    new-instance v4, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v4}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v4, v2, Le6/o;->n:Ljava/lang/Object;

    .line 63
    iput-object v3, v2, Le6/o;->l:Ljava/io/Serializable;

    .line 64
    invoke-direct {v1, v2}, Lb6/i;-><init>(Le6/o;)V

    .line 65
    iput-object v1, v0, Lb6/c0;->u:Le6/n;

    .line 66
    sget-object v1, Lq6/f;->o:Lq6/f;

    iput-object v1, v0, Lb6/c0;->s:Lg5/f;

    return-void
.end method


# virtual methods
.method public final a(Ls5/k;)Lb6/q;
    .locals 3

    const-string v0, "p"

    invoke-virtual {p0, p1, v0}, Lb6/c0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb6/c0;->t:Lb6/h;

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-class v1, Lb6/q;

    iget-object v2, p0, Lb6/c0;->m:Lt6/p;

    invoke-virtual {v2, v1}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object v1

    invoke-virtual {p0, v0, p1, v1}, Lb6/c0;->l(Lb6/h;Ls5/k;Lb6/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb6/q;

    if-nez p1, :cond_1

    iget-object p0, p0, Lb6/c0;->t:Lb6/h;

    iget-object p0, p0, Lb6/h;->v:Lp6/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lp6/t;->l:Lp6/t;

    return-object p0

    :cond_1
    return-object p1
.end method

.method public final b(Ljava/lang/Class;Ls5/k;)Ljava/lang/Object;
    .locals 2

    const-string v0, "p"

    invoke-virtual {p0, p2, v0}, Lb6/c0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb6/c0;->t:Lb6/h;

    iget-object v1, p0, Lb6/c0;->m:Lt6/p;

    invoke-virtual {v1, p1}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object p1

    invoke-virtual {p0, v0, p2, p1}, Lb6/c0;->l(Lb6/h;Ls5/k;Lb6/l;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c(Ls5/v;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_0
    const-class v0, Ls5/v;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-interface {p1}, Ls5/v;->c()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->z:Ls5/n;

    if-ne v0, v1, :cond_3

    instance-of v0, p1, Lp6/w;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lp6/w;

    iget-object v0, v0, Lp6/w;->l:Ljava/lang/Object;

    if-eqz v0, :cond_2

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return-object v0

    :cond_3
    new-instance v0, Lp6/y;

    check-cast p1, Lb6/q;

    invoke-direct {v0, p1, p0}, Lp6/y;-><init>(Lb6/q;Ls5/o;)V

    invoke-virtual {p0, p2, v0}, Lb6/c0;->b(Ljava/lang/Class;Ls5/k;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ls5/l; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method

.method public final d(Ls5/g;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lb6/c0;->q:Lb6/p0;

    sget-object v1, Lb6/q0;->o:Lb6/q0;

    invoke-virtual {v0, v1}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Ls5/g;->l:Ls5/p;

    if-nez v1, :cond_1

    iget-object v1, v0, Lb6/p0;->v:Ls5/p;

    instance-of v2, v1, La6/h;

    if-eqz v2, :cond_0

    check-cast v1, La6/h;

    invoke-interface {v1}, La6/h;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls5/p;

    :cond_0
    invoke-virtual {p1, v1}, Ls5/g;->y(Ls5/p;)V

    :cond_1
    sget-object v1, Lb6/q0;->u:Lb6/q0;

    invoke-virtual {v0, v1}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v1

    if-eqz v1, :cond_3

    instance-of v1, p2, Ljava/io/Closeable;

    if-eqz v1, :cond_3

    move-object v1, p2

    check-cast v1, Ljava/io/Closeable;

    :try_start_0
    invoke-virtual {p0, v0}, Lb6/c0;->m(Lb6/p0;)Lq6/k;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lq6/k;->p0(Ls5/g;Ljava/lang/Object;)V

    sget-object p0, Lb6/q0;->v:Lb6/q0;

    invoke-virtual {v0, p0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ls5/g;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    return-void

    :goto_1
    const/4 p1, 0x0

    invoke-static {p1, v1, p0}, Lu6/h;->g(Ls5/g;Ljava/io/Closeable;Ljava/lang/Exception;)V

    throw p1

    :cond_3
    invoke-virtual {p0, v0}, Lb6/c0;->m(Lb6/p0;)Lq6/k;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lq6/k;->p0(Ls5/g;Ljava/lang/Object;)V

    sget-object p0, Lb6/q0;->v:Lb6/q0;

    invoke-virtual {v0, p0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Ls5/g;->flush()V

    :cond_4
    return-void
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "argument \""

    const-string v0, "\" is null"

    invoke-static {p1, p2, v0}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final f(Ljava/lang/Object;Lb6/l;)Ljava/lang/Object;
    .locals 5

    iget-object v0, p0, Lb6/c0;->q:Lb6/p0;

    sget-object v1, Lb6/q0;->n:Lb6/q0;

    iget v2, v0, Lb6/p0;->w:I

    iget v1, v1, Lb6/q0;->m:I

    not-int v1, v1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lb6/p0;

    iget-wide v3, v0, Ld6/m;->l:J

    invoke-direct {v2, v0, v3, v4, v1}, Lb6/p0;-><init>(Lb6/p0;JI)V

    move-object v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lb6/c0;->m(Lb6/p0;)Lq6/k;

    move-result-object v0

    invoke-static {p0}, Lb6/r0;->R(Lb6/c0;)Lu6/z;

    move-result-object v1

    sget-object v2, Lb6/j;->n:Lb6/j;

    iget-object v3, p0, Lb6/c0;->t:Lb6/h;

    invoke-virtual {v3, v2}, Lb6/h;->t(Lb6/j;)Z

    :try_start_0
    invoke-virtual {v0, v1, p1}, Lq6/k;->p0(Ls5/g;Ljava/lang/Object;)V

    iget-object p1, v1, Lu6/z;->m:Ls5/o;

    invoke-virtual {v1, p1}, Lu6/z;->I0(Ls5/o;)Lu6/x;

    move-result-object p1

    iget-object v0, p0, Lb6/c0;->t:Lb6/h;

    invoke-virtual {p0, p1}, Lb6/c0;->i(Ls5/k;)Ls5/n;

    move-result-object v1

    sget-object v2, Ls5/n;->F:Ls5/n;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lb6/c0;->u:Le6/n;

    invoke-virtual {v1, v0, p1}, Le6/n;->G0(Lb6/h;Ls5/k;)Le6/n;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lb6/c0;->h(Le6/n;Lb6/l;)Lb6/n;

    move-result-object p0

    invoke-virtual {p0, v0}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_1
    sget-object v2, Ls5/n;->x:Ls5/n;

    if-eq v1, v2, :cond_3

    sget-object v2, Ls5/n;->v:Ls5/n;

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lb6/c0;->u:Le6/n;

    invoke-virtual {v1, v0, p1}, Le6/n;->G0(Lb6/h;Ls5/k;)Le6/n;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lb6/c0;->h(Le6/n;Lb6/l;)Lb6/n;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x0

    :goto_2
    invoke-virtual {p1}, Lu6/x;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final h(Le6/n;Lb6/l;)Lb6/n;
    .locals 1

    iget-object p0, p0, Lb6/c0;->w:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb6/n;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1, p2}, Lb6/i;->Y(Lb6/l;)Lb6/n;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Cannot find a deserializer for type "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public final i(Ls5/k;)Ls5/n;
    .locals 2

    iget-object p0, p0, Lb6/c0;->t:Lb6/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lh6/b;

    const/4 v0, 0x0

    const-string v1, "No content to map due to end-of-input"

    invoke-direct {p0, p1, v1, v0}, Lh6/b;-><init>(Ls5/k;Ljava/lang/String;Ljava/lang/Object;)V

    throw p0

    :cond_1
    return-object p0
.end method

.method public final j(Lb6/l;Ls5/k;)Ljava/lang/Object;
    .locals 5

    :try_start_0
    iget-object v0, p0, Lb6/c0;->t:Lb6/h;

    iget-object v1, p0, Lb6/c0;->u:Le6/n;

    invoke-virtual {v1, v0, p2}, Le6/n;->G0(Lb6/h;Ls5/k;)Le6/n;

    move-result-object v1

    invoke-virtual {p0, p2}, Lb6/c0;->i(Ls5/k;)Ls5/n;

    move-result-object v2

    sget-object v3, Ls5/n;->F:Ls5/n;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v1, p1}, Lb6/c0;->h(Le6/n;Lb6/l;)Lb6/n;

    move-result-object v2

    invoke-virtual {v2, v1}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    sget-object v3, Ls5/n;->x:Ls5/n;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_2

    sget-object v3, Ls5/n;->v:Ls5/n;

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Ls5/n;->t:Ls5/n;

    if-ne v2, v3, :cond_3

    :cond_2
    :goto_0
    move-object v2, v4

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v1, p1}, Lb6/c0;->h(Le6/n;Lb6/l;)Lb6/n;

    move-result-object v2

    invoke-virtual {v1, p2, p1, v2}, Le6/n;->H0(Ls5/k;Lb6/l;Lb6/n;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v1, Le6/n;->y:Ljava/util/LinkedHashMap;

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    sget-object v3, Lb6/j;->x:Lb6/j;

    invoke-virtual {v1, v3}, Lb6/i;->n0(Lb6/j;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    iget-object v3, v1, Le6/n;->y:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf6/b0;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_6
    :goto_2
    sget-object v3, Lb6/j;->B:Lb6/j;

    invoke-virtual {v0, v3}, Lb6/h;->t(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, p2, v1, p1}, Lb6/c0;->n(Ls5/k;Le6/n;Lb6/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    invoke-interface {p2}, Ljava/io/Closeable;->close()V

    return-object v2

    :goto_3
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz p2, :cond_8

    :try_start_2
    invoke-interface {p2}, Ljava/io/Closeable;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    throw p1
.end method

.method public final k(Ls5/k;)Lb6/q;
    .locals 6

    :try_start_0
    const-class v0, Lb6/q;

    iget-object v1, p0, Lb6/c0;->m:Lt6/p;

    invoke-virtual {v1, v0}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object v0

    iget-object v1, p0, Lb6/c0;->t:Lb6/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lb6/h;->v:Lp6/m;

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lp6/o;->l:Lp6/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v4, p0, Lb6/c0;->u:Le6/n;

    invoke-virtual {v4, v1, p1}, Le6/n;->G0(Lb6/h;Ls5/k;)Le6/n;

    move-result-object v4

    sget-object v5, Ls5/n;->F:Ls5/n;

    if-ne v3, v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lp6/t;->l:Lp6/t;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v4, v0}, Lb6/c0;->h(Le6/n;Lb6/l;)Lb6/n;

    move-result-object v2

    invoke-virtual {v4, p1, v0, v2}, Le6/n;->H0(Ls5/k;Lb6/l;Lb6/n;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb6/q;

    :goto_0
    sget-object v3, Lb6/j;->B:Lb6/j;

    invoke-virtual {v1, v3}, Lb6/h;->t(Lb6/j;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, v4, v0}, Lb6/c0;->n(Ls5/k;Le6/n;Lb6/l;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    invoke-interface {p1}, Ljava/io/Closeable;->close()V

    return-object v2

    :goto_1
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_3

    :try_start_3
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v0
.end method

.method public final l(Lb6/h;Ls5/k;Lb6/l;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0, p2}, Lb6/c0;->i(Ls5/k;)Ls5/n;

    move-result-object v0

    iget-object v1, p0, Lb6/c0;->u:Le6/n;

    invoke-virtual {v1, p1, p2}, Le6/n;->G0(Lb6/h;Ls5/k;)Le6/n;

    move-result-object v1

    sget-object v2, Ls5/n;->F:Ls5/n;

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1, p3}, Lb6/c0;->h(Le6/n;Lb6/l;)Lb6/n;

    move-result-object v0

    invoke-virtual {v0, v1}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_0
    sget-object v2, Ls5/n;->x:Ls5/n;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    sget-object v2, Ls5/n;->v:Ls5/n;

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Ls5/n;->t:Ls5/n;

    if-ne v0, v2, :cond_3

    :cond_2
    :goto_0
    move-object v0, v3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1, p3}, Lb6/c0;->h(Le6/n;Lb6/l;)Lb6/n;

    move-result-object v0

    invoke-virtual {v1, p2, p3, v0}, Le6/n;->H0(Ls5/k;Lb6/l;Lb6/n;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    invoke-virtual {p2}, Ls5/k;->m()V

    sget-object v2, Lb6/j;->B:Lb6/j;

    invoke-virtual {p1, v2}, Lb6/h;->t(Lb6/j;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0, p2, v1, p3}, Lb6/c0;->n(Ls5/k;Le6/n;Lb6/l;)V

    :cond_4
    return-object v0
.end method

.method public final m(Lb6/p0;)Lq6/k;
    .locals 1

    iget-object v0, p0, Lb6/c0;->r:Lq6/k;

    iget-object p0, p0, Lb6/c0;->s:Lg5/f;

    invoke-virtual {v0, p1, p0}, Lq6/k;->o0(Lb6/p0;Lg5/f;)Lq6/k;

    move-result-object p0

    return-object p0
.end method

.method public final n(Ls5/k;Le6/n;Lb6/l;)V
    .locals 1

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move-object p3, v0

    goto :goto_0

    :cond_0
    iget-object p3, p3, Lb6/l;->o:Ljava/lang/Class;

    :goto_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, p1, p0}, Lb6/i;->y0(Ljava/lang/Class;Ls5/k;Ls5/n;)V

    throw v0

    :cond_1
    return-void
.end method

.method public final o(Ls5/g;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lb6/c0;->q:Lb6/p0;

    sget-object v1, Lb6/q0;->u:Lb6/q0;

    invoke-virtual {v0, v1}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p2, Ljava/io/Closeable;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/io/Closeable;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lb6/c0;->m(Lb6/p0;)Lq6/k;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lq6/k;->p0(Ls5/g;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {v1}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {p1}, Ls5/g;->close()V

    return-void

    :catch_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-static {p1, v1, p0}, Lu6/h;->g(Ls5/g;Ljava/io/Closeable;Ljava/lang/Exception;)V

    throw v2

    :cond_0
    :try_start_2
    invoke-virtual {p0, v0}, Lb6/c0;->m(Lb6/p0;)Lq6/k;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lq6/k;->p0(Ls5/g;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {p1}, Ls5/g;->close()V

    return-void

    :catch_2
    move-exception p0

    sget-object p2, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    sget-object p2, Ls5/f;->o:Ls5/f;

    invoke-virtual {p1, p2}, Ls5/g;->m(Ls5/f;)Ls5/g;

    :try_start_3
    invoke-virtual {p1}, Ls5/g;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    invoke-static {p0}, Lu6/h;->D(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lu6/h;->E(Ljava/lang/Throwable;)V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final p(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 3

    const-string v0, "src"

    invoke-virtual {p0, p1, v0}, Lb6/c0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb6/c0;->l:Ls5/d;

    invoke-virtual {v0, p1}, Ls5/d;->e(Ljava/lang/Object;)Lw5/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls5/d;->f(Lw5/c;Z)Lw5/d;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ls5/d;->h(Ljava/io/Reader;Lw5/d;)Ls5/k;

    move-result-object p1

    iget-object v0, p0, Lb6/c0;->m:Lt6/p;

    const-class v1, Lcom/graphhopper/util/JsonFeatureCollection;

    invoke-virtual {v0, v1}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lb6/c0;->j(Lb6/l;Ls5/k;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final q(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "content"

    invoke-virtual {p0, p2, v0}, Lb6/c0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb6/c0;->m:Lt6/p;

    invoke-virtual {v0, p1}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lb6/c0;->l:Ls5/d;

    invoke-virtual {v0, p2}, Ls5/d;->k(Ljava/lang/String;)Ls5/k;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lb6/c0;->j(Lb6/l;Ls5/k;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ls5/l; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lb6/p;->e(Ljava/io/IOException;)Lb6/p;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    throw p0
.end method

.method public final r(Ljava/net/URL;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9

    const-string v0, "src"

    invoke-virtual {p0, p1, v0}, Lb6/c0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lb6/c0;->l:Ls5/d;

    invoke-virtual {v0, p1}, Ls5/d;->e(Ljava/lang/Object;)Lw5/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ls5/d;->f(Lw5/c;Z)Lw5/d;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x25

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    new-instance v2, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    new-instance v3, Ly5/a;

    invoke-direct {v3, v1, v2}, Ly5/a;-><init>(Lw5/d;Ljava/io/InputStream;)V

    iget v4, v0, Ls5/d;->o:I

    iget-object v5, v0, Ls5/d;->r:Ls5/o;

    iget-object v6, v0, Ls5/d;->m:Lz5/b;

    iget-object v7, v0, Ls5/d;->l:Lz5/e;

    iget v8, v0, Ls5/d;->n:I

    invoke-virtual/range {v3 .. v8}, Ly5/a;->a(ILs5/o;Lz5/b;Lz5/e;I)Ly5/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lb6/c0;->m:Lt6/p;

    invoke-virtual {v0, p2}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lb6/c0;->j(Lb6/l;Ls5/k;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    move-object p0, v0

    iget-boolean p1, v1, Lw5/d;->o:Z

    if-eqz p1, :cond_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p1, v0

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lw5/d;->close()V

    throw p0
.end method

.method public final s(Lb6/a0;)V
    .locals 2

    const-string v0, "module"

    invoke-virtual {p0, p1, v0}, Lb6/c0;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lb6/a0;->getModuleName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lb6/a0;->version()Ls5/w;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lb6/a0;->getDependencies()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb6/a0;

    invoke-virtual {p0, v1}, Lb6/c0;->s(Lb6/a0;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lb6/x;->T:Lb6/x;

    iget-object v1, p0, Lb6/c0;->q:Lb6/p0;

    invoke-virtual {v1, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lb6/a0;->getTypeId()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lb6/c0;->v:Ljava/util/LinkedHashSet;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lb6/c0;->v:Ljava/util/LinkedHashSet;

    :cond_1
    iget-object v1, p0, Lb6/c0;->v:Ljava/util/LinkedHashSet;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Lb6/b0;

    invoke-direct {v0, p0}, Lb6/b0;-><init>(Lb6/c0;)V

    invoke-virtual {p1, v0}, Lb6/a0;->setupModule(Lb6/z;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Module without defined version"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Module without defined name"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final t(Lb6/o0;)V
    .locals 1

    iget-object v0, p0, Lb6/c0;->q:Lb6/p0;

    invoke-virtual {v0, p1}, Ld6/n;->q(Lb6/o0;)Ld6/n;

    move-result-object v0

    check-cast v0, Lb6/p0;

    iput-object v0, p0, Lb6/c0;->q:Lb6/p0;

    iget-object v0, p0, Lb6/c0;->t:Lb6/h;

    invoke-virtual {v0, p1}, Ld6/n;->q(Lb6/o0;)Ld6/n;

    move-result-object p1

    check-cast p1, Lb6/h;

    iput-object p1, p0, Lb6/c0;->t:Lb6/h;

    return-void
.end method

.method public final u(ILr5/g;)V
    .locals 7

    iget-object p0, p0, Lb6/c0;->o:La6/n;

    iget-object v0, p0, La6/n;->n:Ljava/lang/Object;

    check-cast v0, Lj6/m0;

    invoke-static {p1}, Landroidx/fragment/app/t1;->d(I)I

    move-result p1

    sget-object v1, Lr5/g;->m:Lr5/g;

    sget-object v2, Lr5/g;->o:Lr5/g;

    if-eqz p1, :cond_c

    const/4 v3, 0x1

    if-eq p1, v3, :cond_9

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    const/4 v3, 0x3

    if-eq p1, v3, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    goto/16 :goto_4

    :cond_0
    if-ne p2, v2, :cond_1

    sget-object v0, Lj6/m0;->q:Lj6/m0;

    goto/16 :goto_4

    :cond_1
    new-instance v0, Lj6/m0;

    invoke-direct {v0, p2}, Lj6/m0;-><init>(Lr5/g;)V

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v0, p2}, Lj6/m0;->a(Lr5/g;)Lj6/m0;

    move-result-object v0

    goto/16 :goto_4

    :cond_3
    if-ne p2, v2, :cond_4

    move-object v3, v1

    goto :goto_0

    :cond_4
    move-object v3, p2

    :goto_0
    iget-object p1, v0, Lj6/m0;->m:Lr5/g;

    if-ne p1, v3, :cond_5

    goto :goto_4

    :cond_5
    new-instance v1, Lj6/m0;

    iget-object v2, v0, Lj6/m0;->l:Lr5/g;

    iget-object v4, v0, Lj6/m0;->n:Lr5/g;

    iget-object v5, v0, Lj6/m0;->o:Lr5/g;

    iget-object v6, v0, Lj6/m0;->p:Lr5/g;

    invoke-direct/range {v1 .. v6}, Lj6/m0;-><init>(Lr5/g;Lr5/g;Lr5/g;Lr5/g;Lr5/g;)V

    :goto_1
    move-object v0, v1

    goto :goto_4

    :cond_6
    if-ne p2, v2, :cond_7

    move-object v6, v1

    goto :goto_2

    :cond_7
    move-object v6, p2

    :goto_2
    iget-object p1, v0, Lj6/m0;->p:Lr5/g;

    if-ne p1, v6, :cond_8

    goto :goto_4

    :cond_8
    new-instance v1, Lj6/m0;

    iget-object v2, v0, Lj6/m0;->l:Lr5/g;

    iget-object v3, v0, Lj6/m0;->m:Lr5/g;

    iget-object v4, v0, Lj6/m0;->n:Lr5/g;

    iget-object v5, v0, Lj6/m0;->o:Lr5/g;

    invoke-direct/range {v1 .. v6}, Lj6/m0;-><init>(Lr5/g;Lr5/g;Lr5/g;Lr5/g;Lr5/g;)V

    goto :goto_1

    :cond_9
    if-ne p2, v2, :cond_a

    sget-object p2, Lr5/g;->l:Lr5/g;

    :cond_a
    move-object v4, p2

    iget-object p1, v0, Lj6/m0;->n:Lr5/g;

    if-ne p1, v4, :cond_b

    goto :goto_4

    :cond_b
    new-instance v1, Lj6/m0;

    iget-object v2, v0, Lj6/m0;->l:Lr5/g;

    iget-object v3, v0, Lj6/m0;->m:Lr5/g;

    iget-object v5, v0, Lj6/m0;->o:Lr5/g;

    iget-object v6, v0, Lj6/m0;->p:Lr5/g;

    invoke-direct/range {v1 .. v6}, Lj6/m0;-><init>(Lr5/g;Lr5/g;Lr5/g;Lr5/g;Lr5/g;)V

    goto :goto_1

    :cond_c
    if-ne p2, v2, :cond_d

    move-object v2, v1

    goto :goto_3

    :cond_d
    move-object v2, p2

    :goto_3
    iget-object p1, v0, Lj6/m0;->l:Lr5/g;

    if-ne p1, v2, :cond_e

    goto :goto_4

    :cond_e
    new-instance v1, Lj6/m0;

    iget-object v3, v0, Lj6/m0;->m:Lr5/g;

    iget-object v4, v0, Lj6/m0;->n:Lr5/g;

    iget-object v5, v0, Lj6/m0;->o:Lr5/g;

    iget-object v6, v0, Lj6/m0;->p:Lr5/g;

    invoke-direct/range {v1 .. v6}, Lj6/m0;-><init>(Lr5/g;Lr5/g;Lr5/g;Lr5/g;Lr5/g;)V

    goto :goto_1

    :goto_4
    iput-object v0, p0, La6/n;->n:Ljava/lang/Object;

    return-void
.end method

.method public final v(Lcom/graphhopper/routing/ev/EncodedValue;)Lb6/q;
    .locals 4

    if-nez p1, :cond_0

    iget-object p0, p0, Lb6/c0;->t:Lb6/h;

    iget-object p0, p0, Lb6/h;->v:Lp6/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lp6/t;->l:Lp6/t;

    return-object p0

    :cond_0
    iget-object v0, p0, Lb6/c0;->q:Lb6/p0;

    invoke-virtual {p0, v0}, Lb6/c0;->m(Lb6/p0;)Lq6/k;

    move-result-object v0

    invoke-static {p0}, Lb6/r0;->R(Lb6/c0;)Lu6/z;

    move-result-object v1

    sget-object v2, Lb6/j;->n:Lb6/j;

    iget-object v3, p0, Lb6/c0;->t:Lb6/h;

    invoke-virtual {v3, v2}, Lb6/h;->t(Lb6/j;)Z

    :try_start_0
    invoke-virtual {v0, v1, p1}, Lq6/k;->p0(Ls5/g;Ljava/lang/Object;)V

    iget-object p1, v1, Lu6/z;->m:Ls5/o;

    invoke-virtual {v1, p1}, Lu6/z;->I0(Ls5/o;)Lu6/x;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p1}, Lb6/c0;->a(Ls5/k;)Lb6/q;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Lu6/x;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1}, Lu6/x;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final w(Ljava/lang/Object;)[B
    .locals 8

    iget-object v0, p0, Lb6/c0;->l:Ls5/d;

    invoke-virtual {v0}, Ls5/d;->i()La6/b;

    move-result-object v1

    :try_start_0
    new-instance v6, La6/d;

    invoke-direct {v6, v1}, La6/d;-><init>(La6/b;)V
    :try_end_0
    .catch Ls5/l; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v0, v6}, Ls5/d;->e(Ljava/lang/Object;)Lw5/c;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ls5/d;->f(Lw5/c;Z)Lw5/d;

    move-result-object v3

    const/4 v1, 0x1

    iput v1, v3, Lw5/d;->n:I

    new-instance v2, Ly5/i;

    iget v4, v0, Ls5/d;->p:I

    iget-object v5, v0, Ls5/d;->r:Ls5/o;

    iget-char v7, v0, Ls5/d;->w:C

    invoke-direct/range {v2 .. v7}, Ly5/i;-><init>(Lw5/d;ILs5/o;La6/d;C)V

    iget-object v0, v0, Ls5/d;->v:Lw5/k;

    sget-object v1, Ls5/d;->A:Lw5/k;

    if-eq v0, v1, :cond_0

    iput-object v0, v2, Ly5/b;->w:Ls5/q;

    :cond_0
    iget-object v0, p0, Lb6/c0;->q:Lb6/p0;

    invoke-virtual {v0, v2}, Lb6/p0;->r(Ls5/g;)V

    invoke-virtual {p0, v2, p1}, Lb6/c0;->o(Ls5/g;Ljava/lang/Object;)V

    invoke-virtual {v6}, La6/d;->n()[B

    move-result-object p0

    invoke-virtual {v6}, La6/d;->m()V

    iget-object p1, v6, La6/d;->l:La6/b;

    if-eqz p1, :cond_1

    iget-object v0, v6, La6/d;->o:[B

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, La6/b;->c(I[B)V

    const/4 p1, 0x0

    iput-object p1, v6, La6/d;->o:[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    throw p0
    :try_end_3
    .catch Ls5/l; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    move-object p0, v0

    throw p0

    :catch_0
    move-exception v0

    move-object p0, v0

    invoke-static {p0}, Lb6/p;->e(Ljava/io/IOException;)Lb6/p;

    move-result-object p0

    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    throw p0
.end method

.method public final x(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lb6/c0;->l:Ls5/d;

    invoke-virtual {v0}, Ls5/d;->i()La6/b;

    move-result-object v1

    :try_start_0
    new-instance v2, Lw5/j;

    invoke-direct {v2, v1}, Lw5/j;-><init>(La6/b;)V
    :try_end_0
    .catch Ls5/l; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v0, v2}, Ls5/d;->j(Lw5/j;)Ls5/g;

    move-result-object v0

    iget-object v1, p0, Lb6/c0;->q:Lb6/p0;

    invoke-virtual {v1, v0}, Lb6/p0;->r(Ls5/g;)V

    invoke-virtual {p0, v0, p1}, Lb6/c0;->o(Ls5/g;Ljava/lang/Object;)V

    iget-object p0, v2, Lw5/j;->l:La6/s;

    invoke-virtual {p0}, La6/s;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, La6/s;->n()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catch Ls5/l; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p0

    throw p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lb6/p;->e(Ljava/io/IOException;)Lb6/p;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    throw p0
.end method
