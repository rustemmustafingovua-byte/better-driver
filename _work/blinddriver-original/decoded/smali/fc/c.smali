.class public final Lfc/c;
.super Lmb/q;
.source "SourceFile"


# virtual methods
.method public final g(Lpb/a;)Ltb/d;
    .locals 3

    new-instance p0, Lfc/b;

    new-instance v0, Lg5/m;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lg5/m;-><init>(IZ)V

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    iput-object v1, v0, Lg5/m;->m:Ljava/lang/Object;

    const/4 v1, -0x1

    filled-new-array {v1, v1}, [I

    move-result-object v1

    iput-object v1, v0, Lg5/m;->o:Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Ltb/d;-><init>(Lpb/a;Lg5/m;)V

    return-object p0
.end method
