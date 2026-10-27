.class public final Lmb/q5;
.super Lmb/p5;
.source "SourceFile"


# instance fields
.field public final c:Lmb/y4;


# direct methods
.method public constructor <init>(Lhb/c;Lmb/y4;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/q5;->c:Lmb/y4;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmb/q5;->c:Lmb/y4;

    invoke-virtual {p0}, Lmb/c1;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lmb/q7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/q7;->V(Lmb/q5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final y(Lmb/r5;)V
    .locals 0

    iget-object p0, p0, Lmb/q5;->c:Lmb/y4;

    invoke-virtual {p0, p1}, Lmb/y4;->a(Lmb/a5;)V

    return-void
.end method
