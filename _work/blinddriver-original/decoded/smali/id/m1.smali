.class public final Lid/m1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/d1;


# instance fields
.field public final l:Lid/e;

.field public final m:Lsc/i;


# direct methods
.method public constructor <init>(Lid/e;Lsc/i;)V
    .locals 1

    const-string v0, "engine"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lid/m1;->l:Lid/e;

    iput-object p2, p0, Lid/m1;->m:Lsc/i;

    return-void
.end method


# virtual methods
.method public final d(Ljava/util/List;La9/c;)Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, Lid/m1;->m:Lsc/i;

    invoke-virtual {v0}, Lsc/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lid/l1;

    iget-object v2, p0, Lid/m1;->l:Lid/e;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lu9/e0;->a:Lba/e;

    new-instance v1, Lb0/z0;

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lb0/z0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {p0, v1, p2}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    const-string p0, "\u0412\u0430\u043d\u0442\u0430\u0436"

    return-object p0
.end method
