.class public final Lf8/t3;
.super Lf8/v3;
.source "SourceFile"


# instance fields
.field public final q:Lf8/r2;

.field public final r:Ljava/lang/reflect/Method;

.field public final s:Ljava/lang/reflect/Method;

.field public final t:Z

.field public final u:Ljava/lang/reflect/Method;

.field public final v:Ljava/lang/reflect/Method;

.field public final w:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lf8/v2;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 3

    invoke-direct/range {p0 .. p5}, Lf8/v3;-><init>(Lf8/v2;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p1}, Lf8/v2;->h()Lf8/r2;

    move-result-object p5

    iput-object p5, p0, Lf8/t3;->q:Lf8/r2;

    iget-object p5, p0, Lf8/v3;->n:Ljava/lang/Object;

    check-cast p5, Ljava/lang/Class;

    const-class v0, Lf8/s2;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-string v1, "valueOf"

    invoke-static {p5, v1, v0}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p5

    iput-object p5, p0, Lf8/t3;->r:Ljava/lang/reflect/Method;

    iget-object p5, p0, Lf8/v3;->n:Ljava/lang/Object;

    check-cast p5, Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    const-string v2, "getValueDescriptor"

    invoke-static {p5, v2, v1}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p5

    iput-object p5, p0, Lf8/t3;->s:Ljava/lang/reflect/Method;

    iget-object p1, p1, Lf8/v2;->o:Lf8/w2;

    invoke-virtual {p1}, Lf8/w2;->h()I

    move-result p1

    const/4 p5, 0x3

    if-ne p1, p5, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lf8/t3;->t:Z

    if-eqz p1, :cond_1

    const-string p1, "get"

    const-string p5, "Value"

    invoke-static {p1, p2, p5}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Class;

    invoke-static {p3, v1, v2}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p3

    iput-object p3, p0, Lf8/t3;->u:Ljava/lang/reflect/Method;

    invoke-static {p1, p2, p5}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v0, [Ljava/lang/Class;

    invoke-static {p4, p1, p3}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lf8/t3;->v:Ljava/lang/reflect/Method;

    const-string p1, "set"

    invoke-static {p1, p2, p5}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-static {p4, p1, p2}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lf8/t3;->w:Ljava/lang/reflect/Method;

    :cond_1
    return-void
.end method


# virtual methods
.method public final b(Lf8/l3;Ljava/lang/Object;)V
    .locals 2

    iget-boolean v0, p0, Lf8/t3;->t:Z

    if-eqz v0, :cond_0

    check-cast p2, Lf8/s2;

    iget-object p2, p2, Lf8/s2;->l:Lf8/f0;

    iget p2, p2, Lf8/f0;->p:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    iget-object p0, p0, Lf8/t3;->w:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, p2}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    iget-object v1, p0, Lf8/t3;->r:Ljava/lang/reflect/Method;

    invoke-static {v1, v0, p2}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lf8/v3;->b(Lf8/l3;Ljava/lang/Object;)V

    return-void
.end method

.method public final o(Lf8/y3;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lf8/t3;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf8/t3;->u:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lf8/t3;->q:Lf8/r2;

    invoke-virtual {p0, p1}, Lf8/r2;->g(I)Lf8/s2;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/v3;->o(Lf8/y3;)Ljava/lang/Object;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lf8/t3;->s:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, v0}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final q(Lf8/l3;)Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lf8/t3;->t:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lf8/t3;->v:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lf8/t3;->q:Lf8/r2;

    invoke-virtual {p0, p1}, Lf8/r2;->g(I)Lf8/s2;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lf8/v3;->q(Lf8/l3;)Ljava/lang/Object;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object p0, p0, Lf8/t3;->s:Ljava/lang/reflect/Method;

    invoke-static {p0, p1, v0}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
