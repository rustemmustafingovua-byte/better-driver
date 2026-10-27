.class public abstract Lmb/y2;
.super Lmb/m0;
.source "SourceFile"

# interfaces
.implements Lmb/c4;
.implements Lmb/y1;


# instance fields
.field public final i:Ljava/lang/String;

.field public final j:[Lmb/s5;

.field public final k:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lhb/c;[Lmb/x3;Ljava/lang/String;[Lmb/w5;[Lmb/s5;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lmb/m0;-><init>(Lhb/c;[Lmb/x3;[Lmb/w5;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmb/y2;->k:Ljava/util/ArrayList;

    iput-object p3, p0, Lmb/y2;->i:Ljava/lang/String;

    iput-object p5, p0, Lmb/y2;->j:[Lmb/s5;

    array-length p1, p5

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    aget-object p3, p5, p2

    new-instance p4, Lmb/d2;

    invoke-direct {p4, p0}, Lmb/d2;-><init>(Lmb/m0;)V

    invoke-virtual {p3, p4}, Lmb/s5;->a(Lmb/a5;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmb/y2;->i:Ljava/lang/String;

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

    iget-object p0, p0, Lmb/y2;->i:Ljava/lang/String;

    return-object p0
.end method

.method public final x(Lmb/k2;)V
    .locals 1

    iget-object v0, p0, Lmb/y2;->k:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, p0}, Lmb/k2;->a(Lmb/a5;)V

    iget-object p0, p0, Lmb/m0;->g:Lmb/x6;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lmb/x;->e:Ljava/util/LinkedHashMap;

    :cond_0
    return-void
.end method
