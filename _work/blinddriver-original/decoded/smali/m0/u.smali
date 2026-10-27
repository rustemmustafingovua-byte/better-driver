.class public final Lm0/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ly8/h;

.field public final b:Landroid/content/Context;

.field public final c:Lm0/y;

.field public final d:Lw2/b;

.field public final e:Lca/c;

.field public f:Landroid/view/textclassifier/TextClassifier;

.field public final g:Lr0/e1;

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ly8/h;Landroid/content/Context;Lm0/y;Lw2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/u;->a:Ly8/h;

    iput-object p2, p0, Lm0/u;->b:Landroid/content/Context;

    iput-object p3, p0, Lm0/u;->c:Lm0/y;

    iput-object p4, p0, Lm0/u;->d:Lw2/b;

    new-instance p1, Lca/c;

    invoke-direct {p1}, Lca/c;-><init>()V

    iput-object p1, p0, Lm0/u;->e:Lca/c;

    const/4 p1, 0x0

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lm0/u;->g:Lr0/e1;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/u;->h:Ljava/lang/Object;

    return-void
.end method

.method public static final a(Lm0/u;Ljava/lang/CharSequence;JLandroid/view/textclassifier/TextClassifier;La9/c;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    iget-object v2, v0, Lm0/u;->g:Lr0/e1;

    iget-object v3, v0, Lm0/u;->e:Lca/c;

    instance-of v4, v1, Lm0/s;

    if-eqz v4, :cond_0

    move-object v4, v1

    check-cast v4, Lm0/s;

    iget v5, v4, Lm0/s;->r:I

    const/high16 v6, -0x80000000

    and-int v7, v5, v6

    if-eqz v7, :cond_0

    sub-int/2addr v5, v6

    iput v5, v4, Lm0/s;->r:I

    goto :goto_0

    :cond_0
    new-instance v4, Lm0/s;

    invoke-direct {v4, v0, v1}, Lm0/s;-><init>(Lm0/u;La9/c;)V

    :goto_0
    iget-object v1, v4, Lm0/s;->p:Ljava/lang/Object;

    sget-object v5, Lz8/a;->l:Lz8/a;

    iget v6, v4, Lm0/s;->r:I

    sget-object v7, Lt8/z;->a:Lt8/z;

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v6, :cond_3

    if-eq v6, v9, :cond_2

    if-ne v6, v8, :cond_1

    iget-wide v5, v4, Lm0/s;->o:J

    iget-object v3, v4, Lm0/s;->n:Lca/c;

    iget-object v0, v4, Lm0/s;->m:Ljava/lang/Object;

    check-cast v0, Landroid/view/textclassifier/TextClassification;

    iget-object v4, v4, Lm0/s;->l:Ljava/lang/CharSequence;

    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v11, v4, Lm0/s;->o:J

    iget-object v6, v4, Lm0/s;->n:Lca/c;

    iget-object v13, v4, Lm0/s;->m:Ljava/lang/Object;

    check-cast v13, Landroid/view/textclassifier/TextClassifier;

    iget-object v14, v4, Lm0/s;->l:Ljava/lang/CharSequence;

    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    iput-object v1, v4, Lm0/s;->l:Ljava/lang/CharSequence;

    move-object/from16 v6, p4

    iput-object v6, v4, Lm0/s;->m:Ljava/lang/Object;

    iput-object v3, v4, Lm0/s;->n:Lca/c;

    move-wide/from16 v11, p2

    iput-wide v11, v4, Lm0/s;->o:J

    iput v9, v4, Lm0/s;->r:I

    invoke-virtual {v3, v4}, Lca/c;->d(La9/c;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v5, :cond_4

    goto :goto_4

    :cond_4
    move-object v14, v1

    move-object v13, v6

    move-object v6, v3

    :goto_1
    :try_start_0
    invoke-virtual {v2}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm0/m1;

    if-eqz v1, :cond_6

    sget-object v15, Lm0/w;->a:Lr0/s2;

    iget-wide v8, v1, Lm0/m1;->b:J

    invoke-static {v11, v12, v8, v9}, Lp2/l0;->b(JJ)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v1, v1, Lm0/m1;->a:Ljava/lang/CharSequence;

    invoke-static {v14, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_2
    const/4 v15, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :goto_3
    if-ne v1, v15, :cond_6

    invoke-virtual {v6, v10}, Lca/c;->f(Ljava/lang/Object;)V

    return-object v7

    :cond_6
    invoke-virtual {v6, v10}, Lca/c;->f(Ljava/lang/Object;)V

    new-instance v1, Landroid/view/textclassifier/TextClassification$Request$Builder;

    invoke-static {v11, v12}, Lp2/l0;->f(J)I

    move-result v6

    invoke-static {v11, v12}, Lp2/l0;->e(J)I

    move-result v8

    invoke-direct {v1, v14, v6, v8}, Landroid/view/textclassifier/TextClassification$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0}, Lm0/u;->b()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/textclassifier/TextClassification$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextClassification$Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassification$Request$Builder;->build()Landroid/view/textclassifier/TextClassification$Request;

    move-result-object v0

    invoke-interface {v13, v0}, Landroid/view/textclassifier/TextClassifier;->classifyText(Landroid/view/textclassifier/TextClassification$Request;)Landroid/view/textclassifier/TextClassification;

    move-result-object v0

    iput-object v14, v4, Lm0/s;->l:Ljava/lang/CharSequence;

    iput-object v0, v4, Lm0/s;->m:Ljava/lang/Object;

    iput-object v3, v4, Lm0/s;->n:Lca/c;

    iput-wide v11, v4, Lm0/s;->o:J

    const/4 v1, 0x2

    iput v1, v4, Lm0/s;->r:I

    invoke-virtual {v3, v4}, Lca/c;->d(La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v5, :cond_7

    :goto_4
    return-object v5

    :cond_7
    move-wide v5, v11

    move-object v4, v14

    :goto_5
    :try_start_1
    new-instance v1, Lm0/m1;

    invoke-direct {v1, v4, v5, v6, v0}, Lm0/m1;-><init>(Ljava/lang/CharSequence;JLandroid/view/textclassifier/TextClassification;)V

    invoke-virtual {v2, v1}, Lr0/e1;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v3, v10}, Lca/c;->f(Ljava/lang/Object;)V

    return-object v7

    :catchall_1
    move-exception v0

    invoke-virtual {v3, v10}, Lca/c;->f(Ljava/lang/Object;)V

    throw v0

    :goto_6
    invoke-virtual {v6, v10}, Lca/c;->f(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final b()Landroid/os/LocaleList;
    .locals 3

    const/4 v0, 0x0

    iget-object p0, p0, Lm0/u;->d:Lw2/b;

    if-eqz p0, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p0, v2}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p0, p0, Lw2/b;->l:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lw2/a;

    iget-object v2, v2, Lw2/a;->a:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-array p0, v0, [Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Locale;

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Locale;

    new-instance v0, Landroid/os/LocaleList;

    invoke-direct {v0, p0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    return-object v0

    :cond_1
    new-instance p0, Landroid/os/LocaleList;

    sget-object v1, Lw2/c;->a:Lg5/m;

    invoke-virtual {v1}, Lg5/m;->i()Lw2/b;

    move-result-object v1

    iget-object v1, v1, Lw2/b;->l:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw2/a;

    iget-object v0, v0, Lw2/a;->a:Ljava/util/Locale;

    filled-new-array {v0}, [Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/LocaleList;-><init>([Ljava/util/Locale;)V

    return-object p0
.end method

.method public final c(Ljava/lang/CharSequence;JLa9/i;)Ljava/lang/Object;
    .locals 6

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Lp2/l0;->c(J)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :cond_1
    new-instance v0, Lb0/m2;

    const/4 v5, 0x0

    move-object v4, p0

    move-object v3, p1

    move-wide v1, p2

    invoke-direct/range {v0 .. v5}, Lb0/m2;-><init>(JLjava/lang/CharSequence;Lm0/u;Ly8/c;)V

    new-instance p0, Landroidx/lifecycle/j0;

    const/4 p1, 0x0

    invoke-direct {p0, v4, v0, p1}, Landroidx/lifecycle/j0;-><init>(Lm0/u;Li9/e;Ly8/c;)V

    iget-object p1, v4, Lm0/u;->a:Ly8/h;

    invoke-static {p1, p0, p4}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
