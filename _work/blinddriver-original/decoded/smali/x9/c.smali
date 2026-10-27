.class public final Lx9/c;
.super Ly9/e;
.source "SourceFile"


# instance fields
.field public final o:La9/i;

.field public final p:La9/i;


# direct methods
.method public constructor <init>(Li9/e;Ly8/h;ILw9/a;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Ly9/e;-><init>(Ly8/h;ILw9/a;)V

    check-cast p1, La9/i;

    iput-object p1, p0, Lx9/c;->o:La9/i;

    iput-object p1, p0, Lx9/c;->p:La9/i;

    return-void
.end method


# virtual methods
.method public final c(Lw9/r;Ly8/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lx9/b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lx9/b;

    iget v1, v0, Lx9/b;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lx9/b;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lx9/b;

    check-cast p2, La9/c;

    invoke-direct {v0, p0, p2}, Lx9/b;-><init>(Lx9/c;La9/c;)V

    :goto_0
    iget-object p2, v0, Lx9/b;->m:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lx9/b;->o:I

    sget-object v3, Lt8/z;->a:Lt8/z;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Lx9/b;->l:Lw9/r;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    iput-object p1, v0, Lx9/b;->l:Lw9/r;

    iput v4, v0, Lx9/b;->o:I

    iget-object p0, p0, Lx9/c;->o:La9/i;

    invoke-interface {p0, p1, v0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    goto :goto_1

    :cond_3
    move-object p0, v3

    :goto_1
    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p1, Lw9/q;

    iget-object p0, p1, Lw9/q;->o:Lw9/e;

    invoke-virtual {p0}, Lw9/e;->x()Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "\'awaitClose { yourCallbackOrListener.cancel() }\' should be used in the end of callbackFlow block.\nOtherwise, a callback/listener may leak in case of external cancellation.\nSee callbackFlow API documentation for the details."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d(Ly8/h;ILw9/a;)Ly9/e;
    .locals 1

    new-instance v0, Lx9/c;

    iget-object p0, p0, Lx9/c;->p:La9/i;

    invoke-direct {v0, p0, p1, p2, p3}, Lx9/c;-><init>(Li9/e;Ly8/h;ILw9/a;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "block["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lx9/c;->o:La9/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ly9/e;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
