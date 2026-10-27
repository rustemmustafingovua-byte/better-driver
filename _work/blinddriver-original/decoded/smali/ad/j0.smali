.class public final Lad/j0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lad/d0;

.field public static final X1:Ljava/util/List;


# instance fields
.field public A:D

.field public A0:J

.field public A1:D

.field public B:J

.field public B0:J

.field public B1:D

.field public C:Lua/nav/routing/Route;

.field public C0:Z

.field public C1:I

.field public D:D

.field public D0:Z

.field public D1:J

.field public E:D

.field public E0:J

.field public E1:D

.field public F:J

.field public F0:J

.field public F1:D

.field public G:J

.field public final G0:Lu8/k;

.field public G1:D

.field public H:D

.field public H0:Ljava/util/List;

.field public H1:I

.field public final I:Lu8/k;

.field public final I0:Ljava/util/HashSet;

.field public I1:J

.field public final J:Lu8/k;

.field public J0:Z

.field public J1:Lua/nav/routing/Route;

.field public volatile K:Z

.field public final K0:Lad/r0;

.field public K1:J

.field public L:Ljava/lang/Object;

.field public final L0:Lad/f;

.field public L1:J

.field public M:Ljava/lang/Object;

.field public M0:Lua/nav/routing/GeoPoint;

.field public M1:J

.field public final N:Lad/l;

.field public final N0:Ljava/util/ArrayList;

.field public N1:D

.field public O:Lp2/y;

.field public final O0:Lad/j2;

.field public O1:D

.field public P:Lad/f2;

.field public final P0:Lad/h2;

.field public P1:J

.field public Q:J

.field public Q0:Lt8/j;

.field public Q1:D

.field public final R:Ljava/util/HashSet;

.field public R0:Ljava/lang/Double;

.field public R1:D

.field public final S:Ljava/util/ArrayList;

.field public S0:Ljava/lang/Double;

.field public S1:J

.field public T:Lad/x1;

.field public final T0:Lad/z;

.field public T1:D

.field public U:Ljava/lang/Object;

.field public U0:Z

.field public U1:D

.field public V:Lu9/j1;

.field public final V0:Lad/e;

.field public V1:J

.field public W:J

.field public W0:J

.field public W1:J

.field public X:D

.field public X0:J

.field public Y:J

.field public Y0:Lua/nav/routing/GeoPoint;

.field public Z:J

.field public Z0:J

.field public final a:Ldd/k0;

.field public a0:Z

.field public a1:Z

.field public final b:Lad/r2;

.field public b0:D

.field public b1:Z

.field public final c:Lu9/t;

.field public c0:D

.field public c1:Lt8/p;

.field public final d:Lid/d1;

.field public final d0:Lad/f1;

.field public d1:J

.field public final e:Lwc/d;

.field public e0:Z

.field public e1:Z

.field public final f:Lad/z1;

.field public final f0:Lad/m1;

.field public final f1:Lad/b;

.field public final g:Lua/nav/a;

.field public g0:J

.field public g1:Lua/nav/routing/GeoPoint;

.field public final h:Lbd/l;

.field public h0:I

.field public h1:J

.field public final i:Lad/o;

.field public final i0:Lad/w0;

.field public i1:D

.field public final j:Lx9/l0;

.field public final j0:Lad/i1;

.field public j1:J

.field public final k:Lx9/l0;

.field public final k0:Lad/a1;

.field public k1:D

.field public l:Lp/a1;

.field public l0:Z

.field public l1:D

.field public m:Lsc/i;

.field public m0:Z

.field public m1:J

.field public n:Lod/m0;

.field public n0:Z

.field public final n1:Ljava/util/ArrayList;

.field public o:Lod/v;

.field public o0:J

.field public o1:I

.field public p:Lid/d0;

.field public p0:J

.field public p1:I

.field public q:Lad/q1;

.field public q0:D

.field public q1:Z

.field public r:J

.field public r0:J

.field public final r1:Ljava/util/HashMap;

.field public s:I

.field public s0:D

.field public s1:Z

.field public t:J

.field public t0:D

.field public t1:D

.field public u:D

.field public u0:Ljava/lang/Double;

.field public u1:J

.field public v:J

.field public v0:Lad/c1;

.field public v1:Ljava/lang/String;

.field public w:D

.field public w0:J

.field public w1:Ljava/lang/String;

.field public x:J

.field public x0:J

.field public x1:J

.field public y:J

.field public y0:J

.field public y1:I

.field public z:J

.field public z0:D

.field public z1:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lad/d0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lad/j0;->Companion:Lad/d0;

    const-wide v0, 0x408f400000000000L    # 1000.0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-wide/high16 v1, 0x4079000000000000L    # 400.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-wide v2, 0x4062c00000000000L    # 150.0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Double;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lad/j0;->X1:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ldd/k0;Lad/r2;Lu9/t;Lid/d1;Lwc/d;Lad/z1;Lua/nav/a;Lbd/l;Lad/o;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const-string v2, "scope"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v2, p1

    iput-object v2, v0, Lad/j0;->a:Ldd/k0;

    move-object/from16 v2, p2

    iput-object v2, v0, Lad/j0;->b:Lad/r2;

    iput-object v1, v0, Lad/j0;->c:Lu9/t;

    move-object/from16 v1, p4

    iput-object v1, v0, Lad/j0;->d:Lid/d1;

    move-object/from16 v1, p5

    iput-object v1, v0, Lad/j0;->e:Lwc/d;

    move-object/from16 v1, p6

    iput-object v1, v0, Lad/j0;->f:Lad/z1;

    move-object/from16 v1, p7

    iput-object v1, v0, Lad/j0;->g:Lua/nav/a;

    move-object/from16 v1, p8

    iput-object v1, v0, Lad/j0;->h:Lbd/l;

    move-object/from16 v1, p9

    iput-object v1, v0, Lad/j0;->i:Lad/o;

    new-instance v1, Lad/a0;

    const/16 v24, 0x0

    const/16 v25, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v1 .. v25}, Lad/a0;-><init>(Lua/nav/routing/Route;Lua/nav/routing/Step;DLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLua/nav/routing/GeoPoint;IDZLjava/lang/String;I)V

    invoke-static {v1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v1

    iput-object v1, v0, Lad/j0;->j:Lx9/l0;

    iput-object v1, v0, Lad/j0;->k:Lx9/l0;

    const/4 v1, -0x1

    iput v1, v0, Lad/j0;->s:I

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    iput-wide v2, v0, Lad/j0;->A:D

    iput-wide v2, v0, Lad/j0;->D:D

    new-instance v4, Lu8/k;

    invoke-direct {v4}, Lu8/k;-><init>()V

    iput-object v4, v0, Lad/j0;->I:Lu8/k;

    new-instance v4, Lu8/k;

    invoke-direct {v4}, Lu8/k;-><init>()V

    iput-object v4, v0, Lad/j0;->J:Lu8/k;

    sget-object v4, Lu8/r;->l:Lu8/r;

    iput-object v4, v0, Lad/j0;->L:Ljava/lang/Object;

    iput-object v4, v0, Lad/j0;->M:Ljava/lang/Object;

    new-instance v5, Lad/l;

    new-instance v6, Lad/t;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v0}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-direct {v5, v6}, Lad/l;-><init>(Li9/a;)V

    new-instance v6, Lad/b0;

    invoke-direct {v6, v0, v7}, Lad/b0;-><init>(Lad/j0;I)V

    iput-object v6, v5, Lad/l;->l:Li9/c;

    iput-object v5, v0, Lad/j0;->N:Lad/l;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    iput-object v5, v0, Lad/j0;->R:Ljava/util/HashSet;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lad/j0;->S:Ljava/util/ArrayList;

    iput-object v4, v0, Lad/j0;->U:Ljava/lang/Object;

    new-instance v5, Lad/f1;

    invoke-direct {v5}, Lad/f1;-><init>()V

    iput-object v5, v0, Lad/j0;->d0:Lad/f1;

    new-instance v5, Lad/m1;

    invoke-direct {v5}, Lad/m1;-><init>()V

    iput-object v5, v0, Lad/j0;->f0:Lad/m1;

    new-instance v5, Lad/w0;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, v0, Lad/j0;->i0:Lad/w0;

    new-instance v5, Lad/i1;

    invoke-direct {v5}, Lad/i1;-><init>()V

    iput-object v5, v0, Lad/j0;->j0:Lad/i1;

    new-instance v5, Lad/a1;

    invoke-direct {v5}, Lad/a1;-><init>()V

    iput-object v5, v0, Lad/j0;->k0:Lad/a1;

    const-wide/16 v5, -0x1

    iput-wide v5, v0, Lad/j0;->r0:J

    iput-wide v2, v0, Lad/j0;->s0:D

    iput-wide v2, v0, Lad/j0;->t0:D

    iput-wide v5, v0, Lad/j0;->A0:J

    const-wide/32 v7, -0x1d4c0

    iput-wide v7, v0, Lad/j0;->F0:J

    new-instance v7, Lu8/k;

    invoke-direct {v7}, Lu8/k;-><init>()V

    iput-object v7, v0, Lad/j0;->G0:Lu8/k;

    iput-object v4, v0, Lad/j0;->H0:Ljava/util/List;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, v0, Lad/j0;->I0:Ljava/util/HashSet;

    new-instance v4, Lad/r0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lad/j0;->K0:Lad/r0;

    new-instance v4, Lad/f;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-wide v5, v4, Lad/f;->a:J

    iput-object v4, v0, Lad/j0;->L0:Lad/f;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lad/j0;->N0:Ljava/util/ArrayList;

    new-instance v4, Lad/j2;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-wide v5, v4, Lad/j2;->a:J

    iput-wide v5, v4, Lad/j2;->c:J

    iput-object v4, v0, Lad/j0;->O0:Lad/j2;

    new-instance v4, Lad/h2;

    invoke-direct {v4}, Lad/h2;-><init>()V

    iput-object v4, v0, Lad/j0;->P0:Lad/h2;

    new-instance v4, Lad/z;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lad/j0;->T0:Lad/z;

    new-instance v4, Lad/e;

    invoke-direct {v4}, Lad/e;-><init>()V

    iput-object v4, v0, Lad/j0;->V0:Lad/e;

    new-instance v4, Lad/b;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-wide v5, v4, Lad/b;->b:J

    iput-object v4, v0, Lad/j0;->f1:Lad/b;

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v4, v0, Lad/j0;->i1:D

    const-wide/16 v6, -0x7530

    iput-wide v6, v0, Lad/j0;->m1:J

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lad/j0;->n1:Ljava/util/ArrayList;

    iput v1, v0, Lad/j0;->o1:I

    iput v1, v0, Lad/j0;->p1:I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Lad/j0;->r1:Ljava/util/HashMap;

    const-string v6, "\u2014"

    iput-object v6, v0, Lad/j0;->v1:Ljava/lang/String;

    const-string v6, ""

    iput-object v6, v0, Lad/j0;->w1:Ljava/lang/String;

    iput v1, v0, Lad/j0;->y1:I

    iput-wide v4, v0, Lad/j0;->A1:D

    iput v1, v0, Lad/j0;->C1:I

    iput-wide v2, v0, Lad/j0;->N1:D

    return-void
.end method

.method public static synthetic A(Lad/j0;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Lt8/j;I)V
    .locals 2

    and-int/lit8 v0, p7, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p5, v1

    :cond_0
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_2

    move-object p7, v1

    :goto_1
    move p6, v0

    goto :goto_2

    :cond_2
    move-object p7, p6

    goto :goto_1

    :goto_2
    invoke-virtual/range {p0 .. p7}, Lad/j0;->z(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;ZLt8/j;)V

    return-void
.end method

.method public static synthetic C(Lad/j0;Lua/nav/routing/GeoPoint;I)V
    .locals 1

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lad/j0;->B(Lua/nav/routing/GeoPoint;ZLad/o0;)V

    return-void
.end method

.method public static H(Lad/x1;)Lua/nav/routing/Step;
    .locals 9

    iget-object v0, p0, Lad/x1;->a:Lua/nav/routing/Route;

    iget-object v0, v0, Lua/nav/routing/Route;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    move v8, v3

    move v3, v2

    move v2, v8

    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Lad/x1;->h(I)D

    move-result-wide v4

    iget-wide v6, p0, Lad/x1;->b:D

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    add-int/lit8 v3, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v3, v0}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lua/nav/routing/Step;

    if-nez p0, :cond_1

    invoke-static {v0}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lua/nav/routing/Step;

    :cond_1
    return-object p0
.end method

.method public static final a(Lad/j0;La9/c;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lad/i0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lad/i0;

    iget v1, v0, Lad/i0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lad/i0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lad/i0;

    invoke-direct {v0, p0, p1}, Lad/i0;-><init>(Lad/j0;La9/c;)V

    :goto_0
    iget-object p1, v0, Lad/i0;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lad/i0;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lad/j0;->M1:J

    :cond_3
    :goto_1
    iget-object p1, p0, Lad/j0;->c:Lu9/t;

    invoke-static {p1}, Lu9/v;->r(Lu9/t;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lad/j0;->T:Lad/x1;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lad/j0;->I()V

    iput v3, v0, Lad/i0;->n:I

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5, v0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_4
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method


# virtual methods
.method public final B(Lua/nav/routing/GeoPoint;ZLad/o0;)V
    .locals 48

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    const-string v0, "from"

    invoke-static {v4, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v3, Lad/j0;->j:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/a0;

    iget-object v2, v1, Lad/a0;->t:Lua/nav/routing/GeoPoint;

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/a0;

    iget-boolean v1, v1, Lad/a0;->r:Z

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const-wide/32 v5, 0x15f90

    iget-object v1, v3, Lad/j0;->L0:Lad/f;

    iget-object v7, v3, Lad/j0;->a:Ldd/k0;

    if-eqz p2, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, v3, Lad/j0;->Y:J

    sub-long v10, v8, v10

    const-wide/16 v12, 0xbb8

    cmp-long v10, v10, v12

    if-ltz v10, :cond_4

    iget-wide v10, v3, Lad/j0;->x:J

    const-wide/16 v12, 0x0

    cmp-long v12, v10, v12

    if-lez v12, :cond_4

    sub-long v10, v8, v10

    const-wide/16 v12, 0x61a8

    cmp-long v12, v10, v12

    if-gez v12, :cond_4

    const/16 v2, 0x3e8

    int-to-long v2, v2

    div-long/2addr v10, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "reroute_debounced since_s="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lad/a0;

    iget-boolean v2, v2, Lad/a0;->A:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1, v8, v9, v5, v6}, Lad/f;->c(JJ)V

    :cond_2
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lad/a0;

    const v40, -0xc000001

    const/16 v41, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-static/range {v2 .. v41}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_3
    :goto_0
    return-void

    :cond_4
    iput-wide v8, v3, Lad/j0;->x:J

    :cond_5
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lad/a0;

    iget-boolean v8, v8, Lad/a0;->A:Z

    if-eqz v8, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9, v5, v6}, Lad/f;->c(JJ)V

    :cond_6
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lad/a0;

    const v46, -0xc000001

    const/16 v47, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    invoke-static/range {v8 .. v47}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_7
    :goto_1
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lad/a0;

    const v46, -0x20001

    const/16 v47, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x1

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    invoke-static/range {v8 .. v47}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v0, v3, Lad/j0;->T:Lad/x1;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    sget-object v0, Lu8/r;->l:Lu8/r;

    goto :goto_4

    :cond_8
    iget-object v5, v3, Lad/j0;->L:Ljava/lang/Object;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_9
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lt8/j;

    iget-object v9, v9, Lt8/j;->m:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    iget-wide v11, v0, Lad/x1;->b:D

    const-wide/high16 v13, 0x403e000000000000L    # 30.0

    add-double/2addr v11, v13

    cmpl-double v9, v9, v11

    if-lez v9, :cond_9

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v6, v5}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v8, v1

    :goto_3
    if-ge v8, v5, :cond_b

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lt8/j;

    iget-object v9, v9, Lt8/j;->l:Ljava/lang/Object;

    check-cast v9, Lua/nav/routing/GeoPoint;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    :goto_4
    if-nez p3, :cond_c

    invoke-virtual/range {p0 .. p1}, Lad/j0;->F(Lua/nav/routing/GeoPoint;)Lad/o0;

    move-result-object v5

    goto :goto_5

    :cond_c
    move-object/from16 v5, p3

    :goto_5
    const/4 v8, 0x0

    if-eqz v5, :cond_d

    iget-wide v9, v5, Lad/o0;->a:D

    invoke-static {v9, v10, v1}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v6

    iget-wide v9, v5, Lad/o0;->b:D

    const-wide v11, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v9, v11

    invoke-static {v9, v10, v1}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v1

    iget-object v9, v5, Lad/o0;->c:Ljava/lang/String;

    const-string v10, " v="

    const-string v11, " src="

    const-string v12, " heading="

    invoke-static {v12, v6, v10, v1, v11}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_d
    move-object v1, v8

    :goto_6
    if-nez v1, :cond_e

    const-string v1, ""

    :cond_e
    iget-wide v9, v4, Lua/nav/routing/GeoPoint;->a:D

    const/4 v6, 0x5

    invoke-static {v9, v10, v6}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v9

    iget-wide v10, v4, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v10, v11, v6}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    const-string v11, " "

    const-string v12, " via="

    const-string v13, "reroute_from "

    invoke-static {v13, v9, v11, v6, v12}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ldd/k0;->n(Ljava/lang/String;)V

    iput-object v0, v3, Lad/j0;->M:Ljava/lang/Object;

    move-object v1, v0

    new-instance v0, Lad/h0;

    const/4 v7, 0x0

    move/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Lad/h0;-><init>(Ljava/util/List;Lua/nav/routing/GeoPoint;Lad/j0;Lua/nav/routing/GeoPoint;Lad/o0;ZLy8/c;)V

    const/4 v1, 0x3

    iget-object v2, v3, Lad/j0;->c:Lu9/t;

    invoke-static {v2, v8, v8, v0, v1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void

    :cond_f
    move-object/from16 v4, p1

    goto/16 :goto_1
.end method

.method public final D(Lad/x1;D)Ljava/lang/Double;
    .locals 18

    move-object/from16 v0, p1

    iget-wide v1, v0, Lad/x1;->b:D

    const-wide/high16 v3, 0x4079000000000000L    # 400.0

    sub-double v3, v1, v3

    const-wide/16 v5, 0x0

    cmpg-double v7, v3, v5

    if-gez v7, :cond_0

    move-wide v3, v5

    :cond_0
    const-wide v7, 0x4072c00000000000L    # 300.0

    add-double/2addr v1, v7

    iget-object v7, v0, Lad/x1;->a:Lua/nav/routing/Route;

    invoke-virtual {v7}, Lua/nav/routing/Route;->c()D

    move-result-wide v7

    cmpl-double v9, v1, v7

    if-lez v9, :cond_1

    move-wide v1, v7

    :cond_1
    sub-double v7, v1, v3

    const/4 v9, 0x2

    int-to-double v9, v9

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    mul-double/2addr v9, v11

    cmpg-double v7, v7, v9

    const/4 v8, 0x0

    if-gez v7, :cond_2

    return-object v8

    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3, v4}, Lad/x1;->d(D)Lad/v1;

    move-result-object v9

    iget v9, v9, Lad/v1;->b:F

    float-to-double v9, v9

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-double/2addr v3, v11

    move-wide v13, v5

    :goto_0
    cmpg-double v15, v3, v1

    if-gtz v15, :cond_3

    invoke-virtual {v0, v3, v4}, Lad/x1;->d(D)Lad/v1;

    move-result-object v15

    iget v15, v15, Lad/v1;->b:F

    move-wide/from16 v16, v5

    float-to-double v5, v15

    move-object/from16 v15, p0

    iget-object v8, v15, Lad/j0;->N:Lad/l;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9, v10, v5, v6}, Lad/l;->f(DD)D

    move-result-wide v8

    add-double/2addr v13, v8

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-double/2addr v3, v11

    move-wide v9, v5

    move-wide/from16 v5, v16

    const/4 v8, 0x0

    goto :goto_0

    :cond_3
    move-wide/from16 v16, v5

    const-wide/high16 v0, 0x4044000000000000L    # 40.0

    double-to-int v0, v0

    const-wide v1, 0x3fe6666666666666L    # 0.7

    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v2, v1, :cond_7

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    add-int v9, v2, v0

    invoke-static {v6, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-gt v5, v6, :cond_6

    move v9, v5

    :goto_2
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    const-string v13, "get(...)"

    invoke-static {v12, v13}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    sub-double/2addr v10, v12

    mul-double v12, v10, p2

    cmpl-double v12, v12, v16

    if-lez v12, :cond_5

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpl-double v12, v12, v3

    if-ltz v12, :cond_5

    if-eqz v8, :cond_4

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    cmpl-double v12, v12, v14

    if-lez v12, :cond_5

    :cond_4
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    :cond_5
    if-eq v9, v6, :cond_6

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_6
    move v2, v5

    goto :goto_1

    :cond_7
    return-object v8
.end method

.method public final E(Lad/x1;J)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v4

    iget-wide v5, v4, Lua/nav/Tuning;->s:J

    iget-object v7, v0, Lad/j0;->N:Lad/l;

    invoke-virtual {v7, v2, v3, v5, v6}, Lad/l;->b(JJ)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    iget-wide v10, v4, Lua/nav/Tuning;->o:D

    cmpg-double v8, v8, v10

    if-gez v8, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v8, v1, Lad/x1;->a:Lua/nav/routing/Route;

    iget-wide v12, v4, Lua/nav/Tuning;->p:D

    iget-object v9, v8, Lua/nav/routing/Route;->f:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    const/4 v14, -0x1

    const/4 v15, 0x0

    move-wide/from16 v16, v10

    :goto_0
    const-wide/16 v18, 0x0

    iget-object v10, v0, Lad/j0;->R:Ljava/util/HashSet;

    if-ge v15, v9, :cond_9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    iget-object v10, v8, Lua/nav/routing/Route;->f:Ljava/util/List;

    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lua/nav/routing/Step;

    iget-object v11, v10, Lua/nav/routing/Step;->a:Ljava/lang/String;

    move-object/from16 v20, v8

    const-string v8, "depart"

    invoke-static {v11, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v10, Lua/nav/routing/Step;->a:Ljava/lang/String;

    const-string v10, "arrive"

    invoke-static {v8, v10}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    move-object/from16 v22, v4

    :goto_1
    move/from16 v21, v9

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v1, v15}, Lad/x1;->h(I)D

    move-result-wide v10

    move/from16 v21, v9

    iget-wide v8, v1, Lad/x1;->b:D

    move-wide/from16 v22, v8

    iget-wide v8, v4, Lua/nav/Tuning;->q:D

    sub-double v8, v22, v8

    cmpg-double v8, v10, v8

    if-ltz v8, :cond_3

    iget-wide v8, v4, Lua/nav/Tuning;->r:D

    add-double v8, v22, v8

    cmpl-double v8, v10, v8

    if-lez v8, :cond_4

    :cond_3
    move-object/from16 v22, v4

    goto :goto_3

    :cond_4
    const-wide/high16 v8, 0x4039000000000000L    # 25.0

    sub-double v22, v10, v8

    cmpg-double v24, v22, v18

    if-gez v24, :cond_5

    move-wide/from16 v24, v8

    move-wide/from16 v8, v18

    goto :goto_2

    :cond_5
    move-wide/from16 v24, v8

    move-wide/from16 v8, v22

    :goto_2
    invoke-virtual {v1, v8, v9}, Lad/x1;->d(D)Lad/v1;

    move-result-object v8

    iget v8, v8, Lad/v1;->b:F

    float-to-double v8, v8

    add-double v10, v10, v24

    move-object/from16 v22, v4

    iget-object v4, v1, Lad/x1;->a:Lua/nav/routing/Route;

    invoke-virtual {v4}, Lua/nav/routing/Route;->c()D

    move-result-wide v18

    cmpl-double v4, v10, v18

    if-lez v4, :cond_6

    move-wide/from16 v10, v18

    :cond_6
    invoke-virtual {v1, v10, v11}, Lad/x1;->d(D)Lad/v1;

    move-result-object v4

    iget v4, v4, Lad/v1;->b:F

    float-to-double v10, v4

    invoke-static {v8, v9, v10, v11}, Lad/l;->f(DD)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v10

    const-wide v18, 0x3fe999999999999aL    # 0.8

    mul-double v18, v18, v16

    cmpg-double v4, v10, v18

    if-ltz v4, :cond_8

    sub-double/2addr v8, v5

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    cmpg-double v4, v8, v12

    if-gez v4, :cond_8

    move-wide v12, v8

    move v14, v15

    goto :goto_3

    :cond_7
    move-object/from16 v22, v4

    move-object/from16 v20, v8

    goto :goto_1

    :cond_8
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, v20

    move/from16 v9, v21

    move-object/from16 v4, v22

    goto/16 :goto_0

    :cond_9
    if-gez v14, :cond_a

    goto :goto_4

    :cond_a
    invoke-virtual/range {p0 .. p1}, Lad/j0;->v(Lad/x1;)Lad/e0;

    move-result-object v4

    const-string v8, " gyro="

    iget-object v9, v0, Lad/j0;->a:Ldd/k0;

    if-eqz v4, :cond_c

    iget v11, v4, Lad/e0;->a:I

    if-ge v11, v14, :cond_c

    invoke-virtual {v1, v14}, Lad/x1;->h(I)D

    move-result-wide v12

    move-wide v15, v12

    iget-wide v12, v4, Lad/e0;->b:D

    sub-double v12, v15, v12

    const-wide/high16 v15, 0x403e000000000000L    # 30.0

    cmpl-double v12, v12, v15

    if-ltz v12, :cond_c

    iget v1, v0, Lad/j0;->p1:I

    if-eq v1, v14, :cond_b

    iput v14, v0, Lad/j0;->p1:I

    double-to-int v0, v5

    iget-wide v1, v4, Lad/e0;->c:D

    double-to-int v1, v1

    const-string v2, "turn_snap_skip step="

    const-string v3, " over="

    invoke-static {v2, v14, v8, v0, v3}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " route_turn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void

    :cond_c
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v14}, Lad/x1;->h(I)D

    move-result-wide v10

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    add-double/2addr v10, v12

    double-to-int v4, v5

    iget-wide v5, v1, Lad/x1;->b:D

    double-to-int v5, v5

    double-to-int v6, v10

    const-string v12, "turn_snap step="

    const-string v13, " from_s="

    invoke-static {v12, v14, v8, v4, v13}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to_s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ldd/k0;->n(Ljava/lang/String;)V

    invoke-virtual {v1, v10, v11}, Lad/x1;->g(D)V

    move-wide/from16 v4, v18

    iput-wide v4, v0, Lad/j0;->z0:D

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    invoke-virtual {v0, v1, v4, v5}, Lad/j0;->d(Lad/x1;D)V

    iput-wide v2, v7, Lad/l;->g:J

    return-void
.end method

.method public final F(Lua/nav/routing/GeoPoint;)Lad/o0;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "from"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lad/j0;->m:Lsc/i;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lsc/i;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lad/o0;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Lad/j0;->X:D

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    cmpg-double v6, v6, v8

    if-gez v6, :cond_5

    if-eqz v2, :cond_1

    iget-wide v6, v2, Lad/o0;->b:D

    cmpg-double v6, v6, v8

    if-gez v6, :cond_5

    :cond_1
    iget-object v6, v0, Lad/j0;->c1:Lt8/p;

    if-eqz v6, :cond_2

    iget-object v7, v6, Lt8/p;->l:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    iget-object v7, v6, Lt8/p;->m:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    iget-object v6, v6, Lt8/p;->n:Ljava/lang/Object;

    check-cast v6, Lua/nav/routing/GeoPoint;

    sub-long v7, v4, v7

    const-wide/32 v11, 0x1b7740

    cmp-long v7, v7, v11

    if-gtz v7, :cond_2

    sget-object v7, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v11, v6, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v13, v6, Lua/nav/routing/GeoPoint;->b:D

    move-wide/from16 v19, v4

    const/4 v6, 0x0

    iget-wide v3, v1, Lua/nav/routing/GeoPoint;->a:D

    move-object v8, v6

    move-object v5, v7

    iget-wide v6, v1, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v15, v3

    move-wide/from16 v17, v6

    invoke-static/range {v11 .. v18}, Ldd/s0;->a(DDDD)D

    move-result-wide v3

    const-wide v5, 0x4062c00000000000L    # 150.0

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_3

    new-instance v8, Lad/o0;

    const-wide/16 v11, 0x0

    const-string v13, "GPS_LAST"

    invoke-direct/range {v8 .. v13}, Lad/o0;-><init>(DDLjava/lang/String;)V

    return-object v8

    :cond_2
    move-wide/from16 v19, v4

    const/4 v8, 0x0

    :cond_3
    if-eqz v2, :cond_4

    iget-wide v0, v0, Lad/j0;->Y:J

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_4

    sub-long v4, v19, v0

    const-wide/32 v0, 0x493e0

    cmp-long v0, v4, v0

    if-gtz v0, :cond_4

    return-object v2

    :cond_4
    return-object v8

    :cond_5
    return-object v2
.end method

.method public final G(Lad/x1;JLjava/lang/Double;D)Z
    .locals 12

    iget-boolean v2, p0, Lad/j0;->m0:Z

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lad/j0;->N:Lad/l;

    iget-boolean v4, v2, Lad/l;->h:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    iput-boolean v5, p0, Lad/j0;->n0:Z

    :cond_1
    iget-wide v6, p0, Lad/j0;->Y:J

    iget-wide v8, p0, Lad/j0;->Z:J

    cmp-long v4, v6, v8

    const-string v6, "moving"

    const-string v7, "resume"

    if-lez v4, :cond_2

    const-string v4, "gps"

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    cmpl-double v4, v8, v10

    if-ltz v4, :cond_3

    const-string v4, "net"

    goto :goto_0

    :cond_3
    iget-boolean v4, p0, Lad/j0;->n0:Z

    if-eqz v4, :cond_4

    iget-boolean v8, v2, Lad/l;->h:Z

    if-nez v8, :cond_4

    move-object v4, v7

    goto :goto_0

    :cond_4
    if-nez v4, :cond_5

    iget-wide v8, p0, Lad/j0;->Z:J

    sub-long v8, p2, v8

    const-wide/16 v10, 0x4e20

    cmp-long v4, v8, v10

    if-ltz v4, :cond_5

    move-object v4, v6

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_6

    return v5

    :cond_6
    iput-boolean v3, p0, Lad/j0;->m0:Z

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iput-wide p2, v2, Lad/l;->g:J

    goto :goto_1

    :cond_7
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-wide v5, p0, Lad/j0;->Z:J

    sub-long v5, p2, v5

    long-to-double v5, v5

    mul-double v5, v5, p5

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v7

    const-wide v7, 0x4072c00000000000L    # 300.0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lad/x1;->a(D)V

    :cond_8
    :goto_1
    iget-wide v5, p0, Lad/j0;->Z:J

    sub-long v0, p2, v5

    const/16 v2, 0x3e8

    int-to-long v5, v2

    div-long/2addr v0, v5

    iget-wide v5, p1, Lad/x1;->b:D

    double-to-int p1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "start_gate open="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " after_s="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " s="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lad/j0;->a:Ldd/k0;

    invoke-virtual {p0, p1}, Ldd/k0;->n(Ljava/lang/String;)V

    return v3
.end method

.method public final I()V
    .locals 96

    move-object/from16 v0, p0

    iget-object v1, v0, Lad/j0;->T:Lad/x1;

    if-nez v1, :cond_0

    goto/16 :goto_56

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-wide v1, v0, Lad/j0;->M1:J

    sub-long v1, v5, v1

    long-to-double v1, v1

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double v8, v1, v12

    iput-wide v5, v0, Lad/j0;->M1:J

    iget-object v1, v0, Lad/j0;->a:Ldd/k0;

    iget-object v1, v1, Ldd/k0;->j:Ldd/m;

    iget-object v1, v1, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ldd/n;

    iget-object v1, v0, Lad/j0;->T:Lad/x1;

    const/4 v2, 0x0

    move-wide/from16 v25, v12

    if-nez v1, :cond_1

    const-string v1, "\u2014"

    move-wide/from16 v35, v8

    :goto_0
    const-wide/16 v27, 0x0

    goto/16 :goto_51

    :cond_1
    iget-object v15, v14, Ldd/n;->h:Ldd/t;

    sget-object v3, Ldd/t;->n:Ldd/t;

    if-eq v15, v3, :cond_3

    iget-boolean v3, v0, Lad/j0;->K:Z

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    :goto_2
    iget-object v4, v0, Lad/j0;->K0:Lad/r0;

    iget-boolean v15, v14, Ldd/n;->i:Z

    iget-boolean v7, v4, Lad/r0;->b:Z

    if-eqz v7, :cond_4

    if-eqz v15, :cond_5

    :cond_4
    iget-boolean v7, v4, Lad/r0;->c:Z

    if-eqz v7, :cond_6

    if-nez v3, :cond_6

    :cond_5
    const-wide/32 v16, 0x493e0

    const-wide/16 v31, 0x0

    add-long v11, v5, v16

    iput-wide v11, v4, Lad/r0;->a:J

    iput v2, v4, Lad/r0;->d:I

    goto :goto_3

    :cond_6
    const-wide/16 v31, 0x0

    :goto_3
    iput-boolean v15, v4, Lad/r0;->b:Z

    iput-boolean v3, v4, Lad/r0;->c:Z

    invoke-virtual {v4, v5, v6}, Lad/r0;->a(J)Z

    move-result v3

    iget-boolean v4, v0, Lad/j0;->U0:Z

    if-eq v3, v4, :cond_7

    iput-boolean v3, v0, Lad/j0;->U0:Z

    iget-object v4, v0, Lad/j0;->a:Ldd/k0;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "jam_recovery="

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0, v1, v14, v5, v6}, Lad/j0;->q(Lad/x1;Ldd/n;J)V

    iget-wide v3, v0, Lad/j0;->Y:J

    sub-long v11, v5, v3

    const-wide/16 v33, 0xbb8

    cmp-long v7, v11, v33

    if-gez v7, :cond_8

    cmp-long v3, v3, v31

    if-nez v3, :cond_9

    :cond_8
    invoke-virtual {v0, v1, v5, v6}, Lad/j0;->t(Lad/x1;J)V

    :cond_9
    iget-boolean v3, v0, Lad/j0;->K:Z

    if-eqz v3, :cond_a

    const/4 v3, 0x0

    goto :goto_4

    :cond_a
    iget-object v3, v14, Ldd/n;->a:Ldd/l0;

    :goto_4
    iget-object v4, v14, Ldd/n;->b:Ldd/y0;

    move-wide/from16 v35, v8

    const-wide v37, 0x3fd3333333333333L    # 0.3

    const-string v11, "GPS"

    const-wide/high16 v39, 0x4039000000000000L    # 25.0

    const-string v13, "NUDGE"

    const-wide/high16 v41, 0x403e000000000000L    # 30.0

    const-wide v43, 0x4072c00000000000L    # 300.0

    if-eqz v3, :cond_31

    move-object/from16 v48, v13

    iget-wide v12, v3, Ldd/l0;->c:J

    move-object/from16 v50, v11

    const/16 v49, 0x1

    iget-wide v10, v0, Lad/j0;->W:J

    cmp-long v7, v12, v10

    if-lez v7, :cond_15

    if-eqz v4, :cond_15

    iget-object v7, v4, Ldd/y0;->a:Ldd/u0;

    sget-object v10, Ldd/u0;->n:Ldd/u0;

    if-eq v7, v10, :cond_15

    iput-wide v12, v0, Lad/j0;->W:J

    new-instance v7, Lua/nav/routing/GeoPoint;

    iget-wide v10, v3, Ldd/l0;->d:D

    iget-wide v12, v3, Ldd/l0;->e:D

    invoke-direct {v7, v10, v11, v12, v13}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-virtual {v0, v3}, Lad/j0;->o(Ldd/l0;)Ljava/lang/Double;

    move-result-object v23

    const/16 v24, 0xe

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    move-object v15, v1

    move-object/from16 v16, v7

    invoke-static/range {v15 .. v24}, Lad/x1;->e(Lad/x1;Lua/nav/routing/GeoPoint;DDDLjava/lang/Double;I)Lad/w1;

    move-result-object v10

    iget-object v1, v4, Ldd/y0;->a:Ldd/u0;

    sget-object v4, Ldd/u0;->l:Ldd/u0;

    if-ne v1, v4, :cond_b

    move/from16 v11, v49

    goto :goto_5

    :cond_b
    move v11, v2

    :goto_5
    iget-object v1, v0, Lad/j0;->K0:Lad/r0;

    if-eqz v11, :cond_c

    iget v4, v1, Lad/r0;->d:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_c
    move v4, v2

    :goto_6
    iput v4, v1, Lad/r0;->d:I

    invoke-virtual {v1, v5, v6}, Lad/r0;->a(J)Z

    move-result v12

    if-eqz v12, :cond_d

    const-wide v16, 0x4082c00000000000L    # 600.0

    goto :goto_7

    :cond_d
    move-wide/from16 v16, v43

    :goto_7
    if-eqz v12, :cond_10

    iget-object v1, v3, Ldd/l0;->i:Ljava/lang/Float;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_8

    :cond_e
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    :goto_8
    const/high16 v4, 0x43160000    # 150.0f

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_f

    goto :goto_9

    :cond_f
    move v1, v2

    goto :goto_a

    :cond_10
    :goto_9
    move/from16 v1, v49

    :goto_a
    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v4

    move-object v13, v3

    iget-wide v2, v4, Lua/nav/Tuning;->D:D

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v4

    iget-wide v7, v4, Lua/nav/Tuning;->x:D

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget-wide v7, v10, Lad/w1;->b:D

    cmpg-double v4, v7, v2

    if-gez v4, :cond_11

    iget-wide v7, v10, Lad/w1;->a:D

    move-object/from16 v20, v10

    iget-wide v9, v15, Lad/x1;->b:D

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v16

    if-gez v7, :cond_12

    if-eqz v1, :cond_12

    move/from16 v8, v49

    goto :goto_b

    :cond_11
    move-object/from16 v20, v10

    :cond_12
    const/4 v8, 0x0

    :goto_b
    if-nez v11, :cond_13

    move-wide v6, v5

    move-object/from16 v10, v20

    const/4 v9, 0x0

    move-wide v4, v2

    iget-wide v2, v10, Lad/w1;->b:D

    move-object v1, v13

    const/16 v29, 0x2

    move v13, v9

    invoke-virtual/range {v0 .. v7}, Lad/j0;->j(Ldd/l0;DDJ)V

    move-wide v2, v4

    move-wide v5, v6

    goto :goto_c

    :cond_13
    move-object v1, v13

    move-object/from16 v10, v20

    const/4 v13, 0x0

    const/16 v29, 0x2

    :goto_c
    if-nez v11, :cond_16

    if-eqz v8, :cond_14

    goto :goto_e

    :cond_14
    move-object v1, v15

    :cond_15
    move/from16 v12, v49

    move-object/from16 v93, v50

    :goto_d
    const-wide/16 v27, 0x0

    goto/16 :goto_1e

    :cond_16
    :goto_e
    iget-wide v7, v10, Lad/w1;->b:D

    cmpg-double v2, v7, v2

    if-gez v2, :cond_17

    iget-object v2, v0, Lad/j0;->P0:Lad/h2;

    iget-object v2, v2, Lad/h2;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_17
    iget-object v2, v0, Lad/j0;->j:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lad/a0;

    iget-boolean v2, v2, Lad/a0;->A:Z

    if-eqz v2, :cond_19

    iget-object v2, v0, Lad/j0;->L0:Lad/f;

    const-wide/32 v3, 0x15f90

    invoke-virtual {v2, v5, v6, v3, v4}, Lad/f;->c(JJ)V

    iget-object v2, v0, Lad/j0;->a:Ldd/k0;

    const-string v3, "blind_deviation_gps_return"

    invoke-virtual {v2, v3}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-object v2, v0, Lad/j0;->j:Lx9/l0;

    :cond_18
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v53, v3

    check-cast v53, Lad/a0;

    const v91, -0xc000001

    const/16 v92, 0x1

    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const-wide/16 v61, 0x0

    const/16 v63, 0x0

    const-wide/16 v64, 0x0

    const-wide/16 v66, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const-wide/16 v71, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const-wide/16 v79, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    invoke-static/range {v53 .. v92}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    :cond_19
    iget-wide v2, v0, Lad/j0;->u1:J

    cmp-long v2, v5, v2

    if-gez v2, :cond_1c

    iget-wide v2, v10, Lad/w1;->a:D

    iget-wide v7, v15, Lad/x1;->b:D

    sub-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v41

    if-lez v2, :cond_1c

    iget-object v2, v1, Ldd/l0;->g:Ljava/lang/Float;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v0, Lad/j0;->X:D

    move/from16 v4, v49

    iput-boolean v4, v0, Lad/j0;->a0:Z

    iput-wide v2, v0, Lad/j0;->b0:D

    :cond_1a
    iget-wide v1, v1, Ldd/l0;->c:J

    iput-wide v1, v0, Lad/j0;->Y:J

    iget-wide v1, v0, Lad/j0;->X:D

    cmpl-double v3, v1, v37

    if-lez v3, :cond_1b

    mul-double v1, v1, v35

    invoke-virtual {v15, v1, v2}, Lad/x1;->a(D)V

    :cond_1b
    move-object/from16 v1, v48

    goto/16 :goto_0

    :cond_1c
    move-wide/from16 v2, v31

    iput-wide v2, v0, Lad/j0;->u1:J

    if-eqz v11, :cond_1e

    iget v2, v0, Lad/j0;->H1:I

    if-eqz v2, :cond_1e

    iget-object v3, v0, Lad/j0;->a:Ldd/k0;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "manual_motion_cleared reason=gps mode="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    iput v13, v0, Lad/j0;->H1:I

    iget-object v2, v0, Lad/j0;->j:Lx9/l0;

    :cond_1d
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v53, v3

    check-cast v53, Lad/a0;

    const v91, 0x7fffffff

    const/16 v92, 0x1

    const/16 v54, 0x0

    const-wide/16 v55, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const-wide/16 v61, 0x0

    const/16 v63, 0x0

    const-wide/16 v64, 0x0

    const-wide/16 v66, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const-wide/16 v71, 0x0

    const/16 v73, 0x0

    const/16 v74, 0x0

    const/16 v75, 0x0

    const/16 v76, 0x0

    const/16 v77, 0x0

    const/16 v78, 0x0

    const-wide/16 v79, 0x0

    const/16 v81, 0x0

    const/16 v82, 0x0

    const/16 v83, 0x0

    const/16 v84, 0x0

    const/16 v85, 0x0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v88, 0x0

    const/16 v89, 0x0

    const/16 v90, 0x0

    invoke-static/range {v53 .. v92}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    :cond_1e
    iget-wide v2, v10, Lad/w1;->a:D

    iget-wide v7, v15, Lad/x1;->b:D

    const-wide/high16 v16, 0x4044000000000000L    # 40.0

    sub-double v7, v7, v16

    cmpl-double v4, v2, v7

    if-gez v4, :cond_20

    iget-wide v7, v10, Lad/w1;->b:D

    cmpg-double v4, v7, v39

    if-gez v4, :cond_1f

    goto :goto_f

    :cond_1f
    move-object/from16 v93, v50

    const-wide/16 v13, 0x0

    goto :goto_13

    :cond_20
    :goto_f
    iget-object v4, v0, Lad/j0;->T0:Lad/z;

    iget-wide v7, v1, Ldd/l0;->c:J

    if-eqz v11, :cond_21

    iget-object v9, v1, Ldd/l0;->g:Ljava/lang/Float;

    if-eqz v9, :cond_21

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    float-to-double v13, v9

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_10

    :cond_21
    const/4 v9, 0x0

    :goto_10
    iput-wide v2, v4, Lad/z;->a:D

    iput-wide v7, v4, Lad/z;->b:J

    if-eqz v9, :cond_23

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-wide/16 v13, 0x0

    cmpg-double v7, v13, v2

    if-gtz v7, :cond_22

    const-wide v7, 0x4051800000000000L    # 70.0

    cmpg-double v2, v2, v7

    if-gtz v2, :cond_22

    goto :goto_11

    :cond_22
    const/4 v9, 0x0

    :goto_11
    if-eqz v9, :cond_24

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    goto :goto_12

    :cond_23
    const-wide/16 v13, 0x0

    :cond_24
    move-wide v2, v13

    :goto_12
    iput-wide v2, v4, Lad/z;->c:D

    const/4 v2, 0x1

    iput-boolean v2, v4, Lad/z;->d:Z

    move/from16 v49, v2

    iget-object v2, v0, Lad/j0;->T0:Lad/z;

    iget-wide v3, v15, Lad/x1;->b:D

    iget-object v7, v0, Lad/j0;->v1:Ljava/lang/String;

    move-object/from16 v8, v50

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    xor-int/lit8 v9, v7, 0x1

    move-object/from16 v93, v8

    move-wide/from16 v7, v35

    invoke-virtual/range {v2 .. v9}, Lad/z;->a(DJDZ)D

    move-result-wide v2

    invoke-virtual {v15, v2, v3}, Lad/x1;->g(D)V

    :goto_13
    iput-wide v13, v0, Lad/j0;->c0:D

    iput-wide v13, v0, Lad/j0;->z0:D

    if-nez v11, :cond_26

    if-nez v12, :cond_25

    goto :goto_14

    :cond_25
    const/4 v7, 0x1

    goto :goto_15

    :cond_26
    :goto_14
    iget-object v2, v1, Ldd/l0;->g:Ljava/lang/Float;

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    float-to-double v2, v2

    iput-wide v2, v0, Lad/j0;->X:D

    const/4 v7, 0x1

    iput-boolean v7, v0, Lad/j0;->a0:Z

    iput-wide v2, v0, Lad/j0;->b0:D

    if-eqz v11, :cond_27

    iget-object v4, v15, Lad/x1;->a:Lua/nav/routing/Route;

    iget v8, v10, Lad/w1;->c:I

    invoke-virtual {v4, v8}, Lua/nav/routing/Route;->d(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_27

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v8, v0, Lad/j0;->f:Lad/z1;

    invoke-virtual {v8, v2, v3, v4}, Lad/z1;->a(DI)V

    :cond_27
    :goto_15
    iget-wide v2, v1, Ldd/l0;->c:J

    iput-wide v2, v0, Lad/j0;->Y:J

    if-eqz v11, :cond_28

    new-instance v2, Lua/nav/routing/GeoPoint;

    iget-wide v3, v1, Ldd/l0;->d:D

    iget-wide v8, v1, Ldd/l0;->e:D

    invoke-direct {v2, v3, v4, v8, v9}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    iput-object v2, v0, Lad/j0;->Y0:Lua/nav/routing/GeoPoint;

    iput-wide v5, v0, Lad/j0;->d1:J

    :cond_28
    const/4 v2, 0x0

    if-eqz v11, :cond_2a

    iget-object v3, v1, Ldd/l0;->g:Ljava/lang/Float;

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_16

    :cond_29
    move v3, v2

    :goto_16
    float-to-double v3, v3

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    cmpl-double v3, v3, v8

    if-ltz v3, :cond_2a

    iget-object v3, v1, Ldd/l0;->h:Ljava/lang/Float;

    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    new-instance v4, Lt8/p;

    float-to-double v8, v3

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    new-instance v9, Lua/nav/routing/GeoPoint;

    iget-wide v13, v1, Ldd/l0;->d:D

    move-wide/from16 v17, v5

    iget-wide v5, v1, Ldd/l0;->e:D

    invoke-direct {v9, v13, v14, v5, v6}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-direct {v4, v3, v8, v9}, Lt8/p;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v4, v0, Lad/j0;->c1:Lt8/p;

    goto :goto_17

    :cond_2a
    move-wide/from16 v17, v5

    :goto_17
    iget-object v3, v1, Ldd/l0;->h:Ljava/lang/Float;

    if-eqz v3, :cond_2e

    iget-object v4, v1, Ldd/l0;->g:Ljava/lang/Float;

    if-eqz v4, :cond_2b

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v2

    :cond_2b
    float-to-double v4, v2

    const-wide v8, 0x4010aaaaaaaaaaabL    # 4.166666666666667

    cmpl-double v2, v4, v8

    if-ltz v2, :cond_2c

    goto :goto_18

    :cond_2c
    const/4 v3, 0x0

    :goto_18
    if-eqz v3, :cond_2e

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v2

    float-to-double v2, v2

    iget-wide v4, v10, Lad/w1;->a:D

    add-double v4, v4, v39

    iget-object v6, v15, Lad/x1;->a:Lua/nav/routing/Route;

    invoke-virtual {v6}, Lua/nav/routing/Route;->c()D

    move-result-wide v8

    cmpl-double v6, v4, v8

    if-lez v6, :cond_2d

    move-wide v4, v8

    :cond_2d
    invoke-virtual {v15, v4, v5}, Lad/x1;->d(D)Lad/v1;

    move-result-object v4

    iget v4, v4, Lad/v1;->b:F

    float-to-double v4, v4

    sub-double/2addr v2, v4

    const-wide v4, 0x4076800000000000L    # 360.0

    rem-double/2addr v2, v4

    const-wide v8, 0x4080e00000000000L    # 540.0

    add-double/2addr v2, v8

    rem-double/2addr v2, v4

    const-wide v4, 0x4066800000000000L    # 180.0

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v8, v2

    :goto_19
    const/4 v9, 0x0

    goto :goto_1a

    :cond_2e
    const/4 v8, 0x0

    goto :goto_19

    :goto_1a
    iput-boolean v9, v0, Lad/j0;->l0:Z

    iget-wide v12, v10, Lad/w1;->b:D

    new-instance v9, Lua/nav/routing/GeoPoint;

    iget-wide v2, v1, Ldd/l0;->d:D

    iget-wide v4, v1, Ldd/l0;->e:D

    invoke-direct {v9, v2, v3, v4, v5}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    iget-wide v3, v10, Lad/w1;->a:D

    move-object v2, v1

    move-object v1, v15

    move-wide/from16 v5, v17

    invoke-virtual/range {v0 .. v6}, Lad/j0;->P(Lad/x1;Ldd/l0;DJ)Z

    move-result v1

    iget-object v0, v2, Ldd/l0;->i:Ljava/lang/Float;

    if-eqz v0, :cond_2f

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v3, v0

    move-wide/from16 v94, v5

    move-object v6, v9

    move-wide v9, v3

    move-wide/from16 v4, v94

    :goto_1b
    move-object v0, v8

    move v8, v1

    move-wide v1, v12

    move v12, v7

    move-object v7, v0

    move-object/from16 v0, p0

    move v3, v11

    goto :goto_1c

    :cond_2f
    move-wide v4, v5

    move-object v6, v9

    const-wide/16 v9, 0x0

    goto :goto_1b

    :goto_1c
    invoke-virtual/range {v0 .. v10}, Lad/j0;->O(DZJLua/nav/routing/GeoPoint;Ljava/lang/Double;ZD)V

    move-wide v5, v4

    if-eqz v3, :cond_30

    move-object/from16 v1, v93

    goto :goto_1d

    :cond_30
    const-string v1, "GPS?"

    :goto_1d
    iput-object v1, v0, Lad/j0;->v1:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, v0, Lad/j0;->q:Lad/q1;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lad/j0;->r:J

    goto/16 :goto_0

    :cond_31
    move-object/from16 v93, v11

    move-object/from16 v48, v13

    const/4 v12, 0x1

    goto/16 :goto_d

    :goto_1e
    iget-wide v2, v0, Lad/j0;->Y:J

    sub-long v2, v5, v2

    cmp-long v2, v2, v33

    if-gez v2, :cond_35

    iget-object v2, v0, Lad/j0;->v1:Ljava/lang/String;

    move-object/from16 v8, v93

    const/4 v9, 0x0

    invoke-static {v2, v8, v9}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_35

    iget-wide v2, v0, Lad/j0;->u1:J

    cmp-long v2, v5, v2

    if-gez v2, :cond_33

    iget-wide v2, v0, Lad/j0;->X:D

    cmpl-double v4, v2, v37

    if-lez v4, :cond_32

    mul-double v2, v2, v35

    invoke-virtual {v1, v2, v3}, Lad/x1;->a(D)V

    :cond_32
    move-object/from16 v1, v48

    goto/16 :goto_51

    :cond_33
    iget-object v2, v0, Lad/j0;->T0:Lad/z;

    iget-boolean v2, v2, Lad/z;->d:Z

    if-eqz v2, :cond_34

    iget-object v2, v0, Lad/j0;->T0:Lad/z;

    invoke-virtual {v1}, Lad/x1;->b()D

    move-result-wide v3

    const/4 v9, 0x0

    move-wide/from16 v7, v35

    invoke-virtual/range {v2 .. v9}, Lad/z;->a(DJDZ)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lad/x1;->g(D)V

    :cond_34
    iget-object v1, v0, Lad/j0;->v1:Ljava/lang/String;

    goto/16 :goto_51

    :cond_35
    iget-wide v2, v0, Lad/j0;->Y:J

    const-wide/16 v31, 0x0

    cmp-long v4, v2, v31

    if-lez v4, :cond_36

    goto :goto_1f

    :cond_36
    iget-wide v2, v0, Lad/j0;->Z:J

    :goto_1f
    sub-long v9, v5, v2

    iget-object v2, v0, Lad/j0;->N:Lad/l;

    invoke-virtual {v2, v5, v6}, Lad/l;->d(J)Ljava/lang/Double;

    move-result-object v13

    iget-object v2, v0, Lad/j0;->d0:Lad/f1;

    invoke-virtual {v2, v5, v6}, Lad/f1;->b(J)Lad/c1;

    move-result-object v15

    if-eqz v15, :cond_37

    iput-object v15, v0, Lad/j0;->v0:Lad/c1;

    iput-wide v5, v0, Lad/j0;->w0:J

    const/4 v11, 0x0

    goto :goto_20

    :cond_37
    invoke-static {v13}, Lj9/n;->b(Ljava/lang/Double;)Z

    move-result v2

    const/4 v11, 0x0

    if-eqz v2, :cond_38

    iput-object v11, v0, Lad/j0;->v0:Lad/c1;

    :cond_38
    :goto_20
    if-nez v15, :cond_3b

    iget-object v2, v0, Lad/j0;->v0:Lad/c1;

    iget-wide v3, v0, Lad/j0;->w0:J

    sub-long v3, v5, v3

    if-eqz v2, :cond_39

    const-wide/16 v31, 0x0

    cmp-long v7, v3, v31

    if-ltz v7, :cond_39

    const-wide/32 v18, 0x15f90

    cmp-long v7, v3, v18

    if-lez v7, :cond_3a

    :cond_39
    move-wide/from16 v11, v37

    goto :goto_21

    :cond_3a
    iget-wide v7, v2, Lad/c1;->b:D

    move-wide/from16 v11, v37

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    const-wide v20, 0x3fb999999999999aL    # 0.1

    long-to-double v3, v3

    mul-double v3, v3, v20

    div-double v3, v3, v25

    add-double v52, v3, v7

    const/16 v54, 0xd

    const-wide/16 v50, 0x0

    move-object/from16 v49, v2

    invoke-static/range {v49 .. v54}, Lad/c1;->a(Lad/c1;DDI)Lad/c1;

    move-result-object v2

    goto :goto_22

    :goto_21
    const/4 v2, 0x0

    goto :goto_22

    :cond_3b
    move-wide/from16 v11, v37

    move-object v2, v15

    :goto_22
    if-eqz v13, :cond_3c

    iget-object v3, v0, Lad/j0;->G0:Lu8/k;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v7, Lt8/j;

    invoke-direct {v7, v4, v13}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v7}, Lu8/k;->addLast(Ljava/lang/Object;)V

    :goto_23
    iget-object v3, v0, Lad/j0;->G0:Lu8/k;

    invoke-virtual {v3}, Lu8/k;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3c

    iget-object v3, v0, Lad/j0;->G0:Lu8/k;

    invoke-virtual {v3}, Lu8/k;->first()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt8/j;

    iget-object v3, v3, Lt8/j;->l:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    sub-long v3, v5, v3

    const-wide/32 v18, 0x15f90

    cmp-long v3, v3, v18

    if-lez v3, :cond_3c

    iget-object v3, v0, Lad/j0;->G0:Lu8/k;

    invoke-virtual {v3}, Lu8/k;->removeFirst()Ljava/lang/Object;

    goto :goto_23

    :cond_3c
    if-eqz v2, :cond_40

    iget-object v3, v0, Lad/j0;->G0:Lu8/k;

    invoke-virtual {v3}, Lu8/k;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_40

    iget-object v3, v0, Lad/j0;->G0:Lu8/k;

    invoke-virtual {v3}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide/from16 v7, v27

    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt8/j;

    iget-object v4, v4, Lt8/j;->m:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v20

    add-double v7, v20, v7

    goto :goto_24

    :cond_3d
    iget-object v3, v0, Lad/j0;->G0:Lu8/k;

    invoke-virtual {v3}, Lu8/g;->size()I

    move-result v3

    int-to-double v3, v3

    div-double/2addr v7, v3

    iget-wide v3, v2, Lad/c1;->a:D

    const-wide/high16 v20, 0x3fd0000000000000L    # 0.25

    cmpg-double v22, v7, v20

    if-gez v22, :cond_3e

    move-wide/from16 v7, v20

    :cond_3e
    div-double/2addr v3, v7

    const-wide v7, 0x4044d55555555555L    # 41.666666666666664

    cmpl-double v20, v3, v7

    if-lez v20, :cond_3f

    move-wide/from16 v50, v7

    goto :goto_25

    :cond_3f
    move-wide/from16 v50, v3

    :goto_25
    const-wide/16 v52, 0x0

    const/16 v54, 0xe

    move-object/from16 v49, v2

    invoke-static/range {v49 .. v54}, Lad/c1;->a(Lad/c1;DDI)Lad/c1;

    move-result-object v2

    goto :goto_26

    :cond_40
    move-object/from16 v49, v2

    move-object/from16 v2, v49

    :goto_26
    if-eqz v2, :cond_41

    iget-wide v3, v2, Lad/c1;->a:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    goto :goto_27

    :cond_41
    const/4 v3, 0x0

    :goto_27
    iput-object v3, v0, Lad/j0;->u0:Ljava/lang/Double;

    if-nez v13, :cond_42

    if-nez v2, :cond_42

    iget-object v3, v14, Ldd/n;->d:Ldd/l0;

    if-eqz v3, :cond_43

    iget-wide v3, v3, Ldd/l0;->c:J

    sub-long v3, v5, v3

    const-wide/32 v18, 0x15f90

    cmp-long v3, v3, v18

    if-lez v3, :cond_42

    goto :goto_28

    :cond_42
    const/4 v12, 0x2

    goto :goto_29

    :cond_43
    const-wide/32 v18, 0x15f90

    :goto_28
    cmp-long v3, v9, v18

    if-lez v3, :cond_42

    iget-boolean v3, v0, Lad/j0;->D0:Z

    if-nez v3, :cond_42

    const/4 v4, 0x1

    iput-boolean v4, v0, Lad/j0;->D0:Z

    iget-object v3, v0, Lad/j0;->a:Ldd/k0;

    const/16 v4, 0x3e8

    int-to-long v7, v4

    div-long v7, v9, v7

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v11, "no_info blind_s="

    invoke-direct {v4, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-object v3, v0, Lad/j0;->b:Lad/r2;

    sget-object v4, Lcd/d;->s1:Lcd/c;

    const/4 v7, 0x0

    new-array v8, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v8}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x1

    const/4 v12, 0x2

    invoke-static {v3, v4, v7, v12}, Lad/r2;->g(Lad/r2;Ljava/lang/String;ZI)V

    :goto_29
    invoke-virtual {v0, v1, v9, v10, v2}, Lad/j0;->l(Lad/x1;JLad/c1;)D

    move-result-wide v18

    move-object/from16 v49, v2

    iget-object v2, v0, Lad/j0;->d0:Lad/f1;

    move-wide v3, v5

    const-wide/32 v5, 0x15f90

    const-wide/high16 v7, 0x403e000000000000L    # 30.0

    const/16 v30, 0x3e8

    const-wide v37, 0x3fd3333333333333L    # 0.3

    invoke-virtual/range {v2 .. v8}, Lad/f1;->c(JJD)Lad/c1;

    move-result-object v2

    move-wide v5, v3

    const-wide v20, 0x3fb47ae147ae147bL    # 0.08

    if-eqz v2, :cond_44

    iget-wide v3, v2, Lad/c1;->a:D

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    cmpl-double v3, v3, v7

    if-ltz v3, :cond_44

    iget-wide v3, v2, Lad/c1;->b:D

    const-wide/high16 v7, 0x3ff8000000000000L    # 1.5

    cmpg-double v3, v3, v7

    if-gtz v3, :cond_44

    iget-wide v2, v2, Lad/c1;->d:D

    const-wide v7, 0x4046800000000000L    # 45.0

    cmpl-double v2, v2, v7

    if-ltz v2, :cond_44

    iget-object v2, v0, Lad/j0;->N:Lad/l;

    iget-wide v2, v2, Lad/l;->j:D

    cmpl-double v2, v2, v20

    if-ltz v2, :cond_44

    const/4 v2, 0x1

    goto :goto_2a

    :cond_44
    const/4 v2, 0x0

    :goto_2a
    invoke-static {v13}, Lj9/n;->b(Ljava/lang/Double;)Z

    move-result v3

    const-wide v22, 0x400ccccccccccccdL    # 3.6

    if-eqz v3, :cond_46

    iget-boolean v3, v0, Lad/j0;->e0:Z

    if-eq v2, v3, :cond_46

    iput-boolean v2, v0, Lad/j0;->e0:Z

    iget-object v3, v0, Lad/j0;->a:Ldd/k0;

    if-eqz v15, :cond_45

    iget-wide v7, v15, Lad/c1;->a:D

    goto :goto_2b

    :cond_45
    move-wide/from16 v7, v27

    :goto_2b
    mul-double v7, v7, v22

    double-to-int v4, v7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "net_overrides_stop active="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " netv="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ldd/k0;->n(Ljava/lang/String;)V

    goto :goto_2c

    :cond_46
    invoke-static {v13}, Lj9/n;->b(Ljava/lang/Double;)Z

    move-result v3

    if-nez v3, :cond_47

    const/4 v7, 0x0

    iput-boolean v7, v0, Lad/j0;->e0:Z

    :cond_47
    :goto_2c
    invoke-virtual {v0, v5, v6}, Lad/j0;->b(J)I

    move-result v3

    move v4, v2

    iget-object v2, v0, Lad/j0;->P:Lad/f2;

    if-eqz v2, :cond_4b

    iget-wide v7, v0, Lad/j0;->Q:J

    sub-long v7, v5, v7

    const-wide/16 v33, 0x1f4

    cmp-long v7, v7, v33

    if-ltz v7, :cond_4b

    iget-object v7, v0, Lad/j0;->N:Lad/l;

    invoke-virtual {v7, v5, v6}, Lad/l;->a(J)Z

    move-result v7

    if-eqz v7, :cond_4b

    iput-wide v5, v0, Lad/j0;->Q:J

    iget-wide v7, v0, Lad/j0;->Y:J

    const-wide/16 v31, 0x0

    cmp-long v11, v7, v31

    if-lez v11, :cond_48

    sub-long v7, v5, v7

    const-wide/16 v33, 0x5dc

    cmp-long v7, v7, v33

    if-gtz v7, :cond_48

    goto :goto_2d

    :cond_48
    if-nez v3, :cond_49

    :goto_2d
    const/4 v7, 0x0

    goto :goto_2f

    :cond_49
    const/4 v7, 0x1

    if-ne v3, v7, :cond_4a

    const/4 v7, 0x1

    goto :goto_2e

    :cond_4a
    const/4 v7, 0x0

    :goto_2e
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    :goto_2f
    iget-object v8, v0, Lad/j0;->N:Lad/l;

    move v11, v3

    move-object/from16 v24, v7

    move-wide/from16 v94, v5

    move v5, v4

    move-wide/from16 v3, v94

    iget-wide v6, v8, Lad/l;->j:D

    move-object/from16 v29, v13

    iget-wide v12, v8, Lad/l;->i:D

    iget-object v8, v0, Lad/j0;->N:Lad/l;

    move-object/from16 v33, v1

    move-object/from16 v34, v2

    iget-wide v1, v8, Lad/l;->k:D

    move-wide/from16 v94, v27

    move-wide/from16 v27, v9

    move-wide v8, v12

    move-wide/from16 v12, v94

    move-object/from16 v47, v24

    move/from16 v24, v5

    move-object/from16 v5, v47

    const/16 v47, 0x0

    move-wide/from16 v94, v1

    move v1, v11

    move-wide/from16 v10, v94

    move-object/from16 v2, v34

    invoke-virtual/range {v2 .. v11}, Lad/f2;->d(JLjava/lang/Boolean;DDD)V

    move-wide v5, v3

    goto :goto_30

    :cond_4b
    move-object/from16 v33, v1

    move v1, v3

    move/from16 v24, v4

    move-object/from16 v29, v13

    move-wide/from16 v12, v27

    const/16 v47, 0x0

    move-wide/from16 v27, v9

    :goto_30
    sget v2, Lb6/g;->l:I

    if-ltz v2, :cond_4d

    sget-wide v3, Lb6/g;->m:J

    sub-long v3, v5, v3

    const-wide/16 v7, 0x9c4

    cmp-long v3, v3, v7

    if-lez v3, :cond_4c

    goto :goto_31

    :cond_4c
    int-to-double v2, v2

    div-double v2, v2, v22

    sget-wide v7, Lb6/g;->n:D

    mul-double/2addr v2, v7

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v8, v2

    goto :goto_32

    :cond_4d
    :goto_31
    move-object/from16 v8, v47

    :goto_32
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-eqz v8, :cond_4e

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, v2, v9

    if-ltz v2, :cond_4e

    iget-boolean v2, v0, Lad/j0;->m0:Z

    if-eqz v2, :cond_4e

    const/4 v7, 0x0

    iput-boolean v7, v0, Lad/j0;->m0:Z

    iget-object v2, v0, Lad/j0;->a:Ldd/k0;

    invoke-virtual/range {v33 .. v33}, Lad/x1;->b()D

    move-result-wide v3

    double-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "start_gate open=obd s="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_4e
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4f

    move-wide/from16 v50, v9

    move-wide/from16 v27, v12

    goto/16 :goto_37

    :cond_4f
    const/4 v7, 0x1

    if-ne v1, v7, :cond_50

    :goto_33
    move-wide/from16 v50, v9

    move-wide/from16 v27, v12

    goto :goto_36

    :cond_50
    if-eqz v8, :cond_51

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    :goto_34
    move-wide/from16 v50, v9

    move-wide/from16 v27, v12

    :goto_35
    move-wide v12, v3

    goto :goto_37

    :cond_51
    invoke-static/range {v29 .. v29}, Lj9/n;->b(Ljava/lang/Double;)Z

    move-result v2

    if-eqz v2, :cond_52

    if-eqz v24, :cond_52

    goto :goto_33

    :cond_52
    if-eqz v29, :cond_53

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    mul-double v3, v2, v18

    goto :goto_34

    :cond_53
    iget-boolean v2, v0, Lad/j0;->a0:Z

    const-wide/32 v3, 0x1d4c0

    if-eqz v2, :cond_54

    cmp-long v7, v27, v3

    if-gez v7, :cond_54

    iget-wide v3, v0, Lad/j0;->X:D

    goto :goto_34

    :cond_54
    if-eqz v2, :cond_55

    const-wide/32 v45, 0x2bf20

    cmp-long v7, v27, v45

    if-gez v7, :cond_55

    move-wide/from16 v45, v3

    iget-wide v3, v0, Lad/j0;->X:D

    move-wide/from16 v50, v9

    sub-long v9, v27, v45

    long-to-double v9, v9

    move-wide/from16 v27, v12

    const-wide/32 v12, 0xea60

    long-to-double v11, v12

    div-double/2addr v9, v11

    sub-double v9, v50, v9

    mul-double/2addr v3, v9

    goto :goto_35

    :cond_55
    move-wide/from16 v50, v9

    move-wide/from16 v27, v12

    if-eqz v2, :cond_56

    move-wide/from16 v12, v27

    goto :goto_37

    :cond_56
    :goto_36
    move-wide/from16 v12, v18

    :goto_37
    if-nez v8, :cond_58

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v2

    iget-boolean v2, v2, Lua/nav/Tuning;->F:Z

    if-eqz v2, :cond_58

    iget-object v2, v0, Lad/j0;->H0:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_58

    invoke-virtual/range {v33 .. v33}, Lad/x1;->b()D

    move-result-wide v2

    iget-object v4, v0, Lad/j0;->H0:Ljava/util/List;

    if-nez v49, :cond_57

    const/4 v10, 0x1

    goto :goto_38

    :cond_57
    const/4 v10, 0x0

    :goto_38
    invoke-static {v4, v2, v3, v10}, Lad/t2;->c(Ljava/util/List;DZ)Ljava/lang/Double;

    move-result-object v2

    move-object v7, v2

    :goto_39
    const/4 v4, 0x1

    goto :goto_3a

    :cond_58
    move-object/from16 v7, v47

    goto :goto_39

    :goto_3a
    if-ne v1, v4, :cond_59

    iget-boolean v2, v0, Lad/j0;->m0:Z

    if-eqz v2, :cond_59

    const/4 v9, 0x0

    iput-boolean v9, v0, Lad/j0;->m0:Z

    iget-object v2, v0, Lad/j0;->a:Ldd/k0;

    invoke-virtual/range {v33 .. v33}, Lad/x1;->b()D

    move-result-wide v3

    double-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "start_gate open=manual s="

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_59
    const/4 v2, 0x2

    if-eq v1, v2, :cond_5d

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5b

    if-nez v8, :cond_5b

    if-eqz v15, :cond_5a

    iget-wide v2, v15, Lad/c1;->a:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object v4, v2

    :goto_3b
    move v11, v1

    move-wide v2, v5

    move-wide/from16 v5, v18

    move-object/from16 v1, v33

    goto :goto_3c

    :cond_5a
    move-object/from16 v4, v47

    goto :goto_3b

    :goto_3c
    invoke-virtual/range {v0 .. v6}, Lad/j0;->G(Lad/x1;JLjava/lang/Double;D)Z

    move-result v4

    move-wide v5, v2

    if-eqz v4, :cond_5c

    goto :goto_3d

    :cond_5b
    move v11, v1

    move-object/from16 v1, v33

    :cond_5c
    const/4 v10, 0x0

    goto :goto_3e

    :cond_5d
    move v11, v1

    move-object/from16 v1, v33

    :goto_3d
    const/4 v10, 0x1

    :goto_3e
    if-eqz v10, :cond_5e

    move-wide/from16 v2, v27

    goto :goto_3f

    :cond_5e
    if-eqz v7, :cond_5f

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpl-double v2, v12, v2

    if-lez v2, :cond_5f

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    move-wide v2, v3

    goto :goto_3f

    :cond_5f
    move-wide v2, v12

    :goto_3f
    iput-wide v2, v0, Lad/j0;->b0:D

    invoke-virtual {v1}, Lad/x1;->b()D

    move-result-wide v12

    cmpl-double v4, v2, v37

    if-lez v4, :cond_60

    move-wide v6, v5

    move-wide/from16 v4, v35

    invoke-virtual/range {v0 .. v7}, Lad/j0;->c(Lad/x1;DDJ)V

    move-wide v5, v6

    :cond_60
    if-nez v10, :cond_61

    invoke-virtual {v0, v1, v5, v6}, Lad/j0;->k(Lad/x1;J)V

    invoke-virtual {v0, v1, v5, v6}, Lad/j0;->E(Lad/x1;J)V

    invoke-virtual {v0, v5, v6}, Lad/j0;->h(J)V

    invoke-virtual {v0, v1, v5, v6}, Lad/j0;->i(Lad/x1;J)V

    move-wide/from16 v94, v5

    move-wide v4, v2

    move-wide/from16 v2, v94

    invoke-virtual/range {v0 .. v5}, Lad/j0;->s(Lad/x1;JD)V

    move-wide v5, v2

    :cond_61
    invoke-virtual {v1}, Lad/x1;->b()D

    move-result-wide v2

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    move-wide/from16 v18, v2

    iget-wide v2, v0, Lad/j0;->u1:J

    cmp-long v2, v5, v2

    if-gez v2, :cond_62

    iget-object v2, v0, Lad/j0;->S:Ljava/util/ArrayList;

    invoke-static {v2}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lad/f0;

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Lad/f0;->a()J

    move-result-wide v3

    sub-long v3, v5, v3

    const-wide/16 v33, 0x3a98

    cmp-long v3, v3, v33

    if-gez v3, :cond_32

    invoke-virtual {v2}, Lad/f0;->b()D

    move-result-wide v2

    invoke-virtual {v1}, Lad/x1;->b()D

    move-result-wide v33

    sub-double v2, v2, v33

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v41

    if-gtz v2, :cond_32

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lad/j0;->u1:J

    iget-object v2, v0, Lad/j0;->a:Ldd/k0;

    invoke-virtual {v1}, Lad/x1;->b()D

    move-result-wide v3

    double-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "nudge_released_by_net s="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_62
    const/4 v2, 0x2

    if-eq v11, v2, :cond_65

    const/4 v4, 0x1

    if-eq v11, v4, :cond_64

    if-eqz v8, :cond_63

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    cmpg-double v2, v2, v37

    if-gez v2, :cond_64

    goto :goto_40

    :cond_63
    iget-object v2, v0, Lad/j0;->N:Lad/l;

    iget-boolean v2, v2, Lad/l;->h:Z

    if-eqz v2, :cond_64

    if-nez v24, :cond_64

    goto :goto_40

    :cond_64
    const/4 v2, 0x0

    goto :goto_41

    :cond_65
    :goto_40
    const/4 v2, 0x1

    :goto_41
    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v3

    iget-boolean v3, v3, Lua/nav/Tuning;->G:Z

    if-eqz v3, :cond_66

    if-eqz v2, :cond_66

    iget-boolean v3, v0, Lad/j0;->J0:Z

    if-nez v3, :cond_66

    invoke-virtual {v0, v1}, Lad/j0;->N(Lad/x1;)V

    :cond_66
    iput-boolean v2, v0, Lad/j0;->J0:Z

    iget-object v3, v14, Ldd/n;->d:Ldd/l0;

    iget-object v4, v0, Lad/j0;->S:Ljava/util/ArrayList;

    invoke-static {v4}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/f0;

    if-eqz v3, :cond_79

    if-eqz v4, :cond_79

    invoke-virtual {v4}, Lad/f0;->a()J

    move-result-wide v7

    move-wide/from16 v33, v7

    iget-wide v7, v3, Ldd/l0;->c:J

    cmp-long v9, v33, v7

    if-nez v9, :cond_79

    sub-long v7, v5, v7

    const-wide/16 v33, 0x7530

    cmp-long v7, v7, v33

    if-gez v7, :cond_79

    iget-object v7, v0, Lad/j0;->a:Ldd/k0;

    iget-object v7, v7, Ldd/k0;->b:Ldd/t0;

    iget-object v7, v7, Ldd/t0;->a:Ldd/r0;

    iget-wide v7, v7, Ldd/r0;->c:D

    div-double v7, v7, v22

    iget-object v9, v0, Lad/j0;->S:Ljava/util/ArrayList;

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v22, v7

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_42
    if-ge v8, v7, :cond_68

    move/from16 v24, v7

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v29, v7

    check-cast v29, Lad/f0;

    invoke-virtual/range {v29 .. v29}, Lad/f0;->b()D

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->rint(D)D

    move-result-wide v33

    move/from16 v29, v8

    invoke-static/range {v33 .. v34}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_67

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_67
    move/from16 v7, v24

    move/from16 v8, v29

    goto :goto_42

    :cond_68
    const/4 v7, 0x2

    invoke-static {v7, v15}, Lu8/m;->y0(ILjava/util/List;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lt v9, v7, :cond_79

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v7

    const/4 v9, 0x1

    invoke-static {v9, v7}, Lg6/c1;->G(II)Lo9/d;

    move-result-object v7

    instance-of v9, v7, Ljava/util/Collection;

    if-eqz v9, :cond_69

    move-object v9, v7

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_69

    goto :goto_44

    :cond_69
    invoke-virtual {v7}, Lo9/b;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_43
    move-object v9, v7

    check-cast v9, Lo9/c;

    invoke-virtual {v9}, Lo9/c;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6a

    invoke-virtual {v9}, Lo9/c;->nextInt()I

    move-result v9

    add-int/lit8 v11, v9, -0x1

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lad/f0;

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lad/f0;

    invoke-virtual {v9}, Lad/f0;->a()J

    move-result-wide v33

    invoke-virtual {v11}, Lad/f0;->a()J

    move-result-wide v37

    move-object/from16 v24, v7

    move-object v15, v8

    sub-long v7, v33, v37

    long-to-double v7, v7

    div-double v7, v7, v25

    cmpl-double v29, v7, v27

    if-lez v29, :cond_79

    invoke-virtual {v9}, Lad/f0;->b()D

    move-result-wide v33

    invoke-virtual {v11}, Lad/f0;->b()D

    move-result-wide v37

    sub-double v33, v33, v37

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->abs(D)D

    move-result-wide v33

    mul-double v7, v7, v22

    move-wide/from16 v37, v7

    iget-wide v7, v11, Lad/f0;->c:D

    add-double v7, v7, v37

    move-wide/from16 v37, v7

    iget-wide v7, v9, Lad/f0;->c:D

    add-double v7, v7, v37

    cmpg-double v7, v33, v7

    if-gtz v7, :cond_79

    move-object v8, v15

    move-object/from16 v7, v24

    goto :goto_43

    :cond_6a
    :goto_44
    iget-object v7, v0, Lad/j0;->S:Ljava/util/ArrayList;

    const-string v8, "<this>"

    invoke-static {v7, v8}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lu8/w;

    invoke-direct {v8, v7}, Lu8/w;-><init>(Ljava/util/List;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Lu8/w;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_45
    move-object v9, v8

    check-cast v9, Ld1/k0;

    invoke-virtual {v9}, Ld1/k0;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6b

    invoke-virtual {v9}, Ld1/k0;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v11, v9

    check-cast v11, Lad/f0;

    invoke-virtual {v11}, Lad/f0;->b()D

    move-result-wide v33

    invoke-static/range {v33 .. v34}, Ljava/lang/Math;->rint(D)D

    move-result-wide v33

    invoke-virtual {v4}, Lad/f0;->b()D

    move-result-wide v37

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->rint(D)D

    move-result-wide v37

    cmpg-double v11, v33, v37

    if-nez v11, :cond_6b

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_45

    :cond_6b
    invoke-static {v7}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lad/f0;

    if-eqz v7, :cond_6c

    invoke-virtual {v7}, Lad/f0;->a()J

    move-result-wide v7

    :goto_46
    move-wide/from16 v33, v7

    goto :goto_47

    :cond_6c
    invoke-virtual {v4}, Lad/f0;->a()J

    move-result-wide v7

    goto :goto_46

    :goto_47
    iget-wide v7, v0, Lad/j0;->b0:D

    move-wide/from16 v37, v7

    sub-long v7, v5, v33

    long-to-double v7, v7

    div-double v7, v7, v25

    const-wide/high16 v33, 0x4034000000000000L    # 20.0

    sub-double v7, v7, v33

    cmpg-double v9, v7, v27

    if-gez v9, :cond_6d

    move-wide/from16 v7, v27

    :cond_6d
    mul-double v7, v7, v37

    move-wide/from16 v33, v7

    iget-wide v7, v4, Lad/f0;->c:D

    add-double v7, v7, v43

    add-double v7, v7, v33

    mul-double v22, v22, v35

    invoke-virtual {v1}, Lad/x1;->b()D

    move-result-wide v33

    invoke-virtual {v4}, Lad/f0;->b()D

    move-result-wide v37

    add-double v37, v37, v7

    sub-double v33, v33, v37

    if-nez v2, :cond_71

    cmpl-double v9, v33, v27

    if-lez v9, :cond_71

    invoke-virtual {v1}, Lad/x1;->b()D

    move-result-wide v37

    sub-double v37, v37, v22

    invoke-virtual {v4}, Lad/f0;->b()D

    move-result-wide v45

    add-double v45, v45, v7

    cmpg-double v9, v37, v45

    if-gez v9, :cond_6e

    move-wide/from16 v37, v45

    :cond_6e
    cmpg-double v9, v33, v25

    if-gez v9, :cond_70

    cmpg-double v9, v37, v18

    if-gez v9, :cond_6f

    goto :goto_48

    :cond_6f
    move-wide/from16 v18, v37

    :goto_48
    move-wide/from16 v94, v18

    move-wide/from16 v18, v7

    move-wide/from16 v7, v94

    goto :goto_49

    :cond_70
    move-wide/from16 v18, v7

    move-wide/from16 v7, v37

    :goto_49
    invoke-virtual {v1, v7, v8}, Lad/x1;->g(D)V

    goto :goto_4a

    :cond_71
    move-wide/from16 v18, v7

    :goto_4a
    invoke-virtual {v1}, Lad/x1;->b()D

    move-result-wide v7

    sub-double/2addr v7, v12

    sub-double v7, v22, v7

    cmpg-double v9, v7, v27

    if-gez v9, :cond_72

    move-wide/from16 v7, v27

    :cond_72
    iget-wide v11, v4, Lad/f0;->c:D

    cmpl-double v9, v11, v43

    if-lez v9, :cond_73

    const-wide/high16 v11, 0x4016000000000000L    # 5.5

    mul-double v11, v11, v35

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    :cond_73
    if-nez v2, :cond_76

    if-nez v10, :cond_76

    invoke-virtual {v1}, Lad/x1;->b()D

    move-result-wide v11

    invoke-virtual {v4}, Lad/f0;->b()D

    move-result-wide v22

    sub-double v22, v22, v18

    cmpg-double v9, v11, v22

    if-gez v9, :cond_76

    invoke-virtual {v1}, Lad/x1;->b()D

    move-result-wide v11

    add-double/2addr v11, v7

    invoke-virtual {v4}, Lad/f0;->b()D

    move-result-wide v7

    sub-double v7, v7, v18

    cmpl-double v9, v11, v7

    if-lez v9, :cond_74

    move-wide v11, v7

    :cond_74
    iget-wide v7, v0, Lad/j0;->A1:D

    cmpl-double v9, v11, v7

    if-lez v9, :cond_75

    move-wide v11, v7

    :cond_75
    invoke-virtual {v1, v11, v12}, Lad/x1;->g(D)V

    :cond_76
    if-nez v2, :cond_79

    iget-wide v7, v3, Ldd/l0;->c:J

    iget-wide v11, v0, Lad/j0;->A0:J

    cmp-long v9, v7, v11

    if-eqz v9, :cond_79

    iput-wide v7, v0, Lad/j0;->A0:J

    invoke-virtual {v1}, Lad/x1;->b()D

    move-result-wide v7

    invoke-virtual {v4}, Lad/f0;->b()D

    move-result-wide v11

    move-object v9, v3

    iget-wide v3, v4, Lad/f0;->c:D

    move-wide/from16 v18, v3

    iget-wide v3, v0, Lad/j0;->c0:D

    const-wide/high16 v22, 0x4059000000000000L    # 100.0

    cmpl-double v13, v18, v22

    if-lez v13, :cond_77

    :goto_4b
    move-wide/from16 v3, v27

    goto :goto_4c

    :cond_77
    sub-double/2addr v11, v7

    cmpg-double v7, v11, v27

    if-gtz v7, :cond_78

    goto :goto_4b

    :cond_78
    mul-double v3, v3, v20

    add-double v3, v3, v39

    const-wide v7, 0x4082c00000000000L    # 600.0

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v3

    mul-double/2addr v3, v3

    add-double v7, v18, v41

    mul-double/2addr v7, v7

    mul-double/2addr v11, v3

    add-double/2addr v3, v7

    div-double v3, v11, v3

    :goto_4c
    cmpl-double v7, v3, v50

    if-lez v7, :cond_7a

    iput-wide v3, v0, Lad/j0;->z0:D

    iput-wide v5, v0, Lad/j0;->B0:J

    goto :goto_4d

    :cond_79
    move-object v9, v3

    :cond_7a
    :goto_4d
    if-nez v10, :cond_7b

    invoke-virtual {v0, v1, v5, v6, v2}, Lad/j0;->e(Lad/x1;JZ)Z

    move-result v3

    if-eqz v3, :cond_7b

    const/4 v3, 0x1

    goto :goto_4e

    :cond_7b
    const/4 v3, 0x0

    :goto_4e
    if-nez v2, :cond_81

    if-eqz v10, :cond_7c

    goto :goto_50

    :cond_7c
    iget-wide v7, v0, Lad/j0;->z0:D

    cmpl-double v2, v7, v27

    if-lez v2, :cond_7d

    invoke-virtual {v1}, Lad/x1;->b()D

    move-result-wide v7

    iget-wide v10, v0, Lad/j0;->A1:D

    cmpg-double v2, v7, v10

    if-gez v2, :cond_7d

    iget-wide v7, v0, Lad/j0;->z0:D

    const-wide/high16 v12, 0x402e000000000000L    # 15.0

    mul-double v12, v12, v35

    invoke-virtual {v1}, Lad/x1;->b()D

    move-result-wide v18

    sub-double v10, v10, v18

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    invoke-static {v7, v8, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lad/x1;->a(D)V

    iget-wide v1, v0, Lad/j0;->z0:D

    sub-double/2addr v1, v7

    iput-wide v1, v0, Lad/j0;->z0:D

    :cond_7d
    if-eqz v3, :cond_7e

    const-string v1, "DR+PF"

    goto :goto_4f

    :cond_7e
    iget-object v1, v14, Ldd/n;->h:Ldd/t;

    sget-object v2, Ldd/t;->n:Ldd/t;

    if-eq v1, v2, :cond_7f

    iget-boolean v1, v0, Lad/j0;->K:Z

    if-eqz v1, :cond_80

    :cond_7f
    if-eqz v9, :cond_80

    const-string v1, "DR+NET"

    goto :goto_4f

    :cond_80
    const-string v1, "DR"

    :goto_4f
    iput-object v1, v0, Lad/j0;->v1:Ljava/lang/String;

    goto :goto_51

    :cond_81
    :goto_50
    const-string v1, "DR\u23f8"

    iput-object v1, v0, Lad/j0;->v1:Ljava/lang/String;

    :goto_51
    iget-object v2, v0, Lad/j0;->a:Ldd/k0;

    iget-object v3, v0, Lad/j0;->N:Lad/l;

    iget-wide v7, v3, Lad/l;->f:J

    const-wide/16 v31, 0x0

    cmp-long v4, v7, v31

    if-lez v4, :cond_85

    invoke-virtual {v3, v5, v6}, Lad/l;->a(J)Z

    move-result v3

    if-eqz v3, :cond_83

    iget-wide v3, v0, Lad/j0;->Z0:J

    cmp-long v7, v3, v31

    if-lez v7, :cond_82

    iget-boolean v7, v0, Lad/j0;->a1:Z

    if-eqz v7, :cond_82

    sub-long v3, v5, v3

    const/16 v7, 0x3e8

    int-to-long v7, v7

    div-long/2addr v3, v7

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "sensors_resumed after_s="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_82
    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lad/j0;->Z0:J

    const/4 v9, 0x0

    iput-boolean v9, v0, Lad/j0;->a1:Z

    goto :goto_52

    :cond_83
    move-wide/from16 v3, v31

    iget-wide v7, v0, Lad/j0;->Z0:J

    cmp-long v3, v7, v3

    if-nez v3, :cond_84

    iput-wide v5, v0, Lad/j0;->Z0:J

    goto :goto_52

    :cond_84
    sub-long v3, v5, v7

    const-wide/16 v7, 0x2710

    cmp-long v7, v3, v7

    if-ltz v7, :cond_85

    iget-boolean v7, v0, Lad/j0;->a1:Z

    if-nez v7, :cond_85

    const/4 v7, 0x1

    iput-boolean v7, v0, Lad/j0;->a1:Z

    const/16 v8, 0x3e8

    int-to-long v8, v8

    div-long/2addr v3, v8

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "sensors_stalled since_s="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-boolean v2, v0, Lad/j0;->b1:Z

    if-nez v2, :cond_85

    iput-boolean v7, v0, Lad/j0;->b1:Z

    iget-object v2, v0, Lad/j0;->b:Lad/r2;

    sget-object v3, Lcd/d;->r1:Lcd/c;

    const/4 v9, 0x0

    new-array v4, v9, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x2

    invoke-static {v2, v3, v7, v12}, Lad/r2;->g(Lad/r2;Ljava/lang/String;ZI)V

    :cond_85
    :goto_52
    invoke-virtual {v0, v5, v6}, Lad/j0;->L(J)V

    iget-wide v2, v0, Lad/j0;->H:D

    iget-wide v7, v0, Lad/j0;->b0:D

    mul-double v7, v7, v35

    add-double/2addr v7, v2

    iput-wide v7, v0, Lad/j0;->H:D

    iget-object v2, v0, Lad/j0;->I:Lu8/k;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v7, v0, Lad/j0;->H:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-instance v7, Lt8/j;

    invoke-direct {v7, v3, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Lu8/k;->addLast(Ljava/lang/Object;)V

    iget-object v2, v0, Lad/j0;->J:Lu8/k;

    invoke-virtual {v2}, Lu8/k;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_86

    iget-object v2, v0, Lad/j0;->J:Lu8/k;

    invoke-virtual {v2}, Lu8/k;->last()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt8/j;

    iget-object v2, v2, Lt8/j;->l:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long v2, v5, v2

    const-wide/16 v7, 0x7d0

    cmp-long v2, v2, v7

    if-ltz v2, :cond_87

    :cond_86
    iget-object v2, v0, Lad/j0;->J:Lu8/k;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v7, v0, Lad/j0;->H:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-instance v7, Lt8/j;

    invoke-direct {v7, v3, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v7}, Lu8/k;->addLast(Ljava/lang/Object;)V

    :cond_87
    :goto_53
    iget-object v2, v0, Lad/j0;->J:Lu8/k;

    invoke-virtual {v2}, Lu8/k;->a()I

    move-result v2

    const/4 v12, 0x2

    if-le v2, v12, :cond_88

    iget-object v2, v0, Lad/j0;->J:Lu8/k;

    invoke-virtual {v2}, Lu8/k;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt8/j;

    iget-object v2, v2, Lt8/j;->l:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long v2, v5, v2

    const-wide/32 v7, 0xdbba0

    cmp-long v2, v2, v7

    if-lez v2, :cond_88

    iget-object v2, v0, Lad/j0;->J:Lu8/k;

    invoke-virtual {v2}, Lu8/k;->removeFirst()Ljava/lang/Object;

    goto :goto_53

    :cond_88
    :goto_54
    iget-object v2, v0, Lad/j0;->I:Lu8/k;

    invoke-virtual {v2}, Lu8/k;->a()I

    move-result v2

    const/4 v12, 0x2

    if-le v2, v12, :cond_89

    iget-object v2, v0, Lad/j0;->I:Lu8/k;

    invoke-virtual {v2}, Lu8/k;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt8/j;

    iget-object v2, v2, Lt8/j;->l:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long v2, v5, v2

    const-wide/16 v7, 0x4e20

    cmp-long v2, v2, v7

    if-lez v2, :cond_89

    iget-object v2, v0, Lad/j0;->I:Lu8/k;

    invoke-virtual {v2}, Lu8/k;->removeFirst()Ljava/lang/Object;

    goto :goto_54

    :cond_89
    iget-wide v2, v0, Lad/j0;->b0:D

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v2, v7

    if-gez v2, :cond_8a

    iget-wide v2, v0, Lad/j0;->F1:D

    add-double v2, v2, v35

    iput-wide v2, v0, Lad/j0;->F1:D

    goto :goto_55

    :cond_8a
    iget-wide v2, v0, Lad/j0;->F1:D

    const-wide/high16 v7, 0x405e000000000000L    # 120.0

    cmpl-double v4, v2, v7

    if-lez v4, :cond_8b

    iget-wide v7, v0, Lad/j0;->G1:D

    add-double/2addr v7, v2

    iput-wide v7, v0, Lad/j0;->G1:D

    :cond_8b
    move-wide/from16 v12, v27

    iput-wide v12, v0, Lad/j0;->F1:D

    :goto_55
    invoke-virtual {v0, v1}, Lad/j0;->y(Ljava/lang/String;)V

    iget-wide v1, v0, Lad/j0;->W0:J

    sub-long v1, v5, v1

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-ltz v1, :cond_8c

    iput-wide v5, v0, Lad/j0;->W0:J

    invoke-virtual {v0}, Lad/j0;->r()V

    :cond_8c
    :goto_56
    return-void
.end method

.method public final J(Lad/x1;D)D
    .locals 7

    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    sub-double v2, p2, v0

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    move-wide v2, v4

    :cond_0
    invoke-virtual {p1, v2, v3}, Lad/x1;->d(D)Lad/v1;

    move-result-object v2

    iget v2, v2, Lad/v1;->b:F

    float-to-double v2, v2

    add-double/2addr p2, v0

    iget-object v0, p1, Lad/x1;->a:Lua/nav/routing/Route;

    invoke-virtual {v0}, Lua/nav/routing/Route;->c()D

    move-result-wide v0

    cmpl-double v4, p2, v0

    if-lez v4, :cond_1

    move-wide p2, v0

    :cond_1
    invoke-virtual {p1, p2, p3}, Lad/x1;->d(D)Lad/v1;

    move-result-object p1

    iget p1, p1, Lad/v1;->b:F

    float-to-double p1, p1

    iget-object p0, p0, Lad/j0;->N:Lad/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3, p1, p2}, Lad/l;->f(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public final K()V
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, Lad/j0;->V:Lu9/j1;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iput-object v2, v0, Lad/j0;->V:Lu9/j1;

    iget-object v1, v0, Lad/j0;->a:Ldd/k0;

    iget-object v3, v1, Ldd/k0;->j:Ldd/m;

    iput-object v2, v3, Ldd/m;->j:Lad/b0;

    iget-object v3, v0, Lad/j0;->j:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/a0;

    iget-boolean v4, v4, Lad/a0;->a:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lad/j0;->T:Lad/x1;

    if-eqz v4, :cond_1

    iget-wide v4, v4, Lad/x1;->b:D

    double-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v2

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "nav_stop s="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ldd/k0;->n(Ljava/lang/String;)V

    const-string v4, "nav_stop"

    invoke-virtual {v1, v4}, Ldd/k0;->i(Ljava/lang/String;)Ljava/io/File;

    :cond_2
    iput-object v2, v0, Lad/j0;->T:Lad/x1;

    iget-object v1, v0, Lad/j0;->p:Lid/d0;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Lid/d0;->b(Lua/nav/routing/Route;)V

    :cond_3
    sget-object v1, Lu8/r;->l:Lu8/r;

    iput-object v1, v0, Lad/j0;->U:Ljava/lang/Object;

    iget-object v0, v0, Lad/j0;->e:Lwc/d;

    invoke-virtual {v0, v2}, Lwc/d;->c(Lwc/b;)V

    new-instance v4, Lad/a0;

    const/16 v27, 0x0

    const/16 v28, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    invoke-direct/range {v4 .. v28}, Lad/a0;-><init>(Lua/nav/routing/Route;Lua/nav/routing/Step;DLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLua/nav/routing/GeoPoint;IDZLjava/lang/String;I)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3, v2, v4}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final L(J)V
    .locals 43

    move-object/from16 v0, p0

    iget-object v1, v0, Lad/j0;->J1:Lua/nav/routing/Route;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-wide v1, v0, Lad/j0;->K1:J

    sub-long v1, v1, p1

    const/16 v3, 0x3e7

    int-to-long v3, v3

    add-long/2addr v1, v3

    const/16 v3, 0x3e8

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-int v1, v1

    iget-object v2, v0, Lad/j0;->j:Lx9/l0;

    if-gtz v1, :cond_2

    const/4 v1, 0x0

    iput-object v1, v0, Lad/j0;->J1:Lua/nav/routing/Route;

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lad/j0;->K1:J

    :cond_1
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lad/a0;

    const/16 v41, -0x1

    const/16 v42, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-static/range {v3 .. v42}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/a0;

    iget v0, v0, Lad/a0;->G:I

    if-eq v1, v0, :cond_4

    :goto_0
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lad/a0;

    const/16 v41, -0x1

    const/16 v42, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move/from16 v40, v1

    invoke-static/range {v3 .. v42}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move/from16 v1, v40

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final M(JLua/nav/routing/GeoPoint;)Lad/c0;
    .locals 12

    iget-object v0, p0, Lad/j0;->a:Ldd/k0;

    iget-object v0, v0, Ldd/k0;->j:Ldd/m;

    iget-object v0, v0, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldd/n;

    iget-object v1, p0, Lad/j0;->j:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/a0;

    iget-object v2, p0, Lad/j0;->g:Lua/nav/a;

    iget-object v2, v2, Lua/nav/a;->c:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_14

    iget-object v2, v0, Ldd/n;->h:Ldd/t;

    sget-object v5, Ldd/t;->l:Ldd/t;

    if-ne v2, v5, :cond_14

    iget-boolean v2, p0, Lad/j0;->K:Z

    if-nez v2, :cond_14

    iget-boolean v0, v0, Ldd/n;->i:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lad/j0;->V0:Lad/e;

    iget-object v0, v0, Lad/e;->a:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    move v6, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, v2

    move v7, v6

    :cond_1
    :goto_0
    if-ge v7, v5, :cond_3

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    sub-long v8, p1, v8

    const-wide/32 v10, 0x927c0

    cmp-long v8, v8, v10

    if-gtz v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    if-ltz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lg5/f;->O()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    :goto_1
    const/4 v0, 0x6

    const/4 v5, 0x1

    if-lt v6, v0, :cond_4

    move v6, v5

    goto :goto_2

    :cond_4
    move v6, v2

    :goto_2
    if-eqz v6, :cond_5

    goto/16 :goto_d

    :cond_5
    iget-object v6, p0, Lad/j0;->N:Lad/l;

    const-wide/16 v7, 0xbb8

    invoke-virtual {v6, p1, p2, v7, v8}, Lad/l;->b(JJ)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4034000000000000L    # 20.0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_7

    iget-wide v6, p0, Lad/j0;->t:J

    cmp-long v8, v6, v3

    if-eqz v8, :cond_6

    sub-long v6, p1, v6

    const-wide/16 v8, 0x3a98

    cmp-long v6, v6, v8

    if-gez v6, :cond_7

    :cond_6
    move v6, v5

    goto :goto_3

    :cond_7
    move v6, v2

    :goto_3
    if-nez v6, :cond_d

    iget-object v7, p0, Lad/j0;->V0:Lad/e;

    iget-object v8, p0, Lad/j0;->K0:Lad/r0;

    invoke-virtual {v8, p1, p2}, Lad/r0;->a(J)Z

    move-result v8

    iget-boolean v9, v1, Lad/a0;->r:Z

    if-nez v9, :cond_9

    iget-object v1, v1, Lad/a0;->s:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    goto :goto_5

    :cond_9
    :goto_4
    move v1, v5

    :goto_5
    iget-object v7, v7, Lad/e;->a:Ljava/util/ArrayList;

    if-nez v8, :cond_b

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    new-instance v1, Lad/c;

    const/4 v8, 0x0

    invoke-direct {v1, v8, p1, p2}, Lad/c;-><init>(IJ)V

    invoke-static {v7, v1}, Lu8/m;->r0(Ljava/util/List;Li9/c;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {v7}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    sub-long v8, p1, v8

    const-wide/16 v10, 0x4e20

    cmp-long v1, v8, v10

    if-gez v1, :cond_c

    :cond_b
    :goto_6
    move v0, v2

    goto :goto_7

    :cond_c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_b

    move v0, v5

    :goto_7
    if-eqz v0, :cond_d

    move v0, v5

    goto :goto_8

    :cond_d
    move v0, v2

    :goto_8
    if-eqz v0, :cond_11

    iget-wide v0, p0, Lad/j0;->t:J

    cmp-long v6, v0, v3

    if-lez v6, :cond_e

    sub-long v0, p1, v0

    const/16 v6, 0x3e8

    int-to-long v6, v6

    div-long/2addr v0, v6

    goto :goto_9

    :cond_e
    move-wide v0, v3

    :goto_9
    iput-wide v3, p0, Lad/j0;->t:J

    iget-object v6, p0, Lad/j0;->V0:Lad/e;

    iget-object v6, v6, Lad/e;->a:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lad/j0;->a:Ldd/k0;

    cmp-long p2, v0, v3

    if-lez p2, :cond_f

    const-string v3, " deferred_s="

    invoke-static {v0, v1, v3}, Lm/a;->k(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_f
    const-string v0, ""

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "auto_reroute"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-object p1, p0, Lad/j0;->b:Lad/r2;

    if-lez p2, :cond_10

    sget-object p2, Lcd/d;->D1:Lcd/c;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_b

    :cond_10
    sget-object p2, Lcd/d;->E1:Lcd/c;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p2, v0}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_b
    const/4 v0, 0x2

    invoke-static {p1, p2, v5, v0}, Lad/r2;->g(Lad/r2;Ljava/lang/String;ZI)V

    const/4 p1, 0x4

    invoke-static {p0, p3, p1}, Lad/j0;->C(Lad/j0;Lua/nav/routing/GeoPoint;I)V

    sget-object p0, Lad/c0;->l:Lad/c0;

    return-object p0

    :cond_11
    iget-wide v0, p0, Lad/j0;->t:J

    cmp-long p3, v0, v3

    if-nez p3, :cond_13

    iput-wide p1, p0, Lad/j0;->t:J

    iget-object p0, p0, Lad/j0;->a:Ldd/k0;

    if-eqz v6, :cond_12

    const-string p1, "turning"

    goto :goto_c

    :cond_12
    const-string p1, "gap"

    :goto_c
    const-string p2, "auto_reroute_deferred reason="

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_13
    sget-object p0, Lad/c0;->m:Lad/c0;

    return-object p0

    :cond_14
    :goto_d
    iput-wide v3, p0, Lad/j0;->t:J

    sget-object p0, Lad/c0;->n:Lad/c0;

    return-object p0
.end method

.method public final N(Lad/x1;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Lad/x1;->b:D

    iget-object v4, v0, Lad/j0;->H0:Ljava/util/List;

    const-string v5, "hazards"

    invoke-static {v4, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "used"

    iget-object v6, v0, Lad/j0;->I0:Ljava/util/HashSet;

    invoke-static {v6, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, -0x1

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    add-int/lit8 v11, v10, 0x1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lad/l0;

    iget-object v15, v14, Lad/l0;->b:Lad/k0;

    const-wide/16 v16, 0x0

    sget-object v12, Lad/k0;->l:Lad/k0;

    if-ne v15, v12, :cond_3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_2

    :cond_0
    iget-wide v12, v14, Lad/l0;->a:D

    sub-double/2addr v12, v2

    const-wide/high16 v14, -0x3fdc000000000000L    # -10.0

    cmpg-double v14, v12, v14

    if-ltz v14, :cond_3

    const-wide v14, 0x4056800000000000L    # 90.0

    cmpl-double v14, v12, v14

    if-lez v14, :cond_1

    goto :goto_2

    :cond_1
    cmpl-double v14, v12, v16

    if-ltz v14, :cond_2

    goto :goto_1

    :cond_2
    neg-double v12, v12

    const-wide v14, 0x408f400000000000L    # 1000.0

    add-double/2addr v12, v14

    :goto_1
    cmpg-double v14, v12, v8

    if-gez v14, :cond_3

    move v7, v10

    move v10, v11

    move-wide v8, v12

    goto :goto_0

    :cond_3
    :goto_2
    move v10, v11

    goto :goto_0

    :cond_4
    const-wide/16 v16, 0x0

    if-gez v7, :cond_5

    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lad/l0;

    iget-wide v3, v3, Lad/l0;->a:D

    const-wide/high16 v7, 0x4044000000000000L    # 40.0

    sub-double/2addr v3, v7

    cmpg-double v5, v3, v16

    if-gez v5, :cond_6

    move-wide/from16 v3, v16

    :cond_6
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-instance v4, Lt8/j;

    invoke-direct {v4, v2, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v4

    :goto_3
    if-nez v2, :cond_7

    return-void

    :cond_7
    iget-object v3, v2, Lt8/j;->l:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    iget-object v2, v2, Lt8/j;->m:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-wide v6, v1, Lad/x1;->b:D

    double-to-int v2, v6

    double-to-int v6, v4

    iget-object v7, v0, Lad/j0;->H0:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lad/l0;

    iget-wide v7, v7, Lad/l0;->a:D

    double-to-int v7, v7

    const-string v8, " from_s="

    const-string v9, " to_s="

    const-string v10, "signal_snap idx="

    invoke-static {v10, v3, v8, v2, v9}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " signal_s="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lad/j0;->a:Ldd/k0;

    invoke-virtual {v3, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lad/x1;->g(D)V

    move-wide/from16 v2, v16

    iput-wide v2, v0, Lad/j0;->z0:D

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    invoke-virtual {v0, v1, v2, v3}, Lad/j0;->d(Lad/x1;D)V

    return-void
.end method

.method public final O(DZJLua/nav/routing/GeoPoint;Ljava/lang/Double;ZD)V
    .locals 45

    move-object/from16 v0, p0

    move-wide/from16 v1, p4

    move-object/from16 v3, p6

    if-nez p3, :cond_0

    goto/16 :goto_d

    :cond_0
    iget-wide v4, v0, Lad/j0;->L1:J

    cmp-long v4, v1, v4

    iget-object v5, v0, Lad/j0;->j:Lx9/l0;

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    if-gez v4, :cond_2

    iput-wide v7, v0, Lad/j0;->X0:J

    iput-wide v7, v0, Lad/j0;->j1:J

    iput-boolean v6, v0, Lad/j0;->q1:Z

    iput-wide v7, v0, Lad/j0;->t:J

    :goto_0
    invoke-virtual {v5}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lad/a0;

    const/16 v39, -0x6001

    const/16 v40, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-object v6, v5

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object v11, v9

    const-wide/16 v9, 0x0

    move-object v12, v11

    const/4 v11, 0x0

    move-object v14, v12

    const-wide/16 v12, 0x0

    move-object/from16 v16, v14

    const-wide/16 v14, 0x0

    move-object/from16 v17, v16

    const/16 v16, 0x0

    move-object/from16 v18, v17

    const/16 v17, 0x0

    move-object/from16 v19, v18

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v41, v19

    move-wide/from16 v19, p1

    invoke-static/range {v1 .. v40}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v1

    move-object/from16 v4, v41

    invoke-virtual {v4, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_d

    :cond_1
    move-object v5, v4

    goto :goto_0

    :cond_2
    move-object v4, v5

    iget-object v5, v0, Lad/j0;->g1:Lua/nav/routing/GeoPoint;

    iget-object v9, v0, Lad/j0;->a:Ldd/k0;

    if-eqz v5, :cond_7

    sget-object v11, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v12, v3, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v14, v3, Lua/nav/routing/GeoPoint;->b:D

    move-object/from16 v16, v11

    iget-wide v10, v5, Lua/nav/routing/GeoPoint;->a:D

    move-wide/from16 v21, v7

    iget-wide v6, v5, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v18, v6

    move-wide/from16 v16, v10

    invoke-static/range {v12 .. v19}, Ldd/s0;->a(DDDD)D

    move-result-wide v5

    iget-wide v7, v0, Lad/j0;->h1:J

    cmp-long v7, v7, v21

    if-nez v7, :cond_3

    iput-wide v1, v0, Lad/j0;->h1:J

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v7, v0, Lad/j0;->i1:D

    :cond_3
    iget-wide v7, v0, Lad/j0;->i1:D

    const-wide/high16 v10, 0x402e000000000000L    # 15.0

    add-double/2addr v7, v10

    cmpg-double v7, v5, v7

    if-gtz v7, :cond_4

    iget-wide v7, v0, Lad/j0;->h1:J

    sub-long v7, v1, v7

    const-wide/32 v10, 0xafc8

    cmp-long v7, v7, v10

    if-gez v7, :cond_4

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v7

    iget-wide v7, v7, Lua/nav/Tuning;->x:D

    cmpl-double v7, p1, v7

    if-lez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    iget-wide v10, v0, Lad/j0;->i1:D

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    iput-wide v10, v0, Lad/j0;->i1:D

    if-eqz v7, :cond_6

    move-wide/from16 v7, v21

    iput-wide v7, v0, Lad/j0;->X0:J

    const/4 v1, 0x0

    iput-boolean v1, v0, Lad/j0;->q1:Z

    iput-wide v7, v0, Lad/j0;->j1:J

    :cond_5
    invoke-virtual {v4}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lad/a0;

    const/16 v39, -0x6001

    const/16 v40, 0x1

    const/4 v2, 0x0

    move-object v6, v4

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v7, v6

    const/4 v6, 0x0

    move-object v8, v7

    const/4 v7, 0x0

    move-object v9, v8

    const/4 v8, 0x0

    move-object/from16 v41, v9

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-wide/from16 v19, p1

    move-object/from16 v42, v41

    invoke-static/range {v1 .. v40}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v1

    move-wide/from16 v7, v19

    move-object/from16 v4, v42

    invoke-virtual {v4, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_d

    :cond_6
    move-wide/from16 v7, p1

    double-to-int v5, v5

    double-to-int v6, v7

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "approach_end d="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " off="

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ldd/k0;->n(Ljava/lang/String;)V

    const/4 v5, 0x0

    iput-object v5, v0, Lad/j0;->g1:Lua/nav/routing/GeoPoint;

    goto :goto_2

    :cond_7
    move-wide/from16 v7, p1

    :goto_2
    if-eqz p7, :cond_8

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v5

    iget-wide v5, v5, Lua/nav/Tuning;->z:D

    cmpl-double v5, v7, v5

    if-lez v5, :cond_8

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v10

    iget-wide v10, v10, Lua/nav/Tuning;->A:D

    cmpl-double v5, v5, v10

    if-gtz v5, :cond_9

    :cond_8
    if-eqz p8, :cond_c

    :cond_9
    iget-wide v5, v0, Lad/j0;->j1:J

    const-wide/16 v21, 0x0

    cmp-long v5, v5, v21

    if-nez v5, :cond_a

    iput-wide v1, v0, Lad/j0;->j1:J

    :cond_a
    if-eqz p7, :cond_b

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    goto :goto_3

    :cond_b
    const-wide v5, 0x4066800000000000L    # 180.0

    :goto_3
    iput-wide v5, v0, Lad/j0;->k1:D

    const-wide/16 v5, 0x0

    goto :goto_4

    :cond_c
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lad/j0;->j1:J

    :goto_4
    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v10

    iget-wide v10, v10, Lua/nav/Tuning;->x:D

    const-wide/high16 v12, 0x3ff8000000000000L    # 1.5

    mul-double v12, v12, p9

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    cmpl-double v10, v7, v10

    if-lez v10, :cond_d

    iget-wide v10, v0, Lad/j0;->X0:J

    cmp-long v10, v10, v5

    if-nez v10, :cond_e

    iput-wide v1, v0, Lad/j0;->X0:J

    goto :goto_5

    :cond_d
    iput-wide v5, v0, Lad/j0;->X0:J

    :cond_e
    :goto_5
    iget-wide v10, v0, Lad/j0;->X0:J

    cmp-long v12, v10, v5

    if-gtz v12, :cond_11

    iget-wide v13, v0, Lad/j0;->j1:J

    cmp-long v13, v13, v5

    if-lez v13, :cond_f

    goto :goto_6

    :cond_f
    const/4 v13, 0x0

    iput-boolean v13, v0, Lad/j0;->q1:Z

    iput-wide v5, v0, Lad/j0;->t:J

    :cond_10
    invoke-virtual {v4}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lad/a0;

    const/16 v39, -0x6001

    const/16 v40, 0x1

    const/4 v2, 0x0

    move-object v6, v4

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v9, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v41, v9

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-wide/from16 v19, p1

    move-object/from16 v43, v41

    invoke-static/range {v1 .. v40}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v1

    move-wide/from16 v7, v19

    move-object/from16 v4, v43

    invoke-virtual {v4, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_d

    :cond_11
    :goto_6
    if-lez v12, :cond_12

    sub-long v5, v1, v10

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v10

    iget-wide v10, v10, Lua/nav/Tuning;->y:J

    cmp-long v5, v5, v10

    if-lez v5, :cond_12

    const/4 v5, 0x1

    goto :goto_7

    :cond_12
    const/4 v5, 0x0

    :goto_7
    iget-wide v10, v0, Lad/j0;->j1:J

    const-wide/16 v21, 0x0

    cmp-long v6, v10, v21

    if-lez v6, :cond_13

    sub-long v10, v1, v10

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v6

    iget-wide v12, v6, Lua/nav/Tuning;->B:J

    cmp-long v6, v10, v12

    if-ltz v6, :cond_13

    const/4 v6, 0x1

    goto :goto_8

    :cond_13
    const/4 v6, 0x0

    :goto_8
    if-nez v5, :cond_15

    if-eqz v6, :cond_14

    goto :goto_9

    :cond_14
    const/16 v18, 0x0

    goto :goto_a

    :cond_15
    :goto_9
    const/16 v18, 0x1

    :goto_a
    if-eqz v18, :cond_1a

    iget-boolean v10, v0, Lad/j0;->q1:Z

    if-nez v10, :cond_1a

    const/4 v10, 0x1

    iput-boolean v10, v0, Lad/j0;->q1:Z

    double-to-int v10, v7

    const-string v11, ""

    if-eqz v6, :cond_16

    if-nez v5, :cond_16

    iget-wide v5, v0, Lad/j0;->k1:D

    double-to-int v5, v5

    const-string v6, " fast course_diff="

    invoke-static {v5, v6}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_b

    :cond_16
    move-object v5, v11

    :goto_b
    if-eqz p8, :cond_17

    const-string v11, " wrong_way"

    :cond_17
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v12, "off_route "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "m"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ldd/k0;->n(Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lad/j0;->t:J

    invoke-virtual {v0, v1, v2, v3}, Lad/j0;->M(JLua/nav/routing/GeoPoint;)Lad/c0;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v0, v0, Lad/j0;->b:Lad/r2;

    const/4 v2, 0x2

    const/4 v10, 0x1

    if-eq v1, v10, :cond_19

    if-ne v1, v2, :cond_18

    sget-object v1, Lcd/d;->C1:Lcd/c;

    const/4 v13, 0x0

    new-array v3, v13, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10, v2}, Lad/r2;->g(Lad/r2;Ljava/lang/String;ZI)V

    goto :goto_c

    :cond_18
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_19
    const/4 v13, 0x0

    sget-object v1, Lcd/d;->B1:Lcd/c;

    new-array v3, v13, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10, v2}, Lad/r2;->g(Lad/r2;Ljava/lang/String;ZI)V

    goto :goto_c

    :cond_1a
    if-eqz v18, :cond_1b

    iget-wide v5, v0, Lad/j0;->t:J

    const-wide/16 v21, 0x0

    cmp-long v5, v5, v21

    if-lez v5, :cond_1b

    invoke-virtual {v0, v1, v2, v3}, Lad/j0;->M(JLua/nav/routing/GeoPoint;)Lad/c0;

    :cond_1b
    :goto_c
    invoke-virtual {v4}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lad/a0;

    const/16 v39, -0x6001

    const/16 v40, 0x1

    const/4 v2, 0x0

    move-object v6, v4

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v9, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v41, v9

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-wide/from16 v19, p1

    move-object/from16 v44, v41

    invoke-static/range {v1 .. v40}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v1

    move-object/from16 v6, v44

    invoke-virtual {v6, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :goto_d
    return-void

    :cond_1c
    move-wide/from16 v7, p1

    move-object v4, v6

    goto :goto_c
.end method

.method public final P(Lad/x1;Ldd/l0;DJ)Z
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    iget-object v7, v2, Ldd/l0;->h:Ljava/lang/Float;

    iget-object v8, v2, Ldd/l0;->g:Ljava/lang/Float;

    iget-object v9, v1, Lad/x1;->a:Lua/nav/routing/Route;

    iget-object v9, v9, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-static {v9}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lua/nav/routing/GeoPoint;

    const/16 v16, 0x1

    const-wide v17, 0x4066800000000000L    # 180.0

    const/16 v19, 0x0

    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    if-eqz v9, :cond_6

    const-wide v20, 0x4080e00000000000L    # 540.0

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v12

    float-to-double v12, v12

    const-wide/high16 v22, 0x4004000000000000L    # 2.5

    cmpg-double v12, v12, v22

    if-ltz v12, :cond_5

    iget-wide v12, v0, Lad/j0;->Z:J

    sub-long v12, v5, v12

    const-wide/32 v22, 0xea60

    cmp-long v12, v12, v22

    if-gtz v12, :cond_5

    const-wide/high16 v12, 0x4054000000000000L    # 80.0

    cmpl-double v12, v3, v12

    if-gtz v12, :cond_5

    sget-object v12, Ldd/t0;->Companion:Ldd/s0;

    const-wide v30, 0x4076800000000000L    # 360.0

    iget-wide v14, v2, Ldd/l0;->d:D

    const-wide/16 v32, 0x0

    iget-wide v10, v2, Ldd/l0;->e:D

    move-object v2, v7

    move-object v13, v8

    iget-wide v7, v9, Lua/nav/routing/GeoPoint;->a:D

    move-wide/from16 v26, v7

    iget-wide v7, v9, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v28, v7

    move-wide/from16 v24, v10

    move-wide/from16 v22, v14

    invoke-static/range {v22 .. v29}, Ldd/s0;->a(DDDD)D

    move-result-wide v7

    const-wide/high16 v9, 0x4034000000000000L    # 20.0

    cmpg-double v7, v7, v9

    if-ltz v7, :cond_1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    const-wide/high16 v9, 0x4039000000000000L    # 25.0

    add-double/2addr v9, v3

    iget-object v11, v1, Lad/x1;->a:Lua/nav/routing/Route;

    invoke-virtual {v11}, Lua/nav/routing/Route;->c()D

    move-result-wide v11

    cmpl-double v14, v9, v11

    if-lez v14, :cond_0

    move-wide v9, v11

    :cond_0
    invoke-virtual {v1, v9, v10}, Lad/x1;->d(D)Lad/v1;

    move-result-object v9

    iget v9, v9, Lad/v1;->b:F

    float-to-double v9, v9

    sub-double/2addr v7, v9

    rem-double v7, v7, v30

    add-double v7, v7, v20

    rem-double v7, v7, v30

    sub-double v7, v7, v17

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide/high16 v9, 0x405e000000000000L    # 120.0

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_2

    :cond_1
    move-wide/from16 v7, v32

    goto/16 :goto_3

    :cond_2
    iget-wide v7, v0, Lad/j0;->p0:J

    cmp-long v9, v7, v32

    if-nez v9, :cond_3

    iput-wide v5, v0, Lad/j0;->p0:J

    :goto_0
    move/from16 v7, v19

    goto :goto_4

    :cond_3
    sub-long v7, v5, v7

    const-wide/16 v9, 0x9c4

    cmp-long v7, v7, v9

    if-ltz v7, :cond_4

    move/from16 v7, v16

    goto :goto_1

    :cond_4
    move/from16 v7, v19

    :goto_1
    if-eqz v7, :cond_7

    iget-boolean v8, v0, Lad/j0;->q1:Z

    if-nez v8, :cond_7

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {v1, v3, v4}, Lad/x1;->d(D)Lad/v1;

    move-result-object v9

    iget v9, v9, Lad/v1;->b:F

    float-to-int v9, v9

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v10

    float-to-double v10, v10

    const-wide v14, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v10, v14

    double-to-int v10, v10

    double-to-int v11, v3

    const-string v12, " route="

    const-string v14, " v="

    const-string v15, "start_wrong_way course="

    invoke-static {v15, v8, v12, v9, v14}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " s="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lad/j0;->a:Ldd/k0;

    invoke-virtual {v9, v8}, Ldd/k0;->n(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    move-object v2, v7

    move-object v13, v8

    :goto_2
    const-wide v30, 0x4076800000000000L    # 360.0

    const-wide/16 v7, 0x0

    goto :goto_3

    :cond_6
    move-object v2, v7

    move-object v13, v8

    const-wide v20, 0x4080e00000000000L    # 540.0

    goto :goto_2

    :goto_3
    iput-wide v7, v0, Lad/j0;->p0:J

    goto :goto_0

    :cond_7
    :goto_4
    if-eqz v7, :cond_8

    goto :goto_5

    :cond_8
    if-eqz v2, :cond_9

    if-eqz v13, :cond_9

    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v7, v7

    const-wide v9, 0x4010aaaaaaaaaaabL    # 4.166666666666667

    cmpg-double v7, v7, v9

    if-ltz v7, :cond_9

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v7, v2

    invoke-virtual {v1, v3, v4}, Lad/x1;->d(D)Lad/v1;

    move-result-object v1

    iget v1, v1, Lad/v1;->b:F

    float-to-double v1, v1

    sub-double/2addr v7, v1

    rem-double v7, v7, v30

    add-double v7, v7, v20

    rem-double v7, v7, v30

    sub-double v7, v7, v17

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v7, 0x4062c00000000000L    # 150.0

    cmpg-double v1, v1, v7

    if-gtz v1, :cond_a

    :cond_9
    const-wide/16 v7, 0x0

    goto :goto_6

    :cond_a
    iget-wide v1, v0, Lad/j0;->o0:J

    const-wide/16 v32, 0x0

    cmp-long v7, v1, v32

    if-nez v7, :cond_b

    iput-wide v5, v0, Lad/j0;->o0:J

    iput-wide v3, v0, Lad/j0;->q0:D

    return v19

    :cond_b
    sub-long v1, v5, v1

    const-wide/16 v5, 0xfa0

    cmp-long v1, v1, v5

    if-ltz v1, :cond_c

    iget-wide v0, v0, Lad/j0;->q0:D

    sub-double/2addr v0, v3

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_c

    :goto_5
    return v16

    :cond_c
    return v19

    :goto_6
    iput-wide v7, v0, Lad/j0;->o0:J

    return v19
.end method

.method public final b(J)I
    .locals 43

    move-object/from16 v0, p0

    iget v1, v0, Lad/j0;->H1:I

    if-eqz v1, :cond_1

    iget-wide v2, v0, Lad/j0;->I1:J

    cmp-long v2, p1, v2

    if-ltz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "manual_motion_expired mode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lad/j0;->a:Ldd/k0;

    invoke-virtual {v2, v1}, Ldd/k0;->n(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput v1, v0, Lad/j0;->H1:I

    :cond_0
    iget-object v1, v0, Lad/j0;->j:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lad/a0;

    const v41, 0x7fffffff

    const/16 v42, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-static/range {v3 .. v42}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_1
    iget v0, v0, Lad/j0;->H1:I

    return v0
.end method

.method public final c(Lad/x1;DDJ)V
    .locals 55

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v11, p6

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v4

    iget-boolean v4, v4, Lua/nav/Tuning;->t:Z

    const-wide v13, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v15, -0x1

    if-nez v4, :cond_0

    iput v15, v0, Lad/j0;->y1:I

    iput-wide v13, v0, Lad/j0;->A1:D

    mul-double v2, p2, p4

    invoke-virtual {v1, v2, v3}, Lad/x1;->a(D)V

    iget-wide v4, v0, Lad/j0;->c0:D

    add-double/2addr v4, v2

    iput-wide v4, v0, Lad/j0;->c0:D

    return-void

    :cond_0
    iget-wide v4, v1, Lad/x1;->b:D

    mul-double v6, p2, p4

    add-double/2addr v4, v6

    invoke-virtual/range {p0 .. p1}, Lad/j0;->v(Lad/x1;)Lad/e0;

    move-result-object v8

    const-wide/high16 v16, 0x4014000000000000L    # 5.0

    const/16 v18, 0x0

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_2

    iget-wide v13, v8, Lad/e0;->b:D

    sub-double v13, v13, v16

    cmpg-double v19, v13, v9

    if-gez v19, :cond_1

    move-wide v13, v9

    :cond_1
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    goto :goto_0

    :cond_2
    move-object/from16 v13, v18

    :goto_0
    if-eqz v8, :cond_3

    move-wide/from16 v19, v4

    iget-wide v4, v8, Lad/e0;->b:D

    iget-wide v9, v8, Lad/e0;->c:D

    iget v14, v8, Lad/e0;->a:I

    invoke-static {v13}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    cmpg-double v8, v19, v22

    if-gtz v8, :cond_4

    :cond_3
    move-wide v2, v6

    move v4, v15

    goto/16 :goto_23

    :cond_4
    iget v8, v0, Lad/j0;->y1:I

    move-wide/from16 v19, v6

    const-string v15, " route_turn="

    iget-object v6, v0, Lad/j0;->a:Ldd/k0;

    iget-object v7, v0, Lad/j0;->N:Lad/l;

    if-eq v8, v14, :cond_6

    iput v14, v0, Lad/j0;->y1:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lad/j0;->l1:D

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lad/j0;->z1:J

    iget v8, v0, Lad/j0;->C1:I

    if-ne v8, v14, :cond_5

    move-wide/from16 v25, v2

    iget-wide v2, v7, Lad/l;->n:J

    cmp-long v2, v2, v25

    if-ltz v2, :cond_5

    move-wide/from16 v25, v9

    goto :goto_1

    :cond_5
    move-wide/from16 v25, v9

    const-wide/16 v2, 0x2ee0

    invoke-virtual {v7, v11, v12, v2, v3}, Lad/l;->b(JJ)D

    move-result-wide v8

    iput-wide v8, v7, Lad/l;->m:D

    iput-wide v11, v7, Lad/l;->n:J

    iput v14, v0, Lad/j0;->C1:I

    :goto_1
    double-to-int v2, v4

    move-wide/from16 v8, v25

    double-to-int v3, v8

    const-string v10, "turn_hold step="

    move-wide/from16 v25, v4

    const-string v4, " s="

    invoke-static {v10, v14, v4, v2, v15}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    move-wide/from16 v25, v4

    move-wide v8, v9

    :goto_2
    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iput-wide v2, v0, Lad/j0;->A1:D

    iput-wide v8, v0, Lad/j0;->B1:D

    iget-object v2, v1, Lad/x1;->a:Lua/nav/routing/Route;

    iget-wide v3, v1, Lad/x1;->b:D

    invoke-virtual {v1, v3, v4}, Lad/x1;->d(D)Lad/v1;

    move-result-object v3

    iget v3, v3, Lad/v1;->c:I

    invoke-virtual {v2, v3}, Lua/nav/routing/Route;->d(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    const-wide/high16 v27, 0x4034000000000000L    # 20.0

    int-to-double v3, v2

    const-wide v29, 0x400ccccccccccccdL    # 3.6

    div-double v3, v3, v29

    const-wide v29, 0x3ff199999999999aL    # 1.1

    mul-double v3, v3, v29

    :goto_3
    move-wide/from16 v29, v8

    goto :goto_4

    :cond_7
    const-wide/high16 v27, 0x4034000000000000L    # 20.0

    move-wide/from16 v3, v27

    goto :goto_3

    :goto_4
    iget-wide v8, v0, Lad/j0;->l1:D

    move-wide/from16 v31, v8

    move-wide/from16 v8, p2

    invoke-static {v8, v9, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    mul-double v2, v2, p4

    add-double v2, v2, v31

    iput-wide v2, v0, Lad/j0;->l1:D

    iget-boolean v2, v7, Lad/l;->h:Z

    if-nez v2, :cond_8

    iget-wide v2, v0, Lad/j0;->z1:J

    const/16 v4, 0x3e8

    int-to-double v4, v4

    mul-double v4, v4, p4

    double-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lad/j0;->z1:J

    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lad/j0;->S:Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v3, v4}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v5, :cond_9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lad/f0;

    new-instance v31, Lad/p0;

    move/from16 p3, v9

    iget-wide v8, v10, Lad/f0;->a:J

    sub-long v38, v11, v8

    iget-wide v8, v10, Lad/f0;->b:D

    move/from16 p5, v5

    iget-wide v4, v10, Lad/f0;->c:D

    move-wide/from16 v34, v4

    iget-wide v4, v10, Lad/f0;->d:D

    move-wide/from16 v36, v4

    move-wide/from16 v32, v8

    invoke-direct/range {v31 .. v39}, Lad/p0;-><init>(DDDJ)V

    move-object/from16 v4, v31

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v9, p3

    move/from16 v5, p5

    const/16 v4, 0xa

    goto :goto_5

    :cond_9
    const/4 v4, 0x2

    invoke-static {v4, v2}, Lu8/m;->y0(ILjava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    const-string v8, "turn_hold_release step="

    iget-object v9, v0, Lad/j0;->R:Ljava/util/HashSet;

    const-wide/high16 v31, 0x403e000000000000L    # 30.0

    if-ne v5, v4, :cond_d

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_8

    :cond_a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lad/p0;

    move-object/from16 p3, v2

    move-object v10, v3

    iget-wide v2, v5, Lad/p0;->a:J

    const-wide/16 v33, 0x7530

    cmp-long v2, v2, v33

    if-gtz v2, :cond_b

    iget-wide v2, v5, Lad/p0;->c:D

    const-wide v33, 0x4062c00000000000L    # 150.0

    cmpg-double v33, v2, v33

    if-gtz v33, :cond_b

    move-wide/from16 v33, v2

    iget-wide v2, v5, Lad/p0;->d:D

    add-double v35, v33, v31

    cmpg-double v2, v2, v35

    if-gtz v2, :cond_b

    iget-wide v2, v5, Lad/p0;->b:D

    sub-double v2, v2, v33

    const-wide v33, 0x4072c00000000000L    # 300.0

    add-double v33, v25, v33

    cmpl-double v2, v2, v33

    if-lez v2, :cond_b

    move-object/from16 v2, p3

    move-object v3, v10

    goto :goto_6

    :cond_b
    :goto_7
    move-wide/from16 v2, v19

    goto :goto_9

    :cond_c
    :goto_8
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reason=net_far"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    const-string v2, "net_far"

    invoke-virtual {v0, v14, v2}, Lad/j0;->m(ILjava/lang/String;)V

    const/4 v2, -0x1

    iput v2, v0, Lad/j0;->y1:I

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v3, v0, Lad/j0;->A1:D

    iput v2, v0, Lad/j0;->C1:I

    invoke-virtual {v7}, Lad/l;->e()V

    iput-wide v11, v7, Lad/l;->g:J

    move-wide/from16 v2, v19

    invoke-virtual {v1, v2, v3}, Lad/x1;->a(D)V

    iget-wide v4, v0, Lad/j0;->c0:D

    add-double/2addr v4, v2

    iput-wide v4, v0, Lad/j0;->c0:D

    return-void

    :cond_d
    move-object v10, v3

    goto :goto_7

    :goto_9
    iget-wide v4, v0, Lad/j0;->z1:J

    const-wide/16 v19, 0x1f40

    cmp-long v4, v4, v19

    const-string v5, " gyro="

    if-ltz v4, :cond_12

    new-instance v4, Ljava/util/ArrayList;

    move-wide/from16 v19, v2

    move-object v2, v10

    const/16 v10, 0xa

    invoke-static {v2, v10}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v3, :cond_e

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v34, v2

    move-object/from16 v2, v33

    check-cast v2, Lad/f0;

    new-instance v35, Lad/p0;

    move/from16 p4, v10

    iget-wide v10, v2, Lad/f0;->a:J

    sub-long v42, p6, v10

    iget-wide v10, v2, Lad/f0;->b:D

    move-wide/from16 v36, v10

    iget-wide v10, v2, Lad/f0;->c:D

    move/from16 p5, v3

    iget-wide v2, v2, Lad/f0;->d:D

    move-wide/from16 v40, v2

    move-wide/from16 v38, v10

    invoke-direct/range {v35 .. v43}, Lad/p0;-><init>(DDDJ)V

    move-object/from16 v2, v35

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v10, p4

    move/from16 v3, p5

    move-wide/from16 v11, p6

    move-object/from16 v2, v34

    goto :goto_a

    :cond_e
    const/4 v2, 0x2

    invoke-static {v2, v4}, Lu8/m;->y0(ILjava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_10

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_f

    goto :goto_c

    :cond_f
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lad/p0;

    iget-wide v10, v3, Lad/p0;->a:J

    const-wide/16 v23, 0x2ee0

    cmp-long v4, v10, v23

    if-gtz v4, :cond_10

    iget-wide v10, v3, Lad/p0;->c:D

    const-wide/high16 v33, 0x4059000000000000L    # 100.0

    cmpg-double v4, v10, v33

    if-gtz v4, :cond_10

    move-wide/from16 v33, v10

    iget-wide v10, v3, Lad/p0;->d:D

    add-double v35, v33, v31

    cmpg-double v4, v10, v35

    if-gtz v4, :cond_10

    iget-wide v3, v3, Lad/p0;->b:D

    sub-double v3, v3, v33

    add-double v10, v25, v27

    cmpl-double v3, v3, v10

    if-lez v3, :cond_10

    goto :goto_b

    :cond_10
    move-wide/from16 v11, p6

    goto :goto_d

    :cond_11
    :goto_c
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v2, "net_passed"

    invoke-virtual {v0, v14, v2}, Lad/j0;->m(ILjava/lang/String;)V

    add-double v2, v25, v27

    iget-wide v8, v1, Lad/x1;->b:D

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iget-wide v8, v7, Lad/l;->m:D

    double-to-int v4, v8

    iget-wide v8, v1, Lad/x1;->b:D

    double-to-int v8, v8

    double-to-int v9, v2

    const-string v10, "turn_snap step="

    const-string v11, " from_s="

    invoke-static {v10, v14, v5, v4, v11}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to_s="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " src=net"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ldd/k0;->n(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lad/x1;->g(D)V

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lad/j0;->z0:D

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    invoke-virtual {v0, v1, v2, v3}, Lad/j0;->d(Lad/x1;D)V

    const/4 v2, -0x1

    iput v2, v0, Lad/j0;->y1:I

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v3, v0, Lad/j0;->A1:D

    iput v2, v0, Lad/j0;->C1:I

    invoke-virtual {v7}, Lad/l;->e()V

    move-wide/from16 v11, p6

    iput-wide v11, v7, Lad/l;->g:J

    return-void

    :cond_12
    move-wide/from16 v19, v2

    :goto_d
    const-wide/16 v2, 0x0

    iget v4, v0, Lad/j0;->o1:I

    sget-object v9, Lcd/d;->t1:Lcd/c;

    const-string v10, " travel="

    const-string v3, "blind_deviation_missed_turn step="

    const-wide/16 v23, 0x3a98

    iget-object v2, v0, Lad/j0;->L0:Lad/f;

    const-wide v27, 0x3fd3333333333333L    # 0.3

    move-object/from16 p3, v3

    if-eq v4, v14, :cond_25

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v4

    iget-boolean v4, v4, Lua/nav/Tuning;->H:Z

    if-eqz v4, :cond_25

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lad/j0;->N0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v33, v2

    move-object/from16 p5, v5

    move-object/from16 v34, v6

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_14

    const-wide/high16 v35, 0x4044000000000000L    # 40.0

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    move-object v6, v5

    check-cast v6, Lad/x0;

    move/from16 v37, v1

    move/from16 v38, v2

    iget-wide v1, v6, Lad/x0;->a:J

    sub-long v1, v11, v1

    cmp-long v1, v1, v23

    if-gtz v1, :cond_13

    iget-wide v1, v6, Lad/x0;->d:D

    cmpg-double v1, v1, v35

    if-gtz v1, :cond_13

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    move/from16 v1, v37

    move/from16 v2, v38

    goto :goto_e

    :cond_14
    const-wide/high16 v35, 0x4044000000000000L    # 40.0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_f
    if-ge v5, v3, :cond_16

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    move/from16 v37, v3

    move-object v3, v6

    check-cast v3, Lad/x0;

    move-object/from16 v38, v4

    move/from16 v39, v5

    iget-wide v4, v3, Lad/x0;->b:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v5, v7

    move-object/from16 v40, v8

    iget-wide v7, v3, Lad/x0;->c:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-instance v7, Lt8/j;

    invoke-direct {v7, v4, v3}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    move-object v7, v5

    move/from16 v3, v37

    move-object/from16 v4, v38

    move/from16 v5, v39

    move-object/from16 v8, v40

    goto :goto_f

    :cond_16
    move-object v5, v7

    move-object/from16 v40, v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v8, 0x0

    :goto_10
    move-object/from16 v50, p3

    move-object/from16 v52, p5

    move-object/from16 v44, v5

    move-object/from16 v48, v9

    move-object/from16 v49, v10

    move-object/from16 v45, v13

    move-object/from16 v21, v15

    move-wide/from16 v46, v19

    move-object/from16 v53, v34

    move-object/from16 v51, v40

    const-wide/16 v34, 0x0

    move/from16 v19, v14

    goto/16 :goto_12

    :cond_17
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    const/16 v37, 0x0

    :goto_11
    if-ge v3, v1, :cond_1a

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v38, v3, 0x1

    move-object v3, v4

    check-cast v3, Lad/x0;

    move-object v4, v2

    new-instance v2, Lua/nav/routing/GeoPoint;

    iget-wide v6, v3, Lad/x0;->b:D

    move-object/from16 v39, v4

    move-object v8, v5

    iget-wide v4, v3, Lad/x0;->c:D

    invoke-direct {v2, v6, v7, v4, v5}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    move-object v4, v9

    const/4 v9, 0x0

    move-object v5, v10

    const/16 v10, 0x1e

    move-object v6, v3

    move-object v7, v4

    const-wide/16 v3, 0x0

    move-object/from16 v42, v5

    move-object/from16 v41, v6

    const-wide/16 v5, 0x0

    move-object/from16 v43, v7

    move-object/from16 v44, v8

    const-wide/16 v7, 0x0

    move-object/from16 v50, p3

    move-object/from16 v52, p5

    move-object/from16 v45, v13

    move-object/from16 v21, v15

    move-wide/from16 v46, v19

    move-object/from16 v53, v34

    move-object/from16 v51, v40

    move-object/from16 v15, v41

    move-object/from16 v49, v42

    move-object/from16 v48, v43

    move/from16 v20, v1

    move/from16 v19, v14

    move-wide/from16 v13, v35

    const-wide/16 v34, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v10}, Lad/x1;->e(Lad/x1;Lua/nav/routing/GeoPoint;DDDLjava/lang/Double;I)Lad/w1;

    move-result-object v2

    iget-wide v3, v2, Lad/w1;->a:D

    sub-double v5, v25, v16

    cmpl-double v1, v3, v5

    if-ltz v1, :cond_18

    iget-wide v1, v2, Lad/w1;->b:D

    iget-wide v3, v15, Lad/x0;->d:D

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    cmpl-double v1, v1, v3

    if-lez v1, :cond_18

    add-int/lit8 v37, v37, 0x1

    if-ltz v37, :cond_19

    :cond_18
    move-wide/from16 v35, v13

    move/from16 v14, v19

    move/from16 v1, v20

    move-object/from16 v15, v21

    move/from16 v3, v38

    move-object/from16 v2, v39

    move-object/from16 v5, v44

    move-object/from16 v13, v45

    move-wide/from16 v19, v46

    move-object/from16 v9, v48

    move-object/from16 v10, v49

    move-object/from16 p3, v50

    move-object/from16 v40, v51

    move-object/from16 p5, v52

    move-object/from16 v34, v53

    goto/16 :goto_11

    :cond_19
    invoke-static {}, Lg5/f;->O()V

    throw v18

    :cond_1a
    move/from16 v8, v37

    goto/16 :goto_10

    :goto_12
    iget-object v1, v0, Lad/j0;->p:Lid/d0;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Lid/d0;->a()Lad/q1;

    move-result-object v1

    if-eqz v1, :cond_1f

    iget-wide v2, v1, Lad/q1;->h:J

    sub-long v2, v11, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1b

    iget-wide v2, v1, Lad/q1;->c:D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1b

    goto :goto_13

    :cond_1b
    move-object/from16 v1, v18

    :goto_13
    if-nez v1, :cond_1c

    goto :goto_15

    :cond_1c
    iget-wide v2, v1, Lad/q1;->e:D

    cmpl-double v2, v2, v27

    if-gez v2, :cond_1e

    const/4 v2, 0x1

    if-ge v8, v2, :cond_1d

    goto :goto_14

    :cond_1d
    iget-object v2, v1, Lad/q1;->a:Lua/nav/routing/GeoPoint;

    iget-object v9, v1, Lad/q1;->b:Ljava/lang/Double;

    const/16 v10, 0xe

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v10}, Lad/x1;->e(Lad/x1;Lua/nav/routing/GeoPoint;DDDLjava/lang/Double;I)Lad/w1;

    move-result-object v2

    iget-wide v1, v2, Lad/w1;->a:D

    sub-double v4, v25, v16

    cmpl-double v1, v1, v4

    if-ltz v1, :cond_1e

    goto :goto_16

    :cond_1e
    :goto_14
    move-wide v1, v11

    move/from16 v10, v19

    move-object/from16 v54, v21

    move-wide/from16 v14, v29

    move-object/from16 v13, v33

    move-object/from16 v8, v44

    goto/16 :goto_1a

    :cond_1f
    :goto_15
    const/4 v1, 0x3

    if-lt v8, v1, :cond_1e

    :goto_16
    iget-wide v1, v0, Lad/j0;->l1:D

    move-object/from16 v8, v44

    iget-wide v3, v8, Lad/l;->m:D

    cmpg-double v1, v1, v31

    if-gez v1, :cond_20

    const/4 v1, 0x0

    goto :goto_19

    :cond_20
    mul-double v1, v3, v29

    cmpl-double v1, v1, v34

    if-lez v1, :cond_21

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    mul-double v3, v3, v27

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_21

    const/4 v1, 0x1

    :goto_17
    const/4 v2, 0x1

    goto :goto_18

    :cond_21
    const/4 v1, 0x0

    goto :goto_17

    :goto_18
    xor-int/2addr v1, v2

    :goto_19
    if-eqz v1, :cond_24

    move/from16 v10, v19

    iput v10, v0, Lad/j0;->o1:I

    iput v10, v0, Lad/j0;->s:I

    invoke-virtual/range {v33 .. v33}, Lad/f;->b()Z

    move-result v1

    if-nez v1, :cond_23

    move-object/from16 v13, v33

    invoke-virtual {v13, v11, v12}, Lad/f;->a(J)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-wide v1, v0, Lad/j0;->l1:D

    double-to-int v1, v1

    iget-wide v2, v8, Lad/l;->m:D

    double-to-int v2, v2

    move-wide/from16 v14, v29

    double-to-int v3, v14

    move-object/from16 v4, v49

    move-object/from16 v5, v50

    move-object/from16 v6, v52

    invoke-static {v5, v10, v4, v1, v6}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " evidence=1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    new-array v7, v1, [Ljava/lang/Object;

    move-object/from16 v1, v48

    invoke-virtual {v1, v7}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v43, v1

    iget-wide v0, v8, Lad/l;->m:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v6, 0x0

    move-object/from16 v42, v4

    move-object v4, v7

    const/16 v7, 0x20

    move-object/from16 v54, v2

    move-object v9, v5

    move-wide v1, v11

    move-object/from16 v12, v42

    move-object/from16 v11, v52

    move-object v5, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v7}, Lad/j0;->A(Lad/j0;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Lt8/j;I)V

    goto :goto_1c

    :cond_22
    move-wide v1, v11

    move-object/from16 v54, v21

    move-wide/from16 v14, v29

    :goto_1a
    move-object/from16 v43, v48

    move-object/from16 v12, v49

    move-object/from16 v9, v50

    move-object/from16 v11, v52

    goto :goto_1c

    :cond_23
    move-wide v1, v11

    :goto_1b
    move-object/from16 v54, v21

    move-wide/from16 v14, v29

    move-object/from16 v13, v33

    goto :goto_1a

    :cond_24
    move-wide v1, v11

    move/from16 v10, v19

    goto :goto_1b

    :cond_25
    move-object/from16 v53, v6

    move-object/from16 v51, v8

    move-object/from16 v43, v9

    move-object/from16 v45, v13

    move-object/from16 v54, v15

    move-wide/from16 v46, v19

    const-wide/16 v34, 0x0

    move-object/from16 v9, p3

    move-object v13, v2

    move-object v8, v7

    move-wide v1, v11

    move-object v11, v5

    move-object v12, v10

    move v10, v14

    move-wide/from16 v14, v29

    :goto_1c
    iget v3, v0, Lad/j0;->o1:I

    if-eq v3, v10, :cond_29

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v3

    iget-boolean v3, v3, Lua/nav/Tuning;->K:Z

    if-eqz v3, :cond_29

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v3

    iget-boolean v3, v3, Lua/nav/Tuning;->H:Z

    if-eqz v3, :cond_29

    iget-wide v3, v0, Lad/j0;->l1:D

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v5

    iget-wide v5, v5, Lua/nav/Tuning;->L:D

    iget-object v7, v0, Lad/j0;->j:Lx9/l0;

    invoke-virtual {v7}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lad/a0;

    move-wide/from16 v16, v3

    iget-wide v3, v7, Lad/a0;->w:D

    const-wide v19, 0x3fe999999999999aL    # 0.8

    mul-double v3, v3, v19

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    iget-wide v5, v8, Lad/l;->m:D

    cmpg-double v3, v16, v3

    if-gez v3, :cond_26

    const/4 v3, 0x0

    const/16 v16, 0x1

    goto :goto_1f

    :cond_26
    mul-double v3, v5, v14

    cmpl-double v3, v3, v34

    if-lez v3, :cond_27

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    mul-double v5, v5, v27

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_27

    const/4 v3, 0x1

    :goto_1d
    const/16 v16, 0x1

    goto :goto_1e

    :cond_27
    const/4 v3, 0x0

    goto :goto_1d

    :goto_1e
    xor-int/lit8 v3, v3, 0x1

    :goto_1f
    if-eqz v3, :cond_28

    iput v10, v0, Lad/j0;->o1:I

    iput v10, v0, Lad/j0;->s:I

    invoke-virtual {v13}, Lad/f;->b()Z

    move-result v3

    if-nez v3, :cond_28

    invoke-virtual {v13, v1, v2}, Lad/f;->a(J)Z

    move-result v3

    if-eqz v3, :cond_28

    iget-wide v3, v0, Lad/j0;->l1:D

    double-to-int v3, v3

    iget-wide v4, v8, Lad/l;->m:D

    double-to-int v4, v4

    double-to-int v5, v14

    invoke-static {v9, v10, v12, v3, v11}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v54

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x0

    new-array v4, v9, [Ljava/lang/Object;

    move-object/from16 v7, v43

    invoke-virtual {v7, v4}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v8, Lad/l;->m:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x30

    invoke-static/range {v0 .. v7}, Lad/j0;->A(Lad/j0;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Lt8/j;I)V

    goto :goto_20

    :cond_28
    const/4 v9, 0x0

    goto :goto_20

    :cond_29
    const/4 v9, 0x0

    const/16 v16, 0x1

    :goto_20
    iget-wide v3, v0, Lad/j0;->z1:J

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v5

    iget v5, v5, Lua/nav/Tuning;->w:I

    int-to-long v5, v5

    const-wide/16 v11, 0x3e8

    mul-long/2addr v5, v11

    const-wide/16 v11, 0xbb8

    invoke-virtual {v8, v1, v2, v11, v12}, Lad/l;->b(JJ)D

    move-result-wide v1

    iget-wide v11, v8, Lad/l;->m:D

    cmp-long v7, v3, v5

    if-gtz v7, :cond_2b

    :cond_2a
    move-object/from16 v1, p1

    goto/16 :goto_22

    :cond_2b
    mul-double v17, v1, v14

    cmpl-double v7, v17, v34

    if-lez v7, :cond_2c

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v17, 0x4024000000000000L    # 10.0

    cmpl-double v1, v1, v17

    if-ltz v1, :cond_2c

    move/from16 v1, v16

    goto :goto_21

    :cond_2c
    move v1, v9

    :goto_21
    mul-double v17, v11, v14

    cmpl-double v2, v17, v34

    if-lez v2, :cond_2d

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    mul-double v13, v13, v27

    cmpl-double v2, v11, v13

    if-ltz v2, :cond_2d

    move/from16 v9, v16

    :cond_2d
    if-nez v1, :cond_2e

    if-eqz v9, :cond_2f

    :cond_2e
    add-long v5, v5, v23

    cmp-long v1, v3, v5

    if-lez v1, :cond_2a

    :cond_2f
    iget-wide v1, v8, Lad/l;->m:D

    double-to-int v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, v51

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " reason=timeout gyro="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v53

    invoke-virtual {v2, v1}, Ldd/k0;->n(Ljava/lang/String;)V

    const/4 v2, -0x1

    iput v2, v0, Lad/j0;->y1:I

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v3, v0, Lad/j0;->A1:D

    iput v2, v0, Lad/j0;->C1:I

    invoke-virtual {v8}, Lad/l;->e()V

    move-object/from16 v1, p1

    move-wide/from16 v2, v46

    invoke-virtual {v1, v2, v3}, Lad/x1;->a(D)V

    iget-wide v4, v0, Lad/j0;->c0:D

    add-double/2addr v4, v2

    iput-wide v4, v0, Lad/j0;->c0:D

    return-void

    :goto_22
    invoke-virtual/range {v45 .. v45}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-wide v4, v1, Lad/x1;->b:D

    cmpg-double v6, v2, v4

    if-gez v6, :cond_30

    move-wide v2, v4

    :cond_30
    iget-wide v6, v0, Lad/j0;->c0:D

    sub-double v4, v2, v4

    add-double/2addr v4, v6

    iput-wide v4, v0, Lad/j0;->c0:D

    invoke-virtual {v1, v2, v3}, Lad/x1;->g(D)V

    return-void

    :goto_23
    iput v4, v0, Lad/j0;->y1:I

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v4, v0, Lad/j0;->A1:D

    invoke-virtual {v1, v2, v3}, Lad/x1;->a(D)V

    iget-wide v4, v0, Lad/j0;->c0:D

    add-double/2addr v4, v2

    iput-wide v4, v0, Lad/j0;->c0:D

    return-void
.end method

.method public final d(Lad/x1;D)V
    .locals 7

    iget-wide v0, p0, Lad/j0;->c0:D

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    sub-double v2, p2, v2

    const-wide v4, 0x3fb47ae147ae147bL    # 0.08

    div-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_0

    move-wide v2, v4

    :cond_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lad/j0;->c0:D

    iget-wide v0, p1, Lad/x1;->b:D

    invoke-virtual {p1, v0, v1}, Lad/x1;->d(D)Lad/v1;

    move-result-object p1

    iget-object p0, p0, Lad/j0;->o:Lod/v;

    if-eqz p0, :cond_1

    iget-object v0, p1, Lad/v1;->a:Lua/nav/routing/GeoPoint;

    iget p1, p1, Lad/v1;->b:F

    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lod/v;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final e(Lad/x1;JZ)Z
    .locals 59

    move-object/from16 v0, p0

    move-wide/from16 v11, p2

    const/4 v13, 0x0

    iput-object v13, v0, Lad/j0;->q:Lad/q1;

    iget-object v1, v0, Lad/j0;->p:Lid/d0;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lid/d0;->a()Lad/q1;

    move-result-object v15

    if-nez v15, :cond_1

    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_1b

    :cond_1
    iget-wide v1, v15, Lad/q1;->d:D

    iget-wide v3, v15, Lad/q1;->j:D

    move-wide v5, v1

    iget-object v2, v15, Lad/q1;->a:Lua/nav/routing/GeoPoint;

    iget-object v9, v15, Lad/q1;->b:Ljava/lang/Double;

    iget-wide v7, v15, Lad/q1;->i:D

    const/16 v16, 0x0

    iget-wide v13, v15, Lad/q1;->e:D

    move-wide/from16 v17, v3

    iget-wide v3, v15, Lad/q1;->c:D

    move-object v10, v2

    iget-wide v1, v15, Lad/q1;->h:J

    sub-long v1, v11, v1

    const-wide/16 v19, 0x7d0

    cmp-long v1, v1, v19

    if-gtz v1, :cond_0

    iget-wide v1, v0, Lad/j0;->Y:J

    sub-long v1, v11, v1

    const-wide/16 v19, 0xbb8

    cmp-long v1, v1, v19

    if-gez v1, :cond_2

    goto/16 :goto_1b

    :cond_2
    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v3, v19

    move-wide/from16 v21, v3

    const-wide/16 v3, 0x0

    if-gez v1, :cond_3

    const-wide v1, 0x3fd6666666666666L    # 0.35

    cmpg-double v1, v21, v1

    if-gez v1, :cond_2c

    iput-wide v3, v0, Lad/j0;->r:J

    return v16

    :cond_3
    move-wide v1, v7

    const-wide/16 v7, 0x0

    move-wide/from16 v23, v1

    move-object v2, v10

    const/16 v10, 0xe

    move-wide/from16 v25, v3

    const-wide/16 v3, 0x0

    move-wide/from16 v27, v5

    const-wide/16 v5, 0x0

    move-object/from16 v1, p1

    move-wide/from16 v29, v13

    move-wide/from16 v13, v17

    invoke-static/range {v1 .. v10}, Lad/x1;->e(Lad/x1;Lua/nav/routing/GeoPoint;DDDLjava/lang/Double;I)Lad/w1;

    move-result-object v3

    iget-wide v4, v3, Lad/w1;->a:D

    iget-wide v6, v3, Lad/w1;->b:D

    invoke-virtual {v1, v4, v5}, Lad/x1;->d(D)Lad/v1;

    move-result-object v3

    iget v3, v3, Lad/v1;->b:F

    move-wide/from16 v17, v4

    float-to-double v3, v3

    const-wide v25, 0x3fd3333333333333L    # 0.3

    cmpl-double v5, v29, v25

    const-wide v25, 0x4066800000000000L    # 180.0

    const-wide v33, 0x4080e00000000000L    # 540.0

    const-wide v35, 0x4076800000000000L    # 360.0

    const-wide/high16 v37, 0x4034000000000000L    # 20.0

    const-wide/high16 v39, 0x4039000000000000L    # 25.0

    const-wide/high16 v41, 0x404e000000000000L    # 60.0

    if-lez v5, :cond_4

    cmpg-double v8, v6, v41

    if-gtz v8, :cond_4

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    move-result-wide v43

    cmpg-double v8, v43, v37

    if-gez v8, :cond_4

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v43

    sub-double v43, v43, v3

    rem-double v43, v43, v35

    add-double v43, v43, v33

    rem-double v43, v43, v35

    sub-double v43, v43, v25

    invoke-static/range {v43 .. v44}, Ljava/lang/Math;->abs(D)D

    move-result-wide v43

    cmpg-double v8, v43, v39

    if-gtz v8, :cond_4

    iput-wide v3, v0, Lad/j0;->D:D

    iput-wide v13, v0, Lad/j0;->E:D

    iput-wide v11, v0, Lad/j0;->F:J

    :cond_4
    const-wide v3, 0x3fc3333333333333L    # 0.15

    cmpg-double v3, v29, v3

    if-gez v3, :cond_5

    const-wide v43, 0x4041800000000000L    # 35.0

    cmpl-double v8, v6, v43

    if-lez v8, :cond_5

    const/4 v8, 0x1

    goto :goto_0

    :cond_5
    move/from16 v8, v16

    :goto_0
    if-eqz v8, :cond_6

    move v10, v5

    const/16 v43, 0x1

    iget-wide v4, v0, Lad/j0;->v:J

    move/from16 v44, v3

    move-wide/from16 v45, v4

    const-wide/16 v3, 0x0

    cmp-long v5, v45, v3

    if-nez v5, :cond_7

    iput-wide v11, v0, Lad/j0;->v:J

    iget-wide v3, v0, Lad/j0;->H:D

    iput-wide v3, v0, Lad/j0;->w:D

    goto :goto_1

    :cond_6
    move/from16 v44, v3

    move v10, v5

    const-wide/16 v3, 0x0

    const/16 v43, 0x1

    iput-wide v3, v0, Lad/j0;->v:J

    :cond_7
    :goto_1
    if-eqz v8, :cond_8

    iget-wide v3, v0, Lad/j0;->v:J

    sub-long v3, v11, v3

    const-wide/16 v45, 0x1f40

    cmp-long v3, v3, v45

    if-ltz v3, :cond_8

    iget-wide v3, v0, Lad/j0;->H:D

    move-wide/from16 v45, v3

    iget-wide v3, v0, Lad/j0;->w:D

    sub-double v3, v45, v3

    const-wide/high16 v45, 0x4059000000000000L    # 100.0

    cmpl-double v3, v3, v45

    if-ltz v3, :cond_8

    move/from16 v3, v43

    goto :goto_2

    :cond_8
    move/from16 v3, v16

    :goto_2
    const-wide/high16 v45, 0x403e000000000000L    # 30.0

    iget-object v8, v0, Lad/j0;->a:Ldd/k0;

    if-gez v44, :cond_9

    const-wide/high16 v47, 0x4054000000000000L    # 80.0

    cmpl-double v44, v6, v47

    if-gtz v44, :cond_a

    if-eqz v3, :cond_9

    goto :goto_3

    :cond_9
    move-object v3, v0

    move-object v0, v1

    move v1, v10

    move-wide/from16 v11, v27

    move-object v10, v8

    goto/16 :goto_18

    :cond_a
    :goto_3
    iget-wide v4, v0, Lad/j0;->r:J

    const-wide/16 v31, 0x0

    cmp-long v3, v4, v31

    if-nez v3, :cond_b

    iput-wide v11, v0, Lad/j0;->r:J

    iget-wide v3, v0, Lad/j0;->H:D

    iput-wide v3, v0, Lad/j0;->u:D

    :cond_b
    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpl-double v3, v3, v45

    if-ltz v3, :cond_c

    move/from16 v3, v43

    goto :goto_4

    :cond_c
    move/from16 v3, v16

    :goto_4
    const-wide v4, 0x3fe6666666666666L    # 0.7

    cmpl-double v4, v21, v4

    iget-object v5, v0, Lad/j0;->L0:Lad/f;

    if-ltz v4, :cond_e

    const-wide v17, 0x3fa999999999999aL    # 0.05

    cmpg-double v4, v29, v17

    if-gez v4, :cond_e

    if-lez v44, :cond_e

    move/from16 p4, v3

    iget-wide v3, v0, Lad/j0;->H:D

    move-wide/from16 v17, v3

    iget-wide v3, v0, Lad/j0;->E1:D

    sub-double v3, v17, v3

    cmpl-double v3, v3, v47

    if-ltz v3, :cond_f

    invoke-virtual {v5}, Lad/f;->b()Z

    move-result v3

    if-nez v3, :cond_f

    iget-wide v3, v5, Lad/f;->b:J

    cmp-long v3, v11, v3

    if-gez v3, :cond_d

    iget-boolean v3, v5, Lad/f;->c:Z

    if-eqz v3, :cond_f

    :cond_d
    move/from16 v10, v43

    goto :goto_5

    :cond_e
    move/from16 p4, v3

    :cond_f
    move/from16 v10, v16

    :goto_5
    iget-wide v3, v0, Lad/j0;->r:J

    sub-long v3, v11, v3

    const-wide/16 v17, 0xfa0

    cmp-long v3, v3, v17

    if-ltz v3, :cond_10

    iget-wide v3, v0, Lad/j0;->H:D

    move-wide/from16 v17, v3

    iget-wide v3, v0, Lad/j0;->u:D

    sub-double v3, v17, v3

    cmpl-double v3, v3, v39

    if-gez v3, :cond_11

    if-eqz p4, :cond_10

    goto :goto_7

    :cond_10
    :goto_6
    move-object v3, v0

    goto/16 :goto_17

    :cond_11
    :goto_7
    invoke-virtual {v5}, Lad/f;->b()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v3

    iget-boolean v3, v3, Lua/nav/Tuning;->H:Z

    if-eqz v3, :cond_10

    invoke-virtual {v5, v11, v12}, Lad/f;->a(J)Z

    move-result v3

    if-nez v3, :cond_12

    if-eqz v10, :cond_10

    :cond_12
    iget-object v3, v0, Lad/j0;->j:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lad/a0;

    iget-boolean v3, v3, Lad/a0;->r:Z

    if-nez v3, :cond_10

    const-string v3, " conf="

    const/16 v4, 0x3e8

    if-eqz v10, :cond_13

    invoke-virtual {v5, v11, v12}, Lad/f;->a(J)Z

    move-result v5

    if-nez v5, :cond_13

    iget-wide v10, v0, Lad/j0;->D1:J

    sub-long v10, p2, v10

    move-wide/from16 v18, v10

    int-to-long v10, v4

    div-long v10, v18, v10

    double-to-int v5, v6

    move/from16 v19, v5

    const/16 v12, 0x64

    int-to-double v4, v12

    mul-double v4, v4, v21

    double-to-int v4, v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "blind_deviation_quiet_lifted since_route_s="

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " off="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, v19

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_13
    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lad/j0;->r:J

    double-to-int v4, v6

    const/16 v12, 0x64

    int-to-double v5, v12

    mul-double v10, v29, v5

    double-to-int v7, v10

    mul-double v5, v5, v21

    double-to-int v5, v5

    move-wide/from16 v11, v27

    double-to-int v6, v11

    const-string v10, "blind_deviation_pf off="

    const-string v11, " mass="

    invoke-static {v10, v4, v11, v7, v3}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " r="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lad/j0;->D:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_14

    const/4 v10, 0x0

    goto :goto_8

    :cond_14
    iget-wide v4, v0, Lad/j0;->D:D

    iget-wide v6, v0, Lad/j0;->E:D

    sub-double v6, v13, v6

    add-double/2addr v6, v4

    rem-double v6, v6, v35

    add-double v6, v6, v35

    rem-double v6, v6, v35

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    move-object v10, v4

    :goto_8
    iget-boolean v4, v15, Lad/q1;->k:Z

    if-eqz v4, :cond_16

    if-eqz v10, :cond_15

    if-eqz v9, :cond_16

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double/2addr v4, v6

    rem-double v4, v4, v35

    add-double v4, v4, v33

    rem-double v4, v4, v35

    sub-double v4, v4, v25

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x4046800000000000L    # 45.0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_15

    goto :goto_9

    :cond_15
    move/from16 v43, v16

    :cond_16
    :goto_9
    iget-object v4, v0, Lad/j0;->N0:Ljava/util/ArrayList;

    invoke-static {v4}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/x0;

    if-eqz v4, :cond_17

    iget-wide v5, v4, Lad/x0;->a:J

    sub-long v5, p2, v5

    const-wide/16 v11, 0x3a98

    cmp-long v5, v5, v11

    if-gtz v5, :cond_17

    iget-wide v5, v4, Lad/x0;->d:D

    cmpg-double v5, v5, v41

    if-gtz v5, :cond_17

    goto :goto_a

    :cond_17
    const/4 v4, 0x0

    :goto_a
    if-eqz v4, :cond_18

    sget-object v5, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v6, v4, Lad/x0;->b:D

    iget-wide v11, v4, Lad/x0;->c:D

    iget-wide v13, v2, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v0, v2, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v57, v0

    move-wide/from16 v51, v6

    move-wide/from16 v53, v11

    move-wide/from16 v55, v13

    invoke-static/range {v51 .. v58}, Ldd/s0;->a(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_b

    :cond_18
    const/4 v0, 0x0

    :goto_b
    sget-object v11, Lcd/d;->v1:Lcd/c;

    if-eqz v43, :cond_1c

    if-eqz v4, :cond_19

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    const/4 v1, 0x2

    int-to-double v12, v1

    move-object v7, v0

    iget-wide v0, v4, Lad/x0;->d:D

    mul-double/2addr v12, v0

    const-wide v0, 0x4062c00000000000L    # 150.0

    invoke-static {v0, v1, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    cmpg-double v0, v5, v0

    if-gtz v0, :cond_1a

    :cond_19
    move/from16 v0, v16

    goto :goto_d

    :cond_1a
    :goto_c
    move-object/from16 v12, p0

    move-object v13, v3

    goto :goto_f

    :goto_d
    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {v11, v1}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v7, Lt8/j;

    invoke-direct {v7, v2, v9}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    if-eqz p4, :cond_1b

    move-object v5, v0

    goto :goto_e

    :cond_1b
    const/4 v5, 0x0

    :goto_e
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-virtual/range {v0 .. v7}, Lad/j0;->z(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;ZLt8/j;)V

    goto/16 :goto_6

    :cond_1c
    move-object v7, v0

    goto :goto_c

    :goto_f
    if-eqz v9, :cond_1d

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_10

    :cond_1d
    const/4 v0, 0x0

    :goto_10
    if-eqz v10, :cond_1e

    invoke-virtual {v10}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_11

    :cond_1e
    const/4 v1, 0x0

    :goto_11
    if-nez v10, :cond_1f

    const-wide/16 v2, -0x1

    goto :goto_12

    :cond_1f
    iget-wide v2, v12, Lad/j0;->F:J

    sub-long v2, p2, v2

    const/16 v5, 0x3e8

    int-to-long v5, v5

    div-long/2addr v2, v5

    :goto_12
    if-eqz v7, :cond_20

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_13

    :cond_20
    const/4 v5, 0x0

    :goto_13
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "heading="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " expected="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ref_age_s="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " net_gap="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    if-eqz v4, :cond_21

    new-instance v1, Lua/nav/routing/GeoPoint;

    iget-wide v2, v4, Lad/x0;->b:D

    iget-wide v4, v4, Lad/x0;->c:D

    invoke-direct {v1, v2, v3, v4, v5}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    move-object v0, v8

    const/4 v8, 0x0

    const/16 v9, 0x1e

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 p4, v10

    move-object v10, v0

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v9}, Lad/x1;->e(Lad/x1;Lua/nav/routing/GeoPoint;DDDLjava/lang/Double;I)Lad/w1;

    move-result-object v1

    iget-wide v1, v1, Lad/w1;->b:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_14

    :cond_21
    move-object/from16 v0, p1

    move-object/from16 p4, v10

    move-object v10, v8

    const/4 v1, 0x0

    :goto_14
    const-string v2, " net_off="

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    cmpl-double v3, v3, v47

    if-lez v3, :cond_23

    if-eqz p4, :cond_22

    invoke-virtual/range {p4 .. p4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    iget-wide v5, v0, Lad/x1;->b:D

    invoke-virtual {v0, v5, v6}, Lad/x1;->d(D)Lad/v1;

    move-result-object v0

    iget v0, v0, Lad/v1;->b:F

    float-to-double v5, v0

    sub-double/2addr v3, v5

    add-double v3, v3, v33

    rem-double v3, v3, v35

    sub-double v3, v3, v25

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object v5, v0

    goto :goto_15

    :cond_22
    const/4 v5, 0x0

    :goto_15
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " start=net "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {v11, v1}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-wide/from16 v1, p2

    move-object v0, v12

    invoke-static/range {v0 .. v7}, Lad/j0;->A(Lad/j0;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Lt8/j;I)V

    goto/16 :goto_6

    :cond_23
    move-object v3, v12

    move-wide/from16 v11, p2

    iget-wide v4, v3, Lad/j0;->G:J

    sub-long v4, v11, v4

    const-wide/16 v6, 0x2710

    cmp-long v0, v4, v6

    if-lez v0, :cond_25

    iput-wide v11, v3, Lad/j0;->G:J

    if-eqz v1, :cond_24

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    goto :goto_16

    :cond_24
    const/4 v13, 0x0

    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "blind_deviation_pf_skip "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_25
    :goto_17
    iput-object v15, v3, Lad/j0;->q:Lad/q1;

    const/16 v16, 0x0

    return v16

    :goto_18
    if-lez v1, :cond_26

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lad/j0;->r:J

    :cond_26
    cmpl-double v1, v6, v41

    if-lez v1, :cond_27

    iput-object v15, v3, Lad/j0;->q:Lad/q1;

    return v16

    :cond_27
    iget-wide v1, v0, Lad/x1;->b:D

    sub-double v4, v17, v1

    if-eqz p4, :cond_28

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    cmpl-double v1, v1, v45

    if-lez v1, :cond_28

    iput-object v15, v3, Lad/j0;->q:Lad/q1;

    return v43

    :cond_28
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide v49, 0x4062c00000000000L    # 150.0

    cmpl-double v1, v1, v49

    if-lez v1, :cond_29

    move-wide/from16 v4, v17

    goto :goto_19

    :cond_29
    iget-wide v1, v0, Lad/x1;->b:D

    mul-double v4, v4, v19

    add-double/2addr v4, v1

    :goto_19
    iget v1, v3, Lad/j0;->y1:I

    if-ltz v1, :cond_2a

    iget-wide v6, v3, Lad/j0;->A1:D

    add-double v6, v6, v37

    cmpl-double v2, v4, v6

    if-lez v2, :cond_2a

    iget-object v2, v3, Lad/j0;->R:Ljava/util/HashSet;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget v1, v3, Lad/j0;->y1:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "turn_hold_release step="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason=pf"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Ldd/k0;->n(Ljava/lang/String;)V

    const/4 v1, -0x1

    iput v1, v3, Lad/j0;->y1:I

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v6, v3, Lad/j0;->A1:D

    iput v1, v3, Lad/j0;->C1:I

    iget-object v1, v3, Lad/j0;->N:Lad/l;

    invoke-virtual {v1}, Lad/l;->e()V

    :cond_2a
    invoke-virtual {v0, v4, v5}, Lad/x1;->g(D)V

    const-wide/16 v0, 0x0

    iput-wide v0, v3, Lad/j0;->z0:D

    iget-wide v4, v3, Lad/j0;->c0:D

    sub-double v6, v11, v39

    const-wide v8, 0x3fb47ae147ae147bL    # 0.08

    div-double/2addr v6, v8

    cmpg-double v2, v6, v0

    if-gez v2, :cond_2b

    goto :goto_1a

    :cond_2b
    move-wide v0, v6

    :goto_1a
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    iput-wide v0, v3, Lad/j0;->c0:D

    iput-object v15, v3, Lad/j0;->q:Lad/q1;

    return v43

    :cond_2c
    :goto_1b
    return v16
.end method

.method public final f(Lua/nav/routing/Route;Z)V
    .locals 45

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    iget-object v1, v0, Lad/j0;->T:Lad/x1;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lad/x1;->a:Lua/nav/routing/Route;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    new-instance v4, Lad/x1;

    invoke-direct {v4, v2}, Lad/x1;-><init>(Lua/nav/routing/Route;)V

    iput-object v4, v0, Lad/j0;->T:Lad/x1;

    iget-object v5, v0, Lad/j0;->M:Ljava/lang/Object;

    new-instance v14, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v14, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lua/nav/routing/GeoPoint;

    invoke-virtual {v2}, Lua/nav/routing/Route;->c()D

    move-result-wide v6

    invoke-virtual {v2}, Lua/nav/routing/Route;->c()D

    move-result-wide v8

    const/4 v12, 0x0

    const/16 v13, 0x10

    const-wide/16 v10, 0x0

    invoke-static/range {v4 .. v13}, Lad/x1;->e(Lad/x1;Lua/nav/routing/GeoPoint;DDDLjava/lang/Double;I)Lad/w1;

    move-result-object v6

    iget-wide v6, v6, Lad/w1;->a:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    new-instance v7, Lt8/j;

    invoke-direct {v7, v5, v6}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iput-object v14, v0, Lad/j0;->L:Ljava/lang/Object;

    iget-object v5, v0, Lad/j0;->e:Lwc/d;

    invoke-virtual {v5, v2}, Lwc/d;->b(Lua/nav/routing/Route;)Ljava/util/List;

    move-result-object v5

    iput-object v5, v0, Lad/j0;->U:Ljava/lang/Object;

    invoke-virtual {v0, v4, v2}, Lad/j0;->g(Lad/x1;Lua/nav/routing/Route;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lad/j0;->H0:Ljava/util/List;

    iget-object v4, v0, Lad/j0;->I0:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clear()V

    const/4 v4, 0x0

    iput-boolean v4, v0, Lad/j0;->J0:Z

    iget-object v5, v0, Lad/j0;->R:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    iget-object v5, v0, Lad/j0;->S:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v0, Lad/j0;->d0:Lad/f1;

    iget-object v5, v5, Lad/f1;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, v0, Lad/j0;->f0:Lad/m1;

    iput-object v3, v5, Lad/m1;->a:Lad/k1;

    iget-object v5, v5, Lad/m1;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lad/j0;->z0:D

    const-wide/16 v7, -0x1

    iput-wide v7, v0, Lad/j0;->r0:J

    iget-object v9, v0, Lad/j0;->n1:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, v0, Lad/j0;->r1:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    iput-boolean v4, v0, Lad/j0;->q1:Z

    const-wide/16 v9, 0x0

    iput-wide v9, v0, Lad/j0;->X0:J

    iput-wide v9, v0, Lad/j0;->t:J

    invoke-virtual {v2}, Lua/nav/routing/Route;->c()D

    move-result-wide v11

    const-wide v13, 0x4072c00000000000L    # 300.0

    cmpl-double v11, v11, v13

    if-lez v11, :cond_2

    iput-boolean v4, v0, Lad/j0;->s1:Z

    :cond_2
    const/4 v11, -0x1

    iput v11, v0, Lad/j0;->y1:I

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v12, v0, Lad/j0;->A1:D

    iput v4, v0, Lad/j0;->h0:I

    iget-object v14, v0, Lad/j0;->i0:Lad/w0;

    invoke-virtual {v14}, Lad/w0;->a()V

    iget-object v14, v0, Lad/j0;->j0:Lad/i1;

    invoke-virtual {v14}, Lad/i1;->a()V

    iput v11, v0, Lad/j0;->C1:I

    iget-object v14, v0, Lad/j0;->N:Lad/l;

    invoke-virtual {v14}, Lad/l;->e()V

    iput-wide v5, v0, Lad/j0;->l1:D

    iput v11, v0, Lad/j0;->o1:I

    iput-wide v9, v0, Lad/j0;->j1:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iput-wide v14, v0, Lad/j0;->D1:J

    iget-wide v14, v0, Lad/j0;->H:D

    iput-wide v14, v0, Lad/j0;->E1:D

    iput-wide v5, v0, Lad/j0;->F1:D

    iput-wide v5, v0, Lad/j0;->G1:D

    iput v11, v0, Lad/j0;->p1:I

    iget-object v5, v0, Lad/j0;->L0:Lad/f;

    invoke-virtual {v5}, Lad/f;->b()Z

    move-result v6

    iget-object v11, v0, Lad/j0;->a:Ldd/k0;

    if-eqz v6, :cond_3

    const-string v6, "blind_deviation_drop reason=new_route"

    invoke-virtual {v11, v6}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_3
    iget-wide v14, v0, Lad/j0;->D1:J

    iput-wide v7, v5, Lad/f;->a:J

    const-wide/16 v16, 0x4e20

    add-long v14, v14, v16

    iget-wide v9, v5, Lad/f;->b:J

    cmp-long v6, v14, v9

    if-ltz v6, :cond_4

    iput-wide v14, v5, Lad/f;->b:J

    const/4 v6, 0x1

    iput-boolean v6, v5, Lad/f;->c:Z

    :cond_4
    iput-object v3, v0, Lad/j0;->M0:Lua/nav/routing/GeoPoint;

    iget-object v5, v0, Lad/j0;->O0:Lad/j2;

    iput-wide v7, v5, Lad/j2;->a:J

    iput-wide v7, v5, Lad/j2;->c:J

    iget-object v5, v0, Lad/j0;->P0:Lad/h2;

    iget-object v5, v5, Lad/h2;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iput-object v3, v0, Lad/j0;->Q0:Lt8/j;

    iget-object v5, v2, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-static {v5}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lua/nav/routing/GeoPoint;

    iput-object v5, v0, Lad/j0;->g1:Lua/nav/routing/GeoPoint;

    iget-wide v5, v0, Lad/j0;->D1:J

    iput-wide v5, v0, Lad/j0;->h1:J

    iput-wide v12, v0, Lad/j0;->i1:D

    iget-object v5, v0, Lad/j0;->p:Lid/d0;

    if-eqz v5, :cond_5

    invoke-virtual {v5, v2}, Lid/d0;->b(Lua/nav/routing/Route;)V

    :cond_5
    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lad/j0;->r:J

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    iput-wide v5, v0, Lad/j0;->D:D

    invoke-virtual {v11, v2}, Ldd/k0;->j(Lua/nav/routing/Route;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lua/nav/routing/Route;->c()D

    move-result-wide v6

    double-to-int v6, v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "rerouted len="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " route="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ldd/k0;->n(Ljava/lang/String;)V

    if-eqz p2, :cond_6

    if-eqz v1, :cond_6

    if-eq v1, v2, :cond_6

    iput-object v1, v0, Lad/j0;->J1:Lua/nav/routing/Route;

    iget-wide v5, v0, Lad/j0;->D1:J

    add-long v5, v5, v16

    iput-wide v5, v0, Lad/j0;->K1:J

    goto :goto_2

    :cond_6
    iput-object v3, v0, Lad/j0;->J1:Lua/nav/routing/Route;

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lad/j0;->K1:J

    :goto_2
    iget-object v1, v0, Lad/j0;->j:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v1

    move-object v1, v3

    check-cast v1, Lad/a0;

    iget-object v6, v0, Lad/j0;->J1:Lua/nav/routing/Route;

    if-eqz v6, :cond_7

    const/16 v6, 0x14

    move/from16 v38, v6

    goto :goto_3

    :cond_7
    move/from16 v38, v4

    :goto_3
    const v39, -0xc062003

    const/16 v40, 0x0

    move-object v6, v3

    move v7, v4

    const-wide/16 v3, 0x0

    move-object v8, v5

    const/4 v5, 0x0

    move-object v9, v6

    const/4 v6, 0x0

    move v10, v7

    const/4 v7, 0x0

    move-object v11, v8

    const/4 v8, 0x0

    move-object v12, v9

    move v13, v10

    const-wide/16 v9, 0x0

    move-object v14, v11

    const/4 v11, 0x0

    move-object v15, v12

    move/from16 v16, v13

    const-wide/16 v12, 0x0

    move-object/from16 v18, v14

    move-object/from16 v17, v15

    const-wide/16 v14, 0x0

    move/from16 v19, v16

    const/16 v16, 0x0

    move-object/from16 v20, v17

    const/16 v17, 0x0

    move-object/from16 v21, v18

    const/16 v18, 0x0

    move/from16 v23, v19

    move-object/from16 v22, v20

    const-wide/16 v19, 0x0

    move-object/from16 v24, v21

    const/16 v21, 0x0

    move-object/from16 v25, v22

    const/16 v22, 0x0

    move/from16 v26, v23

    const/16 v23, 0x0

    move-object/from16 v27, v24

    sget-object v24, Lu8/r;->l:Lu8/r;

    move-object/from16 v28, v25

    const/16 v25, 0x0

    move/from16 v29, v26

    const/16 v26, 0x0

    move-object/from16 v31, v27

    move-object/from16 v30, v28

    const-wide/16 v27, 0x0

    move/from16 v32, v29

    const/16 v29, 0x0

    move-object/from16 v33, v30

    const/16 v30, 0x0

    move-object/from16 v34, v31

    const/16 v31, 0x0

    move/from16 v35, v32

    const/16 v32, 0x0

    move-object/from16 v36, v33

    const/16 v33, 0x0

    move-object/from16 v37, v34

    const/16 v34, 0x0

    move/from16 v41, v35

    const/16 v35, 0x0

    move-object/from16 v42, v36

    const/16 v36, 0x0

    move-object/from16 v43, v37

    const/16 v37, 0x0

    move-object/from16 v0, v42

    move-object/from16 v44, v43

    invoke-static/range {v1 .. v40}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v1

    move-object/from16 v5, v44

    invoke-virtual {v5, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lad/j0;->n:Lod/m0;

    if-eqz v1, :cond_8

    invoke-virtual {v1, v2}, Lod/m0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    sget-object v1, Lcd/d;->m1:Lcd/c;

    const/4 v13, 0x0

    new-array v2, v13, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    iget-object v3, v0, Lad/j0;->b:Lad/r2;

    invoke-static {v3, v1, v13, v2}, Lad/r2;->g(Lad/r2;Ljava/lang/String;ZI)V

    const-string v1, "GPS"

    invoke-virtual {v0, v1}, Lad/j0;->y(Ljava/lang/String;)V

    return-void

    :cond_9
    const/4 v4, 0x0

    move-object/from16 v0, p0

    goto/16 :goto_2
.end method

.method public final g(Lad/x1;Lua/nav/routing/Route;)Ljava/util/List;
    .locals 13

    invoke-virtual {p2}, Lua/nav/routing/Route;->c()D

    move-result-wide v2

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lad/j0;->h:Lbd/l;

    iget-boolean v0, v0, Lbd/l;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p2, Lua/nav/routing/Route;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lua/nav/routing/GeoPoint;

    new-instance v12, Lad/l0;

    const/4 v8, 0x0

    const/16 v9, 0x10

    const-wide/16 v6, 0x0

    move-wide v4, v2

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lad/x1;->e(Lad/x1;Lua/nav/routing/GeoPoint;DDDLjava/lang/Double;I)Lad/w1;

    move-result-object p1

    iget-wide v4, p1, Lad/w1;->a:D

    sget-object p1, Lad/k0;->l:Lad/k0;

    invoke-direct {v12, v4, v5, p1}, Lad/l0;-><init>(DLad/k0;)V

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lad/j0;->h:Lbd/l;

    iget-object p1, p2, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-virtual {p2}, Lua/nav/routing/Route;->b()[D

    move-result-object p2

    const-string v0, "geometry"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cumulativeM"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lbd/l;->b:Lbd/e;

    invoke-static {p0, p1, p2}, Lbd/e;->b(Lbd/e;Ljava/util/List;[D)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbd/c;

    new-instance p2, Lad/l0;

    iget-wide v0, p1, Lbd/c;->b:D

    iget-object p1, p1, Lbd/c;->a:Lbd/j;

    iget-object p1, p1, Lbd/j;->c:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v2, "crossing"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :sswitch_1
    const-string v2, "rail"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_2

    :cond_1
    sget-object p1, Lad/k0;->o:Lad/k0;

    goto :goto_3

    :sswitch_2
    const-string v2, "bike"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    sget-object p1, Lad/k0;->n:Lad/k0;

    goto :goto_3

    :sswitch_3
    const-string v2, "signal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :goto_2
    sget-object p1, Lad/k0;->m:Lad/k0;

    goto :goto_3

    :cond_3
    sget-object p1, Lad/k0;->l:Lad/k0;

    :goto_3
    invoke-direct {p2, v0, v1, p1}, Lad/l0;-><init>(DLad/k0;)V

    invoke-virtual {v10, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    new-instance p0, Lad/g0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lad/g0;-><init>(I)V

    invoke-static {v10, p0}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x35ca9158 -> :sswitch_3
        0x2e23e1 -> :sswitch_2
        0x354b92 -> :sswitch_1
        0x7e8f17a2 -> :sswitch_0
    .end sparse-switch
.end method

.method public final h(J)V
    .locals 54

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lad/j0;->L0:Lad/f;

    invoke-virtual {v3}, Lad/f;->b()Z

    move-result v4

    const/4 v5, 0x0

    iget-object v6, v0, Lad/j0;->a:Ldd/k0;

    iget-object v7, v0, Lad/j0;->j:Lx9/l0;

    if-eqz v4, :cond_7

    invoke-virtual {v7}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/a0;

    iget-boolean v4, v4, Lad/a0;->C:Z

    if-eqz v4, :cond_0

    const-wide/16 v8, 0x4e20

    goto :goto_0

    :cond_0
    const-wide/32 v8, 0x15f90

    :goto_0
    iget-wide v10, v3, Lad/f;->a:J

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-ltz v4, :cond_4

    cmp-long v4, v1, v10

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v1, v2, v8, v9}, Lad/f;->c(JJ)V

    invoke-virtual {v7}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/a0;

    iget-boolean v1, v1, Lad/a0;->C:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lad/j0;->n(Z)V

    return-void

    :cond_2
    const-string v0, "blind_deviation_expired"

    invoke-virtual {v6, v0}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v7}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lad/a0;

    const v46, -0xc000001

    const/16 v47, 0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    invoke-static/range {v8 .. v47}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_4

    :cond_4
    :goto_1
    invoke-virtual {v7}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lad/a0;

    iget-wide v8, v3, Lad/f;->a:J

    cmp-long v4, v8, v12

    if-gez v4, :cond_5

    move/from16 v46, v5

    goto :goto_2

    :cond_5
    sub-long/2addr v8, v1

    cmp-long v4, v8, v12

    if-gez v4, :cond_6

    move-wide v8, v12

    :cond_6
    const/16 v4, 0x3e8

    int-to-long v10, v4

    div-long/2addr v8, v10

    long-to-int v4, v8

    move/from16 v46, v4

    :goto_2
    const v52, -0x8000001

    const/16 v53, 0x1

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    invoke-static/range {v14 .. v53}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v4

    invoke-virtual {v7, v0, v4}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_4

    :cond_7
    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v4

    iget-boolean v4, v4, Lua/nav/Tuning;->H:Z

    if-eqz v4, :cond_d

    invoke-virtual {v3, v1, v2}, Lad/f;->a(J)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {v7}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lad/a0;

    iget-boolean v3, v3, Lad/a0;->r:Z

    if-eqz v3, :cond_8

    goto/16 :goto_4

    :cond_8
    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v3

    iget-wide v3, v3, Lua/nav/Tuning;->s:J

    iget-object v7, v0, Lad/j0;->N:Lad/l;

    invoke-virtual {v7, v1, v2, v3, v4}, Lad/l;->b(JJ)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v10

    iget-wide v10, v10, Lua/nav/Tuning;->I:D

    cmpg-double v8, v8, v10

    if-gez v8, :cond_b

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    const-wide/high16 v7, 0x404e000000000000L    # 60.0

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_d

    iget-object v5, v0, Lad/j0;->T:Lad/x1;

    if-eqz v5, :cond_9

    invoke-virtual {v0, v5, v3, v4}, Lad/j0;->D(Lad/x1;D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    :goto_3
    if-nez v5, :cond_d

    iget-object v0, v0, Lad/j0;->O0:Lad/j2;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, v7

    if-gez v5, :cond_a

    goto :goto_4

    :cond_a
    iput-wide v1, v0, Lad/j2;->a:J

    iput-wide v3, v0, Lad/j2;->b:D

    return-void

    :cond_b
    iput-wide v1, v7, Lad/l;->g:J

    iget-object v7, v0, Lad/j0;->T:Lad/x1;

    if-eqz v7, :cond_c

    invoke-virtual {v0, v7, v3, v4}, Lad/j0;->D(Lad/x1;D)Ljava/lang/Double;

    move-result-object v7

    if-eqz v7, :cond_c

    double-to-int v0, v3

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-int v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "blind_deviation_skip gyro="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " route_curve="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ldd/k0;->n(Ljava/lang/String;)V

    return-void

    :cond_c
    double-to-int v6, v3

    const-string v7, "blind_deviation gyro="

    invoke-static {v6, v7}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcd/d;->u1:Lcd/c;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v7, v5}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    move-object v4, v5

    move-object v5, v3

    move-object v3, v6

    const/4 v6, 0x0

    const/16 v7, 0x30

    invoke-static/range {v0 .. v7}, Lad/j0;->A(Lad/j0;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Lt8/j;I)V

    :cond_d
    :goto_4
    return-void
.end method

.method public final i(Lad/x1;J)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-wide v4, v0, Lad/j0;->Y:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-eqz v8, :cond_0

    sub-long v4, v2, v4

    const-wide/16 v11, 0xbb8

    cmp-long v4, v4, v11

    if-gez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    sget v5, Lb6/g;->l:I

    const-wide v11, 0x400ccccccccccccdL    # 3.6

    if-ltz v5, :cond_2

    sget-wide v13, Lb6/g;->m:J

    sub-long v13, v2, v13

    const-wide/16 v15, 0x9c4

    cmp-long v8, v13, v15

    if-lez v8, :cond_1

    goto :goto_1

    :cond_1
    int-to-double v13, v5

    div-double/2addr v13, v11

    sget-wide v15, Lb6/g;->n:D

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v5, 0x0

    :goto_2
    const-wide/high16 v15, 0x4004000000000000L    # 2.5

    if-nez v4, :cond_3

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    cmpg-double v8, v17, v15

    if-ltz v8, :cond_3

    iget-object v8, v0, Lad/j0;->N:Lad/l;

    iget-boolean v9, v8, Lad/l;->h:Z

    if-nez v9, :cond_3

    invoke-virtual {v8, v2, v3}, Lad/l;->a(J)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v8

    iget-boolean v8, v8, Lua/nav/Tuning;->H:Z

    if-eqz v8, :cond_3

    iget-object v8, v0, Lad/j0;->L0:Lad/f;

    invoke-virtual {v8}, Lad/f;->b()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v0, Lad/j0;->j:Lx9/l0;

    invoke-virtual {v8}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lad/a0;

    iget-boolean v8, v8, Lad/a0;->r:Z

    if-nez v8, :cond_3

    iget v8, v0, Lad/j0;->y1:I

    if-ltz v8, :cond_4

    :cond_3
    move-object v12, v5

    goto/16 :goto_5

    :cond_4
    iget-wide v8, v1, Lad/x1;->b:D

    invoke-virtual {v1, v8, v9}, Lad/x1;->d(D)Lad/v1;

    move-result-object v4

    iget v4, v4, Lad/v1;->b:F

    float-to-double v8, v4

    iget-object v4, v0, Lad/j0;->N:Lad/l;

    move-wide/from16 v18, v11

    iget-wide v11, v4, Lad/l;->o:D

    iget-wide v13, v0, Lad/j0;->N1:D

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_5

    iput-wide v8, v0, Lad/j0;->N1:D

    iput-wide v11, v0, Lad/j0;->O1:D

    iput-wide v6, v0, Lad/j0;->P1:J

    return-void

    :cond_5
    iget-wide v13, v0, Lad/j0;->N1:D

    iget-wide v6, v0, Lad/j0;->O1:D

    sub-double v6, v11, v6

    add-double/2addr v6, v13

    const-wide v13, 0x4076800000000000L    # 360.0

    rem-double/2addr v6, v13

    add-double/2addr v6, v13

    rem-double/2addr v6, v13

    invoke-static {v6, v7, v8, v9}, Lad/n0;->d(DD)D

    move-result-wide v13

    const-wide/high16 v15, 0x4028000000000000L    # 12.0

    cmpg-double v4, v13, v15

    if-gtz v4, :cond_6

    iput-wide v8, v0, Lad/j0;->N1:D

    iput-wide v11, v0, Lad/j0;->O1:D

    const-wide/16 v11, 0x0

    iput-wide v11, v0, Lad/j0;->P1:J

    return-void

    :cond_6
    const-wide/16 v11, 0x0

    const-wide/high16 v15, 0x4031000000000000L    # 17.0

    cmpg-double v4, v13, v15

    if-gez v4, :cond_7

    iput-wide v11, v0, Lad/j0;->P1:J

    return-void

    :cond_7
    const-wide/high16 v15, 0x4034000000000000L    # 20.0

    cmpg-double v4, v13, v15

    if-gez v4, :cond_8

    goto/16 :goto_6

    :cond_8
    move-wide/from16 v20, v11

    iget-wide v11, v0, Lad/j0;->P1:J

    cmp-long v4, v11, v20

    const-wide/16 v11, 0x0

    if-nez v4, :cond_9

    iput-wide v2, v0, Lad/j0;->P1:J

    iget-wide v2, v0, Lad/j0;->H:D

    iput-wide v2, v0, Lad/j0;->Q1:D

    iget-wide v4, v1, Lad/x1;->b:D

    iput-wide v4, v0, Lad/j0;->R1:D

    iput-wide v11, v0, Lad/j0;->T1:D

    iput-wide v2, v0, Lad/j0;->U1:D

    return-void

    :cond_9
    move-wide v15, v11

    iget-wide v11, v0, Lad/j0;->T1:D

    move-wide/from16 v22, v11

    iget-wide v10, v0, Lad/j0;->H:D

    move-object v12, v5

    iget-wide v4, v0, Lad/j0;->U1:D

    sub-double/2addr v10, v4

    cmpg-double v4, v10, v15

    if-gez v4, :cond_a

    goto :goto_3

    :cond_a
    move-wide v15, v10

    :goto_3
    invoke-static {v13, v14}, Lsc/c;->c(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v15

    add-double v4, v4, v22

    iput-wide v4, v0, Lad/j0;->T1:D

    iget-wide v10, v0, Lad/j0;->H:D

    iput-wide v10, v0, Lad/j0;->U1:D

    move-wide v15, v4

    iget-wide v4, v0, Lad/j0;->Q1:D

    sub-double/2addr v10, v4

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    cmpl-double v4, v13, v4

    if-ltz v4, :cond_b

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    cmpl-double v4, v10, v4

    if-ltz v4, :cond_b

    const/16 v17, 0x1

    goto :goto_4

    :cond_b
    const/16 v17, 0x0

    :goto_4
    iget-wide v4, v0, Lad/j0;->P1:J

    sub-long v4, v2, v4

    const-wide/16 v22, 0x1770

    cmp-long v4, v4, v22

    if-ltz v4, :cond_12

    if-nez v17, :cond_c

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    cmpl-double v4, v15, v4

    if-gez v4, :cond_c

    goto/16 :goto_6

    :cond_c
    iget-object v4, v0, Lad/j0;->N:Lad/l;

    move-wide v15, v10

    const-wide/16 v10, 0xfa0

    invoke-virtual {v4, v2, v3, v10, v11}, Lad/l;->b(JJ)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    cmpl-double v4, v4, v10

    if-lez v4, :cond_d

    goto/16 :goto_6

    :cond_d
    iget-object v4, v0, Lad/j0;->L0:Lad/f;

    invoke-virtual {v4, v2, v3}, Lad/f;->a(J)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_6

    :cond_e
    iget-object v4, v0, Lad/j0;->N:Lad/l;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8, v9, v6, v7}, Lad/l;->f(DD)D

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lad/j0;->D(Lad/x1;D)Ljava/lang/Double;

    move-result-object v10

    if-eqz v10, :cond_f

    invoke-virtual {v10}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    iget-wide v6, v0, Lad/j0;->S1:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x2710

    cmp-long v1, v6, v8

    if-lez v1, :cond_12

    iput-wide v2, v0, Lad/j0;->S1:J

    iget-object v0, v0, Lad/j0;->a:Ldd/k0;

    double-to-int v1, v13

    double-to-int v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gyro_div_skip diff="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " route_curve="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldd/k0;->n(Ljava/lang/String;)V

    return-void

    :cond_f
    iget-wide v10, v0, Lad/j0;->R1:D

    invoke-virtual {v1, v10, v11}, Lad/x1;->d(D)Lad/v1;

    move-result-object v1

    iget-object v1, v1, Lad/v1;->a:Lua/nav/routing/GeoPoint;

    move-wide v10, v15

    invoke-static {v1, v6, v7, v10, v11}, Lad/n0;->b(Lua/nav/routing/GeoPoint;DD)Lua/nav/routing/GeoPoint;

    move-result-object v1

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lad/j0;->P1:J

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    iput-wide v2, v0, Lad/j0;->N1:D

    double-to-int v2, v13

    double-to-int v3, v10

    iget-wide v10, v0, Lad/j0;->T1:D

    double-to-int v10, v10

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    mul-double v11, v11, v18

    double-to-int v11, v11

    double-to-int v8, v8

    double-to-int v9, v6

    const-string v12, " travel="

    const-string v13, " lateral="

    const-string v14, "blind_deviation_gyro_div diff="

    invoke-static {v14, v2, v12, v3, v13}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " obd="

    const-string v12, " route_b="

    invoke-static {v2, v10, v3, v11, v12}, Lm/a;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hd="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcd/d;->v1:Lcd/c;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v8}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-instance v7, Lt8/j;

    invoke-direct {v7, v1, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x1

    move-object v4, v2

    move-wide/from16 v1, p2

    invoke-virtual/range {v0 .. v7}, Lad/j0;->z(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;ZLt8/j;)V

    return-void

    :goto_5
    if-eqz v12, :cond_10

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    cmpg-double v1, v1, v15

    if-ltz v1, :cond_10

    if-eqz v4, :cond_11

    :cond_10
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto :goto_7

    :cond_11
    iget v1, v0, Lad/j0;->y1:I

    if-gez v1, :cond_12

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lad/j0;->P1:J

    :cond_12
    :goto_6
    return-void

    :goto_7
    iput-wide v4, v0, Lad/j0;->N1:D

    iput-wide v2, v0, Lad/j0;->P1:J

    return-void
.end method

.method public final j(Ldd/l0;DDJ)V
    .locals 15

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p6

    iget-object v6, p0, Lad/j0;->j:Lx9/l0;

    invoke-virtual {v6}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lad/a0;

    iget-boolean v7, v7, Lad/a0;->n:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_0

    iget-object v7, p0, Lad/j0;->g:Lua/nav/a;

    iget-object v7, v7, Lua/nav/a;->c:Lx9/l0;

    invoke-virtual {v7}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v8

    :goto_0
    iget-object v9, p0, Lad/j0;->g1:Lua/nav/routing/GeoPoint;

    iget-object v10, p0, Lad/j0;->P0:Lad/h2;

    if-eqz v9, :cond_1

    iget-wide v11, p0, Lad/j0;->h1:J

    sub-long v11, v4, v11

    const-wide/32 v13, 0xafc8

    cmp-long v9, v11, v13

    if-ltz v9, :cond_d

    :cond_1
    invoke-virtual {v6}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lad/a0;

    iget-boolean v6, v6, Lad/a0;->r:Z

    if-nez v6, :cond_d

    if-eqz v7, :cond_2

    goto/16 :goto_6

    :cond_2
    iget-wide v6, v1, Ldd/l0;->c:J

    iget-object v9, v1, Ldd/l0;->i:Ljava/lang/Float;

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v11

    goto :goto_1

    :cond_3
    const/high16 v11, 0x42c60000    # 99.0f

    :goto_1
    float-to-double v11, v11

    iget-object v10, v10, Lad/h2;->a:Ljava/util/ArrayList;

    const-wide/high16 v13, 0x4049000000000000L    # 50.0

    cmpl-double v13, v11, v13

    if-gtz v13, :cond_c

    const/4 v13, 0x2

    int-to-double v13, v13

    mul-double/2addr v13, v11

    const-wide/high16 v11, 0x4034000000000000L    # 20.0

    add-double/2addr v13, v11

    move-wide/from16 v11, p4

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    cmpg-double v11, v2, v11

    if-gez v11, :cond_4

    goto/16 :goto_5

    :cond_4
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-static {v10}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    sub-long v11, v6, v11

    const-wide/16 v13, 0x2bc

    cmp-long v11, v11, v13

    if-gez v11, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v11, Lad/c;

    const/4 v12, 0x4

    invoke-direct {v11, v12, v6, v7}, Lad/c;-><init>(IJ)V

    invoke-static {v10, v11}, Lu8/m;->r0(Ljava/util/List;Li9/c;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v7, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lad/j0;->L0:Lad/f;

    invoke-virtual {v6}, Lad/f;->b()Z

    move-result v7

    if-nez v7, :cond_c

    invoke-virtual {p0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v7

    iget-boolean v7, v7, Lua/nav/Tuning;->H:Z

    if-eqz v7, :cond_c

    invoke-virtual {v6, v4, v5}, Lad/f;->a(J)Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_5

    :cond_7
    iget-object v6, v1, Ldd/l0;->h:Ljava/lang/Float;

    const/4 v7, 0x0

    if-eqz v6, :cond_a

    iget-object v10, v1, Ldd/l0;->g:Ljava/lang/Float;

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    goto :goto_2

    :cond_8
    const/4 v10, 0x0

    :goto_2
    float-to-double v10, v10

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_9

    goto :goto_3

    :cond_9
    move-object v6, v7

    :goto_3
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v10, v6

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    goto :goto_4

    :cond_a
    move-object v6, v7

    :goto_4
    double-to-int v2, v2

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v9, "blind_deviation_suspect off="

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " acc="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v2, Lcd/d;->v1:Lcd/c;

    new-array v7, v8, [Ljava/lang/Object;

    invoke-virtual {v2, v7}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Lua/nav/routing/GeoPoint;

    iget-wide v8, v1, Ldd/l0;->d:D

    iget-wide v10, v1, Ldd/l0;->e:D

    invoke-direct {v7, v8, v9, v10, v11}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    new-instance v1, Lt8/j;

    invoke-direct {v1, v7, v6}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v7, 0x8

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v1

    move-object v4, v2

    move-wide/from16 v1, p6

    invoke-static/range {v0 .. v7}, Lad/j0;->A(Lad/j0;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Lt8/j;I)V

    :cond_c
    :goto_5
    return-void

    :cond_d
    :goto_6
    iget-object v0, v10, Lad/h2;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final k(Lad/x1;J)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lad/j0;->y1:I

    if-ltz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Lad/j0;->R:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v0, Lad/j0;->C1:I

    if-eq v3, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Lad/x1;->h(I)D

    move-result-wide v5

    invoke-virtual {v0, v1, v5, v6}, Lad/j0;->J(Lad/x1;D)D

    move-result-wide v7

    iget-object v3, v0, Lad/j0;->N:Lad/l;

    iget-wide v9, v3, Lad/l;->m:D

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v11

    iget-wide v11, v11, Lua/nav/Tuning;->o:D

    mul-double v13, v9, v7

    move-wide v15, v5

    const-wide/16 v5, 0x0

    cmpl-double v13, v13, v5

    if-lez v13, :cond_1

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    const-wide v17, 0x3fe3333333333333L    # 0.6

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    mul-double v7, v7, v17

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    cmpl-double v7, v13, v7

    if-ltz v7, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-wide/high16 v7, 0x4034000000000000L    # 20.0

    add-double/2addr v7, v15

    double-to-int v4, v9

    iget-wide v9, v1, Lad/x1;->b:D

    double-to-int v9, v9

    double-to-int v10, v7

    const-string v11, " gyro="

    const-string v12, " from_s="

    const-string v13, "turn_snap step="

    invoke-static {v13, v2, v11, v4, v12}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to_s="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " src=hold"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lad/j0;->a:Ldd/k0;

    invoke-virtual {v4, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    invoke-virtual {v1, v7, v8}, Lad/x1;->g(D)V

    iput-wide v5, v0, Lad/j0;->z0:D

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    invoke-virtual {v0, v1, v4, v5}, Lad/j0;->d(Lad/x1;D)V

    const/4 v1, -0x1

    iput v1, v0, Lad/j0;->y1:I

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v4, v0, Lad/j0;->A1:D

    iput v1, v0, Lad/j0;->C1:I

    invoke-virtual {v3}, Lad/l;->e()V

    move-wide/from16 v0, p2

    iput-wide v0, v3, Lad/l;->g:J

    :cond_1
    :goto_0
    return-void
.end method

.method public final l(Lad/x1;JLad/c1;)D
    .locals 12

    iget-object v0, p1, Lad/x1;->a:Lua/nav/routing/Route;

    iget-wide v1, p1, Lad/x1;->b:D

    invoke-virtual {p1, v1, v2}, Lad/x1;->d(D)Lad/v1;

    move-result-object v1

    iget v1, v1, Lad/v1;->c:I

    invoke-virtual {v0, v1}, Lua/nav/routing/Route;->d(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide v1, 0x400ccccccccccccdL    # 3.6

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    int-to-double v4, p1

    div-double/2addr v4, v1

    const/16 v0, 0x46

    iget-object v1, p0, Lad/j0;->f:Lad/z1;

    if-ge p1, v0, :cond_0

    iget-wide v0, v1, Lad/z1;->b:D

    goto :goto_0

    :cond_0
    iget-wide v0, v1, Lad/z1;->c:D

    :goto_0
    mul-double/2addr v4, v0

    :goto_1
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto/16 :goto_6

    :cond_1
    invoke-static {p1}, Lad/j0;->H(Lad/x1;)Lua/nav/routing/Step;

    move-result-object p1

    if-eqz p1, :cond_7

    sget-object v0, Lad/m;->a:Lr9/i;

    iget-object v0, p1, Lua/nav/routing/Step;->e:Ljava/lang/String;

    iget-wide v4, p1, Lua/nav/routing/Step;->f:D

    iget-wide v6, p1, Lua/nav/routing/Step;->g:D

    const-string p1, "name"

    invoke-static {v0, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lad/m;->a:Lr9/i;

    invoke-virtual {p1, v0}, Lr9/i;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    const-wide v8, 0x40a7700000000000L    # 3000.0

    cmpl-double p1, v4, v8

    if-ltz p1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p1, 0x1

    :goto_3
    const-wide/16 v8, 0x0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_5

    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    cmpl-double v0, v4, v8

    if-ltz v0, :cond_5

    div-double/2addr v4, v6

    mul-double v6, v4, v1

    if-eqz p1, :cond_4

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-wide v4, 0x405b800000000000L    # 110.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-instance v4, Lt8/j;

    invoke-direct {v4, p1, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-wide v4, 0x4051800000000000L    # 70.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-instance v4, Lt8/j;

    invoke-direct {v4, p1, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_4
    iget-object p1, v4, Lt8/j;->l:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    iget-object p1, v4, Lt8/j;->m:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-static/range {v6 .. v11}, Lg6/c1;->d(DDD)D

    move-result-wide v4

    :goto_5
    div-double/2addr v4, v1

    goto :goto_1

    :cond_5
    if-eqz p1, :cond_6

    const-wide/high16 v4, 0x4054000000000000L    # 80.0

    goto :goto_5

    :cond_6
    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    goto :goto_5

    :cond_7
    move-object p1, v3

    :goto_6
    iget-boolean v0, p0, Lad/j0;->a0:Z

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lad/j0;->X:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :cond_8
    move-object/from16 p0, p4

    invoke-static {v3, p2, p3, p1, p0}, Lad/t2;->a(Ljava/lang/Double;JLjava/lang/Double;Lad/c1;)D

    move-result-wide p0

    return-wide p0
.end method

.method public final m(ILjava/lang/String;)V
    .locals 43

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lad/j0;->L0:Lad/f;

    invoke-virtual {v2}, Lad/f;->b()Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v0, Lad/j0;->o1:I

    if-ne v3, v1, :cond_2

    iget v3, v0, Lad/j0;->s:I

    if-eq v3, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/16 v5, 0x4e20

    invoke-virtual {v2, v3, v4, v5, v6}, Lad/f;->c(JJ)V

    const/4 v2, -0x1

    iput v2, v0, Lad/j0;->s:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "blind_deviation_cancel reason="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " step="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lad/j0;->a:Ldd/k0;

    invoke-virtual {v2, v1}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_1
    iget-object v1, v0, Lad/j0;->j:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lad/a0;

    const v41, -0xc000001

    const/16 v42, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-static/range {v3 .. v42}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    :goto_0
    return-void
.end method

.method public final n(Z)V
    .locals 51

    move-object/from16 v0, p0

    iget-object v1, v0, Lad/j0;->M0:Lua/nav/routing/GeoPoint;

    :goto_0
    iget-object v2, v0, Lad/j0;->j:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lad/a0;

    const v42, -0xc000001

    const/16 v43, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    invoke-static/range {v4 .. v43}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "blind_deviation_reroute auto="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lad/j0;->a:Ldd/k0;

    invoke-virtual {v4, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-object v2, v0, Lad/j0;->Q0:Lt8/j;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_3

    iget-object v1, v2, Lt8/j;->l:Ljava/lang/Object;

    check-cast v1, Lua/nav/routing/GeoPoint;

    iget-object v2, v2, Lt8/j;->m:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    iput-object v7, v0, Lad/j0;->Q0:Lt8/j;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    double-to-int v5, v8

    goto :goto_1

    :cond_1
    const/4 v5, -0x1

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "blind_start pts=1 heading="

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " src=suspect_gps shift_m=0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ldd/k0;->n(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    new-instance v8, Lad/o0;

    iget-wide v11, v0, Lad/j0;->X:D

    const-string v13, "GPS?"

    invoke-direct/range {v8 .. v13}, Lad/o0;-><init>(DDLjava/lang/String;)V

    move-object v7, v8

    :cond_2
    invoke-virtual {v0, v1, v6, v7}, Lad/j0;->B(Lua/nav/routing/GeoPoint;ZLad/o0;)V

    return-void

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v2, v0, Lad/j0;->S0:Ljava/lang/Double;

    const-wide v10, 0x4076800000000000L    # 360.0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    iget-object v12, v0, Lad/j0;->R0:Ljava/lang/Double;

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    add-double/2addr v12, v2

    rem-double/2addr v12, v10

    add-double/2addr v12, v10

    rem-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_2

    :cond_4
    move-object v2, v7

    :goto_2
    iget-wide v12, v0, Lad/j0;->X:D

    iget-object v14, v0, Lad/j0;->N0:Ljava/util/ArrayList;

    const-string v3, "track"

    invoke-static {v14, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x0

    move/from16 v5, v16

    :goto_3
    const-wide/32 v18, 0xafc8

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    if-ge v5, v15, :cond_6

    move-wide/from16 v22, v10

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v5, v5, 0x1

    move-object v11, v10

    check-cast v11, Lad/x0;

    move-wide/from16 v25, v8

    iget-wide v7, v11, Lad/x0;->d:D

    cmpg-double v7, v7, v20

    if-gtz v7, :cond_5

    iget-wide v7, v11, Lad/x0;->a:J

    sub-long v8, v25, v7

    cmp-long v7, v8, v18

    if-gtz v7, :cond_5

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move-wide/from16 v10, v22

    move-wide/from16 v8, v25

    const/4 v7, 0x0

    goto :goto_3

    :cond_6
    move-wide/from16 v25, v8

    move-wide/from16 v22, v10

    new-instance v5, Lad/g0;

    const/4 v7, 0x2

    invoke-direct {v5, v7}, Lad/g0;-><init>(I)V

    invoke-static {v3, v5}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const-wide/high16 v27, 0x402e000000000000L    # 15.0

    if-eqz v5, :cond_7

    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    const-wide/16 v40, 0x4e20

    goto/16 :goto_b

    :cond_7
    invoke-static {v3}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lad/x0;

    new-instance v3, Lad/g0;

    const/4 v11, 0x3

    invoke-direct {v3, v11}, Lad/g0;-><init>(I)V

    invoke-static {v14, v3}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    invoke-interface {v3, v11}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v11

    move-object v15, v11

    check-cast v15, Lad/x0;

    sget-object v29, Ldd/t0;->Companion:Ldd/s0;

    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    iget-wide v7, v15, Lad/x0;->b:D

    const-wide/16 v40, 0x4e20

    iget-wide v9, v15, Lad/x0;->c:D

    move-wide/from16 v30, v7

    iget-wide v6, v5, Lad/x0;->b:D

    move-wide/from16 v34, v6

    iget-wide v6, v5, Lad/x0;->c:D

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v36, v6

    move-wide/from16 v32, v9

    invoke-static/range {v30 .. v37}, Ldd/s0;->a(DDDD)D

    move-result-wide v6

    cmpl-double v6, v6, v27

    if-ltz v6, :cond_8

    goto :goto_5

    :cond_8
    const/4 v6, 0x1

    goto :goto_4

    :cond_9
    const-wide/high16 v38, 0x404e000000000000L    # 60.0

    const-wide/16 v40, 0x4e20

    const/4 v11, 0x0

    :goto_5
    check-cast v11, Lad/x0;

    if-eqz v11, :cond_10

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v7, v16

    :goto_6
    if-ge v7, v6, :cond_b

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    move-object v9, v8

    check-cast v9, Lad/x0;

    iget-wide v9, v9, Lad/x0;->a:J

    move/from16 p1, v6

    move v15, v7

    iget-wide v6, v11, Lad/x0;->a:J

    cmp-long v6, v9, v6

    if-lez v6, :cond_a

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    move/from16 v6, p1

    move v7, v15

    goto :goto_6

    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_c

    const/4 v6, 0x0

    goto :goto_7

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_d

    goto :goto_7

    :cond_d
    move-object v7, v6

    check-cast v7, Lad/x0;

    iget-wide v7, v7, Lad/x0;->a:J

    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lad/x0;

    iget-wide v10, v10, Lad/x0;->a:J

    cmp-long v15, v7, v10

    if-lez v15, :cond_f

    move-object v6, v9

    move-wide v7, v10

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_e

    :goto_7
    check-cast v6, Lad/x0;

    if-nez v6, :cond_15

    :cond_10
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_11

    const/4 v3, 0x0

    goto :goto_8

    :cond_11
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_12

    goto :goto_8

    :cond_12
    move-object v7, v3

    check-cast v7, Lad/x0;

    iget-wide v7, v7, Lad/x0;->a:J

    :cond_13
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lad/x0;

    iget-wide v10, v10, Lad/x0;->a:J

    cmp-long v15, v7, v10

    if-lez v15, :cond_14

    move-object v3, v9

    move-wide v7, v10

    :cond_14
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_13

    :goto_8
    move-object v6, v3

    check-cast v6, Lad/x0;

    if-nez v6, :cond_15

    goto :goto_b

    :cond_15
    iget-wide v7, v5, Lad/x0;->a:J

    iget-wide v5, v6, Lad/x0;->a:J

    sub-long/2addr v7, v5

    cmp-long v3, v7, v40

    if-ltz v3, :cond_18

    invoke-virtual {v0, v5, v6}, Lad/j0;->x(J)D

    move-result-wide v5

    cmpl-double v3, v5, v38

    if-lez v3, :cond_18

    iget-object v3, v0, Lad/j0;->T:Lad/x1;

    if-eqz v3, :cond_16

    iget-wide v5, v3, Lad/x1;->b:D

    invoke-virtual {v3, v5, v6}, Lad/x1;->d(D)Lad/v1;

    move-result-object v1

    iget-object v1, v1, Lad/v1;->a:Lua/nav/routing/GeoPoint;

    :cond_16
    invoke-static {v14}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lad/x0;

    iget-wide v5, v3, Lad/x0;->a:J

    invoke-virtual {v0, v5, v6}, Lad/j0;->x(J)D

    move-result-wide v5

    double-to-int v3, v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "blind_start src=net_frozen moved_m="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ldd/k0;->n(Ljava/lang/String;)V

    if-eqz v2, :cond_17

    move-wide v15, v12

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    new-instance v12, Lad/o0;

    const-string v17, "NETTRK"

    invoke-direct/range {v12 .. v17}, Lad/o0;-><init>(DDLjava/lang/String;)V

    move-object v7, v12

    :goto_9
    const/4 v2, 0x1

    goto :goto_a

    :cond_17
    const/4 v7, 0x0

    goto :goto_9

    :goto_a
    invoke-virtual {v0, v1, v2, v7}, Lad/j0;->B(Lua/nav/routing/GeoPoint;ZLad/o0;)V

    return-void

    :cond_18
    :goto_b
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v6, v16

    :cond_19
    :goto_c
    if-ge v6, v5, :cond_1a

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    move-object v8, v7

    check-cast v8, Lad/x0;

    iget-wide v9, v8, Lad/x0;->d:D

    cmpg-double v9, v9, v20

    if-gtz v9, :cond_19

    iget-wide v8, v8, Lad/x0;->a:J

    sub-long v8, v25, v8

    cmp-long v8, v8, v18

    if-gtz v8, :cond_19

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1a
    new-instance v5, Lad/g0;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lad/g0;-><init>(I)V

    invoke-static {v3, v5}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1b
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lad/x0;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1c

    invoke-static {v5}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lad/x0;

    sget-object v9, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v10, v8, Lad/x0;->b:D

    iget-wide v14, v8, Lad/x0;->c:D

    move-object/from16 p1, v9

    iget-wide v8, v7, Lad/x0;->b:D

    move-wide/from16 v33, v8

    iget-wide v8, v7, Lad/x0;->c:D

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v35, v8

    move-wide/from16 v29, v10

    move-wide/from16 v31, v14

    invoke-static/range {v29 .. v36}, Ldd/s0;->a(DDDD)D

    move-result-wide v8

    cmpl-double v8, v8, v27

    if-ltz v8, :cond_1b

    :cond_1c
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_1d
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1e

    move-wide/from16 v29, v12

    const/4 v6, 0x0

    const/4 v9, 0x0

    goto/16 :goto_17

    :cond_1e
    invoke-static {v5}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lad/x0;

    invoke-static {v3}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lad/x0;

    iget-wide v7, v3, Lad/x0;->a:J

    iget-wide v9, v6, Lad/x0;->a:J

    iget-wide v14, v6, Lad/x0;->c:D

    move-wide/from16 v18, v7

    iget-wide v7, v6, Lad/x0;->b:D

    sub-long v18, v18, v9

    cmp-long v3, v18, v40

    if-ltz v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_e

    :cond_1f
    move/from16 v3, v16

    :goto_e
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move/from16 p1, v3

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-wide/from16 v18, v9

    move/from16 v9, v16

    :goto_f
    if-ge v9, v3, :cond_21

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    move/from16 v20, v3

    move-object v3, v10

    check-cast v3, Lad/x0;

    move-wide/from16 v29, v12

    iget-wide v12, v3, Lad/x0;->a:J

    sub-long v12, v18, v12

    const-wide/16 v27, 0x61a8

    cmp-long v3, v12, v27

    if-gtz v3, :cond_20

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    move/from16 v3, v20

    move-wide/from16 v12, v29

    goto :goto_f

    :cond_21
    move-wide/from16 v29, v12

    if-nez p1, :cond_23

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    const-wide v20, 0x40fafcc000000000L    # 110540.0

    const/4 v9, 0x2

    if-lt v3, v9, :cond_22

    invoke-static {v11}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lad/x0;

    sget-object v10, Ldd/t0;->Companion:Ldd/s0;

    const-wide v27, 0x40fb2d8000000000L    # 111320.0

    iget-wide v12, v3, Lad/x0;->b:D

    move-object/from16 v31, v10

    iget-wide v9, v3, Lad/x0;->c:D

    move-wide/from16 v45, v9

    iget-wide v9, v6, Lad/x0;->b:D

    move-object v3, v5

    iget-wide v5, v6, Lad/x0;->c:D

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v49, v5

    move-wide/from16 v47, v9

    move-wide/from16 v43, v12

    invoke-static/range {v43 .. v50}, Ldd/s0;->a(DDDD)D

    move-result-wide v5

    const-wide/high16 v9, 0x4044000000000000L    # 40.0

    cmpl-double v5, v5, v9

    if-ltz v5, :cond_24

    invoke-static {v11}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lad/x0;

    iget-wide v9, v5, Lad/x0;->b:D

    iget-wide v5, v5, Lad/x0;->c:D

    add-double v11, v9, v7

    move-wide/from16 v31, v5

    const/4 v13, 0x2

    int-to-double v5, v13

    div-double/2addr v11, v5

    invoke-static {v11, v12}, Lsc/c;->c(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v5, v5, v27

    sub-double v11, v14, v31

    mul-double/2addr v11, v5

    sub-double v5, v7, v9

    mul-double v5, v5, v20

    invoke-static {v11, v12, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    invoke-static {v5, v6}, Lsc/c;->b(D)D

    move-result-wide v5

    add-double v5, v5, v22

    rem-double v5, v5, v22

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_12

    :cond_22
    move-object v3, v5

    :goto_10
    const-wide v27, 0x40fb2d8000000000L    # 111320.0

    goto :goto_11

    :cond_23
    move-object v3, v5

    const-wide v20, 0x40fafcc000000000L    # 110540.0

    goto :goto_10

    :cond_24
    :goto_11
    const/4 v5, 0x0

    :goto_12
    if-eqz p1, :cond_25

    new-instance v2, Lt8/j;

    const-string v5, "stopped"

    const/4 v6, 0x0

    invoke-direct {v2, v6, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_13
    move-object v9, v6

    goto :goto_15

    :cond_25
    if-eqz v5, :cond_27

    if-eqz v2, :cond_27

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    sub-double/2addr v9, v11

    rem-double v9, v9, v22

    const-wide v11, 0x4080e00000000000L    # 540.0

    add-double/2addr v9, v11

    rem-double v9, v9, v22

    const-wide v11, 0x4066800000000000L    # 180.0

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpg-double v2, v9, v38

    if-gtz v2, :cond_26

    new-instance v2, Lt8/j;

    const-string v6, "net+gyro"

    invoke-direct {v2, v5, v6}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_14
    const/4 v9, 0x0

    goto :goto_15

    :cond_26
    new-instance v2, Lt8/j;

    const-string v5, "conflict"

    const/4 v6, 0x0

    invoke-direct {v2, v6, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_13

    :cond_27
    if-eqz v5, :cond_28

    new-instance v2, Lt8/j;

    const-string v6, "net"

    invoke-direct {v2, v5, v6}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_14

    :cond_28
    if-eqz v2, :cond_29

    new-instance v5, Lt8/j;

    const-string v6, "gyro"

    invoke-direct {v5, v2, v6}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v5

    goto :goto_14

    :cond_29
    new-instance v2, Lt8/j;

    const-string v5, "none"

    const/4 v9, 0x0

    invoke-direct {v2, v9, v5}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_15
    iget-object v5, v2, Lt8/j;->l:Ljava/lang/Object;

    move-object/from16 v33, v5

    check-cast v33, Ljava/lang/Double;

    iget-object v2, v2, Lt8/j;->m:Ljava/lang/Object;

    move-object/from16 v34, v2

    check-cast v34, Ljava/lang/String;

    new-instance v2, Lua/nav/routing/GeoPoint;

    invoke-direct {v2, v7, v8, v14, v15}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    if-eqz v33, :cond_2d

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    cmpl-double v5, v29, v5

    if-ltz v5, :cond_2d

    sub-long v5, v25, v18

    long-to-double v5, v5

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v5, v10

    const-wide/16 v10, 0x0

    cmpg-double v2, v5, v10

    if-gez v2, :cond_2a

    move-wide v5, v10

    :cond_2a
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    cmpl-double v2, v29, v12

    if-lez v2, :cond_2b

    goto :goto_16

    :cond_2b
    move-wide/from16 v12, v29

    :goto_16
    mul-double/2addr v12, v5

    const-wide v5, 0x4062c00000000000L    # 150.0

    cmpl-double v2, v12, v5

    if-lez v2, :cond_2c

    move-wide v12, v5

    :cond_2c
    invoke-static {v10, v11}, Lsc/c;->c(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v10, v12

    div-double v10, v10, v20

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v5, v12

    invoke-static {v7, v8}, Lsc/c;->c(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v12, v12, v27

    div-double/2addr v5, v12

    new-instance v2, Lua/nav/routing/GeoPoint;

    add-double/2addr v7, v10

    add-double/2addr v14, v5

    invoke-direct {v2, v7, v8, v14, v15}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    :cond_2d
    sget-object v5, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v6, v1, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v10, v1, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v12, v2, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v14, v2, Lua/nav/routing/GeoPoint;->b:D

    move-wide/from16 v18, v6

    move-wide/from16 v20, v10

    move-wide/from16 v22, v12

    move-wide/from16 v24, v14

    invoke-static/range {v18 .. v25}, Ldd/s0;->a(DDDD)D

    move-result-wide v36

    new-instance v31, Lad/n1;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v35

    move-object/from16 v32, v2

    invoke-direct/range {v31 .. v37}, Lad/n1;-><init>(Lua/nav/routing/GeoPoint;Ljava/lang/Double;Ljava/lang/String;ID)V

    move-object/from16 v6, v31

    :goto_17
    if-nez v6, :cond_2e

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lad/j0;->C(Lad/j0;Lua/nav/routing/GeoPoint;I)V

    return-void

    :cond_2e
    iget-object v1, v6, Lad/n1;->b:Ljava/lang/Double;

    iget v2, v6, Lad/n1;->d:I

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    double-to-int v5, v7

    goto :goto_18

    :cond_2f
    const/4 v5, -0x1

    :goto_18
    iget-object v3, v6, Lad/n1;->c:Ljava/lang/String;

    iget-wide v7, v6, Lad/n1;->e:D

    double-to-int v7, v7

    const-string v8, " heading="

    const-string v10, " src="

    const-string v11, "blind_start pts="

    invoke-static {v11, v2, v8, v5, v10}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " shift_m="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-object v2, v6, Lad/n1;->a:Lua/nav/routing/GeoPoint;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    new-instance v12, Lad/o0;

    const-string v17, "NETTRK"

    move-wide/from16 v15, v29

    invoke-direct/range {v12 .. v17}, Lad/o0;-><init>(DDLjava/lang/String;)V

    move-object v7, v12

    :goto_19
    const/4 v10, 0x1

    goto :goto_1a

    :cond_30
    move-object v7, v9

    goto :goto_19

    :goto_1a
    invoke-virtual {v0, v2, v10, v7}, Lad/j0;->B(Lua/nav/routing/GeoPoint;ZLad/o0;)V

    return-void

    :cond_31
    move/from16 v3, p1

    goto/16 :goto_0
.end method

.method public final o(Ldd/l0;)Ljava/lang/Double;
    .locals 5

    iget-object v0, p1, Ldd/l0;->h:Ljava/lang/Float;

    iget-object p1, p1, Ldd/l0;->g:Ljava/lang/Float;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v1, p1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    cmpl-double p1, v1, v3

    if-ltz p1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lad/j0;->m:Lsc/i;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lsc/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lad/o0;

    if-eqz p0, :cond_1

    iget-wide p0, p0, Lad/o0;->a:D

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final p()Lua/nav/Tuning;
    .locals 0

    iget-object p0, p0, Lad/j0;->g:Lua/nav/a;

    iget-object p0, p0, Lua/nav/a;->y:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lua/nav/Tuning;

    return-object p0
.end method

.method public final q(Lad/x1;Ldd/n;J)V
    .locals 53

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v13, v1, Ldd/n;->d:Ldd/l0;

    if-nez v13, :cond_0

    goto/16 :goto_3c

    :cond_0
    iget-wide v1, v13, Ldd/l0;->c:J

    iget-wide v3, v0, Lad/j0;->r0:J

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    goto/16 :goto_3c

    :cond_1
    iput-wide v1, v0, Lad/j0;->r0:J

    sub-long v1, p3, v1

    const-wide/16 v14, 0x7530

    cmp-long v1, v1, v14

    if-lez v1, :cond_2

    goto/16 :goto_3c

    :cond_2
    new-instance v2, Lua/nav/routing/GeoPoint;

    iget-wide v3, v13, Ldd/l0;->d:D

    iget-wide v5, v13, Ldd/l0;->e:D

    invoke-direct {v2, v3, v4, v5, v6}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    const/4 v9, 0x0

    const/16 v10, 0x1e

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v10}, Lad/x1;->e(Lad/x1;Lua/nav/routing/GeoPoint;DDDLjava/lang/Double;I)Lad/w1;

    move-result-object v2

    iget-object v3, v13, Ldd/l0;->i:Ljava/lang/Float;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_0

    :cond_3
    const/high16 v3, 0x43fa0000    # 500.0f

    :goto_0
    float-to-double v3, v3

    iget-boolean v5, v0, Lad/j0;->l0:Z

    const/4 v6, 0x2

    move-wide/from16 v16, v14

    const-wide v14, 0x4062c00000000000L    # 150.0

    move/from16 p2, v5

    const-string v5, " acc="

    if-eqz p2, :cond_4

    iget-wide v9, v0, Lad/j0;->Y:J

    const-wide/16 v22, 0x0

    cmp-long v8, v9, v22

    if-nez v8, :cond_4

    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    cmpg-double v8, v3, v8

    if-gtz v8, :cond_4

    iget-wide v8, v2, Lad/w1;->b:D

    move-wide/from16 v22, v8

    int-to-double v7, v6

    mul-double/2addr v7, v3

    invoke-static {v14, v15, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    cmpg-double v7, v22, v7

    if-gtz v7, :cond_4

    const/4 v7, 0x0

    iput-boolean v7, v0, Lad/j0;->l0:Z

    iget-object v8, v0, Lad/j0;->a:Ldd/k0;

    iget-wide v9, v2, Lad/w1;->a:D

    double-to-int v9, v9

    iget-wide v6, v1, Lad/x1;->b:D

    double-to-int v6, v6

    double-to-int v7, v3

    move-wide/from16 v22, v14

    iget-wide v14, v2, Lad/w1;->b:D

    double-to-int v14, v14

    const-string v15, "late_start src=net s="

    const-string v10, " from_s="

    invoke-static {v15, v9, v10, v6, v5}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " off="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-wide v6, v2, Lad/w1;->a:D

    invoke-virtual {v1, v6, v7}, Lad/x1;->g(D)V

    const/4 v6, -0x1

    iput v6, v0, Lad/j0;->y1:I

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v6, v0, Lad/j0;->A1:D

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lad/j0;->z0:D

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    invoke-virtual {v0, v1, v14, v15}, Lad/j0;->d(Lad/x1;D)V

    :goto_1
    move-object v10, v2

    goto :goto_2

    :cond_4
    move-wide/from16 v22, v14

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    goto :goto_1

    :goto_2
    new-instance v2, Lua/nav/routing/GeoPoint;

    iget-wide v14, v13, Ldd/l0;->d:D

    iget-wide v6, v13, Ldd/l0;->e:D

    invoke-direct {v2, v14, v15, v6, v7}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    move-wide/from16 v18, v8

    const/4 v9, 0x0

    move-object v6, v10

    const/16 v10, 0x10

    move-wide v7, v3

    const-wide v3, 0x4082c00000000000L    # 600.0

    move-object v15, v5

    move-object v14, v6

    const-wide/high16 v5, 0x4069000000000000L    # 200.0

    move-wide/from16 v25, v7

    const-wide v7, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-object/from16 v29, v15

    move-wide/from16 v11, v18

    const/4 v15, 0x0

    invoke-static/range {v1 .. v10}, Lad/x1;->e(Lad/x1;Lua/nav/routing/GeoPoint;DDDLjava/lang/Double;I)Lad/w1;

    move-result-object v2

    iget-wide v3, v2, Lad/w1;->b:D

    add-double v5, v25, v11

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_5

    goto :goto_3

    :cond_5
    move-object v2, v14

    :goto_3
    iget-wide v7, v2, Lad/w1;->a:D

    iget-wide v1, v2, Lad/w1;->b:D

    iget-object v3, v0, Lad/j0;->L0:Lad/f;

    iget-object v4, v0, Lad/j0;->k0:Lad/a1;

    iget-wide v9, v0, Lad/j0;->Y:J

    sub-long v9, p3, v9

    const-wide/16 v18, 0xbb8

    cmp-long v9, v9, v18

    const-wide v20, 0x3fe3333333333333L    # 0.6

    const-string v15, "key"

    move-object/from16 v24, v14

    const-string v14, ","

    const-wide v30, 0x408f400000000000L    # 1000.0

    if-ltz v9, :cond_6

    iget-object v9, v0, Lad/j0;->j:Lx9/l0;

    invoke-virtual {v9}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lad/a0;

    iget-boolean v9, v9, Lad/a0;->r:Z

    if-eqz v9, :cond_7

    :cond_6
    move-wide/from16 v1, p3

    move-object/from16 v38, v13

    move-wide/from16 v9, v25

    move-object/from16 v13, v29

    move-object/from16 v25, v14

    goto/16 :goto_a

    :cond_7
    move-wide/from16 v34, v5

    iget-wide v5, v13, Ldd/l0;->c:J

    iget-wide v10, v13, Ldd/l0;->d:D

    move-wide/from16 v36, v10

    iget-wide v9, v13, Ldd/l0;->e:D

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v38, v13

    move-wide/from16 v12, v36

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v11, v4, Lad/a1;->a:Ljava/util/ArrayList;

    invoke-static {v9, v15}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v10, v4, Lad/a1;->b:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_8
    :goto_4
    move-wide/from16 v1, p3

    move-wide/from16 v9, v25

    move-object/from16 v13, v29

    move-object/from16 v25, v14

    goto/16 :goto_7

    :cond_9
    iput-object v9, v4, Lad/a1;->b:Ljava/lang/String;

    cmpl-double v4, v25, v22

    if-gtz v4, :cond_8

    cmpl-double v1, v1, v34

    if-lez v1, :cond_a

    goto :goto_4

    :cond_a
    invoke-static {v11}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/z0;

    if-eqz v1, :cond_b

    iget-wide v9, v1, Lad/z0;->b:D

    sub-double/2addr v9, v7

    iget-wide v12, v1, Lad/z0;->a:J

    sub-long v12, v5, v12

    long-to-double v12, v12

    const-wide v34, 0x4041800000000000L    # 35.0

    mul-double v12, v12, v34

    div-double v12, v12, v30

    iget-wide v1, v1, Lad/z0;->c:D

    add-double/2addr v12, v1

    add-double v12, v12, v25

    cmpl-double v1, v9, v12

    if-lez v1, :cond_b

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    :cond_b
    new-instance v4, Lad/z0;

    move-wide/from16 v9, v25

    const/4 v13, 0x0

    invoke-direct/range {v4 .. v10}, Lad/z0;-><init>(JDD)V

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lad/c;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v5, v6}, Lad/c;-><init>(IJ)V

    invoke-static {v11, v1}, Lu8/m;->r0(Ljava/util/List;Li9/c;)V

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_c

    invoke-static {v11}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/z0;

    iget-wide v1, v1, Lad/z0;->a:J

    invoke-static {v11}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/z0;

    iget-wide v4, v4, Lad/z0;->a:J

    sub-long/2addr v1, v4

    cmp-long v1, v1, v16

    if-gez v1, :cond_d

    :cond_c
    move-wide/from16 v1, p3

    move-object/from16 v25, v14

    goto :goto_6

    :cond_d
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    :goto_5
    if-ge v2, v1, :cond_f

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lad/z0;

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    iget-wide v4, v6, Lad/z0;->b:D

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lad/z0;

    move-object/from16 v25, v14

    iget-wide v13, v12, Lad/z0;->b:D

    sub-double/2addr v4, v13

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lad/z0;

    iget-wide v12, v12, Lad/z0;->c:D

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lad/z0;

    move v14, v1

    iget-wide v0, v6, Lad/z0;->c:D

    add-double/2addr v12, v0

    mul-double v12, v12, v16

    cmpl-double v0, v4, v12

    if-lez v0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {v11, v0, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    :goto_6
    move-object/from16 v13, v29

    :goto_7
    const/4 v3, 0x0

    goto/16 :goto_b

    :cond_e
    add-int/lit8 v2, v2, 0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move v1, v14

    move-object/from16 v14, v25

    goto :goto_5

    :cond_f
    move-object/from16 v25, v14

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    invoke-static {v11}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/z0;

    iget-wide v0, v0, Lad/z0;->b:D

    invoke-static {v11}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lad/z0;

    iget-wide v4, v2, Lad/z0;->b:D

    sub-double/2addr v0, v4

    invoke-static {v11}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lad/z0;

    iget-wide v4, v2, Lad/z0;->c:D

    invoke-static {v11}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lad/z0;

    iget-wide v12, v2, Lad/z0;->c:D

    add-double/2addr v4, v12

    mul-double v4, v4, v16

    add-double v4, v4, v22

    cmpg-double v2, v0, v4

    if-gez v2, :cond_11

    :cond_10
    :goto_8
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    goto :goto_6

    :cond_11
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v12, 0x1

    invoke-static {v12, v2}, Lg6/c1;->G(II)Lo9/d;

    move-result-object v2

    invoke-virtual {v2}, Lo9/b;->iterator()Ljava/util/Iterator;

    move-result-object v2

    check-cast v2, Lo9/c;

    iget-boolean v4, v2, Lo9/c;->n:Z

    if-eqz v4, :cond_15

    invoke-virtual {v2}, Lo9/c;->nextInt()I

    move-result v4

    add-int/lit8 v5, v4, -0x1

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lad/z0;

    iget-wide v5, v5, Lad/z0;->b:D

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/z0;

    iget-wide v13, v4, Lad/z0;->b:D

    sub-double/2addr v5, v13

    :goto_9
    iget-boolean v4, v2, Lo9/c;->n:Z

    if-eqz v4, :cond_12

    invoke-virtual {v2}, Lo9/c;->nextInt()I

    move-result v4

    add-int/lit8 v13, v4, -0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lad/z0;

    iget-wide v13, v13, Lad/z0;->b:D

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/z0;

    move-wide/from16 v16, v13

    iget-wide v12, v4, Lad/z0;->b:D

    sub-double v13, v16, v12

    invoke-static {v5, v6, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    const/4 v12, 0x1

    goto :goto_9

    :cond_12
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x3

    if-gt v2, v4, :cond_13

    mul-double v0, v0, v20

    cmpl-double v0, v5, v0

    if-lez v0, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3}, Lad/f;->b()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v0

    iget-boolean v0, v0, Lua/nav/Tuning;->H:Z

    if-eqz v0, :cond_10

    move-wide/from16 v1, p3

    invoke-virtual {v3, v1, v2}, Lad/f;->a(J)Z

    move-result v0

    if-nez v0, :cond_14

    move-object/from16 v0, p0

    goto/16 :goto_6

    :cond_14
    double-to-int v0, v7

    double-to-int v3, v9

    const-string v4, "blind_deviation_reverse s="

    move-object/from16 v13, v29

    invoke-static {v4, v0, v13, v3}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcd/d;->w1:Lcd/c;

    const/4 v7, 0x0

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v7}, Lad/j0;->A(Lad/j0;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Lt8/j;I)V

    goto/16 :goto_7

    :cond_15
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :goto_a
    iget-object v3, v4, Lad/a1;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    iput-object v3, v4, Lad/a1;->b:Ljava/lang/String;

    :goto_b
    iget-object v4, v0, Lad/j0;->N0:Ljava/util/ArrayList;

    move-object v5, v4

    new-instance v4, Lad/x0;

    move-object/from16 v6, v38

    iget-wide v11, v6, Ldd/l0;->c:J

    iget-wide v7, v6, Ldd/l0;->d:D

    move-wide/from16 v16, v7

    iget-wide v7, v6, Ldd/l0;->e:D

    move-object v3, v5

    move-object v14, v6

    move-wide/from16 v5, v16

    invoke-direct/range {v4 .. v12}, Lad/x0;-><init>(DDDJ)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_c
    iget-object v3, v0, Lad/j0;->N0:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xc

    if-le v3, v4, :cond_16

    iget-object v3, v0, Lad/j0;->N0:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_c

    :cond_16
    move-object/from16 v11, v24

    iget-wide v5, v11, Lad/w1;->b:D

    iget-wide v3, v14, Ldd/l0;->d:D

    iget-wide v7, v14, Ldd/l0;->e:D

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-object/from16 v3, v25

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-wide v3, v11, Lad/w1;->a:D

    move-wide/from16 v16, v3

    iget-wide v3, v0, Lad/j0;->Y:J

    sub-long v3, v1, v3

    cmp-long v3, v3, v18

    const-wide v24, 0x400ccccccccccccdL    # 3.6

    const-wide/16 v32, 0x2710

    const-wide v34, 0x4072c00000000000L    # 300.0

    if-gez v3, :cond_18

    const/4 v3, 0x0

    iput v3, v0, Lad/j0;->h0:I

    iget-object v4, v0, Lad/j0;->i0:Lad/w0;

    invoke-virtual {v4}, Lad/w0;->a()V

    iget-object v4, v0, Lad/j0;->j0:Lad/i1;

    invoke-virtual {v4}, Lad/i1;->a()V

    :goto_d
    move-object/from16 v29, v11

    move-object/from16 v46, v14

    :cond_17
    :goto_e
    const/4 v14, 0x1

    const/16 v26, 0x4

    goto/16 :goto_2c

    :cond_18
    const/4 v3, 0x0

    iget-object v4, v0, Lad/j0;->j:Lx9/l0;

    invoke-virtual {v4}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/a0;

    iget-boolean v4, v4, Lad/a0;->r:Z

    if-eqz v4, :cond_19

    iput v3, v0, Lad/j0;->h0:I

    iget-object v3, v0, Lad/j0;->i0:Lad/w0;

    invoke-virtual {v3}, Lad/w0;->a()V

    iget-object v3, v0, Lad/j0;->j0:Lad/i1;

    invoke-virtual {v3}, Lad/i1;->a()V

    goto :goto_d

    :cond_19
    sget v3, Lb6/g;->l:I

    if-ltz v3, :cond_1b

    sget-wide v36, Lb6/g;->m:J

    sub-long v36, v1, v36

    const-wide/16 v38, 0x9c4

    cmp-long v4, v36, v38

    if-lez v4, :cond_1a

    goto :goto_10

    :cond_1a
    int-to-double v3, v3

    div-double v3, v3, v24

    sget-wide v36, Lb6/g;->n:D

    mul-double v3, v3, v36

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :goto_f
    move-object/from16 v29, v13

    goto :goto_11

    :cond_1b
    :goto_10
    const/4 v3, 0x0

    goto :goto_f

    :goto_11
    const-wide/16 v36, 0x3a98

    if-nez v3, :cond_1e

    :cond_1c
    :goto_12
    move-object/from16 v45, v7

    :cond_1d
    move-object/from16 v13, v29

    goto/16 :goto_16

    :cond_1e
    iget-object v3, v0, Lad/j0;->N0:Ljava/util/ArrayList;

    invoke-static {v3}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lad/x0;

    if-eqz v3, :cond_1c

    iget-wide v12, v3, Lad/x0;->a:J

    sub-long v12, v1, v12

    cmp-long v4, v12, v36

    if-gtz v4, :cond_1f

    goto :goto_13

    :cond_1f
    const/4 v3, 0x0

    :goto_13
    if-nez v3, :cond_20

    goto :goto_12

    :cond_20
    iget-object v4, v0, Lad/j0;->N0:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v12, 0x0

    :goto_14
    if-ge v12, v8, :cond_22

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v43, v4

    move-object v4, v13

    check-cast v4, Lad/x0;

    move/from16 v45, v12

    move-object/from16 v44, v13

    iget-wide v12, v3, Lad/x0;->a:J

    move-wide/from16 v46, v12

    iget-wide v12, v4, Lad/x0;->a:J

    sub-long v12, v46, v12

    long-to-double v12, v12

    div-double v12, v12, v30

    const-wide/high16 v46, 0x4020000000000000L    # 8.0

    cmpg-double v4, v46, v12

    if-gtz v4, :cond_21

    const-wide/high16 v46, 0x4044000000000000L    # 40.0

    cmpg-double v4, v12, v46

    if-gtz v4, :cond_21

    goto :goto_15

    :cond_21
    move-object/from16 v4, v43

    move/from16 v12, v45

    goto :goto_14

    :cond_22
    const/16 v44, 0x0

    :goto_15
    move-object/from16 v4, v44

    check-cast v4, Lad/x0;

    if-nez v4, :cond_23

    goto :goto_12

    :cond_23
    sget-object v8, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v12, v4, Lad/x0;->b:D

    move-wide/from16 v43, v12

    iget-wide v12, v4, Lad/x0;->c:D

    move-wide/from16 v45, v12

    iget-wide v12, v3, Lad/x0;->b:D

    move-wide/from16 v47, v12

    iget-wide v12, v3, Lad/x0;->c:D

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v49, v12

    invoke-static/range {v43 .. v50}, Ldd/s0;->a(DDDD)D

    move-result-wide v12

    move-wide/from16 v43, v12

    iget-wide v12, v4, Lad/x0;->a:J

    invoke-virtual {v0, v12, v13}, Lad/j0;->x(J)D

    move-result-wide v12

    move-wide/from16 v45, v12

    iget-wide v12, v3, Lad/x0;->a:J

    invoke-virtual {v0, v12, v13}, Lad/j0;->x(J)D

    move-result-wide v12

    sub-double v12, v45, v12

    move-object/from16 v45, v7

    const-wide/16 v7, 0x0

    cmpg-double v27, v12, v7

    if-gez v27, :cond_24

    move-wide v12, v7

    :cond_24
    const-wide/high16 v27, 0x3ff8000000000000L    # 1.5

    mul-double v12, v12, v27

    iget-wide v7, v3, Lad/x0;->d:D

    iget-wide v3, v4, Lad/x0;->d:D

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    add-double/2addr v3, v12

    cmpl-double v3, v43, v3

    if-lez v3, :cond_1d

    const/4 v7, 0x0

    iput v7, v0, Lad/j0;->h0:I

    iget-object v3, v0, Lad/j0;->i0:Lad/w0;

    invoke-virtual {v3}, Lad/w0;->a()V

    iget-object v3, v0, Lad/j0;->j0:Lad/i1;

    invoke-virtual {v3}, Lad/i1;->a()V

    iget-object v3, v0, Lad/j0;->O0:Lad/j2;

    const-wide/16 v7, -0x1

    iput-wide v7, v3, Lad/j2;->a:J

    iput-wide v7, v3, Lad/j2;->c:J

    iget-wide v3, v0, Lad/j0;->z:J

    sub-long v3, v1, v3

    cmp-long v3, v3, v32

    if-lez v3, :cond_25

    iput-wide v1, v0, Lad/j0;->z:J

    iget-object v3, v0, Lad/j0;->a:Ldd/k0;

    double-to-int v4, v5

    double-to-int v5, v9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "blind_deviation_net_skip reason=obd_path off="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v13, v29

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ldd/k0;->n(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_25
    move-object/from16 v13, v29

    goto/16 :goto_d

    :goto_16
    iget-object v3, v0, Lad/j0;->T:Lad/x1;

    if-eqz v3, :cond_26

    iget-object v4, v3, Lad/x1;->a:Lua/nav/routing/Route;

    invoke-virtual {v4}, Lua/nav/routing/Route;->c()D

    move-result-wide v7

    iget-wide v3, v3, Lad/x1;->b:D

    sub-double/2addr v7, v3

    cmpg-double v3, v7, v30

    if-gez v3, :cond_26

    const/4 v7, 0x1

    goto :goto_17

    :cond_26
    const/4 v7, 0x0

    :goto_17
    iget-object v3, v0, Lad/j0;->O0:Lad/j2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    cmpl-double v4, v9, v22

    const-wide/high16 v43, 0x403e000000000000L    # 30.0

    const-string v8, "blind_deviation_net off="

    move-object/from16 v29, v11

    if-gtz v4, :cond_2a

    const-wide/high16 v11, 0x4054000000000000L    # 80.0

    move-object/from16 v46, v14

    move-object/from16 v47, v15

    add-double v14, v9, v43

    invoke-static {v11, v12, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    cmpg-double v4, v5, v11

    if-gez v4, :cond_27

    goto :goto_18

    :cond_27
    iput-wide v1, v3, Lad/j2;->c:J

    invoke-virtual {v3, v1, v2}, Lad/j2;->a(J)Ljava/lang/Double;

    move-result-object v4

    if-nez v4, :cond_28

    goto :goto_18

    :cond_28
    const-wide/16 v11, -0x1

    iput-wide v11, v3, Lad/j2;->a:J

    if-nez v7, :cond_29

    const/4 v15, 0x0

    iput v15, v0, Lad/j0;->h0:I

    iget-object v3, v0, Lad/j0;->i0:Lad/w0;

    invoke-virtual {v3}, Lad/w0;->a()V

    iget-object v3, v0, Lad/j0;->L0:Lad/f;

    invoke-virtual {v3}, Lad/f;->b()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v3

    iget-boolean v3, v3, Lua/nav/Tuning;->H:Z

    if-eqz v3, :cond_17

    iget-object v3, v0, Lad/j0;->L0:Lad/f;

    invoke-virtual {v3, v1, v2}, Lad/f;->a(J)Z

    move-result v3

    if-eqz v3, :cond_17

    double-to-int v3, v5

    double-to-int v4, v9

    const-string v5, " rule=turn_net"

    invoke-static {v8, v3, v13, v4, v5}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcd/d;->v1:Lcd/c;

    const/4 v7, 0x0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v7, 0x28

    const/4 v5, 0x0

    const-wide/16 v11, 0x0

    invoke-static/range {v0 .. v7}, Lad/j0;->A(Lad/j0;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Lt8/j;I)V

    goto/16 :goto_e

    :cond_29
    :goto_18
    move-object v14, v0

    const-wide/16 v11, 0x0

    goto :goto_19

    :cond_2a
    move-object/from16 v46, v14

    move-object/from16 v47, v15

    const-wide/16 v11, 0x0

    move-object v14, v0

    :goto_19
    iget-object v0, v14, Lad/j0;->p:Lid/d0;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lid/d0;->a()Lad/q1;

    move-result-object v0

    if-nez v0, :cond_2b

    goto :goto_1b

    :cond_2b
    iget-wide v3, v0, Lad/q1;->h:J

    sub-long v3, v1, v3

    cmp-long v3, v3, v18

    if-lez v3, :cond_2c

    const/4 v0, 0x0

    const-wide/high16 v11, 0x404e000000000000L    # 60.0

    goto :goto_1c

    :cond_2c
    iget-wide v3, v0, Lad/q1;->c:D

    const-wide v18, 0x3fe6666666666666L    # 0.7

    cmpg-double v3, v3, v18

    if-ltz v3, :cond_2e

    iget-wide v3, v0, Lad/q1;->e:D

    cmpg-double v3, v3, v20

    if-ltz v3, :cond_2e

    iget-wide v3, v0, Lad/q1;->d:D

    const-wide/high16 v11, 0x404e000000000000L    # 60.0

    cmpl-double v3, v3, v11

    if-lez v3, :cond_2d

    goto :goto_1a

    :cond_2d
    iget-object v3, v14, Lad/j0;->O0:Lad/j2;

    invoke-virtual {v3, v1, v2}, Lad/j2;->a(J)Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_2f

    :goto_1a
    const/4 v0, 0x0

    goto :goto_1c

    :cond_2e
    :goto_1b
    const-wide/high16 v11, 0x404e000000000000L    # 60.0

    goto :goto_1a

    :cond_2f
    :goto_1c
    if-eqz v0, :cond_31

    const/4 v15, 0x0

    iput v15, v14, Lad/j0;->h0:I

    iget-object v3, v14, Lad/j0;->i0:Lad/w0;

    invoke-virtual {v3}, Lad/w0;->a()V

    iget-object v3, v14, Lad/j0;->j0:Lad/i1;

    invoke-virtual {v3}, Lad/i1;->a()V

    iget-wide v3, v14, Lad/j0;->y:J

    sub-long v3, v1, v3

    cmp-long v3, v3, v32

    if-lez v3, :cond_30

    iput-wide v1, v14, Lad/j0;->y:J

    iget-object v3, v14, Lad/j0;->a:Ldd/k0;

    double-to-int v4, v5

    double-to-int v5, v9

    iget-wide v6, v0, Lad/q1;->c:D

    const/16 v8, 0x64

    int-to-double v11, v8

    mul-double/2addr v6, v11

    double-to-int v6, v6

    iget-wide v7, v0, Lad/q1;->d:D

    double-to-int v7, v7

    iget-wide v0, v0, Lad/q1;->e:D

    mul-double/2addr v0, v11

    double-to-int v0, v0

    const-string v1, "blind_deviation_net_veto off="

    const-string v2, " pf="

    invoke-static {v1, v4, v13, v5, v2}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-static {v1, v6, v2, v7, v2}, Lm/a;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_30
    move-wide/from16 v1, p3

    move-object v0, v14

    goto/16 :goto_e

    :cond_31
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    if-nez v7, :cond_3f

    iget-object v2, v14, Lad/j0;->j0:Lad/i1;

    iget-object v3, v14, Lad/j0;->N:Lad/l;

    iget-boolean v3, v3, Lad/l;->h:Z

    iget-object v15, v2, Lad/i1;->a:Ljava/util/ArrayList;

    move-object/from16 v4, v45

    move-object/from16 v11, v47

    invoke-static {v4, v11}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v12, v2, Lad/i1;->b:Ljava/lang/String;

    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_32

    :goto_1d
    move-wide/from16 v1, p3

    move-object/from16 v45, v4

    move-object/from16 v47, v11

    :goto_1e
    const/4 v0, 0x0

    goto/16 :goto_22

    :cond_32
    iput-object v4, v2, Lad/i1;->b:Ljava/lang/String;

    if-eqz v3, :cond_33

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto :goto_1d

    :cond_33
    cmpl-double v2, v9, v0

    if-lez v2, :cond_34

    goto :goto_1d

    :cond_34
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    add-double/2addr v2, v9

    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    cmpg-double v0, v5, v2

    if-gez v0, :cond_35

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    goto :goto_1d

    :cond_35
    new-instance v0, Lad/h1;

    move-wide/from16 v1, p3

    move-object v12, v4

    move-wide/from16 v3, v16

    invoke-direct/range {v0 .. v6}, Lad/h1;-><init>(JDD)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lad/c;

    const/4 v3, 0x3

    invoke-direct {v0, v3, v1, v2}, Lad/c;-><init>(IJ)V

    invoke-static {v15, v0}, Lu8/m;->r0(Ljava/util/List;Li9/c;)V

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_36

    move-object/from16 v47, v11

    move-object/from16 v45, v12

    goto :goto_1e

    :cond_36
    invoke-static {v3, v15}, Lu8/m;->y0(ILjava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v3, v16

    check-cast v3, Lad/h1;

    move-object/from16 v16, v4

    iget-wide v3, v3, Lad/h1;->b:D

    :goto_1f
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_37

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    check-cast v0, Lad/h1;

    move-object/from16 v47, v11

    move-object/from16 v45, v12

    iget-wide v11, v0, Lad/h1;->b:D

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    move-object/from16 v0, v27

    move-object/from16 v12, v45

    move-object/from16 v11, v47

    goto :goto_1f

    :cond_37
    move-object/from16 v27, v0

    move-object/from16 v47, v11

    move-object/from16 v45, v12

    invoke-interface/range {v27 .. v27}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lad/h1;

    iget-wide v11, v11, Lad/h1;->b:D

    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    check-cast v0, Lad/h1;

    move-wide/from16 v38, v3

    iget-wide v3, v0, Lad/h1;->b:D

    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v11

    move-object/from16 v0, v17

    move-wide/from16 v3, v38

    goto :goto_20

    :cond_38
    move-wide/from16 v38, v3

    sub-double v3, v38, v11

    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    cmpg-double v0, v3, v18

    if-gtz v0, :cond_39

    invoke-static/range {v27 .. v27}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/h1;

    iget-wide v3, v0, Lad/h1;->a:J

    invoke-static/range {v27 .. v27}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/h1;

    iget-wide v11, v0, Lad/h1;->a:J

    sub-long/2addr v3, v11

    cmp-long v0, v3, v36

    if-ltz v0, :cond_39

    invoke-static/range {v27 .. v27}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/h1;

    iget-wide v3, v0, Lad/h1;->c:D

    const-wide v11, 0x4056800000000000L    # 90.0

    cmpl-double v0, v3, v11

    if-ltz v0, :cond_39

    const/4 v0, 0x1

    goto :goto_21

    :cond_39
    const/4 v0, 0x0

    :goto_21
    if-eqz v0, :cond_3a

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    :cond_3a
    :goto_22
    if-eqz v0, :cond_3c

    const/4 v15, 0x0

    iput v15, v14, Lad/j0;->h0:I

    iget-object v0, v14, Lad/j0;->i0:Lad/w0;

    invoke-virtual {v0}, Lad/w0;->a()V

    iget-object v0, v14, Lad/j0;->L0:Lad/f;

    invoke-virtual {v0}, Lad/f;->b()Z

    move-result v0

    if-nez v0, :cond_3b

    invoke-virtual {v14}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v0

    iget-boolean v0, v0, Lua/nav/Tuning;->H:Z

    if-eqz v0, :cond_3b

    iget-object v0, v14, Lad/j0;->L0:Lad/f;

    invoke-virtual {v0, v1, v2}, Lad/f;->a(J)Z

    move-result v0

    if-eqz v0, :cond_3b

    double-to-int v0, v5

    double-to-int v3, v9

    const-string v4, " rule=stall"

    invoke-static {v8, v0, v13, v3, v4}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcd/d;->v1:Lcd/c;

    const/4 v7, 0x0

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v0, v4}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v5, 0x0

    move-object v0, v14

    const/16 v26, 0x4

    invoke-static/range {v0 .. v7}, Lad/j0;->A(Lad/j0;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Lt8/j;I)V

    :goto_23
    const/4 v14, 0x1

    goto/16 :goto_2c

    :cond_3b
    const/16 v26, 0x4

    move-object v0, v14

    goto :goto_23

    :cond_3c
    :goto_24
    move-object v0, v14

    const/16 v26, 0x4

    goto :goto_25

    :cond_3d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_3e
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_3f
    move-wide/from16 v1, p3

    goto :goto_24

    :goto_25
    invoke-virtual {v0, v5, v6, v1, v2}, Lad/j0;->u(DJ)Z

    move-result v3

    if-eqz v3, :cond_40

    const/4 v15, 0x0

    iput v15, v0, Lad/j0;->h0:I

    iget-object v3, v0, Lad/j0;->i0:Lad/w0;

    invoke-virtual {v3}, Lad/w0;->a()V

    goto :goto_23

    :cond_40
    if-nez v7, :cond_45

    cmpg-double v3, v9, v34

    if-gtz v3, :cond_45

    iget-object v3, v0, Lad/j0;->i0:Lad/w0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v12, v45

    move-object/from16 v11, v47

    invoke-static {v12, v11}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v3, Lad/w0;->b:Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v14, 0x1

    goto :goto_27

    :cond_41
    iput-object v12, v3, Lad/w0;->b:Ljava/lang/String;

    const-wide/high16 v11, 0x4004000000000000L    # 2.5

    mul-double/2addr v11, v9

    add-double v11, v11, v43

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    cmpl-double v4, v5, v11

    if-ltz v4, :cond_42

    iget v4, v3, Lad/w0;->a:I

    const/4 v14, 0x1

    add-int/2addr v4, v14

    iput v4, v3, Lad/w0;->a:I

    const/4 v7, 0x0

    goto :goto_26

    :cond_42
    const/4 v14, 0x1

    add-double v11, v9, v43

    cmpg-double v4, v5, v11

    const/4 v7, 0x0

    if-gtz v4, :cond_43

    iput v7, v3, Lad/w0;->a:I

    :cond_43
    :goto_26
    iget v4, v3, Lad/w0;->a:I

    const/4 v11, 0x3

    if-ge v4, v11, :cond_44

    move v3, v7

    goto :goto_27

    :cond_44
    iput v7, v3, Lad/w0;->a:I

    move v3, v14

    :goto_27
    if-eqz v3, :cond_46

    iput v7, v0, Lad/j0;->h0:I

    iget-object v3, v0, Lad/j0;->L0:Lad/f;

    invoke-virtual {v3}, Lad/f;->b()Z

    move-result v3

    if-nez v3, :cond_4f

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v3

    iget-boolean v3, v3, Lua/nav/Tuning;->H:Z

    if-eqz v3, :cond_4f

    iget-object v3, v0, Lad/j0;->L0:Lad/f;

    invoke-virtual {v3, v1, v2}, Lad/f;->a(J)Z

    move-result v3

    if-eqz v3, :cond_4f

    double-to-int v3, v5

    double-to-int v4, v9

    const-string v5, " rule=fast"

    invoke-static {v8, v3, v13, v4, v5}, Lr0/i;->h(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcd/d;->v1:Lcd/c;

    const/4 v7, 0x0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lad/j0;->A(Lad/j0;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Lt8/j;I)V

    goto/16 :goto_2c

    :cond_45
    const/4 v14, 0x1

    :cond_46
    iget-object v3, v0, Lad/j0;->T:Lad/x1;

    if-eqz v3, :cond_48

    iget-object v4, v3, Lad/x1;->a:Lua/nav/routing/Route;

    invoke-virtual {v4}, Lua/nav/routing/Route;->c()D

    move-result-wide v11

    iget-wide v3, v3, Lad/x1;->b:D

    sub-double/2addr v11, v3

    cmpg-double v3, v11, v30

    if-gez v3, :cond_47

    move v7, v14

    goto :goto_28

    :cond_47
    const/4 v7, 0x0

    :goto_28
    if-ne v7, v14, :cond_48

    move v7, v14

    goto :goto_29

    :cond_48
    const/4 v7, 0x0

    :goto_29
    if-eqz v7, :cond_49

    const-wide/high16 v3, 0x4079000000000000L    # 400.0

    goto :goto_2a

    :cond_49
    const-wide v3, 0x406f400000000000L    # 250.0

    :goto_2a
    cmpl-double v7, v9, v34

    if-gtz v7, :cond_4a

    add-double v11, v9, v22

    cmpg-double v7, v5, v11

    if-ltz v7, :cond_4a

    cmpg-double v3, v5, v3

    if-gez v3, :cond_4b

    :cond_4a
    const/4 v7, 0x0

    goto :goto_2b

    :cond_4b
    invoke-virtual {v0, v5, v6, v1, v2}, Lad/j0;->u(DJ)Z

    move-result v3

    if-eqz v3, :cond_4c

    const/4 v7, 0x0

    iput v7, v0, Lad/j0;->h0:I

    goto :goto_2c

    :cond_4c
    const/4 v7, 0x0

    iget v3, v0, Lad/j0;->h0:I

    add-int/2addr v3, v14

    iput v3, v0, Lad/j0;->h0:I

    const/4 v11, 0x3

    if-ge v3, v11, :cond_4d

    goto :goto_2c

    :cond_4d
    iput v7, v0, Lad/j0;->h0:I

    iget-object v3, v0, Lad/j0;->L0:Lad/f;

    invoke-virtual {v3}, Lad/f;->b()Z

    move-result v3

    if-nez v3, :cond_4f

    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v3

    iget-boolean v3, v3, Lua/nav/Tuning;->H:Z

    if-eqz v3, :cond_4f

    iget-object v3, v0, Lad/j0;->L0:Lad/f;

    invoke-virtual {v3, v1, v2}, Lad/f;->a(J)Z

    move-result v3

    if-nez v3, :cond_4e

    goto :goto_2c

    :cond_4e
    double-to-int v3, v5

    double-to-int v4, v9

    invoke-static {v8, v3, v13, v4}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcd/d;->v1:Lcd/c;

    const/4 v7, 0x0

    new-array v5, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v7, 0x38

    const/4 v5, 0x0

    invoke-static/range {v0 .. v7}, Lad/j0;->A(Lad/j0;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;Lt8/j;I)V

    goto :goto_2c

    :goto_2b
    iput v7, v0, Lad/j0;->h0:I

    :cond_4f
    :goto_2c
    iget-object v3, v0, Lad/j0;->f0:Lad/m1;

    move-object/from16 v15, v46

    iget-wide v4, v15, Ldd/l0;->c:J

    move-object/from16 v11, v29

    iget-wide v7, v11, Lad/w1;->a:D

    iget-object v6, v0, Lad/j0;->a:Ldd/k0;

    iget-object v6, v6, Ldd/k0;->b:Ldd/t0;

    iget-object v6, v6, Ldd/t0;->a:Ldd/r0;

    move-object/from16 v38, v15

    iget-wide v14, v6, Ldd/r0;->c:D

    div-double v14, v14, v24

    iget-object v12, v3, Lad/m1;->b:Ljava/util/ArrayList;

    long-to-double v4, v4

    div-double v5, v4, v30

    iget-object v4, v3, Lad/m1;->a:Lad/k1;

    cmpl-double v16, v9, v34

    if-lez v16, :cond_51

    new-instance v3, Lad/l1;

    if-eqz v4, :cond_50

    move-wide/from16 v16, v5

    iget-wide v5, v4, Lad/k1;->b:D

    sub-double/2addr v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    iget-wide v7, v4, Lad/k1;->a:D

    sub-double v7, v16, v7

    move-wide/from16 v18, v5

    const-wide/16 v5, 0x0

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    mul-double/2addr v5, v14

    iget-wide v7, v4, Lad/k1;->c:D

    add-double/2addr v5, v7

    add-double/2addr v5, v9

    cmpg-double v4, v18, v5

    if-gtz v4, :cond_50

    const/4 v7, 0x1

    :goto_2d
    const/4 v5, 0x0

    goto :goto_2e

    :cond_50
    const/4 v7, 0x0

    goto :goto_2d

    :goto_2e
    invoke-direct {v3, v7, v5}, Lad/l1;-><init>(ZZ)V

    :goto_2f
    const/4 v14, 0x1

    goto/16 :goto_37

    :cond_51
    move-wide/from16 v16, v5

    const/4 v5, 0x0

    if-nez v4, :cond_52

    new-instance v4, Lad/k1;

    move v15, v5

    move-wide/from16 v5, v16

    invoke-direct/range {v4 .. v10}, Lad/k1;-><init>(DDD)V

    iput-object v4, v3, Lad/m1;->a:Lad/k1;

    new-instance v3, Lad/l1;

    const/4 v12, 0x1

    invoke-direct {v3, v12, v15}, Lad/l1;-><init>(ZZ)V

    :goto_30
    move v14, v12

    goto/16 :goto_37

    :cond_52
    move-wide/from16 v5, v16

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_5a

    invoke-static {v12}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v16

    move-wide/from16 v17, v5

    move-object/from16 v5, v16

    check-cast v5, Lad/k1;

    move-wide/from16 v22, v7

    iget-wide v6, v5, Lad/k1;->b:D

    sub-double v7, v22, v6

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    move-wide/from16 v24, v6

    iget-wide v6, v5, Lad/k1;->a:D

    sub-double v6, v17, v6

    move-wide/from16 v27, v9

    const-wide/16 v8, 0x0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    mul-double/2addr v6, v14

    iget-wide v8, v5, Lad/k1;->c:D

    add-double/2addr v6, v8

    add-double v6, v6, v27

    cmpg-double v5, v24, v6

    if-gtz v5, :cond_59

    new-instance v4, Lad/k1;

    move-wide/from16 v5, v17

    move-wide/from16 v7, v22

    move-wide/from16 v9, v27

    invoke-direct/range {v4 .. v10}, Lad/k1;-><init>(DDD)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/k1;

    iget-wide v14, v4, Lad/k1;->a:D

    invoke-static {v12}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/k1;

    move-wide/from16 v16, v5

    iget-wide v4, v4, Lad/k1;->a:D

    sub-double/2addr v14, v4

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_58

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    cmpl-double v4, v14, v4

    if-ltz v4, :cond_58

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    const-wide/16 v14, 0x0

    :goto_31
    if-ge v6, v5, :cond_53

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    add-int/lit8 v6, v6, 0x1

    move/from16 v19, v5

    move-object/from16 v5, v18

    check-cast v5, Lad/k1;

    move/from16 v18, v6

    iget-wide v5, v5, Lad/k1;->a:D

    add-double/2addr v14, v5

    move/from16 v6, v18

    move/from16 v5, v19

    goto :goto_31

    :cond_53
    int-to-double v4, v4

    div-double/2addr v14, v4

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-wide/from16 v18, v4

    const/4 v4, 0x0

    const-wide/16 v22, 0x0

    :goto_32
    if-ge v4, v6, :cond_54

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lad/k1;

    move/from16 v24, v4

    iget-wide v4, v5, Lad/k1;->b:D

    add-double v22, v22, v4

    move/from16 v4, v24

    goto :goto_32

    :cond_54
    div-double v42, v22, v18

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v18, 0x0

    :goto_33
    if-ge v5, v4, :cond_55

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lad/k1;

    move/from16 v22, v4

    move/from16 v23, v5

    iget-wide v4, v6, Lad/k1;->a:D

    sub-double/2addr v4, v14

    mul-double/2addr v4, v4

    add-double v18, v4, v18

    move/from16 v4, v22

    move/from16 v5, v23

    goto :goto_33

    :cond_55
    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    cmpg-double v4, v18, v4

    if-gez v4, :cond_56

    const-wide/16 v20, 0x0

    goto :goto_35

    :cond_56
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const-wide/16 v46, 0x0

    :goto_34
    if-ge v5, v4, :cond_57

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lad/k1;

    move/from16 v22, v4

    move/from16 v20, v5

    iget-wide v4, v6, Lad/k1;->a:D

    sub-double v44, v4, v14

    iget-wide v4, v6, Lad/k1;->b:D

    move-wide/from16 v40, v4

    invoke-static/range {v40 .. v47}, Lm/a;->b(DDDD)D

    move-result-wide v46

    move/from16 v5, v20

    move/from16 v4, v22

    goto :goto_34

    :cond_57
    div-double v4, v46, v18

    move-wide/from16 v20, v4

    :goto_35
    const-wide/high16 v4, -0x3fe8000000000000L    # -6.0

    cmpl-double v4, v20, v4

    if-ltz v4, :cond_58

    new-instance v4, Lad/k1;

    move-wide/from16 v5, v16

    invoke-direct/range {v4 .. v10}, Lad/k1;-><init>(DDD)V

    iput-object v4, v3, Lad/m1;->a:Lad/k1;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Lad/l1;

    const/4 v12, 0x1

    invoke-direct {v3, v12, v12}, Lad/l1;-><init>(ZZ)V

    goto/16 :goto_30

    :cond_58
    new-instance v3, Lad/l1;

    const/4 v7, 0x0

    invoke-direct {v3, v7, v7}, Lad/l1;-><init>(ZZ)V

    goto/16 :goto_2f

    :cond_59
    move-wide/from16 v7, v22

    move-wide/from16 v9, v27

    move-wide/from16 v16, v17

    goto :goto_36

    :cond_5a
    move-wide/from16 v16, v5

    :goto_36
    iget-wide v5, v4, Lad/k1;->b:D

    sub-double v5, v7, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v5

    move-wide/from16 v18, v5

    iget-wide v5, v4, Lad/k1;->a:D

    sub-double v5, v16, v5

    move-wide/from16 v22, v7

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    mul-double/2addr v5, v14

    iget-wide v7, v4, Lad/k1;->c:D

    add-double/2addr v5, v7

    add-double/2addr v5, v9

    cmpg-double v4, v18, v5

    if-gtz v4, :cond_5b

    new-instance v4, Lad/k1;

    move-wide/from16 v5, v16

    move-wide/from16 v7, v22

    invoke-direct/range {v4 .. v10}, Lad/k1;-><init>(DDD)V

    iput-object v4, v3, Lad/m1;->a:Lad/k1;

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    new-instance v3, Lad/l1;

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-direct {v3, v14, v15}, Lad/l1;-><init>(ZZ)V

    goto :goto_37

    :cond_5b
    move-wide/from16 v5, v16

    move-wide/from16 v7, v22

    const/4 v14, 0x1

    const/4 v15, 0x0

    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    new-instance v4, Lad/k1;

    invoke-direct/range {v4 .. v10}, Lad/k1;-><init>(DDD)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lad/l1;

    invoke-direct {v3, v15, v15}, Lad/l1;-><init>(ZZ)V

    :goto_37
    iget-boolean v4, v3, Lad/l1;->a:Z

    const-string v5, " s_marker="

    if-nez v4, :cond_5c

    iget-wide v3, v0, Lad/j0;->g0:J

    sub-long v3, v1, v3

    cmp-long v3, v3, v32

    if-ltz v3, :cond_63

    iput-wide v1, v0, Lad/j0;->g0:J

    iget-object v1, v0, Lad/j0;->a:Ldd/k0;

    iget-wide v2, v11, Lad/w1;->a:D

    double-to-int v2, v2

    move-object/from16 v4, p1

    iget-wide v3, v4, Lad/x1;->b:D

    double-to-int v3, v3

    iget-object v0, v0, Lad/j0;->f0:Lad/m1;

    iget-object v0, v0, Lad/m1;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    double-to-int v4, v9

    const-string v6, "net_reject s_net="

    const-string v7, " cand="

    invoke-static {v6, v2, v5, v3, v7}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldd/k0;->n(Ljava/lang/String;)V

    return-void

    :cond_5c
    move-object/from16 v4, p1

    iget-boolean v1, v3, Lad/l1;->b:Z

    if-eqz v1, :cond_5d

    iget-object v1, v0, Lad/j0;->S:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lad/j0;->d0:Lad/f1;

    iget-object v1, v1, Lad/f1;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lad/j0;->a:Ldd/k0;

    iget-wide v2, v11, Lad/w1;->a:D

    double-to-int v2, v2

    iget-wide v3, v4, Lad/x1;->b:D

    double-to-int v3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "net_reanchor s_net="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_5d
    iget-object v1, v0, Lad/j0;->S:Ljava/util/ArrayList;

    new-instance v4, Lad/f0;

    move-object/from16 v15, v38

    iget-wide v2, v15, Ldd/l0;->c:J

    iget-wide v5, v11, Lad/w1;->a:D

    move-wide v7, v9

    iget-wide v9, v11, Lad/w1;->b:D

    move-wide/from16 v51, v2

    move-object v2, v11

    move-wide/from16 v11, v51

    move/from16 v3, v26

    invoke-direct/range {v4 .. v12}, Lad/f0;-><init>(DDDJ)V

    move-wide v9, v7

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_38
    iget-object v1, v0, Lad/j0;->S:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_5e

    iget-object v1, v0, Lad/j0;->S:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_38

    :cond_5e
    const/4 v7, 0x0

    iget-wide v3, v15, Ldd/l0;->d:D

    iget-wide v5, v0, Lad/j0;->s0:D

    cmpg-double v1, v3, v5

    if-nez v1, :cond_5f

    move v1, v14

    goto :goto_39

    :cond_5f
    move v1, v7

    :goto_39
    if-eqz v1, :cond_61

    iget-wide v5, v15, Ldd/l0;->e:D

    iget-wide v11, v0, Lad/j0;->t0:D

    cmpg-double v1, v5, v11

    if-nez v1, :cond_60

    move v1, v14

    goto :goto_3a

    :cond_60
    move v1, v7

    :goto_3a
    if-eqz v1, :cond_61

    goto :goto_3b

    :cond_61
    move v14, v7

    :goto_3b
    iput-wide v3, v0, Lad/j0;->s0:D

    iget-wide v3, v15, Ldd/l0;->e:D

    iput-wide v3, v0, Lad/j0;->t0:D

    if-nez v14, :cond_62

    iget-wide v3, v2, Lad/w1;->b:D

    const-wide/high16 v5, 0x405e000000000000L    # 120.0

    cmpg-double v1, v3, v5

    if-gtz v1, :cond_62

    iget-object v4, v0, Lad/j0;->d0:Lad/f1;

    move-wide v7, v9

    iget-wide v9, v15, Ldd/l0;->c:J

    iget-wide v5, v2, Lad/w1;->a:D

    invoke-virtual/range {v4 .. v10}, Lad/f1;->a(DDJ)V

    move-wide v9, v7

    :cond_62
    if-nez v14, :cond_63

    iget-object v0, v0, Lad/j0;->n1:Ljava/util/ArrayList;

    new-instance v4, Lad/u0;

    iget-wide v5, v15, Ldd/l0;->c:J

    iget-wide v7, v2, Lad/w1;->a:D

    invoke-direct/range {v4 .. v10}, Lad/u0;-><init>(JDD)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_63
    :goto_3c
    return-void
.end method

.method public final r()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lad/j0;->j:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/a0;

    iget-object v2, v0, Lad/j0;->u0:Ljava/lang/Double;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "-"

    :cond_1
    iget-wide v3, v1, Lad/a0;->c:D

    double-to-int v3, v3

    iget-object v4, v1, Lad/a0;->q:Ljava/lang/String;

    iget v5, v1, Lad/a0;->l:F

    float-to-int v5, v5

    iget v6, v1, Lad/a0;->v:I

    iget-wide v7, v1, Lad/a0;->w:D

    double-to-int v7, v7

    iget-object v8, v0, Lad/j0;->q:Lad/q1;

    const-string v9, " "

    const-string v10, ""

    const-string v11, "/"

    if-eqz v8, :cond_3

    iget-wide v12, v8, Lad/q1;->c:D

    const/16 v14, 0x64

    int-to-double v14, v14

    mul-double/2addr v12, v14

    double-to-int v12, v12

    move-wide/from16 v16, v14

    iget-wide v13, v8, Lad/q1;->d:D

    double-to-int v13, v13

    iget-wide v14, v8, Lad/q1;->e:D

    mul-double v14, v14, v16

    double-to-int v14, v14

    iget-object v8, v8, Lad/q1;->f:Lua/nav/routing/GeoPoint;

    if-eqz v8, :cond_2

    const-string v8, "/alt"

    goto :goto_0

    :cond_2
    move-object v8, v10

    :goto_0
    const-string v15, "pf="

    invoke-static {v15, v12, v11, v13, v11}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    :cond_3
    move-object v8, v10

    :cond_4
    iget v12, v1, Lad/a0;->F:I

    if-eqz v12, :cond_5

    const-string v10, "man="

    invoke-static {v12, v10, v9}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_5
    iget-boolean v1, v1, Lad/a0;->y:Z

    iget-object v12, v0, Lad/j0;->N:Lad/l;

    iget-wide v13, v12, Lad/l;->i:D

    const/4 v15, 0x3

    invoke-static {v13, v14, v15}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v13

    iget-wide v13, v12, Lad/l;->j:D

    invoke-static {v13, v14, v15}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v13

    move-object v14, v11

    iget-wide v11, v12, Lad/l;->k:D

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    move-result v17

    if-eqz v17, :cond_6

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    :cond_6
    invoke-static {v11, v12, v15}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "guide s="

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " src="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " v="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " blind="

    const-string v4, " unc="

    invoke-static {v12, v5, v3, v6, v4}, Lm/a;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "netv="

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " rec="

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vib="

    move-object/from16 v2, v16

    invoke-static {v12, v1, v2, v14, v13}, Lm/a;->v(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lad/j0;->a:Ldd/k0;

    invoke-virtual {v0, v1}, Ldd/k0;->n(Ljava/lang/String;)V

    return-void
.end method

.method public final s(Lad/x1;JD)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v0, Lad/j0;->m:Lsc/i;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lsc/i;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lad/o0;

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-wide/16 v6, 0x0

    if-eqz v4, :cond_1

    iget-wide v8, v4, Lad/o0;->a:D

    iget-object v4, v4, Lad/o0;->c:Ljava/lang/String;

    const-string v10, "GPS"

    invoke-static {v4, v10}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    cmpg-double v4, p4, v10

    if-ltz v4, :cond_1

    iget-wide v10, v0, Lad/j0;->y0:J

    sub-long v10, v2, v10

    const-wide/16 v12, 0x7530

    cmp-long v4, v10, v12

    if-ltz v4, :cond_1

    iget-wide v10, v0, Lad/j0;->Y:J

    cmp-long v4, v10, v6

    if-eqz v4, :cond_1

    sub-long v10, v2, v10

    const-wide/32 v12, 0x493e0

    cmp-long v4, v10, v12

    if-lez v4, :cond_2

    :cond_1
    move-wide v1, v6

    goto/16 :goto_d

    :cond_2
    iget-wide v10, v1, Lad/x1;->b:D

    iget-object v4, v1, Lad/x1;->a:Lua/nav/routing/Route;

    invoke-virtual {v1, v10, v11}, Lad/x1;->d(D)Lad/v1;

    move-result-object v10

    iget v10, v10, Lad/v1;->b:F

    float-to-double v10, v10

    sub-double v12, v10, v8

    const-wide v14, 0x4076800000000000L    # 360.0

    rem-double/2addr v12, v14

    const-wide v16, 0x4080e00000000000L    # 540.0

    add-double v12, v12, v16

    rem-double/2addr v12, v14

    const-wide v18, 0x4066800000000000L    # 180.0

    sub-double v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide/high16 v20, 0x4049000000000000L    # 50.0

    cmpg-double v12, v12, v20

    if-gtz v12, :cond_3

    iput-wide v6, v0, Lad/j0;->x0:J

    return-void

    :cond_3
    iget-wide v12, v0, Lad/j0;->x0:J

    cmp-long v22, v12, v6

    if-nez v22, :cond_4

    iput-wide v2, v0, Lad/j0;->x0:J

    return-void

    :cond_4
    sub-long v12, v2, v12

    const-wide/16 v22, 0x1770

    cmp-long v12, v12, v22

    if-gez v12, :cond_5

    goto/16 :goto_c

    :cond_5
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    iget-object v5, v0, Lad/j0;->R:Ljava/util/HashSet;

    invoke-static {v5, v13}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v13

    invoke-virtual {v1, v13}, Lad/x1;->h(I)D

    move-result-wide v23

    const-wide/high16 v25, 0x4034000000000000L    # 20.0

    add-double v23, v23, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    const/16 v23, 0x0

    move-wide/from16 p4, v14

    move/from16 v14, v23

    :goto_2
    if-ge v14, v13, :cond_8

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v23, v15

    check-cast v23, Ljava/lang/Number;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v23

    iget-wide v6, v1, Lad/x1;->b:D

    cmpg-double v6, v23, v6

    if-gtz v6, :cond_7

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-wide/16 v6, 0x0

    goto :goto_2

    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_9

    const/4 v5, 0x0

    goto :goto_4

    :cond_9
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    goto :goto_3

    :cond_a
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    :goto_4
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    goto :goto_5

    :cond_b
    const-wide/16 v12, 0x0

    :goto_5
    iget-object v5, v0, Lad/j0;->S:Ljava/util/ArrayList;

    invoke-static {v5}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lad/f0;

    if-eqz v5, :cond_c

    iget-wide v14, v5, Lad/f0;->a:J

    sub-long v14, v2, v14

    const-wide/16 v23, 0x3a98

    cmp-long v14, v14, v23

    if-gtz v14, :cond_c

    iget-wide v14, v5, Lad/f0;->c:D

    const-wide/high16 v23, 0x404e000000000000L    # 60.0

    cmpg-double v14, v14, v23

    if-gtz v14, :cond_c

    goto :goto_6

    :cond_c
    const/4 v5, 0x0

    :goto_6
    iget-wide v14, v1, Lad/x1;->b:D

    const-wide v23, 0x4062c00000000000L    # 150.0

    sub-double v14, v14, v23

    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    iget-wide v14, v1, Lad/x1;->b:D

    if-eqz v5, :cond_d

    const-wide v23, 0x4072c00000000000L    # 300.0

    :cond_d
    add-double v14, v14, v23

    invoke-virtual {v4}, Lua/nav/routing/Route;->c()D

    move-result-wide v6

    move-wide/from16 v27, v12

    iget-wide v12, v0, Lad/j0;->A1:D

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    iget-wide v12, v1, Lad/x1;->b:D

    if-eqz v5, :cond_e

    iget-wide v14, v5, Lad/f0;->b:D

    goto :goto_7

    :cond_e
    move-wide v14, v12

    :goto_7
    const-wide/16 v31, 0x0

    invoke-virtual {v4}, Lua/nav/routing/Route;->c()D

    move-result-wide v33

    move-wide/from16 v29, v12

    invoke-static/range {v29 .. v34}, Lg6/c1;->d(DDD)D

    move-result-wide v12

    invoke-virtual {v1, v12, v13}, Lad/x1;->d(D)Lad/v1;

    move-result-object v12

    iget v12, v12, Lad/v1;->b:F

    float-to-double v12, v12

    sub-double/2addr v12, v8

    rem-double v12, v12, p4

    add-double v12, v12, v16

    rem-double v12, v12, p4

    sub-double v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpg-double v12, v12, v20

    if-gtz v12, :cond_f

    const/16 v22, 0x0

    goto :goto_b

    :cond_f
    move-wide/from16 v12, v27

    const/16 v22, 0x0

    :goto_8
    cmpg-double v20, v12, v6

    if-gtz v20, :cond_14

    move-wide/from16 v27, v12

    :goto_9
    const-wide/high16 v20, 0x4044000000000000L    # 40.0

    add-double v20, v12, v20

    cmpg-double v20, v27, v20

    const-wide/high16 v33, 0x4024000000000000L    # 10.0

    if-gtz v20, :cond_11

    const-wide/16 v29, 0x0

    invoke-virtual {v4}, Lua/nav/routing/Route;->c()D

    move-result-wide v31

    move-wide/from16 v20, v6

    invoke-static/range {v27 .. v32}, Lg6/c1;->d(DDD)D

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lad/x1;->d(D)Lad/v1;

    move-result-object v6

    iget v6, v6, Lad/v1;->b:F

    float-to-double v6, v6

    sub-double/2addr v6, v8

    rem-double v6, v6, p4

    add-double v6, v6, v16

    rem-double v6, v6, p4

    sub-double v6, v6, v18

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v29, 0x4039000000000000L    # 25.0

    cmpl-double v6, v6, v29

    if-lez v6, :cond_10

    goto :goto_a

    :cond_10
    add-double v27, v27, v33

    move-wide/from16 v6, v20

    goto :goto_9

    :cond_11
    move-wide/from16 v20, v6

    if-eqz v22, :cond_12

    sub-double v6, v12, v14

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v27

    sub-double v27, v27, v14

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->abs(D)D

    move-result-wide v27

    cmpg-double v6, v6, v27

    if-gez v6, :cond_13

    :cond_12
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    move-object/from16 v22, v6

    :cond_13
    :goto_a
    add-double v12, v12, v33

    move-wide/from16 v6, v20

    goto :goto_8

    :cond_14
    :goto_b
    if-eqz v22, :cond_16

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    if-eqz v5, :cond_15

    iget-wide v12, v5, Lad/f0;->b:D

    sub-double v12, v6, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    iget-wide v4, v5, Lad/f0;->c:D

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    add-double/2addr v4, v14

    cmpl-double v4, v12, v4

    if-lez v4, :cond_15

    goto :goto_c

    :cond_15
    iget-wide v4, v1, Lad/x1;->b:D

    double-to-int v4, v4

    double-to-int v5, v6

    double-to-int v8, v8

    double-to-int v9, v10

    const-string v10, " to_s="

    const-string v11, " heading="

    const-string v12, "compass_snap from_s="

    invoke-static {v12, v4, v10, v5, v11}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " route="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lad/j0;->a:Ldd/k0;

    invoke-virtual {v5, v4}, Ldd/k0;->n(Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7}, Lad/x1;->g(D)V

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lad/j0;->z0:D

    iput-wide v2, v0, Lad/j0;->y0:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lad/j0;->x0:J

    :cond_16
    :goto_c
    return-void

    :goto_d
    iput-wide v1, v0, Lad/j0;->x0:J

    return-void
.end method

.method public final t(Lad/x1;J)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    new-instance v4, Lad/c;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v2, v3}, Lad/c;-><init>(IJ)V

    iget-object v5, v0, Lad/j0;->n1:Ljava/util/ArrayList;

    invoke-static {v5, v4}, Lu8/m;->r0(Ljava/util/List;Li9/c;)V

    iget-wide v6, v0, Lad/j0;->m1:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x7530

    cmp-long v4, v6, v8

    if-ltz v4, :cond_13

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_c

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    iget-object v6, v0, Lad/j0;->R:Ljava/util/HashSet;

    const/16 v7, 0xa

    invoke-static {v6, v7}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-virtual {v1, v8}, Lad/x1;->h(I)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-wide v8, v1, Lad/x1;->b:D

    iget-wide v10, v0, Lad/j0;->b0:D

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v12, :cond_3

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v14, v14, 0x1

    const-wide v17, 0x4062c00000000000L    # 150.0

    move-object v15, v13

    check-cast v15, Lad/u0;

    move-wide/from16 v19, v8

    iget-wide v7, v15, Lad/u0;->a:J

    sub-long v7, v2, v7

    const-wide/16 v21, 0x0

    cmp-long v9, v21, v7

    if-gtz v9, :cond_2

    const-wide/16 v21, 0x7531

    cmp-long v7, v7, v21

    if-gez v7, :cond_2

    iget-wide v7, v15, Lad/u0;->c:D

    cmpg-double v7, v7, v17

    if-gtz v7, :cond_2

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    move-wide/from16 v8, v19

    const/16 v7, 0xa

    goto :goto_1

    :cond_3
    move-wide/from16 v19, v8

    const-wide v17, 0x4062c00000000000L    # 150.0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x3

    if-ge v7, v8, :cond_4

    const/4 v4, 0x0

    const/4 v9, 0x0

    const-wide/16 v23, 0x0

    goto/16 :goto_9

    :cond_4
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v6, v8}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v14

    invoke-direct {v7, v14}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v8, :cond_5

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v14, v14, 0x1

    check-cast v15, Lad/u0;

    move-wide/from16 v21, v10

    const/4 v11, 0x0

    iget-wide v9, v15, Lad/u0;->b:D

    move-object v13, v11

    const-wide/16 v23, 0x0

    iget-wide v11, v15, Lad/u0;->a:J

    sub-long v11, v2, v11

    long-to-double v11, v11

    mul-double v11, v11, v21

    const-wide v25, 0x408f400000000000L    # 1000.0

    div-double v11, v11, v25

    add-double/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v10, v21

    goto :goto_2

    :cond_5
    const/4 v13, 0x0

    const-wide/16 v23, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v9, 0x0

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    add-int/lit8 v10, v9, 0x1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lad/u0;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    sub-double v14, v19, v14

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    iget-wide v11, v11, Lad/u0;->c:D

    mul-double v11, v11, v21

    move-object v9, v13

    move-wide/from16 v21, v14

    const-wide/high16 v13, 0x4069000000000000L    # 200.0

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    cmpg-double v11, v21, v11

    if-gez v11, :cond_6

    :goto_4
    move-object v4, v9

    goto/16 :goto_9

    :cond_6
    move-object v13, v9

    move v9, v10

    goto :goto_3

    :cond_7
    move-object v9, v13

    new-instance v8, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v6, v10}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v8, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v10, :cond_8

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lad/u0;

    iget-wide v12, v12, Lad/u0;->c:D

    mul-double/2addr v12, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_8
    invoke-static {v7}, Lg5/f;->z(Ljava/util/Collection;)Lo9/d;

    move-result-object v6

    invoke-virtual {v6}, Lo9/b;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-wide/from16 v10, v23

    :goto_6
    move-object v12, v6

    check-cast v12, Lo9/c;

    iget-boolean v13, v12, Lo9/c;->n:Z

    if-eqz v13, :cond_9

    invoke-virtual {v12}, Lo9/c;->nextInt()I

    move-result v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v15

    mul-double/2addr v15, v13

    add-double/2addr v10, v15

    goto :goto_6

    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-wide/from16 v12, v23

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v6, :cond_a

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v7, v7, 0x1

    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    add-double/2addr v12, v14

    goto :goto_7

    :cond_a
    div-double/2addr v10, v12

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :cond_c
    if-ge v7, v6, :cond_d

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v12

    cmpl-double v8, v12, v10

    if-lez v8, :cond_c

    cmpg-double v8, v12, v19

    if-gtz v8, :cond_c

    goto/16 :goto_4

    :cond_d
    :goto_8
    const-wide v6, 0x4072c00000000000L    # 300.0

    sub-double v6, v19, v6

    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    :goto_9
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    iput-wide v2, v0, Lad/j0;->m1:J

    iget-wide v2, v1, Lad/x1;->b:D

    double-to-int v2, v2

    double-to-int v3, v6

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    const/4 v13, 0x0

    goto :goto_b

    :cond_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v8, 0x0

    const/4 v13, 0x0

    :cond_f
    :goto_a
    if-ge v8, v4, :cond_11

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v8, v8, 0x1

    check-cast v10, Lad/u0;

    iget-wide v10, v10, Lad/u0;->c:D

    cmpg-double v10, v10, v17

    if-gtz v10, :cond_f

    add-int/lit8 v13, v13, 0x1

    if-ltz v13, :cond_10

    goto :goto_a

    :cond_10
    invoke-static {}, Lg5/f;->O()V

    throw v9

    :cond_11
    :goto_b
    const-string v4, " to_s="

    const-string v5, " n="

    const-string v8, "net_back from_s="

    invoke-static {v8, v2, v4, v3, v5}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lad/j0;->a:Ldd/k0;

    invoke-virtual {v3, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    cmpg-double v2, v6, v23

    if-gez v2, :cond_12

    move-wide/from16 v6, v23

    :cond_12
    invoke-virtual {v1, v6, v7}, Lad/x1;->g(D)V

    move-wide/from16 v1, v23

    iput-wide v1, v0, Lad/j0;->z0:D

    :cond_13
    :goto_c
    return-void
.end method

.method public final u(DJ)Z
    .locals 4

    iget-wide v0, p0, Lad/j0;->b0:D

    const-wide/high16 v2, 0x4036000000000000L    # 22.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_3

    const-wide v0, 0x40b3880000000000L    # 5000.0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lad/j0;->N:Lad/l;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, p3, p4, v1, v2}, Lad/l;->b(JJ)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lad/j0;->V1:J

    sub-long v0, p3, v0

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iput-wide p3, p0, Lad/j0;->V1:J

    double-to-int p1, p1

    iget-wide p2, p0, Lad/j0;->b0:D

    const-wide v0, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr p2, v0

    double-to-int p2, p2

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "blind_deviation_net_veto_hwy off="

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " v="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lad/j0;->a:Ldd/k0;

    invoke-virtual {p0, p1}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final v(Lad/x1;)Lad/e0;
    .locals 12

    invoke-virtual {p0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v0

    iget-object v1, p1, Lad/x1;->a:Lua/nav/routing/Route;

    iget-object v2, v1, Lua/nav/routing/Route;->f:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_2

    iget-object v3, p0, Lad/j0;->R:Ljava/util/HashSet;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v1, Lua/nav/routing/Route;->f:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/nav/routing/Step;

    iget-object v4, v3, Lua/nav/routing/Step;->a:Ljava/lang/String;

    const-string v6, "depart"

    invoke-static {v4, v6}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v3, v3, Lua/nav/routing/Step;->a:Ljava/lang/String;

    const-string v4, "arrive"

    invoke-static {v3, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v5}, Lad/x1;->h(I)D

    move-result-wide v6

    iget-wide v3, p1, Lad/x1;->b:D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v8

    cmpg-double v3, v6, v3

    if-ltz v3, :cond_1

    invoke-virtual {p0, p1, v6, v7}, Lad/j0;->J(Lad/x1;D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget-wide v10, v0, Lua/nav/Tuning;->o:D

    cmpg-double v3, v3, v10

    if-ltz v3, :cond_1

    new-instance v4, Lad/e0;

    invoke-direct/range {v4 .. v9}, Lad/e0;-><init>(IDD)V

    return-object v4

    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final w(D)V
    .locals 5

    iget-object v0, p0, Lad/j0;->T:Lad/x1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lad/x1;->a(D)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    iput-wide v1, p0, Lad/j0;->u1:J

    iget-object v1, p0, Lad/j0;->N:Lad/l;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lad/l;->g:J

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lad/j0;->z0:D

    double-to-int p1, p1

    iget-wide v1, v0, Lad/x1;->b:D

    double-to-int p2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "nudge "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " s="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lad/j0;->a:Ldd/k0;

    invoke-virtual {p2, p1}, Ldd/k0;->n(Ljava/lang/String;)V

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    iput-wide p1, p0, Lad/j0;->A:D

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    invoke-virtual {p0, v0, p1, p2}, Lad/j0;->d(Lad/x1;D)V

    const-string p1, "NUDGE"

    iput-object p1, p0, Lad/j0;->v1:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lad/j0;->y(Ljava/lang/String;)V

    return-void
.end method

.method public final x(J)D
    .locals 7

    iget-wide v0, p0, Lad/j0;->H:D

    iget-object v2, p0, Lad/j0;->J:Lu8/k;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lt8/j;

    iget-object v5, v5, Lt8/j;->l:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    check-cast v4, Lt8/j;

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lu8/k;->e()Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lt8/j;

    :cond_2
    if-eqz v4, :cond_3

    iget-object p0, v4, Lt8/j;->m:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    goto :goto_1

    :cond_3
    iget-wide p0, p0, Lad/j0;->H:D

    :goto_1
    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public final y(Ljava/lang/String;)V
    .locals 75

    move-object/from16 v0, p0

    iget-object v1, v0, Lad/j0;->T:Lad/x1;

    if-nez v1, :cond_0

    goto/16 :goto_40

    :cond_0
    iget-object v2, v1, Lad/x1;->a:Lua/nav/routing/Route;

    iget-wide v3, v1, Lad/x1;->b:D

    invoke-virtual {v1, v3, v4}, Lad/x1;->d(D)Lad/v1;

    move-result-object v3

    iget-object v4, v1, Lad/x1;->a:Lua/nav/routing/Route;

    iget-object v4, v4, Lua/nav/routing/Route;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    const/4 v4, -0x1

    :goto_0
    move v15, v4

    goto :goto_2

    :cond_1
    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    move v8, v6

    :goto_1
    if-ge v8, v5, :cond_3

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lua/nav/routing/Step;

    iget-object v9, v9, Lua/nav/routing/Step;->a:Ljava/lang/String;

    const-string v10, "depart"

    invoke-static {v9, v10}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v1, v8}, Lad/x1;->h(I)D

    move-result-wide v9

    iget-wide v11, v1, Lad/x1;->b:D

    sub-double/2addr v9, v11

    const-wide/high16 v11, 0x4020000000000000L    # 8.0

    cmpl-double v9, v9, v11

    if-lez v9, :cond_2

    move v15, v8

    goto :goto_2

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    goto :goto_0

    :goto_2
    iget-object v4, v1, Lad/x1;->a:Lua/nav/routing/Route;

    iget-object v4, v4, Lua/nav/routing/Route;->f:Ljava/util/List;

    invoke-static {v15, v4}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Lua/nav/routing/Step;

    const-wide/16 v4, 0x0

    if-ltz v15, :cond_5

    invoke-virtual {v1, v15}, Lad/x1;->h(I)D

    move-result-wide v8

    iget-wide v10, v1, Lad/x1;->b:D

    sub-double/2addr v8, v10

    cmpg-double v10, v8, v4

    if-gez v10, :cond_4

    move-wide v8, v4

    :cond_4
    move-wide/from16 v16, v8

    goto :goto_3

    :cond_5
    move-wide/from16 v16, v4

    :goto_3
    add-int/lit8 v8, v15, 0x1

    iget-object v9, v1, Lad/x1;->a:Lua/nav/routing/Route;

    iget-object v9, v9, Lua/nav/routing/Route;->f:Ljava/util/List;

    invoke-static {v8, v9}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v18, v8

    check-cast v18, Lua/nav/routing/Step;

    iget-object v8, v1, Lad/x1;->a:Lua/nav/routing/Route;

    invoke-virtual {v8}, Lua/nav/routing/Route;->c()D

    move-result-wide v8

    iget-wide v10, v1, Lad/x1;->b:D

    sub-double/2addr v8, v10

    cmpg-double v10, v8, v4

    if-gez v10, :cond_6

    move-wide/from16 v19, v4

    goto :goto_4

    :cond_6
    move-wide/from16 v19, v8

    :goto_4
    iget-wide v8, v2, Lua/nav/routing/Route;->b:D

    cmpl-double v10, v8, v4

    if-lez v10, :cond_7

    iget-wide v10, v2, Lua/nav/routing/Route;->c:D

    mul-double v10, v10, v19

    div-double/2addr v10, v8

    iget-object v8, v0, Lad/j0;->i:Lad/o;

    iget-object v9, v2, Lua/nav/routing/Route;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lad/o;->b(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v8, v10

    move-wide/from16 v21, v8

    goto :goto_5

    :cond_7
    move-wide/from16 v21, v4

    :goto_5
    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v8

    iget-wide v8, v8, Lua/nav/Tuning;->C:D

    cmpg-double v8, v19, v8

    if-gez v8, :cond_8

    move/from16 v28, v7

    goto :goto_6

    :cond_8
    move/from16 v28, v6

    :goto_6
    iget-wide v8, v0, Lad/j0;->b0:D

    const-wide v10, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v8, v10

    double-to-float v8, v8

    iget-object v9, v0, Lad/j0;->e:Lwc/d;

    iget-object v12, v0, Lad/j0;->U:Ljava/lang/Object;

    move-wide/from16 v48, v4

    iget-wide v4, v1, Lad/x1;->b:D

    const-string v13, "cams"

    invoke-static {v12, v13}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    const-wide/high16 v50, 0x4039000000000000L    # 25.0

    const/16 v52, 0x0

    if-eqz v13, :cond_a

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-wide/from16 v23, v10

    move-object v10, v13

    check-cast v10, Lwc/e;

    iget-wide v10, v10, Lwc/e;->b:D

    sub-double v25, v4, v50

    cmpl-double v10, v10, v25

    if-ltz v10, :cond_9

    goto :goto_8

    :cond_9
    move-wide/from16 v10, v23

    goto :goto_7

    :cond_a
    move-wide/from16 v23, v10

    move-object/from16 v13, v52

    :goto_8
    check-cast v13, Lwc/e;

    if-eqz v13, :cond_c

    new-instance v29, Lwc/b;

    iget-object v10, v13, Lwc/e;->a:Lua/nav/cameras/SpeedCamera;

    iget-wide v11, v13, Lwc/e;->b:D

    sub-double/2addr v11, v4

    cmpg-double v4, v11, v48

    if-gez v4, :cond_b

    move-wide/from16 v31, v48

    goto :goto_9

    :cond_b
    move-wide/from16 v31, v11

    :goto_9
    iget-object v4, v9, Lwc/d;->c:Lp/a1;

    invoke-virtual {v4}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/Tuning;

    iget-wide v4, v4, Lua/nav/Tuning;->P:D

    double-to-float v4, v4

    move/from16 v34, v4

    move/from16 v33, v8

    move-object/from16 v30, v10

    invoke-direct/range {v29 .. v34}, Lwc/b;-><init>(Lua/nav/cameras/SpeedCamera;DFF)V

    move-object/from16 v4, v29

    goto :goto_a

    :cond_c
    move/from16 v33, v8

    move-object/from16 v4, v52

    :goto_a
    invoke-virtual {v9, v4}, Lwc/d;->c(Lwc/b;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v8, v0, Lad/j0;->Y:J

    const-wide/16 v53, 0x0

    cmp-long v10, v8, v53

    if-lez v10, :cond_d

    goto :goto_b

    :cond_d
    iget-wide v8, v0, Lad/j0;->Z:J

    :goto_b
    sub-long v8, v4, v8

    const-wide/16 v55, 0xbb8

    cmp-long v10, v8, v55

    if-gez v10, :cond_e

    move-wide/from16 v57, v53

    goto :goto_c

    :cond_e
    move-wide/from16 v57, v8

    :goto_c
    sget v8, Lb6/g;->l:I

    if-ltz v8, :cond_10

    sget-wide v11, Lb6/g;->m:J

    sub-long v11, v4, v11

    const-wide/16 v25, 0x9c4

    cmp-long v9, v11, v25

    if-lez v9, :cond_f

    goto :goto_d

    :cond_f
    int-to-double v8, v8

    div-double v8, v8, v23

    sget-wide v11, Lb6/g;->n:D

    mul-double/2addr v8, v11

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    goto :goto_e

    :cond_10
    :goto_d
    move-object/from16 v8, v52

    :goto_e
    if-nez v8, :cond_12

    iget-wide v8, v0, Lad/j0;->Y:J

    cmp-long v8, v8, v53

    if-lez v8, :cond_11

    if-gez v10, :cond_11

    iget-boolean v8, v0, Lad/j0;->a0:Z

    if-eqz v8, :cond_11

    goto :goto_f

    :cond_11
    move/from16 v24, v6

    goto :goto_10

    :cond_12
    :goto_f
    move/from16 v24, v7

    :goto_10
    iget-wide v8, v0, Lad/j0;->B0:J

    sub-long v8, v4, v8

    const-wide/32 v10, 0xea60

    cmp-long v8, v8, v10

    if-gez v8, :cond_13

    move/from16 v59, v7

    goto :goto_11

    :cond_13
    move/from16 v59, v6

    :goto_11
    const-wide/16 v8, 0x7530

    cmp-long v60, v57, v8

    if-lez v60, :cond_14

    move v8, v7

    goto :goto_12

    :cond_14
    move v8, v6

    :goto_12
    iget-boolean v9, v0, Lad/j0;->C0:Z

    const/4 v12, 0x6

    const-wide/32 v61, 0x1d4c0

    if-eq v8, v9, :cond_16

    iput-boolean v8, v0, Lad/j0;->C0:Z

    iget-object v9, v0, Lad/j0;->a:Ldd/k0;

    new-instance v13, Ljava/lang/StringBuilder;

    move-wide/from16 v25, v10

    const-string v10, "stale="

    invoke-direct {v13, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ldd/k0;->n(Ljava/lang/String;)V

    if-eqz v8, :cond_15

    iput-wide v4, v0, Lad/j0;->E0:J

    iget-wide v8, v0, Lad/j0;->F0:J

    sub-long v8, v4, v8

    cmp-long v8, v8, v61

    if-ltz v8, :cond_16

    iput-wide v4, v0, Lad/j0;->F0:J

    iget-object v8, v0, Lad/j0;->b:Lad/r2;

    sget-object v9, Lcd/d;->F1:Lcd/c;

    new-array v10, v6, [Ljava/lang/Object;

    invoke-virtual {v9, v10}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6, v12}, Lad/r2;->g(Lad/r2;Ljava/lang/String;ZI)V

    goto :goto_13

    :cond_15
    iget-wide v8, v0, Lad/j0;->E0:J

    cmp-long v10, v8, v53

    if-lez v10, :cond_16

    sub-long v8, v4, v8

    cmp-long v8, v8, v25

    if-ltz v8, :cond_16

    iget-object v8, v0, Lad/j0;->b:Lad/r2;

    sget-object v9, Lcd/d;->G1:Lcd/c;

    new-array v10, v6, [Ljava/lang/Object;

    invoke-virtual {v9, v10}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v6, v12}, Lad/r2;->g(Lad/r2;Ljava/lang/String;ZI)V

    :cond_16
    :goto_13
    iget-object v8, v0, Lad/j0;->m:Lsc/i;

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Lsc/i;->invoke()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lad/o0;

    goto :goto_14

    :cond_17
    move-object/from16 v8, v52

    :goto_14
    iget v9, v0, Lad/j0;->y1:I

    const-wide/high16 v63, 0x3ff0000000000000L    # 1.0

    if-ltz v9, :cond_1b

    iget-wide v9, v1, Lad/x1;->b:D

    iget-wide v12, v0, Lad/j0;->A1:D

    sub-double v12, v12, v63

    cmpl-double v12, v9, v12

    if-ltz v12, :cond_1b

    iget-object v12, v0, Lad/j0;->N:Lad/l;

    iget-wide v12, v12, Lad/l;->n:J

    cmp-long v12, v12, v53

    if-ltz v12, :cond_1b

    sub-double v9, v9, v63

    cmpg-double v12, v9, v48

    if-gez v12, :cond_18

    move-wide/from16 v9, v48

    :cond_18
    invoke-virtual {v1, v9, v10}, Lad/x1;->d(D)Lad/v1;

    move-result-object v9

    iget v9, v9, Lad/v1;->b:F

    float-to-double v9, v9

    iget-object v12, v0, Lad/j0;->N:Lad/l;

    iget-wide v12, v12, Lad/l;->m:D

    move-wide/from16 v25, v12

    iget-wide v11, v0, Lad/j0;->B1:D

    mul-double v29, v25, v11

    cmpl-double v13, v29, v48

    if-lez v13, :cond_19

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    move-result-wide v25

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v29

    cmpl-double v13, v25, v29

    if-lez v13, :cond_1a

    move-wide/from16 v25, v29

    goto :goto_15

    :cond_19
    move-wide/from16 v25, v48

    :cond_1a
    :goto_15
    invoke-static {v11, v12}, Ljava/lang/Math;->signum(D)D

    move-result-wide v11

    mul-double v11, v11, v25

    add-double/2addr v11, v9

    const-wide v9, 0x4076800000000000L    # 360.0

    rem-double/2addr v11, v9

    add-double/2addr v11, v9

    rem-double/2addr v11, v9

    goto :goto_16

    :cond_1b
    iget v9, v3, Lad/v1;->b:F

    float-to-double v11, v9

    :goto_16
    const-string v9, "GPS"

    const-wide v25, 0x400638e38e38e38eL    # 2.7777777777777777

    if-eqz v8, :cond_1d

    iget-wide v6, v8, Lad/o0;->a:D

    iget-object v10, v8, Lad/o0;->c:Ljava/lang/String;

    invoke-static {v10, v9}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    move-object v10, v14

    iget-wide v13, v8, Lad/o0;->b:D

    cmpg-double v13, v13, v25

    if-gez v13, :cond_1c

    goto :goto_17

    :cond_1c
    invoke-static {v11, v12, v6, v7}, Lad/n0;->d(DD)D

    move-result-wide v13

    const-wide v29, 0x4056800000000000L    # 90.0

    cmpl-double v13, v13, v29

    if-lez v13, :cond_1e

    goto :goto_18

    :cond_1d
    move-object v10, v14

    :cond_1e
    :goto_17
    move-wide v6, v11

    :goto_18
    if-eqz v8, :cond_20

    iget-object v13, v8, Lad/o0;->c:Ljava/lang/String;

    invoke-static {v13, v9}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f

    iget-wide v13, v8, Lad/o0;->b:D

    cmpl-double v13, v13, v25

    if-ltz v13, :cond_1f

    move-object v13, v8

    goto :goto_19

    :cond_1f
    move-object/from16 v13, v52

    :goto_19
    if-eqz v13, :cond_20

    iget-wide v13, v13, Lad/o0;->a:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    goto :goto_1a

    :cond_20
    move-object/from16 v13, v52

    :goto_1a
    iget-object v14, v0, Lad/j0;->f1:Lad/b;

    move-object/from16 v25, v10

    iget-object v10, v14, Lad/b;->a:Ljava/lang/Double;

    move-wide/from16 v26, v11

    move-object v12, v10

    const-wide/high16 v66, 0x403e000000000000L    # 30.0

    if-eqz v12, :cond_21

    if-eqz v13, :cond_21

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Lad/n0;->d(DD)D

    move-result-wide v10

    cmpg-double v10, v10, v66

    if-gtz v10, :cond_22

    :cond_21
    const-wide/16 v10, -0x1

    goto :goto_1c

    :cond_22
    invoke-virtual {v13}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Lad/n0;->d(DD)D

    move-result-wide v10

    move-wide/from16 v31, v10

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    move-object/from16 v35, v12

    move-object/from16 v34, v13

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lad/n0;->d(DD)D

    move-result-wide v10

    cmpg-double v10, v31, v10

    if-gez v10, :cond_23

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Lad/n0;->d(DD)D

    move-result-wide v10

    const-wide/high16 v12, 0x4049000000000000L    # 50.0

    cmpg-double v10, v10, v12

    if-gtz v10, :cond_23

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iput-object v10, v14, Lad/b;->a:Ljava/lang/Double;

    const-wide/16 v10, -0x1

    iput-wide v10, v14, Lad/b;->b:J

    :goto_1b
    move-wide v10, v6

    goto :goto_1d

    :cond_23
    iget-wide v10, v14, Lad/b;->b:J

    cmp-long v10, v10, v53

    if-gez v10, :cond_24

    iput-wide v4, v14, Lad/b;->b:J

    :cond_24
    iget-wide v10, v14, Lad/b;->b:J

    sub-long v10, v4, v10

    cmp-long v10, v10, v55

    if-ltz v10, :cond_25

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iput-object v10, v14, Lad/b;->a:Ljava/lang/Double;

    const-wide/16 v10, -0x1

    iput-wide v10, v14, Lad/b;->b:J

    goto :goto_1b

    :cond_25
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    goto :goto_1d

    :goto_1c
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    iput-object v12, v14, Lad/b;->a:Ljava/lang/Double;

    iput-wide v10, v14, Lad/b;->b:J

    goto :goto_1b

    :goto_1d
    cmpg-double v6, v6, v26

    if-nez v6, :cond_26

    const/4 v6, 0x1

    goto :goto_1e

    :cond_26
    const/4 v6, 0x0

    :goto_1e
    xor-int/lit8 v7, v6, 0x1

    iget-boolean v12, v0, Lad/j0;->e1:Z

    if-eq v7, v12, :cond_2a

    iput-boolean v7, v0, Lad/j0;->e1:Z

    iget-object v7, v0, Lad/j0;->a:Ldd/k0;

    if-nez v6, :cond_29

    iget v6, v3, Lad/v1;->b:F

    float-to-int v6, v6

    if-eqz v8, :cond_27

    iget-wide v12, v8, Lad/o0;->a:D

    double-to-int v12, v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    goto :goto_1f

    :cond_27
    move-object/from16 v12, v52

    :goto_1f
    if-eqz v8, :cond_28

    iget-object v8, v8, Lad/o0;->c:Ljava/lang/String;

    goto :goto_20

    :cond_28
    move-object/from16 v8, v52

    :goto_20
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "arrow_heading_override route="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " real="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " src="

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_21

    :cond_29
    const-string v6, "arrow_heading_override=false"

    :goto_21
    invoke-virtual {v7, v6}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_2a
    iget-object v6, v0, Lad/j0;->Y0:Lua/nav/routing/GeoPoint;

    if-eqz v6, :cond_2d

    iget-object v7, v0, Lad/j0;->j:Lx9/l0;

    invoke-virtual {v7}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lad/a0;

    iget-boolean v7, v7, Lad/a0;->n:Z

    if-nez v7, :cond_2b

    iget-object v7, v0, Lad/j0;->g1:Lua/nav/routing/GeoPoint;

    if-eqz v7, :cond_2d

    :cond_2b
    move-object/from16 v7, p1

    invoke-static {v7, v9}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    iget-wide v8, v0, Lad/j0;->d1:J

    sub-long v8, v4, v8

    cmp-long v8, v8, v55

    if-gez v8, :cond_2c

    goto :goto_23

    :cond_2c
    :goto_22
    move-object/from16 v6, v52

    goto :goto_23

    :cond_2d
    move-object/from16 v7, p1

    goto :goto_22

    :goto_23
    iget-object v8, v0, Lad/j0;->j:Lx9/l0;

    :goto_24
    invoke-virtual {v8}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v9

    move-object v12, v8

    move-object v8, v9

    check-cast v8, Lad/a0;

    iget-wide v13, v1, Lad/x1;->b:D

    const-wide v68, 0x408f400000000000L    # 1000.0

    move-object/from16 v70, v6

    if-nez v6, :cond_35

    iget-wide v6, v0, Lad/j0;->b0:D

    move-object/from16 v26, v8

    iget-object v8, v3, Lad/v1;->a:Lua/nav/routing/GeoPoint;

    move-object/from16 v27, v8

    iget-object v8, v1, Lad/x1;->a:Lua/nav/routing/Route;

    move-object/from16 v29, v12

    move-wide/from16 v30, v13

    iget-wide v12, v0, Lad/j0;->B:J

    sub-long v34, v4, v12

    const-wide/16 v36, 0x0

    const-wide/16 v38, 0x7d0

    invoke-static/range {v34 .. v39}, Lg6/c1;->h(JJJ)J

    move-result-wide v12

    long-to-double v12, v12

    div-double v12, v12, v68

    move-wide/from16 v34, v12

    iget-wide v12, v0, Lad/j0;->A:D

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v12

    if-nez v12, :cond_2f

    iget-object v12, v0, Lad/j0;->C:Lua/nav/routing/Route;

    if-ne v12, v8, :cond_2f

    if-nez v28, :cond_2f

    iget-wide v12, v0, Lad/j0;->B:J

    cmp-long v12, v12, v53

    if-nez v12, :cond_2e

    goto :goto_25

    :cond_2e
    const/4 v12, 0x0

    goto :goto_26

    :cond_2f
    :goto_25
    const/4 v12, 0x1

    :goto_26
    iput-wide v4, v0, Lad/j0;->B:J

    iput-object v8, v0, Lad/j0;->C:Lua/nav/routing/Route;

    if-nez v12, :cond_30

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    cmpg-double v8, v6, v12

    if-ltz v8, :cond_30

    iget-object v8, v0, Lad/j0;->j:Lx9/l0;

    invoke-virtual {v8}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lad/a0;

    iget v8, v8, Lad/a0;->F:I

    const/4 v14, 0x2

    if-ne v8, v14, :cond_31

    :cond_30
    move-object v14, v9

    goto :goto_2a

    :cond_31
    move-wide/from16 v36, v12

    iget-wide v12, v1, Lad/x1;->b:D

    move-object v14, v9

    iget-wide v8, v0, Lad/j0;->A:D

    sub-double/2addr v12, v8

    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide/high16 v38, 0x4069000000000000L    # 200.0

    cmpl-double v8, v8, v38

    if-lez v8, :cond_32

    iget-wide v6, v1, Lad/x1;->b:D

    goto :goto_28

    :cond_32
    cmpl-double v8, v12, v48

    if-ltz v8, :cond_33

    iget-wide v8, v0, Lad/j0;->A:D

    const-wide/high16 v36, 0x4004000000000000L    # 2.5

    mul-double v6, v6, v36

    mul-double v6, v6, v34

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    :goto_27
    add-double/2addr v6, v8

    goto :goto_28

    :cond_33
    iget-wide v8, v0, Lad/j0;->A:D

    neg-double v6, v6

    mul-double v6, v6, v36

    mul-double v6, v6, v34

    invoke-static {v12, v13, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    goto :goto_27

    :goto_28
    iput-wide v6, v0, Lad/j0;->A:D

    iget-wide v8, v1, Lad/x1;->b:D

    cmpg-double v8, v6, v8

    if-nez v8, :cond_34

    :goto_29
    move-object/from16 v8, v27

    goto :goto_2b

    :cond_34
    invoke-virtual {v1, v6, v7}, Lad/x1;->d(D)Lad/v1;

    move-result-object v6

    iget-object v8, v6, Lad/v1;->a:Lua/nav/routing/GeoPoint;

    goto :goto_2b

    :goto_2a
    iget-wide v6, v1, Lad/x1;->b:D

    iput-wide v6, v0, Lad/j0;->A:D

    goto :goto_29

    :goto_2b
    move-object v12, v8

    goto :goto_2c

    :cond_35
    move-object/from16 v26, v8

    move-object/from16 v29, v12

    move-wide/from16 v30, v13

    move-object v14, v9

    move-object/from16 v12, v70

    :goto_2c
    double-to-float v13, v10

    iget v6, v3, Lad/v1;->c:I

    invoke-virtual {v2, v6}, Lua/nav/routing/Route;->d(I)Ljava/lang/Integer;

    move-result-object v32

    const/16 v6, 0x3e8

    int-to-long v6, v6

    div-long v6, v57, v6

    long-to-int v6, v6

    iget-object v7, v0, Lad/j0;->q:Lad/q1;

    if-eqz v7, :cond_37

    cmp-long v8, v57, v53

    if-lez v8, :cond_36

    goto :goto_2d

    :cond_36
    move-object/from16 v7, v52

    :goto_2d
    if-eqz v7, :cond_37

    iget-wide v7, v7, Lad/q1;->d:D

    const-wide/high16 v36, 0x402e000000000000L    # 15.0

    const-wide v38, 0x40a7700000000000L    # 3000.0

    move-wide/from16 v34, v7

    invoke-static/range {v34 .. v39}, Lg6/c1;->d(DDD)D

    move-result-wide v7

    :goto_2e
    move-object/from16 v71, v1

    move-object/from16 v72, v2

    :goto_2f
    move-wide/from16 v34, v7

    goto :goto_32

    :cond_37
    iget-wide v7, v0, Lad/j0;->c0:D

    cmp-long v9, v57, v55

    if-gez v9, :cond_38

    const-wide/high16 v7, 0x402e000000000000L    # 15.0

    goto :goto_2e

    :cond_38
    if-eqz v59, :cond_39

    const-wide v34, 0x4075e00000000000L    # 350.0

    :goto_30
    move-object/from16 v71, v1

    move-object/from16 v72, v2

    move-wide/from16 v1, v34

    goto :goto_31

    :cond_39
    const-wide v34, 0x4082c00000000000L    # 600.0

    goto :goto_30

    :goto_31
    const-wide v34, 0x3fb47ae147ae147bL    # 0.08

    mul-double v7, v7, v34

    add-double v7, v7, v50

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    cmpg-double v7, v1, v66

    if-gez v7, :cond_3a

    move-wide/from16 v7, v66

    goto :goto_2f

    :cond_3a
    move-wide v7, v1

    goto :goto_2f

    :goto_32
    iget-object v1, v0, Lad/j0;->q:Lad/q1;

    if-eqz v1, :cond_3c

    cmp-long v2, v57, v53

    if-lez v2, :cond_3b

    move-object v2, v1

    goto :goto_33

    :cond_3b
    move-object/from16 v2, v52

    :goto_33
    if-eqz v2, :cond_3c

    iget-object v2, v2, Lad/q1;->f:Lua/nav/routing/GeoPoint;

    move-object/from16 v42, v2

    goto :goto_34

    :cond_3c
    move-object/from16 v42, v52

    :goto_34
    if-eqz v1, :cond_3d

    cmp-long v1, v57, v53

    if-lez v1, :cond_3d

    const/16 v43, 0x1

    goto :goto_35

    :cond_3d
    const/16 v43, 0x0

    :goto_35
    if-lez v60, :cond_3e

    const/16 v36, 0x1

    goto :goto_36

    :cond_3e
    const/16 v36, 0x0

    :goto_36
    iget-object v1, v0, Lad/j0;->K0:Lad/r0;

    invoke-virtual {v1, v4, v5}, Lad/r0;->a(J)Z

    move-result v37

    invoke-static/range {v71 .. v71}, Lad/j0;->H(Lad/x1;)Lua/nav/routing/Step;

    move-result-object v1

    if-eqz v1, :cond_3f

    iget-object v1, v1, Lua/nav/routing/Step;->e:Ljava/lang/String;

    if-eqz v1, :cond_3f

    invoke-static {v1}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3f

    move-object/from16 v38, v1

    goto :goto_37

    :cond_3f
    move-object/from16 v38, v52

    :goto_37
    const v46, -0x63f19ffd

    const/16 v47, 0x1

    const/4 v9, 0x0

    move-object v1, v14

    move-object/from16 v14, v25

    const/16 v25, 0x0

    move-object/from16 v8, v26

    const-wide/16 v26, 0x0

    move-wide/from16 v39, v10

    move-wide/from16 v10, v30

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-wide/from16 v40, v39

    const/16 v39, 0x0

    move-wide/from16 v44, v40

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-wide/from16 v73, v44

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object v2, v1

    move-object/from16 v1, v29

    move/from16 v23, v33

    move-object/from16 v29, p1

    move/from16 v33, v6

    const/4 v6, 0x6

    invoke-static/range {v8 .. v47}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v7

    move-wide/from16 v8, v16

    move/from16 v33, v23

    invoke-virtual {v1, v2, v7}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_55

    iget-object v1, v0, Lad/j0;->a:Ldd/k0;

    iget-object v2, v0, Lad/j0;->j:Lx9/l0;

    if-eqz v28, :cond_49

    iget-boolean v3, v0, Lad/j0;->s1:Z

    if-nez v3, :cond_54

    const/4 v3, 0x1

    iput-boolean v3, v0, Lad/j0;->s1:Z

    iget-wide v3, v0, Lad/j0;->H:D

    iput-wide v3, v0, Lad/j0;->t1:D

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lad/a0;

    iget-wide v3, v3, Lad/a0;->w:D

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    cmpl-double v3, v3, v5

    const/4 v4, 0x4

    if-lez v3, :cond_40

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lad/a0;

    iget-wide v2, v2, Lad/a0;->w:D

    double-to-int v2, v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "arrived_uncertain unc="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-object v0, v0, Lad/j0;->b:Lad/r2;

    sget-object v1, Lcd/d;->j1:Lcd/c;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v4}, Lad/r2;->g(Lad/r2;Ljava/lang/String;ZI)V

    return-void

    :cond_40
    iget-object v1, v0, Lad/j0;->T:Lad/x1;

    if-eqz v1, :cond_48

    iget-object v1, v1, Lad/x1;->a:Lua/nav/routing/Route;

    if-eqz v1, :cond_48

    iget-wide v2, v0, Lad/j0;->F1:D

    const-wide/high16 v5, 0x405e000000000000L    # 120.0

    cmpl-double v5, v2, v5

    if-lez v5, :cond_41

    move-wide/from16 v48, v2

    :cond_41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v5, v0, Lad/j0;->D1:J

    sub-long/2addr v2, v5

    long-to-double v2, v2

    div-double v2, v2, v68

    iget-wide v5, v0, Lad/j0;->G1:D

    sub-double/2addr v2, v5

    sub-double v2, v2, v48

    iget-object v5, v0, Lad/j0;->i:Lad/o;

    iget-object v6, v1, Lua/nav/routing/Route;->a:Ljava/lang/String;

    iget-wide v7, v1, Lua/nav/routing/Route;->c:D

    const-string v1, "provider"

    invoke-static {v6, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide v9, 0x4066800000000000L    # 180.0

    cmpg-double v1, v7, v9

    if-ltz v1, :cond_48

    cmpg-double v1, v2, v9

    if-gez v1, :cond_42

    goto/16 :goto_39

    :cond_42
    div-double v9, v2, v7

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x4008000000000000L    # 3.0

    invoke-static/range {v9 .. v14}, Lg6/c1;->d(DDD)D

    move-result-wide v15

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x770f88f1

    const/16 v3, 0x14

    if-eq v1, v2, :cond_47

    const v2, 0x252b1f

    if-eq v1, v2, :cond_45

    const v2, 0x44acae1f

    if-eq v1, v2, :cond_43

    goto/16 :goto_39

    :cond_43
    const-string v1, "\u041e\u0444\u043b\u0430\u0439\u043d"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44

    goto/16 :goto_39

    :cond_44
    iget v1, v5, Lad/o;->g:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/16 v65, 0x1

    add-int/lit8 v1, v1, 0x1

    int-to-double v1, v1

    div-double v19, v63, v1

    iget-wide v1, v5, Lad/o;->d:D

    move-wide/from16 v21, v1

    move-wide/from16 v17, v1

    invoke-static/range {v15 .. v22}, Lm/a;->b(DDDD)D

    move-result-wide v1

    iput-wide v1, v5, Lad/o;->d:D

    iget v1, v5, Lad/o;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v5, Lad/o;->g:I

    goto :goto_38

    :cond_45
    const/16 v65, 0x1

    const-string v1, "OSRM"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_46

    goto :goto_39

    :cond_46
    iget v1, v5, Lad/o;->f:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-double v1, v1

    div-double v19, v63, v1

    iget-wide v1, v5, Lad/o;->c:D

    move-wide/from16 v21, v1

    move-wide/from16 v17, v1

    invoke-static/range {v15 .. v22}, Lm/a;->b(DDDD)D

    move-result-wide v1

    iput-wide v1, v5, Lad/o;->c:D

    iget v1, v5, Lad/o;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v5, Lad/o;->f:I

    goto :goto_38

    :cond_47
    const/16 v65, 0x1

    const-string v1, "Mapbox"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    iget v1, v5, Lad/o;->e:I

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-double v1, v1

    div-double v19, v63, v1

    iget-wide v1, v5, Lad/o;->b:D

    move-wide/from16 v21, v1

    move-wide/from16 v17, v1

    invoke-static/range {v15 .. v22}, Lm/a;->b(DDDD)D

    move-result-wide v1

    iput-wide v1, v5, Lad/o;->b:D

    iget v1, v5, Lad/o;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v5, Lad/o;->e:I

    :goto_38
    invoke-virtual {v5}, Lad/o;->a()V

    :cond_48
    :goto_39
    iget-object v0, v0, Lad/j0;->b:Lad/r2;

    sget-object v1, Lcd/d;->i1:Lcd/c;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2, v4}, Lad/r2;->g(Lad/r2;Ljava/lang/String;ZI)V

    return-void

    :cond_49
    if-eqz v14, :cond_54

    if-gez v15, :cond_4a

    goto/16 :goto_40

    :cond_4a
    iget-object v2, v0, Lad/j0;->r1:Ljava/util/HashMap;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4b

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4b
    check-cast v4, Ljava/util/Set;

    sget-object v2, Lad/j0;->X1:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_54

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    cmpg-double v7, v8, v10

    if-gtz v7, :cond_53

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_53

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const-wide/high16 v15, 0x4044000000000000L    # 40.0

    cmpl-double v2, v10, v15

    if-lez v2, :cond_4c

    iget-wide v6, v0, Lad/j0;->x1:J

    sub-long v5, v12, v6

    cmp-long v5, v5, v55

    if-ltz v5, :cond_54

    :cond_4c
    if-ltz v3, :cond_4d

    const/4 v5, 0x0

    :goto_3b
    move-object v6, v4

    check-cast v6, Ljava/util/Collection;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eq v5, v3, :cond_4d

    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    :cond_4d
    invoke-virtual {v14}, Lua/nav/routing/Step;->b()Ljava/lang/String;

    move-result-object v3

    if-lez v2, :cond_4e

    iget-object v2, v0, Lad/j0;->w1:Ljava/lang/String;

    invoke-static {v3, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4e

    iget-wide v4, v0, Lad/j0;->x1:J

    sub-long v4, v12, v4

    cmp-long v2, v4, v61

    if-gez v2, :cond_4e

    goto/16 :goto_40

    :cond_4e
    cmpg-double v2, v10, v15

    if-lez v2, :cond_52

    cmpg-double v2, v8, v15

    if-gez v2, :cond_4f

    goto :goto_3e

    :cond_4f
    sget-object v2, Lcd/j;->a:Lcd/j;

    invoke-virtual {v2, v8, v9}, Lcd/j;->c(D)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v4

    if-eqz v4, :cond_50

    const-string v4, ", "

    goto :goto_3c

    :cond_50
    const-string v4, " "

    :goto_3c
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_51

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v6, v7}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "toLowerCase(...)"

    invoke-static {v6, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "substring(...)"

    invoke-static {v6, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3d

    :cond_51
    move-object v5, v3

    :goto_3d
    invoke-static {v2, v4, v5}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_3f

    :cond_52
    :goto_3e
    move-object v2, v3

    :goto_3f
    iput-object v3, v0, Lad/j0;->w1:Ljava/lang/String;

    iput-wide v12, v0, Lad/j0;->x1:J

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "say "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-object v0, v0, Lad/j0;->b:Lad/r2;

    const/4 v7, 0x0

    const/4 v11, 0x6

    invoke-static {v0, v2, v7, v11}, Lad/r2;->g(Lad/r2;Ljava/lang/String;ZI)V

    return-void

    :cond_53
    move v11, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    move v3, v5

    move v6, v11

    goto/16 :goto_3a

    :cond_54
    :goto_40
    return-void

    :cond_55
    move v11, v6

    move-object/from16 v7, p1

    move-wide/from16 v16, v8

    move-object/from16 v25, v14

    move-object/from16 v6, v70

    move-object/from16 v2, v72

    move-wide/from16 v10, v73

    move-object v8, v1

    move-object/from16 v1, v71

    goto/16 :goto_24
.end method

.method public final z(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Double;ZLt8/j;)V
    .locals 62

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p7

    iget-object v5, v0, Lad/j0;->T:Lad/x1;

    if-eqz v5, :cond_0

    iget-object v8, v5, Lad/x1;->a:Lua/nav/routing/Route;

    invoke-virtual {v8}, Lua/nav/routing/Route;->c()D

    move-result-wide v8

    iget-wide v10, v5, Lad/x1;->b:D

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x4054000000000000L    # 80.0

    cmpg-double v5, v8, v10

    if-gez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    iget-boolean v8, v0, Lad/j0;->s1:Z

    if-eqz v8, :cond_1

    iget-wide v8, v0, Lad/j0;->H:D

    iget-wide v10, v0, Lad/j0;->t1:D

    sub-double/2addr v8, v10

    const-wide/high16 v10, 0x405e000000000000L    # 120.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    const-string v9, " "

    const/16 v10, 0x20

    iget-object v11, v0, Lad/j0;->a:Ldd/k0;

    if-nez v5, :cond_2a

    if-eqz v8, :cond_2

    goto/16 :goto_1f

    :cond_2
    if-nez p5, :cond_5

    iget-object v5, v0, Lad/j0;->I:Lu8/k;

    invoke-virtual {v5}, Lu8/k;->e()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lt8/j;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x7530

    if-eqz v8, :cond_3

    iget-wide v12, v0, Lad/j0;->H:D

    iget-object v8, v8, Lt8/j;->m:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v18

    sub-double v12, v12, v18

    goto :goto_2

    :cond_3
    move-wide v12, v14

    :goto_2
    const-wide/high16 v18, 0x4020000000000000L    # 8.0

    cmpg-double v8, v12, v18

    if-gez v8, :cond_6

    iget-wide v6, v0, Lad/j0;->W1:J

    sub-long v6, v1, v6

    cmp-long v4, v6, v16

    if-lez v4, :cond_2c

    iput-wide v1, v0, Lad/j0;->W1:J

    invoke-virtual {v5}, Lu8/k;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt8/j;

    if-eqz v1, :cond_4

    iget-wide v4, v0, Lad/j0;->H:D

    iget-object v0, v1, Lt8/j;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    sub-double v14, v4, v0

    :cond_4
    double-to-int v0, v14

    invoke-static {v3, v10}, Lr9/k;->u0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "blind_deviation_suppressed reason=stationary moved="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ldd/k0;->n(Ljava/lang/String;)V

    return-void

    :cond_5
    const-wide/16 v16, 0x7530

    :cond_6
    iget-boolean v5, v0, Lad/j0;->s1:Z

    iget-object v8, v0, Lad/j0;->N0:Ljava/util/ArrayList;

    iget-object v12, v0, Lad/j0;->j:Lx9/l0;

    if-eqz v5, :cond_8

    iget-wide v13, v0, Lad/j0;->H:D

    iget-wide v9, v0, Lad/j0;->t1:D

    sub-double/2addr v13, v9

    const-wide/high16 v9, 0x4079000000000000L    # 400.0

    cmpg-double v9, v13, v9

    if-gez v9, :cond_8

    invoke-virtual {v12}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lad/a0;

    iget-object v9, v9, Lad/a0;->t:Lua/nav/routing/GeoPoint;

    if-eqz v9, :cond_8

    invoke-static {v8}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lad/x0;

    if-eqz v10, :cond_7

    iget-wide v13, v10, Lad/x0;->a:J

    sub-long v13, v1, v13

    cmp-long v13, v13, v16

    if-gtz v13, :cond_7

    iget-wide v13, v10, Lad/x0;->d:D

    const-wide v15, 0x4062c00000000000L    # 150.0

    cmpg-double v13, v13, v15

    if-gtz v13, :cond_7

    goto :goto_3

    :cond_7
    const/4 v10, 0x0

    :goto_3
    if-eqz v10, :cond_8

    sget-object v13, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v14, v10, Lad/x0;->b:D

    iget-wide v5, v10, Lad/x0;->c:D

    move-object v10, v8

    iget-wide v7, v9, Lua/nav/routing/GeoPoint;->a:D

    move-wide/from16 v16, v5

    iget-wide v5, v9, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v20, v5

    move-wide/from16 v18, v7

    invoke-static/range {v14 .. v21}, Ldd/s0;->a(DDDD)D

    goto :goto_4

    :cond_8
    move-object v10, v8

    :goto_4
    iget-object v5, v0, Lad/j0;->l:Lp/a1;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldd/l0;

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    :goto_5
    if-nez v5, :cond_a

    if-nez v4, :cond_a

    goto/16 :goto_21

    :cond_a
    if-eqz v4, :cond_b

    iget-object v6, v4, Lt8/j;->l:Ljava/lang/Object;

    check-cast v6, Lua/nav/routing/GeoPoint;

    if-nez v6, :cond_1f

    :cond_b
    new-instance v6, Lua/nav/routing/GeoPoint;

    invoke-static {v5}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v13, v5, Ldd/l0;->d:D

    iget-wide v7, v5, Ldd/l0;->e:D

    invoke-direct {v6, v13, v14, v7, v8}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-static {v10}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lad/x0;

    if-eqz v5, :cond_c

    iget-wide v9, v5, Lad/x0;->a:J

    sub-long v9, v1, v9

    const-wide/32 v15, 0x1d4c0

    cmp-long v9, v9, v15

    if-gtz v9, :cond_c

    goto :goto_6

    :cond_c
    const/4 v5, 0x0

    :goto_6
    iget-object v9, v0, Lad/j0;->T:Lad/x1;

    move-wide v15, v7

    if-eqz v9, :cond_d

    iget-wide v7, v9, Lad/x1;->b:D

    invoke-virtual {v9, v7, v8}, Lad/x1;->d(D)Lad/v1;

    move-result-object v7

    iget-object v7, v7, Lad/v1;->a:Lua/nav/routing/GeoPoint;

    goto :goto_7

    :cond_d
    const/4 v7, 0x0

    :goto_7
    if-eqz v5, :cond_e

    new-instance v8, Lua/nav/routing/GeoPoint;

    iget-wide v9, v5, Lad/x0;->b:D

    move-wide/from16 v17, v13

    iget-wide v13, v5, Lad/x0;->c:D

    invoke-direct {v8, v9, v10, v13, v14}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    goto :goto_8

    :cond_e
    move-wide/from16 v17, v13

    const/4 v8, 0x0

    :goto_8
    if-eqz v5, :cond_f

    iget-wide v9, v5, Lad/x0;->d:D

    goto :goto_9

    :cond_f
    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_9
    invoke-virtual {v12}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lad/a0;

    iget-wide v13, v5, Lad/a0;->w:D

    const-wide/high16 v19, 0x4008000000000000L    # 3.0

    mul-double v13, v13, v19

    move-wide/from16 v22, v9

    const-wide v9, 0x40a3880000000000L    # 2500.0

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    if-eqz v7, :cond_10

    sget-object v5, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v13, v7, Lua/nav/routing/GeoPoint;->a:D

    move-wide/from16 v24, v9

    iget-wide v9, v7, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v19, v17

    move-wide/from16 v17, v13

    move-wide/from16 v13, v19

    move-wide/from16 v19, v9

    invoke-static/range {v13 .. v20}, Ldd/s0;->a(DDDD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    goto :goto_a

    :cond_10
    move-wide/from16 v24, v9

    move-wide/from16 v13, v17

    const/4 v5, 0x0

    :goto_a
    if-eqz v8, :cond_11

    sget-object v9, Ldd/t0;->Companion:Ldd/s0;

    move-object/from16 v17, v9

    iget-wide v9, v8, Lua/nav/routing/GeoPoint;->a:D

    move-wide/from16 v18, v9

    iget-wide v9, v8, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v17, v18

    move-wide/from16 v19, v9

    invoke-static/range {v13 .. v20}, Ldd/s0;->a(DDDD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_b

    :cond_11
    const/4 v9, 0x0

    :goto_b
    if-eqz v5, :cond_12

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpl-double v10, v13, v24

    if-lez v10, :cond_12

    const/4 v10, 0x1

    goto :goto_c

    :cond_12
    const/4 v10, 0x0

    :goto_c
    if-eqz v9, :cond_13

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    cmpl-double v13, v13, v24

    if-lez v13, :cond_13

    const/4 v13, 0x1

    goto :goto_d

    :cond_13
    const/4 v13, 0x0

    :goto_d
    if-eqz v7, :cond_14

    if-eqz v10, :cond_16

    :cond_14
    if-eqz v8, :cond_15

    if-eqz v13, :cond_16

    :cond_15
    if-nez v7, :cond_17

    if-eqz v8, :cond_16

    goto :goto_e

    :cond_16
    new-instance v5, Lad/a2;

    const-string v7, ""

    const/4 v8, 0x0

    invoke-direct {v5, v6, v8, v7}, Lad/a2;-><init>(Lua/nav/routing/GeoPoint;ZLjava/lang/String;)V

    goto :goto_14

    :cond_17
    :goto_e
    if-eqz v8, :cond_18

    const-wide v13, 0x4082c00000000000L    # 600.0

    cmpg-double v6, v22, v13

    if-gtz v6, :cond_18

    const/4 v6, 0x1

    goto :goto_f

    :cond_18
    const/4 v6, 0x0

    :goto_f
    if-eqz v6, :cond_19

    :goto_10
    invoke-static {v8}, Lj9/n;->d(Ljava/lang/Object;)V

    goto :goto_11

    :cond_19
    if-nez v7, :cond_1a

    goto :goto_10

    :goto_11
    move-object v7, v8

    :cond_1a
    new-instance v8, Lad/a2;

    const/4 v10, -0x1

    if-eqz v5, :cond_1b

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    double-to-int v5, v13

    goto :goto_12

    :cond_1b
    move v5, v10

    :goto_12
    if-eqz v9, :cond_1c

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    double-to-int v10, v9

    :cond_1c
    if-eqz v6, :cond_1d

    const-string v6, "net"

    goto :goto_13

    :cond_1d
    const-string v6, "marker"

    :goto_13
    const-string v9, " d_net="

    const-string v13, " use="

    const-string v14, "free_far d_marker="

    invoke-static {v14, v5, v9, v10, v13}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v8, v7, v6, v5}, Lad/a2;-><init>(Lua/nav/routing/GeoPoint;ZLjava/lang/String;)V

    move-object v5, v8

    :goto_14
    iget-boolean v6, v5, Lad/a2;->m:Z

    if-eqz v6, :cond_1e

    iget-object v6, v5, Lad/a2;->o:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "blind_start_sanity "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_1e
    iget-object v5, v5, Lad/a2;->n:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Lua/nav/routing/GeoPoint;

    :cond_1f
    iput-object v6, v0, Lad/j0;->M0:Lua/nav/routing/GeoPoint;

    iput-object v4, v0, Lad/j0;->Q0:Lt8/j;

    iget-object v4, v0, Lad/j0;->O0:Lad/j2;

    if-nez p5, :cond_20

    invoke-virtual {v4, v1, v2}, Lad/j2;->a(J)Ljava/lang/Double;

    move-result-object v5

    goto :goto_15

    :cond_20
    move-object/from16 v5, p5

    :goto_15
    if-nez p6, :cond_22

    if-eqz v5, :cond_21

    iget-wide v6, v4, Lad/j2;->c:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-ltz v4, :cond_21

    sub-long v6, v1, v6

    const-wide/16 v8, 0x61a8

    cmp-long v4, v6, v8

    if-gtz v4, :cond_21

    goto :goto_16

    :cond_21
    const/4 v4, 0x0

    goto :goto_17

    :cond_22
    :goto_16
    const/4 v4, 0x1

    :goto_17
    invoke-virtual {v0}, Lad/j0;->p()Lua/nav/Tuning;

    move-result-object v6

    if-eqz v4, :cond_23

    iget v6, v6, Lua/nav/Tuning;->J:I

    const/4 v7, 0x3

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_18

    :cond_23
    iget v6, v6, Lua/nav/Tuning;->J:I

    :goto_18
    iget-object v7, v0, Lad/j0;->g:Lua/nav/a;

    iget-object v7, v7, Lua/nav/a;->e:Lx9/l0;

    invoke-virtual {v7}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    iput-object v5, v0, Lad/j0;->R0:Ljava/lang/Double;

    iget-object v5, v0, Lad/j0;->T:Lad/x1;

    if-eqz v5, :cond_24

    iget-wide v8, v5, Lad/x1;->b:D

    invoke-virtual {v5, v8, v9}, Lad/x1;->d(D)Lad/v1;

    move-result-object v5

    iget v5, v5, Lad/v1;->b:F

    float-to-double v8, v5

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_19

    :cond_24
    const/4 v9, 0x0

    :goto_19
    iput-object v9, v0, Lad/j0;->S0:Ljava/lang/Double;

    if-eqz v7, :cond_25

    int-to-long v8, v6

    const-wide/16 v13, 0x3e8

    mul-long/2addr v8, v13

    goto :goto_1a

    :cond_25
    const-wide/32 v8, 0xea60

    :goto_1a
    add-long/2addr v1, v8

    iget-object v5, v0, Lad/j0;->L0:Lad/f;

    iput-wide v1, v5, Lad/f;->a:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " delay_s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " confirmed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " auto="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ldd/k0;->n(Ljava/lang/String;)V

    const/4 v1, 0x2

    iget-object v0, v0, Lad/j0;->b:Lad/r2;

    if-eqz v7, :cond_27

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    if-ne v6, v3, :cond_26

    sget-object v3, Lcd/d;->y1:Lcd/c;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1b
    move-object/from16 v5, p4

    goto :goto_1c

    :cond_26
    const/4 v4, 0x0

    sget-object v3, Lcd/d;->z1:Lcd/c;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v5}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1b

    :goto_1c
    filled-new-array {v5, v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcd/d;->x1:Lcd/c;

    invoke-virtual {v3, v2}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Lad/r2;->g(Lad/r2;Ljava/lang/String;ZI)V

    goto :goto_1d

    :cond_27
    move-object/from16 v5, p4

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v2, Lcd/d;->A1:Lcd/c;

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v3, v1}, Lad/r2;->g(Lad/r2;Ljava/lang/String;ZI)V

    :goto_1d
    invoke-virtual {v12}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lad/a0;

    if-eqz v7, :cond_28

    move/from16 v54, v6

    goto :goto_1e

    :cond_28
    move/from16 v54, v4

    :goto_1e
    const v60, -0x1c000001

    const/16 v61, 0x1

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const-wide/16 v40, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const-wide/16 v48, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v52, 0x0

    const/16 v53, 0x1

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    const/16 v59, 0x0

    move/from16 v55, v7

    invoke-static/range {v22 .. v61}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_21

    :cond_29
    move/from16 v7, v55

    goto :goto_1d

    :cond_2a
    :goto_1f
    iget-wide v4, v0, Lad/j0;->W1:J

    sub-long v4, v1, v4

    const-wide/16 v6, 0x1388

    cmp-long v4, v4, v6

    if-lez v4, :cond_2c

    iput-wide v1, v0, Lad/j0;->W1:J

    if-eqz v8, :cond_2b

    const-string v0, "just_arrived"

    goto :goto_20

    :cond_2b
    const-string v0, "finish_end"

    :goto_20
    invoke-static {v3, v10}, Lr9/k;->u0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "blind_deviation_suppressed reason="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_2c
    :goto_21
    return-void
.end method
