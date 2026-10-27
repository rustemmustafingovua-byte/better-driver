.class public abstract Lmb/b4;
.super Lmb/e0;
.source "SourceFile"

# interfaces
.implements Lmb/c4;
.implements Lmb/y1;


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:Lmb/s5;

.field public final n:[Lmb/s5;


# direct methods
.method public constructor <init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/w5;Lmb/s5;[Lmb/s5;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lmb/e0;-><init>(Lhb/c;[Lmb/x3;[Lmb/w5;)V

    iput-object p3, p0, Lmb/b4;->l:Ljava/lang/String;

    iput-object p5, p0, Lmb/b4;->m:Lmb/s5;

    if-eqz p5, :cond_0

    new-instance p1, Lmb/d2;

    invoke-direct {p1, p0}, Lmb/d2;-><init>(Lmb/m0;)V

    invoke-virtual {p5, p1}, Lmb/s5;->a(Lmb/a5;)V

    :cond_0
    iput-object p6, p0, Lmb/b4;->n:[Lmb/s5;

    array-length p1, p6

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    aget-object p3, p6, p2

    new-instance p4, Lmb/d2;

    invoke-direct {p4, p0}, Lmb/d2;-><init>(Lmb/m0;)V

    invoke-virtual {p3, p4}, Lmb/s5;->a(Lmb/a5;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmb/b4;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final t()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmb/b4;->l:Ljava/lang/String;

    return-object p0
.end method
