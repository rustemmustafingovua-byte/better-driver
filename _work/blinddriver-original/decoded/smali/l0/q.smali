.class public final Ll0/q;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/x;
.implements Le2/n;
.implements Le2/z1;


# instance fields
.field public A:Lp2/m0;

.field public B:Lt2/d;

.field public C:Li9/c;

.field public D:I

.field public E:Z

.field public F:I

.field public G:I

.field public H:Ljava/util/List;

.field public I:Li9/c;

.field public J:Ll0/i;

.field public K:Li9/c;

.field public L:Ljava/util/Map;

.field public M:Ll0/d;

.field public N:Ll0/o;

.field public O:Ll0/p;

.field public z:Lp2/g;


# direct methods
.method public constructor <init>(Lp2/g;Lp2/m0;Lt2/d;Li9/c;IZIILjava/util/List;Li9/c;Ll0/i;Li9/c;)V
    .locals 0

    invoke-direct {p0}, Lf1/q;-><init>()V

    iput-object p1, p0, Ll0/q;->z:Lp2/g;

    iput-object p2, p0, Ll0/q;->A:Lp2/m0;

    iput-object p3, p0, Ll0/q;->B:Lt2/d;

    iput-object p4, p0, Ll0/q;->C:Li9/c;

    iput p5, p0, Ll0/q;->D:I

    iput-boolean p6, p0, Ll0/q;->E:Z

    iput p7, p0, Ll0/q;->F:I

    iput p8, p0, Ll0/q;->G:I

    iput-object p9, p0, Ll0/q;->H:Ljava/util/List;

    iput-object p10, p0, Ll0/q;->I:Li9/c;

    iput-object p11, p0, Ll0/q;->J:Ll0/i;

    iput-object p12, p0, Ll0/q;->K:Li9/c;

    return-void
.end method


# virtual methods
.method public final B0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final C(Lm2/x;)V
    .locals 6

    iget-object v0, p0, Ll0/q;->N:Ll0/o;

    if-nez v0, :cond_0

    new-instance v0, Ll0/o;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ll0/o;-><init>(Ll0/q;I)V

    iput-object v0, p0, Ll0/q;->N:Ll0/o;

    :cond_0
    iget-object v1, p0, Ll0/q;->z:Lp2/g;

    sget-object v2, Lm2/v;->a:[Lp9/d;

    sget-object v2, Lm2/t;->B:Lm2/w;

    invoke-static {v1}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    iget-object v1, p0, Ll0/q;->O:Ll0/p;

    if-eqz v1, :cond_1

    iget-object v2, v1, Ll0/p;->b:Lp2/g;

    sget-object v3, Lm2/t;->C:Lm2/w;

    sget-object v4, Lm2/v;->a:[Lp9/d;

    const/16 v5, 0x10

    aget-object v5, v4, v5

    invoke-interface {p1, v3, v2}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    iget-boolean v1, v1, Ll0/p;->c:Z

    sget-object v2, Lm2/t;->D:Lm2/w;

    const/16 v3, 0x11

    aget-object v3, v4, v3

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    :cond_1
    new-instance v1, Ll0/o;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ll0/o;-><init>(Ll0/q;I)V

    sget-object v2, Lm2/l;->l:Lm2/w;

    new-instance v3, Lm2/a;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, v2, v3}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    new-instance v1, Ll0/o;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Ll0/o;-><init>(Ll0/q;I)V

    sget-object v2, Lm2/l;->m:Lm2/w;

    new-instance v3, Lm2/a;

    invoke-direct {v3, v4, v1}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, v2, v3}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    new-instance v1, Lad/t;

    const/16 v2, 0x14

    invoke-direct {v1, v2, p0}, Lad/t;-><init>(ILjava/lang/Object;)V

    sget-object p0, Lm2/l;->n:Lm2/w;

    new-instance v2, Lm2/a;

    invoke-direct {v2, v4, v1}, Lm2/a;-><init>(Ljava/lang/String;Lt8/e;)V

    invoke-interface {p1, p0, v2}, Lm2/x;->a(Lm2/w;Ljava/lang/Object;)V

    invoke-static {p1, v0}, Lm2/v;->a(Lm2/x;Li9/c;)V

    return-void
