.class public final Lm0/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/t0;


# instance fields
.field public final a:Z

.field public final b:I

.field public final c:I

.field public final d:Lm0/a0;

.field public final e:Lm0/x;


# direct methods
.method public constructor <init>(ZIILm0/a0;Lm0/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lm0/l1;->a:Z

    iput p2, p0, Lm0/l1;->b:I

    iput p3, p0, Lm0/l1;->c:I

    iput-object p4, p0, Lm0/l1;->d:Lm0/a0;

    iput-object p5, p0, Lm0/l1;->e:Lm0/x;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 0

    iget-boolean p0, p0, Lm0/l1;->a:Z

    return p0
.end method

.method public final b()Lm0/x;
    .locals 0

    iget-object p0, p0, Lm0/l1;->e:Lm0/x;

    return-object p0
.end method

.method public final c()Lm0/a0;
    .locals 0

    iget-object p0, p0, Lm0/l1;->d:Lm0/a0;

    return-object p0
.end method

.method public final d()Lm0/x;
    .locals 0

    iget-object p0, p0, Lm0/l1;->e:Lm0/x;

    return-object p0
.end method

.method public final e(Lm0/t0;)Z
    .locals 4

    iget-object v0, p0, Lm0/l1;->d:Lm0/a0;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    instance-of v0, p1, Lm0/l1;

    if-eqz v0, :cond_1

    check-cast p1, Lm0/l1;

    iget v0, p1, Lm0/l1;->b:I

    iget v1, p0, Lm0/l1;->b:I

    if-ne v1, v0, :cond_1

    iget v0, p0, Lm0/l1;->c:I

    iget v1, p1, Lm0/l1;->c:I

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lm0/l1;->a:Z

    iget-boolean v1, p1, Lm0/l1;->a:Z

    if-ne v0, v1, :cond_1

    iget-object p1, p1, Lm0/l1;->e:Lm0/x;

    iget-object p0, p0, Lm0/l1;->e:Lm0/x;

    iget-wide v0, p0, Lm0/x;->a:J

    iget-wide v2, p1, Lm0/x;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget v0, p0, Lm0/x;->c:I

    iget v1, p1, Lm0/x;->c:I

    if-ne v0, v1, :cond_1

    iget p0, p0, Lm0/x;->d:I

    iget p1, p1, Lm0/x;->d:I

    if-eq p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final f()I
    .locals 0

    iget p0, p0, Lm0/l1;->c:I

    return p0
.end method

.method public final g()Lm0/x;
    .locals 0

    iget-object p0, p0, Lm0/l1;->e:Lm0/x;

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final h()Lm0/k;
    .locals 2

    iget v0, p0, Lm0/l1;->b:I

    iget v1, p0, Lm0/l1;->c:I

    if-ge v0, v1, :cond_0

    sget-object p0, Lm0/k;->m:Lm0/k;

    return-object p0

    :cond_0
    if-le v0, v1, :cond_1

    sget-object p0, Lm0/k;->l:Lm0/k;

    return-object p0

    :cond_1
    iget-object p0, p0, Lm0/l1;->e:Lm0/x;

    invoke-virtual {p0}, Lm0/x;->b()Lm0/k;

    move-result-object p0

    return-object p0
.end method

.method public final i(Li9/c;)V
    .locals 0

    return-void
.end method

.method public final j(Lm0/a0;)Lk/b0;
    .locals 5

    iget-boolean v0, p1, Lm0/a0;->c:Z

    iget-object v1, p1, Lm0/a0;->b:Lm0/z;

    iget-object v2, p1, Lm0/a0;->a:Lm0/z;

    if-nez v0, :cond_0

    iget v3, v2, Lm0/z;->b:I

    iget v4, v1, Lm0/z;->b:I

    if-gt v3, v4, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget v2, v2, Lm0/z;->b:I

    iget v1, v1, Lm0/z;->b:I

    if-gt v2, v1, :cond_2

    :cond_1
    xor-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p1, v2, v2, v0, v1}, Lm0/a0;->a(Lm0/a0;Lm0/z;Lm0/z;ZI)Lm0/a0;

    move-result-object p1

    :cond_2
    iget-object p0, p0, Lm0/l1;->e:Lm0/x;

    iget-wide v0, p0, Lm0/x;->a:J

    sget-object p0, Lk/o;->a:Lk/b0;

    new-instance p0, Lk/b0;

    invoke-direct {p0}, Lk/b0;-><init>()V

    invoke-virtual {p0, v0, v1, p1}, Lk/b0;->h(JLjava/lang/Object;)V

    return-object p0
.end method

.method public final k()Lm0/x;
    .locals 0

    iget-object p0, p0, Lm0/l1;->e:Lm0/x;

    return-object p0
.end method

.method public final l()I
    .locals 0

    iget p0, p0, Lm0/l1;->b:I

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SingleSelectionLayout(isStartHandle="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lm0/l1;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", crossed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lm0/l1;->h()Lm0/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", info=\n\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lm0/l1;->e:Lm0/x;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
