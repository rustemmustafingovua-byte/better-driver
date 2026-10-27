.class public final Lmb/u2;
.super Lmb/l0;
.source "SourceFile"

# interfaces
.implements Lmb/l2;


# instance fields
.field public final e:Lmb/e1;


# direct methods
.method public constructor <init>(Lhb/c;[Lmb/x3;Lmb/e1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmb/l0;-><init>(Lhb/c;[Lmb/x3;)V

    iput-object p3, p0, Lmb/u2;->e:Lmb/e1;

    invoke-virtual {p3, p0}, Lmb/e5;->a(Lmb/a5;)V

    return-void
.end method


# virtual methods
.method public final j(Lmb/k7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/k7;->h(Lmb/u2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final m(Ljava/lang/String;)Lmb/g3;
    .locals 0

    iget-object p0, p0, Lmb/u2;->e:Lmb/e1;

    invoke-virtual {p0, p1}, Lmb/e5;->m(Ljava/lang/String;)Lmb/g3;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmb/l0;->d:[Lmb/x3;

    invoke-static {v1}, La/a;->c([Lmb/x3;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/u2;->e:Lmb/e1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lmb/h7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/k7;->h(Lmb/u2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final v(Lmb/s7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/s7;->h(Lmb/u2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
