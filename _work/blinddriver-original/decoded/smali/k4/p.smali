.class public abstract Lk4/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public final c:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 1

    const-string v0, "database"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lk4/p;->a:Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lk4/p;->b:Ljava/lang/Object;

    .line 4
    new-instance p1, Lc2/l0;

    const/16 v0, 0xc

    invoke-direct {p1, v0, p0}, Lc2/l0;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Ly4/s;->y(Li9/a;)Lt8/o;

    move-result-object p1

    iput-object p1, p0, Lk4/p;->c:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 36

    move-object/from16 v0, p0

    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    const-string v2, "randomUUID()"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lk4/p;->a:Ljava/lang/Object;

    .line 7
    new-instance v3, Lg5/o;

    iget-object v1, v0, Lk4/p;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v1, "id.toString()"

    invoke-static {v4, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v18, 0x0

    const/16 v28, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const v35, 0xfffffa

    .line 8
    invoke-direct/range {v3 .. v35}, Lg5/o;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lx4/h;Lx4/h;JJJLx4/d;IIJJJJZIIJIILjava/lang/String;I)V

    .line 9
    iput-object v3, v0, Lk4/p;->b:Ljava/lang/Object;

    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 11
    new-instance v2, Ljava/util/LinkedHashSet;

    const/4 v3, 0x1

    invoke-static {v3}, Lu8/v;->J(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    invoke-static {v1, v2}, Lu8/l;->G0([Ljava/lang/Object;Ljava/util/LinkedHashSet;)V

    .line 12
    iput-object v2, v0, Lk4/p;->c:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public a()Lr4/i;
    .locals 3

    iget-object v0, p0, Lk4/p;->a:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->a()V

    iget-object v0, p0, Lk4/p;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lk4/p;->c:Ljava/io/Serializable;

    check-cast p0, Lt8/o;

    invoke-virtual {p0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr4/i;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lk4/p;->d()Lr4/i;

    move-result-object p0

    return-object p0
.end method

.method public b()Lx4/z;
    .locals 42

    move-object/from16 v0, p0

    invoke-virtual {v0}, Lk4/p;->c()Lx4/z;

    move-result-object v1

    iget-object v2, v0, Lk4/p;->b:Ljava/lang/Object;

    check-cast v2, Lg5/o;

    iget-object v2, v2, Lg5/o;->j:Lx4/d;

    invoke-virtual {v2}, Lx4/d;->b()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lx4/d;->e:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Lx4/d;->c:Z

    if-nez v3, :cond_1

    iget-boolean v2, v2, Lx4/d;->d:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    iget-object v3, v0, Lk4/p;->b:Ljava/lang/Object;

    check-cast v3, Lg5/o;

    iget-boolean v6, v3, Lg5/o;->q:Z

    if-eqz v6, :cond_4

    if-nez v2, :cond_3

    iget-wide v6, v3, Lg5/o;->g:J

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-gtz v2, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs cannot be delayed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs only support network and storage constraints"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v2, v3, Lg5/o;->x:Ljava/lang/String;

    if-nez v2, :cond_7

    iget-object v2, v3, Lg5/o;->c:Ljava/lang/String;

    const-string v6, "."

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lr9/k;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v4, :cond_5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    :cond_5
    invoke-static {v2}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v5, v2}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_4
    iput-object v2, v3, Lg5/o;->x:Ljava/lang/String;

    :cond_7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    const-string v3, "randomUUID()"

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v0, Lk4/p;->a:Ljava/lang/Object;

    new-instance v4, Lg5/o;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v2, "id.toString()"

    invoke-static {v5, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lk4/p;->b:Ljava/lang/Object;

    check-cast v2, Lg5/o;

    const-string v3, "other"

    invoke-static {v2, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, v2, Lg5/o;->c:Ljava/lang/String;

    iget v6, v2, Lg5/o;->b:I

    iget-object v8, v2, Lg5/o;->d:Ljava/lang/String;

    new-instance v9, Lx4/h;

    iget-object v3, v2, Lg5/o;->e:Lx4/h;

    invoke-direct {v9, v3}, Lx4/h;-><init>(Lx4/h;)V

    new-instance v10, Lx4/h;

    iget-object v3, v2, Lg5/o;->f:Lx4/h;

    invoke-direct {v10, v3}, Lx4/h;-><init>(Lx4/h;)V

    iget-wide v11, v2, Lg5/o;->g:J

    iget-wide v13, v2, Lg5/o;->h:J

    move-object v15, v4

    iget-wide v3, v2, Lg5/o;->i:J

    move-object/from16 v37, v1

    new-instance v1, Lx4/d;

    move-wide/from16 v16, v3

    iget-object v3, v2, Lg5/o;->j:Lx4/d;

    invoke-direct {v1, v3}, Lx4/d;-><init>(Lx4/d;)V

    iget v3, v2, Lg5/o;->k:I

    iget v4, v2, Lg5/o;->l:I

    move/from16 v18, v3

    move/from16 v19, v4

    iget-wide v3, v2, Lg5/o;->m:J

    move-wide/from16 v20, v3

    iget-wide v3, v2, Lg5/o;->n:J

    move-wide/from16 v22, v3

    iget-wide v3, v2, Lg5/o;->o:J

    move-wide/from16 v24, v3

    iget-wide v3, v2, Lg5/o;->p:J

    move-object/from16 v26, v1

    iget-boolean v1, v2, Lg5/o;->q:Z

    move/from16 v28, v1

    iget v1, v2, Lg5/o;->r:I

    move/from16 v29, v1

    iget v1, v2, Lg5/o;->s:I

    move-wide/from16 v30, v3

    iget-wide v3, v2, Lg5/o;->u:J

    move/from16 v27, v1

    iget v1, v2, Lg5/o;->v:I

    move/from16 v33, v1

    iget v1, v2, Lg5/o;->w:I

    iget-object v2, v2, Lg5/o;->x:Ljava/lang/String;

    const/high16 v36, 0x80000

    move/from16 v34, v1

    move-object/from16 v35, v2

    move-wide/from16 v38, v3

    move-object v4, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v26

    move-wide/from16 v40, v30

    move/from16 v30, v27

    move-wide/from16 v31, v38

    move-wide/from16 v26, v40

    invoke-direct/range {v4 .. v36}, Lg5/o;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lx4/h;Lx4/h;JJJLx4/d;IIJJJJZIIJIILjava/lang/String;I)V

    move-object v15, v4

    iput-object v15, v0, Lk4/p;->b:Ljava/lang/Object;

    return-object v37
.end method

.method public abstract c()Lx4/z;
.end method

.method public d()Lr4/i;
    .locals 1

    invoke-virtual {p0}, Lk4/p;->e()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lk4/p;->a:Ljava/lang/Object;

    check-cast p0, Landroidx/work/impl/WorkDatabase;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->a()V

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {p0}, Landroidx/work/impl/WorkDatabase;->h()Lq4/b;

    move-result-object p0

    invoke-interface {p0}, Lq4/b;->v()Lr4/b;

    move-result-object p0

    invoke-virtual {p0, v0}, Lr4/b;->d(Ljava/lang/String;)Lr4/i;

    move-result-object p0

    return-object p0
.end method

.method public abstract e()Ljava/lang/String;
.end method

.method public f(Lr4/i;)V
    .locals 1

    const-string v0, "statement"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lk4/p;->c:Ljava/io/Serializable;

    check-cast v0, Lt8/o;

    invoke-virtual {v0}, Lt8/o;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr4/i;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lk4/p;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method
