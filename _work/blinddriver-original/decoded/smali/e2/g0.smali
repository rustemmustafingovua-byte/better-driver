.class public final Le2/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/h;
.implements Le2/r1;
.implements Le2/h;


# static fields
.field public static final d0:Le2/b0;

.field public static final e0:Le2/a0;

.field public static final f0:Lcom/graphhopper/isochrone/algorithm/b;


# instance fields
.field public A:Le3/z;

.field public B:I

.field public C:Z

.field public D:Z

.field public E:Lm2/m;

.field public F:Z

.field public final G:Lt0/b;

.field public H:Z

.field public I:Lc2/r0;

.field public J:Lg5/e;

.field public K:Lb3/c;

.field public L:Lb3/m;

.field public M:Lf2/p2;

.field public N:Lr0/z;

.field public O:Le2/e0;

.field public P:Le2/e0;

.field public Q:Z

.field public final R:Le2/c1;

.field public final S:Le2/l0;

.field public T:Lc2/n0;

.field public U:Le2/h1;

.field public V:Z

.field public W:Lf1/r;

.field public X:Lf1/r;

.field public Y:Le3/d;

.field public Z:Le3/e;

.field public a0:Z

.field public b0:I

.field public c0:Z

.field public final l:Z

.field public m:I

.field public n:Z

.field public o:J

.field public p:J

.field public q:J

.field public r:Z

.field public s:Z

.field public t:Le2/g0;

.field public u:I

.field public final v:Lg5/l;

.field public w:Lt0/b;

.field public x:Z

.field public y:Le2/g0;

