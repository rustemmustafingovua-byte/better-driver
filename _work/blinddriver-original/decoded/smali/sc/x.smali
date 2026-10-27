.class public final Lsc/x;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/g;


# instance fields
.field public synthetic l:Z

.field public synthetic m:Z

.field public synthetic n:Z


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p4, Ly8/c;

    new-instance p3, Lsc/x;

    const/4 v0, 0x4

    invoke-direct {p3, v0, p4}, La9/i;-><init>(ILy8/c;)V

    iput-boolean p0, p3, Lsc/x;->l:Z

    iput-boolean p1, p3, Lsc/x;->m:Z

    iput-boolean p2, p3, Lsc/x;->n:Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {p3, p0}, Lsc/x;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lsc/x;->l:Z

    iget-boolean v1, p0, Lsc/x;->m:Z

    iget-boolean p0, p0, Lsc/x;->n:Z

    sget-object v2, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
