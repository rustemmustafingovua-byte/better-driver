.class public final Lr/j;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:Lj9/w;

.field public m:Ln/k;

.field public n:I

.field public final synthetic o:F

.field public final synthetic p:Lr/k;

.field public final synthetic q:Lr/j2;


# direct methods
.method public constructor <init>(FLr/k;Lr/j2;Ly8/c;)V
    .locals 0

    iput p1, p0, Lr/j;->o:F

    iput-object p2, p0, Lr/j;->p:Lr/k;

    iput-object p3, p0, Lr/j;->q:Lr/j2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    new-instance p1, Lr/j;

    iget-object v0, p0, Lr/j;->p:Lr/k;

    iget-object v1, p0, Lr/j;->q:Lr/j2;

    iget p0, p0, Lr/j;->o:F

    invoke-direct {p1, p0, v0, v1, p2}, Lr/j;-><init>(FLr/k;Lr/j2;Ly8/c;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lr/j;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/j;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lr/j;->n:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lr/j;->m:Ln/k;

    iget-object p0, p0, Lr/j;->l:Lj9/w;

    :try_start_0
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget p1, p0, Lr/j;->o:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    new-instance v6, Lj9/w;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput p1, v6, Lj9/w;->l:F

    new-instance v4, Lj9/w;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x1c

    invoke-static {p1, v1}, Ln/d;->b(FI)Ln/k;

    move-result-object p1

    :try_start_1
    iget-object v7, p0, Lr/j;->p:Lr/k;

    iget-object v1, v7, Lr/k;->a:Ln/t;

    iget-object v5, p0, Lr/j;->q:Lr/j2;

    new-instance v3, Lb0/p0;

    const/16 v8, 0x9

    invoke-direct/range {v3 .. v8}, Lb0/p0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object v6, p0, Lr/j;->l:Lj9/w;

    iput-object p1, p0, Lr/j;->m:Ln/k;

    iput v2, p0, Lr/j;->n:I

    iget-object v2, p1, Ln/k;->m:Lr0/e1;

    invoke-virtual {v2}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p1, Ln/k;->n:Ln/p;

    sget-object v5, Ln/d;->j:Ln/o1;

    new-instance v8, Ln/s;

    invoke-direct {v8, v1, v5, v2, v4}, Ln/s;-><init>(Ln/t;Ln/o1;Ljava/lang/Object;Ln/p;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_1

    const-wide/high16 v9, -0x8000000000000000L

    move-object v12, p0

    move-object v7, p1

    move-object v11, v3

    :try_start_2
    invoke-static/range {v7 .. v12}, Ln/d;->c(Ln/k;Ln/f;JLi9/c;La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    sget-object p0, Lt8/z;->a:Lt8/z;
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    move-object p0, v6

    goto :goto_3

    :catch_0
    :goto_1
    move-object p0, v6

    move-object v0, v7

    goto :goto_2

    :catch_1
    move-object v7, p1

    goto :goto_1

    :catch_2
    :goto_2
    iget-object p1, v0, Ln/k;->l:Ln/o1;

    iget-object p1, p1, Ln/o1;->b:Li9/c;

    iget-object v0, v0, Ln/k;->n:Ln/p;

    invoke-interface {p1, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lj9/w;->l:F

    :goto_3
    iget p1, p0, Lj9/w;->l:F

    :cond_4
    new-instance p0, Ljava/lang/Float;

    invoke-direct {p0, p1}, Ljava/lang/Float;-><init>(F)V

    return-object p0
.end method
