.class public final Lj6/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Z

.field public final c:Z

.field public final d:Ljava/lang/Object;

.field public e:Z

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lj6/g0;Lb6/i0;ZZZ)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj6/g0;->a:I

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lj6/g0;->d:Ljava/lang/Object;

    .line 10
    iput-object p2, p0, Lj6/g0;->f:Ljava/lang/Object;

    if-eqz p3, :cond_1

    .line 11
    invoke-virtual {p3}, Lb6/i0;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lj6/g0;->g:Ljava/lang/Object;

    if-eqz p4, :cond_3

    if-eqz p1, :cond_2

    .line 12
    invoke-virtual {p3}, Lb6/i0;->c()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p4, 0x0

    goto :goto_2

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot pass true for \'explName\' if name is null/empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_3
    :goto_2
    iput-boolean p4, p0, Lj6/g0;->b:Z

    .line 15
    iput-boolean p5, p0, Lj6/g0;->c:Z

    .line 16
    iput-boolean p6, p0, Lj6/g0;->e:Z

    return-void
.end method

.method public constructor <init>(Lr0/m1;Ljava/lang/Object;ZLr0/m2;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj6/g0;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lj6/g0;->f:Ljava/lang/Object;

    .line 3
    iput-boolean p3, p0, Lj6/g0;->b:Z

    .line 4
    iput-object p4, p0, Lj6/g0;->g:Ljava/lang/Object;

    .line 5
    iput-boolean p5, p0, Lj6/g0;->c:Z

    .line 6
    iput-object p2, p0, Lj6/g0;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lj6/g0;->e:Z

    return-void
.end method


# virtual methods
.method public a(Lj6/g0;)Lj6/g0;
    .locals 1

    iget-object v0, p0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast v0, Lj6/g0;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lj6/g0;->d(Lj6/g0;)Lj6/g0;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0, p1}, Lj6/g0;->a(Lj6/g0;)Lj6/g0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj6/g0;->d(Lj6/g0;)Lj6/g0;

    move-result-object p0

    return-object p0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lj6/g0;->b:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lj6/g0;->d:Ljava/lang/Object;

    if-eqz p0, :cond_1

    return-object p0

    :cond_1
    const-string p0, "Unexpected form of a provided value"

    invoke-static {p0}, Lr0/s;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public c()Lj6/g0;
    .locals 4

    iget-object v0, p0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast v0, Lj6/g0;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lj6/g0;->c()Lj6/g0;

    move-result-object v0

    iget-object v1, p0, Lj6/g0;->g:Ljava/lang/Object;

    check-cast v1, Lb6/i0;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, v0, Lj6/g0;->g:Ljava/lang/Object;

    check-cast v1, Lb6/i0;

    if-nez v1, :cond_1

    invoke-virtual {p0, v2}, Lj6/g0;->d(Lj6/g0;)Lj6/g0;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, v0}, Lj6/g0;->d(Lj6/g0;)Lj6/g0;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object v1, v0, Lj6/g0;->g:Ljava/lang/Object;

    check-cast v1, Lb6/i0;

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v1, v0, Lj6/g0;->c:Z

    iget-boolean v3, p0, Lj6/g0;->c:Z

    if-ne v3, v1, :cond_4

    invoke-virtual {p0, v0}, Lj6/g0;->d(Lj6/g0;)Lj6/g0;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Lj6/g0;->d(Lj6/g0;)Lj6/g0;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    return-object v0
.end method

.method public d(Lj6/g0;)Lj6/g0;
    .locals 8

    iget-object v0, p0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast v0, Lj6/g0;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lj6/g0;

    iget-object v0, p0, Lj6/g0;->g:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lb6/i0;

    iget-boolean v6, p0, Lj6/g0;->c:Z

    iget-boolean v7, p0, Lj6/g0;->e:Z

    iget-object v2, p0, Lj6/g0;->d:Ljava/lang/Object;

    iget-boolean v5, p0, Lj6/g0;->b:Z

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lj6/g0;-><init>(Ljava/lang/Object;Lj6/g0;Lb6/i0;ZZZ)V

    return-object v1
.end method

.method public e()Lj6/g0;
    .locals 2

    iget-object v0, p0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast v0, Lj6/g0;

    iget-boolean v1, p0, Lj6/g0;->e:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lj6/g0;->e()Lj6/g0;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lj6/g0;->e()Lj6/g0;

    move-result-object v1

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lj6/g0;->d(Lj6/g0;)Lj6/g0;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public f()Lj6/g0;
    .locals 8

    iget-object v0, p0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast v0, Lj6/g0;

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    new-instance v1, Lj6/g0;

    iget-object v0, p0, Lj6/g0;->g:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lb6/i0;

    iget-boolean v6, p0, Lj6/g0;->c:Z

    iget-boolean v7, p0, Lj6/g0;->e:Z

    iget-object v2, p0, Lj6/g0;->d:Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v5, p0, Lj6/g0;->b:Z

    invoke-direct/range {v1 .. v7}, Lj6/g0;-><init>(Ljava/lang/Object;Lj6/g0;Lb6/i0;ZZZ)V

    return-object v1
.end method

.method public g()Lj6/g0;
    .locals 2

    iget-object v0, p0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast v0, Lj6/g0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lj6/g0;->g()Lj6/g0;

    move-result-object v0

    :goto_0
    iget-boolean v1, p0, Lj6/g0;->c:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lj6/g0;->d(Lj6/g0;)Lj6/g0;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lj6/g0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lj6/g0;->d:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lj6/g0;->e:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "[visible="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lj6/g0;->c:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",ignore="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",explicitName="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lj6/g0;->b:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lj6/g0;->f:Ljava/lang/Object;

    check-cast p0, Lj6/g0;

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lj6/g0;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
