.class public final Lx9/h0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public l:I

.field public synthetic m:Lx9/h;

.field public synthetic n:I

.field public final synthetic o:Lx9/i0;


# direct methods
.method public constructor <init>(Lx9/i0;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lx9/h0;->o:Lx9/i0;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lx9/h;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    check-cast p3, Ly8/c;

    new-instance v0, Lx9/h0;

    iget-object p0, p0, Lx9/h0;->o:Lx9/i0;

    invoke-direct {v0, p0, p3}, Lx9/h0;-><init>(Lx9/i0;Ly8/c;)V

    iput-object p1, v0, Lx9/h0;->m:Lx9/h;

    iput p2, v0, Lx9/h0;->n:I

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {v0, p0}, Lx9/h0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lx9/h0;->l:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v6, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lx9/h0;->m:Lx9/h;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lx9/h0;->m:Lx9/h;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lx9/h0;->m:Lx9/h;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_5

    :cond_5
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, p0, Lx9/h0;->m:Lx9/h;

    iget p1, p0, Lx9/h0;->n:I

    if-lez p1, :cond_6

    sget-object p1, Lx9/e0;->l:Lx9/e0;

    iput v6, p0, Lx9/h0;->l:I

    invoke-interface {v1, p1, p0}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_a

    goto :goto_4

    :cond_6
    iput-object v1, p0, Lx9/h0;->m:Lx9/h;

    iput v5, p0, Lx9/h0;->l:I

    const-wide/16 v5, 0x0

    invoke-static {v5, v6, p0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    goto :goto_4

    :cond_7
    :goto_1
    sget-object p1, Lx9/e0;->m:Lx9/e0;

    iput-object v1, p0, Lx9/h0;->m:Lx9/h;

    iput v4, p0, Lx9/h0;->l:I

    invoke-interface {v1, p1, p0}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    goto :goto_4

    :cond_8
    :goto_2
    iput-object v1, p0, Lx9/h0;->m:Lx9/h;

    iput v3, p0, Lx9/h0;->l:I

    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v3, v4, p0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_9

    goto :goto_4

    :cond_9
    :goto_3
    sget-object p1, Lx9/e0;->n:Lx9/e0;

    const/4 v3, 0x0

    iput-object v3, p0, Lx9/h0;->m:Lx9/h;

    iput v2, p0, Lx9/h0;->l:I

    invoke-interface {v1, p1, p0}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_a

    :goto_4
    return-object v0

    :cond_a
    :goto_5
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