.end method

.method public final I(Le2/p0;Lc2/q0;I)I
    .locals 0

    invoke-virtual {p0, p1}, Ll0/q;->O0(Lb3/c;)Ll0/d;

    move-result-object p0

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Ll0/d;->a(ILb3/m;)I

    move-result p0

    return p0
.end method

.method public final M0(ZZZZ)V
    .locals 13

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    invoke-virtual {p0}, Ll0/q;->N0()Ll0/d;

    move-result-object v0

    iget-object v1, p0, Ll0/q;->z:Lp2/g;

    iget-object v2, p0, Ll0/q;->A:Lp2/m0;

    iget-object v3, p0, Ll0/q;->B:Lt2/d;

    iget v4, p0, Ll0/q;->D:I

    iget-boolean v5, p0, Ll0/q;->E:Z

    iget v6, p0, Ll0/q;->F:I

    iget v7, p0, Ll0/q;->G:I

    iget-object v8, p0, Ll0/q;->H:Ljava/util/List;

    iput-object v1, v0, Ll0/d;->a:Lp2/g;

    iget-object v1, v0, Ll0/d;->k:Lp2/m0;

    invoke-virtual {v2, v1}, Lp2/m0;->c(Lp2/m0;)Z

    move-result v1

    iput-object v2, v0, Ll0/d;->k:Lp2/m0;

    const/4 v2, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-nez v1, :cond_1

    iget-wide v11, v0, Ll0/d;->q:J

    shl-long/2addr v11, v10

    iput-wide v11, v0, Ll0/d;->q:J

    iput-object v9, v0, Ll0/d;->l:Landroidx/lifecycle/a1;

    iput-object v9, v0, Ll0/d;->n:Lp2/j0;

    iput v2, v0, Ll0/d;->p:I

    iput v2, v0, Ll0/d;->o:I

    :cond_1
    iput-object v3, v0, Ll0/d;->b:Lt2/d;

    iput v4, v0, Ll0/d;->c:I

    iput-boolean v5, v0, Ll0/d;->d:Z

    iput v6, v0, Ll0/d;->e:I

    iput v7, v0, Ll0/d;->f:I

    iput-object v8, v0, Ll0/d;->g:Ljava/util/List;

    iget-wide v3, v0, Ll0/d;->q:J

    shl-long/2addr v3, v10

    const-wide/16 v5, 0x2

    or-long/2addr v3, v5

    iput-wide v3, v0, Ll0/d;->q:J

    iput-object v9, v0, Ll0/d;->l:Landroidx/lifecycle/a1;

    iput-object v9, v0, Ll0/d;->n:Lp2/j0;

    iput v2, v0, Ll0/d;->p:I

    iput v2, v0, Ll0/d;->o:I

    :cond_2
    iget-boolean v0, p0, Lf1/q;->y:Z

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    if-eqz p1, :cond_5

    iget-object v0, p0, Ll0/q;->N:Ll0/o;

    if-eqz v0, :cond_5

    :cond_4
    invoke-static {p0}, Le2/l;->m(Le2/z1;)V

    :cond_5
    if-nez p2, :cond_6

    if-nez p3, :cond_6

    if-eqz p4, :cond_7

    :cond_6
    invoke-static {p0}, Le2/l;->l(Le2/x;)V

    invoke-static {p0}, Le2/l;->k(Le2/n;)V

    :cond_7
    if-eqz p1, :cond_8

    invoke-static {p0}, Le2/l;->k(Le2/n;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public final N0()Ll0/d;
    .locals 10

    iget-object v0, p0, Ll0/q;->M:Ll0/d;

    if-nez v0, :cond_0

    new-instance v1, Ll0/d;

    iget-object v2, p0, Ll0/q;->z:Lp2/g;

    iget-object v3, p0, Ll0/q;->A:Lp2/m0;

    iget-object v4, p0, Ll0/q;->B:Lt2/d;

    iget v5, p0, Ll0/q;->D:I

    iget-boolean v6, p0, Ll0/q;->E:Z

    iget v7, p0, Ll0/q;->F:I

    iget v8, p0, Ll0/q;->G:I

    iget-object v9, p0, Ll0/q;->H:Ljava/util/List;

    invoke-direct/range {v1 .. v9}, Ll0/d;-><init>(Lp2/g;Lp2/m0;Lt2/d;IZIILjava/util/List;)V

    iput-object v1, p0, Ll0/q;->M:Ll0/d;

    :cond_0
    iget-object p0, p0, Ll0/q;->M:Ll0/d;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final O0(Lb3/c;)Ll0/d;
    .locals 2

    iget-object v0, p0, Ll0/q;->O:Ll0/p;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Ll0/p;->c:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Ll0/p;->d:Ll0/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ll0/d;->d(Lb3/c;)V

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ll0/q;->N0()Ll0/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Ll0/d;->d(Lb3/c;)V

    return-object p0
.end method

.method public final P0(Li9/c;Li9/c;Ll0/i;Li9/c;)Z
    .locals 2

    iget-object v0, p0, Ll0/q;->C:Li9/c;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Ll0/q;->C:Li9/c;

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Ll0/q;->I:Li9/c;

    if-eq v0, p2, :cond_1

    iput-object p2, p0, Ll0/q;->I:Li9/c;

    move p1, v1

    :cond_1
    iget-object p2, p0, Ll0/q;->J:Ll0/i;

    invoke-static {p2, p3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iput-object p3, p0, Ll0/q;->J:Ll0/i;

    move p1, v1

    :cond_2
    iget-object p2, p0, Ll0/q;->K:Li9/c;

    if-eq p2, p4, :cond_3

    iput-object p4, p0, Ll0/q;->K:Li9/c;

    return v1

    :cond_3
    return p1
.end method

.method public final Q0(Lp2/m0;Ljava/util/List;IIZLt2/d;I)Z
    .locals 2

    iget-object v0, p0, Ll0/q;->A:Lp2/m0;

    invoke-virtual {v0, p1}, Lp2/m0;->c(Lp2/m0;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-object p1, p0, Ll0/q;->A:Lp2/m0;

    iget-object p1, p0, Ll0/q;->H:Ljava/util/List;

    invoke-static {p1, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iput-object p2, p0, Ll0/q;->H:Ljava/util/List;

    move v0, v1

    :cond_0
    iget p1, p0, Ll0/q;->G:I

    if-eq p1, p3, :cond_1

    iput p3, p0, Ll0/q;->G:I

    move v0, v1

    :cond_1
    iget p1, p0, Ll0/q;->F:I

    if-eq p1, p4, :cond_2

    iput p4, p0, Ll0/q;->F:I

    move v0, v1

    :cond_2
    iget-boolean p1, p0, Ll0/q;->E:Z

    if-eq p1, p5, :cond_3

    iput-boolean p5, p0, Ll0/q;->E:Z

    move v0, v1

    :cond_3
    iget-object p1, p0, Ll0/q;->B:Lt2/d;

    invoke-static {p1, p6}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iput-object p6, p0, Ll0/q;->B:Lt2/d;

    move v0, v1

    :cond_4
    iget p1, p0, Ll0/q;->D:I

    if-ne p1, p7, :cond_5

    move v1, v0

    goto :goto_0

    :cond_5
    iput p7, p0, Ll0/q;->D:I

    :goto_0
    return v1
.end method

.method public final R0(Lp2/g;)Z
    .locals 3

    iget-object v0, p0, Ll0/q;->z:Lp2/g;

    iget-object v0, v0, Lp2/g;->m:Ljava/lang/String;

    iget-object v1, p1, Lp2/g;->m:Ljava/lang/String;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Ll0/q;->z:Lp2/g;

    iget-object v1, v1, Lp2/g;->l:Ljava/util/List;

    iget-object v2, p1, Lp2/g;->l:Ljava/util/List;

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    iput-object p1, p0, Ll0/q;->z:Lp2/g;

    :cond_2
    if-nez v0, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Ll0/q;->O:Ll0/p;

    :cond_3
    return v1
.end method

.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 4

    const-string v0, "TextAnnotatedStringNode:measure"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Ll0/q;->O0(Lb3/c;)Ll0/d;

    move-result-object v0

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v1

    invoke-virtual {v0, p3, p4, v1}, Ll0/d;->c(JLb3/m;)Z

    move-result p3

    iget-object p4, v0, Ll0/d;->n:Lp2/j0;

    if-eqz p4, :cond_5

    iget-wide v0, p4, Lp2/j0;->c:J

    iget-object v2, p4, Lp2/j0;->b:Lp2/n;

    iget-object v2, v2, Lp2/n;->a:Landroidx/lifecycle/a1;

    invoke-virtual {v2}, Landroidx/lifecycle/a1;->a()Z

    if-eqz p3, :cond_3

    const/4 p3, 0x2

    invoke-static {p0, p3}, Le2/l;->t(Le2/j;I)Le2/h1;

    move-result-object v2

    invoke-virtual {v2}, Le2/h1;->b1()V

    iget-object v2, p0, Ll0/q;->C:Li9/c;

    if-eqz v2, :cond_0

    invoke-interface {v2, p4}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v2, p0, Ll0/q;->J:Ll0/i;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p4}, Ll0/i;->b(Lp2/j0;)V

    :cond_1
    iget-object v2, p0, Ll0/q;->L:Ljava/util/Map;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, p3}, Ljava/util/LinkedHashMap;-><init>(I)V

    :cond_2
    sget-object p3, Lc2/d;->a:Lc2/k;

    iget v3, p4, Lp2/j0;->d:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Lc2/d;->b:Lc2/k;

    iget v3, p4, Lp2/j0;->e:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, p0, Ll0/q;->L:Ljava/util/Map;

    :cond_3
    iget-object p3, p0, Ll0/q;->I:Li9/c;

    if-eqz p3, :cond_4

    iget-object p4, p4, Lp2/j0;->f:Ljava/util/ArrayList;

    invoke-interface {p3, p4}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/16 p3, 0x20

    shr-long p3, v0, p3

    long-to-int p3, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p4, v0

    invoke-static {p3, p3, p4, p4}, Ll9/a;->m(IIII)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object p2

    iget-object p0, p0, Ll0/q;->L:Ljava/util/Map;

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    new-instance v0, Lb0/y2;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Lb0/y2;-><init>(Lc2/f1;I)V

    invoke-interface {p1, p3, p4, p0, v0}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :cond_5
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Internal Error: MultiParagraphLayoutCache could not provide TextLayoutResult during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public final b0(Le2/p0;Lc2/q0;I)I
    .locals 0

    invoke-virtual {p0, p1}, Ll0/q;->O0(Lb3/c;)Ll0/d;

    move-result-object p0

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Ll0/d;->a(ILb3/m;)I

    move-result p0

    return p0
.end method

.method public final o(Le2/p0;Lc2/q0;I)I
    .locals 0

    invoke-virtual {p0, p1}, Ll0/q;->O0(Lb3/c;)Ll0/d;

    move-result-object p0

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll0/d;->e(Lb3/m;)Landroidx/lifecycle/a1;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/a1;->d()F

    move-result p0

    invoke-static {p0}, Lb0/n1;->o(F)I

    move-result p0

    return p0
.end method

.method public final x0(Le2/p0;Lc2/q0;I)I
    .locals 0

    invoke-virtual {p0, p1}, Ll0/q;->O0(Lb3/c;)Ll0/d;

    move-result-object p0

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object p1

    invoke-virtual {p0, p1}, Ll0/d;->e(Lb3/m;)Landroidx/lifecycle/a1;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/lifecycle/a1;->c()F

    move-result p0

    invoke-static {p0}, Lb0/n1;->o(F)I

    move-result p0

    return p0
.end method

.method public final z(Le2/j0;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v7, v1, Le2/j0;->l:Lo1/b;

    iget-boolean v2, v0, Lf1/q;->y:Z

    if-nez v2, :cond_0

    goto/16 :goto_12

    :cond_0
    iget-object v2, v0, Ll0/q;->J:Ll0/i;

    const/4 v8, 0x3

    const-wide v9, 0xffffffffL

    const/16 v11, 0x20

    const/4 v12, 0x0

    if-eqz v2, :cond_d

    iget-object v3, v2, Ll0/i;->m:Lm0/i1;

    invoke-virtual {v3}, Lm0/i1;->a()Lk/b0;

    move-result-object v3

    iget-wide v4, v2, Ll0/i;->l:J

    invoke-virtual {v3, v4, v5}, Lk/b0;->e(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm0/a0;

    if-nez v3, :cond_1

    goto :goto_5

    :cond_1
    iget-object v4, v3, Lm0/a0;->b:Lm0/z;

    iget-object v5, v3, Lm0/a0;->a:Lm0/z;

    iget-boolean v3, v3, Lm0/a0;->c:Z

    if-nez v3, :cond_2

    iget v6, v5, Lm0/z;->b:I

    goto :goto_0

    :cond_2
    iget v6, v4, Lm0/z;->b:I

    :goto_0
    if-nez v3, :cond_3

    iget v3, v4, Lm0/z;->b:I

    goto :goto_1

    :cond_3
    iget v3, v5, Lm0/z;->b:I

    :goto_1
    if-ne v6, v3, :cond_4

    goto :goto_5

    :cond_4
    iget-object v4, v2, Ll0/i;->p:Lm0/q;

    if-eqz v4, :cond_6

    iget-object v5, v4, Lm0/q;->c:Ll0/h;

    invoke-virtual {v5}, Ll0/h;->invoke()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lp2/j0;

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v5}, Lm0/q;->b(Lp2/j0;)I

    move-result v4

    goto :goto_3

    :cond_6
    :goto_2
    move v4, v12

    :goto_3
    if-le v6, v4, :cond_7

    move v6, v4

    :cond_7
    if-le v3, v4, :cond_8

    move v3, v4

    :cond_8
    iget-object v4, v2, Ll0/i;->o:Ll0/m;

    iget-object v4, v4, Ll0/m;->b:Lp2/j0;

    if-eqz v4, :cond_9

    invoke-virtual {v4, v6, v3}, Lp2/j0;->i(II)Lm1/g;

    move-result-object v3

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    if-nez v3, :cond_a

    :goto_5
    goto/16 :goto_9

    :cond_a
    iget-object v4, v2, Ll0/i;->o:Ll0/m;

    iget-object v4, v4, Ll0/m;->b:Lp2/j0;

    if-eqz v4, :cond_c

    iget-object v5, v4, Lp2/j0;->a:Lp2/i0;

    iget v5, v5, Lp2/i0;->f:I

    if-ne v5, v8, :cond_b

    goto :goto_8

    :cond_b
    invoke-virtual {v4}, Lp2/j0;->d()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v7}, Lo1/d;->d()J

    move-result-wide v4

    shr-long/2addr v4, v11

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v16

    invoke-interface {v7}, Lo1/d;->d()J

    move-result-wide v4

    and-long/2addr v4, v9

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v17

    iget-object v4, v7, Lo1/b;->m:Lg5/m;

    invoke-virtual {v4}, Lg5/m;->m()J

    move-result-wide v5

    invoke-virtual {v4}, Lg5/m;->h()Lm1/o;

    move-result-object v13

    invoke-interface {v13}, Lm1/o;->h()V

    :try_start_0
    iget-object v13, v4, Lg5/m;->m:Ljava/lang/Object;

    check-cast v13, Lm2/j;

    iget-object v13, v13, Lm2/j;->m:Ljava/lang/Object;

    check-cast v13, Lg5/m;

    invoke-virtual {v13}, Lg5/m;->h()Lm1/o;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x1

    invoke-interface/range {v13 .. v18}, Lm1/o;->o(FFFFI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v13, v3

    move-object v14, v4

    :try_start_1
    iget-wide v3, v2, Ll0/i;->n:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-wide v15, v5

    const/4 v5, 0x0

    const/16 v6, 0x3c

    move-wide/from16 v24, v15

    move-wide v15, v9

    move-wide/from16 v9, v24

    move-object v2, v13

    :try_start_2
    invoke-static/range {v1 .. v6}, Lo1/d;->q(Lo1/d;Lm1/g;JLo1/e;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v14, v9, v10}, Lm/a;->t(Lg5/m;J)V

    goto :goto_a

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    :goto_6
    move-wide v9, v5

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v14, v4

    goto :goto_6

    :goto_7
    invoke-static {v14, v9, v10}, Lm/a;->t(Lg5/m;J)V

    throw v0

    :cond_c
    :goto_8
    move-object v13, v3

    move-wide v15, v9

    iget-wide v3, v2, Ll0/i;->n:J

    const/4 v5, 0x0

    const/16 v6, 0x3c

    move-object/from16 v1, p1

    move-object v2, v13

    invoke-static/range {v1 .. v6}, Lo1/d;->q(Lo1/d;Lm1/g;JLo1/e;I)V

    goto :goto_a

    :cond_d
    :goto_9
    move-wide v15, v9

    :goto_a
    iget-object v1, v7, Lo1/b;->m:Lg5/m;

    invoke-virtual {v1}, Lg5/m;->h()Lm1/o;

    move-result-object v1

    invoke-virtual/range {p0 .. p1}, Ll0/q;->O0(Lb3/c;)Ll0/d;

    move-result-object v2

    iget-object v3, v2, Ll0/d;->n:Lp2/j0;

    if-eqz v3, :cond_1e

    iget-object v2, v3, Lp2/j0;->b:Lp2/n;

    invoke-virtual {v3}, Lp2/j0;->d()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_f

    iget v4, v0, Ll0/q;->D:I

    if-ne v4, v8, :cond_e

    goto :goto_b

    :cond_e
    move v4, v5

    goto :goto_c

    :cond_f
    :goto_b
    move v4, v12

    :goto_c
    if-eqz v4, :cond_10

    iget-wide v6, v3, Lp2/j0;->c:J

    shr-long v8, v6, v11

    long-to-int v3, v8

    int-to-float v3, v3

    and-long/2addr v6, v15

    long-to-int v6, v6

    int-to-float v6, v6

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v7, v3

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v9, v3

    shl-long v6, v7, v11

    and-long v8, v9, v15

    or-long/2addr v6, v8

    const-wide/16 v8, 0x0

    invoke-static {v8, v9, v6, v7}, Lr5/u0;->c(JJ)Ll1/c;

    move-result-object v3

    invoke-interface {v1}, Lm1/o;->h()V

    invoke-static {v1, v3}, Lm1/o;->r(Lm1/o;Ll1/c;)V

    :cond_10
    :try_start_3
    iget-object v3, v0, Ll0/q;->A:Lp2/m0;

    iget-object v3, v3, Lp2/m0;->a:Lp2/e0;

    iget-object v6, v3, Lp2/e0;->m:La3/l;

    if-nez v6, :cond_11

    sget-object v6, La3/l;->b:La3/l;

    :cond_11
    move-object/from16 v22, v6

    goto :goto_d

    :catchall_3
    move-exception v0

    move-object/from16 v18, v1

    goto/16 :goto_14

    :goto_d
    iget-object v6, v3, Lp2/e0;->n:Lm1/g0;

    if-nez v6, :cond_12

    sget-object v6, Lm1/g0;->d:Lm1/g0;

    :cond_12
    move-object/from16 v21, v6

    iget-object v6, v3, Lp2/e0;->p:Lo1/e;

    if-nez v6, :cond_13

    sget-object v6, Lo1/g;->a:Lo1/g;

    :cond_13
    move-object/from16 v23, v6

    iget-object v3, v3, Lp2/e0;->a:La3/o;

    invoke-interface {v3}, La3/o;->b()Lm1/m;

    move-result-object v19

    if-eqz v19, :cond_14

    iget-object v3, v0, Ll0/q;->A:Lp2/m0;

    iget-object v3, v3, Lp2/m0;->a:Lp2/e0;

    iget-object v3, v3, Lp2/e0;->a:La3/o;

    invoke-interface {v3}, La3/o;->c()F

    move-result v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    :try_start_4
    invoke-static/range {v17 .. v23}, Lp2/n;->j(Lp2/n;Lm1/o;Lm1/m;FLm1/g0;La3/l;Lo1/e;)V

    goto :goto_10

    :catchall_4
    move-exception v0

    goto :goto_14

    :cond_14
    move-object/from16 v18, v1

    move-object/from16 v17, v2

    sget-wide v1, Lm1/p;->g:J

    const-wide/16 v6, 0x10

    cmp-long v3, v1, v6

    if-eqz v3, :cond_15

    :goto_e
    move-wide/from16 v19, v1

    goto :goto_f

    :cond_15
    iget-object v1, v0, Ll0/q;->A:Lp2/m0;

    invoke-virtual {v1}, Lp2/m0;->b()J

    move-result-wide v1

    cmp-long v1, v1, v6

    if-eqz v1, :cond_16

    iget-object v1, v0, Ll0/q;->A:Lp2/m0;

    invoke-virtual {v1}, Lp2/m0;->b()J

    move-result-wide v1

    goto :goto_e

    :cond_16
    sget-wide v1, Lm1/p;->b:J

    goto :goto_e

    :goto_f
    invoke-static/range {v17 .. v23}, Lp2/n;->i(Lp2/n;Lm1/o;JLm1/g0;La3/l;Lo1/e;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :goto_10
    if-eqz v4, :cond_17

    invoke-interface/range {v18 .. v18}, Lm1/o;->q()V

    :cond_17
    iget-object v1, v0, Ll0/q;->O:Ll0/p;

    if-eqz v1, :cond_18

    iget-boolean v1, v1, Ll0/p;->c:Z

    if-ne v1, v5, :cond_18

    move v1, v12

    goto :goto_11

    :cond_18
    iget-object v1, v0, Ll0/q;->z:Lp2/g;

    invoke-static {v1}, Ll7/a;->q(Lp2/g;)Z

    move-result v1

    :goto_11
    if-nez v1, :cond_1c

    iget-object v0, v0, Ll0/q;->H:Ljava/util/List;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_19
    move v12, v5

    :cond_1a
    if-nez v12, :cond_1b

    goto :goto_13

    :cond_1b
    :goto_12
    return-void

    :cond_1c
    :goto_13
    invoke-virtual/range {p1 .. p1}, Le2/j0;->b()V

    return-void

    :goto_14
    if-eqz v4, :cond_1d

    invoke-interface/range {v18 .. v18}, Lm1/o;->q()V

    :cond_1d
    throw v0

    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Internal Error: MultiParagraphLayoutCache could not provide TextLayoutResult during the draw phase. Please report this bug on the official Issue Tracker with the following diagnostic information: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
