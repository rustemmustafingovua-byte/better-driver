.class public final Lf1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lf1/r;


# instance fields
.field public final a:Lf1/r;

.field public final b:Lf1/r;


# direct methods
.method public constructor <init>(Lf1/r;Lf1/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/l;->a:Lf1/r;

    iput-object p2, p0, Lf1/l;->b:Lf1/r;

    return-void
.end method


# virtual methods
.method public final a(Li9/c;)Z
    .locals 1

    iget-object v0, p0, Lf1/l;->a:Lf1/r;

    invoke-interface {v0, p1}, Lf1/r;->a(Li9/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lf1/l;->b:Lf1/r;

    invoke-interface {p0, p1}, Lf1/r;->a(Li9/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lf1/l;->a:Lf1/r;

    invoke-interface {v0, p1, p2}, Lf1/r;->c(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object p0, p0, Lf1/l;->b:Lf1/r;

    invoke-interface {p0, p1, p2}, Lf1/r;->c(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lf1/l;

    if-eqz v0, :cond_0

    check-cast p1, Lf1/l;

    iget-object v0, p1, Lf1/l;->a:Lf1/r;

    iget-object v1, p0, Lf1/l;->a:Lf1/r;

    invoke-static {v1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lf1/l;->b:Lf1/r;

    iget-object p1, p1, Lf1/l;->b:Lf1/r;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lf1/l;->a:Lf1/r;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object p0, p0, Lf1/l;->b:Lf1/r;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit8 p0, p0, 0x1f

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    sget-object v2, Lf1/k;->l:Lf1/k;

    invoke-virtual {p0, v2, v1}, Lf1/l;->c(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/16 v1, 0x5d

    invoke-static {v0, p0, v1}, Lr0/i;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
