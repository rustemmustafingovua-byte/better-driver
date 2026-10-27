.class public abstract Lwa/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static A(Landroid/os/Parcel;ILjava/lang/String;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lwa/h;->D(Landroid/os/Parcel;I)I

    move-result p1

    invoke-virtual {p0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lwa/h;->E(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static B(Landroid/os/Parcel;I[Landroid/os/Parcelable;I)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lwa/h;->D(Landroid/os/Parcel;I)I

    move-result p1

    array-length v0, p2

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    if-nez v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    invoke-interface {v3, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v4, v3, v5

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lwa/h;->E(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static C(Landroid/os/Parcel;ILjava/util/List;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lwa/h;->D(Landroid/os/Parcel;I)I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    if-nez v3, :cond_1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    invoke-interface {v3, p0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int v4, v3, v5

    invoke-virtual {p0, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lwa/h;->E(Landroid/os/Parcel;I)V

    return-void
.end method

.method public static D(Landroid/os/Parcel;I)I
    .locals 1

    const/high16 v0, -0x10000

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    return p0
.end method

.method public static E(Landroid/os/Parcel;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    sub-int v1, v0, p1

    add-int/lit8 p1, p1, -0x4

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method

.method public static F(Landroid/os/Parcel;II)V
    .locals 0

    shl-int/lit8 p2, p2, 0x10

    or-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public static final a(ZLi9/a;Lr0/q;I)V
    .locals 13

    move/from16 v6, p3

    const v0, -0x158b58d6

    invoke-virtual {p2, v0}, Lr0/q;->c0(I)Lr0/q;

    or-int/lit8 v0, v6, 0x6

    and-int/lit8 v1, v6, 0x30

    const/16 v2, 0x20

    if-nez v1, :cond_1

    invoke-virtual {p2, p1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    :goto_0
    or-int/2addr v0, v1

    :cond_1
    and-int/lit8 v1, v0, 0x13

    const/16 v3, 0x12

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v1, v3, :cond_2

    move v1, v8

    goto :goto_1

    :cond_2
    move v1, v7

    :goto_1
    and-int/lit8 v3, v0, 0x1

    invoke-virtual {p2, v3, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_21

    sget-object p0, Li4/a;->a:Lr0/a0;

    invoke-virtual {p2, p0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lh4/c;

    const-string v1, "<this>"

    const/4 v3, 0x0

    if-nez p0, :cond_7

    const p0, 0x38ac9bd8

    invoke-virtual {p2, p0}, Lr0/q;->b0(I)V

    sget-object p0, Lf2/o0;->f:Lr0/s2;

    invoke-virtual {p2, p0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    if-eqz p0, :cond_6

    const v5, 0x7f080090

    invoke-virtual {p0, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v9, v5, Lh4/c;

    if-eqz v9, :cond_3

    check-cast v5, Lh4/c;

    goto :goto_3

    :cond_3
    move-object v5, v3

    :goto_3
    if-eqz v5, :cond_4

    move-object p0, v5

    goto :goto_4

    :cond_4
    invoke-static {p0}, Lr5/u0;->n(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p0

    instance-of v5, p0, Landroid/view/View;

    if-eqz v5, :cond_5

    check-cast p0, Landroid/view/View;

    goto :goto_2

    :cond_5
    move-object p0, v3

    goto :goto_2

    :cond_6
    move-object p0, v3

    :goto_4
    invoke-virtual {p2, v7}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_7
    const v5, 0x38ac9437

    invoke-virtual {p2, v5}, Lr0/q;->b0(I)V

    invoke-virtual {p2, v7}, Lr0/q;->q(Z)V

    :goto_5
    if-nez p0, :cond_10

    const p0, 0x1fe7a4b1

    invoke-virtual {p2, p0}, Lr0/q;->b0(I)V

    sget-object p0, Lc/h;->a:Lr0/a0;

    invoke-virtual {p2, p0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb/j0;

    if-nez p0, :cond_c

    const p0, 0x48071ead

    invoke-virtual {p2, p0}, Lr0/q;->b0(I)V

    sget-object p0, Lf2/o0;->f:Lr0/s2;

    invoke-virtual {p2, p0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_6
    if-eqz p0, :cond_b

    const v1, 0x7f080091

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v5, v1, Lb/j0;

    if-eqz v5, :cond_8

    check-cast v1, Lb/j0;

    goto :goto_7

    :cond_8
    move-object v1, v3

    :goto_7
    if-eqz v1, :cond_9

    move-object p0, v1

    goto :goto_8

    :cond_9
    invoke-static {p0}, Lr5/u0;->n(Landroid/view/View;)Landroid/view/ViewParent;

    move-result-object p0

    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_a

    check-cast p0, Landroid/view/View;

    goto :goto_6

    :cond_a
    move-object p0, v3

    goto :goto_6

    :cond_b
    move-object p0, v3

    :goto_8
    invoke-virtual {p2, v7}, Lr0/q;->q(Z)V

    goto :goto_9

    :cond_c
    const v1, 0x4807151c

    invoke-virtual {p2, v1}, Lr0/q;->b0(I)V

    goto :goto_8

    :goto_9
    if-nez p0, :cond_f

    const p0, 0x48072680    # 138394.0f

    invoke-virtual {p2, p0}, Lr0/q;->b0(I)V

    sget-object p0, Lf2/o0;->b:Lr0/s2;

    invoke-virtual {p2, p0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    :goto_a
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_e

    instance-of v1, p0, Lb/j0;

    if-eqz v1, :cond_d

    goto :goto_b

    :cond_d
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    goto :goto_a

    :cond_e
    move-object p0, v3

    :goto_b
    check-cast p0, Lb/j0;

    :goto_c
    invoke-virtual {p2, v7}, Lr0/q;->q(Z)V

    goto :goto_d

    :cond_f
    const v1, 0x4807156d

    invoke-virtual {p2, v1}, Lr0/q;->b0(I)V

    goto :goto_c

    :goto_d
    invoke-virtual {p2, v7}, Lr0/q;->q(Z)V

    goto :goto_e

    :cond_10
    const v1, 0x1fe7996e

    invoke-virtual {p2, v1}, Lr0/q;->b0(I)V

    goto :goto_d

    :goto_e
    if-eqz p0, :cond_20

    invoke-virtual {p2, p0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    sget-object v9, Lr0/m;->a:Lr0/e;

    if-nez v1, :cond_11

    if-ne v5, v9, :cond_16

    :cond_11
    new-instance v5, Ld/b;

    instance-of v1, p0, Lh4/c;

    if-eqz v1, :cond_12

    move-object v1, p0

    check-cast v1, Lh4/c;

    goto :goto_f

    :cond_12
    move-object v1, v3

    :goto_f
    if-eqz v1, :cond_13

    invoke-interface {v1}, Lh4/c;->b()Lg5/i;

    move-result-object v1

    goto :goto_10

    :cond_13
    move-object v1, v3

    :goto_10
    instance-of v10, p0, Lb/j0;

    if-eqz v10, :cond_14

    move-object v10, p0

    check-cast v10, Lb/j0;

    goto :goto_11

    :cond_14
    move-object v10, v3

    :goto_11
    if-eqz v10, :cond_15

    invoke-interface {v10}, Lb/j0;->a()Lb/h0;

    move-result-object v3

    :cond_15
    invoke-direct {v5, v1, v3}, Ld/b;-><init>(Lg5/i;Lb/h0;)V

    invoke-virtual {p2, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_16
    move-object v10, v5

    check-cast v10, Ld/b;

    iget-wide v11, p2, Lr0/q;->T:J

    invoke-virtual {p2, v10}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p2, v11, v12}, Lr0/q;->f(J)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_17

    if-ne v3, v9, :cond_18

    :cond_17
    new-instance v3, Lc/f;

    new-instance v1, Lc/b;

    invoke-direct {v1, v11, v12, p0}, Lc/b;-><init>(JLjava/lang/Object;)V

    invoke-direct {v3, v1}, Lc/f;-><init>(Lc/b;)V

    new-instance p0, La1/b;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, La1/b;-><init>(I)V

    iput-object p0, v3, Lc/f;->c:Li9/a;

    invoke-virtual {p2, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_18
    move-object v1, v3

    check-cast v1, Lc/f;

    const p0, -0x22e316cc

    invoke-virtual {p2, p0}, Lr0/q;->b0(I)V

    invoke-virtual {p2, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p0

    and-int/lit8 v0, v0, 0x70

    if-ne v0, v2, :cond_19

    move v0, v8

    goto :goto_12

    :cond_19
    move v0, v7

    :goto_12
    or-int/2addr p0, v0

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-nez p0, :cond_1a

    if-ne v0, v9, :cond_1b

    :cond_1a
    new-instance v0, Lb0/n;

    const/4 p0, 0x2

    invoke-direct {v0, p0, v1, p1}, Lb0/n;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1b
    check-cast v0, Li9/a;

    invoke-static {v0, p2}, Lr0/r;->j(Li9/a;Lr0/q;)V

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez p0, :cond_1c

    if-ne v2, v9, :cond_1d

    :cond_1c
    new-instance v2, Lb0/a;

    const/4 p0, 0x2

    invoke-direct {v2, p0, v1}, Lb0/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1d
    move-object v3, v2

    check-cast v3, Li9/c;

    const/4 v2, 0x0

    const/4 v5, 0x6

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lg5/f;->b(Ljava/lang/Boolean;Ljava/lang/Object;Landroidx/lifecycle/v;Li9/c;Lr0/q;I)V

    invoke-virtual {p2, v10}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p2, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr p0, v0

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v0

    if-nez p0, :cond_1e

    if-ne v0, v9, :cond_1f

    :cond_1e
    new-instance v0, Lb0/r0;

    const/4 p0, 0x6

    invoke-direct {v0, p0, v10, v1}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_1f
    check-cast v0, Li9/c;

    invoke-static {v10, v1, v0, p2}, Lr0/r;->d(Ljava/lang/Object;Ljava/lang/Object;Li9/c;Lr0/q;)V

    invoke-virtual {p2, v7}, Lr0/q;->q(Z)V

    move p0, v8

    goto :goto_13

    :cond_20
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No NavigationEventDispatcherOwner was provided via LocalNavigationEventDispatcherOwner and no OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner. Please provide one of the two."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    invoke-virtual {p2}, Lr0/q;->W()V

    :goto_13
    invoke-virtual {p2}, Lr0/q;->u()Lr0/n1;

    move-result-object v0

    if-eqz v0, :cond_22

    new-instance v1, Lc/c;

    invoke-direct {v1, p0, p1, v6}, Lc/c;-><init>(ZLi9/a;I)V

    iput-object v1, v0, Lr0/n1;->d:Li9/e;

    :cond_22
    return-void
.end method

.method public static final b(JJ)Lb3/k;
    .locals 7

    new-instance v0, Lb3/k;

    const/16 v1, 0x20

    shr-long v2, p0, v1

    long-to-int v2, v2

    const-wide v3, 0xffffffffL

    and-long/2addr p0, v3

    long-to-int p0, p0

    shr-long v5, p2, v1

    long-to-int p1, v5

    add-int/2addr p1, v2

    and-long/2addr p2, v3

    long-to-int p2, p2

    add-int/2addr p2, p0

    invoke-direct {v0, v2, p0, p1, p2}, Lb3/k;-><init>(IIII)V

    return-object v0
.end method

.method public static final c([Ljava/lang/Object;IILu8/g;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int v2, p1, v1

    aget-object v2, p0, v2

    if-ne v2, p3, :cond_1

    const-string v2, "(this Collection)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eq p0, p1, :cond_3

    sget-object v0, Ld9/a;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    return-void

    :cond_2
    sget-object v0, Lc9/a;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_3

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public static final e(Ljava/nio/ByteBuffer;I[BII)V
    .locals 1

    const-string v0, "bb"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dst"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p2, p3, p4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static final f(Ljava/nio/ByteBuffer;I[BII)V
    .locals 1

    const-string v0, "bb"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "src"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p0, p2, p3, p4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public static i(I)V
    .locals 5

    const/4 v0, 0x2

    if-gt v0, p0, :cond_0

    const/16 v1, 0x25

    if-ge p0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "radix "

    const-string v3, " was not in valid range "

    invoke-static {p0, v2, v3}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v2, Lo9/d;

    const/16 v3, 0x24

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, v4}, Lo9/b;-><init>(III)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    goto :goto_5

    :cond_1
    if-nez v2, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v4, v2

    if-gtz v4, :cond_2

    goto :goto_0

    :cond_2
    aget-object v2, v2, v0

    goto :goto_1

    :cond_3
    :goto_0
    return v3

    :cond_4
    :goto_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-class v5, Landroid/app/AppOpsManager;

    if-ne v3, v1, :cond_8

    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x1

    if-nez v3, :cond_5

    move v2, v5

    goto :goto_2

    :cond_5
    invoke-virtual {v3, p1, v4, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    :goto_2
    if-eqz v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    if-nez v3, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v3, p1, v1, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    :goto_3
    move v2, v5

    goto :goto_4

    :cond_8
    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, p1, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :goto_4
    if-nez v2, :cond_9

    :goto_5
    return v0

    :cond_9
    const/4 p0, -0x2

    return p0
.end method

.method public static k(Ld6/m;Lb6/l;)Ljava/lang/String;
    .locals 4

    iget-object v0, p1, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.time."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const/16 v1, 0x2e

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ltz v0, :cond_0

    return-object v2

    :cond_0
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Lb6/l;->f0(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v2

    :cond_1
    sget-object v0, Lb6/x;->X:Lb6/x;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return-object v2

    :cond_3
    :goto_0
    const-string p0, "Java 8 date/time"

    const-string v1, "com.fasterxml.jackson.datatype:jackson-datatype-jsr310"

    :goto_1
    move-object v2, v0

    goto :goto_3

    :cond_4
    const-string v1, "org.joda.time."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string p0, "Joda date/time"

    const-string v1, "com.fasterxml.jackson.datatype:jackson-datatype-joda"

    goto :goto_3

    :cond_5
    const-string v1, "java.util.Optional"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lb6/x;->W:Lb6/x;

    if-eqz p0, :cond_7

    invoke-virtual {p0, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_2

    :cond_6
    return-object v2

    :cond_7
    :goto_2
    const-string p0, "Java 8 optional"

    const-string v1, "com.fasterxml.jackson.datatype:jackson-datatype-jdk8"

    goto :goto_1

    :goto_3
    invoke-static {p1}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not supported by default: add Module \""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" to enable handling"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (or disable `MapperFeature."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "`)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_8
    return-object p0

    :cond_9
    return-object v2
.end method

.method public static final l(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    .locals 4

    if-eqz p0, :cond_7

    if-nez p1, :cond_6

    instance-of p1, p0, Ljava/lang/AutoCloseable;

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V

    goto :goto_1

    :cond_0
    instance-of p1, p0, Ljava/util/concurrent/ExecutorService;

    if-eqz p1, :cond_4

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->commonPool()Ljava/util/concurrent/ForkJoinPool;

    move-result-object p1

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const/4 v0, 0x0

    :cond_2
    :goto_0
    if-nez p1, :cond_3

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-interface {p0, v2, v3, v1}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez v0, :cond_2

    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_4
    instance-of p1, p0, Landroid/content/res/TypedArray;

    if-eqz p1, :cond_5

    check-cast p0, Landroid/content/res/TypedArray;

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_6
    :try_start_1
    invoke-static {p0}, La6/q;->u(Ljava/lang/AutoCloseable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p1, p0}, Lwa/h;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public static final m(CCZ)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    if-eq p0, p1, :cond_3

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method public static final n(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lp9/b;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lha/w0;

    if-eqz v0, :cond_0

    check-cast p0, Lha/w0;

    iget-object p0, p0, Lha/w0;->a:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-static {p0}, Lwa/h;->n(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lp9/b;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final o(J)J
    .locals 5

    const/16 v0, 0x20

    shr-long v1, p0, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const-wide v3, 0xffffffffL

    and-long/2addr p0, v3

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    div-float/2addr p0, v2

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    shl-long v0, v1, v0

    and-long/2addr p0, v3

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static p(Lb6/l;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {v0}, Lu6/h;->A(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_8

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v0, 0x0

    if-ne v1, p0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, p0, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v1, p0, :cond_2

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2
    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v1, p0, :cond_3

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_3
    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v1, p0, :cond_4

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_4
    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v1, p0, :cond_5

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_5
    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v1, p0, :cond_6

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v1, p0, :cond_7

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Class "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is not a primitive type"

    invoke-static {v1, v0, v2}, La6/q;->i(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-virtual {p0}, Lb6/l;->c0()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {p0}, Lb6/g;->y()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_a

    const-string p0, ""

    return-object p0

    :cond_a
    const-class v0, Ljava/util/Date;

    invoke-virtual {p0, v0}, Lb6/l;->f0(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object p0

    :cond_b
    const-class v0, Ljava/util/Calendar;

    invoke-virtual {p0, v0}, Lb6/l;->f0(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_c

    new-instance p0, Ljava/util/GregorianCalendar;

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {p0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p0

    :cond_c
    const/4 p0, 0x0

    return-object p0

    :cond_d
    :goto_0
    sget-object p0, Lr5/z;->n:Lr5/z;

    return-object p0
.end method

.method public static q(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final s(II[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge p0, p1, :cond_0

    const/4 v0, 0x0

    aput-object v0, p2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final t(Ll1/c;)Lb3/k;
    .locals 4

    new-instance v0, Lb3/k;

    iget v1, p0, Ll1/c;->a:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Ll1/c;->b:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Ll1/c;->c:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget p0, p0, Ll1/c;->d:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Lb3/k;-><init>(IIII)V

    return-object v0
.end method

.method public static u(Landroid/view/Window;Z)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Li2/a;->f(Landroid/view/Window;Z)V

    return-void

    :cond_0
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    invoke-static {p0, p1}, Li2/a;->e(Landroid/view/Window;Z)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_2

    and-int/lit16 p1, v0, -0x701

    goto :goto_0

    :cond_2
    or-int/lit16 p1, v0, 0x700

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method

.method public static v(D)I
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-lez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    cmpg-double p0, p0, v0

    if-gez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final w(Ljava/util/stream/Stream;)Ljava/util/List;
    .locals 2

    const-string v0, "s"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    const-string v0, "unmodifiableList(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final x(Lla/c0;)Lla/c0;
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lla/c0;->b()Lla/b0;

    move-result-object v0

    new-instance v1, Lma/a;

    iget-object p0, p0, Lla/c0;->r:Lla/e0;

    invoke-virtual {p0}, Lla/e0;->d()Lla/t;

    move-result-object v2

    invoke-virtual {p0}, Lla/e0;->c()J

    move-result-wide v3

    invoke-direct {v1, v2, v3, v4}, Lma/a;-><init>(Lla/t;J)V

    iput-object v1, v0, Lla/b0;->g:Lla/e0;

    invoke-virtual {v0}, Lla/b0;->a()Lla/c0;

    move-result-object p0

    return-object p0
.end method

.method public static final y(Ljava/io/FilterInputStream;Ljava/io/OutputStream;)V
    .locals 3

    const/16 v0, 0x2000

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static z(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1}, Lwa/h;->D(Landroid/os/Parcel;I)I

    move-result p1

    invoke-interface {p2, p0, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-static {p0, p1}, Lwa/h;->E(Landroid/os/Parcel;I)V

    return-void
.end method


# virtual methods
.method public g(Landroid/content/Context;Landroid/os/Looper;Lg7/c;Ljava/lang/Object;Le7/g;Le7/h;)Le7/c;
    .locals 0

    check-cast p5, Lf7/o;

    check-cast p6, Lf7/o;

    invoke-virtual/range {p0 .. p6}, Lwa/h;->h(Landroid/content/Context;Landroid/os/Looper;Lg7/c;Ljava/lang/Object;Lf7/o;Lf7/o;)Le7/c;

    move-result-object p0

    return-object p0
.end method

.method public h(Landroid/content/Context;Landroid/os/Looper;Lg7/c;Ljava/lang/Object;Lf7/o;Lf7/o;)Le7/c;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "buildClient must be implemented"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract r(Lwb/a;ILwb/a;I)V
.end method
