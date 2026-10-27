.class public final Lr/a3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Ln/l;


# instance fields
.field public final a:Ln/q1;

.field public b:J

.field public c:Ln/l;

.field public d:Z

.field public e:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ln/l;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ln/l;-><init>(F)V

    sput-object v0, Lr/a3;->f:Ln/l;

    return-void
.end method

.method public constructor <init>(Ln/j;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ln/d;->j:Ln/o1;

    invoke-interface {p1, v0}, Ln/j;->a(Ln/o1;)Ln/q1;

    move-result-object p1

    iput-object p1, p0, Lr/a3;->a:Ln/q1;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lr/a3;->b:J

    sget-object p1, Lr/a3;->f:Ln/l;

    iput-object p1, p0, Lr/a3;->c:Ln/l;

    return-void
.end method


# virtual methods
.method public final a(Lb0/o;Lb0/c3;La9/c;)Ljava/lang/Object;
    .locals 12

    instance-of v0, p3, Lr/z2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lr/z2;

    iget v1, v0, Lr/z2;->q:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr/z2;->q:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr/z2;

    invoke-direct {v0, p0, p3}, Lr/z2;-><init>(Lr/a3;La9/c;)V

    :goto_0
    iget-object p3, v0, Lr/z2;->o:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr/z2;->q:I

    sget-object v3, Lr/a3;->f:Ln/l;

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v9, :cond_2

    if-ne v2, v7, :cond_1

    iget-object p1, v0, Lr/z2;->l:Lt8/e;

    check-cast p1, Li9/a;

    :try_start_0
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget p1, v0, Lr/z2;->n:F

    iget-object p2, v0, Lr/z2;->m:Li9/a;

    iget-object v2, v0, Lr/z2;->l:Lt8/e;

    check-cast v2, Li9/c;

    :try_start_1
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p3, p2

    move-object p2, v2

    goto :goto_3

    :cond_3
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    iget-boolean p3, p0, Lr/a3;->d:Z

    if-eqz p3, :cond_4

    const-string p3, "animateToZero called while previous animation is running"

    invoke-static {p3}, Lt/b;->c(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v0}, Ly8/c;->getContext()Ly8/h;

    move-result-object p3

    sget-object v2, Lf1/c;->A:Lf1/c;

    invoke-interface {p3, v2}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object p3

    check-cast p3, Lf1/t;

    if-eqz p3, :cond_5

    invoke-interface {p3}, Lf1/t;->q()F

    move-result p3

    goto :goto_1

    :cond_5
    const/high16 p3, 0x3f800000    # 1.0f

    :goto_1
    iput-boolean v9, p0, Lr/a3;->d:Z

    move-object v11, p2

    move-object p2, p1

    move p1, p3

    move-object p3, v11

    :cond_6
    :try_start_2
    iget v2, p0, Lr/a3;->e:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v10, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v10

    if-gez v2, :cond_7

    :goto_2
    move-object p1, p3

    goto :goto_4

    :cond_7
    new-instance v2, Lb0/f;

    invoke-direct {v2, p0, p1, p2}, Lb0/f;-><init>(Lr/a3;FLi9/c;)V

    iput-object p2, v0, Lr/z2;->l:Lt8/e;

    iput-object p3, v0, Lr/z2;->m:Li9/a;

    iput p1, v0, Lr/z2;->n:F

    iput v9, v0, Lr/z2;->q:I

    invoke-interface {v0}, Ly8/c;->getContext()Ly8/h;

    move-result-object v10

    invoke-static {v10}, Lr0/r;->v(Ly8/h;)Lf2/x0;

    move-result-object v10

    invoke-virtual {v10, v2, v0}, Lf2/x0;->a(Li9/c;Ly8/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_8

    goto :goto_5

    :cond_8
    :goto_3
    invoke-interface {p3}, Li9/a;->invoke()Ljava/lang/Object;

    cmpg-float v2, p1, v6

    if-nez v2, :cond_6

    goto :goto_2

    :goto_4
    iget p3, p0, Lr/a3;->e:F

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpg-float p3, p3, v6

    if-nez p3, :cond_9

    goto :goto_7

    :cond_9
    new-instance p3, Lp/o0;

    const/4 v2, 0x7

    invoke-direct {p3, v2, p0, p2}, Lp/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, v0, Lr/z2;->l:Lt8/e;

    const/4 p2, 0x0

    iput-object p2, v0, Lr/z2;->m:Li9/a;

    iput v7, v0, Lr/z2;->q:I

    invoke-interface {v0}, Ly8/c;->getContext()Ly8/h;

    move-result-object p2

    invoke-static {p2}, Lr0/r;->v(Ly8/h;)Lf2/x0;

    move-result-object p2

    invoke-virtual {p2, p3, v0}, Lf2/x0;->a(Li9/c;Ly8/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_a

    :goto_5
    return-object v1

    :cond_a
    :goto_6
    invoke-interface {p1}, Li9/a;->invoke()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_7
    iput-wide v4, p0, Lr/a3;->b:J

    iput-object v3, p0, Lr/a3;->c:Ln/l;

    iput-boolean v8, p0, Lr/a3;->d:Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :goto_8
    iput-wide v4, p0, Lr/a3;->b:J

    iput-object v3, p0, Lr/a3;->c:Ln/l;

    iput-boolean v8, p0, Lr/a3;->d:Z

    throw p1
.end method
