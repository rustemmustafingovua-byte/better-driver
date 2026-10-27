.class public final Lmb/s1;
.super Lmb/r2;
.source "SourceFile"


# instance fields
.field public k:Lmb/f6;

.field public final l:Lmb/t1;

.field public final m:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lhb/c;[Lmb/x3;Lmb/q2;[Lmb/s5;Lmb/t1;Ljava/util/List;)V
    .locals 8

    new-instance v3, Lmb/t4;

    const/4 v0, 0x1

    invoke-direct {v3, p1, v0}, Lmb/t4;-><init>(Lhb/c;I)V

    const-string v4, "<init>"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lmb/r2;-><init>(Lhb/c;[Lmb/x3;Lmb/s5;Ljava/lang/String;Lmb/q2;[Lmb/s5;Ljava/util/List;)V

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p0, v0, Lmb/s1;->m:Ljava/util/HashMap;

    iput-object p5, v0, Lmb/s1;->l:Lmb/t1;

    if-eqz p5, :cond_0

    invoke-virtual {p5, v0}, Lmb/t1;->a(Lmb/a5;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmb/l0;->c:Lmb/v5;

    check-cast v1, Lmb/e0;

    invoke-interface {v1}, Lmb/v5;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/r2;->g:Lmb/q2;

    iget-object v1, p0, Lmb/q2;->c:[Lmb/p2;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    if-lez v3, :cond_0

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v4, v1, v3

    array-length v5, v1

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_1

    iget-boolean v5, p0, Lmb/q2;->d:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    invoke-virtual {v4, v6}, Lmb/p2;->x(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lmb/l7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/l7;->C0(Lmb/s1;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
