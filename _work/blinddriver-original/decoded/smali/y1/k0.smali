.class public final Ly1/k0;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Ly1/x;
.implements Lb3/c;
.implements Le2/v1;


# instance fields
.field public A:Ljava/lang/Object;

.field public B:Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

.field public C:Lu9/j1;

.field public D:Ly1/l;

.field public final E:Lt0/b;

.field public final F:Lt0/b;

.field public final G:Lt0/b;

.field public H:Ly1/l;

.field public I:J

.field public z:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/ui/input/pointer/PointerInputEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lf1/q;-><init>()V

    iput-object p1, p0, Ly1/k0;->z:Ljava/lang/Object;

    iput-object p2, p0, Ly1/k0;->A:Ljava/lang/Object;

    iput-object p3, p0, Ly1/k0;->B:Landroidx/compose/ui/input/pointer/PointerInputEventHandler;

    sget-object p1, Ly1/g0;->a:Ly1/l;

    iput-object p1, p0, Ly1/k0;->D:Ly1/l;

    new-instance p1, Lt0/b;

    const/16 p2, 0x10

    new-array p3, p2, [Ly1/j0;

    invoke-direct {p1, p3}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Ly1/k0;->E:Lt0/b;

    iput-object p1, p0, Ly1/k0;->F:Lt0/b;

    new-instance p1, Lt0/b;

    new-array p2, p2, [Ly1/j0;

    invoke-direct {p1, p2}, Lt0/b;-><init>([Ljava/lang/Object;)V

    iput-object p1, p0, Ly1/k0;->G:Lt0/b;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Ly1/k0;->I:J

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Ly1/k0;->H:Ly1/l;

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v1, v1, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly1/u;

    iget-boolean v5, v5, Ly1/u;->d:Z

    if-eqz v5, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ly1/u;

    iget-wide v7, v5, Ly1/u;->a:J

    iget-wide v11, v5, Ly1/u;->c:J

    iget-wide v9, v5, Ly1/u;->b:J

    iget v14, v5, Ly1/u;->e:F

    iget-boolean v6, v5, Ly1/u;->d:Z

    iget v5, v5, Ly1/u;->i:I

    move/from16 v19, v6

    new-instance v6, Ly1/u;

    const/4 v13, 0x0

    const-wide/16 v22, 0x0

    move-wide v15, v9

    move-wide/from16 v17, v11

    move/from16 v20, v19

    move/from16 v21, v5

    invoke-direct/range {v6 .. v23}, Ly1/u;-><init>(JJJZFJJZZIJ)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Ly1/l;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ly1/l;-><init>(Ljava/util/List;Lad/a2;)V

    iput-object v1, v0, Ly1/k0;->D:Ly1/l;

    sget-object v2, Ly1/m;->l:Ly1/m;

    invoke-virtual {v0, v1, v2}, Ly1/k0;->N0(Ly1/l;Ly1/m;)V

    sget-object v2, Ly1/m;->m:Ly1/m;

    invoke-virtual {v0, v1, v2}, Ly1/k0;->N0(Ly1/l;Ly1/m;)V

    sget-object v2, Ly1/m;->n:Ly1/m;

    invoke-virtual {v0, v1, v2}, Ly1/k0;->N0(Ly1/l;Ly1/m;)V

    iput-object v3, v0, Ly1/k0;->H:Ly1/l;

    return-void

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method public final F0()V
    .locals 0

    invoke-virtual {p0}, Ly1/k0;->O0()V

    return-void
.end method

.method public final M0(Li9/e;Ly8/c;)Ljava/lang/Object;
    .locals 3

    new-instance v0, Lu9/g;

    invoke-static {p2}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lu9/g;-><init>(ILy8/c;)V

    invoke-virtual {v0}, Lu9/g;->r()V

    new-instance p2, Ly1/j0;

    invoke-direct {p2, p0, v0}, Ly1/j0;-><init>(Ly1/k0;Lu9/g;)V

    iget-object v1, p0, Ly1/k0;->F:Lt0/b;

    monitor-enter v1

    :try_start_0
    iget-object p0, p0, Ly1/k0;->E:Lt0/b;

    invoke-virtual {p0, p2}, Lt0/b;->b(Ljava/lang/Object;)V

    new-instance p0, Ly8/j;

    invoke-static {p1, p2, p2}, Lg6/c1;->k(Li9/e;Ly8/c;Ly8/c;)Ly8/c;

    move-result-object p1

    invoke-static {p1}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object p1

    sget-object v2, Lz8/a;->l:Lz8/a;

    invoke-direct {p0, p1}, Ly8/j;-><init>(Ly8/c;)V

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Ly8/j;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    new-instance p0, Landroidx/fragment/app/t;

    const/16 p1, 0x1d

    invoke-direct {p0, p1, p2}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p0}, Lu9/g;->t(Li9/c;)V

    invoke-virtual {v0}, Lu9/g;->q()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v1

    throw p0
.end method

.method public final N0(Ly1/l;Ly1/m;)V
    .locals 6

    iget-object v0, p0, Ly1/k0;->F:Lt0/b;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ly1/k0;->G:Lt0/b;

    iget-object v2, p0, Ly1/k0;->E:Lt0/b;

    iget v3, v1, Lt0/b;->n:I

    invoke-virtual {v1, v3, v2}, Lt0/b;->d(ILt0/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, Landroidx/fragment/app/i0;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    iget-object v0, p0, Ly1/k0;->G:Lt0/b;

    iget v3, v0, Lt0/b;->n:I

    sub-int/2addr v3, v2

    iget-object v0, v0, Lt0/b;->l:[Ljava/lang/Object;

    array-length v2, v0

    if-ge v3, v2, :cond_5

    :goto_0
    if-ltz v3, :cond_5

    aget-object v2, v0, v3

    check-cast v2, Ly1/j0;

    iget-object v4, v2, Ly1/j0;->o:Ly1/m;

    if-ne p2, v4, :cond_2

    iget-object v4, v2, Ly1/j0;->n:Lu9/g;

    if-eqz v4, :cond_2

    iput-object v1, v2, Ly1/j0;->n:Lu9/g;

    invoke-virtual {v4, p1}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Ly1/k0;->G:Lt0/b;

    iget-object v2, v0, Lt0/b;->l:[Ljava/lang/Object;

    iget v0, v0, Lt0/b;->n:I

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_5

    aget-object v4, v2, v3

    check-cast v4, Ly1/j0;

    iget-object v5, v4, Ly1/j0;->o:Ly1/m;

    if-ne p2, v5, :cond_4

    iget-object v5, v4, Ly1/j0;->n:Lu9/g;

    if-eqz v5, :cond_4

    iput-object v1, v4, Ly1/j0;->n:Lu9/g;

    invoke-virtual {v5, p1}, Lu9/g;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object p0, p0, Ly1/k0;->G:Lt0/b;

    invoke-virtual {p0}, Lt0/b;->g()V

    return-void

    :goto_3
    iget-object p0, p0, Ly1/k0;->G:Lt0/b;

    invoke-virtual {p0}, Lt0/b;->g()V

    throw p1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final O0()V
    .locals 4

    iget-object v0, p0, Ly1/k0;->C:Lu9/j1;

    if-eqz v0, :cond_0

    new-instance v1, Lf1/s;

    const-string v2, "Pointer input was reset"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lb2/b;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lu9/c1;->u(Ljava/util/concurrent/CancellationException;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ly1/k0;->C:Lu9/j1;

    :cond_0
    return-void
.end method

.method public final S()F
    .locals 0

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    iget-object p0, p0, Le2/g0;->K:Lb3/c;

    invoke-interface {p0}, Lb3/c;->S()F

    move-result p0

    return p0
.end method

.method public final a()F
    .locals 0

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    iget-object p0, p0, Le2/g0;->K:Lb3/c;

    invoke-interface {p0}, Lb3/c;->a()F

    move-result p0

    return p0
.end method

.method public final c()V
    .locals 0

    invoke-virtual {p0}, Ly1/k0;->O0()V

    return-void
.end method

.method public final o0()V
    .locals 0

    invoke-virtual {p0}, Ly1/k0;->O0()V

    return-void
.end method

.method public final w0(Ly1/l;Ly1/m;J)V
    .locals 3

    iput-wide p3, p0, Ly1/k0;->I:J

    sget-object p3, Ly1/m;->l:Ly1/m;

    if-ne p2, p3, :cond_0

    iput-object p1, p0, Ly1/k0;->D:Ly1/l;

    :cond_0
    iget-object p3, p0, Ly1/k0;->C:Lu9/j1;

    const/4 p4, 0x0

    if-nez p3, :cond_1

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object p3

    sget-object v0, Lu9/u;->o:Lu9/u;

    new-instance v1, Lad/w;

    const/16 v2, 0x19

    invoke-direct {v1, p0, p4, v2}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    const/4 v2, 0x1

    invoke-static {p3, p4, v0, v1, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object p3

    iput-object p3, p0, Ly1/k0;->C:Lu9/j1;

    :cond_1
    invoke-virtual {p0, p1, p2}, Ly1/k0;->N0(Ly1/l;Ly1/m;)V

    iget-object p2, p1, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly1/u;

    invoke-static {v1}, Ly1/t;->d(Ly1/u;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move-object p1, p4

    :goto_1
    iput-object p1, p0, Ly1/k0;->H:Ly1/l;

    return-void
.end method
