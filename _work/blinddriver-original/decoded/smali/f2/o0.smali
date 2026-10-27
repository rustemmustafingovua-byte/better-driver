.class public abstract Lf2/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/a0;

.field public static final b:Lr0/s2;

.field public static final c:Lr0/a0;

.field public static final d:Lr0/s2;

.field public static final e:Lr0/s2;

.field public static final f:Lr0/s2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lf2/l0;->m:Lf2/l0;

    new-instance v1, Lr0/a0;

    invoke-direct {v1, v0}, Lr0/a0;-><init>(Li9/a;)V

    sput-object v1, Lf2/o0;->a:Lr0/a0;

    sget-object v0, Lf2/l0;->n:Lf2/l0;

    new-instance v1, Lr0/s2;

    invoke-direct {v1, v0}, Lr0/m1;-><init>(Li9/a;)V

    sput-object v1, Lf2/o0;->b:Lr0/s2;

    sget-object v0, Lf2/r;->o:Lf2/r;

    new-instance v1, Lr0/a0;

    invoke-direct {v1, v0}, Lr0/a0;-><init>(Li9/c;)V

    sput-object v1, Lf2/o0;->c:Lr0/a0;

    sget-object v0, Lf2/l0;->o:Lf2/l0;

    new-instance v1, Lr0/s2;

    invoke-direct {v1, v0}, Lr0/m1;-><init>(Li9/a;)V

    sput-object v1, Lf2/o0;->d:Lr0/s2;

    sget-object v0, Lf2/l0;->p:Lf2/l0;

    new-instance v1, Lr0/s2;

    invoke-direct {v1, v0}, Lr0/m1;-><init>(Li9/a;)V

    sput-object v1, Lf2/o0;->e:Lr0/s2;

    sget-object v0, Lf2/l0;->q:Lf2/l0;

    new-instance v1, Lr0/s2;

    invoke-direct {v1, v0}, Lr0/m1;-><init>(Li9/a;)V

    sput-object v1, Lf2/o0;->f:Lr0/s2;

    return-void
.end method

