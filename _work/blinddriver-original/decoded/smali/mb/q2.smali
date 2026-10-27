.class public final Lmb/q2;
.super Lmb/m3;
.source "SourceFile"


# instance fields
.field public final c:[Lmb/p2;

.field public final d:Z


# direct methods
.method public constructor <init>(Lhb/c;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    new-array v1, v0, [Lmb/p2;

    invoke-direct {p0, p1, v1, v0}, Lmb/q2;-><init>(Lhb/c;[Lmb/p2;Z)V

    return-void
.end method

.method public constructor <init>(Lhb/c;[Lmb/p2;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    .line 3
    iput-object p2, p0, Lmb/q2;->c:[Lmb/p2;

    .line 4
    iput-boolean p3, p0, Lmb/q2;->d:Z

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 7

    iget-object v0, p0, Lmb/q2;->c:[Lmb/p2;

    array-length v1, v0

    if-nez v1, :cond_0

    const-string p0, "()"

    return-object p0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    if-lez v3, :cond_1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    aget-object v4, v0, v3

    array-length v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_2

    iget-boolean v5, p0, Lmb/q2;->d:Z

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    invoke-virtual {v4, v6}, Lmb/p2;->x(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/16 p0, 0x29

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