.field public z:Le2/q1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Le2/b0;

    const-string v1, "Undefined intrinsics block and it is required"

    invoke-direct {v0, v1}, Le2/d0;-><init>(Ljava/lang/String;)V

    sput-object v0, Le2/g0;->d0:Le2/b0;

    new-instance v0, Le2/a0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Le2/g0;->e0:Le2/a0;

    new-instance v0, Lcom/graphhopper/isochrone/algorithm/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/graphhopper/isochrone/algorithm/b;-><init>(I)V

    sput-object v0, Le2/g0;->f0:Lcom/graphhopper/isochrone/algorithm/b;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1
    :goto_0
    sget-object v1, Lm2/n;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v0

    .line 2
    invoke-direct {p0, v0, p1}, Le2/g0;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p2, p0, Le2/g0;->l:Z

    .line 5
    iput p1, p0, Le2/g0;->m:I

    const-wide p1, 0x7fffffff7fffffffL

    .line 6
    iput-wide p1, p0, Le2/g0;->o:J

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Le2/g0;->p:J

    .line 8
    iput-wide p1, p0, Le2/g0;->q:J

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Le2/g0;->r:Z

    .line 10
    new-instance p2, Lg5/l;

    .line 11
    new-instance v0, Lt0/b;

    const/16 v1, 0x10

    new-array v2, v1, [Le2/g0;

    invoke-direct {v0, v2}, Lt0/b;-><init>([Ljava/lang/Object;)V

    .line 12
    new-instance v2, Lc2/l0;

    const/4 v3, 0x4

    invoke-direct {v2, v3, p0}, Lc2/l0;-><init>(ILjava/lang/Object;)V

    const/4 v3, 0x3

    invoke-direct {p2, v3, v0, v2}, Lg5/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Le2/g0;->v:Lg5/l;

    .line 13
    new-instance p2, Lt0/b;

    new-array v0, v1, [Le2/g0;

    invoke-direct {p2, v0}, Lt0/b;-><init>([Ljava/lang/Object;)V

    .line 14
    iput-object p2, p0, Le2/g0;->G:Lt0/b;

    .line 15
    iput-boolean p1, p0, Le2/g0;->H:Z

    .line 16
    sget-object p2, Le2/g0;->d0:Le2/b0;

    iput-object p2, p0, Le2/g0;->I:Lc2/r0;

    .line 17
    sget-object p2, Le2/k0;->a:Lb3/d;

    .line 18
    iput-object p2, p0, Le2/g0;->K:Lb3/c;

    .line 19
    sget-object p2, Lb3/m;->l:Lb3/m;

    iput-object p2, p0, Le2/g0;->L:Lb3/m;

    .line 20
    sget-object p2, Le2/g0;->e0:Le2/a0;

    iput-object p2, p0, Le2/g0;->M:Lf2/p2;

    .line 21
    sget-object p2, Lr0/z;->d:Lr0/y;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    sget-object p2, Lr0/y;->b:Lz0/h;

    .line 23
    iput-object p2, p0, Le2/g0;->N:Lr0/z;

    .line 24
    sget-object p2, Le2/e0;->n:Le2/e0;

    iput-object p2, p0, Le2/g0;->O:Le2/e0;

    .line 25
    iput-object p2, p0, Le2/g0;->P:Le2/e0;

    .line 26
    new-instance p2, Le2/c1;

    invoke-direct {p2, p0}, Le2/c1;-><init>(Le2/g0;)V

    iput-object p2, p0, Le2/g0;->R:Le2/c1;

    .line 27
    new-instance p2, Le2/l0;

    invoke-direct {p2, p0}, Le2/l0;-><init>(Le2/g0;)V

    iput-object p2, p0, Le2/g0;->S:Le2/l0;

    .line 28
    iput-boolean p1, p0, Le2/g0;->V:Z

    .line 29
    sget-object p1, Lf1/o;->a:Lf1/o;

    iput-object p1, p0, Le2/g0;->W:Lf1/r;

    return-void
.end method

.method public static Q(Le2/g0;)Z
    .locals 3

    iget-object v0, p0, Le2/g0;->S:Le2/l0;

    iget-object v0, v0, Le2/l0;->p:Le2/x0;

    iget-boolean v1, v0, Le2/x0;->u:Z

    if-eqz v1, :cond_0

    iget-wide v0, v0, Lc2/f1;->o:J

    new-instance v2, Lb3/a;

    invoke-direct {v2, v0, v1}, Lb3/a;-><init>(J)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0, v2}, Le2/g0;->P(Lb3/a;)Z

    move-result p0

    return p0
.end method

.method public static V(Le2/g0;ZI)V
    .locals 4

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_2

    move v1, v2

    :cond_2
    iget-object p2, p0, Le2/g0;->t:Le2/g0;

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    const-string p2, "Lookahead measure cannot be requested on a node that is not a part of the LookaheadScope"

    invoke-static {p2}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_1
    iget-object p2, p0, Le2/g0;->z:Le2/q1;

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    iget-boolean v3, p0, Le2/g0;->C:Z

    if-nez v3, :cond_b

    iget-boolean v3, p0, Le2/g0;->l:Z

    if-nez v3, :cond_b

    check-cast p2, Lf2/y;

    invoke-virtual {p2, p0, v2, p1, v0}, Lf2/y;->A(Le2/g0;ZZZ)V

    if-eqz v1, :cond_b

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->q:Le2/t0;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object p0, p0, Le2/t0;->q:Le2/l0;

    iget-object p2, p0, Le2/l0;->a:Le2/g0;

    invoke-virtual {p2}, Le2/g0;->v()Le2/g0;

    move-result-object p2

    iget-object p0, p0, Le2/l0;->a:Le2/g0;

    iget-object p0, p0, Le2/g0;->O:Le2/e0;

    if-eqz p2, :cond_b

    sget-object v0, Le2/e0;->n:Le2/e0;

    if-eq p0, v0, :cond_b

    :goto_2
    iget-object v0, p2, Le2/g0;->O:Le2/e0;

    if-ne v0, p0, :cond_6

    invoke-virtual {p2}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    move-object p2, v0

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_9

    if-ne p0, v2, :cond_8

    iget-object p0, p2, Le2/g0;->t:Le2/g0;

    if-eqz p0, :cond_7

    invoke-virtual {p2, p1}, Le2/g0;->U(Z)V

    return-void

    :cond_7
    invoke-virtual {p2, p1}, Le2/g0;->W(Z)V

    return-void

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Intrinsics isn\'t used by the parent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    iget-object p0, p2, Le2/g0;->t:Le2/g0;

    const/4 v0, 0x6

    if-eqz p0, :cond_a

    invoke-static {p2, p1, v0}, Le2/g0;->V(Le2/g0;ZI)V

    return-void

    :cond_a
    invoke-static {p2, p1, v0}, Le2/g0;->X(Le2/g0;ZI)V

    :cond_b
    :goto_4
    return-void
.end method

.method public static X(Le2/g0;ZI)V
    .locals 4

    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 v0, p2, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_2

    move p2, v2

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    iget-boolean v3, p0, Le2/g0;->C:Z

    if-nez v3, :cond_8

    iget-boolean v3, p0, Le2/g0;->l:Z

    if-nez v3, :cond_8

    iget-object v3, p0, Le2/g0;->z:Le2/q1;

    if-nez v3, :cond_3

    goto :goto_4

    :cond_3
    check-cast v3, Lf2/y;

    invoke-virtual {v3, p0, v1, p1, v0}, Lf2/y;->A(Le2/g0;ZZZ)V

    if-eqz p2, :cond_8

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->p:Le2/x0;

    iget-object p0, p0, Le2/x0;->q:Le2/l0;

    iget-object p2, p0, Le2/l0;->a:Le2/g0;

    invoke-virtual {p2}, Le2/g0;->v()Le2/g0;

    move-result-object p2

    iget-object p0, p0, Le2/l0;->a:Le2/g0;

    iget-object p0, p0, Le2/g0;->O:Le2/e0;

    if-eqz p2, :cond_8

    sget-object v0, Le2/e0;->n:Le2/e0;

    if-eq p0, v0, :cond_8

    :goto_2
    iget-object v0, p2, Le2/g0;->O:Le2/e0;

    if-ne v0, p0, :cond_5

    invoke-virtual {p2}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    move-object p2, v0

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_7

    if-ne p0, v2, :cond_6

    invoke-virtual {p2, p1}, Le2/g0;->W(Z)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Intrinsics isn\'t used by the parent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const/4 p0, 0x6

    invoke-static {p2, p1, p0}, Le2/g0;->X(Le2/g0;ZI)V

    :cond_8
    :goto_4
    return-void
.end method

.method public static Y(Le2/g0;)V
    .locals 4

    iget-object v0, p0, Le2/g0;->S:Le2/l0;

    iget-object v1, v0, Le2/l0;->d:Le2/c0;

    sget-object v2, Le2/f0;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-boolean v1, v0, Le2/l0;->e:Z

    const/4 v3, 0x6

    if-eqz v1, :cond_0

    invoke-static {p0, v2, v3}, Le2/g0;->V(Le2/g0;ZI)V

    return-void

    :cond_0
    iget-boolean v0, v0, Le2/l0;->f:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Le2/g0;->U(Z)V

    :cond_1
    invoke-virtual {p0}, Le2/g0;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, v2, v3}, Le2/g0;->X(Le2/g0;ZI)V

    return-void

    :cond_2
    invoke-virtual {p0}, Le2/g0;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v2}, Le2/g0;->W(Z)V

    :cond_3
    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected state "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Le2/l0;->d:Le2/c0;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final j(Le2/g0;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot insert "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " because it already has a parent or an owner. This tree: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Le2/g0;->g(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " Other tree: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Le2/g0;->y:Le2/g0;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Le2/g0;->g(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final A(JLe2/q;IZ)V
    .locals 9

    iget-object p0, p0, Le2/g0;->R:Le2/c1;

    iget-object v0, p0, Le2/c1;->d:Le2/h1;

    sget-object v1, Le2/h1;->X:Lm1/f0;

    invoke-virtual {v0, p1, p2}, Le2/h1;->R0(J)J

    move-result-wide v4

    iget-object v2, p0, Le2/c1;->d:Le2/h1;

    sget-object v3, Le2/h1;->a0:Le2/d1;

    move-object v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v2 .. v8}, Le2/h1;->Z0(Le2/d1;JLe2/q;IZ)V

    return-void
.end method

.method public final B(ILe2/g0;)V
    .locals 2

    iget-object v0, p2, Le2/g0;->y:Le2/g0;

    if-eqz v0, :cond_1

    iget-object v0, p2, Le2/g0;->z:Le2/q1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Le2/g0;->j(Le2/g0;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iput-object p0, p2, Le2/g0;->y:Le2/g0;

    iget-object v0, p0, Le2/g0;->v:Lg5/l;

    iget-object v1, v0, Lg5/l;->m:Ljava/lang/Object;

    check-cast v1, Lt0/b;

    invoke-virtual {v1, p1, p2}, Lt0/b;->a(ILjava/lang/Object;)V

    iget-object p1, v0, Lg5/l;->n:Ljava/lang/Object;

    check-cast p1, Lc2/l0;

    invoke-virtual {p1}, Lc2/l0;->invoke()Ljava/lang/Object;

    invoke-virtual {p0}, Le2/g0;->O()V

    iget-boolean p1, p2, Le2/g0;->l:Z

    if-eqz p1, :cond_2

    iget p1, p0, Le2/g0;->u:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Le2/g0;->u:I

    :cond_2
    invoke-virtual {p0}, Le2/g0;->G()V

    iget-object p1, p0, Le2/g0;->z:Le2/q1;

    if-eqz p1, :cond_3

    invoke-virtual {p2, p1}, Le2/g0;->d(Le2/q1;)V

    :cond_3
    iget-object p1, p2, Le2/g0;->S:Le2/l0;

    iget p1, p1, Le2/l0;->l:I

    if-lez p1, :cond_4

    iget-object p1, p0, Le2/g0;->S:Le2/l0;

    iget v0, p1, Le2/l0;->l:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Le2/l0;->d(I)V

    :cond_4
    iget p1, p2, Le2/g0;->b0:I

    if-lez p1, :cond_5

    iget p1, p0, Le2/g0;->b0:I

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Le2/g0;->c0(I)V

    :cond_5
    return-void
.end method

.method public final C()V
    .locals 4

    iget-boolean v0, p0, Le2/g0;->V:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Le2/g0;->R:Le2/c1;

    iget-object v1, v0, Le2/c1;->c:Le2/s;

    iget-object v0, v0, Le2/c1;->d:Le2/h1;

    iget-object v0, v0, Le2/h1;->B:Le2/h1;

    const/4 v2, 0x0

    iput-object v2, p0, Le2/g0;->U:Le2/h1;

    :goto_0
    invoke-static {v1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v1, :cond_0

    iget-object v3, v1, Le2/h1;->W:Le2/p1;

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_1

    iput-object v1, p0, Le2/g0;->U:Le2/h1;

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_2

    iget-object v1, v1, Le2/h1;->B:Le2/h1;

    goto :goto_0

    :cond_2
    move-object v1, v2

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v0, p0, Le2/g0;->U:Le2/h1;

    if-eqz v0, :cond_5

    iget-object v1, v0, Le2/h1;->W:Le2/p1;

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const-string p0, "layer was not set"

    invoke-static {p0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object p0

    throw p0

    :cond_5
    :goto_3
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Le2/h1;->b1()V

    return-void

    :cond_6
    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Le2/g0;->C()V

    :cond_7
    return-void
.end method

.method public final D()V
    .locals 3

    iget-object p0, p0, Le2/g0;->R:Le2/c1;

    iget-object v0, p0, Le2/c1;->d:Le2/h1;

    iget-object v1, p0, Le2/c1;->c:Le2/s;

    :goto_0
    if-eq v0, v1, :cond_1

    const-string v2, "null cannot be cast to non-null type androidx.compose.ui.node.LayoutModifierNodeCoordinator"

    invoke-static {v0, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Le2/z;

    iget-object v2, v0, Le2/h1;->W:Le2/p1;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Le2/p1;->invalidate()V

    :cond_0
    iget-object v0, v0, Le2/h1;->A:Le2/h1;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Le2/c1;->c:Le2/s;

    iget-object p0, p0, Le2/h1;->W:Le2/p1;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Le2/p1;->invalidate()V

    :cond_2
    return-void
.end method

.method public final E()V
    .locals 3

    iget-boolean v0, p0, Le2/g0;->l:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Le2/g0;->E()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Le2/g0;->t:Le2/g0;

    const/4 v1, 0x7

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {p0, v2, v1}, Le2/g0;->V(Le2/g0;ZI)V

    return-void

    :cond_2
    invoke-static {p0, v2, v1}, Le2/g0;->X(Le2/g0;ZI)V

    return-void
.end method

.method public final F()V
    .locals 5

    iget-boolean v0, p0, Le2/g0;->F:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le2/g0;->R:Le2/c1;

    iget-object v0, v0, Le2/c1;->b:Le2/b1;

    iget-object v0, v0, Lf1/q;->q:Lf1/q;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Le2/g0;->X:Lf1/r;

    if-eqz v0, :cond_2

    :goto_0
    iput-boolean v1, p0, Le2/g0;->D:Z

    return-void

    :cond_2
    iget-object v0, p0, Le2/g0;->E:Lm2/m;

    iput-boolean v1, p0, Le2/g0;->F:Z

    new-instance v1, Lj9/y;

    invoke-direct {v1}, Lj9/y;-><init>()V

    new-instance v2, Lm2/m;

    invoke-direct {v2}, Lm2/m;-><init>()V

    iput-object v2, v1, Lj9/y;->m:Ljava/lang/Object;

    invoke-static {p0}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v2

    check-cast v2, Lf2/y;

    invoke-virtual {v2}, Lf2/y;->getSnapshotObserver()Le2/s1;

    move-result-object v2

    new-instance v3, Ld5/a;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0, v1}, Ld5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v2, Le2/s1;->d:Le2/d;

    iget-object v2, v2, Le2/s1;->a:Ld1/b0;

    invoke-virtual {v2, p0, v4, v3}, Ld1/b0;->c(Ljava/lang/Object;Li9/c;Li9/a;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Le2/g0;->F:Z

    iget-object v1, v1, Lj9/y;->m:Ljava/lang/Object;

    check-cast v1, Lm2/m;

    iput-object v1, p0, Le2/g0;->E:Lm2/m;

    iput-boolean v2, p0, Le2/g0;->D:Z

    invoke-static {p0}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v1

    check-cast v1, Lf2/y;

    invoke-virtual {v1}, Lf2/y;->getSemanticsOwner()Lm2/r;

    move-result-object v2

    invoke-virtual {v2, p0, v0}, Lm2/r;->b(Le2/g0;Lm2/m;)V

    invoke-virtual {v1}, Lf2/y;->C()V

    return-void
.end method

.method public final G()V
    .locals 1

    iget v0, p0, Le2/g0;->u:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Le2/g0;->x:Z

    :cond_0
    iget-boolean v0, p0, Le2/g0;->l:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Le2/g0;->y:Le2/g0;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Le2/g0;->G()V

    :cond_1
    return-void
.end method

.method public final H()Z
    .locals 0

    iget-object p0, p0, Le2/g0;->z:Le2/q1;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final I()Z
    .locals 0

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->p:Le2/x0;

    iget-boolean p0, p0, Le2/x0;->D:Z

    return p0
.end method

.method public final J()Ljava/lang/Boolean;
    .locals 1

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->q:Le2/t0;

    if-eqz p0, :cond_1

    iget-object p0, p0, Le2/t0;->B:Le2/r0;

    sget-object v0, Le2/r0;->n:Le2/r0;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final K()V
    .locals 5

    iget-object v0, p0, Le2/g0;->O:Le2/e0;

    sget-object v1, Le2/e0;->n:Le2/e0;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Le2/g0;->f()V

    :cond_0
    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->q:Le2/t0;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Le2/t0;->r:Z

    iget-boolean v2, p0, Le2/t0;->w:Z

    if-nez v2, :cond_1

    const-string v2, "replace() called on item that was not placed"

    invoke-static {v2}, Lb2/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    iput-boolean v1, p0, Le2/t0;->M:Z

    iget-object v2, p0, Le2/t0;->B:Le2/r0;

    sget-object v3, Le2/r0;->n:Le2/r0;

    if-eq v2, v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    iget-wide v2, p0, Le2/t0;->z:J

    iget-object v4, p0, Le2/t0;->A:Li9/c;

    invoke-virtual {p0, v2, v3, v4}, Le2/t0;->A0(JLi9/c;)V

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Le2/t0;->M:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Le2/t0;->q:Le2/l0;

    iget-object v0, v0, Le2/l0;->a:Le2/g0;

    invoke-virtual {v0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Le2/g0;->U(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iput-boolean v1, p0, Le2/t0;->r:Z

    return-void

    :goto_2
    iput-boolean v1, p0, Le2/t0;->r:Z

    throw v0
.end method

.method public final L(III)V
    .locals 6

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    if-le p1, p2, :cond_1

    add-int v1, p1, v0

    goto :goto_1

    :cond_1
    move v1, p1

    :goto_1
    if-le p1, p2, :cond_2

    add-int v2, p2, v0

    goto :goto_2

    :cond_2
    add-int v2, p2, p3

    add-int/lit8 v2, v2, -0x2

    :goto_2
    iget-object v3, p0, Le2/g0;->v:Lg5/l;

    iget-object v4, v3, Lg5/l;->m:Ljava/lang/Object;

    check-cast v4, Lt0/b;

    iget-object v5, v3, Lg5/l;->n:Ljava/lang/Object;

    check-cast v5, Lc2/l0;

    invoke-virtual {v4, v1}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v5}, Lc2/l0;->invoke()Ljava/lang/Object;

    check-cast v1, Le2/g0;

    iget-object v3, v3, Lg5/l;->m:Ljava/lang/Object;

    check-cast v3, Lt0/b;

    invoke-virtual {v3, v2, v1}, Lt0/b;->a(ILjava/lang/Object;)V

    invoke-virtual {v5}, Lc2/l0;->invoke()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Le2/g0;->O()V

    invoke-virtual {p0}, Le2/g0;->G()V

    invoke-virtual {p0}, Le2/g0;->E()V

    return-void
.end method

.method public final M(Le2/g0;)V
    .locals 4

    iget-object v0, p1, Le2/g0;->S:Le2/l0;

    iget v0, v0, Le2/l0;->l:I

    if-lez v0, :cond_0

    iget-object v0, p0, Le2/g0;->S:Le2/l0;

    iget v1, v0, Le2/l0;->l:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Le2/l0;->d(I)V

    :cond_0
    iget-object v0, p0, Le2/g0;->z:Le2/q1;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Le2/g0;->h()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Le2/g0;->y:Le2/g0;

    iget v1, p1, Le2/g0;->b0:I

    if-lez v1, :cond_2

    iget v1, p0, Le2/g0;->b0:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Le2/g0;->c0(I)V

    :cond_2
    iget-object v1, p1, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->d:Le2/h1;

    iput-object v0, v1, Le2/h1;->B:Le2/h1;

    iget-boolean v1, p1, Le2/g0;->l:Z

    if-eqz v1, :cond_3

    iget v1, p0, Le2/g0;->u:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Le2/g0;->u:I

    iget-object p1, p1, Le2/g0;->v:Lg5/l;

    iget-object p1, p1, Lg5/l;->m:Ljava/lang/Object;

    check-cast p1, Lt0/b;

    iget-object v1, p1, Lt0/b;->l:[Ljava/lang/Object;

    iget p1, p1, Lt0/b;->n:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_3

    aget-object v3, v1, v2

    check-cast v3, Le2/g0;

    iget-object v3, v3, Le2/g0;->R:Le2/c1;

    iget-object v3, v3, Le2/c1;->d:Le2/h1;

    iput-object v0, v3, Le2/h1;->B:Le2/h1;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Le2/g0;->G()V

    invoke-virtual {p0}, Le2/g0;->O()V

    return-void
.end method

.method public final N()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Le2/g0;->r:Z

    iget-object v0, p0, Le2/g0;->z:Le2/q1;

    if-eqz v0, :cond_0

    check-cast v0, Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getRectManager()Ln2/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ln2/b;->d(Le2/g0;)V

    :cond_0
    return-void
.end method

.method public final O()V
    .locals 1

    iget-boolean v0, p0, Le2/g0;->l:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Le2/g0;->O()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Le2/g0;->H:Z

    return-void
.end method

.method public final P(Lb3/a;)Z
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Le2/g0;->O:Le2/e0;

    sget-object v1, Le2/e0;->n:Le2/e0;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Le2/g0;->e()V

    :cond_0
    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->p:Le2/x0;

    iget-wide v0, p1, Lb3/a;->a:J

    invoke-virtual {p0, v0, v1}, Le2/x0;->B0(J)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final R()V
    .locals 4

    iget-object v0, p0, Le2/g0;->v:Lg5/l;

    iget-object v1, v0, Lg5/l;->m:Ljava/lang/Object;

    check-cast v1, Lt0/b;

    iget-object v2, v0, Lg5/l;->m:Ljava/lang/Object;

    check-cast v2, Lt0/b;

    iget v1, v1, Lt0/b;->n:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    const/4 v3, -0x1

    if-ge v3, v1, :cond_0

    iget-object v3, v2, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v3, v3, v1

    check-cast v3, Le2/g0;

    invoke-virtual {p0, v3}, Le2/g0;->M(Le2/g0;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lt0/b;->g()V

    iget-object p0, v0, Lg5/l;->n:Ljava/lang/Object;

    check-cast p0, Lc2/l0;

    invoke-virtual {p0}, Lc2/l0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final S(II)V
    .locals 2

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "count ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") must be greater than 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb2/a;->a(Ljava/lang/String;)V

    :goto_0
    add-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    if-gt p1, p2, :cond_1

    :goto_1
    iget-object v0, p0, Le2/g0;->v:Lg5/l;

    iget-object v1, v0, Lg5/l;->m:Ljava/lang/Object;

    check-cast v1, Lt0/b;

    iget-object v1, v1, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v1, v1, p2

    check-cast v1, Le2/g0;

    invoke-virtual {p0, v1}, Le2/g0;->M(Le2/g0;)V

    iget-object v1, v0, Lg5/l;->m:Ljava/lang/Object;

    check-cast v1, Lt0/b;

    invoke-virtual {v1, p2}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v0, v0, Lg5/l;->n:Ljava/lang/Object;

    check-cast v0, Lc2/l0;

    invoke-virtual {v0}, Lc2/l0;->invoke()Ljava/lang/Object;

    check-cast v1, Le2/g0;

    if-eq p2, p1, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final T()V
    .locals 7

    iget-object v0, p0, Le2/g0;->O:Le2/e0;

    sget-object v1, Le2/e0;->n:Le2/e0;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Le2/g0;->f()V

    :cond_0
    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->p:Le2/x0;

    iget-object v0, p0, Le2/x0;->q:Le2/l0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, p0, Le2/x0;->r:Z

    iget-boolean v2, p0, Le2/x0;->v:Z

    if-nez v2, :cond_1

    const-string v2, "replace called on unplaced item"

    invoke-static {v2}, Lb2/a;->b(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_1
    :goto_0
    iget-boolean v2, p0, Le2/x0;->D:Z

    iget-wide v3, p0, Le2/x0;->y:J

    iget v5, p0, Le2/x0;->A:F

    iget-object v6, p0, Le2/x0;->z:Li9/c;

    invoke-virtual {p0, v3, v4, v5, v6}, Le2/x0;->A0(JFLi9/c;)V

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Le2/x0;->Q:Z

    if-nez v2, :cond_2

    iget-object v2, v0, Le2/l0;->a:Le2/g0;

    invoke-virtual {v2}, Le2/g0;->v()Le2/g0;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2, v1}, Le2/g0;->W(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iput-boolean v1, p0, Le2/x0;->r:Z

    return-void

    :goto_1
    :try_start_1
    iget-object v0, v0, Le2/l0;->a:Le2/g0;

    invoke-virtual {v0, v2}, Le2/g0;->a0(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    iput-boolean v1, p0, Le2/x0;->r:Z

    throw v0
.end method

.method public final U(Z)V
    .locals 2

    iget-boolean v0, p0, Le2/g0;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le2/g0;->z:Le2/q1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    check-cast v0, Lf2/y;

    invoke-virtual {v0, p0, v1, p1}, Lf2/y;->B(Le2/g0;ZZ)V

    :cond_0
    return-void
.end method

.method public final W(Z)V
    .locals 2

    iget-boolean v0, p0, Le2/g0;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le2/g0;->z:Le2/q1;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    check-cast v0, Lf2/y;

    invoke-virtual {v0, p0, v1, p1}, Lf2/y;->B(Le2/g0;ZZ)V

    :cond_0
    return-void
.end method

.method public final Z()V
    .locals 5

    invoke-virtual {p0}, Le2/g0;->z()Lt0/b;

    move-result-object p0

    iget-object v0, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget p0, p0, Lt0/b;->n:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, v0, v1

    check-cast v2, Le2/g0;

    iget-object v3, v2, Le2/g0;->P:Le2/e0;

    iput-object v3, v2, Le2/g0;->O:Le2/e0;

    sget-object v4, Le2/e0;->n:Le2/e0;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Le2/g0;->Z()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a()V
    .locals 2

    iget-object v0, p0, Le2/g0;->A:Le3/z;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le3/k;->a()V

    :cond_0
    iget-object v0, p0, Le2/g0;->T:Lc2/n0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lc2/n0;->a()V

    :cond_1
    iget-object p0, p0, Le2/g0;->R:Le2/c1;

    iget-object v0, p0, Le2/c1;->d:Le2/h1;

    iget-object p0, p0, Le2/c1;->c:Le2/s;

    iget-object p0, p0, Le2/h1;->A:Le2/h1;

    :goto_0
    invoke-static {v0, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Le2/h1;->g1()V

    iget-object v0, v0, Le2/h1;->A:Le2/h1;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a0(Ljava/lang/Throwable;)V
    .locals 3

    iget-object v0, p0, Le2/g0;->N:Lr0/z;

    sget-object v1, Le1/f;->a:Lr0/s2;

    check-cast v0, Lz0/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1}, Lr0/r;->z(Lr0/j1;Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le1/e;

    if-eqz v0, :cond_0

    new-instance v1, Lb0/n;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v0, p0}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1, v1}, Ll9/a;->F(Ljava/lang/Throwable;Li9/a;)Z

    :cond_0
    throw p1
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Le2/g0;->A:Le3/z;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le3/k;->b()V

    :cond_0
    iget-object v0, p0, Le2/g0;->T:Lc2/n0;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lc2/n0;->i(Z)V

    :cond_1
    iput-boolean v1, p0, Le2/g0;->c0:Z

    iget-object v0, p0, Le2/g0;->R:Le2/c1;

    iget-object v0, v0, Le2/c1;->e:Le2/b2;

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    iget-boolean v2, v1, Lf1/q;->y:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lf1/q;->H0()V

    :cond_2
    iget-object v1, v1, Lf1/q;->p:Lf1/q;

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_5

    iget-boolean v2, v1, Lf1/q;->y:Z

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lf1/q;->J0()V

    :cond_4
    iget-object v1, v1, Lf1/q;->p:Lf1/q;

    goto :goto_1

    :cond_5
    :goto_2
    if-eqz v0, :cond_7

    iget-boolean v1, v0, Lf1/q;->y:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lf1/q;->D0()V

    :cond_6
    iget-object v0, v0, Lf1/q;->p:Lf1/q;

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Le2/g0;->H()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Le2/g0;->E:Lm2/m;

    iput-boolean v1, p0, Le2/g0;->D:Z

    :cond_8
    iget-object v0, p0, Le2/g0;->z:Le2/q1;

    if-eqz v0, :cond_9

    check-cast v0, Lf2/y;

    iget-object v0, v0, Lf2/y;->W:Lg1/c;

    if-eqz v0, :cond_9

    iget-object v2, v0, Lg1/c;->s:Lk/y;

    iget v3, p0, Le2/g0;->m:I

    invoke-virtual {v2, v3}, Lk/y;->e(I)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v0, Lg1/c;->l:Lb0/l1;

    iget-object v0, v0, Lg1/c;->n:Lf2/y;

    iget p0, p0, Le2/g0;->m:I

    invoke-virtual {v2, v0, p0, v1}, Lb0/l1;->x(Landroid/view/View;IZ)V

    :cond_9
    return-void
.end method

.method public final b0(Lb3/c;)V
    .locals 1

    iget-object v0, p0, Le2/g0;->K:Lb3/c;

    invoke-static {v0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Le2/g0;->K:Lb3/c;

    invoke-virtual {p0}, Le2/g0;->E()V

    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Le2/g0;->C()V

    :cond_0
    invoke-virtual {p0}, Le2/g0;->D()V

    iget-object p0, p0, Le2/g0;->R:Le2/c1;

    iget-object p0, p0, Le2/c1;->f:Lf1/q;

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Le2/j;->c()V

    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(Lf1/r;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Le2/g0;->R:Le2/c1;

    const/16 v7, 0x10

    invoke-virtual {v2, v7}, Le2/c1;->d(I)Z

    move-result v8

    iget-object v9, v2, Le2/c1;->e:Le2/b2;

    const/16 v10, 0x400

    invoke-virtual {v2, v10}, Le2/c1;->d(I)Z

    move-result v11

    iput-object v1, v0, Le2/g0;->W:Lf1/r;

    iget-object v3, v2, Le2/c1;->c:Le2/s;

    iget-object v4, v2, Le2/c1;->a:Le2/g0;

    iget-object v5, v2, Le2/c1;->f:Lf1/q;

    iget-object v12, v2, Le2/c1;->b:Le2/b1;

    if-eq v5, v12, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "padChain called on already padded chain"

    invoke-static {v5}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_0
    iget-object v5, v2, Le2/c1;->f:Lf1/q;

    iput-object v12, v5, Lf1/q;->p:Lf1/q;

    iput-object v5, v12, Lf1/q;->q:Lf1/q;

    move-object v5, v3

    iget-object v3, v2, Le2/c1;->g:Lt0/b;

    if-eqz v3, :cond_1

    iget v6, v3, Lt0/b;->n:I

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iget-object v14, v2, Le2/c1;->h:Lt0/b;

    if-nez v14, :cond_2

    new-instance v14, Lt0/b;

    new-array v15, v7, [Lf1/p;

    invoke-direct {v14, v15}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_2
    iget-object v15, v2, Le2/c1;->i:Lt0/b;

    invoke-virtual {v15, v1}, Lt0/b;->b(Ljava/lang/Object;)V

    const/16 v16, 0x0

    :goto_2
    iget v1, v15, Lt0/b;->n:I

    if-eqz v1, :cond_6

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v15, v1}, Lt0/b;->k(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf1/r;

    instance-of v13, v1, Lf1/l;

    if-eqz v13, :cond_3

    check-cast v1, Lf1/l;

    iget-object v13, v1, Lf1/l;->b:Lf1/r;

    invoke-virtual {v15, v13}, Lt0/b;->b(Ljava/lang/Object;)V

    iget-object v1, v1, Lf1/l;->a:Lf1/r;

    invoke-virtual {v15, v1}, Lt0/b;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_3
    instance-of v13, v1, Lf1/p;

    if-eqz v13, :cond_4

    invoke-virtual {v14, v1}, Lt0/b;->b(Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    if-nez v16, :cond_5

    new-instance v13, Landroidx/fragment/app/t;

    const/4 v10, 0x2

    invoke-direct {v13, v10, v14}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    move-object/from16 v16, v13

    goto :goto_3

    :cond_5
    move-object/from16 v13, v16

    :goto_3
    invoke-interface {v1, v13}, Lf1/r;->a(Li9/c;)Z

    :goto_4
    const/16 v10, 0x400

    goto :goto_2

    :cond_6
    iget v1, v14, Lt0/b;->n:I

    const-string v13, "expected prior modifier list to be non-empty"

    if-ne v1, v6, :cond_11

    iget-object v1, v12, Lf1/q;->q:Lf1/q;

    move-object v5, v2

    const/4 v2, 0x0

    :goto_5
    if-eqz v1, :cond_c

    if-ge v2, v6, :cond_c

    if-eqz v3, :cond_b

    const/16 v16, 0x2

    iget-object v10, v3, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v10, v10, v2

    check-cast v10, Lf1/p;

    iget-object v7, v14, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v7, v7, v2

    check-cast v7, Lf1/p;

    invoke-static {v10, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    move-object/from16 v18, v3

    move/from16 v3, v16

    goto :goto_6

    :cond_7
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    move-object/from16 v18, v3

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v15, v3, :cond_8

    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_a

    const/4 v15, 0x1

    if-eq v3, v15, :cond_9

    goto :goto_7

    :cond_9
    invoke-static {v10, v7, v1}, Le2/c1;->h(Lf1/p;Lf1/p;Lf1/q;)V

    :goto_7
    iget-object v1, v1, Lf1/q;->q:Lf1/q;

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v18

    const/16 v7, 0x10

    goto :goto_5

    :cond_a
    iget-object v1, v1, Lf1/q;->p:Lf1/q;

    goto :goto_8

    :cond_b
    invoke-static {v13}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object v0

    throw v0

    :cond_c
    move-object/from16 v18, v3

    const/16 v16, 0x2

    :goto_8
    if-ge v2, v6, :cond_10

    if-eqz v18, :cond_f

    if-eqz v1, :cond_e

    iget-object v3, v4, Le2/g0;->X:Lf1/r;

    if-eqz v3, :cond_d

    const/16 v17, 0x1

    :goto_9
    const/4 v15, 0x1

    goto :goto_a

    :cond_d
    const/16 v17, 0x0

    goto :goto_9

    :goto_a
    xor-int/lit8 v6, v17, 0x1

    move-object v3, v5

    move-object v5, v1

    move-object v1, v3

    move-object v4, v14

    move-object/from16 v3, v18

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v6}, Le2/c1;->f(ILt0/b;Lt0/b;Lf1/q;Z)V

    move-object v5, v12

    :goto_b
    const/4 v15, 0x1

    goto/16 :goto_13

    :cond_e
    const-string v0, "structuralUpdate requires a non-null tail"

    invoke-static {v0}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object v0

    throw v0

    :cond_f
    invoke-static {v13}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object v0

    throw v0

    :cond_10
    move-object v2, v5

    move-object/from16 v3, v18

    const/4 v7, 0x0

    goto :goto_10

    :cond_11
    const/4 v7, 0x0

    const/16 v16, 0x2

    iget-object v10, v4, Le2/g0;->X:Lf1/r;

    if-eqz v10, :cond_14

    if-nez v6, :cond_14

    move-object v4, v12

    const/4 v1, 0x0

    :goto_c
    iget v5, v14, Lt0/b;->n:I

    if-ge v1, v5, :cond_12

    iget-object v5, v14, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v5, v5, v1

    check-cast v5, Lf1/p;

    invoke-static {v5, v4}, Le2/c1;->b(Lf1/p;Lf1/q;)Lf1/q;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_12
    iget-object v1, v9, Lf1/q;->p:Lf1/q;

    const/4 v4, 0x0

    :goto_d
    if-eqz v1, :cond_13

    if-eq v1, v12, :cond_13

    iget v5, v1, Lf1/q;->n:I

    or-int/2addr v4, v5

    iput v4, v1, Lf1/q;->o:I

    iget-object v1, v1, Lf1/q;->p:Lf1/q;

    goto :goto_d

    :cond_13
    move-object v1, v2

    move-object v5, v12

    move-object v4, v14

    goto :goto_b

    :cond_14
    if-nez v1, :cond_18

    if-eqz v3, :cond_17

    iget-object v1, v12, Lf1/q;->q:Lf1/q;

    const/4 v6, 0x0

    :goto_e
    if-eqz v1, :cond_15

    iget v10, v3, Lt0/b;->n:I

    if-ge v6, v10, :cond_15

    invoke-static {v1}, Le2/c1;->c(Lf1/q;)Lf1/q;

    move-result-object v1

    iget-object v1, v1, Lf1/q;->q:Lf1/q;

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_15
    invoke-virtual {v4}, Le2/g0;->v()Le2/g0;

    move-result-object v1

    if-eqz v1, :cond_16

    iget-object v1, v1, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->c:Le2/s;

    goto :goto_f

    :cond_16
    move-object v1, v7

    :goto_f
    iput-object v1, v5, Le2/h1;->B:Le2/h1;

    iput-object v5, v2, Le2/c1;->d:Le2/h1;

    :goto_10
    move-object v1, v2

    move-object v5, v12

    move-object v4, v14

    const/4 v15, 0x0

    goto :goto_13

    :cond_17
    invoke-static {v13}, La6/q;->e(Ljava/lang/String;)Landroidx/fragment/app/i0;

    move-result-object v0

    throw v0

    :cond_18
    if-nez v3, :cond_19

    new-instance v3, Lt0/b;

    const/16 v1, 0x10

    new-array v4, v1, [Lf1/p;

    invoke-direct {v3, v4}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_19
    if-eqz v10, :cond_1a

    const/4 v15, 0x1

    :goto_11
    const/16 v17, 0x1

    goto :goto_12

    :cond_1a
    const/4 v15, 0x0

    goto :goto_11

    :goto_12
    xor-int/lit8 v6, v15, 0x1

    move-object v1, v2

    const/4 v2, 0x0

    move-object v5, v12

    move-object v4, v14

    invoke-virtual/range {v1 .. v6}, Le2/c1;->f(ILt0/b;Lt0/b;Lf1/q;Z)V

    move/from16 v15, v17

    :goto_13
    iput-object v4, v1, Le2/c1;->g:Lt0/b;

    if-eqz v3, :cond_1b

    invoke-virtual {v3}, Lt0/b;->g()V

    goto :goto_14

    :cond_1b
    move-object v3, v7

    :goto_14
    iput-object v3, v1, Le2/c1;->h:Lt0/b;

    iget-object v2, v5, Lf1/q;->q:Lf1/q;

    if-nez v2, :cond_1c

    goto :goto_15

    :cond_1c
    move-object v9, v2

    :goto_15
    iput-object v7, v9, Lf1/q;->p:Lf1/q;

    iput-object v7, v5, Lf1/q;->q:Lf1/q;

    const/4 v2, -0x1

    iput v2, v5, Lf1/q;->o:I

    iput-object v7, v5, Lf1/q;->s:Le2/h1;

    if-eq v9, v5, :cond_1d

    goto :goto_16

    :cond_1d
    const-string v2, "trimChain did not update the head"

    invoke-static {v2}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_16
    iput-object v9, v1, Le2/c1;->f:Lf1/q;

    if-eqz v15, :cond_1e

    invoke-virtual {v1}, Le2/c1;->g()V

    :cond_1e
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Le2/c1;->d(I)Z

    move-result v2

    const/16 v3, 0x400

    invoke-virtual {v1, v3}, Le2/c1;->d(I)Z

    move-result v3

    iget-object v4, v0, Le2/g0;->S:Le2/l0;

    invoke-virtual {v4}, Le2/l0;->j()V

    iget-object v4, v0, Le2/g0;->t:Le2/g0;

    if-nez v4, :cond_1f

    const/16 v4, 0x200

    invoke-virtual {v1, v4}, Le2/c1;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-virtual {v0, v0}, Le2/g0;->d0(Le2/g0;)V

    :cond_1f
    if-ne v8, v2, :cond_20

    if-eq v11, v3, :cond_22

    :cond_20
    invoke-static {v0}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v1

    check-cast v1, Lf2/y;

    invoke-virtual {v1}, Lf2/y;->getRectManager()Ln2/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Le2/g0;->H()Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v1, v1, Ln2/b;->a:Ld1/c0;

    iget v0, v0, Le2/g0;->m:I

    const v4, 0x1ffffff

    and-int/2addr v0, v4

    iget-object v5, v1, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v5, [J

    iget v1, v1, Ld1/c0;->b:I

    const/4 v13, 0x0

    :goto_17
    array-length v6, v5

    add-int/lit8 v6, v6, -0x2

    if-ge v13, v6, :cond_22

    if-ge v13, v1, :cond_22

    add-int/lit8 v6, v13, 0x2

    aget-wide v7, v5, v6

    long-to-int v9, v7

    and-int/2addr v9, v4

    if-ne v9, v0, :cond_21

    const-wide v0, -0x6000000000000001L

    and-long/2addr v0, v7

    const-wide/high16 v7, 0x2000000000000000L

    int-to-long v3, v3

    mul-long/2addr v3, v7

    or-long/2addr v0, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    int-to-long v7, v2

    mul-long/2addr v7, v3

    or-long/2addr v0, v7

    aput-wide v0, v5, v6

    return-void

    :cond_21
    add-int/lit8 v13, v13, 0x3

    goto :goto_17

    :cond_22
    return-void
.end method

.method public final c0(I)V
    .locals 2

    iget v0, p0, Le2/g0;->b0:I

    if-eq v0, p1, :cond_2

    if-lez p1, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Le2/g0;->b0:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Le2/g0;->c0(I)V

    :cond_0
    if-nez p1, :cond_1

    iget v0, p0, Le2/g0;->b0:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v0, Le2/g0;->b0:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Le2/g0;->c0(I)V

    :cond_1
    iput p1, p0, Le2/g0;->b0:I

    :cond_2
    return-void
.end method

.method public final d(Le2/q1;)V
    .locals 9

    iget-object v0, p0, Le2/g0;->z:Le2/q1;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Cannot attach "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " as it already is attached.  Tree: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Le2/g0;->g(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Le2/g0;->y:Le2/g0;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, v0, Le2/g0;->z:Le2/q1;

    invoke-static {v0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Attaching to a different owner("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") than the parent\'s owner("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, v3, Le2/g0;->z:Le2/q1;

    goto :goto_1

    :cond_2
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "). This tree: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Le2/g0;->g(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Parent tree: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le2/g0;->y:Le2/g0;

    if-eqz v3, :cond_3

    invoke-virtual {v3, v1}, Le2/g0;->g(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_4
    :goto_3
    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object v0

    iget-object v3, p0, Le2/g0;->S:Le2/l0;

    const/4 v4, 0x1

    if-nez v0, :cond_5

    iget-object v5, v3, Le2/l0;->p:Le2/x0;

    iput-boolean v4, v5, Le2/x0;->D:Z

    move-object v5, p1

    check-cast v5, Lf2/y;

    invoke-virtual {v5}, Lf2/y;->getRectManager()Ln2/b;

    move-result-object v5

    invoke-virtual {v5, p0, v1}, Ln2/b;->e(Le2/g0;Z)V

    iget-object v5, v3, Le2/l0;->q:Le2/t0;

    if-eqz v5, :cond_5

    sget-object v6, Le2/r0;->l:Le2/r0;

    iput-object v6, v5, Le2/t0;->B:Le2/r0;

    :cond_5
    iget-object v5, p0, Le2/g0;->R:Le2/c1;

    iget-object v6, v5, Le2/c1;->d:Le2/h1;

    if-eqz v0, :cond_6

    iget-object v7, v0, Le2/g0;->R:Le2/c1;

    iget-object v7, v7, Le2/c1;->c:Le2/s;

    goto :goto_4

    :cond_6
    move-object v7, v2

    :goto_4
    iput-object v7, v6, Le2/h1;->B:Le2/h1;

    iput-object p1, p0, Le2/g0;->z:Le2/q1;

    if-eqz v0, :cond_7

    iget v6, v0, Le2/g0;->B:I

    goto :goto_5

    :cond_7
    const/4 v6, -0x1

    :goto_5
    add-int/2addr v6, v4

    iput v6, p0, Le2/g0;->B:I

    iget-object v6, p0, Le2/g0;->X:Lf1/r;

    if-eqz v6, :cond_8

    invoke-virtual {p0, v6}, Le2/g0;->c(Lf1/r;)V

    :cond_8
    iput-object v2, p0, Le2/g0;->X:Lf1/r;

    move-object v2, p1

    check-cast v2, Lf2/y;

    invoke-virtual {v2}, Lf2/y;->getLayoutNodes()Lk/x;

    move-result-object v6

    iget v7, p0, Le2/g0;->m:I

    invoke-virtual {v6, v7, p0}, Lk/x;->h(ILjava/lang/Object;)V

    iget-object v6, p0, Le2/g0;->y:Le2/g0;

    if-eqz v6, :cond_9

    iget-object v6, v6, Le2/g0;->t:Le2/g0;

    if-nez v6, :cond_a

    :cond_9
    iget-object v6, p0, Le2/g0;->t:Le2/g0;

    :cond_a
    invoke-virtual {p0, v6}, Le2/g0;->d0(Le2/g0;)V

    iget-object v6, p0, Le2/g0;->t:Le2/g0;

    if-nez v6, :cond_b

    const/16 v6, 0x200

    invoke-virtual {v5, v6}, Le2/c1;->d(I)Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {p0, p0}, Le2/g0;->d0(Le2/g0;)V

    :cond_b
    iget-boolean v6, p0, Le2/g0;->c0:Z

    if-nez v6, :cond_c

    iget-object v6, v5, Le2/c1;->f:Lf1/q;

    :goto_6
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lf1/q;->C0()V

    iget-object v6, v6, Lf1/q;->q:Lf1/q;

    goto :goto_6

    :cond_c
    iget-object v6, p0, Le2/g0;->v:Lg5/l;

    iget-object v6, v6, Lg5/l;->m:Ljava/lang/Object;

    check-cast v6, Lt0/b;

    iget-object v7, v6, Lt0/b;->l:[Ljava/lang/Object;

    iget v6, v6, Lt0/b;->n:I

    :goto_7
    if-ge v1, v6, :cond_d

    aget-object v8, v7, v1

    check-cast v8, Le2/g0;

    invoke-virtual {v8, p1}, Le2/g0;->d(Le2/q1;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_d
    iget-boolean v1, p0, Le2/g0;->c0:Z

    if-nez v1, :cond_e

    invoke-virtual {v5}, Le2/c1;->e()V

    :cond_e
    invoke-virtual {p0}, Le2/g0;->E()V

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Le2/g0;->E()V

    :cond_f
    iget-object v0, p0, Le2/g0;->Y:Le3/d;

    if-eqz v0, :cond_10

    invoke-virtual {v0, p1}, Le3/d;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-virtual {v3}, Le2/l0;->j()V

    iget-boolean p1, p0, Le2/g0;->c0:Z

    if-nez p1, :cond_11

    const/16 p1, 0x8

    invoke-virtual {v5, p1}, Le2/c1;->d(I)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Le2/g0;->F()V

    :cond_11
    iget-object p1, v2, Lf2/y;->W:Lg1/c;

    if-eqz p1, :cond_12

    invoke-virtual {p0}, Le2/g0;->x()Lm2/m;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, v0, Lm2/m;->l:Lk/m0;

    sget-object v1, Lm2/t;->q:Lm2/w;

    invoke-virtual {v0, v1}, Lk/m0;->b(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v4, :cond_12

    iget-object v0, p1, Lg1/c;->s:Lk/y;

    iget v1, p0, Le2/g0;->m:I

    invoke-virtual {v0, v1}, Lk/y;->a(I)Z

    iget-object v0, p1, Lg1/c;->l:Lb0/l1;

    iget-object p1, p1, Lg1/c;->n:Lf2/y;

    iget p0, p0, Le2/g0;->m:I

    invoke-virtual {v0, p1, p0, v4}, Lb0/l1;->x(Landroid/view/View;IZ)V

    :cond_12
    return-void
.end method

.method public final d0(Le2/g0;)V
    .locals 2

    iget-object v0, p0, Le2/g0;->t:Le2/g0;

    invoke-static {p1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Le2/g0;->t:Le2/g0;

    iget-object v0, p0, Le2/g0;->S:Le2/l0;

    if-eqz p1, :cond_1

    iget-object p1, v0, Le2/l0;->q:Le2/t0;

    if-nez p1, :cond_0

    new-instance p1, Le2/t0;

    invoke-direct {p1, v0}, Le2/t0;-><init>(Le2/l0;)V

    iput-object p1, v0, Le2/l0;->q:Le2/t0;

    :cond_0
    iget-object p1, p0, Le2/g0;->R:Le2/c1;

    iget-object v0, p1, Le2/c1;->d:Le2/h1;

    iget-object p1, p1, Le2/c1;->c:Le2/s;

    iget-object p1, p1, Le2/h1;->A:Le2/h1;

    :goto_0
    invoke-static {v0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Le2/h1;->P0()V

    iget-object v0, v0, Le2/h1;->A:Le2/h1;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, v0, Le2/l0;->q:Le2/t0;

    const/4 p1, 0x0

    iput-boolean p1, v0, Le2/l0;->f:Z

    iput-boolean p1, v0, Le2/l0;->e:Z

    :cond_2
    invoke-virtual {p0}, Le2/g0;->E()V

    :cond_3
    return-void
.end method

.method public final e()V
    .locals 5

    iget-object v0, p0, Le2/g0;->O:Le2/e0;

    iput-object v0, p0, Le2/g0;->P:Le2/e0;

    sget-object v0, Le2/e0;->n:Le2/e0;

    iput-object v0, p0, Le2/g0;->O:Le2/e0;

    invoke-virtual {p0}, Le2/g0;->z()Lt0/b;

    move-result-object p0

    iget-object v0, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget p0, p0, Lt0/b;->n:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, v0, v1

    check-cast v2, Le2/g0;

    iget-object v3, v2, Le2/g0;->O:Le2/e0;

    sget-object v4, Le2/e0;->n:Le2/e0;

    if-eq v3, v4, :cond_0

    invoke-virtual {v2}, Le2/g0;->e()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e0(Lc2/r0;)V
    .locals 1

    iget-object v0, p0, Le2/g0;->I:Lc2/r0;

    invoke-static {v0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Le2/g0;->I:Lc2/r0;

    iget-object v0, p0, Le2/g0;->J:Lg5/e;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg5/e;->n:Ljava/lang/Object;

    check-cast v0, Lr0/e1;

    invoke-virtual {v0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Le2/g0;->E()V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 5

    iget-object v0, p0, Le2/g0;->O:Le2/e0;

    iput-object v0, p0, Le2/g0;->P:Le2/e0;

    sget-object v0, Le2/e0;->n:Le2/e0;

    iput-object v0, p0, Le2/g0;->O:Le2/e0;

    invoke-virtual {p0}, Le2/g0;->z()Lt0/b;

    move-result-object p0

    iget-object v0, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget p0, p0, Lt0/b;->n:I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, v0, v1

    check-cast v2, Le2/g0;

    iget-object v3, v2, Le2/g0;->O:Le2/e0;

    sget-object v4, Le2/e0;->m:Le2/e0;

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Le2/g0;->f()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f0(Lf1/r;)V
    .locals 2

    iget-boolean v0, p0, Le2/g0;->l:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Le2/g0;->W:Lf1/r;

    sget-object v1, Lf1/o;->a:Lf1/o;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Modifiers are not supported on virtual LayoutNodes"

    invoke-static {v0}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Le2/g0;->c0:Z

    if-eqz v0, :cond_2

    const-string v0, "modifier is updated when deactivated"

    invoke-static {v0}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Le2/g0;->H()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Le2/g0;->c(Lf1/r;)V

    iget-boolean p1, p0, Le2/g0;->D:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Le2/g0;->F()V

    :cond_3
    return-void

    :cond_4
    iput-object p1, p0, Le2/g0;->X:Lf1/r;

    return-void
.end method

.method public final g(I)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v2, "|-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le2/g0;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le2/g0;->z()Lt0/b;

    move-result-object p0

    iget-object v2, p0, Lt0/b;->l:[Ljava/lang/Object;

    iget p0, p0, Lt0/b;->n:I

    move v3, v1

    :goto_1
    if-ge v3, p0, :cond_1

    aget-object v4, v2, v3

    check-cast v4, Le2/g0;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Le2/g0;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "substring(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method public final g0(Lf2/p2;)V
    .locals 7

    iget-object v0, p0, Le2/g0;->M:Lf2/p2;

    invoke-static {v0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iput-object p1, p0, Le2/g0;->M:Lf2/p2;

    iget-object p0, p0, Le2/g0;->R:Le2/c1;

    iget-object p0, p0, Le2/c1;->f:Lf1/q;

    iget p1, p0, Lf1/q;->o:I

    const/16 v0, 0x10

    and-int/2addr p1, v0

    if-eqz p1, :cond_8

    :goto_0
    if-eqz p0, :cond_8

    iget p1, p0, Lf1/q;->n:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    move-object v1, p0

    move-object v2, p1

    :goto_1
    if-eqz v1, :cond_7

    instance-of v3, v1, Le2/v1;

    if-eqz v3, :cond_0

    check-cast v1, Le2/v1;

    invoke-interface {v1}, Le2/v1;->o0()V

    goto :goto_4

    :cond_0
    iget v3, v1, Lf1/q;->n:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_6

    instance-of v3, v1, Le2/k;

    if-eqz v3, :cond_6

    move-object v3, v1

    check-cast v3, Le2/k;

    iget-object v3, v3, Le2/k;->A:Lf1/q;

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x1

    if-eqz v3, :cond_5

    iget v6, v3, Lf1/q;->n:I

    and-int/2addr v6, v0

    if-eqz v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    move-object v1, v3

    goto :goto_3

    :cond_1
    if-nez v2, :cond_2

    new-instance v2, Lt0/b;

    new-array v5, v0, [Lf1/q;

    invoke-direct {v2, v5}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v2, v1}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v1, p1

    :cond_3
    invoke-virtual {v2, v3}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    iget-object v3, v3, Lf1/q;->q:Lf1/q;

    goto :goto_2

    :cond_5
    if-ne v4, v5, :cond_6

    goto :goto_1

    :cond_6
    :goto_4
    invoke-static {v2}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v1

    goto :goto_1

    :cond_7
    iget p1, p0, Lf1/q;->o:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_8

    iget-object p0, p0, Lf1/q;->q:Lf1/q;

    goto :goto_0

    :cond_8
    return-void
.end method

.method public final h()V
    .locals 11

    iget-object v0, p0, Le2/g0;->z:Le2/q1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Cannot detach node that is already detached!  Tree: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, v2}, Le2/g0;->g(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb2/a;->c(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    invoke-virtual {p0}, Le2/g0;->v()Le2/g0;

    move-result-object v3

    iget-object v4, p0, Le2/g0;->S:Le2/l0;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Le2/g0;->C()V

    invoke-virtual {v3}, Le2/g0;->E()V

    iget-object v3, v4, Le2/l0;->p:Le2/x0;

    sget-object v5, Le2/e0;->n:Le2/e0;

    iput-object v5, v3, Le2/x0;->w:Le2/e0;

    iget-object v3, v4, Le2/l0;->q:Le2/t0;

    if-eqz v3, :cond_2

    iput-object v5, v3, Le2/t0;->u:Le2/e0;

    :cond_2
    iget-object v3, v4, Le2/l0;->p:Le2/x0;

    iget-object v3, v3, Le2/x0;->I:Le2/h0;

    const/4 v5, 0x1

    iput-boolean v5, v3, Le2/h0;->b:Z

    iput-boolean v2, v3, Le2/h0;->c:Z

    iput-boolean v2, v3, Le2/h0;->e:Z

    iput-boolean v2, v3, Le2/h0;->d:Z

    iput-boolean v2, v3, Le2/h0;->f:Z

    iput-boolean v2, v3, Le2/h0;->g:Z

    iput-object v1, v3, Le2/h0;->h:Le2/a;

    iget-object v3, v4, Le2/l0;->q:Le2/t0;

    if-eqz v3, :cond_3

    iget-object v3, v3, Le2/t0;->C:Le2/h0;

    if-eqz v3, :cond_3

    iput-boolean v5, v3, Le2/h0;->b:Z

    iput-boolean v2, v3, Le2/h0;->c:Z

    iput-boolean v2, v3, Le2/h0;->e:Z

    iput-boolean v2, v3, Le2/h0;->d:Z

    iput-boolean v2, v3, Le2/h0;->f:Z

    iput-boolean v2, v3, Le2/h0;->g:Z

    iput-object v1, v3, Le2/h0;->h:Le2/a;

    :cond_3
    iget-object v3, p0, Le2/g0;->R:Le2/c1;

    iget-object v6, v3, Le2/c1;->d:Le2/h1;

    iget-object v7, v3, Le2/c1;->e:Le2/b2;

    iget-object v8, v3, Le2/c1;->c:Le2/s;

    iget-object v8, v8, Le2/h1;->A:Le2/h1;

    :goto_0
    invoke-static {v6, v8}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Le2/h1;->m1()V

    iget-object v9, v6, Le2/h1;->z:Le2/g0;

    invoke-virtual {v9}, Le2/g0;->I()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v6}, Le2/h1;->h1()V

    :cond_4
    iget-object v6, v6, Le2/h1;->A:Le2/h1;

    goto :goto_0

    :cond_5
    iget-object v6, p0, Le2/g0;->Z:Le3/e;

    if-eqz v6, :cond_6

    invoke-virtual {v6, v0}, Le3/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    move-object v6, v7

    :goto_1
    if-eqz v6, :cond_8

    iget-boolean v8, v6, Lf1/q;->y:Z

    if-eqz v8, :cond_7

    invoke-virtual {v6}, Lf1/q;->J0()V

    :cond_7
    iget-object v6, v6, Lf1/q;->p:Lf1/q;

    goto :goto_1

    :cond_8
    iput-boolean v5, p0, Le2/g0;->C:Z

    iget-object v6, p0, Le2/g0;->v:Lg5/l;

    iget-object v6, v6, Lg5/l;->m:Ljava/lang/Object;

    check-cast v6, Lt0/b;

    iget-object v8, v6, Lt0/b;->l:[Ljava/lang/Object;

    iget v6, v6, Lt0/b;->n:I

    move v9, v2

    :goto_2
    if-ge v9, v6, :cond_9

    aget-object v10, v8, v9

    check-cast v10, Le2/g0;

    invoke-virtual {v10}, Le2/g0;->h()V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_9
    iput-boolean v2, p0, Le2/g0;->C:Z

    :goto_3
    if-eqz v7, :cond_b

    iget-boolean v6, v7, Lf1/q;->y:Z

    if-eqz v6, :cond_a

    invoke-virtual {v7}, Lf1/q;->D0()V

    :cond_a
    iget-object v7, v7, Lf1/q;->p:Lf1/q;

    goto :goto_3

    :cond_b
    check-cast v0, Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getLayoutNodes()Lk/x;

    move-result-object v6

    iget v7, p0, Le2/g0;->m:I

    invoke-virtual {v6, v7}, Lk/x;->g(I)Ljava/lang/Object;

    iget-object v6, v0, Lf2/y;->i0:Le2/v0;

    iget-object v7, v6, Le2/v0;->b:Lg5/m;

    iget-object v8, v7, Lg5/m;->m:Ljava/lang/Object;

    check-cast v8, Lb0/l1;

    invoke-virtual {v8, p0}, Lb0/l1;->z(Le2/g0;)Z

    iget-object v8, v7, Lg5/m;->n:Ljava/lang/Object;

    check-cast v8, Lb0/l1;

    invoke-virtual {v8, p0}, Lb0/l1;->z(Le2/g0;)Z

    iget-object v7, v7, Lg5/m;->o:Ljava/lang/Object;

    check-cast v7, Lb0/l1;

    invoke-virtual {v7, p0}, Lb0/l1;->z(Le2/g0;)Z

    iget-object v6, v6, Le2/v0;->e:Lg5/s;

    iget-object v6, v6, Lg5/s;->l:Ljava/lang/Object;

    check-cast v6, Lt0/b;

    invoke-virtual {v6, p0}, Lt0/b;->j(Ljava/lang/Object;)Z

    iput-boolean v5, v0, Lf2/y;->a0:Z

    iget-object v5, v0, Lf2/y;->W:Lg1/c;

    if-eqz v5, :cond_c

    iget-object v6, v5, Lg1/c;->s:Lk/y;

    iget v7, p0, Le2/g0;->m:I

    invoke-virtual {v6, v7}, Lk/y;->e(I)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v5, Lg1/c;->l:Lb0/l1;

    iget-object v5, v5, Lg1/c;->n:Lf2/y;

    iget v7, p0, Le2/g0;->m:I

    invoke-virtual {v6, v5, v7, v2}, Lb0/l1;->x(Landroid/view/View;IZ)V

    :cond_c
    invoke-virtual {v0}, Lf2/y;->getRectManager()Ln2/b;

    move-result-object v5

    invoke-virtual {v5, p0}, Ln2/b;->g(Le2/g0;)V

    iput-object v1, p0, Le2/g0;->z:Le2/q1;

    invoke-virtual {p0, v1}, Le2/g0;->d0(Le2/g0;)V

    iput v2, p0, Le2/g0;->B:I

    iget-object v5, v4, Le2/l0;->p:Le2/x0;

    const v6, 0x7fffffff

    iput v6, v5, Le2/x0;->t:I

    iput v6, v5, Le2/x0;->s:I

    iput-boolean v2, v5, Le2/x0;->D:Z

    iget-object v4, v4, Le2/l0;->q:Le2/t0;

    if-eqz v4, :cond_d

    iput v6, v4, Le2/t0;->t:I

    iput v6, v4, Le2/t0;->s:I

    sget-object v5, Le2/r0;->n:Le2/r0;

    iput-object v5, v4, Le2/t0;->B:Le2/r0;

    :cond_d
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Le2/c1;->d(I)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Le2/g0;->E:Lm2/m;

    iput-object v1, p0, Le2/g0;->E:Lm2/m;

    iput-boolean v2, p0, Le2/g0;->D:Z

    invoke-virtual {v0}, Lf2/y;->getSemanticsOwner()Lm2/r;

    move-result-object v1

    invoke-virtual {v1, p0, v3}, Lm2/r;->b(Le2/g0;Lm2/m;)V

    invoke-virtual {v0}, Lf2/y;->C()V

    :cond_e
    return-void
.end method

.method public final h0()V
    .locals 6

    iget v0, p0, Le2/g0;->u:I

    if-lez v0, :cond_3

    iget-boolean v0, p0, Le2/g0;->x:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Le2/g0;->x:Z

    iget-object v1, p0, Le2/g0;->w:Lt0/b;

    if-nez v1, :cond_0

    new-instance v1, Lt0/b;

    const/16 v2, 0x10

    new-array v2, v2, [Le2/g0;

    invoke-direct {v1, v2}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iput-object v1, p0, Le2/g0;->w:Lt0/b;

    :cond_0
    invoke-virtual {v1}, Lt0/b;->g()V

    iget-object v2, p0, Le2/g0;->v:Lg5/l;

    iget-object v2, v2, Lg5/l;->m:Ljava/lang/Object;

    check-cast v2, Lt0/b;

    iget-object v3, v2, Lt0/b;->l:[Ljava/lang/Object;

    iget v2, v2, Lt0/b;->n:I

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v4, v3, v0

    check-cast v4, Le2/g0;

    iget-boolean v5, v4, Le2/g0;->l:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Le2/g0;->z()Lt0/b;

    move-result-object v4

    iget v5, v1, Lt0/b;->n:I

    invoke-virtual {v1, v5, v4}, Lt0/b;->d(ILt0/b;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Lt0/b;->b(Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object v0, p0, Le2/l0;->p:Le2/x0;

    const/4 v1, 0x1

    iput-boolean v1, v0, Le2/x0;->K:Z

    iget-object p0, p0, Le2/l0;->q:Le2/t0;

    if-eqz p0, :cond_3

    iput-boolean v1, p0, Le2/t0;->E:Z

    :cond_3
    return-void
.end method

.method public final i(Lm1/o;Lp1/b;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Le2/g0;->R:Le2/c1;

    iget-object v0, v0, Le2/c1;->d:Le2/h1;

    invoke-virtual {v0, p1, p2}, Le2/h1;->N0(Lm1/o;Lp1/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Le2/g0;->a0(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, Le2/g0;->t:Le2/g0;

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {p0, v2, v1}, Le2/g0;->V(Le2/g0;ZI)V

    goto :goto_0

    :cond_0
    invoke-static {p0, v2, v1}, Le2/g0;->X(Le2/g0;ZI)V

    :goto_0
    iget-object v0, p0, Le2/g0;->S:Le2/l0;

    iget-object v0, v0, Le2/l0;->p:Le2/x0;

    iget-boolean v1, v0, Le2/x0;->u:Z

    if-eqz v1, :cond_1

    iget-wide v0, v0, Lc2/f1;->o:J

    new-instance v2, Lb3/a;

    invoke-direct {v2, v0, v1}, Lb3/a;-><init>(J)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    iget-object v0, p0, Le2/g0;->z:Le2/q1;

    if-eqz v0, :cond_3

    iget-wide v1, v2, Lb3/a;->a:J

    check-cast v0, Lf2/y;

    invoke-virtual {v0, p0, v1, v2}, Lf2/y;->v(Le2/g0;J)V

    return-void

    :cond_2
    iget-object p0, p0, Le2/g0;->z:Le2/q1;

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    check-cast p0, Lf2/y;

    invoke-virtual {p0, v0}, Lf2/y;->u(Z)V

    :cond_3
    return-void
.end method

.method public final l()Ljava/util/List;
    .locals 9

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->q:Le2/t0;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v0, p0, Le2/t0;->D:Lt0/b;

    iget-object v1, p0, Le2/t0;->q:Le2/l0;

    iget-object v2, v1, Le2/l0;->a:Le2/g0;

    invoke-virtual {v2}, Le2/g0;->n()Ljava/util/List;

    iget-boolean v2, p0, Le2/t0;->E:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lt0/b;->f()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, v1, Le2/l0;->a:Le2/g0;

    invoke-virtual {v1}, Le2/g0;->z()Lt0/b;

    move-result-object v2

    iget-object v3, v2, Lt0/b;->l:[Ljava/lang/Object;

    iget v2, v2, Lt0/b;->n:I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v6, v3, v5

    check-cast v6, Le2/g0;

    iget v7, v0, Lt0/b;->n:I

    if-gt v7, v5, :cond_1

    iget-object v6, v6, Le2/g0;->S:Le2/l0;

    iget-object v6, v6, Le2/l0;->q:Le2/t0;

    invoke-static {v6}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v6, v6, Le2/g0;->S:Le2/l0;

    iget-object v6, v6, Le2/l0;->q:Le2/t0;

    invoke-static {v6}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v7, v0, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v8, v7, v5

    aput-object v6, v7, v5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Le2/g0;->n()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lk/f0;

    iget-object v1, v1, Lk/f0;->m:Ljava/lang/Object;

    check-cast v1, Lt0/b;

    iget v1, v1, Lt0/b;->n:I

    iget v2, v0, Lt0/b;->n:I

    invoke-virtual {v0, v1, v2}, Lt0/b;->l(II)V

    iput-boolean v4, p0, Le2/t0;->E:Z

    invoke-virtual {v0}, Lt0/b;->f()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final m()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->p:Le2/x0;

    invoke-virtual {p0}, Le2/x0;->s0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final n()Ljava/util/List;
    .locals 0

    invoke-virtual {p0}, Le2/g0;->z()Lt0/b;

    move-result-object p0

    invoke-virtual {p0}, Lt0/b;->f()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final o()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Le2/g0;->v:Lg5/l;

    iget-object p0, p0, Lg5/l;->m:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    invoke-virtual {p0}, Lt0/b;->f()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final p()Z
    .locals 0

    invoke-virtual {p0}, Le2/g0;->H()Z

    move-result p0

    return p0
.end method

.method public final q()Z
    .locals 0

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->p:Le2/x0;

    iget-boolean p0, p0, Le2/x0;->G:Z

    return p0
.end method

.method public final r()Z
    .locals 0

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->p:Le2/x0;

    iget-boolean p0, p0, Le2/x0;->F:Z

    return p0
.end method

.method public final s()Le2/e0;
    .locals 0

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->p:Le2/x0;

    iget-object p0, p0, Le2/x0;->w:Le2/e0;

    return-object p0
.end method

.method public final t()Le2/e0;
    .locals 0

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->q:Le2/t0;

    if-eqz p0, :cond_1

    iget-object p0, p0, Le2/t0;->u:Le2/e0;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    sget-object p0, Le2/e0;->n:Le2/e0;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lf2/k0;->p(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " children: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le2/g0;->n()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lk/f0;

    iget-object v1, v1, Lk/f0;->m:Ljava/lang/Object;

    check-cast v1, Lt0/b;

    iget v1, v1, Lt0/b;->n:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " measurePolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le2/g0;->I:Lc2/r0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " deactivated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Le2/g0;->c0:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u()Lg5/e;
    .locals 2

    iget-object v0, p0, Le2/g0;->J:Lg5/e;

    if-nez v0, :cond_0

    new-instance v0, Lg5/e;

    iget-object v1, p0, Le2/g0;->I:Lc2/r0;

    invoke-direct {v0, p0, v1}, Lg5/e;-><init>(Le2/g0;Lc2/r0;)V

    iput-object v0, p0, Le2/g0;->J:Lg5/e;

    :cond_0
    return-object v0
.end method

.method public final v()Le2/g0;
    .locals 2

    iget-object p0, p0, Le2/g0;->y:Le2/g0;

    :goto_0
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Le2/g0;->l:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Le2/g0;->y:Le2/g0;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final w()I
    .locals 0

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->p:Le2/x0;

    iget p0, p0, Le2/x0;->t:I

    return p0
.end method

.method public final x()Lm2/m;
    .locals 2

    invoke-virtual {p0}, Le2/g0;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Le2/g0;->c0:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Le2/g0;->R:Le2/c1;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Le2/c1;->d(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Le2/g0;->E:Lm2/m;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final y()Lt0/b;
    .locals 5

    iget-boolean v0, p0, Le2/g0;->H:Z

    iget-object v1, p0, Le2/g0;->G:Lt0/b;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lt0/b;->g()V

    invoke-virtual {p0}, Le2/g0;->z()Lt0/b;

    move-result-object v0

    iget v2, v1, Lt0/b;->n:I

    invoke-virtual {v1, v2, v0}, Lt0/b;->d(ILt0/b;)V

    iget-object v0, v1, Lt0/b;->l:[Ljava/lang/Object;

    iget v2, v1, Lt0/b;->n:I

    sget-object v3, Le2/g0;->f0:Lcom/graphhopper/isochrone/algorithm/b;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4, v2}, Lu8/l;->D0([Ljava/lang/Object;Ljava/util/Comparator;II)V

    iput-boolean v4, p0, Le2/g0;->H:Z

    :cond_0
    return-object v1
.end method

.method public final z()Lt0/b;
    .locals 1

    invoke-virtual {p0}, Le2/g0;->h0()V

    iget v0, p0, Le2/g0;->u:I

    if-nez v0, :cond_0

    iget-object p0, p0, Le2/g0;->v:Lg5/l;

    iget-object p0, p0, Lg5/l;->m:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    return-object p0

    :cond_0
    iget-object p0, p0, Le2/g0;->w:Lt0/b;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    return-object p0
.end method
