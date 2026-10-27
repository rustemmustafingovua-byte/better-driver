.class public abstract Lf2/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf2/o2;


# static fields
.field public static final a:[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-class v5, Landroid/util/Size;

    const-class v6, Landroid/util/SizeF;

    const-class v0, Ljava/io/Serializable;

    const-class v1, Landroid/os/Parcelable;

    const-class v2, Ljava/lang/String;

    const-class v3, Landroid/util/SparseArray;

    const-class v4, Landroid/os/Binder;

    filled-new-array/range {v0 .. v6}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lf2/k0;->a:[Ljava/lang/Class;

    return-void
.end method

.method public static final a(Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    if-ne p1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final b(Lm2/p;)Z
    .locals 1

    invoke-virtual {p0}, Lm2/p;->k()Lm2/m;

    move-result-object p0

    sget-object v0, Lm2/t;->i:Lm2/w;

    iget-object p0, p0, Lm2/m;->l:Lk/m0;

    invoke-virtual {p0, v0}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final c(Lm2/p;Landroid/content/res/Resources;)Z
    .locals 3

    iget-object v0, p0, Lm2/p;->d:Lm2/m;

    sget-object v1, Lm2/t;->a:Lm2/w;

    iget-object v0, v0, Lm2/m;->l:Lk/m0;

    invoke-virtual {v0, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    invoke-static {p0}, Lf2/k0;->i(Lm2/p;)Lp2/g;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-static {p0, p1}, Lf2/k0;->h(Lm2/p;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    invoke-static {p0}, Lf2/k0;->g(Lm2/p;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move p1, v2

    goto :goto_1

    :cond_3
    :goto_0
    move p1, v0

    :goto_1
    invoke-static {p0}, Lm2/s;->e(Lm2/p;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lm2/p;->d:Lm2/m;

    iget-boolean v1, v1, Lm2/m;->n:Z

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lm2/p;->o()Z

    move-result p0

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    :cond_4
    return v0

    :cond_5
    return v2
.end method

.method public static final d(Lm2/p;Lr3/g;)V
    .locals 4

    iget-object v0, p0, Lm2/p;->d:Lm2/m;

    iget-object v1, v0, Lm2/m;->l:Lk/m0;

    sget-object v2, Lm2/t;->y:Lm2/w;

    iget-object v0, v0, Lm2/m;->l:Lk/m0;

    invoke-virtual {v0, v2}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    :cond_0
    check-cast v0, Lm2/h;

    invoke-static {p0}, Lf2/k0;->b(Lm2/p;)Z

    move-result p0

    if-eqz p0, :cond_a

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget p0, v0, Lm2/h;->a:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p0, Lm2/l;->y:Lm2/w;

    invoke-virtual {v1, p0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    move-object p0, v2

    :cond_3
    check-cast p0, Lm2/a;

    if-eqz p0, :cond_4

    new-instance v0, Lr3/d;

    const v3, 0x1020046

    iget-object p0, p0, Lm2/a;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3, p0, v2}, Lr3/d;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lr3/g;->a(Lr3/d;)V

    :cond_4
    sget-object p0, Lm2/l;->A:Lm2/w;

    invoke-virtual {v1, p0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_5

    move-object p0, v2

    :cond_5
    check-cast p0, Lm2/a;

    if-eqz p0, :cond_6

    new-instance v0, Lr3/d;

    const v3, 0x1020047

    iget-object p0, p0, Lm2/a;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3, p0, v2}, Lr3/d;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lr3/g;->a(Lr3/d;)V

    :cond_6
    sget-object p0, Lm2/l;->z:Lm2/w;

    invoke-virtual {v1, p0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_7

    move-object p0, v2

    :cond_7
    check-cast p0, Lm2/a;

    if-eqz p0, :cond_8

    new-instance v0, Lr3/d;

    const v3, 0x1020048

    iget-object p0, p0, Lm2/a;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v3, p0, v2}, Lr3/d;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lr3/g;->a(Lr3/d;)V

    :cond_8
    sget-object p0, Lm2/l;->B:Lm2/w;

    invoke-virtual {v1, p0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_9

    move-object p0, v2

    :cond_9
    check-cast p0, Lm2/a;

    if-eqz p0, :cond_a

    new-instance v0, Lr3/d;

    const v1, 0x1020049

    iget-object p0, p0, Lm2/a;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v1, p0, v2}, Lr3/d;-><init>(Ljava/lang/Object;ILjava/lang/CharSequence;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lr3/g;->a(Lr3/d;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public static final e(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p0, Ld1/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p0, Ld1/r;

    invoke-interface {p0}, Ld1/r;->c()Lr0/m2;

    move-result-object v0

    sget-object v2, Lr0/e;->o:Lr0/e;

    if-eq v0, v2, :cond_0

    invoke-interface {p0}, Ld1/r;->c()Lr0/m2;

    move-result-object v0

    sget-object v2, Lr0/e;->r:Lr0/e;

    if-eq v0, v2, :cond_0

    invoke-interface {p0}, Ld1/r;->c()Lr0/m2;

    move-result-object v0

    sget-object v2, Lr0/e;->p:Lr0/e;

    if-ne v0, v2, :cond_5

    :cond_0
    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lf2/k0;->e(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    instance-of v0, p0, Lt8/e;

    if-eqz v0, :cond_3

    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_3

    return v1

    :cond_3
    move v0, v1

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_5

    sget-object v2, Lf2/k0;->a:[Ljava/lang/Class;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method public static final f([FI[FI)F
    .locals 3

    const/4 v0, 0x4

    mul-int/2addr p1, v0

    aget v1, p0, p1

    aget v2, p2, p3

    mul-float/2addr v1, v2

    add-int/lit8 v2, p1, 0x1

    aget v2, p0, v2

    add-int/2addr v0, p3

    aget v0, p2, v0

    mul-float/2addr v2, v0

    add-float/2addr v2, v1

    add-int/lit8 v0, p1, 0x2

    aget v0, p0, v0

    const/16 v1, 0x8

    add-int/2addr v1, p3

    aget v1, p2, v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    add-int/lit8 p1, p1, 0x3

    aget p0, p0, p1

    const/16 p1, 0xc

    add-int/2addr p1, p3

    aget p1, p2, p1

    mul-float/2addr p0, p1

    add-float/2addr p0, v0

    return p0
.end method

.method public static final g(Lm2/p;)Z
    .locals 5

    iget-object v0, p0, Lm2/p;->d:Lm2/m;

    sget-object v1, Lm2/t;->J:Lm2/w;

    iget-object v0, v0, Lm2/m;->l:Lk/m0;

    invoke-virtual {v0, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    check-cast v0, Lo2/a;

    iget-object p0, p0, Lm2/p;->d:Lm2/m;

    iget-object p0, p0, Lm2/m;->l:Lk/m0;

    sget-object v2, Lm2/t;->y:Lm2/w;

    invoke-virtual {p0, v2}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v1

    :cond_1
    check-cast v2, Lm2/h;

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lm2/t;->I:Lm2/w;

    invoke-virtual {p0, v4}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_6

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    iget p0, v2, Lm2/h;->a:I

    const/4 v1, 0x4

    if-ne p0, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    return v3

    :cond_6
    :goto_3
    return v0
.end method

.method public static final h(Lm2/p;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lm2/p;->d:Lm2/m;

    iget-object v1, p0, Lm2/p;->d:Lm2/m;

    sget-object v2, Lm2/t;->b:Lm2/w;

    iget-object v0, v0, Lm2/m;->l:Lk/m0;

    invoke-virtual {v0, v2}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v0, v2

    :cond_0
    iget-object v3, v1, Lm2/m;->l:Lk/m0;

    sget-object v4, Lm2/t;->J:Lm2/w;

    invoke-virtual {v3, v4}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v4, v2

    :cond_1
    check-cast v4, Lo2/a;

    sget-object v5, Lm2/t;->y:Lm2/w;

    invoke-virtual {v3, v5}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    move-object v5, v2

    :cond_2
    check-cast v5, Lm2/h;

    const/4 v6, 0x1

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v7, 0x2

    if-eqz v4, :cond_6

    if-eq v4, v6, :cond_4

    if-ne v4, v7, :cond_3

    if-nez v0, :cond_8

    const v0, 0x7f0b0023

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_4
    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    iget v4, v5, Lm2/h;->a:I

    if-ne v4, v7, :cond_8

    if-nez v0, :cond_8

    const v0, 0x7f0b0074

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-nez v5, :cond_7

    goto :goto_0

    :cond_7
    iget v4, v5, Lm2/h;->a:I

    if-ne v4, v7, :cond_8

    if-nez v0, :cond_8

    const v0, 0x7f0b0075

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_8
    :goto_0
    sget-object v4, Lm2/t;->I:Lm2/w;

    invoke-virtual {v3, v4}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_9

    move-object v4, v2

    :cond_9
    check-cast v4, Ljava/lang/Boolean;

    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v5, :cond_a

    goto :goto_1

    :cond_a
    iget v5, v5, Lm2/h;->a:I

    const/4 v7, 0x4

    if-ne v5, v7, :cond_b

    goto :goto_2

    :cond_b
    :goto_1
    if-nez v0, :cond_d

    if-eqz v4, :cond_c

    const v0, 0x7f0b0071

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_c
    const v0, 0x7f0b006e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_d
    :goto_2
    sget-object v4, Lm2/t;->c:Lm2/w;

    invoke-virtual {v3, v4}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_e

    move-object v4, v2

    :cond_e
    check-cast v4, Lm2/g;

    if-eqz v4, :cond_15

    sget-object v5, Lm2/g;->d:Lm2/g;

    if-eq v4, v5, :cond_14

    if-nez v0, :cond_15

    iget-object v0, v4, Lm2/g;->b:Lo9/a;

    iget v5, v0, Lo9/a;->b:F

    iget v7, v0, Lo9/a;->a:F

    sub-float/2addr v5, v7

    const/4 v8, 0x0

    cmpg-float v5, v5, v8

    if-nez v5, :cond_f

    move v4, v8

    goto :goto_3

    :cond_f
    iget v4, v4, Lm2/g;->a:F

    sub-float/2addr v4, v7

    iget v0, v0, Lo9/a;->b:F

    sub-float/2addr v0, v7

    div-float/2addr v4, v0

    :goto_3
    cmpg-float v0, v4, v8

    if-gez v0, :cond_10

    move v4, v8

    :cond_10
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v5, v4, v0

    if-lez v5, :cond_11

    move v4, v0

    :cond_11
    cmpg-float v5, v4, v8

    if-nez v5, :cond_12

    const/4 v0, 0x0

    goto :goto_4

    :cond_12
    cmpg-float v0, v4, v0

    const/16 v5, 0x64

    if-nez v0, :cond_13

    move v0, v5

    goto :goto_4

    :cond_13
    int-to-float v0, v5

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/16 v4, 0x63

    invoke-static {v0, v6, v4}, Lg6/c1;->f(III)I

    move-result v0

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v4, 0x7f0b0079

    invoke-virtual {p1, v4, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_14
    if-nez v0, :cond_15

    const v0, 0x7f0b0022

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_15
    :goto_5
    sget-object v4, Lm2/t;->F:Lm2/w;

    invoke-virtual {v3, v4}, Lk/m0;->c(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    new-instance v0, Lm2/p;

    iget-object v3, p0, Lm2/p;->a:Lf1/q;

    iget-object p0, p0, Lm2/p;->c:Le2/g0;

    invoke-direct {v0, v3, v6, p0, v1}, Lm2/p;-><init>(Lf1/q;ZLe2/g0;Lm2/m;)V

    invoke-virtual {v0}, Lm2/p;->k()Lm2/m;

    move-result-object p0

    iget-object p0, p0, Lm2/m;->l:Lk/m0;

    sget-object v0, Lm2/t;->a:Lm2/w;

    invoke-virtual {p0, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    move-object v0, v2

    :cond_16
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_17
    sget-object v0, Lm2/t;->B:Lm2/w;

    invoke-virtual {p0, v0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_18

    move-object v0, v2

    :cond_18
    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_19
    invoke-virtual {p0, v4}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1a

    move-object p0, v2

    :cond_1a
    check-cast p0, Ljava/lang/CharSequence;

    if-eqz p0, :cond_1b

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_1c

    :cond_1b
    const p0, 0x7f0b0073

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_1c
    move-object v0, v2

    :cond_1d
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static final i(Lm2/p;)Lp2/g;
    .locals 2

    iget-object v0, p0, Lm2/p;->d:Lm2/m;

    sget-object v1, Lm2/t;->a:Lm2/w;

    sget-object v1, Lm2/t;->F:Lm2/w;

    invoke-static {v0, v1}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp2/g;

    iget-object p0, p0, Lm2/p;->d:Lm2/m;

    sget-object v1, Lm2/t;->B:Lm2/w;

    invoke-static {p0, v1}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp2/g;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static j()Z
    .locals 5

    :try_start_0
    sget-object v0, Lf2/y;->V0:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lf2/y;->V0:Ljava/lang/Class;

    :cond_0
    sget-object v0, Lf2/y;->W0:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-object v0, Lf2/y;->V0:Ljava/lang/Class;

    if-eqz v0, :cond_1

    const-string v2, "getBoolean"

    const-class v3, Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    sput-object v0, Lf2/y;->W0:Ljava/lang/reflect/Method;

    :cond_2
    sget-object v0, Lf2/y;->W0:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    const-string v2, "debug.layout"

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    :cond_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final k(Lm2/m;)Lp2/j0;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lm2/l;->a:Lm2/w;

    iget-object p0, p0, Lm2/m;->l:Lk/m0;

    invoke-virtual {p0, v1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move-object p0, v1

    :cond_0
    check-cast p0, Lm2/a;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lm2/a;->b:Lt8/e;

    check-cast p0, Li9/c;

    if-eqz p0, :cond_1

    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp2/j0;

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static final l([F[F)Z
    .locals 49

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    const/16 v4, 0x10

    if-lt v2, v4, :cond_0

    array-length v2, v1

    if-ge v2, v4, :cond_1

    :cond_0
    move/from16 v19, v3

    goto/16 :goto_2

    :cond_1
    aget v2, v0, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    const/4 v6, 0x2

    aget v7, v0, v6

    const/4 v8, 0x3

    aget v9, v0, v8

    const/4 v10, 0x4

    aget v11, v0, v10

    const/4 v12, 0x5

    aget v13, v0, v12

    const/4 v14, 0x6

    aget v15, v0, v14

    const/16 v16, 0x7

    aget v17, v0, v16

    const/16 v18, 0x8

    move/from16 v19, v3

    aget v3, v0, v18

    const/16 v20, 0x9

    move/from16 v21, v4

    aget v4, v0, v20

    const/16 v22, 0xa

    aget v23, v0, v22

    const/16 v24, 0xb

    aget v25, v0, v24

    const/16 v26, 0xc

    move/from16 v27, v6

    aget v6, v0, v26

    const/16 v28, 0xd

    aget v29, v0, v28

    const/16 v30, 0xe

    aget v31, v0, v30

    const/16 v32, 0xf

    aget v0, v0, v32

    mul-float v33, v2, v13

    mul-float v34, v5, v11

    sub-float v33, v33, v34

    mul-float v34, v2, v15

    mul-float v35, v7, v11

    sub-float v34, v34, v35

    mul-float v35, v2, v17

    mul-float v36, v9, v11

    sub-float v35, v35, v36

    mul-float v36, v5, v15

    mul-float v37, v7, v13

    sub-float v36, v36, v37

    mul-float v37, v5, v17

    mul-float v38, v9, v13

    sub-float v37, v37, v38

    mul-float v38, v7, v17

    mul-float v39, v9, v15

    sub-float v38, v38, v39

    mul-float v39, v3, v29

    mul-float v40, v4, v6

    sub-float v39, v39, v40

    mul-float v40, v3, v31

    mul-float v41, v23, v6

    sub-float v40, v40, v41

    mul-float v41, v3, v0

    mul-float v42, v25, v6

    sub-float v41, v41, v42

    mul-float v42, v4, v31

    mul-float v43, v23, v29

    sub-float v42, v42, v43

    mul-float v43, v4, v0

    mul-float v44, v25, v29

    sub-float v43, v43, v44

    mul-float v44, v23, v0

    mul-float v45, v25, v31

    sub-float v44, v44, v45

    mul-float v45, v33, v44

    mul-float v46, v34, v43

    sub-float v45, v45, v46

    mul-float v46, v35, v42

    add-float v46, v46, v45

    mul-float v45, v36, v41

    add-float v45, v45, v46

    mul-float v46, v37, v40

    sub-float v45, v45, v46

    mul-float v46, v38, v39

    add-float v46, v46, v45

    const/16 v45, 0x0

    cmpg-float v45, v46, v45

    if-nez v45, :cond_2

    goto/16 :goto_0

    :cond_2
    const/high16 v47, 0x3f800000    # 1.0f

    div-float v47, v47, v46

    mul-float v46, v13, v44

    mul-float v48, v15, v43

    sub-float v46, v46, v48

    mul-float v48, v17, v42

    add-float v48, v48, v46

    mul-float v48, v48, v47

    aput v48, v1, v19

    move/from16 v46, v8

    neg-float v8, v5

    mul-float v8, v8, v44

    mul-float v48, v7, v43

    add-float v48, v48, v8

    mul-float v8, v9, v42

    sub-float v48, v48, v8

    mul-float v48, v48, v47

    aput v48, v1, v21

    mul-float v8, v29, v38

    mul-float v48, v31, v37

    sub-float v8, v8, v48

    mul-float v48, v0, v36

    add-float v48, v48, v8

    mul-float v48, v48, v47

    aput v48, v1, v27

    neg-float v8, v4

    mul-float v8, v8, v38

    mul-float v27, v23, v37

    add-float v27, v27, v8

    mul-float v8, v25, v36

    sub-float v27, v27, v8

    mul-float v27, v27, v47

    aput v27, v1, v46

    neg-float v8, v11

    mul-float v27, v8, v44

    mul-float v46, v15, v41

    add-float v46, v46, v27

    mul-float v27, v17, v40

    sub-float v46, v46, v27

    mul-float v46, v46, v47

    aput v46, v1, v10

    mul-float v44, v44, v2

    mul-float v10, v7, v41

    sub-float v44, v44, v10

    mul-float v10, v9, v40

    add-float v10, v10, v44

    mul-float v10, v10, v47

    aput v10, v1, v12

    neg-float v10, v6

    mul-float v12, v10, v38

    mul-float v27, v31, v35

    add-float v27, v27, v12

    mul-float v12, v0, v34

    sub-float v27, v27, v12

    mul-float v27, v27, v47

    aput v27, v1, v14

    mul-float v38, v38, v3

    mul-float v12, v23, v35

    sub-float v38, v38, v12

    mul-float v12, v25, v34

    add-float v12, v12, v38

    mul-float v12, v12, v47

    aput v12, v1, v16

    mul-float v11, v11, v43

    mul-float v12, v13, v41

    sub-float/2addr v11, v12

    mul-float v17, v17, v39

    add-float v17, v17, v11

    mul-float v17, v17, v47

    aput v17, v1, v18

    neg-float v11, v2

    mul-float v11, v11, v43

    mul-float v41, v41, v5

    add-float v41, v41, v11

    mul-float v9, v9, v39

    sub-float v41, v41, v9

    mul-float v41, v41, v47

    aput v41, v1, v20

    mul-float v6, v6, v37

    mul-float v9, v29, v35

    sub-float/2addr v6, v9

    mul-float v0, v0, v33

    add-float/2addr v0, v6

    mul-float v0, v0, v47

    aput v0, v1, v22

    neg-float v0, v3

    mul-float v0, v0, v37

    mul-float v35, v35, v4

    add-float v35, v35, v0

    mul-float v25, v25, v33

    sub-float v35, v35, v25

    mul-float v35, v35, v47

    aput v35, v1, v24

    mul-float v8, v8, v42

    mul-float v13, v13, v40

    add-float/2addr v13, v8

    mul-float v15, v15, v39

    sub-float/2addr v13, v15

    mul-float v13, v13, v47

    aput v13, v1, v26

    mul-float v2, v2, v42

    mul-float v5, v5, v40

    sub-float/2addr v2, v5

    mul-float v7, v7, v39

    add-float/2addr v7, v2

    mul-float v7, v7, v47

    aput v7, v1, v28

    mul-float v10, v10, v36

    mul-float v29, v29, v34

    add-float v29, v29, v10

    mul-float v31, v31, v33

    sub-float v29, v29, v31

    mul-float v29, v29, v47

    aput v29, v1, v30

    mul-float v3, v3, v36

    mul-float v4, v4, v34

    sub-float/2addr v3, v4

    mul-float v23, v23, v33

    add-float v23, v23, v3

    mul-float v23, v23, v47

    aput v23, v1, v32

    :goto_0
    if-nez v45, :cond_3

    move/from16 v3, v21

    goto :goto_1

    :cond_3
    move/from16 v3, v19

    :goto_1
    xor-int/lit8 v0, v3, 0x1

    return v0

    :goto_2
    return v19
.end method

.method public static final m(FFLm1/g;)Z
    .locals 4

    const v0, 0x3ba3d70a    # 0.005f

    sub-float v1, p0, v0

    sub-float v2, p1, v0

    add-float/2addr p0, v0

    add-float/2addr p1, v0

    invoke-static {}, Lm1/i;->a()Lm1/g;

    move-result-object v0

    sget-object v3, Lm1/d0;->l:[Lm1/d0;

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "Invalid rectangle, make sure no value is NaN"

    invoke-static {v3}, Lm1/i;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v3, v0, Lm1/g;->b:Landroid/graphics/RectF;

    if-nez v3, :cond_2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Lm1/g;->b:Landroid/graphics/RectF;

    :cond_2
    iget-object v3, v0, Lm1/g;->b:Landroid/graphics/RectF;

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v3, v1, v2, p0, p1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p0, v0, Lm1/g;->a:Landroid/graphics/Path;

    iget-object p1, v0, Lm1/g;->b:Landroid/graphics/RectF;

    invoke-static {p1}, Lj9/n;->d(Ljava/lang/Object;)V

    sget-object v1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {p0, p1, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    invoke-static {}, Lm1/i;->a()Lm1/g;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p2, v0, p1}, Lm1/g;->f(Lm1/g;Lm1/g;I)Z

    iget-object p2, p0, Lm1/g;->a:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->isEmpty()Z

    move-result p2

    invoke-virtual {p0}, Lm1/g;->g()V

    invoke-virtual {v0}, Lm1/g;->g()V

    xor-int/lit8 p0, p2, 0x1

    return p0
.end method

.method public static final n(FFFFJ)Z
    .locals 2

    sub-float/2addr p0, p2

    sub-float/2addr p1, p3

    const/16 p2, 0x20

    shr-long p2, p4, p2

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    const-wide v0, 0xffffffffL

    and-long p3, p4, v0

    long-to-int p3, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    mul-float/2addr p0, p0

    mul-float/2addr p2, p2

    div-float/2addr p0, p2

    mul-float/2addr p1, p1

    mul-float/2addr p3, p3

    div-float/2addr p1, p3

    add-float/2addr p1, p0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, p1, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final o(Lf2/a1;I)Le3/k;
    .locals 3

    invoke-virtual {p0}, Lf2/a1;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le2/g0;

    iget v2, v2, Le2/g0;->m:I

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    check-cast v0, Ljava/util/Map$Entry;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le3/k;

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static final p(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%07x"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final q(I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "android.widget.Button"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "android.widget.CheckBox"

    return-object p0

    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    const-string p0, "android.widget.RadioButton"

    return-object p0

    :cond_2
    const/4 v0, 0x5

    if-ne p0, v0, :cond_3

    const-string p0, "android.widget.ImageView"

    return-object p0

    :cond_3
    const/4 v0, 0x6

    if-ne p0, v0, :cond_4

    const-string p0, "android.widget.Spinner"

    return-object p0

    :cond_4
    const/4 v0, 0x7

    if-ne p0, v0, :cond_5

    const-string p0, "android.widget.NumberPicker"

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method