.method public static final a(Lf2/y;Li9/e;Lr0/q;I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const v4, -0x1f032317

    invoke-virtual {v2, v4}, Lr0/q;->c0(I)Lr0/q;

    invoke-virtual {v2, v0}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x4

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    or-int/2addr v4, v3

    invoke-virtual {v2, v1}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/16 v7, 0x20

    goto :goto_1

    :cond_1
    const/16 v7, 0x10

    :goto_1
    or-int/2addr v4, v7

    and-int/lit8 v7, v4, 0x13

    const/16 v8, 0x12

    const/4 v10, 0x1

    if-eq v7, v8, :cond_2

    move v7, v10

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    and-int/2addr v4, v10

    invoke-virtual {v2, v4, v7}, Lr0/q;->T(IZ)Z

    move-result v4

    if-eqz v4, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    sget-object v8, Lr0/m;->a:Lr0/e;

    if-ne v7, v8, :cond_3

    new-instance v7, Lf2/y0;

    invoke-direct {v7, v4}, Lf2/y0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast v7, Lf2/y0;

    invoke-virtual {v0}, Lf2/y;->getViewTreeOwners()Lf2/n;

    move-result-object v11

    if-eqz v11, :cond_17

    iget-object v12, v11, Lf2/n;->b:Ln4/g;

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v8, :cond_8

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    const-string v14, "null cannot be cast to non-null type android.view.View"

    invoke-static {v13, v14}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Landroid/view/View;

    const v14, 0x7f08003b

    invoke-virtual {v13, v14}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    instance-of v15, v14, Ljava/lang/String;

    const/16 v16, 0x0

    if-eqz v15, :cond_4

    check-cast v14, Ljava/lang/String;

    goto :goto_3

    :cond_4
    move-object/from16 v14, v16

    :goto_3
    if-nez v14, :cond_5

    invoke-virtual {v13}, Landroid/view/View;->getId()I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    :cond_5
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-class v15, Lc1/f;

    invoke-virtual {v15}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v15, 0x3a

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12}, Ln4/g;->getSavedStateRegistry()Ln4/e;

    move-result-object v14

    invoke-virtual {v14, v13}, Ln4/e;->a(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v15

    if-eqz v15, :cond_6

    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v15}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v16

    check-cast v16, Ljava/lang/Iterable;

    invoke-interface/range {v16 .. v16}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v9, v18

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v15, v9}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    const-string v6, "null cannot be cast to non-null type java.util.ArrayList<kotlin.Any?>"

    invoke-static {v10, v6}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v10, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v5, v16

    :cond_7
    sget-object v6, Lf2/r;->p:Lf2/r;

    sget-object v9, Lc1/h;->a:Lr0/s2;

    new-instance v9, Lc1/g;

    invoke-direct {v9, v5, v6}, Lc1/g;-><init>(Ljava/util/Map;Li9/c;)V

    :try_start_0
    new-instance v5, Lb/h;

    const/4 v6, 0x2

    invoke-direct {v5, v6, v9}, Lb/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14, v13, v5}, Ln4/e;->c(Ljava/lang/String;Ln4/d;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    goto :goto_5

    :catch_0
    const/4 v5, 0x0

    :goto_5
    new-instance v6, Lf2/o1;

    new-instance v10, Lf2/p1;

    invoke-direct {v10, v5, v14, v13}, Lf2/p1;-><init>(ZLn4/e;Ljava/lang/String;)V

    invoke-direct {v6, v9, v10}, Lf2/o1;-><init>(Lc1/g;Lf2/p1;)V

    invoke-virtual {v2, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v13, v6

    :cond_8
    check-cast v13, Lf2/o1;

    invoke-virtual {v2, v13}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_9

    if-ne v6, v8, :cond_a

    :cond_9
    new-instance v6, Landroidx/fragment/app/t;

    const/16 v5, 0x9

    invoke-direct {v6, v5, v13}, Landroidx/fragment/app/t;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_a
    check-cast v6, Li9/c;

    sget-object v5, Lt8/z;->a:Lt8/z;

    invoke-static {v5, v6, v2}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v8, :cond_c

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v5, v6, :cond_b

    const-class v5, Landroid/os/Vibrator;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    const/4 v6, 0x7

    const/4 v9, 0x2

    const/4 v10, 0x1

    filled-new-array {v10, v6, v9}, [I

    move-result-object v6

    invoke-static {v5, v6}, Lc5/j;->A(Landroid/os/Vibrator;[I)Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v5, Lf2/m1;

    invoke-virtual {v0}, Lf2/y;->getView()Landroid/view/View;

    move-result-object v6

    const/4 v9, 0x0

    invoke-direct {v5, v6, v9}, Lf2/m1;-><init>(Landroid/view/View;I)V

    goto :goto_6

    :cond_b
    new-instance v5, Lf2/d2;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    :goto_6
    invoke-virtual {v2, v5}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_c
    check-cast v5, Lt1/a;

    invoke-virtual {v0}, Lf2/y;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v8, :cond_d

    new-instance v9, Lk2/c;

    invoke-direct {v9}, Lk2/c;-><init>()V

    invoke-virtual {v2, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_d
    check-cast v9, Lk2/c;

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v8, :cond_f

    new-instance v10, Landroid/content/res/Configuration;

    invoke-direct {v10}, Landroid/content/res/Configuration;-><init>()V

    if-eqz v6, :cond_e

    invoke-virtual {v10, v6}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    :cond_e
    invoke-virtual {v2, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_f
    check-cast v10, Landroid/content/res/Configuration;

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v8, :cond_10

    new-instance v6, Lf2/m0;

    invoke-direct {v6, v10, v9}, Lf2/m0;-><init>(Landroid/content/res/Configuration;Lk2/c;)V

    invoke-virtual {v2, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_10
    check-cast v6, Lf2/m0;

    invoke-virtual {v2, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v10

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v14

    if-nez v10, :cond_11

    if-ne v14, v8, :cond_12

    :cond_11
    new-instance v14, Lc5/f;

    const/4 v10, 0x3

    invoke-direct {v14, v10, v4, v6}, Lc5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v14}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_12
    check-cast v14, Li9/c;

    invoke-static {v9, v14, v2}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v8, :cond_13

    new-instance v6, Lk2/d;

    invoke-direct {v6}, Lk2/d;-><init>()V

    invoke-virtual {v2, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_13
    check-cast v6, Lk2/d;

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v8, :cond_14

    new-instance v10, Lf2/n0;

    invoke-direct {v10, v6}, Lf2/n0;-><init>(Lk2/d;)V

    invoke-virtual {v2, v10}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_14
    check-cast v10, Lf2/n0;

    invoke-virtual {v2, v4}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v14

    invoke-virtual {v2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v15

    if-nez v14, :cond_15

    if-ne v15, v8, :cond_16

    :cond_15
    new-instance v15, Lc5/f;

    const/4 v8, 0x4

    invoke-direct {v15, v8, v4, v10}, Lc5/f;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v15}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_16
    check-cast v15, Li9/c;

    invoke-static {v6, v15, v2}, Lr0/r;->c(Ljava/lang/Object;Li9/c;Lr0/q;)V

    sget-object v8, Lf2/l1;->v:Lr0/a0;

    invoke-virtual {v2, v8}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v0}, Lf2/y;->getScrollCaptureInProgress$ui()Z

    move-result v14

    or-int/2addr v10, v14

    sget-object v14, Lf2/o0;->a:Lr0/a0;

    invoke-virtual {v0}, Lf2/y;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    invoke-virtual {v14, v15}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v16

    sget-object v14, Lf2/o0;->b:Lr0/s2;

    invoke-virtual {v14, v4}, Lr0/s2;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v17

    sget-object v4, Lb4/h;->a:Lr0/m1;

    iget-object v11, v11, Lf2/n;->a:Landroidx/lifecycle/v;

    invoke-virtual {v4, v11}, Lr0/m1;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v18

    sget-object v4, Lo4/a;->a:Lr0/m1;

    invoke-virtual {v4, v12}, Lr0/m1;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v19

    sget-object v4, Lc1/h;->a:Lr0/s2;

    invoke-virtual {v4, v13}, Lr0/s2;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v20

    sget-object v4, Lf2/o0;->f:Lr0/s2;

    invoke-virtual {v0}, Lf2/y;->getView()Landroid/view/View;

    move-result-object v11

    invoke-virtual {v4, v11}, Lr0/s2;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v21

    sget-object v4, Lf2/o0;->d:Lr0/s2;

    invoke-virtual {v4, v9}, Lr0/s2;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v22

    sget-object v4, Lf2/o0;->e:Lr0/s2;

    invoke-virtual {v4, v6}, Lr0/s2;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v23

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v8, v4}, Lr0/a0;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v24

    sget-object v4, Lf2/l1;->l:Lr0/s2;

    invoke-virtual {v4, v5}, Lr0/s2;->a(Ljava/lang/Object;)Lj6/g0;

    move-result-object v25

    filled-new-array/range {v16 .. v25}, [Lj6/g0;

    move-result-object v4

    new-instance v5, Le3/m;

    invoke-direct {v5, v0, v7, v1}, Le3/m;-><init>(Lf2/y;Lf2/y0;Li9/e;)V

    const v6, 0x3f2ad1a9

    invoke-static {v6, v5, v2}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v5

    const/16 v6, 0x38

    invoke-static {v4, v5, v2, v6}, Lr0/r;->b([Lj6/g0;Li9/e;Lr0/q;I)V

    goto :goto_7

    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called when the ViewTreeOwnersAvailability is not yet in Available state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-virtual {v2}, Lr0/q;->W()V

    :goto_7
    invoke-virtual {v2}, Lr0/q;->u()Lr0/n1;

    move-result-object v2

    if-eqz v2, :cond_19

    new-instance v4, Lc2/m0;

    invoke-direct {v4, v0, v1, v3}, Lc2/m0;-><init>(Lf2/y;Li9/e;I)V

    iput-object v4, v2, Lr0/n1;->d:Li9/e;

    :cond_19
    return-void
.end method

.method public static final b(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CompositionLocal "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not present"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final c()Lr0/a0;
    .locals 1

    sget-object v0, Lf2/o0;->a:Lr0/a0;

    return-object v0
.end method

.method public static final d()Lr0/s2;
    .locals 1

    sget-object v0, Lf2/o0;->b:Lr0/s2;

    return-object v0
.end method

.method public static final e()Lr0/s2;
    .locals 1

    sget-object v0, Lf2/o0;->f:Lr0/s2;

    return-object v0
.end method
