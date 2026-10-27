.class public final Lsc/d0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public synthetic l:Ldd/l0;

.field public synthetic m:Z


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ldd/l0;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p3, Ly8/c;

    new-instance p2, Lsc/d0;

    const/4 v0, 0x3

    invoke-direct {p2, v0, p3}, La9/i;-><init>(ILy8/c;)V

    iput-object p1, p2, Lsc/d0;->l:Ldd/l0;

    iput-boolean p0, p2, Lsc/d0;->m:Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {p2, p0}, Lsc/d0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lsc/d0;->l:Ldd/l0;

    iget-boolean p0, p0, Lsc/d0;->m:Z

    sget-object v1, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    new-instance p1, Lt8/j;

    invoke-direct {p1, v0, p0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
