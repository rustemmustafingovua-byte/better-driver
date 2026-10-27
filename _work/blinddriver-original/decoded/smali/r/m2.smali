.class public final Lr/m2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:J

.field public m:I

.field public synthetic n:J

.field public final synthetic o:Lr/n2;


# direct methods
.method public constructor <init>(Lr/n2;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lr/m2;->o:Lr/n2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 1

    new-instance v0, Lr/m2;

    iget-object p0, p0, Lr/m2;->o:Lr/n2;

    invoke-direct {v0, p0, p2}, Lr/m2;-><init>(Lr/n2;Ly8/c;)V

    check-cast p1, Lb3/q;

    iget-wide p0, p1, Lb3/q;->a:J

    iput-wide p0, v0, Lr/m2;->n:J

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lb3/q;

    iget-wide v0, p1, Lb3/q;->a:J

    check-cast p2, Ly8/c;

    new-instance p1, Lr/m2;

    iget-object p0, p0, Lr/m2;->o:Lr/n2;

    invoke-direct {p1, p0, p2}, Lr/m2;-><init>(Lr/n2;Ly8/c;)V

    iput-wide v0, p1, Lr/m2;->n:J

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {p1, p0}, Lr/m2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lr/m2;->m:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget-object v5, p0, Lr/m2;->o:Lr/n2;

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v0, p0, Lr/m2;->l:J

    iget-wide v2, p0, Lr/m2;->n:J

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-wide v3, p0, Lr/m2;->l:J

    iget-wide v6, p0, Lr/m2;->n:J

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-wide v6, p0, Lr/m2;->n:J

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-wide v6, p0, Lr/m2;->n:J

    iget-object p1, v5, Lr/n2;->f:Lx1/d;

    iput-wide v6, p0, Lr/m2;->n:J

    iput v4, p0, Lr/m2;->m:I

    invoke-virtual {p1, v6, v7, p0}, Lx1/d;->b(JLa9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_0
    check-cast p1, Lb3/q;

    iget-wide v8, p1, Lb3/q;->a:J

    invoke-static {v6, v7, v8, v9}, Lb3/q;->d(JJ)J

    move-result-wide v8

    iput-wide v6, p0, Lr/m2;->n:J

    iput-wide v8, p0, Lr/m2;->l:J

    iput v3, p0, Lr/m2;->m:I

    invoke-virtual {v5, v8, v9, p0}, Lr/n2;->a(JLa9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_2

    :cond_5
    move-wide v3, v8

    :goto_1
    check-cast p1, Lb3/q;

    iget-wide v11, p1, Lb3/q;->a:J

    iget-object v8, v5, Lr/n2;->f:Lx1/d;

    invoke-static {v3, v4, v11, v12}, Lb3/q;->d(JJ)J

    move-result-wide v9

    iput-wide v6, p0, Lr/m2;->n:J

    iput-wide v11, p0, Lr/m2;->l:J

    iput v2, p0, Lr/m2;->m:I

    move-object v13, p0

    invoke-virtual/range {v8 .. v13}, Lx1/d;->a(JJLa9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    :goto_2
    return-object v0

    :cond_6
    move-wide v2, v6

    move-wide v0, v11

    :goto_3
    check-cast p1, Lb3/q;

    iget-wide p0, p1, Lb3/q;->a:J

    invoke-static {v0, v1, p0, p1}, Lb3/q;->d(JJ)J

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Lb3/q;->d(JJ)J

    move-result-wide p0

    new-instance v0, Lb3/q;

    invoke-direct {v0, p0, p1}, Lb3/q;-><init>(J)V

    return-object v0
.end method
