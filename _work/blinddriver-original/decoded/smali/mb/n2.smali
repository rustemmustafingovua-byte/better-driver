.class public final Lmb/n2;
.super Lmb/u1;
.source "SourceFile"


# instance fields
.field public final h:Lmb/p2;

.field public final i:Lmb/y4;


# direct methods
.method public constructor <init>(Lhb/c;Lmb/p2;Lmb/y4;Lmb/f1;)V
    .locals 0

    invoke-direct {p0, p1, p4}, Lmb/u1;-><init>(Lhb/c;Lmb/f1;)V

    iput-object p2, p0, Lmb/n2;->h:Lmb/p2;

    iget-object p1, p2, Lmb/p2;->d:Lmb/s5;

    invoke-virtual {p1, p0}, Lmb/s5;->a(Lmb/a5;)V

    iput-object p3, p0, Lmb/n2;->i:Lmb/y4;

    invoke-virtual {p3, p0}, Lmb/y4;->a(Lmb/a5;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "for (... : ...) ..."

    return-object p0
.end method

.method public final u(Lmb/h7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/h7;->O(Lmb/n2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
