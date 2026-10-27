.class public final Lw/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk/x;

.field public final b:Lw/g;

.field public final c:Lx/y;

.field public final d:J

.field public final synthetic e:Z

.field public final synthetic f:Lx/y;

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Lf1/d;

.field public final synthetic j:Lf1/i;

.field public final synthetic k:I

.field public final synthetic l:I

.field public final synthetic m:J

.field public final synthetic n:Lw/p;


# direct methods
.method public constructor <init>(JZLw/g;Lx/y;IILf1/d;Lf1/i;IIJLw/p;)V
    .locals 0

    iput-boolean p3, p0, Lw/i;->e:Z

    iput-object p5, p0, Lw/i;->f:Lx/y;

    iput p6, p0, Lw/i;->g:I

    iput p7, p0, Lw/i;->h:I

    iput-object p8, p0, Lw/i;->i:Lf1/d;

    iput-object p9, p0, Lw/i;->j:Lf1/i;

    iput p10, p0, Lw/i;->k:I

    iput p11, p0, Lw/i;->l:I

    iput-wide p12, p0, Lw/i;->m:J

    iput-object p14, p0, Lw/i;->n:Lw/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p6, Lk/l;->a:Lk/x;

    new-instance p6, Lk/x;

    invoke-direct {p6}, Lk/x;-><init>()V

    iput-object p6, p0, Lw/i;->a:Lk/x;

    iput-object p4, p0, Lw/i;->b:Lw/g;

    iput-object p5, p0, Lw/i;->c:Lx/y;

    const p4, 0x7fffffff

    if-eqz p3, :cond_0

    invoke-static {p1, p2}, Lb3/a;->h(J)I

    move-result p5

    goto :goto_0

    :cond_0
    move p5, p4

    :goto_0
    if-nez p3, :cond_1

    invoke-static {p1, p2}, Lb3/a;->g(J)I

    move-result p4

    :cond_1
    const/4 p1, 0x5

    invoke-static {p5, p4, p1}, Lb3/b;->b(III)J

    move-result-wide p1

    iput-wide p1, p0, Lw/i;->d:J

    return-void
.end method


# virtual methods
.method public final a(IJ)Lw/l;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lw/i;->b:Lw/g;

    invoke-virtual {v2, v1}, Lw/g;->d(I)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v2, v1}, Lw/g;->b(I)Ljava/lang/Object;

    move-result-object v13

    iget-object v2, v0, Lw/i;->a:Lk/x;

    invoke-virtual {v2, v1}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-wide/from16 v9, p2

    move-object v2, v3

    goto :goto_2

    :cond_0
    iget-object v3, v0, Lw/i;->c:Lx/y;

    iget-object v5, v3, Lx/y;->n:Lw/g;

    iget-object v6, v3, Lx/y;->o:Lk/x;

    invoke-virtual {v6, v1}, Lk/k;->b(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v1}, Lw/g;->d(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v1}, Lw/g;->b(I)Ljava/lang/Object;

    move-result-object v5

    iget-object v8, v3, Lx/y;->l:Lx/u;

    invoke-virtual {v8, v1, v7, v5}, Lx/u;->a(ILjava/lang/Object;Ljava/lang/Object;)Li9/e;

    move-result-object v5

    iget-object v3, v3, Lx/y;->m:Lc2/s1;

    invoke-interface {v3, v5, v7}, Lc2/s1;->i0(Li9/e;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v1, v7}, Lk/x;->h(ILjava/lang/Object;)V

    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_2

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc2/q0;

    move-wide/from16 v9, p2

    invoke-interface {v8, v9, v10}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move-wide/from16 v9, p2

    invoke-virtual {v2, v1, v5}, Lk/x;->h(ILjava/lang/Object;)V

    move-object v2, v5

    :goto_2
    iget v3, v0, Lw/i;->g:I

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_3

    goto :goto_3

    :cond_3
    iget v4, v0, Lw/i;->h:I

    :goto_3
    new-instance v3, Lw/l;

    iget-object v5, v0, Lw/i;->f:Lx/y;

    iget-object v5, v5, Lx/y;->m:Lc2/s1;

    invoke-interface {v5}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v6

    iget-object v5, v0, Lw/i;->n:Lw/p;

    iget-object v14, v5, Lw/p;->n:Lx/s;

    move-object v5, v3

    iget-boolean v3, v0, Lw/i;->e:Z

    move v9, v4

    iget-object v4, v0, Lw/i;->i:Lf1/d;

    move-object v7, v5

    iget-object v5, v0, Lw/i;->j:Lf1/i;

    move-object v8, v7

    iget v7, v0, Lw/i;->k:I

    move-object v10, v8

    iget v8, v0, Lw/i;->l:I

    iget-wide v0, v0, Lw/i;->m:J

    move-wide v15, v0

    move-object v0, v10

    move-wide v10, v15

    move/from16 v1, p1

    move-wide/from16 v15, p2

    invoke-direct/range {v0 .. v16}, Lw/l;-><init>(ILjava/util/List;ZLf1/d;Lf1/i;Lb3/m;IIIJLjava/lang/Object;Ljava/lang/Object;Lx/s;J)V

    return-object v0
.end method
