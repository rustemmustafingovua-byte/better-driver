.class public final Lmb/o2;
.super Lmb/u1;
.source "SourceFile"


# instance fields
.field public final h:Lmb/f1;

.field public final i:Lmb/y4;

.field public final j:[Lmb/y4;


# direct methods
.method public constructor <init>(Lhb/c;Lmb/f1;Lmb/y4;[Lmb/y4;Lmb/f1;)V
    .locals 0

    invoke-direct {p0, p1, p5}, Lmb/u1;-><init>(Lhb/c;Lmb/f1;)V

    iput-object p2, p0, Lmb/o2;->h:Lmb/f1;

    if-eqz p2, :cond_0

    invoke-interface {p2, p0}, Lmb/f1;->a(Lmb/a5;)V

    :cond_0
    iput-object p3, p0, Lmb/o2;->i:Lmb/y4;

    if-eqz p3, :cond_1

    invoke-virtual {p3, p0}, Lmb/y4;->a(Lmb/a5;)V

    :cond_1
    iput-object p4, p0, Lmb/o2;->j:[Lmb/y4;

    if-eqz p4, :cond_2

    array-length p1, p4

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    aget-object p3, p4, p2

    invoke-virtual {p3, p0}, Lmb/y4;->a(Lmb/a5;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "for (...; ...; ...) ..."

    return-object p0
.end method

.method public final u(Lmb/h7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/h7;->s(Lmb/o2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
