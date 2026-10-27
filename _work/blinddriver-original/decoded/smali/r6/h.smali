.class public final Lr6/h;
.super Lr5/f1;
.source "SourceFile"


# instance fields
.field public final m:Lq6/c;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lq6/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lr5/f1;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Lr6/h;->m:Lq6/c;

    return-void
.end method


# virtual methods
.method public final a(Lr5/d1;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lr6/h;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    check-cast p1, Lr6/h;

    iget-object v0, p1, Lr5/f1;->l:Ljava/lang/Class;

    iget-object v1, p0, Lr5/f1;->l:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lr6/h;->m:Lq6/c;

    iget-object p0, p0, Lr6/h;->m:Lq6/c;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v2
.end method

.method public final b(Ljava/lang/Class;)Lr5/d1;
    .locals 1

    iget-object v0, p0, Lr5/f1;->l:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lr6/h;

    iget-object p0, p0, Lr6/h;->m:Lq6/c;

    invoke-direct {v0, p1, p0}, Lr6/h;-><init>(Ljava/lang/Class;Lq6/c;)V

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object p0, p0, Lr6/h;->m:Lq6/c;

    :try_start_0
    iget-object v0, p0, Lq6/c;->t:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    iget-object v0, p0, Lq6/c;->u:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Problem accessing property \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lq6/c;->n:Lw5/k;

    iget-object p0, p0, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\': "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    throw p0
.end method

.method public final d(Ljava/lang/Object;)Lr5/c1;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lr5/c1;

    const-class v1, Lr6/h;

    iget-object p0, p0, Lr5/f1;->l:Ljava/lang/Class;

    invoke-direct {v0, v1, p0, p1}, Lr5/c1;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final e()Lr5/d1;
    .locals 0

    return-object p0
.end method
