.class public final Lid/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/d1;


# instance fields
.field public final l:Lid/e;

.field public volatile m:Li9/a;


# direct methods
.method public constructor <init>(Lid/e;)V
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid/r;->l:Lid/e;

    new-instance p1, Lia/n;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lia/n;-><init>(I)V

    iput-object p1, p0, Lid/r;->m:Li9/a;

    return-void
.end method


# virtual methods
.method public final d(Ljava/util/List;La9/c;)Ljava/lang/Object;
    .locals 4

    iget-object p0, p0, Lid/r;->l:Lid/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lu9/e0;->a:Lba/e;

    new-instance v1, Lad/t0;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, p0, p1, v2, v3}, Lad/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v0, v1, p2}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "\u041e\u0444\u043b\u0430\u0439\u043d"

    return-object p0
.end method
