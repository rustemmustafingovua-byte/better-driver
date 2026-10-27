.class public final Lmb/t0;
.super Lmb/e0;
.source "SourceFile"

# interfaces
.implements Lmb/v2;


# instance fields
.field public final l:Lmb/s5;

.field public m:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lhb/c;Lmb/s5;)V
    .locals 2

    const-string v0, "private"

    const-string v1, "final"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, La/a;->d(Lhb/c;[Ljava/lang/String;)[Lmb/n0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lmb/e0;-><init>(Lhb/c;[Lmb/x3;[Lmb/w5;)V

    iput-object p2, p0, Lmb/t0;->l:Lmb/s5;

    new-instance p1, Lmb/d2;

    invoke-direct {p1, p0}, Lmb/d2;-><init>(Lmb/m0;)V

    invoke-virtual {p2, p1}, Lmb/s5;->a(Lmb/a5;)V

    return-void
.end method


# virtual methods
.method public final h()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lmb/t0;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lmb/m0;->f:Lmb/a5;

    :goto_0
    instance-of v1, v0, Lmb/v5;

    if-nez v1, :cond_1

    invoke-interface {v0}, Lmb/a5;->b()Lmb/a5;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Lmb/v5;

    check-cast v0, Lmb/m0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lmb/v5;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, v0, Lmb/m0;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lmb/m0;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmb/t0;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final q(Lmb/t7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/t7;->i0(Lmb/t0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
