.class public abstract Lm0/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr0/s2;

.field public static final b:Lm0/v;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lia/n;

    const/16 v1, 0x1a

    invoke-direct {v0, v1}, Lia/n;-><init>(I)V

    new-instance v1, Lr0/s2;

    invoke-direct {v1, v0}, Lr0/m1;-><init>(Li9/a;)V

    sput-object v1, Lm0/w;->a:Lr0/s2;

    new-instance v0, Lm0/v;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm0/w;->b:Lm0/v;

    return-void
.end method

.method public static final a(Ld0/a;Landroid/content/Context;ZLjava/lang/CharSequence;Lp2/l0;Lm0/u;Li9/c;)V
    .locals 12

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    if-eqz p3, :cond_a

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    instance-of v4, v1, Lm0/u;

    if-nez v4, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-wide v4, v0, Lp2/l0;->a:J

    iget-object v6, v1, Lm0/u;->h:Ljava/lang/Object;

    iget-object v7, v1, Lm0/u;->e:Lca/c;

    invoke-virtual {v7}, Lca/c;->e()Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lm0/u;->g:Lr0/e1;

    invoke-virtual {v1}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm0/m1;

    if-eqz v1, :cond_2

    iget-wide v10, v1, Lm0/m1;->b:J

    invoke-static {v4, v5, v10, v11}, Lp2/l0;->b(JJ)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v1, Lm0/m1;->a:Ljava/lang/CharSequence;

    invoke-static {p3, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v1, v1, Lm0/m1;->c:Landroid/view/textclassifier/TextClassification;

    goto :goto_0

    :cond_2
    move-object v1, v9

    :goto_0
    invoke-virtual {v7, v9}, Lca/c;->f(Ljava/lang/Object;)V

    move-object v9, v1

    :goto_1
    if-nez v9, :cond_3

    invoke-interface {v2, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_3
    invoke-virtual {v9}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_4

    new-instance v1, Le0/h;

    invoke-direct {v1, v6, v9, v4}, Le0/h;-><init>(Ljava/lang/Object;Landroid/view/textclassifier/TextClassification;I)V

    iget-object v5, p0, Ld0/a;->a:Lk/h0;

    invoke-virtual {v5, v1}, Lk/h0;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v9}, Landroid/view/textclassifier/TextClassification;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-virtual {v9}, Landroid/view/textclassifier/TextClassification;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_5
    invoke-virtual {v9}, Landroid/view/textclassifier/TextClassification;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-virtual {v9}, Landroid/view/textclassifier/TextClassification;->getOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_7

    :cond_6
    new-instance v1, Le0/h;

    const/4 v5, -0x1

    invoke-direct {v1, v6, v9, v5}, Le0/h;-><init>(Ljava/lang/Object;Landroid/view/textclassifier/TextClassification;I)V

    iget-object v5, p0, Ld0/a;->a:Lk/h0;

    invoke-virtual {v5, v1}, Lk/h0;->a(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    invoke-interface {v2, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9}, Landroid/view/textclassifier/TextClassification;->getActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_3
    if-ge v4, v2, :cond_9

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/RemoteAction;

    if-lez v4, :cond_8

    new-instance v5, Le0/h;

    invoke-direct {v5, v6, v9, v4}, Le0/h;-><init>(Ljava/lang/Object;Landroid/view/textclassifier/TextClassification;I)V

    iget-object v7, p0, Ld0/a;->a:Lk/h0;

    invoke-virtual {v7, v5}, Lk/h0;->a(Ljava/lang/Object;)V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    iget-wide v4, v0, Lp2/l0;->a:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lc0/b;->a(Ld0/a;Landroid/content/Context;ZLjava/lang/CharSequence;J)V

    return-void

    :cond_a
    :goto_5
    invoke-interface {v2, p0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_b

    if-eqz v0, :cond_b

    iget-wide v4, v0, Lp2/l0;->a:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lc0/b;->a(Ld0/a;Landroid/content/Context;ZLjava/lang/CharSequence;J)V

    :cond_b
    return-void
.end method

.method public static final b(Lm0/y;Lw2/b;Lr0/q;I)Lm0/u;
    .locals 6

    const v0, 0x19a9604b

    invoke-virtual {p2, v0}, Lr0/q;->b0(I)V

    sget-object v0, Lf2/o0;->b:Lr0/s2;

    invoke-virtual {p2, v0}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    sget-object v1, Lm0/w;->a:Lr0/s2;

    invoke-virtual {p2, v1}, Lr0/q;->k(Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly8/h;

    invoke-virtual {p2, v1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {p2, v0}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    and-int/lit8 v3, p3, 0x70

    xor-int/lit8 v3, v3, 0x30

    const/16 v4, 0x20

    const/4 v5, 0x0

    if-le v3, v4, :cond_0

    invoke-virtual {p2, p1}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    and-int/lit8 p3, p3, 0x30

    if-ne p3, v4, :cond_2

    :cond_1
    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    move p3, v5

    :goto_0
    or-int/2addr p3, v2

    invoke-virtual {p2}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-nez p3, :cond_3

    sget-object p3, Lr0/m;->a:Lr0/e;

    if-ne v2, p3, :cond_4

    :cond_3
    sget-object p3, Lm0/w;->b:Lm0/v;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lm0/u;

    invoke-direct {v2, v1, v0, p0, p1}, Lm0/u;-><init>(Ly8/h;Landroid/content/Context;Lm0/y;Lw2/b;)V

    invoke-virtual {p2, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast v2, Lm0/u;

    invoke-virtual {p2, v5}, Lr0/q;->q(Z)V

    return-object v2
.end method
