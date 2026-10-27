.class public final Lp/g0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public l:I

.field public synthetic m:Lr/p1;

.field public synthetic n:J

.field public final synthetic o:Lp/h0;


# direct methods
.method public constructor <init>(Lp/h0;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lp/g0;->o:Lp/h0;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lr/p1;

    check-cast p2, Ll1/b;

    iget-wide v0, p2, Ll1/b;->a:J

    check-cast p3, Ly8/c;

    new-instance p2, Lp/g0;

    iget-object p0, p0, Lp/g0;->o:Lp/h0;

    invoke-direct {p2, p0, p3}, Lp/g0;-><init>(Lp/h0;Ly8/c;)V

    iput-object p1, p2, Lp/g0;->m:Lr/p1;

    iput-wide v0, p2, Lp/g0;->n:J

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {p2, p0}, Lp/g0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lp/g0;->l:I

    sget-object v2, Lt8/z;->a:Lt8/z;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v4, p0, Lp/g0;->m:Lr/p1;

    iget-wide v5, p0, Lp/g0;->n:J

    iget-object v8, p0, Lp/g0;->o:Lp/h0;

    iget-boolean p1, v8, Lp/g;->G:Z

    if-eqz p1, :cond_3

    iput v3, p0, Lp/g0;->l:I

    iget-object v7, v8, Lp/g;->B:Ls/i;

    if-eqz v7, :cond_2

    new-instance v3, Lp/c;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lp/c;-><init>(Lr/p1;JLs/i;Lp/g;Ly8/c;)V

    invoke-static {v3, p0}, Lu9/v;->g(Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, v2

    :goto_0
    if-ne p0, v0, :cond_3

    return-object v0

    :cond_3
    :goto_1
    return-object v2
.end method
