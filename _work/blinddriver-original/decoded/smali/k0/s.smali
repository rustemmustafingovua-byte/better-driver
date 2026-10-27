.class public final Lk0/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Lk0/l;

.field public c:Li9/c;

.field public d:Li9/c;

.field public e:Lb0/r1;

.field public f:Lm0/v1;

.field public g:Lf2/p2;

.field public h:Lu2/x;

.field public i:Lu2/k;

.field public final j:Ljava/util/ArrayList;

.field public final k:Ljava/lang/Object;

.field public l:Landroid/graphics/Rect;

.field public final m:Lk0/p;


# direct methods
.method public constructor <init>(Landroid/view/View;Lk0/a;Lk0/l;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk0/s;->a:Landroid/view/View;

    iput-object p3, p0, Lk0/s;->b:Lk0/l;

    new-instance p1, Lgd/e;

    const/16 v0, 0x9

    invoke-direct {p1, v0}, Lgd/e;-><init>(I)V

    iput-object p1, p0, Lk0/s;->c:Li9/c;

    new-instance p1, Lgd/e;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lgd/e;-><init>(I)V

    iput-object p1, p0, Lk0/s;->d:Li9/c;

    new-instance p1, Lu2/x;

    sget-wide v0, Lp2/l0;->b:J

    const/4 v2, 0x4

    const-string v3, ""

    invoke-direct {p1, v2, v0, v1, v3}, Lu2/x;-><init>(IJLjava/lang/String;)V

    iput-object p1, p0, Lk0/s;->h:Lu2/x;

    sget-object p1, Lu2/k;->g:Lu2/k;

    iput-object p1, p0, Lk0/s;->i:Lu2/k;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lk0/s;->j:Ljava/util/ArrayList;

    sget-object p1, Lt8/h;->m:Lt8/h;

    new-instance v0, Lad/t;

    const/16 v1, 0x12

    invoke-direct {v0, v1, p0}, Lad/t;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, v0}, Ly4/s;->x(Lt8/h;Li9/a;)Lt8/g;

    move-result-object p1

    iput-object p1, p0, Lk0/s;->k:Ljava/lang/Object;

    new-instance p1, Lk0/p;

    invoke-direct {p1, p2, p3}, Lk0/p;-><init>(Lk0/a;Lk0/l;)V

    iput-object p1, p0, Lk0/s;->m:Lk0/p;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/inputmethod/EditorInfo;)Lk0/t;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lk0/s;->h:Lu2/x;

    iget-object v3, v2, Lu2/x;->a:Lp2/g;

    iget-object v3, v3, Lp2/g;->m:Ljava/lang/String;

    iget-wide v4, v2, Lu2/x;->b:J

    iget-object v2, v0, Lk0/s;->i:Lu2/k;

    iget v6, v2, Lu2/k;->e:I

    iget v7, v2, Lu2/k;->d:I

    iget-boolean v8, v2, Lu2/k;->a:Z

    const/4 v9, 0x4

    const/4 v10, 0x5

    const/4 v12, 0x7

    const/4 v13, 0x6

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v11, 0x1

    if-ne v6, v11, :cond_1

    if-eqz v8, :cond_0

    :goto_0
    move v6, v13

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    if-nez v6, :cond_2

    move v6, v11

    goto :goto_1

    :cond_2
    if-ne v6, v15, :cond_3

    move v6, v15

    goto :goto_1

    :cond_3
    if-ne v6, v13, :cond_4

    move v6, v10

    goto :goto_1

    :cond_4
    if-ne v6, v10, :cond_5

    move v6, v12

    goto :goto_1

    :cond_5
    if-ne v6, v14, :cond_6

    move v6, v14

    goto :goto_1

    :cond_6
    if-ne v6, v9, :cond_7

    move v6, v9

    goto :goto_1

    :cond_7
    if-ne v6, v12, :cond_1c

    goto :goto_0

    :goto_1
    iput v6, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    iget-object v6, v2, Lu2/k;->f:Lw2/b;

    sget-object v12, Lw2/b;->n:Lw2/b;

    invoke-static {v6, v12}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/4 v6, 0x0

    iput-object v6, v1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    goto :goto_3

    :cond_8
    new-instance v12, Ljava/util/ArrayList;

    const/16 v13, 0xa

    invoke-static {v6, v13}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v6, v6, Lw2/b;->l:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lw2/a;

    iget-object v13, v13, Lw2/a;->a:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    const/4 v13, 0x0

    new-array v6, v13, [Ljava/util/Locale;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/Locale;

    array-length v12, v6

    invoke-static {v6, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/util/Locale;

    new-instance v12, Landroid/os/LocaleList;

    invoke-direct {v12, v6}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    iput-object v12, v1, Landroid/view/inputmethod/EditorInfo;->hintLocales:Landroid/os/LocaleList;

    :goto_3
    const/16 v6, 0x8

    if-ne v7, v11, :cond_a

    :goto_4
    move v9, v11

    goto :goto_5

    :cond_a
    if-ne v7, v15, :cond_b

    iget v9, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v10, -0x80000000

    or-int/2addr v9, v10

    iput v9, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_4

    :cond_b
    if-ne v7, v14, :cond_c

    move v9, v15

    goto :goto_5

    :cond_c
    if-ne v7, v9, :cond_d

    move v9, v14

    goto :goto_5

    :cond_d
    if-ne v7, v10, :cond_e

    const/16 v9, 0x11

    goto :goto_5

    :cond_e
    const/4 v9, 0x6

    if-ne v7, v9, :cond_f

    const/16 v9, 0x21

    goto :goto_5

    :cond_f
    const/4 v9, 0x7

    if-ne v7, v9, :cond_10

    const/16 v9, 0x81

    goto :goto_5

    :cond_10
    if-ne v7, v6, :cond_11

    const/16 v9, 0x12

    goto :goto_5

    :cond_11
    const/16 v9, 0x9

    if-ne v7, v9, :cond_1b

    const/16 v9, 0x2002

    :goto_5
    iput v9, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v8, :cond_12

    and-int/lit8 v8, v9, 0x1

    if-ne v8, v11, :cond_12

    const/high16 v8, 0x20000

    or-int/2addr v8, v9

    iput v8, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    iget v8, v2, Lu2/k;->e:I

    if-ne v8, v11, :cond_12

    iget v8, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v9, 0x40000000    # 2.0f

    or-int/2addr v8, v9

    iput v8, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    :cond_12
    iget v8, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v9, v8, 0x1

    if-ne v9, v11, :cond_16

    iget v9, v2, Lu2/k;->b:I

    if-ne v9, v11, :cond_13

    or-int/lit16 v8, v8, 0x1000

    iput v8, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_6

    :cond_13
    if-ne v9, v15, :cond_14

    or-int/lit16 v8, v8, 0x2000

    iput v8, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_6

    :cond_14
    if-ne v9, v14, :cond_15

    or-int/lit16 v8, v8, 0x4000

    iput v8, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_15
    :goto_6
    iget-boolean v2, v2, Lu2/k;->c:Z

    if-eqz v2, :cond_16

    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v8, 0x8000

    or-int/2addr v2, v8

    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :cond_16
    sget v2, Lp2/l0;->c:I

    const/16 v2, 0x20

    shr-long v8, v4, v2

    long-to-int v2, v8

    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    const-wide v8, 0xffffffffL

    and-long/2addr v4, v8

    long-to-int v2, v4

    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    invoke-static {v1, v3}, Lpc/h;->t(Landroid/view/inputmethod/EditorInfo;Ljava/lang/CharSequence;)V

    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v3, 0x2000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    sget-boolean v2, Lj0/e;->a:Z

    if-eqz v2, :cond_17

    const/4 v9, 0x7

    if-ne v7, v9, :cond_18

    :cond_17
    :goto_7
    const/4 v13, 0x0

    goto :goto_8

    :cond_18
    if-ne v7, v6, :cond_19

    goto :goto_7

    :cond_19
    invoke-static {v1, v11}, Lpc/h;->u(Landroid/view/inputmethod/EditorInfo;Z)V

    invoke-static {}, Lb5/a;->m()Ljava/lang/Class;

    move-result-object v16

    invoke-static {}, Lb5/a;->A()Ljava/lang/Class;

    move-result-object v17

    invoke-static {}, Lb5/a;->w()Ljava/lang/Class;

    move-result-object v18

    invoke-static {}, Lb5/a;->z()Ljava/lang/Class;

    move-result-object v19

    invoke-static {}, Lb5/a;->B()Ljava/lang/Class;

    move-result-object v20

    invoke-static {}, Lb5/a;->C()Ljava/lang/Class;

    move-result-object v21

    invoke-static {}, Lb5/a;->D()Ljava/lang/Class;

    move-result-object v22

    filled-new-array/range {v16 .. v22}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lb5/a;->p(Landroid/view/inputmethod/EditorInfo;Ljava/util/List;)V

    invoke-static {}, Lb5/a;->m()Ljava/lang/Class;

    move-result-object v2

    invoke-static {}, Lb5/a;->A()Ljava/lang/Class;

    move-result-object v3

    invoke-static {}, Lb5/a;->w()Ljava/lang/Class;

    move-result-object v4

    invoke-static {}, Lb5/a;->z()Ljava/lang/Class;

    move-result-object v5

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ll7/a;->z([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v1, v2}, Lb5/a;->q(Landroid/view/inputmethod/EditorInfo;Ljava/util/Set;)V

    goto :goto_9

    :goto_8
    invoke-static {v1, v13}, Lpc/h;->u(Landroid/view/inputmethod/EditorInfo;Z)V

    :goto_9
    sget-object v2, Lk0/r;->a:Lk0/q;

    invoke-static {}, Lx3/h;->d()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_a

    :cond_1a
    invoke-static {}, Lx3/h;->a()Lx3/h;

    move-result-object v2

    invoke-virtual {v2, v1}, Lx3/h;->g(Landroid/view/inputmethod/EditorInfo;)V

    :goto_a
    iget-object v4, v0, Lk0/s;->h:Lu2/x;

    iget-object v1, v0, Lk0/s;->i:Lu2/k;

    iget-boolean v6, v1, Lu2/k;->c:Z

    new-instance v5, Lb0/l1;

    const/16 v1, 0x17

    invoke-direct {v5, v1, v0}, Lb0/l1;-><init>(ILjava/lang/Object;)V

    iget-object v7, v0, Lk0/s;->e:Lb0/r1;

    iget-object v8, v0, Lk0/s;->f:Lm0/v1;

    iget-object v9, v0, Lk0/s;->g:Lf2/p2;

    new-instance v3, Lk0/t;

    invoke-direct/range {v3 .. v9}, Lk0/t;-><init>(Lu2/x;Lb0/l1;ZLb0/r1;Lm0/v1;Lf2/p2;)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, v0, Lk0/s;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v3

    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid Keyboard Type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid ImeAction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
