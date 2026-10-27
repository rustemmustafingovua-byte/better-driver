.class public abstract Le6/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final l:Lb6/e;

.field public final m:Lj6/h;

.field public final n:Z

.field public final o:Lb6/l;

.field public final p:Lb6/n;

.field public final q:Ln6/d;

.field public final r:Lb6/w;


# direct methods
.method public constructor <init>(Lb6/e;Lj6/h;Lb6/l;Lb6/w;Lb6/n;Ln6/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le6/w;->l:Lb6/e;

    iput-object p2, p0, Le6/w;->m:Lj6/h;

    iput-object p3, p0, Le6/w;->o:Lb6/l;

    iput-object p5, p0, Le6/w;->p:Lb6/n;

    iput-object p6, p0, Le6/w;->q:Ln6/d;

    iput-object p4, p0, Le6/w;->r:Lb6/w;

    instance-of p1, p2, Lj6/f;

    iput-boolean p1, p0, Le6/w;->n:Z

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.end method

.method public b()Ljava/lang/Object;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Cannot call createParameterObject() on "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Ls5/n;->F:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    iget-object v1, p0, Le6/w;->p:Lb6/n;

    if-eqz v0, :cond_0

    invoke-virtual {v1, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Le6/w;->q:Ln6/d;

    if-eqz p0, :cond_1

    invoke-virtual {v1, p1, p2, p0}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v1, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public d(Ls5/k;Lb6/i;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Le6/w;->r:Lb6/w;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2, p4}, Lb6/w;->a(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    :goto_0
    invoke-virtual {p0, p1, p2}, Le6/w;->c(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p3, p4, p2}, Le6/w;->f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Le6/z; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    iget-object p3, p0, Le6/w;->p:Lb6/n;

    invoke-virtual {p3}, Lb6/n;->getObjectIdReader()Lf6/r;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object p0, p0, Le6/w;->o:Lb6/l;

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Lb6/p;

    const-string p3, "Unresolved forward reference but no identity info."

    invoke-direct {p0, p1, p3, p2}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public e()I
    .locals 0

    const/4 p0, -0x1

    return p0
.end method

.method public final f(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Le6/w;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {p3}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Problem deserializing \"any-property\" \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "\' of class "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Le6/w;->m:Lj6/h;

    invoke-virtual {v2}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (expected type: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Le6/w;->o:Lb6/l;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "; actual type: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lu6/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p2, ", problem: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p0, " (no error message provided)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    new-instance p0, Lb6/p;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, v1, p2, p1}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lu6/h;->D(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lu6/h;->E(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lu6/h;->q(Ljava/lang/Exception;)Ljava/lang/Throwable;

    move-result-object p0

    new-instance p1, Lb6/p;

    invoke-static {p0}, Lu6/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v1, p2, p0}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method

.method public abstract h(Lb6/n;)Le6/w;
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[any property on class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Le6/w;->m:Lj6/h;

    invoke-virtual {p0}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
