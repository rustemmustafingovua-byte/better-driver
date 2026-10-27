.class public abstract Ly9/f;
.super Ly9/e;
.source "SourceFile"


# instance fields
.field public final o:Lx9/g;


# direct methods
.method public constructor <init>(Lx9/g;Ly8/h;ILw9/a;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Ly9/e;-><init>(Ly8/h;ILw9/a;)V

    iput-object p1, p0, Ly9/f;->o:Lx9/g;

    return-void
.end method


# virtual methods
.method public final a(Lx9/h;Ly8/c;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Ly9/e;->m:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_4

    invoke-interface {p2}, Ly8/c;->getContext()Ly8/h;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v2, Lsc/u0;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lsc/u0;-><init>(I)V

    iget-object v3, p0, Ly9/e;->l:Ly8/h;

    invoke-interface {v3, v2, v1}, Ly8/h;->d(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0, v3}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Lu9/v;->j(Ly8/h;Ly8/h;Z)Ly8/h;

    move-result-object v1

    :goto_0
    invoke-static {v1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, p2}, Ly9/f;->f(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_5

    return-object p0

    :cond_1
    sget-object v2, Ly8/d;->l:Ly8/d;

    invoke-interface {v1, v2}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v3

    invoke-interface {v0, v2}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v0

    invoke-static {v3, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ly8/c;->getContext()Ly8/h;

    move-result-object v0

    instance-of v2, p1, Ly9/w;

    if-nez v2, :cond_3

    instance-of v2, p1, Ly9/s;

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Lm/f;

    invoke-direct {v2, p1, v0}, Lm/f;-><init>(Lx9/h;Ly8/h;)V

    move-object p1, v2

    :cond_3
    :goto_1
    new-instance v0, Lp/b;

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-direct {v0, p0, v2, v3}, Lp/b;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v1}, Lz9/b;->m(Ly8/h;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {v1, p1, p0, v0, p2}, Ly9/c;->b(Ly8/h;Ljava/lang/Object;Ljava/lang/Object;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_5

    return-object p0

    :cond_4
    invoke-super {p0, p1, p2}, Ly9/e;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_5

    return-object p0

    :cond_5
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final c(Lw9/r;Ly8/c;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ly9/w;

    invoke-direct {v0, p1}, Ly9/w;-><init>(Lw9/r;)V

    invoke-virtual {p0, v0, p2}, Ly9/f;->f(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public abstract f(Lx9/h;Ly8/c;)Ljava/lang/Object;
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ly9/f;->o:Lx9/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ly9/e;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
