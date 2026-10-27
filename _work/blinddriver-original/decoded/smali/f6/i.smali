.class public final Lf6/i;
.super Le6/x;
.source "SourceFile"


# instance fields
.field public final transient z:Ljava/lang/reflect/Constructor;


# direct methods
.method public constructor <init>(Le6/y;Ljava/lang/reflect/Constructor;)V
    .locals 0

    invoke-direct {p0, p1}, Le6/x;-><init>(Le6/y;)V

    iput-object p2, p0, Lf6/i;->z:Ljava/lang/reflect/Constructor;

    return-void
.end method


# virtual methods
.method public final H(Le6/y;)Le6/y;
    .locals 1

    iget-object v0, p0, Le6/x;->y:Le6/y;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lf6/i;

    iget-object p0, p0, Lf6/i;->z:Ljava/lang/reflect/Constructor;

    invoke-direct {v0, p1, p0}, Lf6/i;-><init>(Le6/y;Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public final k(Ls5/k;Lb6/i;Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lf6/i;->z:Ljava/lang/reflect/Constructor;

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v1

    sget-object v2, Ls5/n;->F:Ls5/n;

    iget-object v3, p0, Le6/y;->q:Lb6/n;

    if-ne v1, v2, :cond_0

    invoke-virtual {v3, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Le6/y;->r:Ln6/d;

    if-eqz v1, :cond_1

    invoke-virtual {v3, p1, p2, v1}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    :try_start_0
    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v3, p1, p2, v0}, Lb6/n;->deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    :goto_0
    invoke-virtual {p0, p3, p1}, Le6/x;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Failed to instantiate class "

    const-string v0, ", problem: "

    invoke-static {p3, p1, v0, p2}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lu6/h;->q(Ljava/lang/Exception;)Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lu6/h;->E(Ljava/lang/Throwable;)V

    invoke-static {p0}, Lu6/h;->C(Ljava/lang/Throwable;)V

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final l(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Le6/x;->y:Le6/y;

    invoke-virtual {p0, p3, p1}, Le6/y;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
