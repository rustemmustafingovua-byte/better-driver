.class public final Lz0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz0/c;


# instance fields
.field public final l:I

.field public final m:Z

.field public n:Lt8/e;

.field public o:Lr0/n1;

.field public p:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(IZLt8/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz0/d;->l:I

    iput-boolean p2, p0, Lz0/d;->m:Z

    iput-object p3, p0, Lz0/d;->n:Lt8/e;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lr0/q;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lz0/d;->h(Ljava/lang/Object;Lr0/q;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p3, Lr0/q;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lz0/d;->g(Ljava/lang/Object;Ljava/lang/Object;Lr0/q;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p4, Lr0/q;

    check-cast p5, Ljava/lang/Number;

    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result p5

    invoke-virtual/range {p0 .. p5}, Lz0/d;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lr0/q;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lr0/q;I)Ljava/lang/Object;
    .locals 10

    move-object/from16 v6, p6

    iget v0, p0, Lz0/d;->l:I

    invoke-virtual {v6, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p0, v6}, Lz0/d;->j(Lr0/q;)V

    invoke-virtual {v6, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0, v1}, Lz0/i;->a(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, v1}, Lz0/i;->a(II)I

    move-result v0

    :goto_0
    or-int v0, p7, v0

    iget-object v1, p0, Lz0/d;->n:Lt8/e;

    const/16 v2, 0x8

    invoke-static {v2, v1}, Lj9/b0;->b(ILjava/lang/Object;)V

    check-cast v1, Li9/j;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v0, v1

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Li9/j;->e(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lr0/q;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual/range {p6 .. p6}, Lr0/q;->u()Lr0/n1;

    move-result-object v9

    if-eqz v9, :cond_1

    new-instance v1, Lod/k4;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lod/k4;-><init>(Lz0/d;Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v1, v9, Lr0/n1;->d:Li9/e;

    :cond_1
    return-object v0
.end method

.method public final bridge synthetic e(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lr0/q;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p7}, Ljava/lang/Number;->intValue()I

    move-result p7

    invoke-virtual/range {p0 .. p7}, Lz0/d;->d(Ljava/lang/Object;Ljava/lang/Boolean;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lr0/q;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Lr0/q;I)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lz0/d;->l:I

    invoke-virtual {p4, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p0, p4}, Lz0/d;->j(Lr0/q;)V

    invoke-virtual {p4, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0, v1}, Lz0/i;->a(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, v1}, Lz0/i;->a(II)I

    move-result v0

    :goto_0
    or-int/2addr v0, p5

    iget-object v1, p0, Lz0/d;->n:Lt8/e;

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lj9/b0;->b(ILjava/lang/Object;)V

    move-object v3, v1

    check-cast v3, Li9/h;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-interface/range {v3 .. v8}, Li9/h;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, v4

    move-object v3, v5

    move-object v4, v6

    invoke-virtual {v7}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v0, Lb4/c;

    const/4 v6, 0x5

    move-object v1, p0

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lb4/c;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;II)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_1
    return-object p1
.end method

.method public final g(Ljava/lang/Object;Ljava/lang/Object;Lr0/q;I)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lz0/d;->l:I

    invoke-virtual {p3, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p0, p3}, Lz0/d;->j(Lr0/q;)V

    invoke-virtual {p3, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    invoke-static {v1, v1}, Lz0/i;->a(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, v1}, Lz0/i;->a(II)I

    move-result v0

    :goto_0
    or-int/2addr v0, p4

    iget-object v1, p0, Lz0/d;->n:Lt8/e;

    const/4 v2, 0x4

    invoke-static {v2, v1}, Lj9/b0;->b(ILjava/lang/Object;)V

    check-cast v1, Li9/g;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, p2, p3, v0}, Li9/g;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3}, Lr0/q;->u()Lr0/n1;

    move-result-object p3

    if-eqz p3, :cond_1

    new-instance v1, Lb0/a3;

    const/16 v3, 0x10

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v2, p4

    invoke-direct/range {v1 .. v6}, Lb0/a3;-><init>(IILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p3, Lr0/n1;->d:Li9/e;

    :cond_1
    return-object v0
.end method

.method public final h(Ljava/lang/Object;Lr0/q;I)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lz0/d;->l:I

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p0, p2}, Lz0/d;->j(Lr0/q;)V

    invoke-virtual {p2, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-static {v0, v1}, Lz0/i;->a(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {v1, v1}, Lz0/i;->a(II)I

    move-result v0

    :goto_0
    or-int/2addr v0, p3

    iget-object v1, p0, Lz0/d;->n:Lt8/e;

    const/4 v2, 0x3

    invoke-static {v2, v1}, Lj9/b0;->b(ILjava/lang/Object;)V

    check-cast v1, Li9/f;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, p2, v0}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_1

    new-instance v1, Lb0/h;

    const/4 v2, 0x7

    invoke-direct {v1, p3, v2, p0, p1}, Lb0/h;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p2, Lr0/n1;->d:Li9/e;

    :cond_1
    return-object v0
.end method

.method public final i(Lr0/q;I)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lz0/d;->l:I

    invoke-virtual {p1, v0}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {p0, p1}, Lz0/d;->j(Lr0/q;)V

    invoke-virtual {p1, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1, v2}, Lz0/i;->a(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0, v2}, Lz0/i;->a(II)I

    move-result v0

    :goto_0
    or-int/2addr p2, v0

    iget-object v0, p0, Lz0/d;->n:Lt8/e;

    invoke-static {v1, v0}, Lj9/b0;->b(ILjava/lang/Object;)V

    check-cast v0, Li9/e;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lr0/q;->u()Lr0/n1;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lr/c2;

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v1, 0x2

    const-class v3, Lz0/d;

    const-string v4, "invoke"

    const-string v5, "invoke(Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;"

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lr/c2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p1, Lr0/n1;->d:Li9/e;

    :cond_1
    return-object p2
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lr0/q;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lz0/d;->i(Lr0/q;I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final j(Lr0/q;)V
    .locals 3

    iget-boolean v0, p0, Lz0/d;->m:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lr0/q;->B()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, v0, Lr0/n1;->b:I

    or-int/lit8 p1, p1, 0x1

    iput p1, v0, Lr0/n1;->b:I

    iget-object p1, p0, Lz0/d;->o:Lr0/n1;

    invoke-static {p1, v0}, Lz0/i;->d(Lr0/n1;Lr0/n1;)Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v0, p0, Lz0/d;->o:Lr0/n1;

    return-void

    :cond_0
    iget-object p1, p0, Lz0/d;->p:Ljava/util/ArrayList;

    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lz0/d;->p:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0/n1;

    invoke-static {v2, v0}, Lz0/i;->d(Lr0/n1;Lr0/n1;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method
