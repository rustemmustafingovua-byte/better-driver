.class public final Lja/m;
.super La9/h;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public m:I

.field public synthetic n:Lt8/b;

.field public final synthetic o:Lja/o;


# direct methods
.method public constructor <init>(Lja/o;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lja/m;->o:Lja/o;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lt8/b;

    check-cast p2, Lt8/z;

    check-cast p3, Ly8/c;

    new-instance p2, Lja/m;

    iget-object p0, p0, Lja/m;->o:Lja/o;

    invoke-direct {p2, p0, p3}, Lja/m;-><init>(Lja/o;Ly8/c;)V

    iput-object p1, p2, Lja/m;->n:Lt8/b;

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {p2, p0}, Lja/m;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Lja/m;->o:Lja/o;

    iget-object v1, v0, Lja/o;->c:Ljava/lang/Object;

    check-cast v1, Lja/s;

    iget-object v2, p0, Lja/m;->n:Lt8/b;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, p0, Lja/m;->m:I

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    if-ne v4, v5, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lja/s;->p()B

    move-result p1

    if-ne p1, v5, :cond_2

    invoke-virtual {v0, v5}, Lja/o;->e(Z)Lia/d0;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v4, 0x0

    if-nez p1, :cond_3

    invoke-virtual {v0, v4}, Lja/o;->e(Z)Lia/d0;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v6, 0x6

    const/4 v7, 0x0

    if-ne p1, v6, :cond_5

    iput-object v7, p0, Lja/m;->n:Lt8/b;

    iput v5, p0, Lja/m;->m:I

    invoke-static {v0, v2, p0}, Lja/o;->a(Lja/o;Lt8/b;La9/a;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v3, :cond_4

    return-object v3

    :cond_4
    :goto_0
    check-cast p1, Lia/l;

    return-object p1

    :cond_5
    const/16 p0, 0x8

    if-ne p1, p0, :cond_6

    invoke-virtual {v0}, Lja/o;->d()Lia/e;

    move-result-object p0

    return-object p0

    :cond_6
    const-string p0, "Can\'t begin reading element, unexpected token"

    invoke-static {v1, p0, v4, v6}, Lja/s;->n(Lja/s;Ljava/lang/String;II)V

    throw v7
.end method
