.class public final Lm0/t;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:Lca/c;

.field public m:Lm0/u;

.field public n:Ljava/lang/CharSequence;

.field public o:J

.field public p:I

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Ljava/lang/CharSequence;

.field public final synthetic s:J

.field public final synthetic t:Lm0/u;


# direct methods
.method public constructor <init>(JLjava/lang/CharSequence;Lm0/u;Ly8/c;)V
    .locals 0

    iput-object p3, p0, Lm0/t;->r:Ljava/lang/CharSequence;

    iput-wide p1, p0, Lm0/t;->s:J

    iput-object p4, p0, Lm0/t;->t:Lm0/u;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 6

    new-instance v0, Lm0/t;

    iget-wide v1, p0, Lm0/t;->s:J

    iget-object v4, p0, Lm0/t;->t:Lm0/u;

    iget-object v3, p0, Lm0/t;->r:Ljava/lang/CharSequence;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lm0/t;-><init>(JLjava/lang/CharSequence;Lm0/u;Ly8/c;)V

    iput-object p1, v0, Lm0/t;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/textclassifier/TextClassifier;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lm0/t;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lm0/t;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lm0/t;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lm0/t;->p:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v0, p0, Lm0/t;->o:J

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-wide v0, p0, Lm0/t;->o:J

    iget-object v2, p0, Lm0/t;->n:Ljava/lang/CharSequence;

    iget-object v3, p0, Lm0/t;->m:Lm0/u;

    iget-object v4, p0, Lm0/t;->l:Lca/c;

    iget-object p0, p0, Lm0/t;->q:Ljava/lang/Object;

    check-cast p0, Landroid/view/textclassifier/TextSelection;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lm0/t;->q:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Landroid/view/textclassifier/TextClassifier;

    new-instance p1, Landroid/view/textclassifier/TextSelection$Request$Builder;

    iget-wide v4, p0, Lm0/t;->s:J

    invoke-static {v4, v5}, Lp2/l0;->f(J)I

    move-result v1

    invoke-static {v4, v5}, Lp2/l0;->e(J)I

    move-result v4

    iget-object v5, p0, Lm0/t;->r:Ljava/lang/CharSequence;

    invoke-direct {p1, v5, v1, v4}, Landroid/view/textclassifier/TextSelection$Request$Builder;-><init>(Ljava/lang/CharSequence;II)V

    iget-object v4, p0, Lm0/t;->t:Lm0/u;

    invoke-virtual {v4}, Lm0/u;->b()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/textclassifier/TextSelection$Request$Builder;->setDefaultLocales(Landroid/os/LocaleList;)Landroid/view/textclassifier/TextSelection$Request$Builder;

    move-result-object p1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v1, v6, :cond_3

    invoke-static {p1}, Lb5/c;->v(Landroid/view/textclassifier/TextSelection$Request$Builder;)V

    :cond_3
    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection$Request$Builder;->build()Landroid/view/textclassifier/TextSelection$Request;

    move-result-object p1

    invoke-interface {v8, p1}, Landroid/view/textclassifier/TextClassifier;->suggestSelection(Landroid/view/textclassifier/TextSelection$Request;)Landroid/view/textclassifier/TextSelection;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection;->getSelectionStartIndex()I

    move-result v7

    invoke-virtual {p1}, Landroid/view/textclassifier/TextSelection;->getSelectionEndIndex()I

    move-result v9

    invoke-static {v7, v9}, Lp2/d0;->b(II)J

    move-result-wide v9

    if-lt v1, v6, :cond_5

    invoke-static {p1}, Lb5/c;->i(Landroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/TextClassification;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, v4, Lm0/u;->e:Lca/c;

    iput-object p1, p0, Lm0/t;->q:Ljava/lang/Object;

    iput-object v1, p0, Lm0/t;->l:Lca/c;

    iput-object v4, p0, Lm0/t;->m:Lm0/u;

    iput-object v5, p0, Lm0/t;->n:Ljava/lang/CharSequence;

    iput-wide v9, p0, Lm0/t;->o:J

    iput v3, p0, Lm0/t;->p:I

    invoke-virtual {v1, p0}, Lca/c;->d(La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    goto :goto_1

    :cond_4
    move-object p0, p1

    move-object v3, v4

    move-object v2, v5

    move-object v4, v1

    move-wide v0, v9

    :goto_0
    const/4 p1, 0x0

    :try_start_0
    new-instance v5, Lm0/m1;

    invoke-static {p0}, Lb5/c;->i(Landroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/TextClassification;

    move-result-object p0

    invoke-static {p0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-direct {v5, v2, v0, v1, p0}, Lm0/m1;-><init>(Ljava/lang/CharSequence;JLandroid/view/textclassifier/TextClassification;)V

    iget-object p0, v3, Lm0/u;->g:Lr0/e1;

    invoke-virtual {p0, v5}, Lr0/e1;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4, p1}, Lca/c;->f(Ljava/lang/Object;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v4, p1}, Lca/c;->f(Ljava/lang/Object;)V

    throw p0

    :cond_5
    iput-wide v9, p0, Lm0/t;->o:J

    iput v2, p0, Lm0/t;->p:I

    iget-object v5, p0, Lm0/t;->r:Ljava/lang/CharSequence;

    move-wide v6, v9

    move-object v9, p0

    invoke-static/range {v4 .. v9}, Lm0/u;->a(Lm0/u;Ljava/lang/CharSequence;JLandroid/view/textclassifier/TextClassifier;La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_6

    :goto_1
    return-object v0

    :cond_6
    move-wide v0, v6

    :goto_2
    new-instance p0, Lp2/l0;

    invoke-direct {p0, v0, v1}, Lp2/l0;-><init>(J)V

    return-object p0
.end method
