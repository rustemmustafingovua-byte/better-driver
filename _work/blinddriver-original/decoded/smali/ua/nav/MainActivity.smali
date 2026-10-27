.class public final Lua/nav/MainActivity;
.super Lb/o;
.source "SourceFile"


# instance fields
.field public final F:Landroidx/lifecycle/a1;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Lb/o;-><init>()V

    new-instance v0, Lsc/h;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lsc/h;-><init>(ILjava/lang/Object;)V

    new-instance v1, Landroidx/lifecycle/a1;

    const-class v2, Lua/nav/c;

    invoke-static {v2}, Lj9/z;->a(Ljava/lang/Class;)Lj9/f;

    move-result-object v2

    new-instance v3, Lsc/h;

    const/4 v4, 0x1

    invoke-direct {v3, v4, p0}, Lsc/h;-><init>(ILjava/lang/Object;)V

    new-instance v4, Lsc/h;

    const/4 v5, 0x2

    invoke-direct {v4, v5, p0}, Lsc/h;-><init>(ILjava/lang/Object;)V

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    iput-object v3, v1, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    iput-object v0, v1, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    iput-object v4, v1, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    iput-object v1, p0, Lua/nav/MainActivity;->F:Landroidx/lifecycle/a1;

    return-void
.end method


# virtual methods
.method public final e(Landroid/content/Intent;)V
    .locals 26

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "android.intent.action.SEND"

    const-string v6, "android.intent.action.VIEW"

    const v7, -0x45ed2f16

    const v8, -0x45ee9a33

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x45f16402

    if-eq v9, v10, :cond_4

    if-eq v9, v8, :cond_2

    if-eq v9, v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_3
    sget-object v2, Lsc/i0;->a:Lsc/i0;

    sput-boolean v4, Lsc/i0;->T:Z

    goto :goto_1

    :cond_4
    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    sget-object v2, Lsc/i0;->a:Lsc/i0;

    sput-boolean v3, Lsc/i0;->T:Z

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_7
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v9

    if-eq v9, v8, :cond_b

    if-eq v9, v7, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_a
    :goto_3
    move-object v2, v1

    goto :goto_4

    :cond_b
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-eqz v0, :cond_a

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    if-eqz v2, :cond_32

    invoke-static {v2}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_5

    :cond_c
    move-object v2, v1

    :goto_5
    if-eqz v2, :cond_32

    if-eqz v0, :cond_d

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lua/nav/MainActivity;->F:Landroidx/lifecycle/a1;

    invoke-virtual {v0}, Landroidx/lifecycle/a1;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/c;

    iget-object v5, v0, Lua/nav/c;->q:Lx9/l0;

    invoke-static {v2}, Lzc/s;->a(Ljava/lang/String;)Lzc/r;

    move-result-object v6

    if-eqz v6, :cond_e

    invoke-virtual {v0, v6}, Lua/nav/c;->K(Lzc/r;)V

    return-void

    :cond_e
    sget-object v6, Lzc/p;->a:Lr9/i;

    invoke-static {v2}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x3

    if-nez v6, :cond_10

    :cond_f
    move-object v6, v1

    goto/16 :goto_15

    :cond_10
    const-string v6, "geo:"

    invoke-static {v2, v6, v4}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    const-string v8, "q"

    if-eqz v6, :cond_1a

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v9, "substring(...)"

    invoke-static {v6, v9}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v9, 0x3f

    invoke-static {v6, v9}, Lr9/k;->u0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x3b

    invoke-static {v10, v11}, Lr9/k;->u0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-static {v9, v6, v11}, Lr9/k;->s0(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "?"

    invoke-virtual {v9, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lzc/p;->l(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v10}, Lzc/p;->i(Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object v9

    if-eqz v6, :cond_11

    const/16 v10, 0x28

    invoke-static {v6, v10}, Lr9/k;->u0(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lzc/p;->i(Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object v10

    goto :goto_6

    :cond_11
    move-object v10, v1

    :goto_6
    if-eqz v6, :cond_13

    const-string v11, "\\((.*)\\)\\s*$"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    const-string v12, "compile(...)"

    invoke-static {v11, v12}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    const-string v12, "matcher(...)"

    invoke-static {v11, v12}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v3, v6}, Ly4/s;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lr9/g;

    move-result-object v11

    if-eqz v11, :cond_12

    invoke-virtual {v11}, Lr9/g;->a()Ljava/util/List;

    move-result-object v11

    check-cast v11, Lr9/e;

    invoke-virtual {v11, v4}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_12

    invoke-static {v4}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_12
    move-object v4, v1

    :goto_7
    if-eqz v4, :cond_13

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_13

    goto :goto_8

    :cond_13
    move-object v4, v1

    :goto_8
    if-eqz v10, :cond_14

    new-instance v6, Lzc/i;

    invoke-direct {v6, v10, v4}, Lzc/i;-><init>(Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    goto :goto_d

    :cond_14
    if-eqz v9, :cond_17

    iget-wide v10, v9, Lua/nav/routing/GeoPoint;->a:D

    const-wide/16 v12, 0x0

    cmpg-double v4, v10, v12

    if-nez v4, :cond_15

    iget-wide v10, v9, Lua/nav/routing/GeoPoint;->b:D

    cmpg-double v4, v10, v12

    if-nez v4, :cond_15

    goto :goto_b

    :cond_15
    if-eqz v6, :cond_16

    invoke-static {v6}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_16

    invoke-static {v6}, Lzc/p;->i(Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object v4

    if-nez v4, :cond_16

    goto :goto_9

    :cond_16
    move-object v6, v1

    :goto_9
    new-instance v4, Lzc/i;

    invoke-direct {v4, v9, v6}, Lzc/i;-><init>(Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    :goto_a
    move-object v6, v4

    goto :goto_d

    :cond_17
    :goto_b
    if-eqz v6, :cond_19

    invoke-static {v6}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    goto :goto_c

    :cond_18
    move-object v6, v1

    :goto_c
    if-eqz v6, :cond_19

    new-instance v4, Lzc/k;

    invoke-static {v6}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lzc/k;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :cond_19
    move-object v6, v1

    :goto_d
    if-eqz v6, :cond_1a

    goto/16 :goto_15

    :cond_1a
    sget-object v4, Lzc/p;->a:Lr9/i;

    invoke-static {v4, v2}, Lr9/i;->c(Lr9/i;Ljava/lang/String;)Lf9/h;

    move-result-object v6

    new-instance v9, Lsc/t0;

    const/16 v10, 0x1a

    invoke-direct {v9, v10}, Lsc/t0;-><init>(I)V

    new-instance v10, Lq9/q;

    invoke-direct {v10, v6, v9}, Lq9/q;-><init>(Lq9/h;Li9/c;)V

    invoke-static {v10}, Lq9/j;->E(Lq9/h;)Ljava/util/List;

    move-result-object v6

    const-string v9, " "

    invoke-virtual {v4, v2, v9}, Lr9/i;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr9/k;->j0(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    new-instance v4, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v2, v9}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1b
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v9, v3

    :cond_1c
    :goto_f
    if-ge v9, v2, :cond_1d

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    move-object v12, v11

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1c

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1d
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lzc/p;->m(Ljava/lang/String;)Lzc/m;

    move-result-object v4

    if-eqz v4, :cond_1e

    move-object v6, v4

    goto/16 :goto_15

    :cond_1f
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lzc/p;->c(Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object v9

    if-eqz v9, :cond_20

    new-instance v6, Lzc/i;

    invoke-static {v4}, Lzc/p;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v9, v2}, Lzc/i;-><init>(Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_21
    const/4 v14, 0x0

    const/16 v15, 0x3e

    const-string v11, "\n"

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lzc/p;->b(Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object v2

    if-eqz v2, :cond_22

    new-instance v6, Lzc/i;

    invoke-direct {v6, v2, v1}, Lzc/i;-><init>(Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_22
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v9, "waze.com"

    if-eqz v4, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v11, "url"

    invoke-static {v4, v11}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lzc/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_25

    :cond_24
    :goto_10
    move-object v4, v1

    goto :goto_11

    :cond_25
    const-string v12, "google."

    invoke-static {v11, v12, v3}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v12

    if-nez v12, :cond_26

    invoke-static {v11, v9, v3}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v9

    if-nez v9, :cond_26

    const-string v9, "apple.com"

    invoke-static {v11, v9, v3}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v9

    if-nez v9, :cond_26

    goto :goto_10

    :cond_26
    invoke-static {v4}, Lzc/p;->l(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_27

    const-string v9, "query"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    :cond_27
    if-eqz v9, :cond_24

    invoke-static {v9}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_24

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lt v9, v7, :cond_24

    invoke-static {v4}, Lzc/p;->i(Ljava/lang/String;)Lua/nav/routing/GeoPoint;

    move-result-object v9

    if-nez v9, :cond_24

    :goto_11
    if-eqz v4, :cond_23

    new-instance v6, Lzc/k;

    invoke-direct {v6, v4}, Lzc/k;-><init>(Ljava/lang/String;)V

    goto/16 :goto_15

    :cond_28
    invoke-static {v10, v7}, Lu8/m;->x0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v10

    const/4 v14, 0x0

    const/16 v15, 0x3e

    const-string v11, ", "

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static/range {v10 .. v15}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v7, [C

    fill-array-data v4, :array_0

    invoke-static {v2, v4}, Lr9/k;->x0(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v4, v7, :cond_29

    goto :goto_12

    :cond_29
    move-object v2, v1

    :goto_12
    if-eqz v2, :cond_2a

    const/16 v4, 0xc8

    invoke-static {v4, v2}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_2a
    move-object v2, v1

    :goto_13
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2b
    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lzc/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2c

    goto :goto_14

    :cond_2c
    invoke-static {v6}, Lzc/p;->j(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "maps.app.goo.gl"

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2e

    const-string v11, "g.co"

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2e

    const-string v11, "goo.gl"

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2d

    const-string v11, "/maps"

    invoke-static {v10, v11, v3}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_2e

    :cond_2d
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2e

    const-string v10, ".waze.com"

    invoke-static {v8, v10}, Lr9/r;->K(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2b

    :cond_2e
    new-instance v3, Lzc/o;

    invoke-direct {v3, v6, v2}, Lzc/o;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v3

    goto :goto_15

    :cond_2f
    if-eqz v2, :cond_f

    new-instance v6, Lzc/k;

    invoke-direct {v6, v2}, Lzc/k;-><init>(Ljava/lang/String;)V

    :goto_15
    if-nez v6, :cond_31

    :cond_30
    invoke-virtual {v5}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lsc/q0;

    const-string v22, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0440\u043e\u0437\u043f\u0456\u0437\u043d\u0430\u0442\u0438 \u043c\u0456\u0441\u0446\u0435 \u0432 \u043f\u043e\u0432\u0456\u0434\u043e\u043c\u043b\u0435\u043d\u043d\u0456"

    const/16 v23, 0x7fff

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v6 .. v23}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_16

    :cond_31
    invoke-virtual {v5}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lsc/q0;

    const-string v24, "\u0428\u0443\u043a\u0430\u044e \u043c\u0456\u0441\u0446\u0435\u2026"

    const/16 v25, 0x7fff

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v8 .. v25}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {v0}, Landroidx/lifecycle/t0;->h(Landroidx/lifecycle/z0;)Lf4/a;

    move-result-object v2

    new-instance v3, Landroidx/lifecycle/j0;

    const/16 v4, 0xf

    invoke-direct {v3, v6, v0, v1, v4}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v2, v1, v1, v3, v7}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_32
    :goto_16
    return-void

    :array_0
    .array-data 2
        0x3as
        0x2cs
        0x20s
    .end array-data
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Lb/o;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lsc/g;->a(Landroid/content/ContextWrapper;)V

    invoke-static {p0}, Lorg/maplibre/android/MapLibre;->getInstance(Landroid/content/Context;)Lorg/maplibre/android/MapLibre;

    new-instance v0, Lad/b2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lad/b2;-><init>(I)V

    new-instance v4, Lb/k0;

    const/4 v9, 0x0

    invoke-direct {v4, v9, v9, v0}, Lb/k0;-><init>(IILi9/c;)V

    sget v0, Lb/t;->a:I

    sget v2, Lb/t;->b:I

    new-instance v3, Lad/b2;

    invoke-direct {v3, v1}, Lad/b2;-><init>(I)V

    new-instance v5, Lb/k0;

    invoke-direct {v5, v0, v2, v3}, Lb/k0;-><init>(IILi9/c;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    const-string v0, "getDecorView(...)"

    invoke-static {v7, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lb/t;->c:Lb/w;

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    new-instance v0, Lb/y;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    new-instance v0, Lb/x;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lb/w;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :goto_0
    sput-object v0, Lb/t;->c:Lb/w;

    :cond_2
    move-object v3, v0

    new-instance v2, Lb/r;

    const/4 v8, 0x0

    move-object v6, p0

    invoke-direct/range {v2 .. v8}, Lb/r;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    check-cast v7, Landroid/view/ViewGroup;

    move p0, v9

    :goto_1
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p0, v0, :cond_5

    add-int/lit8 v0, p0, 0x1

    invoke-virtual {v7, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lb/u;

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move p0, v0

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    :cond_5
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance v0, Lb/s;

    invoke-direct {v0, v2, p0}, Lb/s;-><init>(Lb/r;Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_2
    invoke-virtual {v2}, Lb/r;->run()V

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const-string v0, "getWindow(...)"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lb/v;->b(Landroid/view/Window;)V

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    sget-object p0, Lpd/b;->a:Lr0/e1;

    const-string p0, "map"

    invoke-virtual {v6, p0, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "theme"

    const-string v1, "AUTO"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x1077c

    if-eq v1, v2, :cond_8

    const v2, 0x46d6bf8

    if-eq v1, v2, :cond_6

    goto :goto_3

    :cond_6
    const-string v1, "NIGHT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_3

    :cond_7
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_8
    const-string v1, "DAY"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_3

    :cond_9
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_a
    :goto_3
    move-object p0, v0

    :goto_4
    sget-object v1, Lpd/b;->a:Lr0/e1;

    invoke-virtual {v1, p0}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lsc/c;->b:Lz0/d;

    sget-object v1, Lc/e;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Lf2/k1;

    if-eqz v2, :cond_b

    check-cast v1, Lf2/k1;

    goto :goto_5

    :cond_b
    move-object v1, v0

    :goto_5
    if-eqz v1, :cond_c

    invoke-virtual {v1, v0}, Lf2/a;->setParentCompositionContext(Lr0/u;)V

    invoke-virtual {v1, p0}, Lf2/k1;->setContent(Li9/e;)V

    goto :goto_6

    :cond_c
    new-instance v1, Lf2/k1;

    invoke-direct {v1, v6}, Lf2/k1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lf2/a;->setParentCompositionContext(Lr0/u;)V

    invoke-virtual {v1, p0}, Lf2/k1;->setContent(Li9/e;)V

    invoke-virtual {v6}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Landroidx/lifecycle/t0;->e(Landroid/view/View;)Landroidx/lifecycle/v;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-static {p0, v6}, Landroidx/lifecycle/t0;->i(Landroid/view/View;Landroidx/lifecycle/v;)V

    :cond_d
    invoke-static {p0}, Landroidx/lifecycle/t0;->f(Landroid/view/View;)Landroidx/lifecycle/g1;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-static {p0, v6}, Landroidx/lifecycle/t0;->j(Landroid/view/View;Landroidx/lifecycle/g1;)V

    :cond_e
    invoke-static {p0}, Ll9/a;->n(Landroid/view/View;)Ln4/g;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-static {p0, v6}, Ll9/a;->B(Landroid/view/View;Ln4/g;)V

    :cond_f
    sget-object p0, Lc/e;->a:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v6, v1, p0}, Lb/o;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_6
    if-nez p1, :cond_10

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v6, p0}, Lua/nav/MainActivity;->e(Landroid/content/Intent;)V

    :cond_10
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lb/o;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lua/nav/MainActivity;->e(Landroid/content/Intent;)V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget p0, Lsc/b;->a:I

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    sget-object p0, Lsc/i0;->R:Lx9/l0;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final onStop()V
    .locals 3

    sget-object v0, Lsc/i0;->R:Lx9/l0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
