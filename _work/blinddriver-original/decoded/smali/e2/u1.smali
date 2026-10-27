.class public final Le2/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le2/r1;


# instance fields
.field public l:Lc2/s0;

.field public final m:Le2/p0;


# direct methods
.method public constructor <init>(Lc2/s0;Le2/p0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le2/u1;->l:Lc2/s0;

    iput-object p2, p0, Le2/u1;->m:Le2/p0;

    return-void
.end method


# virtual methods
.method public final p()Z
    .locals 0

    iget-object p0, p0, Le2/u1;->m:Le2/p0;

    invoke-virtual {p0}, Le2/p0;->z0()Lc2/u;

    move-result-object p0

    invoke-interface {p0}, Lc2/u;->j()Z

    move-result p0

    return p0
.end method
