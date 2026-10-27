.class public final Lmb/t2;
.super Lmb/e5;
.source "SourceFile"


# instance fields
.field public final e:Lmb/y4;

.field public final f:Lmb/f1;

.field public final g:Lmb/f1;


# direct methods
.method public constructor <init>(Lhb/c;Lmb/y4;Lmb/f1;Lmb/f1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/t2;->e:Lmb/y4;

    invoke-virtual {p2, p0}, Lmb/y4;->a(Lmb/a5;)V

    iput-object p3, p0, Lmb/t2;->f:Lmb/f1;

    invoke-interface {p3, p0}, Lmb/f1;->a(Lmb/a5;)V

    iput-object p4, p0, Lmb/t2;->g:Lmb/f1;

    if-eqz p4, :cond_0

    invoke-interface {p4, p0}, Lmb/f1;->a(Lmb/a5;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmb/t2;->g:Lmb/f1;

    if-nez p0, :cond_0

    const-string p0, "if"

    return-object p0

    :cond_0
    const-string p0, "if ... else"

    return-object p0
.end method

.method public final u(Lmb/h7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/h7;->Q(Lmb/t2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
