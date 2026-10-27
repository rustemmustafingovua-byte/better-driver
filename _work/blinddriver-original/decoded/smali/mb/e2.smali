.class public final Lmb/e2;
.super Lmb/e0;
.source "SourceFile"

# interfaces
.implements Lmb/y1;


# instance fields
.field public final l:Ljava/lang/String;

.field public final m:[Lmb/y4;


# direct methods
.method public constructor <init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/y4;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmb/e0;-><init>(Lhb/c;[Lmb/x3;[Lmb/w5;)V

    iput-object p3, p0, Lmb/e2;->l:Ljava/lang/String;

    iput-object p4, p0, Lmb/e2;->m:[Lmb/y4;

    return-void
.end method


# virtual methods
.method public final h()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmb/e2;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final n()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final q(Lmb/t7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/t7;->s0(Lmb/e2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final t()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enum "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lmb/e2;->l:Ljava/lang/String;

    const-string v1, " { ... }"

    invoke-static {v0, p0, v1}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
