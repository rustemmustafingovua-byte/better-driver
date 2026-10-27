.class public final Lm2/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le2/g0;

.field public final b:Lm2/e;

.field public final c:Lk/k;

.field public final d:Lk/h0;


# direct methods
.method public constructor <init>(Le2/g0;Lm2/e;Lk/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm2/r;->a:Le2/g0;

    iput-object p2, p0, Lm2/r;->b:Lm2/e;

    iput-object p3, p0, Lm2/r;->c:Lk/k;

    new-instance p1, Lk/h0;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Lk/h0;-><init>(I)V

    iput-object p1, p0, Lm2/r;->d:Lk/h0;

    return-void
.end method


# virtual methods
.method public final a()Lm2/p;
    .locals 4

    new-instance v0, Lm2/m;

    invoke-direct {v0}, Lm2/m;-><init>()V

    new-instance v1, Lm2/p;

    const/4 v2, 0x0

    iget-object v3, p0, Lm2/r;->b:Lm2/e;

    iget-object p0, p0, Lm2/r;->a:Le2/g0;

    invoke-direct {v1, v3, v2, p0, v0}, Lm2/p;-><init>(Lf1/q;ZLe2/g0;Lm2/m;)V

    return-object v1
.end method

.method public final b(Le2/g0;Lm2/m;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v0, v0, Lm2/r;->d:Lk/h0;

    iget-object v2, v0, Lk/h0;->a:[Ljava/lang/Object;

    iget v0, v0, Lk/h0;->b:I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1b

    aget-object v5, v2, v4

    check-cast v5, Lg1/c;

    iget-object v6, v5, Lg1/c;->s:Lk/y;

    iget-object v7, v5, Lg1/c;->n:Lf2/y;

    iget-object v5, v5, Lg1/c;->l:Lb0/l1;

    iget-object v8, v5, Lb0/l1;->m:Ljava/lang/Object;

    check-cast v8, Landroid/view/autofill/AutofillManager;

    invoke-virtual/range {p1 .. p1}, Le2/g0;->x()Lm2/m;

    move-result-object v9

    move-object/from16 v10, p1

    iget v11, v10, Le2/g0;->m:I

    if-eqz v1, :cond_1

    sget-object v13, Lm2/t;->E:Lm2/w;

    iget-object v14, v1, Lm2/m;->l:Lk/m0;

    invoke-virtual {v14, v13}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_0

    const/4 v13, 0x0

    :cond_0
    check-cast v13, Lp2/g;

    if-eqz v13, :cond_1

    iget-object v13, v13, Lp2/g;->m:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v13, 0x0

    :goto_1
    if-eqz v9, :cond_3

    sget-object v14, Lm2/t;->E:Lm2/w;

    iget-object v15, v9, Lm2/m;->l:Lk/m0;

    invoke-virtual {v15, v14}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_2

    const/4 v14, 0x0

    :cond_2
    check-cast v14, Lp2/g;

    if-eqz v14, :cond_3

    iget-object v14, v14, Lp2/g;->m:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :goto_2
    const/4 v15, 0x1

    if-eq v13, v14, :cond_6

    if-nez v13, :cond_4

    invoke-virtual {v5, v7, v11, v15}, Lb0/l1;->x(Landroid/view/View;IZ)V

    goto :goto_3

    :cond_4
    if-nez v14, :cond_5

    invoke-virtual {v5, v7, v11, v3}, Lb0/l1;->x(Landroid/view/View;IZ)V

    goto :goto_3

    :cond_5
    sget-object v13, Lm2/t;->r:Lm2/w;

    invoke-static {v9, v13}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg1/d;

    sget-object v12, Lg1/k;->a:Lg1/d;

    invoke-static {v13, v12}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-static {v14}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v12

    invoke-virtual {v8, v7, v11, v12}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    :cond_6
    :goto_3
    if-eqz v1, :cond_8

    sget-object v12, Lm2/t;->J:Lm2/w;

    iget-object v13, v1, Lm2/m;->l:Lk/m0;

    invoke-virtual {v13, v12}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_7

    const/4 v12, 0x0

    :cond_7
    check-cast v12, Lo2/a;

    goto :goto_4

    :cond_8
    const/4 v12, 0x0

    :goto_4
    if-eqz v9, :cond_a

    sget-object v13, Lm2/t;->J:Lm2/w;

    iget-object v14, v9, Lm2/m;->l:Lk/m0;

    invoke-virtual {v14, v13}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_9

    const/4 v13, 0x0

    :cond_9
    check-cast v13, Lo2/a;

    goto :goto_5

    :cond_a
    const/4 v13, 0x0

    :goto_5
    if-eq v12, v13, :cond_f

    if-nez v12, :cond_b

    invoke-virtual {v5, v7, v11, v15}, Lb0/l1;->x(Landroid/view/View;IZ)V

    goto :goto_7

    :cond_b
    if-nez v13, :cond_c

    invoke-virtual {v5, v7, v11, v3}, Lb0/l1;->x(Landroid/view/View;IZ)V

    goto :goto_7

    :cond_c
    sget-object v12, Lm2/t;->r:Lm2/w;

    invoke-static {v9, v12}, Lm2/s;->d(Lm2/m;Lm2/w;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg1/d;

    sget-object v14, Lg1/k;->b:Lg1/d;

    invoke-static {v12, v14}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    if-eqz v12, :cond_e

    if-eq v12, v15, :cond_d

    const/4 v12, 0x0

    goto :goto_6

    :cond_d
    sget-object v12, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_6

    :cond_e
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_6
    if-eqz v12, :cond_f

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    invoke-static {v12}, Landroid/view/autofill/AutofillValue;->forToggle(Z)Landroid/view/autofill/AutofillValue;

    move-result-object v12

    invoke-virtual {v8, v7, v11, v12}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    :cond_f
    :goto_7
    if-eqz v1, :cond_11

    sget-object v12, Lm2/t;->s:Lm2/w;

    iget-object v13, v1, Lm2/m;->l:Lk/m0;

    invoke-virtual {v13, v12}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_10

    const/4 v12, 0x0

    :cond_10
    check-cast v12, Lg1/f;

    goto :goto_8

    :cond_11
    const/4 v12, 0x0

    :goto_8
    if-eqz v9, :cond_13

    sget-object v13, Lm2/t;->s:Lm2/w;

    iget-object v14, v9, Lm2/m;->l:Lk/m0;

    invoke-virtual {v14, v13}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_12

    const/4 v13, 0x0

    :cond_12
    check-cast v13, Lg1/f;

    goto :goto_9

    :cond_13
    const/4 v13, 0x0

    :goto_9
    invoke-static {v12, v13}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_16

    if-nez v12, :cond_14

    invoke-virtual {v5, v7, v11, v15}, Lb0/l1;->x(Landroid/view/View;IZ)V

    goto :goto_a

    :cond_14
    if-nez v13, :cond_15

    invoke-virtual {v5, v7, v11, v3}, Lb0/l1;->x(Landroid/view/View;IZ)V

    goto :goto_a

    :cond_15
    iget-object v5, v13, Lg1/f;->a:Landroid/view/autofill/AutofillValue;

    invoke-virtual {v8, v7, v11, v5}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;ILandroid/view/autofill/AutofillValue;)V

    :cond_16
    :goto_a
    if-eqz v1, :cond_17

    iget-object v5, v1, Lm2/m;->l:Lk/m0;

    sget-object v7, Lm2/t;->q:Lm2/w;

    invoke-virtual {v5, v7}, Lk/m0;->b(Ljava/lang/Object;)Z

    move-result v5

    if-ne v5, v15, :cond_17

    move v5, v15

    goto :goto_b

    :cond_17
    move v5, v3

    :goto_b
    if-eqz v9, :cond_18

    iget-object v7, v9, Lm2/m;->l:Lk/m0;

    sget-object v8, Lm2/t;->q:Lm2/w;

    invoke-virtual {v7, v8}, Lk/m0;->b(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v15, :cond_18

    goto :goto_c

    :cond_18
    move v15, v3

    :goto_c
    if-eq v5, v15, :cond_1a

    if-eqz v15, :cond_19

    invoke-virtual {v6, v11}, Lk/y;->a(I)Z

    goto :goto_d

    :cond_19
    invoke-virtual {v6, v11}, Lk/y;->e(I)Z

    :cond_1a
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_1b
    return-void
.end method
