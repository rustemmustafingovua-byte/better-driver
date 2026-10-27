.class public final Lu/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/j1;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Lr0/e1;

.field public final d:Lr0/e1;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lu/a;->a:I

    iput-object p2, p0, Lu/a;->b:Ljava/lang/String;

    sget-object p1, Ll3/b;->e:Ll3/b;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lu/a;->c:Lr0/e1;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1}, Lr0/r;->y(Ljava/lang/Object;)Lr0/e1;

    move-result-object p1

    iput-object p1, p0, Lu/a;->d:Lr0/e1;

    return-void
.end method


# virtual methods
.method public final a(Lc2/t0;Lb3/m;)I
    .locals 0

    invoke-virtual {p0}, Lu/a;->e()Ll3/b;

    move-result-object p0

    iget p0, p0, Ll3/b;->a:I

    return p0
.end method

.method public final b(Lc2/t0;Lb3/m;)I
    .locals 0

    invoke-virtual {p0}, Lu/a;->e()Ll3/b;

    move-result-object p0

    iget p0, p0, Ll3/b;->c:I

    return p0
.end method

.method public final c(Lc2/t0;)I
    .locals 0

    invoke-virtual {p0}, Lu/a;->e()Ll3/b;

    move-result-object p0

    iget p0, p0, Ll3/b;->d:I

    return p0
.end method

.method public final d(Lb3/c;)I
    .locals 0

    invoke-virtual {p0}, Lu/a;->e()Ll3/b;

    move-result-object p0

    iget p0, p0, Ll3/b;->b:I

    return p0
.end method

.method public final e()Ll3/b;
    .locals 0

    iget-object p0, p0, Lu/a;->c:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll3/b;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lu/a;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lu/a;

    iget p1, p1, Lu/a;->a:I

    iget p0, p0, Lu/a;->a:I

    if-ne p0, p1, :cond_2

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public final f(Z)V
    .locals 0

    iget-object p0, p0, Lu/a;->d:Lr0/e1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final g(Lq3/x0;I)V
    .locals 2

    iget v0, p0, Lu/a;->a:I

    if-eqz p2, :cond_1

    and-int/2addr p2, v0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object p2, p1, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {p2, v0}, Lq3/u0;->i(I)Ll3/b;

    move-result-object p2

    iget-object v1, p0, Lu/a;->c:Lr0/e1;

    invoke-virtual {v1, p2}, Lr0/e1;->setValue(Ljava/lang/Object;)V

    iget-object p1, p1, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {p1, v0}, Lq3/u0;->u(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lu/a;->f(Z)V

    return-void
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lu/a;->a:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lu/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/a;->e()Ll3/b;

    move-result-object v1

    iget v1, v1, Ll3/b;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/a;->e()Ll3/b;

    move-result-object v2

    iget v2, v2, Ll3/b;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/a;->e()Ll3/b;

    move-result-object v2

    iget v2, v2, Ll3/b;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/a;->e()Ll3/b;

    move-result-object p0

    iget p0, p0, Ll3/b;->d:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lr0/i;->k(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
