.class public final Lmb/n6;
.super Lmb/s5;
.source "SourceFile"


# instance fields
.field public d:Lmb/c5;

.field public final synthetic e:Ljava/lang/Class;

.field public final synthetic f:Lhb/c;

.field public final synthetic g:Lmb/o6;


# direct methods
.method public constructor <init>(Lmb/o6;Lhb/c;Ljava/lang/Class;Lhb/c;)V
    .locals 0

    iput-object p1, p0, Lmb/n6;->g:Lmb/o6;

    iput-object p3, p0, Lmb/n6;->e:Ljava/lang/Class;

    iput-object p4, p0, Lmb/n6;->f:Lhb/c;

    invoke-direct {p0, p2}, Lmb/m3;-><init>(Lhb/c;)V

    return-void
.end method


# virtual methods
.method public final E(Lmb/u7;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmb/n6;->F()Lmb/c5;

    move-result-object p0

    invoke-interface {p1, p0}, Lmb/u7;->m0(Lmb/c5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final F()Lmb/c5;
    .locals 5

    iget-object v0, p0, Lmb/n6;->e:Ljava/lang/Class;

    iget-object v1, p0, Lmb/n6;->d:Lmb/c5;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lmb/n6;->g:Lmb/o6;

    iget-object v1, v1, Lmb/o6;->g:Lmb/b;

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmb/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmb/a0;->d(Ljava/lang/String;)Lmb/x;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_8

    move-object v2, v1

    :goto_0
    invoke-virtual {v2}, Lmb/x;->e()Lmb/x;

    move-result-object v3

    const-string v4, "Array type/class inconsistency"

    if-nez v3, :cond_6

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    const-string v4, "Primitive type/class inconsistency"

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lmb/x;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lhb/b;

    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {v2}, Lmb/x;->H()Z

    move-result v3

    if-nez v3, :cond_4

    check-cast v2, Lmb/i6;

    iget-object v2, v2, Lmb/i6;->I:Ljava/lang/Class;

    if-ne v2, v0, :cond_3

    :goto_1
    new-instance v0, Lmb/c5;

    iget-object v2, p0, Lmb/n6;->f:Lhb/c;

    invoke-direct {v0, v2, v1}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    iput-object v0, p0, Lmb/n6;->d:Lmb/c5;

    return-object v0

    :cond_3
    new-instance p0, Lhb/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Class \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\' was loaded through a different loader"

    invoke-static {v0, v1, v2}, La6/q;->i(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lhb/b;

    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lhb/b;

    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_7

    move-object v2, v3

    goto :goto_0

    :cond_7
    new-instance p0, Lhb/b;

    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Lhb/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot load class \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\' through the parent loader"

    invoke-static {v0, v1, v2}, La6/q;->i(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    new-instance v1, Lhb/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Loading IClass \""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lmb/n6;->F()Lmb/c5;

    move-result-object p0

    iget-object p0, p0, Lmb/c5;->d:Lmb/b0;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lmb/g7;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lmb/n6;->F()Lmb/c5;

    move-result-object p0

    invoke-interface {p1, p0}, Lmb/g7;->visitType(Lmb/s5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
