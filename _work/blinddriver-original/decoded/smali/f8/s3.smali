.class public final Lf8/s3;
.super Lg5/s;
.source "SourceFile"


# instance fields
.field public final n:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lg5/s;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object p2, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    const-string v1, "newBuilder"

    invoke-static {p2, v1, v0}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lf8/s3;->n:Ljava/lang/reflect/Method;

    const-string p0, "get"

    const-string p2, "Builder"

    invoke-static {p0, p1, p2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    invoke-static {p3, p0, p1}, Lf8/y3;->e(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final e()Lf8/a;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lf8/s3;->n:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf8/a;

    return-object p0
.end method

.method public final p(Lf8/l3;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lf8/s3;->n:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lf8/y3;->m(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf8/a;

    check-cast p2, Lf8/c;

    invoke-virtual {v0, p2}, Lf8/a;->x(Lf8/c;)Lf8/a;

    move-result-object p2

    invoke-virtual {p2}, Lf8/a;->r()Lf8/c;

    move-result-object p2

    :goto_0
    invoke-super {p0, p1, p2}, Lg5/s;->p(Lf8/l3;Ljava/lang/Object;)V

    return-void
.end method
