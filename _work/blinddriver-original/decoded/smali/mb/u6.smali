.class public final Lmb/u6;
.super Lmb/s;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lmb/v5;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Lmb/s5;

.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Z

.field public final synthetic i:Lmb/x0;

.field public final synthetic j:Lmb/a7;


# direct methods
.method public constructor <init>(Lmb/a7;Lmb/x;Lmb/v5;IZLmb/s5;ILjava/lang/String;ZLmb/x0;)V
    .locals 0

    iput-object p1, p0, Lmb/u6;->j:Lmb/a7;

    iput-object p3, p0, Lmb/u6;->b:Lmb/v5;

    iput p4, p0, Lmb/u6;->c:I

    iput-boolean p5, p0, Lmb/u6;->d:Z

    iput-object p6, p0, Lmb/u6;->e:Lmb/s5;

    iput p7, p0, Lmb/u6;->f:I

    iput-object p8, p0, Lmb/u6;->g:Ljava/lang/String;

    iput-boolean p9, p0, Lmb/u6;->h:Z

    iput-object p10, p0, Lmb/u6;->i:Lmb/x0;

    invoke-direct {p0, p2}, Lmb/s;-><init>(Lmb/x;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    iget-object v0, p0, Lmb/u6;->b:Lmb/v5;

    instance-of v0, v0, Lmb/y2;

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    iget p0, p0, Lmb/u6;->c:I

    return p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 4

    iget-boolean v0, p0, Lmb/u6;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmb/u6;->i:Lmb/x0;

    if-eqz v0, :cond_0

    new-instance v1, Lmb/t6;

    const/4 v2, 0x3

    iget-object v3, p0, Lmb/u6;->j:Lmb/a7;

    invoke-direct {v1, v3, v2}, Lmb/t6;-><init>(Lmb/a7;I)V

    invoke-interface {v0, v1}, Lmb/x0;->f(Lmb/f7;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lmb/a7;->q:Lmb/q;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lmb/u6;->e()Lmb/x;

    move-result-object p0

    invoke-virtual {v3, v0, v1, p0}, Lmb/a7;->m0(Lmb/k3;Ljava/lang/Object;Lmb/b0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lmb/a7;->q:Lmb/q;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmb/u6;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Lmb/x;
    .locals 3

    iget-object v0, p0, Lmb/u6;->j:Lmb/a7;

    iget-object v1, v0, Lmb/a7;->h:Lmb/b;

    iget-object v2, p0, Lmb/u6;->e:Lmb/s5;

    invoke-virtual {v0, v2}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v0

    check-cast v0, Lmb/x;

    iget p0, p0, Lmb/u6;->f:I

    invoke-virtual {v1, v0, p0}, Lmb/a0;->c(Lmb/x;I)Lmb/x;

    move-result-object p0

    return-object p0
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lmb/u6;->b:Lmb/v5;

    instance-of v0, v0, Lmb/y2;

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lmb/u6;->d:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
