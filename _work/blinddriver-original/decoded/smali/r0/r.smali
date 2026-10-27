.class public abstract Lr0/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/graphhopper/isochrone/algorithm/b;

.field public static final b:Ljava/lang/Object;

.field public static final c:Lr0/g0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/graphhopper/isochrone/algorithm/b;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/graphhopper/isochrone/algorithm/b;-><init>(I)V

    sput-object v0, Lr0/r;->a:Lcom/graphhopper/isochrone/algorithm/b;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr0/r;->b:Ljava/lang/Object;

    new-instance v0, Lr0/g0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr0/r;->c:Lr0/g0;

    return-void
.end method

.method public static final A(Lr0/q;Li9/c;)V
    .locals 2

    new-instance v0, Lod/y6;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p1}, Lod/y6;-><init>(ILjava/lang/Object;)V

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, v0, p1}, Lr0/q;->b(Li9/e;Ljava/lang/Object;)V

    return-void
.end method

.method public static final B(Lr0/q;)Lr0/p;
    .locals 9

    const/16 v0, 0xce

    sget-object v1, Lr0/s;->e:Lr0/y0;

    invoke-virtual {p0, v0, v1}, Lr0/q;->Z(ILr0/y0;)V

    iget-boolean v0, p0, Lr0/q;->S:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr0/q;->I:Lr0/h2;

    invoke-static {v0}, Lr0/h2;->z(Lr0/h2;)V

    :cond_0
    invoke-virtual {p0}, Lr0/q;->I()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lr0/y1;

    if-eqz v1, :cond_1

    check-cast v0, Lr0/y1;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    new-instance v0, Lr0/b2;

    new-instance v1, Lr0/o;

    new-instance v2, Lr0/p;

    iget-wide v4, p0, Lr0/q;->T:J

    iget-boolean v6, p0, Lr0/q;->q:Z

    iget-boolean v7, p0, Lr0/q;->C:Z

    iget-object v3, p0, Lr0/q;->h:Lr0/x;

    iget-object v8, v3, Lr0/x;->E:Lq3/k;

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lr0/p;-><init>(Lr0/q;JZZLq3/k;)V

    invoke-direct {v1, v2}, Lr0/o;-><init>(Lr0/p;)V

    const/4 p0, -0x1

    invoke-direct {v0, v1, p0}, Lr0/y1;-><init>(Lr0/x1;I)V

    invoke-virtual {v3, v0}, Lr0/q;->m0(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move-object v3, p0

    :goto_1
    iget-object p0, v0, Lr0/y1;->a:Lr0/x1;

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.ComposerImpl.CompositionContextHolder"

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lr0/o;

    iget-object p0, p0, Lr0/o;->l:Lr0/p;

    invoke-virtual {v3}, Lr0/q;->m()Lr0/j1;

    move-result-object v0

    iget-object v1, p0, Lr0/p;->f:Lr0/e1;

    invoke-virtual {v1, v0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lr0/q;->q(Z)V

    return-object p0
.end method

.method public static final C(Ljava/lang/Object;Lr0/q;)Lr0/u0;
    .locals 2

    invoke-virtual {p1}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_0
    check-cast v0, Lr0/u0;

    invoke-interface {v0, p0}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final D(Lr0/h2;ILjava/lang/Object;)V
    .locals 2

    invoke-virtual {p0, p1}, Lr0/h2;->h(I)I

    move-result p1

    iget-object p0, p0, Lr0/h2;->c:[Ljava/lang/Object;

    aget-object v0, p0, p1

    sget-object v1, Lr0/m;->a:Lr0/e;

    aput-object v1, p0, p1

    if-ne p2, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Slot table is out of sync (expected "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", got "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lr0/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static final E(Li9/e;Ljava/lang/Object;Lr0/q;)V
    .locals 1

    iget-boolean v0, p2, Lr0/q;->S:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Lr0/q;->l0(Ljava/lang/Object;)V

    invoke-virtual {p2, p0, p1}, Lr0/q;->b(Li9/e;Ljava/lang/Object;)V

    return-void
.end method

.method public static final F(Li9/a;)Lc5/n;
    .locals 2

    new-instance v0, Lf2/b3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lf2/b3;-><init>(Li9/a;Ly8/c;)V

    new-instance p0, Lc5/n;

    invoke-direct {p0, v0}, Lc5/n;-><init>(Li9/e;)V

    return-object p0
.end method

.method public static final G(Lk/w;)I
    .locals 10

    iget v0, p0, Lk/w;->b:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lk/w;->c(I)I

    move-result v1

    :cond_0
    iget v2, p0, Lk/w;->b:I

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0}, Lk/w;->c(I)I

    move-result v2

    if-ne v2, v1, :cond_3

    iget v2, p0, Lk/w;->b:I

    if-eqz v2, :cond_2

    iget-object v3, p0, Lk/w;->a:[I

    add-int/lit8 v2, v2, -0x1

    aget v2, v3, v2

    invoke-virtual {p0, v0, v2}, Lk/w;->e(II)V

    iget v2, p0, Lk/w;->b:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lk/w;->d(I)V

    iget v2, p0, Lk/w;->b:I

    ushr-int/lit8 v3, v2, 0x1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {p0, v4}, Lk/w;->c(I)I

    move-result v5

    add-int/lit8 v6, v4, 0x1

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v6, -0x1

    invoke-virtual {p0, v7}, Lk/w;->c(I)I

    move-result v8

    if-ge v6, v2, :cond_1

    invoke-virtual {p0, v6}, Lk/w;->c(I)I

    move-result v9

    if-le v9, v8, :cond_1

    if-le v9, v5, :cond_0

    invoke-virtual {p0, v4, v9}, Lk/w;->e(II)V

    invoke-virtual {p0, v6, v5}, Lk/w;->e(II)V

    move v4, v6

    goto :goto_0

    :cond_1
    if-le v8, v5, :cond_0

    invoke-virtual {p0, v4, v8}, Lk/w;->e(II)V

    invoke-virtual {p0, v7, v5}, Lk/w;->e(II)V

    move v4, v7

    goto :goto_0

    :cond_2
    const-string p0, "IntList is empty."

    invoke-static {p0}, Ll/a;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_3
    return v1
.end method

.method public static final H(I)I
    .locals 3

    const v0, 0x12492492

    and-int/2addr v0, p0

    const v1, 0x24924924

    and-int/2addr v1, p0

    const v2, -0x36db6db7

    and-int/2addr p0, v2

    shr-int/lit8 v2, v1, 0x1

    or-int/2addr v2, v0

    or-int/2addr p0, v2

    shl-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static final I([Lj6/g0;Lr0/j1;Lr0/j1;)Lz0/h;
    .locals 6

    sget-object v0, Lz0/h;->o:Lz0/h;

    new-instance v1, Lz0/g;

    invoke-direct {v1, v0}, Lw0/d;-><init>(Lw0/b;)V

    iput-object v0, v1, Lz0/g;->r:Lz0/h;

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    iget-object v4, v3, Lj6/g0;->f:Ljava/lang/Object;

    check-cast v4, Lr0/m1;

    iget-boolean v5, v3, Lj6/g0;->e:Z

    if-nez v5, :cond_0

    move-object v5, p1

    check-cast v5, Lz0/h;

    invoke-virtual {v5, v4}, Lz0/h;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move-object v5, p2

    check-cast v5, Lz0/h;

    invoke-virtual {v5, v4}, Lz0/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lr0/u2;

    invoke-virtual {v4, v3, v5}, Lr0/m1;->c(Lj6/g0;Lr0/u2;)Lr0/u2;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lw0/d;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lz0/g;->c()Lz0/h;

    move-result-object p0

    return-object p0
.end method

.method public static final J(Li9/c;La9/i;)Ljava/lang/Object;
    .locals 3

    invoke-interface {p1}, Ly8/c;->getContext()Ly8/h;

    move-result-object v0

    invoke-static {v0}, Lr0/r;->v(Ly8/h;)Lf2/x0;

    move-result-object v0

    new-instance v1, Ld1/a;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Ld1/a;-><init>(Li9/c;I)V

    invoke-virtual {v0, v1, p1}, Lf2/x0;->a(Li9/c;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Lj6/g0;Li9/e;Lr0/q;I)V
    .locals 11

    const v0, -0x8ed3d8b

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    iget-object v0, p2, Lr0/q;->x:Le2/t;

    invoke-virtual {p2}, Lr0/q;->m()Lr0/j1;

    move-result-object v1

    const/16 v2, 0xc9

    sget-object v3, Lr0/s;->b:Lr0/y0;

    invoke-virtual {p2, v2, v3}, Lr0/q;->Z(ILr0/y0;)V

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lr0/m;->a:Lr0/e;

    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object v2, v4

    goto :goto_0

    :cond_0
    const-string v3, "null cannot be cast to non-null type androidx.compose.runtime.ValueHolder<kotlin.Any?>"

    invoke-static {v2, v3}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lr0/u2;

    :goto_0
    iget-object v3, p0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast v3, Lr0/m1;

    invoke-virtual {v3, p0, v2}, Lr0/m1;->c(Lj6/g0;Lr0/u2;)Lr0/u2;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    iget-boolean v6, p2, Lr0/q;->S:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_5

    iget-boolean v2, p0, Lj6/g0;->e:Z

    if-nez v2, :cond_2

    move-object v2, v1

    check-cast v2, Lz0/h;

    invoke-virtual {v2, v3}, Lz0/h;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    check-cast v1, Lz0/h;

    invoke-virtual {v1, v3, v5}, Lz0/h;->c(Lr0/m1;Lr0/u2;)Lz0/h;

    move-result-object v1

    :cond_3
    iput-boolean v7, p2, Lr0/q;->J:Z

    :cond_4
    move v2, v8

    goto :goto_4

    :cond_5
    iget-object v6, p2, Lr0/q;->G:Lr0/d2;

    iget v9, v6, Lr0/d2;->g:I

    iget-object v10, v6, Lr0/d2;->b:[I

    invoke-virtual {v6, v10, v9}, Lr0/d2;->b([II)Ljava/lang/Object;

    move-result-object v6

    const-string v9, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap"

    invoke-static {v6, v9}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lr0/j1;

    invoke-virtual {p2}, Lr0/q;->F()Z

    move-result v9

    if-eqz v9, :cond_6

    if-nez v2, :cond_7

    :cond_6
    iget-boolean v9, p0, Lj6/g0;->e:Z

    if-nez v9, :cond_a

    move-object v9, v1

    check-cast v9, Lz0/h;

    invoke-virtual {v9, v3}, Lz0/h;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    if-eqz v2, :cond_8

    iget-boolean v2, p2, Lr0/q;->w:Z

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    iget-boolean v2, p2, Lr0/q;->w:Z

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    :goto_1
    move-object v1, v6

    goto :goto_3

    :cond_a
    :goto_2
    check-cast v1, Lz0/h;

    invoke-virtual {v1, v3, v5}, Lz0/h;->c(Lr0/m1;Lr0/u2;)Lz0/h;

    move-result-object v1

    :goto_3
    iget-boolean v2, p2, Lr0/q;->y:Z

    if-nez v2, :cond_b

    if-eq v6, v1, :cond_4

    :cond_b
    move v2, v7

    :goto_4
    if-eqz v2, :cond_c

    iget-boolean v3, p2, Lr0/q;->S:Z

    if-nez v3, :cond_c

    invoke-virtual {p2, v1}, Lr0/q;->O(Lr0/j1;)V

    :cond_c
    iget-boolean v3, p2, Lr0/q;->w:Z

    invoke-virtual {v0, v3}, Le2/t;->c(I)V

    iput-boolean v2, p2, Lr0/q;->w:Z

    iput-object v1, p2, Lr0/q;->K:Lr0/j1;

    const/16 v2, 0xca

    sget-object v3, Lr0/s;->c:Lr0/y0;

    invoke-virtual {p2, v2, v8, v3, v1}, Lr0/q;->X(IILjava/lang/Object;Ljava/lang/Object;)V

    shr-int/lit8 v1, p3, 0x3

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v8}, Lr0/q;->q(Z)V

    invoke-virtual {p2, v8}, Lr0/q;->q(Z)V

    invoke-virtual {v0}, Le2/t;->b()I

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_5

    :cond_d
    move v7, v8

    :goto_5
    iput-boolean v7, p2, Lr0/q;->w:Z

    iput-object v4, p2, Lr0/q;->K:Lr0/j1;

    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_e

    new-instance v0, Lb0/h;

    const/4 v1, 0x5

    invoke-direct {v0, p3, v1, p0, p1}, Lb0/h;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_e
    return-void
.end method

.method public static final b([Lj6/g0;Li9/e;Lr0/q;I)V
    .locals 8

    const v0, 0x18bf8a0a

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    iget-object v0, p2, Lr0/q;->x:Le2/t;

    invoke-virtual {p2}, Lr0/q;->m()Lr0/j1;

    move-result-object v1

    const/16 v2, 0xc9

    sget-object v3, Lr0/s;->b:Lr0/y0;

    invoke-virtual {p2, v2, v3}, Lr0/q;->Z(ILr0/y0;)V

    iget-boolean v2, p2, Lr0/q;->S:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    sget-object v2, Lz0/h;->o:Lz0/h;

    invoke-static {p0, v1, v2}, Lr0/r;->I([Lj6/g0;Lr0/j1;Lr0/j1;)Lz0/h;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lr0/q;->k0(Lr0/j1;Lz0/h;)Lz0/h;

    move-result-object v1

    iput-boolean v3, p2, Lr0/q;->J:Z

    :cond_0
    :goto_0
    move v2, v4

    goto :goto_2

    :cond_1
    iget-object v2, p2, Lr0/q;->G:Lr0/d2;

    iget v5, v2, Lr0/d2;->g:I

    invoke-virtual {v2, v5, v4}, Lr0/d2;->h(II)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "null cannot be cast to non-null type androidx.compose.runtime.PersistentCompositionLocalMap"

    invoke-static {v2, v5}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lr0/j1;

    iget-object v6, p2, Lr0/q;->G:Lr0/d2;

    iget v7, v6, Lr0/d2;->g:I

    invoke-virtual {v6, v7, v3}, Lr0/d2;->h(II)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v5}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lr0/j1;

    invoke-static {p0, v1, v6}, Lr0/r;->I([Lj6/g0;Lr0/j1;Lr0/j1;)Lz0/h;

    move-result-object v5

    invoke-virtual {p2}, Lr0/q;->F()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, p2, Lr0/q;->y:Z

    if-nez v7, :cond_3

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    iget v1, p2, Lr0/q;->l:I

    iget-object v5, p2, Lr0/q;->G:Lr0/d2;

    invoke-virtual {v5}, Lr0/d2;->s()I

    move-result v5

    add-int/2addr v5, v1

    iput v5, p2, Lr0/q;->l:I

    move-object v1, v2

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p2, v1, v5}, Lr0/q;->k0(Lr0/j1;Lz0/h;)Lz0/h;

    move-result-object v1

    iget-boolean v5, p2, Lr0/q;->y:Z

    if-nez v5, :cond_4

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v2, v3

    :goto_2
    if-eqz v2, :cond_5

    iget-boolean v5, p2, Lr0/q;->S:Z

    if-nez v5, :cond_5

    invoke-virtual {p2, v1}, Lr0/q;->O(Lr0/j1;)V

    :cond_5
    iget-boolean v5, p2, Lr0/q;->w:Z

    invoke-virtual {v0, v5}, Le2/t;->c(I)V

    iput-boolean v2, p2, Lr0/q;->w:Z

    iput-object v1, p2, Lr0/q;->K:Lr0/j1;

    const/16 v2, 0xca

    sget-object v5, Lr0/s;->c:Lr0/y0;

    invoke-virtual {p2, v2, v4, v5, v1}, Lr0/q;->X(IILjava/lang/Object;Ljava/lang/Object;)V

    shr-int/lit8 v1, p3, 0x3

    and-int/lit8 v1, v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p2, v1}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, v4}, Lr0/q;->q(Z)V

    invoke-virtual {p2, v4}, Lr0/q;->q(Z)V

    invoke-virtual {v0}, Le2/t;->b()I

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    move v3, v4

    :goto_3
    iput-boolean v3, p2, Lr0/q;->w:Z

    const/4 v0, 0x0

    iput-object v0, p2, Lr0/q;->K:Lr0/j1;

    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object p2

    if-eqz p2, :cond_7

    new-instance v0, Lb0/h;

    const/4 v1, 0x6

    invoke-direct {v0, p3, v1, p0, p1}, Lb0/h;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p2, Lr0/n1;->d:Li9/e;

    :cond_7
    return-void
.end method

.method public static final c(Ljava/lang/Object;Li9/c;Lr0/q;)V
    .locals 1

    invoke-virtual {p2, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-nez p0, :cond_0

    sget-object p0, Lr0/m;->a:Lr0/e;

    if-ne v0, p0, :cond_1

    :cond_0
    new-instance v0, Lr0/e0;

    invoke-direct {v0, p1}, Lr0/e0;-><init>(Li9/c;)V

    invoke-virtual {p2, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast v0, Lr0/e0;

    return-void
.end method

.method public static final d(Ljava/lang/Object;Ljava/lang/Object;Li9/c;Lr0/q;)V
    .locals 0

    invoke-virtual {p3, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p3, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_0

    sget-object p0, Lr0/m;->a:Lr0/e;

    if-ne p1, p0, :cond_1

    :cond_0
    new-instance p1, Lr0/e0;

    invoke-direct {p1, p2}, Lr0/e0;-><init>(Li9/c;)V

    invoke-virtual {p3, p1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast p1, Lr0/e0;

    return-void
.end method

.method public static final e([Ljava/lang/Object;Li9/c;Lr0/q;)V
    .locals 4

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    invoke-virtual {p2, v3}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p0

    if-nez v2, :cond_2

    sget-object v0, Lr0/m;->a:Lr0/e;

    if-ne p0, v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    new-instance p0, Lr0/e0;

    invoke-direct {p0, p1}, Lr0/e0;-><init>(Li9/c;)V

    invoke-virtual {p2, p0}, Lr0/q;->l0(Ljava/lang/Object;)V

    return-void
.end method

.method public static final f(Li9/e;Ljava/lang/Object;Lr0/q;)V
    .locals 2

    iget-object v0, p2, Lr0/q;->R:Ly8/h;

    invoke-virtual {p2, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-nez p1, :cond_0

    sget-object p1, Lr0/m;->a:Lr0/e;

    if-ne v1, p1, :cond_1

    :cond_0
    new-instance v1, Lr0/q0;

    invoke-direct {v1, v0, p0}, Lr0/q0;-><init>(Ly8/h;Li9/e;)V

    invoke-virtual {p2, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast v1, Lr0/q0;

    return-void
.end method

.method public static final g(Ljava/lang/Object;Ljava/lang/Object;Li9/e;Lr0/q;)V
    .locals 1

    iget-object v0, p3, Lr0/q;->R:Ly8/h;

    invoke-virtual {p3, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p3, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    invoke-virtual {p3}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_0

    sget-object p0, Lr0/m;->a:Lr0/e;

    if-ne p1, p0, :cond_1

    :cond_0
    new-instance p1, Lr0/q0;

    invoke-direct {p1, v0, p2}, Lr0/q0;-><init>(Ly8/h;Li9/e;)V

    invoke-virtual {p3, p1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast p1, Lr0/q0;

    return-void
.end method

.method public static final h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Li9/e;Lr0/q;)V
    .locals 1

    iget-object v0, p4, Lr0/q;->R:Ly8/h;

    invoke-virtual {p4, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p4, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    invoke-virtual {p4, p2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p0, p1

    invoke-virtual {p4}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p1

    if-nez p0, :cond_0

    sget-object p0, Lr0/m;->a:Lr0/e;

    if-ne p1, p0, :cond_1

    :cond_0
    new-instance p1, Lr0/q0;

    invoke-direct {p1, v0, p3}, Lr0/q0;-><init>(Ly8/h;Li9/e;)V

    invoke-virtual {p4, p1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast p1, Lr0/q0;

    return-void
.end method

.method public static final i([Ljava/lang/Object;Li9/e;Lr0/q;)V
    .locals 5

    iget-object v0, p2, Lr0/q;->R:Ly8/h;

    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, p0, v2

    invoke-virtual {p2, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object p0

    if-nez v3, :cond_2

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne p0, v1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    new-instance p0, Lr0/q0;

    invoke-direct {p0, v0, p1}, Lr0/q0;-><init>(Ly8/h;Li9/e;)V

    invoke-virtual {p2, p0}, Lr0/q;->l0(Ljava/lang/Object;)V

    return-void
.end method

.method public static final j(Li9/a;Lr0/q;)V
    .locals 1

    iget-object p1, p1, Lr0/q;->M:Ls0/b;

    iget-object p1, p1, Ls0/b;->b:Ls0/a;

    iget-object p1, p1, Ls0/a;->c:Ls0/m0;

    sget-object v0, Ls0/b0;->c:Ls0/b0;

    invoke-virtual {p1, v0}, Ls0/m0;->G(Ls0/j0;)V

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lg6/c1;->A(Ls0/m0;ILjava/lang/Object;)V

    return-void
.end method

.method public static final k(Ljava/util/List;II)V
    .locals 1

    invoke-static {p1, p0}, Lr0/r;->s(ILjava/util/List;)I

    move-result p1

    if-gez p1, :cond_0

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr0/m0;

    iget v0, v0, Lr0/m0;->b:I

    if-ge v0, p2, :cond_1

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr0/m0;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final l(Lk/w;I)V
    .locals 3

    iget v0, p0, Lk/w;->b:I

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lk/w;->c(I)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget v0, p0, Lk/w;->b:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lk/w;->c(I)I

    move-result v0

    if-ne v0, p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lk/w;->b:I

    invoke-virtual {p0, p1}, Lk/w;->a(I)V

    :goto_0
    if-lez v0, :cond_2

    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lk/w;->c(I)I

    move-result v2

    if-le p1, v2, :cond_2

    invoke-virtual {p0, v0, v2}, Lk/w;->e(II)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, p1}, Lk/w;->e(II)V

    return-void
.end method

.method public static m(Lr0/h2;Ljava/util/List;Lr0/x;)V
    .locals 5

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lr0/a;

    invoke-virtual {p0, v2}, Lr0/h2;->c(Lr0/a;)I

    move-result v2

    invoke-virtual {p0, v2}, Lr0/h2;->r(I)I

    move-result v3

    iget-object v4, p0, Lr0/h2;->b:[I

    invoke-virtual {p0, v4, v3}, Lr0/h2;->N([II)I

    move-result v3

    iget-object v4, p0, Lr0/h2;->b:[I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lr0/h2;->r(I)I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lr0/h2;->g([II)I

    move-result v2

    if-ge v3, v2, :cond_0

    invoke-virtual {p0, v3}, Lr0/h2;->h(I)I

    move-result v2

    iget-object v3, p0, Lr0/h2;->c:[Ljava/lang/Object;

    aget-object v2, v3, v2

    goto :goto_1

    :cond_0
    sget-object v2, Lr0/m;->a:Lr0/e;

    :goto_1
    instance-of v3, v2, Lr0/n1;

    if-eqz v3, :cond_1

    check-cast v2, Lr0/n1;

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_2

    iput-object p2, v2, Lr0/n1;->a:Lr0/x;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static final n(Lx9/g;Ljava/lang/Object;Lr0/q;I)Lr0/u0;
    .locals 5

    sget-object p3, Ly8/i;->l:Ly8/i;

    invoke-virtual {p2, p3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p2, p0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lr0/m;->a:Lr0/e;

    if-nez v0, :cond_0

    if-ne v1, v3, :cond_1

    :cond_0
    new-instance v1, Landroidx/lifecycle/m0;

    const/16 v0, 0x17

    invoke-direct {v1, p3, p0, v2, v0}, Landroidx/lifecycle/m0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-virtual {p2, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1
    check-cast v1, Li9/e;

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_2

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object v0

    invoke-virtual {p2, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    check-cast v0, Lr0/u0;

    invoke-virtual {p2, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v4

    if-nez p1, :cond_3

    if-ne v4, v3, :cond_4

    :cond_3
    new-instance v4, Lr0/o2;

    const/4 p1, 0x1

    invoke-direct {v4, v1, v0, v2, p1}, Lr0/o2;-><init>(Li9/e;Lr0/u0;Ly8/c;I)V

    invoke-virtual {p2, v4}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast v4, Li9/e;

    invoke-static {p0, p3, v4, p2}, Lr0/r;->g(Ljava/lang/Object;Ljava/lang/Object;Li9/e;Lr0/q;)V

    return-object v0
.end method

.method public static final o(Lr0/d2;Ljava/util/ArrayList;I)V
    .locals 3

    invoke-virtual {p0, p2}, Lr0/d2;->l(I)Z

    move-result v0

    iget-object v1, p0, Lr0/d2;->b:[I

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lr0/d2;->n(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    add-int/lit8 v0, p2, 0x1

    mul-int/lit8 v2, p2, 0x5

    add-int/lit8 v2, v2, 0x3

    aget v2, v1, v2

    add-int/2addr v2, p2

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-static {p0, p1, v0}, Lr0/r;->o(Lr0/d2;Ljava/util/ArrayList;I)V

    mul-int/lit8 p2, v0, 0x5

    add-int/lit8 p2, p2, 0x3

    aget p2, v1, p2

    add-int/2addr v0, p2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final p(Lr0/q;)Lu9/t;
    .locals 1

    iget-object p0, p0, Lr0/q;->R:Ly8/h;

    new-instance v0, Lr0/a2;

    invoke-direct {v0, p0}, Lr0/a2;-><init>(Ly8/h;)V

    return-object v0
.end method

.method public static final q()Lt0/b;
    .locals 3

    sget-object v0, Lr0/n2;->b:Lx2/k;

    invoke-virtual {v0}, Lx2/k;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt0/b;

    if-nez v1, :cond_0

    new-instance v1, Lt0/b;

    const/4 v2, 0x0

    new-array v2, v2, [Ld1/z;

    invoke-direct {v1, v2}, Lt0/b;-><init>([Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lx2/k;->d(Ljava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static final r(Li9/a;)Lr0/d0;
    .locals 2

    sget-object v0, Lr0/n2;->a:Lx2/k;

    new-instance v0, Lr0/d0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lr0/d0;-><init>(Li9/a;Lr0/m2;)V

    return-object v0
.end method

.method public static final s(ILjava/util/List;)I
    .locals 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_2

    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lr0/m0;

    iget v3, v3, Lr0/m0;->b:I

    invoke-static {v3, p0}, Lj9/n;->h(II)I

    move-result v3

    if-gez v3, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-lez v3, :cond_1

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    neg-int p0, v1

    return p0
.end method

.method public static final t(Lr0/q;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v0, p0, Lr0/q;->T:J

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public static final u(Lr0/q;)J
    .locals 2

    iget-wide v0, p0, Lr0/q;->T:J

    return-wide v0
.end method

.method public static final v(Ly8/h;)Lf2/x0;
    .locals 1

    sget-object v0, Lr0/e;->n:Lr0/e;

    invoke-interface {p0, v0}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object p0

    check-cast p0, Lf2/x0;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "A MonotonicFrameClock is not available in this CoroutineContext. Callers should supply an appropriate MonotonicFrameClock using withContext."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final w(Lr0/q;Ljava/lang/Integer;Li9/e;)V
    .locals 1

    iget-boolean v0, p0, Lr0/q;->S:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p1}, Lr0/q;->b(Li9/e;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static x(Lr0/h2;ILr0/h2;ZZZ)Ljava/util/List;
    .locals 24

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Lr0/h2;->u(I)I

    move-result v3

    add-int v4, v1, v3

    invoke-virtual/range {p0 .. p1}, Lr0/h2;->f(I)I

    move-result v5

    invoke-virtual {v0, v4}, Lr0/h2;->f(I)I

    move-result v6

    sub-int v7, v6, v5

    const/4 v9, 0x1

    if-ltz v1, :cond_0

    iget-object v10, v0, Lr0/h2;->b:[I

    invoke-virtual/range {p0 .. p1}, Lr0/h2;->r(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x5

    add-int/2addr v11, v9

    aget v10, v10, v11

    const/high16 v11, 0xc000000

    and-int/2addr v10, v11

    if-eqz v10, :cond_0

    move v10, v9

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Lr0/h2;->w(I)V

    iget v11, v2, Lr0/h2;->t:I

    invoke-virtual {v2, v7, v11}, Lr0/h2;->x(II)V

    iget v11, v0, Lr0/h2;->g:I

    if-ge v11, v4, :cond_1

    invoke-virtual {v0, v4}, Lr0/h2;->B(I)V

    :cond_1
    iget v11, v0, Lr0/h2;->k:I

    if-ge v11, v6, :cond_2

    invoke-virtual {v0, v6, v4}, Lr0/h2;->C(II)V

    :cond_2
    iget-object v6, v2, Lr0/h2;->b:[I

    iget v11, v2, Lr0/h2;->t:I

    iget-object v12, v0, Lr0/h2;->b:[I

    mul-int/lit8 v13, v11, 0x5

    mul-int/lit8 v14, v1, 0x5

    mul-int/lit8 v15, v4, 0x5

    invoke-static {v12, v6, v13, v14, v15}, Lu8/l;->i0([I[IIII)V

    iget-object v12, v2, Lr0/h2;->c:[Ljava/lang/Object;

    iget v14, v2, Lr0/h2;->i:I

    iget-object v15, v0, Lr0/h2;->c:[Ljava/lang/Object;

    invoke-static {v15, v5, v12, v14, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v15, v2, Lr0/h2;->v:I

    add-int/lit8 v16, v13, 0x2

    aput v15, v6, v16

    sub-int v16, v11, v1

    add-int v8, v11, v3

    invoke-virtual {v2, v6, v11}, Lr0/h2;->g([II)I

    move-result v18

    sub-int v18, v14, v18

    move/from16 v19, v9

    iget v9, v2, Lr0/h2;->m:I

    move/from16 v20, v9

    iget v9, v2, Lr0/h2;->l:I

    array-length v12, v12

    move/from16 v21, v10

    move/from16 v10, v20

    move/from16 v20, v13

    move v13, v11

    :goto_1
    if-ge v13, v8, :cond_6

    if-eq v13, v11, :cond_3

    mul-int/lit8 v22, v13, 0x5

    add-int/lit8 v22, v22, 0x2

    aget v23, v6, v22

    add-int v23, v23, v16

    aput v23, v6, v22

    :cond_3
    invoke-virtual {v2, v6, v13}, Lr0/h2;->g([II)I

    move-result v22

    move-object/from16 v23, v6

    add-int v6, v22, v18

    if-ge v10, v13, :cond_4

    move/from16 v22, v11

    const/4 v11, 0x0

    goto :goto_2

    :cond_4
    move/from16 v22, v11

    iget v11, v2, Lr0/h2;->k:I

    :goto_2
    invoke-static {v6, v11, v9, v12}, Lr0/h2;->i(IIII)I

    move-result v6

    mul-int/lit8 v11, v13, 0x5

    add-int/lit8 v11, v11, 0x4

    aput v6, v23, v11

    if-ne v13, v10, :cond_5

    add-int/lit8 v10, v10, 0x1

    :cond_5
    add-int/lit8 v13, v13, 0x1

    move/from16 v11, v22

    move-object/from16 v6, v23

    goto :goto_1

    :cond_6
    move-object/from16 v23, v6

    iput v10, v2, Lr0/h2;->m:I

    iget-object v6, v0, Lr0/h2;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lr0/h2;->p()I

    move-result v9

    invoke-static {v6, v1, v9}, Lr0/g2;->b(Ljava/util/ArrayList;II)I

    move-result v6

    iget-object v9, v0, Lr0/h2;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lr0/h2;->p()I

    move-result v10

    invoke-static {v9, v4, v10}, Lr0/g2;->b(Ljava/util/ArrayList;II)I

    move-result v4

    if-ge v6, v4, :cond_8

    iget-object v9, v0, Lr0/h2;->d:Ljava/util/ArrayList;

    new-instance v10, Ljava/util/ArrayList;

    sub-int v11, v4, v6

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    move v11, v6

    :goto_3
    if-ge v11, v4, :cond_7

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lr0/a;

    iget v13, v12, Lr0/a;->a:I

    add-int v13, v13, v16

    iput v13, v12, Lr0/a;->a:I

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_7
    iget-object v11, v2, Lr0/h2;->d:Ljava/util/ArrayList;

    iget v12, v2, Lr0/h2;->t:I

    invoke-virtual {v2}, Lr0/h2;->p()I

    move-result v13

    invoke-static {v11, v12, v13}, Lr0/g2;->b(Ljava/util/ArrayList;II)I

    move-result v11

    iget-object v12, v2, Lr0/h2;->d:Ljava/util/ArrayList;

    invoke-virtual {v12, v11, v10}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    invoke-virtual {v9, v6, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->clear()V

    goto :goto_4

    :cond_8
    sget-object v10, Lu8/r;->l:Lu8/r;

    :goto_4
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, v0, Lr0/h2;->e:Ljava/util/HashMap;

    iget-object v6, v2, Lr0/h2;->e:Ljava/util/HashMap;

    if-eqz v4, :cond_9

    if-eqz v6, :cond_9

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v6

    const/4 v9, 0x0

    :goto_5
    if-ge v9, v6, :cond_9

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lr0/a;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lr0/l0;

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_9
    iget v4, v2, Lr0/h2;->v:I

    invoke-virtual {v2, v15}, Lr0/h2;->O(I)Lr0/l0;

    iget-object v4, v0, Lr0/h2;->b:[I

    invoke-virtual {v0, v4, v1}, Lr0/h2;->E([II)I

    move-result v4

    if-nez p5, :cond_a

    const/16 v17, 0x0

    goto :goto_7

    :cond_a
    if-eqz p3, :cond_e

    if-ltz v4, :cond_b

    move/from16 v17, v19

    goto :goto_6

    :cond_b
    const/16 v17, 0x0

    :goto_6
    if-eqz v17, :cond_c

    invoke-virtual {v0}, Lr0/h2;->P()V

    iget v3, v0, Lr0/h2;->t:I

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lr0/h2;->a(I)V

    invoke-virtual {v0}, Lr0/h2;->P()V

    :cond_c
    iget v3, v0, Lr0/h2;->t:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lr0/h2;->a(I)V

    invoke-virtual {v0}, Lr0/h2;->H()Z

    move-result v1

    if-eqz v17, :cond_d

    invoke-virtual {v0}, Lr0/h2;->M()V

    invoke-virtual {v0}, Lr0/h2;->j()V

    invoke-virtual {v0}, Lr0/h2;->M()V

    invoke-virtual {v0}, Lr0/h2;->j()V

    :cond_d
    move/from16 v17, v1

    goto :goto_7

    :cond_e
    invoke-virtual {v0, v1, v3}, Lr0/h2;->I(II)Z

    move-result v3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v5, v7, v1}, Lr0/h2;->J(III)V

    move/from16 v17, v3

    :goto_7
    if-eqz v17, :cond_f

    const-string v0, "Unexpectedly removed anchors"

    invoke-static {v0}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_f
    iget v0, v2, Lr0/h2;->o:I

    add-int/lit8 v13, v20, 0x1

    aget v1, v23, v13

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v3, v1

    if-eqz v3, :cond_10

    move/from16 v9, v19

    goto :goto_8

    :cond_10
    const v3, 0x3ffffff

    and-int v9, v1, v3

    :goto_8
    add-int/2addr v0, v9

    iput v0, v2, Lr0/h2;->o:I

    if-eqz p4, :cond_11

    iput v8, v2, Lr0/h2;->t:I

    add-int/2addr v14, v7

    iput v14, v2, Lr0/h2;->i:I

    :cond_11
    if-eqz v21, :cond_12

    invoke-virtual {v2, v15}, Lr0/h2;->T(I)V

    :cond_12
    return-object v10
.end method

.method public static y(Ljava/lang/Object;)Lr0/e1;
    .locals 2

    sget-object v0, Lr0/e;->r:Lr0/e;

    new-instance v1, Lr0/e1;

    invoke-direct {v1, p0, v0}, Lr0/e1;-><init>(Ljava/lang/Object;Lr0/m2;)V

    return-object v1
.end method

.method public static final z(Lr0/j1;Lr0/m1;)Ljava/lang/Object;
    .locals 1

    const-string v0, "null cannot be cast to non-null type androidx.compose.runtime.CompositionLocal<kotlin.Any?>"

    invoke-static {p1, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lz0/h;

    invoke-virtual {p0, p1}, Lz0/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lr0/m1;->b()Lr0/u2;

    move-result-object v0

    :cond_0
    check-cast v0, Lr0/u2;

    invoke-interface {v0, p0}, Lr0/u2;->a(Lr0/j1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
