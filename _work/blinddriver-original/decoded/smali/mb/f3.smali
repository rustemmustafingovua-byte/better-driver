.class public final Lmb/f3;
.super Lmb/e5;
.source "SourceFile"


# instance fields
.field public final e:Lmb/e3;


# direct methods
.method public constructor <init>(Lmb/e3;)V
    .locals 1

    iget-object v0, p1, Lmb/m0;->a:Lhb/c;

    invoke-direct {p0, v0}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p1, p0, Lmb/f3;->e:Lmb/e3;

    invoke-virtual {p1, p0}, Lmb/m0;->a(Lmb/a5;)V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmb/f3;->e:Lmb/e3;

    iget-object p0, p0, Lmb/b4;->l:Ljava/lang/String;

    return-object p0
.end method

.method public final u(Lmb/h7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/h7;->y0(Lmb/f3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
